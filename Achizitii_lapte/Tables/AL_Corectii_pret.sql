CREATE TABLE [dbo].[AL_Corectii_pret]
(
	[id_corectie] INT NOT NULL PRIMARY KEY, 
    [id_achizitie] INT NOT NULL, 
	[corectie] DECIMAL(12, 5) NULL, 
    tip_corectie char(1),
	motiv varchar(100)
)
