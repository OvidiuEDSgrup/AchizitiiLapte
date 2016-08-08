CREATE PROCEDURE AL_wIaProducatori

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
	-- Foreign key relationship cod_jud [dbo].[Judete].cod_judet
--..
	-- Foreign key relationship cod_loc [dbo].[Localitati].cod_oras
--..
	-- Foreign key relationship cod_tara [dbo].[Tari].cod_tara
--..
	-- Foreign key relationship operator [dbo].[utilizatori].ID
--..
	-- Foreign key relationship subunit [dbo].[terti].Subunitate
	-- Foreign key relationship tert [dbo].[terti].Tert
--..
	
		

END;

        GO


