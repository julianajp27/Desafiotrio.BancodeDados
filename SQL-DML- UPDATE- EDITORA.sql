
UPDATE `editora`.`cliente`
SET 
    `data_nasc` = '1975-02-15' -- Data correta
WHERE 
    `cpf` = '011.011.011-11';
  
-- 1. Mariana Alencar Costa (SP) - Novo e-mail e complemento
UPDATE `editora`.`cliente` SET `email` = 'mariana.costa.novo@outlook.com', `complemento` = 'Apto 101, Torre C' WHERE `cpf` = '555.555.555-55';

-- 2. Roberto Mendes Ferreira (RJ) - Nova rua e CEP
UPDATE `editora`.`cliente` SET `rua` = 'Avenida Osvaldo Cruz', `cep` = '22250-060' WHERE `cpf` = '666.666.666-66';

-- 3. Juliana Gomes Peres (MG) - Bairro e complemento ajustados
UPDATE `editora`.`cliente` SET `bairro` = 'Savassi', `complemento` = 'Sala Comercial 505' WHERE `cpf` = '777.777.777-77';

-- 4. Lucas Souza Almeida (RS) - E-mail corporativo
UPDATE `editora`.`cliente` SET `email` = 'lucas.almeida@empresa.com.br' WHERE `cpf` = '888.888.888-88';

-- 5. Ana Paula Castro (SP) - Nova data de nascimento
UPDATE `editora`.`cliente` SET `data_nasc` = '1976-01-10' WHERE `cpf` = '011.011.011-11';

-- 6. Bruno Siqueira (RJ) - Novo e-mail e rua
UPDATE `editora`.`cliente` SET `email` = 'bruno.siqueira.rj@gmail.com', `rua` = 'Rua Barata Ribeiro' WHERE `cpf` = '022.022.022-22';

-- 7. Cecília Meireles (MG) - Novo CEP
UPDATE `editora`.`cliente` SET `cep` = '30110-000' WHERE `cpf` = '033.033.033-33';

-- 8. Diego Nunes (RS) - Complemento alterado
UPDATE `editora`.`cliente` SET `complemento` = 'Andar 12' WHERE `cpf` = '044.044.044-44';

-- 9. Elisa Viana (PE) - Novo e-mail
UPDATE `editora`.`cliente` SET `email` = 'elisa.viana@emailpe.com' WHERE `cpf` = '055.055.055-05';

-- 10. Fábio Guedes (BA) - Rua e bairro ajustados
UPDATE `editora`.`cliente` SET `rua` = 'Avenida Sete de Setembro', `bairro` = 'Vitória' WHERE `cpf` = '066.066.066-06';

-- 11. Giovana Morais (SP) - Novo e-mail
UPDATE `editora`.`cliente` SET `email` = 'giovana.morais.cam@hotmail.com' WHERE `cpf` = '077.077.077-07';

-- 12. Hugo Ferreira (SC) - Rua e CEP ajustados
UPDATE `editora`.`cliente` SET `rua` = 'Rua Vidal Ramos', `cep` = '88010-800' WHERE `cpf` = '088.088.088-08';

-- 13. Igor Menezes (SP) - Novo e-mail
UPDATE `editora`.`cliente` SET `email` = 'igor.menezes.ribeirao@uol.com.br' WHERE `cpf` = '099.099.099-09';

-- 14. Jéssica Ramos (SP) - Bairro e complemento ajustados
UPDATE `editora`.`cliente` SET `bairro` = 'Consolação', `complemento` = 'Conj. 1802' WHERE `cpf` = '100.100.100-10';

-- 15. Kleber Santos (PR) - Mudança de cidade (Curitiba para Londrina)
UPDATE `editora`.`cliente` SET `cidade` = 'Londrina', `cep` = '86010-000', `bairro` = 'Centro' WHERE `cpf` = '111.111.111-11';

-- 16. Lívia Motta (MG) - Bairro atualizado
UPDATE `editora`.`cliente` SET `bairro` = 'Funcionários' WHERE `cpf` = '122.122.122-12';

-- 17. Murilo Pires (RJ) - Nova data de nascimento
UPDATE `editora`.`cliente` SET `data_nasc` = '1960-12-09' WHERE `cpf` = '133.133.133-13';

-- 18. Nara Rocha (SP) - Novo e-mail
UPDATE `editora`.`cliente` SET `email` = 'nara.rocha.sp@yahoo.com' WHERE `cpf` = '144.144.144-14';

-- 19. Otávio Melo (RS) - Rua e complemento ajustados
UPDATE `editora`.`cliente` SET `rua` = 'Rua da Praia', `complemento` = 'Sala 11' WHERE `cpf` = '155.155.155-15';

-- 20. Paula Diniz (CE) - Bairro e CEP ajustados
UPDATE `editora`.`cliente` SET `bairro` = 'Aldeota', `cep` = '60160-230' WHERE `cpf` = '166.166.166-16';

-- ********** CORREÇÃO DE NOMES DE FUNCIONÁRIOS (UPDATE) **********
-- ESTE CÓDIGO DEVE SER EXECUTADO DEPOIS DO INSERT NA TABELA 'funcionario'.

-- Usando a estrutura final de colunas (Id_CPF e Nome em PascalCase).

-- 1. Carlos Supervisor Vendas -> Carlos Souza
UPDATE `editora`.`funcionario` SET `Nome` = 'Carlos Souza' WHERE `Id_CPF` = '100.000.000-01';

-- 2. Maria S. Vendas Int -> Maria Santos
UPDATE `editora`.`funcionario` SET `Nome` = 'Maria Santos' WHERE `Id_CPF` = '100.000.000-02';

-- 3. João Analista Marketing -> João Oliveira
UPDATE `editora`.`funcionario` SET `Nome` = 'João Oliveira' WHERE `Id_CPF` = '100.000.000-03';

-- 4. Ana Coordenadora Eventos -> Ana Ribeiro
UPDATE `editora`.`funcionario` SET `Nome` = 'Ana Ribeiro' WHERE `Id_CPF` = '100.000.000-04';

-- 5. Pedro Editor Tecnologia -> Pedro Moura
UPDATE `editora`.`funcionario` SET `Nome` = 'Pedro Moura' WHERE `Id_CPF` = '100.000.000-05';

-- 6. Sofia Editora Literatura -> Sofia Almeida
UPDATE `editora`.`funcionario` SET `Nome` = 'Sofia Almeida' WHERE `Id_CPF` = '100.000.000-06';

-- 7. Lucas Designer Gráfico -> Lucas Freitas
UPDATE `editora`.`funcionario` SET `Nome` = 'Lucas Freitas' WHERE `Id_CPF` = '100.000.000-07';

-- 8. Isabela Revisora -> Isabela Gomes
UPDATE `editora`.`funcionario` SET `Nome` = 'Isabela Gomes' WHERE `Id_CPF` = '100.000.000-08';

-- 9. Rafa Logística -> Rafa Martins
UPDATE `editora`.`funcionario` SET `Nome` = 'Rafa Martins' WHERE `Id_CPF` = '100.000.000-09';

-- 10. Juliana RH -> Juliana Costa
UPDATE `editora`.`funcionario` SET `Nome` = 'Juliana Costa' WHERE `Id_CPF` = '100.000.000-10';

-- 11. Gustavo Financeiro -> Gustavo Pereira
UPDATE `editora`.`funcionario` SET `Nome` = 'Gustavo Pereira' WHERE `Id_CPF` = '100.000.000-11';

-- 12. Felipe TI Dev -> Felipe Nunes
UPDATE `editora`.`funcionario` SET `Nome` = 'Felipe Nunes' WHERE `Id_CPF` = '100.000.000-12';

-- 13. Bruna TI Infra -> Bruna Lima
UPDATE `editora`.`funcionario` SET `Nome` = 'Bruna Lima' WHERE `Id_CPF` = '100.000.000-13';

-- 14. Adriana Comunicação -> Adriana Carvalho
UPDATE `editora`.`funcionario` SET `Nome` = 'Adriana Carvalho' WHERE `Id_CPF` = '100.000.000-14';

-- 15. Renato Jurídico -> Renato Ferreira
UPDATE `editora`.`funcionario` SET `Nome` = 'Renato Ferreira' WHERE `Id_CPF` = '100.000.000-15';

-- 16. Camila Pesquisa -> Camila Barbosa
UPDATE `editora`.`funcionario` SET `Nome` = 'Camila Barbosa' WHERE `Id_CPF` = '100.000.000-16';

-- 17. André E-commerce -> André Rocha
UPDATE `editora`.`funcionario` SET `Nome` = 'André Rocha' WHERE `Id_CPF` = '100.000.000-17';

-- 18. Vivian Atendimento -> Vivian Dias
UPDATE `editora`.`funcionario` SET `Nome` = 'Vivian Dias' WHERE `Id_CPF` = '100.000.000-18';

-- 19. Marcelo Design Prod -> Marcelo Vieira
UPDATE `editora`.`funcionario` SET `Nome` = 'Marcelo Vieira' WHERE `Id_CPF` = '100.000.000-19';

-- 20. Érica Diretora Geral -> Érica Brandão
UPDATE `editora`.`funcionario` SET `Nome` = 'Érica Brandão' WHERE `Id_CPF` = '100.000.000-20';