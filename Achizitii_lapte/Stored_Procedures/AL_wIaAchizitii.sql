CREATE PROCEDURE AL_wIaAchizitii

AS
BEGIN

    SELECT
		AL_Achizitii.id_achizitie
		,AL_Achizitii.id_lista
		,AL_Achizitii.id_prod
		,AL_Achizitii.cantitate
		,AL_Achizitii.pret
		,AL_Achizitii.data_operarii
		,AL_Achizitii.operator
		,AL_Achizitii.detalii
		,AL_Achizitii.test
		,AL_Liste_achizitii.id_lista AS id_lista_AL_Liste_achizitii
		,AL_Liste_achizitii.data_lunii AS data_lunii
		,AL_Liste_achizitii.id_centru AS id_centru
		,AL_Liste_achizitii.id_tip_lapte AS id_tip_lapte
		,AL_Liste_achizitii.cod_centru AS cod_centru
		,AL_Liste_achizitii.cod_lapte AS cod_lapte
		,AL_Liste_achizitii.tip_plata AS tip_plata
		,AL_Liste_achizitii.cantitate AS cantitate_AL_Liste_achizitii
		,AL_Liste_achizitii.pret AS pret_AL_Liste_achizitii
		,AL_Liste_achizitii.data_operarii AS data_operarii_AL_Liste_achizitii
		,AL_Liste_achizitii.operator AS operator_AL_Liste_achizitii
		,AL_Producatori.id_prod AS id_prod_AL_Producatori
		,AL_Producatori.cod_prod AS cod_prod
		,AL_Producatori.denumire AS denumire
		,AL_Producatori.initiala_tata AS initiala_tata
		,AL_Producatori.CNP_CUI AS CNP_CUI
		,AL_Producatori.serie_BI AS serie_BI
		,AL_Producatori.nr_BI AS nr_BI
		,AL_Producatori.elib_BI AS elib_BI
		,AL_Producatori.cod_jud AS cod_jud
		,AL_Producatori.cod_loc AS cod_loc
		,AL_Producatori.cod_tara AS cod_tara
		,AL_Producatori.comuna AS comuna
		,AL_Producatori.sat AS sat
		,AL_Producatori.strada AS strada
		,AL_Producatori.nr_str AS nr_str
		,AL_Producatori.nr_casa AS nr_casa
		,AL_Producatori.bloc AS bloc
		,AL_Producatori.scara AS scara
		,AL_Producatori.etaj AS etaj
		,AL_Producatori.ap AS ap
		,AL_Producatori.cod_exploatatie AS cod_exploatatie
		,AL_Producatori.cota_actuala AS cota_actuala
		,AL_Producatori.grad_actual AS grad_actual
		,AL_Producatori.nr_contr AS nr_contr
		,AL_Producatori.data_contr AS data_contr
		,AL_Producatori.valabil_contr AS valabil_contr
		,AL_Producatori.cant_contr AS cant_contr
		,AL_Producatori.nr_vaci AS nr_vaci
		,AL_Producatori.grupa AS grupa
		,AL_Producatori.pret AS pret_AL_Producatori
		,AL_Producatori.bonus AS bonus
		,AL_Producatori.tip_pers AS tip_pers
		,AL_Producatori.subunit AS subunit
		,AL_Producatori.tert AS tert
		,AL_Producatori.reprezentant AS reprezentant
		,AL_Producatori.CNP_repr AS CNP_repr
		,AL_Producatori.id_centru AS id_centru_AL_Producatori
		,AL_Producatori.loc_munca AS loc_munca
		,AL_Producatori.DACL AS DACL
		,AL_Producatori.tip_furnizor AS tip_furnizor
		,AL_Producatori.cont_banca AS cont_banca
		,AL_Producatori.banca AS banca
		,AL_Producatori.data_operarii AS data_operarii_AL_Producatori
		,AL_Producatori.operator AS operator_AL_Producatori
		,AL_Producatori.detalii AS detalii_AL_Producatori
		/*,col1 AS column -- (for AL_Achizitii object)*/
 
    FROM dbo.AL_Achizitii
		LEFT JOIN dbo.AL_Liste_achizitii ON
			 AL_Achizitii.id_lista = AL_Liste_achizitii.id_lista
		LEFT JOIN dbo.AL_Producatori ON
			 AL_Achizitii.id_prod = AL_Producatori.id_prod
		/*JOIN AnotherTable AS At -- (for AL_Achizitii object)*/
	WHERE 1=1 
		/*AND <<logicalExpressionCondition>> -- (for AL_Achizitii object).*/
	FOR XML RAW

END;

        GO


