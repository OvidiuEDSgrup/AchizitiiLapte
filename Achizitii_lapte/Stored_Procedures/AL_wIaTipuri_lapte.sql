CREATE PROCEDURE AL_wIaTipuri_lapte

AS
BEGIN

    SELECT
		AL_Tipuri_lapte.id_tip_lapte
		,AL_Tipuri_lapte.cod_lapte
		,AL_Tipuri_lapte.den_lapte
		,AL_Tipuri_lapte.are_cota
		,nomencl.Cod AS Cod
		,nomencl.Tip AS Tip
		,nomencl.Denumire AS Denumire
		,nomencl.UM AS UM
		,nomencl.UM_1 AS UM_1
		,nomencl.Coeficient_conversie_1 AS Coeficient_conversie_1
		,nomencl.UM_2 AS UM_2
		,nomencl.Coeficient_conversie_2 AS Coeficient_conversie_2
		,nomencl.Cont AS Cont
		,nomencl.Grupa AS Grupa
		,nomencl.Valuta AS Valuta
		,nomencl.Pret_in_valuta AS Pret_in_valuta
		,nomencl.Pret_stoc AS Pret_stoc
		,nomencl.Pret_vanzare AS Pret_vanzare
		,nomencl.Pret_cu_amanuntul AS Pret_cu_amanuntul
		,nomencl.Cota_TVA AS Cota_TVA
		,nomencl.Stoc_limita AS Stoc_limita
		,nomencl.Stoc AS Stoc
		,nomencl.Greutate_specifica AS Greutate_specifica
		,nomencl.Furnizor AS Furnizor
		,nomencl.Loc_de_munca AS Loc_de_munca
		,nomencl.Gestiune AS Gestiune
		,nomencl.Categorie AS Categorie
		,nomencl.Tip_echipament AS Tip_echipament
		,nomencl.detalii AS detalii
		/*,col1 AS column -- (for AL_Tipuri_lapte object)*/
 
    FROM dbo.AL_Tipuri_lapte
		LEFT JOIN dbo.nomencl ON
			 AL_Tipuri_lapte.cod_lapte = nomencl.Cod
		/*JOIN AnotherTable AS At -- (for AL_Tipuri_lapte object)*/
	WHERE 1=1 
		/*AND <<logicalExpressionCondition>> -- (for AL_Tipuri_lapte object).*/
	FOR XML RAW

END;

        GO


