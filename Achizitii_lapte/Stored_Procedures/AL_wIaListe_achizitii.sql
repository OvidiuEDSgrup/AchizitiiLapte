CREATE PROCEDURE AL_wIaListe_achizitii

AS
BEGIN
    SELECT
		AL_Liste_achizitii.id_lista
		,AL_Liste_achizitii.data_lunii
		,AL_Liste_achizitii.id_centru
		,AL_Liste_achizitii.id_tip_lapte
		,AL_Liste_achizitii.cod_centru
		,AL_Liste_achizitii.cod_lapte
		,AL_Liste_achizitii.tip_plata
		,AL_Liste_achizitii.cantitate
		,AL_Liste_achizitii.pret
		,AL_Liste_achizitii.data_operarii
		,AL_Liste_achizitii.operator
		,AL_Centre_colectare.id_centru AS id_centru_AL_Centre_colectare
		,AL_Centre_colectare.cod_centru AS cod_centru_AL_Centre_colectare
		,AL_Centre_colectare.denumire AS denumire
		,AL_Centre_colectare.cod_IBAN AS cod_IBAN
		,AL_Centre_colectare.banca AS banca
		,AL_Centre_colectare.sat AS sat
		,AL_Centre_colectare.comuna AS comuna
		,AL_Centre_colectare.cod_loc AS cod_loc
		,AL_Centre_colectare.cod_jud AS cod_jud
		,AL_Centre_colectare.cod_tara AS cod_tara
		,AL_Centre_colectare.responsabil AS responsabil
		,AL_Centre_colectare.loc_munca AS loc_munca
		,AL_Centre_colectare.tip_pers AS tip_pers
		,AL_Centre_colectare.subunit AS subunit
		,AL_Centre_colectare.tert AS tert
		,AL_Centre_colectare.cod_ruta AS cod_ruta
		,AL_Centre_colectare.ord_ruta AS ord_ruta
		,AL_Centre_colectare.data_operarii AS data_operarii_AL_Centre_colectare
		,AL_Centre_colectare.operator AS operator_AL_Centre_colectare
		,AL_Centre_colectare.detalii AS detalii
		,AL_Tipuri_lapte.id_tip_lapte AS id_tip_lapte_AL_Tipuri_lapte
		,AL_Tipuri_lapte.cod_lapte AS cod_lapte_AL_Tipuri_lapte
		,AL_Tipuri_lapte.den_lapte AS den_lapte
		,AL_Tipuri_lapte.are_cota AS are_cota
		,nomencl.Cod AS Cod
		,nomencl.Tip AS Tip
		,nomencl.Denumire AS Denumire_nomencl
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
		,nomencl.detalii AS detalii_nomencl
		,utilizatori.ID AS ID
		,utilizatori.Nume AS Nume
		,utilizatori.Parola AS Parola
		,utilizatori.Info AS Info
		,utilizatori.Categoria AS Categoria
		,utilizatori.Jurnal AS Jurnal
		,utilizatori.Marca AS Marca
		,utilizatori.Observatii AS Observatii
    FROM dbo.AL_Liste_achizitii
		LEFT JOIN dbo.AL_Centre_colectare ON
			 AL_Liste_achizitii.id_centru = AL_Centre_colectare.id_centru
		LEFT JOIN dbo.AL_Tipuri_lapte ON
			 AL_Liste_achizitii.id_tip_lapte = AL_Tipuri_lapte.id_tip_lapte
		LEFT JOIN dbo.nomencl ON
			 AL_Liste_achizitii.cod_lapte = nomencl.Cod
		LEFT JOIN dbo.utilizatori ON
			 AL_Liste_achizitii.operator = utilizatori.ID

END;

        GO


