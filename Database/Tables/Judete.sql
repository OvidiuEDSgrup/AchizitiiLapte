CREATE TABLE dbo.Judete (
    cod_judet        VARCHAR (3)  NOT NULL,
    denumire         VARCHAR (30) NOT NULL,
    prefix_telefonic VARCHAR (4)  NOT NULL,
    resedinta        VARCHAR (8)  NULL
);


GO
CREATE UNIQUE CLUSTERED INDEX cod_judet
    ON dbo.Judete(cod_judet ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX denumire
    ON dbo.Judete(denumire ASC);

