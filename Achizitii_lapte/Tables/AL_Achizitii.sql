CREATE TABLE dbo.AL_Achizitii (
	id_achizitie INT NOT NULL
		DEFAULT (NEXT VALUE FOR AL_Achizitii_ID_achizitie)
		CONSTRAINT PK_AL_Achizitii 
			PRIMARY KEY CLUSTERED (id_achizitie),
	id_lista INT NOT NULL 
		CONSTRAINT FK_AL_Achizitii_Liste_achizitie 
			FOREIGN KEY REFERENCES AL_Liste_achizitii(id_lista),
	id_prod INT NOT NULL
		CONSTRAINT FK_AL_Achizitii_Producatori 
			FOREIGN KEY REFERENCES AL_Producatori(id_prod),
    cantitate        DECIMAL(12, 3) NOT NULL,
    pret             DECIMAL(12, 5) NOT NULL,
    data_operarii    DATETIME2(3)   NOT NULL,
    operator       VARCHAR(10)  NULL,
	detalii			XML NULL
);
GO
CREATE UNIQUE NONCLUSTERED INDEX UQ_AL_Achizitii_ID_lst_ID_prod
    ON dbo.AL_Achizitii(id_lista ASC, id_prod ASC) 




