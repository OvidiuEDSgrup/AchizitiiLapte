CREATE PROCEDURE AL_wIaGrupe_producatori

AS
BEGIN

    SELECT
		AL_Grupe_producatori.id_grupa
		,AL_Grupe_producatori.denumire
		/*,col1 AS column -- (for AL_Grupe_producatori object)*/
 
    FROM dbo.AL_Grupe_producatori
		/*JOIN AnotherTable AS At -- (for AL_Grupe_producatori object)*/
	WHERE 1=1 
		/*AND <<logicalExpressionCondition>> -- (for AL_Grupe_producatori object).*/
	FOR XML RAW

END;

        GO


