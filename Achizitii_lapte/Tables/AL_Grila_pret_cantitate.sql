CREATE TABLE [dbo].[AL_Grila_bonus_cantitate]
(
	[id_grila] INT NOT NULL PRIMARY KEY, 
    [id_grupa] INT NULL, 
    [perioada] CHAR(1) NOT NULL
		CONSTRAINT CK_AL_Grile_pret_cantitate_Perioada
			CHECK (perioada=left('Zilnica',(1)) OR perioada=left('Saptamanala',(1)) 
				OR perioada=left('Bilunara',(1)) OR perioada=left('Lunara',(1))),
	id_tip_lapte INT,
	limita_inf DECIMAL(15,3),
	limita_sup DECIMAL(15,3)
)
