/* Generated by InMemoryDatabaseModelInclude.tt downloaded from https://T4DacFx2TSQL.codeplex.com */
/* Copyright (c) 2015 Dr. John Tunnicliffe, Decision Analytics, London, UK  */


/*
 * This comment will appear at the top of your auto-generated file.
 * This file was generated automatically by a T4 Template 
 * DO NOT EDIT MANUALLY!
 */
CREATE PROCEDURE AL_Achizitii_insert

AS
BEGIN
    SELECT
		D.[id_achizitie]
		,D.[id_lista]
		,D.[id_prod]
		,D.[cantitate]
		,D.[pret]
		,D.[data_operarii]
		,D.[operator]
		,D.[detalii]
    FROM [dbo].[AL_Achizitii] AS D
		LEFT JOIN [dbo].[AL_Achizitii] AS I ON 1 = 1
			 AND D.[id_achizitie] = I.[id_achizitie]

-- Table [dbo].[AL_Achizitii]
	-- Primary key column [dbo].[AL_Achizitii].[id_achizitie]

	--Ignore Foreign key relationship [dbo].[FK_AL_Analize_ACHIZITII] from table [dbo].[AL_Analize_achizitii] to [dbo].[AL_Achizitii].[id_achizitie]
--.
--..
--..
--..
--..
--..
--..
--..
--..
--..
--..
	-- Foreign key relationship [dbo].[AL_Achizitii].[id_lista] from table ... to ...
	-- Foreign key relationship [dbo].[AL_Liste_achizitii].[id_lista] from table ... to ...
--..
	-- Foreign key relationship [dbo].[AL_Achizitii].[id_prod] from table ... to ...
	-- Foreign key relationship [dbo].[AL_Producatori].[id_prod] from table ... to ...
--..
--..
	
		

END;

        GO


CREATE PROCEDURE AL_Analize_achizitii_insert

AS
BEGIN
    SELECT
		D.[id_analiza]
		,D.[id_achizitie]
		,D.[cod_indicator]
		,D.[rezultat]
		,D.[detalii]
		,D.[data_operarii]
		,D.[operator]
    FROM [dbo].[AL_Analize_achizitii] AS D
		LEFT JOIN [dbo].[AL_Analize_achizitii] AS I ON 1 = 1
			 AND D.[id_analiza] = I.[id_analiza]

-- Table [dbo].[AL_Analize_achizitii]
	-- Primary key column [dbo].[AL_Analize_achizitii].[id_analiza]

--.
--..
--..
--..
--..
--..
--..
--..
--..
--..
	-- Foreign key relationship [dbo].[AL_Analize_achizitii].[id_achizitie] from table ... to ...
	-- Foreign key relationship [dbo].[AL_Achizitii].[id_achizitie] from table ... to ...
--..
	-- Foreign key relationship [dbo].[AL_Analize_achizitii].[cod_indicator] from table ... to ...
	-- Foreign key relationship [dbo].[AL_Indicatori_analiza].[cod_indicator] from table ... to ...
--..
--..
	
		

END;

        GO


CREATE PROCEDURE AL_Centre_colectare_insert

AS
BEGIN
    SELECT
		D.[id_centru]
		,D.[cod_centru]
		,D.[denumire]
		,D.[cod_IBAN]
		,D.[banca]
		,D.[sat]
		,D.[comuna]
		,D.[cod_loc]
		,D.[cod_jud]
		,D.[cod_tara]
		,D.[responsabil]
		,D.[loc_munca]
		,D.[tip_pers]
		,D.[subunit]
		,D.[tert]
		,D.[cod_ruta]
		,D.[ord_ruta]
		,D.[data_operarii]
		,D.[operator]
		,D.[detalii]
    FROM [dbo].[AL_Centre_colectare] AS D
		LEFT JOIN [dbo].[AL_Centre_colectare] AS I ON 1 = 1
			 AND D.[id_centru] = I.[id_centru]

-- Table [dbo].[AL_Centre_colectare]
	-- Primary key column [dbo].[AL_Centre_colectare].[id_centru]

	--Ignore Foreign key relationship [dbo].[FK_AL_Lst_achiz_colect] from table [dbo].[AL_Liste_achizitii] to [dbo].[AL_Centre_colectare].[id_centru]
--.
--..
--..
--..
--..
--..
--..
--..
--..
--..
--..
--..
--..
--..
--..
--..
--..
--..
--..
--..
--..
--..
--..
	-- Foreign key relationship [dbo].[AL_Centre_colectare].[cod_loc] from table ... to ...
	-- Foreign key relationship [dbo].[Localitati].[cod_oras] from table ... to ...
--..
	-- Foreign key relationship [dbo].[AL_Centre_colectare].[cod_jud] from table ... to ...
	-- Foreign key relationship [dbo].[Judete].[cod_judet] from table ... to ...
--..
	-- Foreign key relationship [dbo].[AL_Centre_colectare].[cod_tara] from table ... to ...
	-- Foreign key relationship [dbo].[Tari].[cod_tara] from table ... to ...
--..
	-- Foreign key relationship [dbo].[AL_Centre_colectare].[loc_munca] from table ... to ...
	-- Foreign key relationship [dbo].[Lm].[Cod] from table ... to ...
--..
--..
--..
	-- Foreign key relationship [dbo].[AL_Centre_colectare].[cod_ruta] from table ... to ...
	-- Foreign key relationship [dbo].[rute].[codRuta] from table ... to ...
--..
	-- Foreign key relationship [dbo].[AL_Centre_colectare].[operator] from table ... to ...
	-- Foreign key relationship [dbo].[utilizatori].[ID] from table ... to ...
--..
--..
	-- Foreign key relationship [dbo].[AL_Centre_colectare].[subunit] from table ... to ...
	-- Foreign key relationship [dbo].[AL_Centre_colectare].[tert] from table ... to ...
	-- Foreign key relationship [dbo].[terti].[Subunitate] from table ... to ...
	-- Foreign key relationship [dbo].[terti].[Tert] from table ... to ...
--..
--..
	
		

END;

        GO


CREATE PROCEDURE AL_Corectii_pret_insert

AS
BEGIN
    SELECT
		D.[id_corectie]
		,D.[id_achizitie]
		,D.[corectie]
		,D.[tip_corectie]
		,D.[motiv]
    FROM [dbo].[AL_Corectii_pret] AS D
		LEFT JOIN [dbo].[AL_Corectii_pret] AS I ON 1 = 1
			 AND D.[id_corectie] = I.[id_corectie]

-- Table [dbo].[AL_Corectii_pret]
	-- Primary key column [dbo].[AL_Corectii_pret].[id_corectie]

--.
--..
--..
--..
--..
--..
--..
	
		

END;

        GO


CREATE PROCEDURE AL_Grila_bonus_cantitate_insert

AS
BEGIN
    SELECT
		D.[id_grila]
		,D.[id_grupa]
		,D.[perioada]
		,D.[id_tip_lapte]
		,D.[limita_inf]
		,D.[limita_sup]
    FROM [dbo].[AL_Grila_bonus_cantitate] AS D
		LEFT JOIN [dbo].[AL_Grila_bonus_cantitate] AS I ON 1 = 1
			 AND D.[id_grila] = I.[id_grila]

-- Table [dbo].[AL_Grila_bonus_cantitate]
	-- Primary key column [dbo].[AL_Grila_bonus_cantitate].[id_grila]

--.
--..
--..
--..
--..
--..
--..
--..
--..
	
		

END;

        GO


CREATE PROCEDURE AL_Grupe_producatori_insert

AS
BEGIN
    SELECT
		D.[id_grupa]
		,D.[denumire]
    FROM [dbo].[AL_Grupe_producatori] AS D
		LEFT JOIN [dbo].[AL_Grupe_producatori] AS I ON 1 = 1
			 AND D.[id_grupa] = I.[id_grupa]

-- Table [dbo].[AL_Grupe_producatori]
	-- Primary key column [dbo].[AL_Grupe_producatori].[id_grupa]

--.
--..
--..
--..
	
		

END;

        GO


CREATE PROCEDURE AL_Indicatori_analiza_insert

AS
BEGIN
    SELECT
		D.[cod_indicator]
		,D.[denumire]
    FROM [dbo].[AL_Indicatori_analiza] AS D
		LEFT JOIN [dbo].[AL_Indicatori_analiza] AS I ON 1 = 1
			 AND D.[cod_indicator] = I.[cod_indicator]

-- Table [dbo].[AL_Indicatori_analiza]
	-- Primary key column [dbo].[AL_Indicatori_analiza].[cod_indicator]

	--Ignore Foreign key relationship [dbo].[FK_AL_Analize_achiz_Indicatori_analiza] from table [dbo].[AL_Analize_achizitii] to [dbo].[AL_Indicatori_analiza].[cod_indicator]
	--Ignore Foreign key relationship [dbo].[FK_AL_Indic_analiza_Tip_lapte_Indic_analiza] from table [dbo].[AL_Indicatori_analiza_Tipuri_lapte] to [dbo].[AL_Indicatori_analiza].[cod_indicator]
--.
--..
--..
--..
	
		

END;

        GO


CREATE PROCEDURE AL_Indicatori_analiza_Tipuri_lapte_insert

AS
BEGIN
    SELECT
		D.[id_tip_lapte]
		,D.[cod_indicator]
		,D.[denumire]
		,D.[val_standard]
		,D.[coef_corectie_pret]
		,D.[ord_achizitii]
		,D.[ord_receptii]
    FROM [dbo].[AL_Indicatori_analiza_Tipuri_lapte] AS D
		LEFT JOIN [dbo].[AL_Indicatori_analiza_Tipuri_lapte] AS I ON 1 = 1
			 AND D.[id_tip_lapte] = I.[id_tip_lapte]

-- Table [dbo].[AL_Indicatori_analiza_Tipuri_lapte]

--.
--..
--..
--..
--..
--..
--..
--..
	-- Foreign key relationship [dbo].[AL_Indicatori_analiza_Tipuri_lapte].[id_tip_lapte] from table ... to ...
	-- Foreign key relationship [dbo].[AL_Tipuri_lapte].[id_tip_lapte] from table ... to ...
--..
	-- Foreign key relationship [dbo].[AL_Indicatori_analiza_Tipuri_lapte].[cod_indicator] from table ... to ...
	-- Foreign key relationship [dbo].[AL_Indicatori_analiza].[cod_indicator] from table ... to ...
--..
--..
	
		

END;

        GO


CREATE PROCEDURE AL_Liste_achizitii_insert

AS
BEGIN
    SELECT
		D.[id_lista]
		,D.[data_lunii]
		,D.[id_centru]
		,D.[id_tip_lapte]
		,D.[cod_centru]
		,D.[cod_lapte]
		,D.[tip_plata]
		,D.[cantitate]
		,D.[pret]
		,D.[data_operarii]
		,D.[operator]
    FROM [dbo].[AL_Liste_achizitii] AS D
		LEFT JOIN [dbo].[AL_Liste_achizitii] AS I ON 1 = 1
			 AND D.[id_lista] = I.[id_lista]

-- Table [dbo].[AL_Liste_achizitii]
	-- Primary key column [dbo].[AL_Liste_achizitii].[id_lista]

	--Ignore Foreign key relationship [dbo].[FK_AL_Achizitii_Liste_achizitie] from table [dbo].[AL_Achizitii] to [dbo].[AL_Liste_achizitii].[id_lista]
--.
--..
--..
--..
--..
--..
--..
--..
--..
--..
--..
--..
--..
--..
	-- Foreign key relationship [dbo].[AL_Liste_achizitii].[id_centru] from table ... to ...
	-- Foreign key relationship [dbo].[AL_Centre_colectare].[id_centru] from table ... to ...
--..
	-- Foreign key relationship [dbo].[AL_Liste_achizitii].[id_tip_lapte] from table ... to ...
	-- Foreign key relationship [dbo].[AL_Tipuri_lapte].[id_tip_lapte] from table ... to ...
--..
	-- Foreign key relationship [dbo].[AL_Liste_achizitii].[cod_lapte] from table ... to ...
	-- Foreign key relationship [dbo].[nomencl].[Cod] from table ... to ...
--..
--..
--..
	-- Foreign key relationship [dbo].[AL_Liste_achizitii].[operator] from table ... to ...
	-- Foreign key relationship [dbo].[utilizatori].[ID] from table ... to ...
--..
--..
	
		

END;

        GO


CREATE PROCEDURE AL_Producatori_insert

AS
BEGIN
    SELECT
		D.[id_prod]
		,D.[cod_prod]
		,D.[denumire]
		,D.[initiala_tata]
		,D.[CNP_CUI]
		,D.[serie_BI]
		,D.[nr_BI]
		,D.[elib_BI]
		,D.[cod_jud]
		,D.[cod_loc]
		,D.[cod_tara]
		,D.[comuna]
		,D.[sat]
		,D.[strada]
		,D.[nr_str]
		,D.[nr_casa]
		,D.[bloc]
		,D.[scara]
		,D.[etaj]
		,D.[ap]
		,D.[cod_exploatatie]
		,D.[cota_actuala]
		,D.[grad_actual]
		,D.[nr_contr]
		,D.[data_contr]
		,D.[valabil_contr]
		,D.[cant_contr]
		,D.[nr_vaci]
		,D.[grupa]
		,D.[pret]
		,D.[bonus]
		,D.[tip_pers]
		,D.[subunit]
		,D.[tert]
		,D.[reprezentant]
		,D.[CNP_repr]
		,D.[id_centru]
		,D.[loc_munca]
		,D.[DACL]
		,D.[tip_furnizor]
		,D.[cont_banca]
		,D.[banca]
		,D.[data_operarii]
		,D.[operator]
		,D.[detalii]
    FROM [dbo].[AL_Producatori] AS D
		LEFT JOIN [dbo].[AL_Producatori] AS I ON 1 = 1
			 AND D.[id_prod] = I.[id_prod]

-- Table [dbo].[AL_Producatori]
	-- Primary key column [dbo].[AL_Producatori].[id_prod]

	--Ignore Foreign key relationship [dbo].[FK_AL_Achizitii_Producatori] from table [dbo].[AL_Achizitii] to [dbo].[AL_Producatori].[id_prod]
--.
--..
--..
--..
--..
--..
--..
--..
--..
--..
--..
--..
--..
--..
--..
--..
--..
--..
--..
--..
--..
--..
--..
--..
--..
--..
--..
--..
--..
--..
--..
--..
--..
--..
--..
--..
--..
--..
--..
--..
--..
--..
--..
--..
--..
--..
--..
--..
	-- Foreign key relationship [dbo].[AL_Producatori].[cod_jud] from table ... to ...
	-- Foreign key relationship [dbo].[Judete].[cod_judet] from table ... to ...
--..
	-- Foreign key relationship [dbo].[AL_Producatori].[cod_loc] from table ... to ...
	-- Foreign key relationship [dbo].[Localitati].[cod_oras] from table ... to ...
--..
	-- Foreign key relationship [dbo].[AL_Producatori].[cod_tara] from table ... to ...
	-- Foreign key relationship [dbo].[Tari].[cod_tara] from table ... to ...
--..
--..
	-- Foreign key relationship [dbo].[AL_Producatori].[operator] from table ... to ...
	-- Foreign key relationship [dbo].[utilizatori].[ID] from table ... to ...
--..
	-- Foreign key relationship [dbo].[AL_Producatori].[subunit] from table ... to ...
	-- Foreign key relationship [dbo].[AL_Producatori].[tert] from table ... to ...
	-- Foreign key relationship [dbo].[terti].[Subunitate] from table ... to ...
	-- Foreign key relationship [dbo].[terti].[Tert] from table ... to ...
--..
--..
--..
	
		

END;

        GO


CREATE PROCEDURE AL_Tipuri_lapte_insert

AS
BEGIN
    SELECT
		D.[id_tip_lapte]
		,D.[cod_lapte]
		,D.[den_lapte]
		,D.[are_cota]
    FROM [dbo].[AL_Tipuri_lapte] AS D
		LEFT JOIN [dbo].[AL_Tipuri_lapte] AS I ON 1 = 1
			 AND D.[id_tip_lapte] = I.[id_tip_lapte]

-- Table [dbo].[AL_Tipuri_lapte]
	-- Primary key column [dbo].[AL_Tipuri_lapte].[id_tip_lapte]

	--Ignore Foreign key relationship [dbo].[FK_AL_Indic_analiza_Tip_lapte] from table [dbo].[AL_Indicatori_analiza_Tipuri_lapte] to [dbo].[AL_Tipuri_lapte].[id_tip_lapte]
	--Ignore Foreign key relationship [dbo].[FK_AL_Lst_achiz_Tip_lapte] from table [dbo].[AL_Liste_achizitii] to [dbo].[AL_Tipuri_lapte].[id_tip_lapte]
--.
--..
--..
--..
--..
--..
--..
	-- Foreign key relationship [dbo].[AL_Tipuri_lapte].[cod_lapte] from table ... to ...
	-- Foreign key relationship [dbo].[nomencl].[Cod] from table ... to ...
--..
--..
	
		

END;

        GO


-- End of auto generated code!