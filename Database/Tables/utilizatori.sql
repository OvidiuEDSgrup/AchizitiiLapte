CREATE TABLE [dbo].[utilizatori] (
    [ID]         VARCHAR (10)  NOT NULL,
    [Nume]       VARCHAR (30)  NOT NULL,
    [Parola]     VARCHAR (10)  NOT NULL,
    [Info]       VARCHAR (100) NOT NULL,
    [Categoria]  SMALLINT      NOT NULL,
    [Jurnal]     VARCHAR (3)   NOT NULL,
    [Marca]      VARCHAR (6)   NOT NULL,
    [Observatii] VARCHAR (100) NOT NULL
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ID]
    ON [dbo].[utilizatori]([ID] ASC);

