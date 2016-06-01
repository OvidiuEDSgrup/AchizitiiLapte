CREATE TABLE [dbo].[Lm] (
    [Nivel]       SMALLINT     NOT NULL,
    [Cod]         VARCHAR (9)  NOT NULL,
    [Cod_parinte] VARCHAR (9)  NOT NULL,
    [Denumire]    VARCHAR (30) NOT NULL
);


GO
CREATE UNIQUE CLUSTERED INDEX [Cod]
    ON [dbo].[lm]([Cod] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [Principal]
    ON [dbo].[lm]([Nivel] ASC, [Cod] ASC);


GO
CREATE NONCLUSTERED INDEX [Denumire]
    ON [dbo].[lm]([Denumire] ASC);

