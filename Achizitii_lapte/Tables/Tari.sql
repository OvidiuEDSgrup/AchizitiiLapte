CREATE TABLE dbo.Tari (
    cod_tara         VARCHAR (3)   NOT NULL,
    denumire         VARCHAR (200) NOT NULL,
    prefix_telefonic VARCHAR (4)   NOT NULL,
    Teritoriu        CHAR (1)   NOT NULL,
    Val1             FLOAT (53)    NOT NULL,
    Data             DATETIME      NOT NULL,
    Detalii          VARCHAR (200) NOT NULL
);


GO
CREATE UNIQUE CLUSTERED INDEX cod_tara
    ON dbo.Tari(cod_tara ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX denumire
    ON dbo.Tari(denumire ASC);

