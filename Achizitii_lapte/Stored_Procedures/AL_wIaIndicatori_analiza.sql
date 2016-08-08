CREATE PROCEDURE AL_wIaIndicatori_analiza

AS
BEGIN
    SELECT
		AL_Indicatori_analiza.cod_indicator
		,AL_Indicatori_analiza.denumire
    FROM dbo.AL_Indicatori_analiza

END;

        GO


