# Desafio Editora - Banco de dados
Documentação do Projeto: Banco de Dados da Editora
Este documento descreve o minimundo modelado e a estrutura lógica (DDL) do banco de dados MySQL para a gestão das operações de uma editora.

I. Descrição do Minimundo: Editora Multicanal
O banco de dados foi projetado para uma Editora e tem como objetivo controlar as informações referentes a livros, seus autores, exemplares, clientes, funcionários, pedidos e toda a estrutura associada às operações da empresa.

A. Gestão de Conteúdo e Propriedade Intelectual
A entidade principal é o Livro, identificado por seu ISBN. Ele armazena atributos como título, descrição, data de publicação, número de páginas, edição, gênero, idioma, formato e um campo ativo, que indica se o livro ainda está disponível no catálogo.

Autores: Cada Autor é identificado por um Id_autor e possui atributos como nome, nome social, pseudônimo, data de nascimento, nacionalidade e CPF.

Relacionamento Livro-Autor: Um autor pode escrever nenhum ou várias obras, enquanto cada livro pode ser escrito por um ou vários autores. Esse relacionamento Muitos para Muitos (M:N) é modelado pela entidade associativa Livro_autor, contendo informações como o papel do autor (principal, coautor, organizador, etc.) e a ordem de autoria.

Classificação: Os livros podem ser classificados em uma ou mais áreas de conhecimento, registradas na entidade Área_Conhecimento, com o relacionamento Livro_area. Além disso, os livros são indexados por várias Palavras-chave (tags), com o relacionamento Livro_palavra.

B. Estoque, Clientes e Estrutura Interna
Estoque (Exemplar): Os livros possuem exemplares físicos, armazenados na entidade Exemplar, identificados por Id_exemplar. Cada exemplar possui atributos como número de série, estado, quantidade, localização e a data de entrada no estoque.

Clientes: A entidade Cliente é identificada pelo CPF e contém dados cadastrais (nome, nome social, data de nascimento, e-mail) e informações de endereço. Cada cliente pode realizar diversos pedidos.

Estrutura Organizacional: A entidade Funcionário é identificada pelo CPF e possui atributos como nome, cargo, telefones, e-mail e dados de endereço. Cada funcionário está alocado a um Departamento, que contém o nome, descrição e o supervisor (CPF do funcionário responsável), modelando a estrutura hierárquica.

C. Pedidos e Transações
Pedidos: A entidade Pedido, identificada por Id_pedido, armazena os atributos data_pedi, canal_venda, status_pedi e observações. Um pedido é realizado por um cliente e emitido por um funcionário.

Itens do Pedido: Os itens de cada pedido são registrados na entidade Item_pedido, que possui atributos quantidade, preço unitário e desconto percentual, além de relacionar o pedido ao livro vendido.

II. Análise Técnica e Integridade do Código (DDL)
O código SQL do projeto está bem estruturado e segue boas práticas de modelagem relacional (normalização). A análise técnica inicial e a revisão focaram em garantir a integridade dos dados, resolvendo problemas de cardinalidade e nomenclatura.

1. Status do Código e Boas Práticas
O código utiliza o MySQL e está estruturado em arquivos DDL (CREATE, ALTER) e DML (INSERT, UPDATE).

As relações entre as tabelas, chaves primárias e as chaves estrangeiras que ligam as entidades (pedido a cliente, funcionario a departamento, etc.) fazem sentido para o domínio de uma editora.

2. Ajustes Críticos Implementados
O ajuste mais crítico e essencial realizado no script de criação (SQL-DDL-Create-Editora.sql) foi a consolidação das restrições de integridade:

Inclusão de Chaves Estrangeiras (FKs): O script inicial definia as colunas de ligação (cpf_cliente, livro_isbn), mas não incluía as restrições de FOREIGN KEY. A correção garantiu que todas as tabelas estejam conectadas (por exemplo, um pedido só pode existir se houver um cliente válido), assegurando a integridade referencial dos dados.

Consistência de Cardinalidade: A modelagem das tabelas Muitos para Muitos (Livro_autor, Livro_area, etc.) foi ajustada para aceitar múltiplos registros, garantindo que o relacionamento seja corretamente modelado.

Padronização de Nomenclatura: Os nomes de todas as colunas foram padronizados para PascalCase (CPF, Nome, Data_Nascimento) nos scripts DDL de alteração, melhorando a leitura e a manutenção do código.
