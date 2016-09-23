CREATE PROCEDURE AL_wIaIndicatori_analiza_Tipuri_lapte

AS
BEGIN

    SELECT
		AL_Indicatori_analiza_Tipuri_lapte.id_tip_lapte
		,AL_Indicatori_analiza_Tipuri_lapte.cod_indicator
		,AL_Indicatori_analiza_Tipuri_lapte.denumire
		,AL_Indicatori_analiza_Tipuri_lapte.val_standard
		,AL_Indicatori_analiza_Tipuri_lapte.coef_corectie_pret
		,AL_Indicatori_analiza_Tipuri_lapte.ord_achizitii
		,AL_Indicatori_analiza_Tipuri_lapte.ord_receptii
		,AL_Tipuri_lapte.id_tip_lapte AS id_tip_lapte_AL_Tipuri_lapte
		,AL_Tipuri_lapte.cod_lapte AS cod_lapte
		,AL_Tipuri_lapte.den_lapte AS den_lapte
		,AL_Tipuri_lapte.are_cota AS are_cota
		,AL_Indicatori_analiza.cod_indicator AS cod_indicator_AL_Indicatori_analiza
		,AL_Indicatori_analiza.denumire AS denumire_AL_Indicatori_analiza
		/*,col1 AS column -- (for AL_Indicatori_analiza_Tipuri_lapte object)*/
 
    FROM dbo.AL_Indicatori_analiza_Tipuri_lapte
		LEFT JOIN dbo.AL_Tipuri_lapte ON
			 AL_Indicatori_analiza_Tipuri_lapte.id_tip_lapte = AL_Tipuri_lapte.id_tip_lapte
		LEFT JOIN dbo.AL_Indicatori_analiza ON
			 AL_Indicatori_analiza_Tipuri_lapte.cod_indicator = AL_Indicatori_analiza.cod_indicator
		/*JOIN AnotherTable AS At -- (for AL_Indicatori_analiza_Tipuri_lapte object)*/
	WHERE 1=1 
		/*AND <<logicalExpressionCondition>> -- (for AL_Indicatori_analiza_Tipuri_lapte object).*/
	FOR XML RAW

END;

        GO


