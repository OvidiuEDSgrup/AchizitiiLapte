CREATE PROCEDURE AL_wIaCorectii_pret_achizitie

AS
BEGIN

    SELECT
		AL_Corectii_pret_achizitie.id_corectie
		,AL_Corectii_pret_achizitie.id_achizitie
		,AL_Corectii_pret_achizitie.corectie
		,AL_Corectii_pret_achizitie.tip_corectie
		,AL_Corectii_pret_achizitie.motiv
		/*,col1 AS column -- (for AL_Corectii_pret_achizitie object)*/
 
    FROM dbo.AL_Corectii_pret_achizitie
		/*JOIN AnotherTable AS At -- (for AL_Corectii_pret_achizitie object)*/
	WHERE 1=1 
		/*AND <<logicalExpressionCondition>> -- (for AL_Corectii_pret_achizitie object).*/
	FOR XML RAW

END;

        GO


