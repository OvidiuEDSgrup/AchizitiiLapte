CREATE PROCEDURE AL_wIaIndicatori_analiza

AS
BEGIN

    SELECT
		AL_Indicatori_analiza.cod_indicator
		,AL_Indicatori_analiza.denumire
		/*,col1 AS column -- (for AL_Indicatori_analiza object)*/
 
    FROM dbo.AL_Indicatori_analiza
		/*JOIN AnotherTable AS At -- (for AL_Indicatori_analiza object)*/
	WHERE 1=1 
		/*AND <<logicalExpressionCondition>> -- (for AL_Indicatori_analiza object).*/
	FOR XML RAW

END;

        GO


