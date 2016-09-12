CREATE PROCEDURE AL_wIaCorectii_pret_achizitie

AS
BEGIN
	   /*Output Message AL_Corectii_pret_achizitie (from GenerateMessage method).*/


    SELECT
		AL_Corectii_pret_achizitie.id_corectie
		,AL_Corectii_pret_achizitie.id_achizitie
		,AL_Corectii_pret_achizitie.corectie
		,AL_Corectii_pret_achizitie.tip_corectie
		,AL_Corectii_pret_achizitie.motiv
    FROM dbo.AL_Corectii_pret_achizitie

END;

        GO


