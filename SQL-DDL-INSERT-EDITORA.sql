
INSERT INTO `area_conhecimento` (`descricao`) VALUES
('Ciências da Computação'), ('Literatura Brasileira'), ('Engenharia Civil'), ('Medicina'), ('História Antiga'),
('Ficção Científica'), ('Literatura Fantástica'), ('Romance Histórico'), ('Poesia'), ('Drama Teatral'),
('Ciências Exatas'), ('Física Aplicada'), ('Matemática Pura'), ('Estatística'), ('Inteligência Artificial'),
('Psicologia Clínica'), ('Sociologia Urbana'), ('Antropologia Cultural'), ('Filosofia Contemporânea'), ('Economia Política');

-- Tabela: autor (20 Inserts)
INSERT INTO `autor` (`nome`, `data_nascimento`, `nacionalidade`, `cpf`) VALUES
('Ana Clara Lima Silva', '1985-05-20', 'Brasileira', '111.111.111-11'), ('Carlos E. Rodrigues', '1970-11-15', 'Português', '222.222.222-22'),
('Fernanda T. Oliveira', '1992-02-28', 'Brasileira', '333.333.333-33'), ('Pedro Henrique Santos', '1965-08-10', 'Espanhol', '444.444.444-44'),
('Júlia Fernandes Silva', '1988-05-15', 'Brasileira', '101.101.101-01'), ('Márcio Gonçalves Neto', '1975-11-20', 'Português', '202.202.202-02'),
('Laura Beatriz Alves', '1990-03-22', 'Brasileira', '303.303.303-03'), ('Ricardo Almeida Souza', '1962-07-07', 'Brasileiro', '404.404.404-04'),
('Helena Costa Menezes', '1981-09-01', 'Italiana', '505.505.505-05'), ('Gabriel Pereira Rocha', '1995-04-19', 'Brasileiro', '606.606.606-06'),
('Sophia Lima Vasconcelos', '1970-12-30', 'Espanhola', '707.707.707-07'), ('Arthur Gomes Pires', '1983-02-08', 'Brasileiro', '808.808.808-08'),
('Isabela Freitas Melo', '1998-06-25', 'Brasileira', '909.909.909-09'), ('Vitor Hugo Dias', '1977-01-11', 'Argentino', '010.010.010-10'),
('Elena Souza Ribeiro', '1955-03-17', 'Brasileira', '112.112.112-12'), ('Felipe Oliveira Martins', '1979-10-05', 'Canadense', '223.223.223-23'),
('Patrícia L. Vasconcelos', '1993-01-29', 'Brasileira', '334.334.334-34'), ('Gustavo H. Costa', '1968-08-14', 'Alemão', '445.445.445-45'),
('Camila Pereira Neves', '1984-06-02', 'Brasileira', '556.556.556-56'), ('Daniel Rodrigues Alves', '1996-04-04', 'Americano', '667.667.667-67');

-- PASSO 2: Inserir o bloco completo de 20 registros novos e limpos.
-- CPFs corrigidos para o formato padrão e garantida a unicidade.
INSERT INTO `editora`.`cliente` (`cpf`, `nome`, `email`, `data_nasc`, `rua`, `bairro`, `cep`, `cidade`, `uf`, `complemento`) VALUES
('555.555.555-55', 'Mariana Alencar Costa', 'mariana.costa@email.com', '1990-01-01', 'Rua A', 'Centro', '12345-000', 'São Paulo', 'SP', 'Apto 101'),
('666.666.666-66', 'Roberto Mendes Ferreira', 'roberto.ferreira@email.com', '1980-03-25', 'Rua B', 'Jardim América', '67890-000', 'Rio de Janeiro', 'RJ', 'Casa'),
('777.777.777-77', 'Juliana Gomes Peres', 'juliana.peres@email.com', '1995-07-14', 'Rua C', 'Vila Nova', '54321-000', 'Belo Horizonte', 'MG', 'Bloco B, Sala 3'),
('888.888.888-88', 'Lucas Souza Almeida', 'lucas.almeida@email.com', '2000-12-31', 'Rua D', 'Lapa', '98765-000', 'Porto Alegre', 'RS', 'Fundos'),
('011.011.011-11', 'Ana Paula Castro', 'ana.castro@email.com', '1975-01-10', 'Rua E', 'Vila Madalena', '05432-000', 'São Paulo', 'SP', 'Casa 2'),
('022.022.022-22', 'Bruno Siqueira', 'bruno.siqueira@email.com', '1998-05-18', 'Rua F', 'Copacabana', '22070-000', 'Rio de Janeiro', 'RJ', 'Apto 502'),
('033.033.033-33', 'Cecília Meireles', 'cecilia.meireles@email.com', '1985-09-29', 'Rua G', 'Floresta', '30710-000', 'Belo Horizonte', 'MG', 'Loja 1'),
('044.044.044-44', 'Diego Nunes', 'diego.nunes@email.com', '1992-11-03', 'Rua H', 'Centro Histórico', '90010-000', 'Porto Alegre', 'RS', 'Sala 1201'),
('055.055.055-05', 'Elisa Viana', 'elisa.viana@email.com', '2001-04-12', 'Rua I', 'Boa Vista', '50030-000', 'Recife', 'PE', 'Apto 303'),
('066.066.066-06', 'Fábio Guedes', 'fabio.guedes@email.com', '1960-07-22', 'Rua J', 'Comércio', '40010-000', 'Salvador', 'BA', 'Prédio A'),
('077.077.077-07', 'Giovana Morais', 'giovana.morais@email.com', '1987-10-01', 'Rua K', 'Vila Industrial', '13035-000', 'Campinas', 'SP', 'Casa'),
('088.088.088-08', 'Hugo Ferreira', 'hugo.ferreira@email.com', '1994-02-08', 'Rua L', 'Centro', '88010-000', 'Florianópolis', 'SC', 'Bloco C'),
('099.099.099-09', 'Igor Menezes', 'igor.menezes@email.com', '1970-03-20', 'Rua M', 'Jardim Paulista', '14015-000', 'Ribeirão Preto', 'SP', 'Apto 10'),
('100.100.100-10', 'Jéssica Ramos', 'jessica.ramos@email.com', '1999-06-16', 'Rua N', 'Bela Vista', '01310-000', 'São Paulo', 'SP', 'Conj. 1801'),
('111.111.111-11', 'Kleber Santos', 'kleber.santos@email.com', '1982-08-05', 'Rua O', 'Centro', '80020-000', 'Curitiba', 'PR', 'Sala 5'),
('122.122.122-12', 'Lívia Motta', 'livia.motta@email.com', '1997-11-24', 'Rua P', 'Lourdes', '30160-000', 'Belo Horizonte', 'MG', 'Apto 203'),
('133.133.133-13', 'Murilo Pires', 'murilo.pires@email.com', '1965-12-09', 'Rua Q', 'Centro', '20040-000', 'Rio de Janeiro', 'RJ', 'Cobertura'),
('144.144.144-14', 'Nara Rocha', 'nara.rocha@email.com', '1980-01-30', 'Rua R', 'Jardins', '01412-000', 'São Paulo', 'SP', 'Fundos'),
('155.155.155-15', 'Otávio Melo', 'otavio.melo@email.com', '1990-05-07', 'Rua S', 'Centro', '90000-000', 'Porto Alegre', 'RS', 'Sala 10'),
('166.166.166-16', 'Paula Diniz', 'paula.diniz@email.com', '1983-04-14', 'Rua T', 'Meireles', '60165-000', 'Fortaleza', 'CE', 'Apto 801');

-- Tabela: departamento (20 Inserts)
INSERT INTO `departamento` (`nome`, `descricao`) VALUES
('Vendas Nacional', 'Comercialização no mercado interno.'), ('Vendas Internacional', 'Exportação e licenciamento de direitos.'),
('Marketing Digital', 'Campanhas online e gestão de redes sociais.'), ('Marketing de Eventos', 'Organização de feiras e lançamentos.'),
('Editorial Tecnologia', 'Aquisição e edição de livros de TI e Engenharia.'), ('Editorial Literatura', 'Aquisição e edição de ficção e não-ficção.'),
('Design Gráfico', 'Criação de capas, diagramação e materiais promocionais.'), ('Revisão e Copidesque', 'Correção gramatical e estilística.'),
('Logística e Expedição', 'Gestão de estoque e envio de pedidos.'), ('Recursos Humanos', 'Gestão de pessoal, folha de pagamento e recrutamento.'),
('Financeiro', 'Contas a pagar, a receber e gestão orçamentária.'), ('T.I. - Desenvolvimento', 'Criação e manutenção de sistemas internos.'),
('T.I. - Infraestrutura', 'Gestão de redes, servidores e segurança.'), ('Comunicação Social', 'Relacionamento com a imprensa e assessoria.'),
('Jurídico', 'Análise de contratos e questões legais.'), ('Pesquisa de Mercado', 'Análise de tendências do setor.'),
('E-commerce', 'Gestão e operação da loja virtual.'), ('Atendimento ao Cliente', 'Suporte a dúvidas e resolução de problemas pós-venda.'),
('Design de Produto', 'Desenvolvimento de formatos e materiais de acabamento.'), ('Gerência Geral', 'Supervisão de todas as operações e decisões estratégicas.');

-- Tabela: livro (20 Inserts)
INSERT INTO `livro` (`isbn`, `titulo`, `data_publi`, `genero`, `num_pag`, `edicao`, `idioma`, `formato`) VALUES
('978-8575223000', 'Banco de Dados Essencial', '2023-01-10', 'Tecnologia', 450, '2ª Edição', 'Português', 'Capa Comum'),
('978-0743273565', 'O Grande Gatsby', '1925-04-10', 'Ficção', 180, '1ª Edição', 'Inglês', 'Ebook'),
('978-6555604000', 'A Arte da Guerra', '2022-05-15', 'Estratégia', 150, 'Nova Edição', 'Português', 'Audiobook'),
('978-8535921827', '1984', '1949-06-08', 'Distopia', 328, '3ª Edição', 'Português', 'Capa Dura'),
('978-6588701017', 'O Legado do Programador', '2024-01-20', 'Tecnologia', 350, '1ª Edição', 'Português', 'Capa Comum'),
('978-6588701024', 'Crônicas da Neblina', '2023-11-05', 'Fantasia', 520, 'Única', 'Português', 'Capa Dura'),
('978-6588701031', 'Marketing Digital Avançado', '2024-03-01', 'Negócios', 280, '3ª Edição', 'Inglês', 'Ebook'),
('978-6588701048', 'O Jardim Secreto da Cidade', '2022-08-10', 'Romance', 190, '2ª Edição', 'Português', 'Capa Comum'),
('978-6588701055', 'Introdução à Física Quântica', '2021-05-25', 'Ciência', 410, '1ª Edição', 'Português', 'Capa Dura'),
('978-6588701062', 'Receitas Veganas Rápidas', '2023-09-15', 'Culinária', 150, 'Única', 'Espanhol', 'Capa Comum'),
('978-6588701079', 'História da Arte Moderna', '2020-10-01', 'Arte', 600, '4ª Edição', 'Português', 'Capa Dura'),
('978-6588701086', 'Guia de Viagem para a Patagônia', '2024-02-14', 'Viagem', 220, '1ª Edição', 'Inglês', 'Ebook'),
('978-6588701093', 'Psicologia Comportamental', '2022-12-03', 'Psicologia', 310, '2ª Edição', 'Português', 'Capa Comum'),
('978-6588701109', 'A Lenda do Último Samurai', '2023-07-28', 'História', 250, 'Única', 'Português', 'Capa Dura'),
('978-6588701116', 'O Mistério da Ilha Perdida', '2023-10-10', 'Aventura', 300, '1ª Edição', 'Português', 'Capa Comum'),
('978-6588701123', 'Fundamentos de Python para Dados', '2024-04-01', 'Tecnologia', 550, '2ª Edição', 'Inglês', 'Ebook'),
('978-6588701130', 'A Revolução Silenciosa', '2021-07-22', 'Não-Ficção', 280, 'Única', 'Português', 'Capa Dura'),
('978-6588701147', 'Contos de Outono', '2022-09-05', 'Contos', 150, '1ª Edição', 'Português', 'Capa Comum'),
('978-6588701154', 'Design Thinking para Iniciantes', '2023-03-17', 'Negócios', 200, '3ª Edição', 'Espanhol', 'Audiobook'),
('978-6588701161', 'O Fim da Era da Informação', '2024-05-15', 'Filosofia', 380, '1ª Edição', 'Português', 'Capa Dura');

INSERT IGNORE INTO `editora`.`palavras_chave` (`idioma`, `descricao`) VALUES
('Português', 'Algoritmos'),
('Inglês', 'Big Data'),
('Português', 'Mitologia Nórdica'),
('Inglês', 'Clássico'),
('Português', 'Desenvolvimento Pessoal'),
('Inglês', 'Self-Help'),
('Português', 'Investimentos'),
('Inglês', 'Stock Market'),
('Português', 'Cultura Brasileira'),
('Inglês', 'Brazilian Culture'),
('Português', 'POO'),
('Português', 'Guerra Fria'),
('Inglês', 'Cold War'),
('Português', 'Autoajuda'),
('Inglês', 'Machine Learning'),
('Português', 'Sustentabilidade'),
('Inglês', 'Green Economy'),
('Português', 'Teoria da Conspiração'),
('Inglês', 'Conspiracy Theory'),
('Português', 'Cidadania Digital');

-- Tabela: funcionario (20 Inserts - FK: id_depart)
INSERT INTO `funcionario` (`Id_CPF`, `nome`, `cargo`, `telefone1`, `telefone2`, `email`, `rua`, `bairro`, `cep`, `cidade`, `uf`, `complemento`, `id_depart`) VALUES
('100.000.000-01', 'Carlos Supervisor Vendas', 'Gerente', '(11) 90001-0001', '(11) 3001-0001', 'carlos.vendas@editora.com', 'Rua Alfa', 'Centro', '01000-001', 'São Paulo', 'SP', 'Sala 1', 1),
('100.000.000-02', 'Maria S. Vendas Int', 'Gerente', '(21) 90002-0002', '(21) 3002-0002', 'maria.exp@editora.com', 'Rua Beta', 'Copacabana', '22000-002', 'Rio de Janeiro', 'RJ', 'Sala 2', 2),
('100.000.000-03', 'João Analista Marketing', 'Analista', '(31) 90003-0003', '(31) 3003-0003', 'joao.dig@editora.com', 'Rua Gama', 'Savassi', '30110-003', 'Belo Horizonte', 'MG', 'Sala 3', 3),
('100.000.000-04', 'Ana Coordenadora Eventos', 'Coordenadora', '(41) 90004-0004', '(41) 3004-0004', 'ana.eventos@editora.com', 'Rua Delta', 'Batel', '80420-004', 'Curitiba', 'PR', 'Sala 4', 4),
('100.000.000-05', 'Pedro Editor Tecnologia', 'Editor', '(51) 90005-0005', '(51) 3005-0005', 'pedro.tec@editora.com', 'Rua Epsilon', 'Moinhos', '90570-005', 'Porto Alegre', 'RS', 'Sala 5', 5),
('100.000.000-06', 'Sofia Editora Literatura', 'Editora', '(61) 90006-0006', '(61) 3006-0006', 'sofia.lit@editora.com', 'Rua Zeta', 'Asa Sul', '70070-006', 'Brasília', 'DF', 'Sala 6', 6),
('100.000.000-07', 'Lucas Designer Gráfico', 'Designer', '(71) 90007-0007', '(71) 3007-0007', 'lucas.design@editora.com', 'Rua Eta', 'Rio Vermelho', '41940-007', 'Salvador', 'BA', 'Sala 7', 7),
('100.000.000-08', 'Isabela Revisora', 'Revisora', '(81) 90008-0008', '(81) 3008-0008', 'isabela.rev@editora.com', 'Rua Theta', 'Boa Viagem', '51020-008', 'Recife', 'PE', 'Sala 8', 8),
('100.000.000-09', 'Rafa Logística', 'Coordenador', '(91) 90009-0009', '(91) 3009-0009', 'rafa.log@editora.com', 'Rua Iota', 'Nazaré', '66055-009', 'Belém', 'PA', 'Sala 9', 9),
('100.000.000-10', 'Juliana RH', 'Analista', '(11) 90010-0010', '(11) 3010-0010', 'juliana.rh@editora.com', 'Rua Kappa', 'Moema', '04070-010', 'São Paulo', 'SP', 'Sala 10', 10),
('100.000.000-11', 'Gustavo Financeiro', 'Analista', '(21) 90011-0011', '(21) 3011-0011', 'gustavo.fin@editora.com', 'Rua Lambda', 'Ipanema', '22410-011', 'Rio de Janeiro', 'RJ', 'Sala 11', 11),
('100.000.000-12', 'Felipe TI Dev', 'Desenvolvedor', '(31) 90012-0012', '(31) 3012-0012', 'felipe.dev@editora.com', 'Rua Mu', 'Lourdes', '30140-012', 'Belo Horizonte', 'MG', 'Sala 12', 12),
('100.000.000-13', 'Bruna TI Infra', 'Técnica', '(41) 90013-0013', '(41) 3013-0013', 'bruna.infra@editora.com', 'Rua Nu', 'Água Verde', '80620-013', 'Curitiba', 'PR', 'Sala 13', 13),
('100.000.000-14', 'Adriana Comunicação', 'Jornalista', '(51) 90014-0014', '(51) 3014-0014', 'adriana.com@editora.com', 'Rua Xi', 'Centro', '90020-014', 'Porto Alegre', 'RS', 'Sala 14', 14),
('100.000.000-15', 'Renato Jurídico', 'Advogado', '(61) 90015-0015', '(61) 3015-0015', 'renato.jur@editora.com', 'Rua Omicron', 'Asa Norte', '70870-015', 'Brasília', 'DF', 'Sala 15', 15),
('100.000.000-16', 'Camila Pesquisa', 'Pesquisadora', '(71) 90016-0016', '(71) 3016-0016', 'camila.pesq@editora.com', 'Rua Pi', 'Pituba', '41810-016', 'Salvador', 'BA', 'Sala 16', 16),
('100.000.000-17', 'André E-commerce', 'Gerente', '(81) 90017-0017', '(81) 3017-0017', 'andre.ecom@editora.com', 'Rua Rho', 'Pina', '51010-017', 'Recife', 'PE', 'Sala 17', 17),
('100.000.000-18', 'Vivian Atendimento', 'Atendente', '(91) 90018-0018', '(91) 3018-0018', 'vivian.atend@editora.com', 'Rua Sigma', 'Reduto', '66050-018', 'Belém', 'PA', 'Sala 18', 18),
('100.000.000-19', 'Marcelo Design Prod', 'Especialista', '(11) 90019-0019', '(11) 3019-0019', 'marcelo.prod@editora.com', 'Rua Tau', 'Vila Olímpia', '04547-019', 'São Paulo', 'SP', 'Sala 19', 19),
('100.000.000-20', 'Érica Diretora Geral', 'Diretora', '(21) 90020-0020', '(21) 3020-0020', 'erica.dir@editora.com', 'Rua Upsilon', 'Centro', '20010-020', 'Rio de Janeiro', 'RJ', 'Sala 20', 20);

-- Tabela: exemplar (20 Inserts - FK: livro_isbn)
INSERT INTO `exemplar` (`id_exemplar`, `num_serie`, `estado`, `localizacao`, `livro_isbn`) VALUES
(1, 'SERIE-001', 'disponivel', 'Estoque A', '978-8575223000'), (2, 'SERIE-002', 'reservado', 'Estoque B', '978-0743273565'),
(3, 'SERIE-003', 'expedido', 'Expedição', '978-6555604000'), (4, 'SERIE-004', 'danificado', 'Quarentena', '978-8535921827'),
(5, 'SERIE-005', 'disponivel', 'Estoque C', '978-6588701017'), (6, 'SERIE-006', 'reservado', 'Estoque D', '978-6588701024'),
(7, 'SERIE-007', 'expedido', 'Expedição', '978-6588701031'), (8, 'SERIE-008', 'disponivel', 'Estoque E', '978-6588701048'),
(9, 'SERIE-009', 'reservado', 'Estoque F', '978-6588701055'), (10, 'SERIE-010', 'expedido', 'Expedição', '978-6588701062'),
(11, 'SERIE-011', 'disponivel', 'Estoque G', '978-6588701079'), (12, 'SERIE-012', 'reservado', 'Estoque H', '978-6588701086'),
(13, 'SERIE-013', 'expedido', 'Expedição', '978-6588701093'), (14, 'SERIE-014', 'disponivel', 'Estoque I', '978-6588701109'),
(15, 'SERIE-015', 'reservado', 'Estoque J', '978-6588701116'), (16, 'SERIE-016', 'expedido', 'Expedição', '978-6588701123'),
(17, 'SERIE-017', 'disponivel', 'Estoque K', '978-6588701130'), (18, 'SERIE-018', 'reservado', 'Estoque L', '978-6588701147'),
(19, 'SERIE-019', 'expedido', 'Expedição', '978-6588701154'), (20, 'SERIE-020', 'disponivel', 'Estoque M', '978-6588701161');

-- Tabela: livro_autor (20 Inserts - FK: isbn, id_autor)
INSERT INTO `livro_autor` (`isbn`, `id_autor`, `papel`, `ordem_autoria`) VALUES
('978-8575223000', 1, 'autor', 1), ('978-0743273565', 2, 'autor', 1),
('978-6555604000', 3, 'autor', 1), ('978-8535921827', 4, 'autor', 1),
('978-6588701017', 5, 'autor', 1), ('978-6588701024', 6, 'autor', 1),
('978-6588701031', 7, 'tradutor', 1), ('978-6588701048', 8, 'autor', 1),
('978-6588701055', 9, 'organizador', 1), ('978-6588701062', 10, 'autor', 1),
('978-6588701079', 11, 'autor', 1), ('978-6588701086', 12, 'autor', 1),
('978-6588701093', 13, 'autor', 1), ('978-6588701109', 14, 'autor', 1),
('978-6588701116', 15, 'autor', 1), ('978-6588701123', 16, 'autor', 1),
('978-6588701130', 17, 'autor', 1), ('978-6588701147', 18, 'autor', 1),
('978-6588701154', 19, 'ilustrador', 1), ('978-6588701161', 20, 'autor', 1);

-- Tabela: livro_area (20 Inserts - FK: isbn, cod_area)
INSERT INTO `livro_area` (`isbn`, `cod_area`) VALUES
('978-8575223000', 1), ('978-0743273565', 2), ('978-6555604000', 3), ('978-8535921827', 4),
('978-6588701017', 5), ('978-6588701024', 6), ('978-6588701031', 7), ('978-6588701048', 8),
('978-6588701055', 9), ('978-6588701062', 10), ('978-6588701079', 11), ('978-6588701086', 12),
('978-6588701093', 13), ('978-6588701109', 14), ('978-6588701116', 15), ('978-6588701123', 16),
('978-6588701130', 17), ('978-6588701147', 18), ('978-6588701154', 19), ('978-6588701161', 20);

-- Tabela: livro_palavra (20 Inserts - FK: isbn, cod_palavra)
INSERT INTO `livro_palavra` (`isbn`, `cod_palavra`) VALUES
('978-8575223000', 1), ('978-0743273565', 4), ('978-6555604000', 14), ('978-8535921827', 12),
('978-6588701017', 11), ('978-6588701024', 3), ('978-6588701031', 6), ('978-6588701048', 9),
('978-6588701055', 15), ('978-6588701062', 17), ('978-6588701079', 16), ('978-6588701086', 10),
('978-6588701093', 7), ('978-6588701109', 18), ('978-6588701116', 8), ('978-6588701123', 2),
('978-6588701130', 5), ('978-6588701147', 13), ('978-6588701154', 19), ('978-6588701161', 20);

-- Tabela: pedido (20 Inserts - FK: cpf_cliente, cpf_funcionario)
INSERT INTO `pedido` (`cpf_cliente`, `cpf_funcionario`, `status_pedi`, `canal_venda`) VALUES
('555.555.555-55', '100.000.000-01', 'faturado', 'loja'), ('666.666.666-66', '100.000.000-02', 'entregue', 'telefone'),
('777.777.777-77', '100.000.000-03', 'cancelado', 'loja'), ('888.888.888-88', '100.000.000-04', 'aberto', 'representante'),
('011.011.011-11', '100.000.000-05', 'faturado', 'loja'), ('022.022.022-22', '100.000.000-06', 'entregue', 'telefone'),
('033.033.033-33', '100.000.000-07', 'aberto', 'loja'), ('044.044.044-44', '100.000.000-08', 'faturado', 'representante'),
('055.055.055-05', '100.000.000-09', 'entregue', 'telefone'), ('066.066.066-06', '100.000.000-10', 'aberto', 'loja'),
('077.077.077-07', '100.000.000-11', 'faturado', 'representante'), ('088.088.088-08', '100.000.000-12', 'cancelado', 'telefone'),
('099.099.099-09', '100.000.000-13', 'entregue', 'loja'), ('100.100.100-10', '100.000.000-14', 'aberto', 'representante'),
('111.111.111-12', '100.000.000-15', 'faturado', 'telefone'), ('122.122.122-13', '100.000.000-16', 'entregue', 'loja'),
('133.133.133-14', '100.000.000-17', 'aberto', 'representante'), ('144.144.144-15', '100.000.000-18', 'faturado', 'telefone'),
('155.155.155-16', '100.000.000-19', 'entregue', 'loja'), ('166.166.166-17', '100.000.000-20', 'aberto', 'representante');

-- Tabela: item_pedido (20 Inserts - FK: id_pedido, isbn)
-- Assumimos que o id_pedido é de 1 a 20, gerados na inserção anterior.
INSERT INTO `item_pedido` (`id_pedido`, `isbn`, `quantidade`, `preco_unitario`) VALUES
(1, '978-8575223000', 2, 89.90), (2, '978-0743273565', 1, 35.50), (3, '978-6555604000', 1, 59.90),
(4, '978-8535921827', 3, 49.90), (5, '978-6588701017', 1, 120.00), (6, '978-6588701024', 2, 75.50),
(7, '978-6588701031', 1, 99.90), (8, '978-6588701048', 5, 29.90), (9, '978-6588701055', 1, 150.00),
(10, '978-6588701062', 1, 45.00), (11, '978-6588701079', 2, 110.00), (12, '978-6588701086', 1, 65.00),
(13, '978-6588701093', 3, 79.90), (14, '978-6588701109', 1, 55.00), (15, '978-6588701116', 4, 39.90),
(16, '978-6588701123', 1, 180.00), (17, '978-6588701130', 2, 70.00), (18, '978-6588701147', 1, 30.00),
(19, '978-6588701154', 1, 85.00), (20, '978-6588701161', 2, 95.00);

INSERT INTO `area_conhecimento` (`Descricao`) VALUES
('Neurociência Cognitiva'), ('Cibersegurança'), ('Design de Interiores'), ('História da América Latina'), 
('Desenvolvimento Web');

INSERT INTO `autor` (`Nome`, `Data_Nascimento`, `Nacionalidade`, `CPF`, `pseudonimo`) VALUES
('Dr. Alexandre Bentes', '1970-04-10', 'Brasileiro', '777.777.777-77', NULL),
('Eliana Rocha', '1985-11-25', 'Brasileira', '888.888.888-88', 'E.R. Novais'),
('Kenji Tanaka', '1962-09-01', 'Japonês', '999.999.999-99', NULL),
('Lara Campos', '1995-03-05', 'Brasileira', '000.000.000-00', NULL),
('Mário Santos', '1978-07-12', 'Português', '121.121.121-12', NULL);

INSERT INTO `item_pedido` (`id_pedido`, `isbn`, `quantidade`, `preco_unitario`) VALUES
(21, '978-6588701178', 1, 140.00), -- Livro: O Cérebro e a Memória
(22, '978-6588701185', 2, 85.00),  -- Livro: Defesa Digital
(23, '978-6588701192', 3, 55.00),  -- Livro: Decoração Minimalista
(24, '978-6588701208', 1, 115.00), -- Livro: A Conquista do México
(25, '978-6588701215', 2, 65.00);  -- Livro: React para 

-- Novos pedidos (Continuação do bloco de 20 pedidos existentes)
INSERT INTO `pedido` (`cpf_cliente`, `cpf_funcionario`, `status_pedi`, `canal_venda`) VALUES
('011.011.011-11', '100.000.000-01', 'aberto', 'representante'), -- Pedido 21 (Ana Paula Castro)
('022.022.022-22', '100.000.000-05', 'faturado', 'loja'),          -- Pedido 22 (Bruno Siqueira)
('033.033.033-33', '100.000.000-09', 'entregue', 'telefone'),     -- Pedido 23 (Cecília Meireles)
('044.044.044-44', '100.000.000-13', 'cancelado', 'loja'),        -- Pedido 24 (Diego Nunes)
('055.055.055-05', '100.000.000-17', 'aberto', 'representante');  -- Pedido 25 (Elisa Viana)

INSERT INTO `livro_area` (`isbn`, `cod_area`) VALUES
-- Banco de Dados Essencial (978-8575223000) entra em Ciências Exatas (ID 11)
('978-8575223000', 11), 
-- O Grande Gatsby (978-0743273565) entra em Romance Histórico (ID 8)
('978-0743273565', 8),
-- O Mistério da Ilha Perdida (978-6588701116) entra em Sociologia Urbana (ID 17)
('978-6588701116', 17);

