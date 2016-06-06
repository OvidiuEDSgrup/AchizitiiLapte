CREATE TABLE dbo.AL_Achizitii (
	id_achizitie INT DEFAULT NEXT VALUE FOR AL_Achizitii_ID_achizitie
		CONSTRAINT PK_AL_Achizitii PRIMARY KEY,
	id_achizitie_centru INT NOT NULL 
		CONSTRAINT FK_AL_ACHIZITII_centre FOREIGN KEY REFERENCES AL_Achizitii_centre(id_achizitie_centru),
	id_prod INT NOT NULL
		CONSTRAINT FK_AL_Achizitii_Producatori FOREIGN KEY REFERENCES AL_Producatori(id_prod),
    cantitate          DECIMAL(12, 3) NOT NULL,
    pret             DECIMAL(12, 5) NOT NULL,
    data_operarii    DATETIME2(3)   NOT NULL,
    operator       VARCHAR(10)  NULL,
	detalii			XML NULL
);
GO
CREATE UNIQUE NONCLUSTERED INDEX UQ_ID_achiz_cen_ID_prod
    ON dbo.AL_Achizitii(id_achizitie_centru ASC, id_prod ASC) 




