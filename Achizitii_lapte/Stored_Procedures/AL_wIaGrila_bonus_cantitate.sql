CREATE PROCEDURE AL_wIaGrila_bonus_cantitate

AS
BEGIN

    SELECT
		AL_Grila_bonus_cantitate.id_grila
		,AL_Grila_bonus_cantitate.id_grupa
		,AL_Grila_bonus_cantitate.perioada
		,AL_Grila_bonus_cantitate.id_tip_lapte
		,AL_Grila_bonus_cantitate.limita_inf
		,AL_Grila_bonus_cantitate.limita_sup
		/*,col1 AS column -- (for AL_Grila_bonus_cantitate object)*/
 
    FROM dbo.AL_Grila_bonus_cantitate
		/*JOIN AnotherTable AS At -- (for AL_Grila_bonus_cantitate object)*/
	WHERE 1=1 
		/*AND <<logicalExpressionCondition>> -- (for AL_Grila_bonus_cantitate object).*/
	FOR XML RAW

END;

        GO


