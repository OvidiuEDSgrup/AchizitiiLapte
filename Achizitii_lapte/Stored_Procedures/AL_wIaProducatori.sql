CREATE PROCEDURE AL_wIaProducatori

AS
BEGIN
    SELECT
		AL_Producatori.id_prod
		,AL_Producatori.cod_prod
		,AL_Producatori.denumire
		,AL_Producatori.initiala_tata
		,AL_Producatori.CNP_CUI
		,AL_Producatori.serie_BI
		,AL_Producatori.nr_BI
		,AL_Producatori.elib_BI
		,AL_Producatori.cod_jud
		,AL_Producatori.cod_loc
		,AL_Producatori.cod_tara
		,AL_Producatori.comuna
		,AL_Producatori.sat
		,AL_Producatori.strada
		,AL_Producatori.nr_str
		,AL_Producatori.nr_casa
		,AL_Producatori.bloc
		,AL_Producatori.scara
		,AL_Producatori.etaj
		,AL_Producatori.ap
		,AL_Producatori.cod_exploatatie
		,AL_Producatori.cota_actuala
		,AL_Producatori.grad_actual
		,AL_Producatori.nr_contr
		,AL_Producatori.data_contr
		,AL_Producatori.valabil_contr
		,AL_Producatori.cant_contr
		,AL_Producatori.nr_vaci
		,AL_Producatori.grupa
		,AL_Producatori.pret
		,AL_Producatori.bonus
		,AL_Producatori.tip_pers
		,AL_Producatori.subunit
		,AL_Producatori.tert
		,AL_Producatori.reprezentant
		,AL_Producatori.CNP_repr
		,AL_Producatori.id_centru
		,AL_Producatori.loc_munca
		,AL_Producatori.DACL
		,AL_Producatori.tip_furnizor
		,AL_Producatori.cont_banca
		,AL_Producatori.banca
		,AL_Producatori.data_operarii
		,AL_Producatori.operator
		,AL_Producatori.detalii
		,Judete.cod_judet AS cod_judet
		,Judete.denumire AS denumire_Judete
		,Judete.prefix_telefonic AS prefix_telefonic
		,Judete.resedinta AS resedinta
		,Localitati.cod_oras AS cod_oras
		,Localitati.cod_judet AS cod_judet_Localitati
		,Localitati.tip_oras AS tip_oras
		,Localitati.oras AS oras
		,Localitati.cod_postal AS cod_postal
		,Localitati.extern AS extern
		,Tari.cod_tara AS cod_tara_Tari
		,Tari.denumire AS denumire_Tari
		,Tari.prefix_telefonic AS prefix_telefonic_Tari
		,Tari.Teritoriu AS Teritoriu
		,Tari.Val1 AS Val1
		,Tari.Data AS Data
		,Tari.Detalii AS Detalii_Tari
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
		,terti.Grupa AS Grupa_terti
		,terti.Cont_ca_furnizor AS Cont_ca_furnizor
		,terti.Cont_ca_beneficiar AS Cont_ca_beneficiar
		,terti.Sold_ca_furnizor AS Sold_ca_furnizor
		,terti.Sold_ca_beneficiar AS Sold_ca_beneficiar
		,terti.Sold_maxim_ca_beneficiar AS Sold_maxim_ca_beneficiar
		,terti.Disccount_acordat AS Disccount_acordat
		,terti.detalii AS detalii_terti
		,utilizatori.ID AS ID
		,utilizatori.Nume AS Nume
		,utilizatori.Parola AS Parola
		,utilizatori.Info AS Info
		,utilizatori.Categoria AS Categoria
		,utilizatori.Jurnal AS Jurnal
		,utilizatori.Marca AS Marca
		,utilizatori.Observatii AS Observatii
    FROM dbo.AL_Producatori
		LEFT JOIN dbo.Judete ON
			 AL_Producatori.cod_jud = Judete.cod_judet
		LEFT JOIN dbo.Localitati ON
			 AL_Producatori.cod_loc = Localitati.cod_oras
		LEFT JOIN dbo.Tari ON
			 AL_Producatori.cod_tara = Tari.cod_tara
		LEFT JOIN dbo.terti ON
			 AL_Producatori.subunit = terti.Subunitate
			AND AL_Producatori.tert = terti.Tert
		LEFT JOIN dbo.utilizatori ON
			 AL_Producatori.operator = utilizatori.ID

END;

        GO


