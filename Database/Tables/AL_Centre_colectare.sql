CREATE TABLE dbo.AL_Centre_colectare (
    id_centru     INT           CONSTRAINT DF_AL_Centre_colectare_id_centru DEFAULT (NEXT VALUE FOR AL_Centre_colectare_id_centru) NOT NULL,
    cod_centru    VARCHAR (36)  CONSTRAINT DF_AL_Centre_colectare_cod_centru_colectare DEFAULT (newid()) NOT NULL,
    denumire      VARCHAR (50)  NOT NULL,
    cod_IBAN      VARCHAR (30)  NOT NULL,
    banca         VARCHAR (20)  NOT NULL,
    sat           VARCHAR (30)  NOT NULL,
    comuna        VARCHAR (30)  NOT NULL,
    cod_loc       VARCHAR (8)   NULL,
    cod_jud       VARCHAR (3)   NULL,
    cod_tara      VARCHAR (3)   NULL,
    responsabil   VARCHAR (30)  NOT NULL,
    loc_munca     VARCHAR (9)   NULL,
    tip_pers      CHAR (1)      NOT NULL,
    subunit       VARCHAR (9)   CONSTRAINT DF_AL_Centre_colectare_subunitate DEFAULT ('1') NOT NULL,
    tert          VARCHAR (13)  NULL,
    cod_ruta      VARCHAR (20)  NULL,
    ord_ruta      SMALLINT      NOT NULL,
    data_operarii DATETIME2 (3) NOT NULL,
    operator      VARCHAR (10)  NOT NULL,
    detalii       XML           NULL,
    CONSTRAINT PK_AL_Centre_colectare PRIMARY KEY CLUSTERED (id_centru ASC),
    CONSTRAINT CK_AL_Centre_colectare_localitate_judet_tara_completate CHECK (coalesce(cod_loc,cod_jud,cod_tara) IS NOT NULL),
    CONSTRAINT CK_AL_Centre_colectare_tip_persoana_Fizica_sau_Juridica CHECK (tip_pers='J' OR tip_pers='F'),
    CONSTRAINT FK_AL_Centre_colectare_Judete FOREIGN KEY (cod_jud) REFERENCES dbo.Judete (cod_judet),
    CONSTRAINT FK_AL_Centre_colectare_Lm FOREIGN KEY (loc_munca) REFERENCES dbo.lm (Cod),
    CONSTRAINT FK_AL_Centre_colectare_Localitati FOREIGN KEY (cod_loc) REFERENCES dbo.Localitati (cod_oras),
    CONSTRAINT FK_AL_Centre_colectare_Rute FOREIGN KEY (cod_ruta) REFERENCES dbo.rute (codRuta),
    CONSTRAINT FK_AL_Centre_colectare_Tari FOREIGN KEY (cod_tara) REFERENCES dbo.Tari (cod_tara),
    CONSTRAINT FK_AL_Centre_colectare_Terti FOREIGN KEY (subunit, tert) REFERENCES dbo.terti (Subunitate, Tert),
    CONSTRAINT FK_AL_Centre_colectare_utilizatori FOREIGN KEY (operator) REFERENCES dbo.utilizatori (ID)
);








GO
CREATE NONCLUSTERED INDEX Denumire
    ON dbo.AL_Centre_colectare(denumire ASC);


GO
CREATE NONCLUSTERED INDEX Loc_munca
    ON dbo.AL_Centre_colectare(loc_munca ASC, cod_centru ASC);


GO
CREATE NONCLUSTERED INDEX Ordine_ruta
    ON dbo.AL_Centre_colectare(cod_ruta ASC, ord_ruta ASC, cod_centru ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX Unic_AL_Centre_colectare
    ON dbo.AL_Centre_colectare(cod_centru ASC);






GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'backward compatibility AL OLD', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AL_Centre_colectare', @level2type = N'COLUMN', @level2name = N'cod_centru';

