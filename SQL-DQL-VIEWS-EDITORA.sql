-- RELATÓRIOS / VIEWS

-- 05) pedidos com cliente e funcionário
create or replace view vw_pedidos_detalhe as
select p.id_pedido,
       date_format(p.data_pedi, '%d/%m/%Y - %H:%i') "momento",
       upper(p.status_pedi) "status",
       c.nome "cliente",
       f.nome "funcionário"
  from pedido p
  inner join cliente c     on c.cpf   = p.cpf_cliente
  inner join funcionario f on f.id_cpf = p.cpf_funcionario;

-- 06) itens de pedido: valor por item e total com desconto
create or replace view vw_itens_pedido_valor as
select p.id_pedido, c.nome "cliente", l.titulo,
       ip.quantidade,
       concat('R$ ', format(ip.preco_unitario, 2, 'de_DE')) "preço_unit",
       concat(ip.desconto_percentual, '%') "desc_perc",
       concat('R$ ', format(ip.quantidade * ip.preco_unitario * (1 - ip.desconto_percentual/100), 2, 'de_DE')) "total_item"
  from item_pedido ip
  inner join pedido p  on p.id_pedido = ip.id_pedido
  inner join cliente c on c.cpf       = p.cpf_cliente
  inner join livro   l on l.isbn      = ip.isbn;

-- 07) valor total por pedido
create or replace view vw_pedido_total as
select p.id_pedido,
       concat('R$ ', format(sum(ip.quantidade * ip.preco_unitario * (1 - ip.desconto_percentual/100)), 2, 'de_DE')) "valor_total"
  from pedido p
  inner join item_pedido ip on ip.id_pedido = p.id_pedido
 group by p.id_pedido;

-- 08) top clientes por gasto (view sem limite; aplique LIMIT no SELECT)
create or replace view vw_clientes_gasto as
select c.cpf, c.nome,
       concat('R$ ', format(sum(ip.quantidade * ip.preco_unitario * (1 - ip.desconto_percentual/100)), 2, 'de_DE')) "gasto"
  from cliente c
  inner join pedido p       on p.cpf_cliente = c.cpf
  inner join item_pedido ip on ip.id_pedido  = p.id_pedido
 group by c.cpf, c.nome;

-- 11) ticket médio por cliente (com gasto total e nº pedidos)
create or replace view vw_ticket_medio_cliente as
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
 group by c.cpf, c.nome;

-- 12) pedidos com itens numa única linha
create or replace view vw_pedidos_itens_concat as
select p.id_pedido,
       c.nome "cliente",
       date_format(p.data_pedi, '%d/%m/%Y') "data",
       group_concat(concat(l.titulo, ' x', ip.quantidade) order by l.titulo separator ' | ') "itens",
       concat('R$ ', format(sum(ip.quantidade * ip.preco_unitario * (1 - ip.desconto_percentual/100)), 2, 'de_DE')) "total"
  from pedido p
  inner join cliente c      on c.cpf        = p.cpf_cliente
  inner join item_pedido ip on ip.id_pedido = p.id_pedido
  inner join livro l        on l.isbn       = ip.isbn
 group by p.id_pedido, c.nome, p.data_pedi;

-- 14) clientes com total >= média dos clientes
create or replace view vw_clientes_acima_media as
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
                  inner join pedido p2        on p2.cpf_cliente = c2.cpf
                  inner join item_pedido ip2  on ip2.id_pedido  = p2.id_pedido
                 group by c2.cpf
               ) t
       );

-- 15) funcionários e valor vendido (0 quando não vendeu)
create or replace view vw_funcionarios_valor_vendido as
select f.id_cpf, f.nome,
       concat('R$ ', format(coalesce(sum(ip.quantidade * ip.preco_unitario * (1 - ip.desconto_percentual/100)), 0), 2, 'de_DE')) "valor_vendido"
  from funcionario f
  left join pedido p        on p.cpf_funcionario = f.id_cpf
  left join item_pedido ip  on ip.id_pedido      = p.id_pedido
 group by f.id_cpf, f.nome;

-- 16) top livros por quantidade vendida (view sem limite; aplique LIMIT no SELECT)
create or replace view vw_livros_qtd_vendida as
select l.isbn, l.titulo, sum(ip.quantidade) "qtd_vendida"
  from item_pedido ip
  inner join livro l on l.isbn = ip.isbn
 group by l.isbn, l.titulo;

-- 17) evolução mensal de vendas no ano corrente
create or replace view vw_vendas_mensal as
select date_format(p.data_pedi, '%Y-%m') "ano_mês",
       concat('R$ ', format(sum(ip.quantidade * ip.preco_unitario * (1 - ip.desconto_percentual/100)), 2, 'de_DE')) "total_mês"
  from pedido p
  inner join item_pedido ip on ip.id_pedido = p.id_pedido
 where year(p.data_pedi) = year(curdate())
 group by date_format(p.data_pedi, '%Y-%m');
