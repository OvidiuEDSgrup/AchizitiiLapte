CREATE TABLE dbo.AL_Achizitii_centre (
	id_achizitie_centru INT NOT NULL DEFAULT NEXT VALUE FOR AL_Achizitii_centre_ID_achizitie_centru 
		CONSTRAINT PK_AL_Achizitii_centre PRIMARY KEY,
    data_lunii    DATETIME2 (0)   NOT NULL,
    id_centru     INT             NOT NULL,
		CONSTRAINT FK_AL_Achiz_CEN_colect
		FOREIGN KEY (id_centru) REFERENCES dbo.AL_Centre_colectare (id_centru),
    id_tip_lapte  INT             NOT NULL,
    cod_centru    VARCHAR (36)    NULL,
    cod_lapte     VARCHAR (20)    NULL,
    tip_plata     CHAR (1)        NOT NULL DEFAULT 'L',
		CONSTRAINT CK_AL_Achizitii_centre_Tip_plata 
		CHECK (tip_plata=LEFT('Zilnica',1) OR tip_plata=LEFT('Saptamanala',1) 
			OR tip_plata=LEFT('Bilunara',1) OR tip_plata=LEFT('Lunara', 1) OR tip_plata=LEFT('Initiala',1)),
	cantitate	  DECIMAL(15, 3) NOT NULL,
    pret          DECIMAL (12, 5) NOT NULL,
    data_operarii DATETIME2 (3)   NOT NULL,
    operator      VARCHAR (10)    NULL,    
    CONSTRAINT FK_AL_Achiz_cen_Utilizatori FOREIGN KEY (operator) REFERENCES dbo.utilizatori (ID), 
    CONSTRAINT FK_AL_Achiz_cen_Nomencl FOREIGN KEY (cod_lapte) REFERENCES dbo.nomencl (Cod),
);

GO
CREATE UNIQUE NONCLUSTERED INDEX UQ_AL_Achiz_cen_Data_lunii_ID_centru_Tip_lapte
    ON dbo.AL_Achizitii_centre(data_lunii ASC, id_centru ASC, id_tip_lapte ASC);

GO

EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'backward compatibility AL OLD',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'AL_Achizitii_centre',
    @level2type = N'COLUMN',
    @level2name = N'cod_lapte'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'backward compatibility AL OLD',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'AL_Achizitii_centre',
    @level2type = N'COLUMN',
    @level2name = N'cod_centru'