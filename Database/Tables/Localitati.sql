CREATE TABLE dbo.Localitati (
    cod_oras   VARCHAR (8)  NOT NULL,
    cod_judet  VARCHAR (3)  NOT NULL,
    tip_oras   VARCHAR (8)  NOT NULL,
    oras       VARCHAR (30) NOT NULL,
    cod_postal VARCHAR (10) NOT NULL,
    extern     BIT          NOT NULL
);


GO
CREATE UNIQUE CLUSTERED INDEX cod_localitate
    ON dbo.Localitati(cod_oras ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX judet_oras
    ON dbo.Localitati(cod_judet ASC, tip_oras ASC, oras ASC);

