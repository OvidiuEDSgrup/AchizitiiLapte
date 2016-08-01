CREATE TABLE dbo.terti (
    Subunitate               VARCHAR (9)  NOT NULL,
    Tert                     VARCHAR (13) NOT NULL,
    Denumire                 VARCHAR (80) NOT NULL,
    Cod_fiscal               VARCHAR (16) NOT NULL,
    Localitate               VARCHAR (35) NOT NULL,
    Judet                    VARCHAR (20) NOT NULL,
    Adresa                   VARCHAR (60) NOT NULL,
    Telefon_fax              VARCHAR (20) NOT NULL,
    Banca                    VARCHAR (20) NOT NULL,
    Cont_in_banca            VARCHAR (35) NOT NULL,
    Tert_extern              BIT          NOT NULL,
    Grupa                    VARCHAR (3)  NOT NULL,
    Cont_ca_furnizor         VARCHAR (20) NOT NULL,
    Cont_ca_beneficiar       VARCHAR (20) NOT NULL,
    Sold_ca_furnizor         FLOAT (53)   NOT NULL,
    Sold_ca_beneficiar       FLOAT (53)   NOT NULL,
    Sold_maxim_ca_beneficiar FLOAT (53)   NOT NULL,
    Disccount_acordat        REAL         NOT NULL,
    detalii                  XML          NULL
);


GO
CREATE UNIQUE CLUSTERED INDEX Principal
    ON dbo.terti(Subunitate ASC, Tert ASC);


GO
CREATE NONCLUSTERED INDEX Denumire
    ON dbo.terti(Denumire ASC);


GO
CREATE NONCLUSTERED INDEX Cod_fiscal
    ON dbo.terti(Cod_fiscal ASC);

