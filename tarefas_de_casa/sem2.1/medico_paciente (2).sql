CREATE TABLE `medico` (
  `crm` BIGINT PRIMARY KEY,
  `nome` VARCHAR(255)
);

CREATE TABLE `paciente` (
  `cpf` CHAR(11) PRIMARY KEY,
  `nome` VARCHAR(255)
);

CREATE TABLE `quarto` (
  `endereco` VARCHAR(255),
  `numero` SMALLINT,
  `PRIMARY` KEY(cuarto_endereco.quarto_numero)
);

CREATE TABLE `departamento` (
  `id` TINYINT PRIMARY KEY AUTO_INCREMENT,
  `nome` VARCHAR(255)
);

CREATE TABLE `tratamento` (
  `medico_crm` BIGINT,
  `paciente_cpf` CHAR(11)
);

CREATE TABLE `internacao` (
  `quarto_endereco` VARCHAR(255),
  `quarto_numero` SMALLINT,
  `paciente_cpf` CHAR(11)
);

CREATE TABLE `especialidade` (
  `medico_crm` BIGINT,
  `departamento_id` TINYINT
);

ALTER TABLE `tratamento` ADD FOREIGN KEY (`medico_crm`) REFERENCES `medico` (`crm`);

ALTER TABLE `tratamento` ADD FOREIGN KEY (`paciente_cpf`) REFERENCES `paciente` (`cpf`);

ALTER TABLE `internacao` ADD FOREIGN KEY (`paciente_cpf`) REFERENCES `quarto` (`PRIMARY`);

ALTER TABLE `especialidade` ADD FOREIGN KEY (`departamento_id`) REFERENCES `departamento` (`id`);

ALTER TABLE `especialidade` ADD FOREIGN KEY (`medico_crm`) REFERENCES `medico` (`crm`);

ALTER TABLE `internacao` ADD FOREIGN KEY (`paciente_cpf`) REFERENCES `paciente` (`cpf`);
