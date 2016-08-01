CREATE TABLE [dbo].AL_Indicatori_analiza (	
    cod_indicator	VARCHAR (3)   NOT NULL
		CONSTRAINT PK_cod_indicator PRIMARY KEY CLUSTERED (cod_indicator),				
    denumire		VARCHAR (30)  NOT NULL    
);