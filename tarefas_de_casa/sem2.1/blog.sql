CREATE TABLE [usuario] (
  [id] int PRIMARY KEY,
  [nome_usuario] varchar(255),
  [email] varchar(200),
  [senha] varchar(60)
)
GO

CREATE TABLE [postagem] (
  [id] int PRIMARY KEY,
  [usuario_escreveu] int,
  [texto] varchar(255),
  [data_postagem] datetime,
  [comentario] int
)
GO

CREATE TABLE [comentario] (
  [id] int PRIMARY KEY,
  [usuario_comentario] int,
  [texto_comentario] varchar(255)
)
GO

ALTER TABLE [postagem] ADD FOREIGN KEY ([usuario_escreveu]) REFERENCES [usuario] ([id])
GO

ALTER TABLE [comentario] ADD FOREIGN KEY ([usuario_comentario]) REFERENCES [usuario] ([id])
GO

ALTER TABLE [comentario] ADD FOREIGN KEY ([id]) REFERENCES [postagem] ([comentario])
GO
