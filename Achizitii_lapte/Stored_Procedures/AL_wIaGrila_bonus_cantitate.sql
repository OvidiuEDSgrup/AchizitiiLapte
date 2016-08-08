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
    FROM dbo.AL_Grila_bonus_cantitate

END;

        GO


