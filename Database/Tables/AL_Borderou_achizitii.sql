CREATE TABLE dbo.AL_Borderou_achizitii (
    [data_lunii]	DATETIME   NOT NULL,
	id_centru INT NOT NULL,
	id_prod INT NOT NULL,
	id_tip_lapte INT NOT NULL,
    [cod_centru]	VARCHAR(36)   NULL,
    [cod_prod]		VARCHAR(36)   NULL,
    [cod_lapte]        VARCHAR(20)  NULL,
    [tip_plata]              CHAR (1)   NOT NULL,
    [cantitate]          DECIMAL(12, 3) NOT NULL,
    [pret]             DECIMAL(12, 5) NOT NULL,
    [data_operarii]    DATETIME2(3)   NOT NULL,
    [operator]       VARCHAR(10)  NULL, 
    CONSTRAINT [CK_AL_Borderou_achizitii_tip_plata] CHECK ([tip_plata]=LEFT('Zilnica',1) OR [tip_plata]=LEFT('Saptamanala',1) OR [tip_plata]=LEFT('Bilunara',1) OR [tip_plata]=LEFT('Lunara', 1) OR [tip_plata]=LEFT('Initiala',1)), 
    CONSTRAINT [FK_AL_Borderou_achizitii_AL_Centre_colectare] FOREIGN KEY (id_centru) REFERENCES AL_Centre_colectare(id_centru), 
    CONSTRAINT [FK_AL_Borderou_achizitii_AL_Producatori] FOREIGN KEY (id_prod) REFERENCES AL_Producatori(id_prod)
);
GO
CREATE UNIQUE CLUSTERED INDEX [Unic]
    ON [dbo].AL_Borderou_achizitii(data_lunii ASC, id_centru ASC, id_tip_lapte ASC, id_prod ASC) WITH (FILLFACTOR = 80);




