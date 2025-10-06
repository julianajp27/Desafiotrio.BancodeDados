ALTER TABLE `editora`.`cliente`
ADD COLUMN `Telefone` VARCHAR(20) NULL AFTER `Email`;

ALTER TABLE `editora`.`cliente`
ADD UNIQUE INDEX `idx_telefone` (`telefone`);

ALTER TABLE `editora`.`cliente`
ADD INDEX `idx_cidade` (`cidade`);

ALTER TABLE `editora`.`cliente`
ADD COLUMN `Pontos_Fidelidade` INT NOT NULL DEFAULT 0 AFTER `Status`;

ALTER TABLE `editora`.`cliente`
ADD INDEX `idx_pontos_fidelidade` (`pontos_fidelidade`);

ALTER TABLE `editora`.`cliente`
ADD INDEX `idx_data_nasc` (`data_nasc`);

ALTER TABLE `editora`.`cliente`
ADD INDEX `idx_cpf` (`cpf`);

ALTER TABLE `editora`.`livro_area`
ADD INDEX `idx_livro_area_cod_area` (`cod_area`);

ALTER TABLE `editora`.`item_pedido`
ADD INDEX `idx_item_pedido_id_pedido` (`id_pedido`);

ALTER TABLE `editora`.`funcionario`
ADD UNIQUE INDEX `uq_funcionario_email` (`Email`);

ALTER TABLE `editora`.`livro`
ADD INDEX `idx_livro_genero` (`Genero`);

ALTER TABLE `editora`.`pedido`
ADD INDEX `idx_pedido_status` (`Status_Pedi`);