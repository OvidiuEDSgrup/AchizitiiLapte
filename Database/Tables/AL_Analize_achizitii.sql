CREATE TABLE dbo.AL_Analize_achizitii (
	id_achizitie INT NOT NULL,
    data_lunii       DATETIME2(0)   NULL,
    Tip              CHAR (1)   NULL,
    Producator       VARCHAR (36)   NULL,
    Centru_colectare VARCHAR (36)   NULL,
    Tip_lapte        VARCHAR (20)  NULL,
    Indicator        VARCHAR (3)   NOT NULL,
    id_analiza       INT   NOT NULL,
    rezultat         FLOAT (53) NOT NULL,
    data_operarii    DATETIME2(3)   NOT NULL,
    operator		 VARCHAR (10)  NOT NULL
);


GO
CREATE UNIQUE NONCLUSTERED INDEX UQ_AL_Analize_achizitii
    ON dbo.AL_Analize_achizitii(data_lunii DESC, Tip ASC, Producator ASC, Centru_colectare ASC, Tip_lapte ASC, Indicator ASC, Ziua ASC) WITH (FILLFACTOR = 80);