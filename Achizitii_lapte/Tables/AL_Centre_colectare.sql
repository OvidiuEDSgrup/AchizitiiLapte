CREATE TABLE dbo.AL_Centre_colectare (
    id_centru     INT           
		DEFAULT (NEXT VALUE FOR AL_Centre_colectare_ID_centru) NOT NULL
		CONSTRAINT PK_AL_Centre_colectare 
			PRIMARY KEY CLUSTERED (id_centru ASC),
    cod_centru    VARCHAR (36)  NULL,
    denumire      VARCHAR (50)  NOT NULL,
    cod_IBAN      VARCHAR (30)  NOT NULL,
    banca         VARCHAR (20)  NOT NULL,
    sat           VARCHAR (30)  NOT NULL,
    comuna        VARCHAR (30)  NOT NULL,
    cod_loc       VARCHAR (8)   NULL
		CONSTRAINT FK_AL_Cen_col_Localitati 
			FOREIGN KEY REFERENCES dbo.Localitati (cod_oras),
    cod_jud       VARCHAR (3)   NULL
		CONSTRAINT FK_AL_Cen_col_Judete 
			FOREIGN KEY REFERENCES dbo.Judete (cod_judet),
    cod_tara      VARCHAR (3)   NULL
		CONSTRAINT FK_AL_Cen_col_Tari 
			FOREIGN KEY REFERENCES dbo.Tari (cod_tara),		
    responsabil   VARCHAR (30)  NOT NULL,
    loc_munca     VARCHAR (9)   NULL
		CONSTRAINT FK_AL_Cen_col_Lm 
			FOREIGN KEY REFERENCES dbo.lm (Cod),
    tip_pers      CHAR (1)      NOT NULL
		CONSTRAINT CK_AL_Cen_col_Tip_pers_Fizica_or_Juridica 
			CHECK (tip_pers='J' OR tip_pers='F'),
    subunit       VARCHAR (9)   DEFAULT ('1') NOT NULL,
    tert          VARCHAR (13)  NULL,
    cod_ruta      VARCHAR (20)  NULL
		CONSTRAINT FK_AL_Cen_col_Rute 
			FOREIGN KEY REFERENCES dbo.rute (codRuta),
    ord_ruta      SMALLINT      NOT NULL,
    data_operarii DATETIME2 (3) NOT NULL,
    operator      VARCHAR (10)  NOT NULL
		CONSTRAINT FK_AL_Cen_col_Utilizatori 
			FOREIGN KEY REFERENCES dbo.utilizatori (ID),
    detalii       XML           NULL,
    CONSTRAINT CK_AL_Cen_col_Loc_Jud_Tara_Completate CHECK (coalesce(cod_loc,cod_jud,cod_tara) IS NOT NULL),
    CONSTRAINT FK_AL_Cen_col_Terti FOREIGN KEY (subunit, tert) REFERENCES dbo.terti (Subunitate, Tert),
);

GO
CREATE UNIQUE NONCLUSTERED INDEX UQ_AL_Centre_colectare
    ON dbo.AL_Centre_colectare(denumire ASC, cod_tara ASC, cod_jud ASC, cod_loc ASC);


GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'backward compatibility AL OLD',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'AL_Centre_colectare',
    @level2type = N'COLUMN',
    @level2name = N'cod_centru'