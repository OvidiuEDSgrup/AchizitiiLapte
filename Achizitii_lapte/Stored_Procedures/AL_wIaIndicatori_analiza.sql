CREATE PROCEDURE AL_wIaIndicatori_analiza

AS
BEGIN
	   /*Output Message AL_Indicatori_analiza (from GenerateMessage method).*/


    SELECT
		AL_Indicatori_analiza.cod_indicator
		,AL_Indicatori_analiza.denumire
    FROM dbo.AL_Indicatori_analiza

END;

        GO


