CREATE TABLE dbo.AL_Liste_achizitii (
    id_lista INT             
		DEFAULT (NEXT VALUE FOR AL_Liste_achizitii_ID_lista) NOT NULL
		CONSTRAINT PK_AL_Liste_achizitii 
			PRIMARY KEY CLUSTERED (id_lista ASC),
    data_lunii          DATETIME2 (0)   NOT NULL,
    id_centru           INT             NOT NULL
		CONSTRAINT FK_AL_Lst_achiz_colect 
			FOREIGN KEY REFERENCES dbo.AL_Centre_colectare (id_centru),
    id_tip_lapte        INT             NOT NULL 
		CONSTRAINT FK_AL_Lst_achiz_Tip_lapte
			FOREIGN KEY (id_tip_lapte) REFERENCES AL_Tipuri_lapte(id_tip_lapte),
    cod_centru          VARCHAR (36)    NULL,
    cod_lapte           VARCHAR (20)    NULL
		CONSTRAINT FK_AL_Lst_achiz_Nomencl 
			FOREIGN KEY REFERENCES dbo.nomencl (Cod),
    tip_plata           CHAR (1)        DEFAULT ('L') NOT NULL
		CONSTRAINT CK_AL_Liste_achizitii_Tip_plata 
			CHECK (tip_plata=left('Zilnica',(1)) OR tip_plata=left('Saptamanala',(1)) 
			OR tip_plata=left('Bilunara',(1)) OR tip_plata=left('Lunara',(1)) OR tip_plata=left('Initiala',(1))),
    cantitate           DECIMAL (15, 3) NOT NULL,
    pret                DECIMAL (12, 5) NOT NULL,
    data_operarii       DATETIME2 (3)   NOT NULL,
    operator            VARCHAR (10)    NULL 
    CONSTRAINT FK_AL_Lst_achiz_Utilizatori 
		FOREIGN KEY REFERENCES dbo.utilizatori (ID)
);

GO
CREATE UNIQUE NONCLUSTERED INDEX UQ_AL_Lst_achiz_Data_lunii_ID_centru_Tip_lapte
    ON dbo.AL_Liste_achizitii(data_lunii ASC, id_centru ASC, id_tip_lapte ASC);

GO

EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'backward compatibility AL OLD',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'AL_Liste_achizitii',
    @level2type = N'COLUMN',
    @level2name = N'cod_lapte'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'backward compatibility AL OLD',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'AL_Liste_achizitii',
    @level2type = N'COLUMN',
    @level2name = N'cod_centru'