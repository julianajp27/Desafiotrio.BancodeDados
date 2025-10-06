-- RELATÓRIOS / CONSULTAS DQL

-- 01) livros com seus autores (ordem e papel)
select l.isbn, l.titulo,
       group_concat(concat(la.ordem_autoria, 'º - ', upper(a.nome), ' (', la.papel, ')')
                    order by la.ordem_autoria separator ' | ') "autores"
  from livro l
  inner join livro_autor la on la.isbn = l.isbn
  inner join autor a       on a.id_autor = la.id_autor
 group by l.isbn, l.titulo
 order by l.titulo;

-- 02) livros e suas áreas (concatenadas)
select l.isbn, l.titulo,
       coalesce(group_concat(distinct ac.descricao order by ac.descricao separator ', '), '--') "áreas"
  from livro l
  left join livro_area la        on la.isbn    = l.isbn
  left join area_conhecimento ac on ac.cod_area = la.cod_area
 group by l.isbn, l.titulo
 order by l.titulo;

-- 03) livros e palavras-chave (concatenadas)
select l.isbn, l.titulo,
       coalesce(group_concat(distinct pc.descricao order by pc.descricao separator ', '), '--') "palavras"
  from livro l
  left join livro_palavra lp on lp.isbn        = l.isbn
  left join palavras_chave pc on pc.cod_palavra = lp.cod_palavra
 group by l.isbn, l.titulo
 order by l.titulo;

-- 04) exemplares disponíveis por livro
select l.isbn, l.titulo,
       count(e.id_exemplar) "exemplares_disponíveis"
  from livro l
  left join exemplar e
         on e.livro_isbn = l.isbn
        and e.estado     = 'disponivel'
 group by l.isbn, l.titulo
 order by exemplares_disponíveis desc, l.titulo;

-- 05) pedidos com cliente e funcionário (data formatada)
select p.id_pedido,
       date_format(p.data_pedi, '%d/%m/%Y - %H:%i') "momento",
       upper(p.status_pedi) "status",
       c.nome "cliente",
       f.nome "funcionário"
  from pedido p
  inner join cliente c     on c.cpf   = p.cpf_cliente
  inner join funcionario f on f.id_cpf = p.cpf_funcionario
 order by p.data_pedi desc, c.nome;

-- 06) itens de pedido: valor por item e total com desconto
select p.id_pedido, c.nome "cliente", l.titulo,
       ip.quantidade,
       concat('R$ ', format(ip.preco_unitario, 2, 'de_DE')) "preço_unit",
       concat(ip.desconto_percentual, '%') "desc_perc",
       concat('R$ ', format(ip.quantidade * ip.preco_unitario * (1 - ip.desconto_percentual/100), 2, 'de_DE')) "total_item"
  from item_pedido ip
  inner join pedido p  on p.id_pedido = ip.id_pedido
  inner join cliente c on c.cpf       = p.cpf_cliente
  inner join livro   l on l.isbn      = ip.isbn
 order by p.id_pedido, l.titulo;

-- 07) valor total por pedido
select p.id_pedido,
       concat('R$ ', format(sum(ip.quantidade * ip.preco_unitario * (1 - ip.desconto_percentual/100)), 2, 'de_DE')) "valor_total"
  from pedido p
  inner join item_pedido ip on ip.id_pedido = p.id_pedido
 group by p.id_pedido
 order by p.id_pedido;

-- 08) top 5 clientes por gasto
select c.cpf, c.nome,
       concat('R$ ', format(sum(ip.quantidade * ip.preco_unitario * (1 - ip.desconto_percentual/100)), 2, 'de_DE')) "gasto"
  from cliente c
  inner join pedido p      on p.cpf_cliente = c.cpf
  inner join item_pedido ip on ip.id_pedido  = p.id_pedido
 group by c.cpf, c.nome
 order by sum(ip.quantidade * ip.preco_unitario * (1 - ip.desconto_percentual/100)) desc
 limit 5;

-- 09) ranking de funcionários por pedidos emitidos
select f.id_cpf "cpf", f.nome,
       count(*) "pedidos_emitidos"
  from pedido p
  inner join funcionario f on f.id_cpf = p.cpf_funcionario
 group by f.id_cpf, f.nome
 order by pedidos_emitidos desc, f.nome;

-- 10) distribuição de pedidos por status (filtra total >= 200)
select p.status_pedi,
       count(distinct p.id_pedido) "qtd_pedidos",
       concat('R$ ', format(sum(ip.quantidade * ip.preco_unitario * 
              (1 - ip.desconto_percentual/100)), 2, 'de_DE')) "total_bruto"
from pedido p
inner join item_pedido ip on ip.id_pedido = p.id_pedido
group by p.status_pedi
having sum(ip.quantidade * ip.preco_unitario * (1 - ip.desconto_percentual/100)) >= 200
order by total_bruto desc;


-- 11) Ticket médio por cliente (com gasto total e nº de pedidos)
select c.cpf, c.nome,
       concat('R$ ', format(avg(t.total_pedido), 2, 'de_DE')) "ticket_médio",
       concat('R$ ', format(sum(t.total_pedido), 2, 'de_DE')) "gasto_total",
       count(*) "qtd_pedidos"
  from (
        select p.id_pedido, p.cpf_cliente,
               sum(ip.quantidade * ip.preco_unitario * (1 - ip.desconto_percentual/100)) total_pedido
          from pedido p
         inner join item_pedido ip on ip.id_pedido = p.id_pedido
         group by p.id_pedido, p.cpf_cliente
       ) t
 inner join cliente c on c.cpf = t.cpf_cliente
 group by c.cpf, c.nome
 order by avg(t.total_pedido) desc;



-- 12) pedidos com itens numa única linha
select p.id_pedido,
       c.nome "cliente",
       date_format(p.data_pedi, '%d/%m/%Y') "data",
       group_concat(concat(l.titulo, ' x', ip.quantidade) order by l.titulo separator ' | ') "itens",
       concat('R$ ', format(sum(ip.quantidade * ip.preco_unitario * (1 - ip.desconto_percentual/100)), 2, 'de_DE')) "total"
  from pedido p
  inner join cliente c     on c.cpf        = p.cpf_cliente
  inner join item_pedido ip on ip.id_pedido = p.id_pedido
  inner join livro l       on l.isbn       = ip.isbn
 group by p.id_pedido, c.nome, p.data_pedi
 order by p.id_pedido desc;

-- 13) faixa de desconto por item
select p.id_pedido, l.titulo, ip.desconto_percentual,
       case
         when ip.desconto_percentual >= 20 then 'ALTA'
         when ip.desconto_percentual >= 10 then 'MÉDIA'
         when ip.desconto_percentual  >  0 then 'BAIXA'
         else 'SEM DESCONTO'
       end "faixa"
  from item_pedido ip
  inner join pedido p on p.id_pedido = ip.id_pedido
  inner join livro  l on l.isbn      = ip.isbn
 order by p.id_pedido, l.titulo;

-- 14) clientes com total >= média dos clientes
select c.cpf, c.nome,
       concat('R$ ', format(sum(ip.quantidade * ip.preco_unitario * (1 - ip.desconto_percentual/100)), 2, 'de_DE')) "total_gasto"
  from cliente c
  inner join pedido p       on p.cpf_cliente = c.cpf
  inner join item_pedido ip on ip.id_pedido  = p.id_pedido
 group by c.cpf, c.nome
 having sum(ip.quantidade * ip.preco_unitario * (1 - ip.desconto_percentual/100)) >= (
         select avg(t.soma)
           from (
                 select sum(ip2.quantidade * ip2.preco_unitario * (1 - ip2.desconto_percentual/100)) "soma"
                   from cliente c2
                   inner join pedido p2       on p2.cpf_cliente = c2.cpf
                   inner join item_pedido ip2 on ip2.id_pedido  = p2.id_pedido
                  group by c2.cpf
                ) t
       )
 order by sum(ip.quantidade * ip.preco_unitario * (1 - ip.desconto_percentual/100)) desc;


-- 15) funcionários e valor vendido (0 quando não vendeu)
select f.id_cpf, f.nome,
       concat('R$ ', format(coalesce(sum(ip.quantidade * ip.preco_unitario * (1 - ip.desconto_percentual/100)), 0), 2, 'de_DE')) "valor_vendido"
  from funcionario f
  left join pedido p       on p.cpf_funcionario = f.id_cpf
  left join item_pedido ip on ip.id_pedido      = p.id_pedido
 group by f.id_cpf, f.nome
 order by valor_vendido desc, f.nome;

-- 16) top 5 livros por quantidade vendida
select l.isbn, l.titulo, sum(ip.quantidade) "qtd_vendida"
  from item_pedido ip
  inner join livro l on l.isbn = ip.isbn
 group by l.isbn, l.titulo
 order by qtd_vendida desc
 limit 5;

-- 17) evolução mensal de vendas no ano corrente
select date_format(p.data_pedi, '%Y-%m') "ano_mês",
       concat('R$ ', format(sum(ip.quantidade * ip.preco_unitario * (1 - ip.desconto_percentual/100)), 2, 'de_DE')) "total_mês"
  from pedido p
 inner join item_pedido ip on ip.id_pedido = p.id_pedido
 where year(p.data_pedi) = year(curdate())
 group by date_format(p.data_pedi, '%Y-%m')
 order by ano_mês;

-- 18) preço médio vendido por título
select l.isbn, l.titulo,
       round(avg(ip.preco_unitario * (1 - ip.desconto_percentual/100)), 2) "preço_médio_vendido"
  from livro l
  inner join item_pedido ip on ip.isbn = l.isbn
 group by l.isbn, l.titulo
 order by preço_médio_vendido desc;


-- 19) quantidade de títulos por área (inclui áreas sem livros)
select ac.descricao "área",
       count(la.isbn) "qt_títulos"
  from area_conhecimento ac
  left join livro_area la on la.cod_area = ac.cod_area
 group by ac.cod_area, ac.descricao
 order by qt_títulos desc, ac.descricao;

-- 20) pedidos acima da média (com cte)
with tot as (
  select p.id_pedido,
         sum(ip.quantidade * ip.preco_unitario * (1 - ip.desconto_percentual/100)) "total_pedido"
    from pedido p
    inner join item_pedido ip on ip.id_pedido = p.id_pedido
   group by p.id_pedido
)
select t.id_pedido, c.nome "cliente",
       concat('R$ ', format(t.total_pedido, 2, 'de_DE')) "total_pedido"
  from tot t
  inner join pedido  p on p.id_pedido = t.id_pedido
  inner join cliente c on c.cpf       = p.cpf_cliente
 where t.total_pedido >= (select avg(total_pedido) from tot)
 order by t.total_pedido desc;


