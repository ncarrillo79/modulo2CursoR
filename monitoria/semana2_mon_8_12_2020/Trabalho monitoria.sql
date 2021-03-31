

-- LINK DEL DIAGRAMA https://dbdiagram.io/d/5fcab7409a6c525a03b9dd4e

CREATE TABLE [marca] (
  [marca_id] int PRIMARY KEY,
  [nome] varchar(60),
  [nacionalidade] varchar(60),
  [slogan] varchar(255),
  [ano_de_criacao] int
)
GO

CREATE TABLE [modelo] (
  [modelo_id] int PRIMARY KEY,
  [marca_id] int,
  [ano] int,
  [tipo] varchar(50),
  [nome] varchar(50)
)
GO

CREATE TABLE [carro] (
  [carro_id] int PRIMARY KEY,
  [modelo_id] int,
  [chassi] char(17),
  [proprietario_id] int,
  [cor] varchar(80),
  [placa] char(7)
)
GO

CREATE TABLE [proprietario] (
  [proprietario_id] int PRIMARY KEY,
  [nome] varchar(255),
  [cpf] char(11),
  [endereco] varchar(255)
)
GO

ALTER TABLE [modelo] ADD FOREIGN KEY ([marca_id]) REFERENCES [marca] ([marca_id])
GO

ALTER TABLE [carro] ADD FOREIGN KEY ([modelo_id]) REFERENCES [modelo] ([modelo_id])
GO

ALTER TABLE [carro] ADD FOREIGN KEY ([proprietario_id]) REFERENCES [proprietario] ([proprietario_id])
GO
