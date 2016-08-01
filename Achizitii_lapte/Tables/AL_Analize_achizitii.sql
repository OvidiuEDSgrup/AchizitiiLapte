CREATE TABLE dbo.AL_Analize_achizitii (
    id_analiza       INT   NOT NULL
		DEFAULT (NEXT VALUE FOR AL_Achizitii_ID_achizitie)
		CONSTRAINT PK_AL_Analize_achizitii 
			PRIMARY KEY CLUSTERED (id_analiza) ,
	id_achizitie	 INT NOT NULL
		CONSTRAINT FK_AL_Analize_ACHIZITII 
			FOREIGN KEY (id_achizitie) REFERENCES AL_Achizitii(id_achizitie),
    cod_indicator    VARCHAR (3)   NOT NULL
		CONSTRAINT FK_AL_Analize_achiz_Indicatori_analiza
			FOREIGN KEY (cod_indicator) REFERENCES AL_Indicatori_analiza(cod_indicator),
    rezultat         DECIMAL (10,5) NOT NULL,
	detalii			 XML NULL,
    data_operarii    DATETIME2(3)   NOT NULL,
    operator		 VARCHAR (10)  NOT NULL 
);


GO
CREATE UNIQUE NONCLUSTERED INDEX UQ_AL_Analize_achizitii
    ON dbo.AL_Analize_achizitii(id_achizitie ASC, cod_indicator ASC);