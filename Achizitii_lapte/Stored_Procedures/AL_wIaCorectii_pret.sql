CREATE PROCEDURE AL_wIaCorectii_pret

AS
BEGIN
	   /*Output Message AL_Corectii_pret (from GenerateMessage method).*/


    SELECT
		AL_Corectii_pret.id_corectie
		,AL_Corectii_pret.id_achizitie
		,AL_Corectii_pret.corectie
		,AL_Corectii_pret.tip_corectie
		,AL_Corectii_pret.motiv
    FROM dbo.AL_Corectii_pret

END;

        GO


