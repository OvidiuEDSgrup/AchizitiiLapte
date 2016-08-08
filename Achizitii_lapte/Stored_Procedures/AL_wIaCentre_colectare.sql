CREATE PROCEDURE AL_wIaCentre_colectare

AS
BEGIN
    SELECT
		AL_Centre_colectare.id_centru
		,AL_Centre_colectare.cod_centru
		,AL_Centre_colectare.denumire
		,AL_Centre_colectare.cod_IBAN
		,AL_Centre_colectare.banca
		,AL_Centre_colectare.sat
		,AL_Centre_colectare.comuna
		,AL_Centre_colectare.cod_loc
		,AL_Centre_colectare.cod_jud
		,AL_Centre_colectare.cod_tara
		,AL_Centre_colectare.responsabil
		,AL_Centre_colectare.loc_munca
		,AL_Centre_colectare.tip_pers
		,AL_Centre_colectare.subunit
		,AL_Centre_colectare.tert
		,AL_Centre_colectare.cod_ruta
		,AL_Centre_colectare.ord_ruta
		,AL_Centre_colectare.data_operarii
		,AL_Centre_colectare.operator
		,AL_Centre_colectare.detalii
		,Localitati.cod_oras AS cod_oras
		,Localitati.cod_judet AS cod_judet
		,Localitati.tip_oras AS tip_oras
		,Localitati.oras AS oras
		,Localitati.cod_postal AS cod_postal
		,Localitati.extern AS extern
		,Judete.cod_judet AS cod_judet_Judete
		,Judete.denumire AS denumire_Judete
		,Judete.prefix_telefonic AS prefix_telefonic
		,Judete.resedinta AS resedinta
		,Tari.cod_tara AS cod_tara_Tari
		,Tari.denumire AS denumire_Tari
		,Tari.prefix_telefonic AS prefix_telefonic_Tari
		,Tari.Teritoriu AS Teritoriu
		,Tari.Val1 AS Val1
		,Tari.Data AS Data
		,Tari.Detalii AS Detalii_Tari
		,Lm.Nivel AS Nivel
		,Lm.Cod AS Cod
		,Lm.Cod_parinte AS Cod_parinte
		,Lm.Denumire AS Denumire_Lm
		,rute.codRuta AS codRuta
		,rute.denumire AS denumire_rute
		,rute.descriere AS descriere
		,rute.detalii AS detalii_rute
		,utilizatori.ID AS ID
		,utilizatori.Nume AS Nume
		,utilizatori.Parola AS Parola
		,utilizatori.Info AS Info
		,utilizatori.Categoria AS Categoria
		,utilizatori.Jurnal AS Jurnal
		,utilizatori.Marca AS Marca
		,utilizatori.Observatii AS Observatii
		,terti.Subunitate AS Subunitate
		,terti.Tert AS Tert_terti
		,terti.Denumire AS Denumire_terti
		,terti.Cod_fiscal AS Cod_fiscal
		,terti.Localitate AS Localitate
		,terti.Judet AS Judet
		,terti.Adresa AS Adresa
		,terti.Telefon_fax AS Telefon_fax
		,terti.Banca AS Banca_terti
		,terti.Cont_in_banca AS Cont_in_banca
		,terti.Tert_extern AS Tert_extern
		,terti.Grupa AS Grupa
		,terti.Cont_ca_furnizor AS Cont_ca_furnizor
		,terti.Cont_ca_beneficiar AS Cont_ca_beneficiar
		,terti.Sold_ca_furnizor AS Sold_ca_furnizor
		,terti.Sold_ca_beneficiar AS Sold_ca_beneficiar
		,terti.Sold_maxim_ca_beneficiar AS Sold_maxim_ca_beneficiar
		,terti.Disccount_acordat AS Disccount_acordat
		,terti.detalii AS detalii_terti
    FROM dbo.AL_Centre_colectare
		LEFT JOIN dbo.Localitati ON
			 AL_Centre_colectare.cod_loc = Localitati.cod_oras
		LEFT JOIN dbo.Judete ON
			 AL_Centre_colectare.cod_jud = Judete.cod_judet
		LEFT JOIN dbo.Tari ON
			 AL_Centre_colectare.cod_tara = Tari.cod_tara
		LEFT JOIN dbo.Lm ON
			 AL_Centre_colectare.loc_munca = Lm.Cod
		LEFT JOIN dbo.rute ON
			 AL_Centre_colectare.cod_ruta = rute.codRuta
		LEFT JOIN dbo.utilizatori ON
			 AL_Centre_colectare.operator = utilizatori.ID
		LEFT JOIN dbo.terti ON
			 AL_Centre_colectare.subunit = terti.Subunitate
			AND AL_Centre_colectare.tert = terti.Tert

END;

        GO


