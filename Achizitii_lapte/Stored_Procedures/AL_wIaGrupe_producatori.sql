CREATE PROCEDURE AL_wIaGrupe_producatori

AS
BEGIN
	   /*Output Message AL_Grupe_producatori (from GenerateMessage method).*/


    SELECT
		AL_Grupe_producatori.id_grupa
		,AL_Grupe_producatori.denumire
    FROM dbo.AL_Grupe_producatori

END;

        GO


