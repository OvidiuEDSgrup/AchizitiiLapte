
CREATE TABLE [dbo].AL_Indicatori_analiza_Tipuri_lapte (
	id_tip_lapte INT NOT NULL
		CONSTRAINT FK_AL_Indic_analiza_Tip_lapte
			FOREIGN KEY (id_tip_lapte) REFERENCES AL_Tipuri_lapte(id_tip_lapte),
    cod_indicator	VARCHAR (3)   NOT NULL
		CONSTRAINT FK_AL_Indic_analiza_Tip_lapte_Indic_analiza
			FOREIGN KEY (cod_indicator) REFERENCES AL_Indicatori_analiza(cod_indicator),				
    denumire		VARCHAR (30)  NOT NULL,
    val_standard	DECIMAL(10,5) NOT NULL,
    ord_achizitii	TINYINT   NOT NULL,
    ord_receptii	TINYINT   NOT NULL
);

GO

CREATE INDEX [UQ_AL_Indic_analiza_ID_tip_lapte_Cod_indic] 
	ON [dbo].AL_Indicatori_analiza_Tipuri_lapte (id_tip_lapte, cod_indicator)

GO
