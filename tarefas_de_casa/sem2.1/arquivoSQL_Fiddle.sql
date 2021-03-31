http://sqlfiddle.com/#!9/2ef6b1/1

CREATE TABLE `medico` (
  `crm` BIGINT PRIMARY KEY,
  `nome` VARCHAR(255)
);

INSERT INTO `medico`(crm,nome)
VALUES (12345678,"Carrillo, Norma"),
       (12345670,"Correia, helena"),
       (12345679,"estevez,Ana"),
       (22345679,"Dos santos,leticia"),
       (32345679,"Vera,Lucia"),
       (32335679,"almeida,ligiane"),
       (32245679,"Martins,leandro"),
       (32343679,"mendonça,Fabiana"),
       (32347679,"Rodriguez,Jair"),
       (42345619,"gonçalves,alexandre");

CREATE TABLE `paciente` (
  `cpf` CHAR(11) PRIMARY KEY,
  `nome` VARCHAR(255)
);

INSERT INTO `paciente`(cpf,nome)
VALUES (12345678,"Carrillo, Norma"),
       (12345670,"Correia, beatriz"),
       (12345679,"estevez,luciana"),
       (22345679,"Dos santos,bruno"),
       (32345679,"mesquita,douglas"),
       (32335679,"turbay,fernanda"),
       (32245679,"Martins,leandro"),
       (32343679,"fernandez,erica"),
       (32347679,"Rodriguez,Jair"),
       (42345619,"gonçalves,alexandre");

CREATE TABLE `quarto` (
  `endereco` VARCHAR(255),
  `numero` SMALLINT,
  PRIMARY KEY(endereco,numero)
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


