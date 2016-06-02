CREATE TABLE [dbo].[nomencl] (
    [Cod]                    VARCHAR (20)  NOT NULL,
    [Tip]                    CHAR (1)   NOT NULL,
    [Denumire]               VARCHAR (80)  NOT NULL,
    [UM]                     VARCHAR (3)   NOT NULL,
    [UM_1]                   VARCHAR (3)   NOT NULL,
    [Coeficient_conversie_1] FLOAT (53)    NOT NULL,
    [UM_2]                   VARCHAR (20)  NOT NULL,
    [Coeficient_conversie_2] FLOAT (53)    NOT NULL,
    [Cont]                   VARCHAR (20)  NOT NULL,
    [Grupa]                  VARCHAR (13)  NOT NULL,
    [Valuta]                 VARCHAR (3)   NOT NULL,
    [Pret_in_valuta]         FLOAT (53)    NOT NULL,
    [Pret_stoc]              FLOAT (53)    NOT NULL,
    [Pret_vanzare]           FLOAT (53)    NOT NULL,
    [Pret_cu_amanuntul]      FLOAT (53)    NOT NULL,
    [Cota_TVA]               REAL          NOT NULL,
    [Stoc_limita]            FLOAT (53)    NOT NULL,
    [Stoc]                   FLOAT (53)    NOT NULL,
    [Greutate_specifica]     FLOAT (53)    NOT NULL,
    [Furnizor]               VARCHAR (13)  NOT NULL,
    [Loc_de_munca]           VARCHAR (150) NOT NULL,
    [Gestiune]               VARCHAR (13)  NOT NULL,
    [Categorie]              SMALLINT      NOT NULL,
    [Tip_echipament]         VARCHAR (21)  NOT NULL,
    [detalii]                XML           NULL
);


GO
CREATE NONCLUSTERED INDEX [Denumire]
    ON [dbo].[nomencl]([Denumire] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [Tip]
    ON [dbo].[nomencl]([Tip] ASC, [Cod] ASC);


GO
CREATE UNIQUE CLUSTERED INDEX [Cod]
    ON [dbo].[nomencl]([Cod] ASC);

