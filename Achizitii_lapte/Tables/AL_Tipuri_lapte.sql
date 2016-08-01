
CREATE TABLE [dbo].AL_Tipuri_lapte (
	id_tip_lapte	INT NOT NULL
		DEFAULT (NEXT VALUE FOR AL_Tipuri_lapte_ID_tip_lapte)
		CONSTRAINT PK_AL_Tipuri_lapte
			PRIMARY KEY CLUSTERED (id_tip_lapte),
    cod_lapte		VARCHAR (20) NOT NULL
		CONSTRAINT FK_AL_Tip_lapte_Nomencl
			FOREIGN KEY (cod_lapte) REFERENCES dbo.Nomencl(cod),
    den_lapte		VARCHAR (30) NOT NULL,
    are_cota		TINYINT       NOT NULL
);


GO
CREATE UNIQUE NONCLUSTERED INDEX UQ_AL_Tipuri_lapte_Cod_lapte
    ON [dbo].AL_Tipuri_lapte(cod_lapte ASC);


