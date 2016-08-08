CREATE PROCEDURE AL_wIaAnalize_achizitii

AS
BEGIN
    SELECT
		AL_Analize_achizitii.id_analiza
		,AL_Analize_achizitii.id_achizitie
		,AL_Analize_achizitii.cod_indicator
		,AL_Analize_achizitii.rezultat
		,AL_Analize_achizitii.detalii
		,AL_Analize_achizitii.data_operarii
		,AL_Analize_achizitii.operator
		,AL_Achizitii.id_achizitie AS id_achizitie_AL_Achizitii
		,AL_Achizitii.id_lista AS id_lista
		,AL_Achizitii.id_prod AS id_prod
		,AL_Achizitii.cantitate AS cantitate
		,AL_Achizitii.pret AS pret
		,AL_Achizitii.data_operarii AS data_operarii_AL_Achizitii
		,AL_Achizitii.operator AS operator_AL_Achizitii
		,AL_Achizitii.detalii AS detalii_AL_Achizitii
		,AL_Indicatori_analiza.cod_indicator AS cod_indicator_AL_Indicatori_analiza
		,AL_Indicatori_analiza.denumire AS denumire
    FROM dbo.AL_Analize_achizitii
		LEFT JOIN dbo.AL_Achizitii ON
			 AL_Analize_achizitii.id_achizitie = AL_Achizitii.id_achizitie
		LEFT JOIN dbo.AL_Indicatori_analiza ON
			 AL_Analize_achizitii.cod_indicator = AL_Indicatori_analiza.cod_indicator

END;

        GO


