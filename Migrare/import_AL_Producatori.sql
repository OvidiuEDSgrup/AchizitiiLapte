--IF EXISTS (SELECT TOP (1) 1 FROM ProdLapte C WHERE C.Utilizator = '')
--	UPDATE ProdLapte SET Utilizator = 'IMPL'

IF EXISTS (SELECT TOP (1) 1 FROM ProdLapte C LEFT JOIN UTILIZATORI U ON U.ID = C.Utilizator WHERE U.ID IS NULL)
	WITH Utilizatori_lipsa AS (	
		SELECT C.Utilizator AS id, C.Utilizator AS nume, LOWER(C.Utilizator) AS parola, '.\' AS info,
			nr_aparitie = ROW_NUMBER() OVER(PARTITION BY C.Utilizator ORDER BY C.Utilizator DESC)
		FROM ProdLapte C --LEFT JOIN (VALUES ('IMPL','IMPL','impl','.\IMPL')) A(id, nume, parola, info) ON RTRIM(C.Utilizator) = ''
			LEFT JOIN UTILIZATORI U ON U.ID = C.Utilizator 
		WHERE C.Utilizator <> '' AND U.ID IS NULL 
		) 
	INSERT INTO Utilizatori (ID, Nume, Parola, Info, Categoria, Jurnal, Marca, Observatii)
	SELECT U.id, U.nume, U.parola, U.info, '', '', '', ''
	FROM Utilizatori_lipsa U WHERE U.nr_aparitie = 1

IF EXISTS (SELECT * FROM ProdLapte C LEFT JOIN Terti T ON T.Tert = C.Tert AND T.Subunitate = '1' WHERE T.Tert IS NULL)
	WITH Terti_lipsa AS (	
		SELECT RTRIM(C.Tert) AS cod, RTRIM(C.Tert)+' IMPL' AS den,
			nr_aparitie = ROW_NUMBER() OVER(PARTITION BY C.Tert ORDER BY C.Tert DESC)
		FROM ProdLapte C 
			LEFT JOIN Terti T ON T.Tert = C.Tert AND T.Subunitate = '1' 
		WHERE C.tert <> '' AND T.tert IS NULL
		) 
	INSERT INTO Terti (Subunitate, Tert, Denumire, Cod_fiscal, Localitate, Judet, Adresa, Telefon_fax, Banca, Cont_in_banca, Tert_extern, Grupa, Cont_ca_furnizor, Cont_ca_beneficiar, 
		Sold_ca_furnizor, Sold_ca_beneficiar, Sold_maxim_ca_beneficiar, Disccount_acordat, detalii)
	SELECT '1' AS Subunitate, T.cod AS Tert, T.den AS Denumire, '' AS Cod_fiscal, '' AS Localitate, '' AS Judet, '' AS Adresa, '' AS Telefon_fax, '' AS Banca, '' AS Cont_in_banca, '' AS Tert_extern, '' AS Grupa, '' AS Cont_ca_furnizor, '' AS Cont_ca_beneficiar, 
		'' AS Sold_ca_furnizor, '' AS Sold_ca_beneficiar, '' AS Sold_maxim_ca_beneficiar, '' AS Disccount_acordat, NULL AS detalii
	FROM Terti_lipsa T WHERE T.nr_aparitie = 1

IF EXISTS (SELECT * FROM ProdLapte C LEFT JOIN Lm L ON L.cod = C.Loc_de_munca WHERE C.Loc_de_munca <> '' AND L.Cod IS NULL)
	WITH Lm_lipsa AS (	
		SELECT RTRIM(C.Loc_de_munca) AS cod, RTRIM(C.Loc_de_munca)+' IMPL' AS den,
			nr_aparitie = ROW_NUMBER() OVER(PARTITION BY C.loc_de_munca ORDER BY C.loc_de_munca DESC)
		FROM ProdLapte C 
			LEFT JOIN Lm L ON L.Cod = C.Loc_de_munca 
		WHERE C.Loc_de_munca <> '' AND L.Cod IS NULL
		) 
	INSERT INTO Lm (Nivel, Cod, Cod_parinte, Denumire, detalii)
	SELECT ISNULL(S.Nivel,1) AS Nivel, L.cod AS Cod, '' AS Cod_parinte, L.den AS Denumire, NULL AS detalii
	FROM Lm_lipsa L LEFT JOIN Strlm S ON S.Lungime = LEN(L.cod)
	WHERE L.nr_aparitie = 1

IF EXISTS (SELECT * FROM ProdLapte P LEFT JOIN AL_Centre_colectare C ON C.Cod_centru_colectare = P.Centru_colectare WHERE P.Centru_colectare <> '' AND C.Cod_centru_colectare IS NULL)
	WITH Centre_lipsa AS (	
		SELECT RTRIM(P.Ruta) AS cod, RTRIM(P.Ruta)+' IMPL' AS den,
			nr_aparitie = ROW_NUMBER() OVER(PARTITION BY P.ruta ORDER BY P.ruta DESC)
		FROM ProdLapte C 
			LEFT JOIN Rute R ON R.codRuta = P.Ruta 
		WHERE P.Ruta <> '' AND R.codRuta IS NULL
		) 
	INSERT INTO Rute (codRuta, denumire, descriere, detalii)
	SELECT R.cod AS Cod, R.den AS Denumire, R.den AS descriere, NULL AS detalii
	FROM Rute_lipsa R 
	WHERE R.nr_aparitie = 1

DELETE AL_Producatori 
DBCC CHECKIDENT(AL_Producatori, reseed, 0)
INSERT INTO AL_Producatori 
	(cod_prod,denumire,initiala_tata,CNP_CUI,serie_BI,nr_BI,elib_BI,cod_jud,cod_loc,cod_tara,comuna,sat,strada,nr_str,nr_casa,bloc,scara,etaj,ap,cod_exploatatie,cota_actuala,grad_actual,nr_contr,data_contr,valabil_contr,cant_contr,nr_vaci,grupa,pret,bonus,tip_pers,subunit,tert,reprezentant,CNP_repr,id_centru,centru_colectare,loc_munca,DACL,tip_furnizor,cont_banca,banca,data_operarii,operator,detalii)
SELECT 
p.id_prod AS id_prod, -- int	4	10   
p.cod_prod AS cod_prod, -- varchar	36	     
p.denumire AS denumire, -- varchar	50	     
p.initiala_tata AS initiala_tata, -- char	1	     
p.CNP_CUI AS CNP_CUI, -- varchar	15	     
p.serie_BI AS serie_BI, -- char	2	     
p.nr_BI AS nr_BI, -- char	7	     
p.elib_BI AS elib_BI, -- varchar	20	     
p.cod_jud AS cod_jud, -- varchar	3	     
p.cod_loc AS cod_loc, -- varchar	8	     
p.cod_tara AS cod_tara, -- varchar	3	     
p.comuna AS comuna, -- varchar	30	     
p.sat AS sat, -- varchar	30	     
p.strada AS strada, -- varchar	30	     
p.nr_str AS nr_str, -- varchar	5	     
p.nr_casa AS nr_casa, -- varchar	10	     
p.bloc AS bloc, -- varchar	10	     
p.scara AS scara, -- varchar	10	     
p.etaj AS etaj, -- varchar	10	     
p.ap AS ap, -- varchar	5	     
p.cod_exploatatie AS cod_exploatatie, -- varchar	15	     
p.cota_actuala AS cota_actuala, -- decimal	9	12   
p.grad_actual AS grad_actual, -- decimal	5	7    
p.nr_contr AS nr_contr, -- varchar	20	     
p.data_contr AS data_contr, -- datetime2	6	19   
p.valabil_contr AS valabil_contr, -- datetime2	6	19   
p.cant_contr AS cant_contr, -- decimal	9	12   
p.nr_vaci AS nr_vaci, -- smallint	2	5    
p.grupa AS grupa, -- char	1	     
p.pret AS pret, -- decimal	9	12   
p.bonus AS bonus, -- tinyint	1	3    
p.tip_pers AS tip_pers, -- char	1	     
p.subunit AS subunit, -- varchar	9	     
p.tert AS tert, -- varchar	13	     
p.reprezentant AS reprezentant, -- varchar	30	     
p.CNP_repr AS CNP_repr, -- varchar	13	     
p.id_centru AS id_centru, -- int	4	10   
p.centru_colectare AS centru_colectare, -- varchar	9	     
p.loc_munca AS loc_munca, -- varchar	9	     
p.DACL AS DACL, -- tinyint	1	3    
p.tip_furnizor AS tip_furnizor, -- char	1	     
p.cont_banca AS cont_banca, -- varchar	35	     
p.banca AS banca, -- varchar	20	     
p.data_operarii AS data_operarii, -- datetime2	7	23   
p.operator AS operator, -- varchar	10	     
p.detalii AS detalii -- xml	-1	     
--cod_centru_colectare = c.cod_centru_colectare, --	varchar	36
--denumire = c.denumire, --	varchar	50
--cod_IBAN = c.cod_IBAN, --	varchar	30
--banca = c.banca, --	varchar	20
--sat = c.sat, --	varchar	30
--comuna = c.comuna, --	varchar	30
--cod_loc = L.cod_oras, --	varchar	8
--cod_judet = j.cod_judet, --	varchar	3
--cod_tara = T.cod_tara, --	varchar	3
--responsabil = c.responsabil, --	varchar	30
--loc_de_munca = NULLIF(c.loc_de_munca,''), --	varchar	9
--tip_pers = (CASE c.tip_pers WHEN '' THEN 'F' ELSE c.Tip_pers END), --	char	1
--subunit = '1', --	varchar	9
--tert = NULLIF(c.tert, ''), --	varchar	13
--cod_ruta = NULLIF(c.ruta, ''), --	varchar	20
--ord_ruta = c.ord_ruta, --	smallint	2
--data_operarii = c.data_operarii, --	datetime2	7
--operator = NULLIF(c.Utilizator,''), --	varchar	10
--detalii = (SELECT NULLIF(RTRIM(C.localitate),'') AS loc, NULLIF(RTRIM(C.judet), '') AS jud, NULLIF(RTRIM(C.Ruta),'') AS ruta FOR XML RAW, TYPE)
FROM ProdLapte AS P 	
	OUTER APPLY (SELECT TOP (1) L.cod_oras, L.cod_judet FROM Localitati L WHERE L.cod_oras=P.Localitate OR L.oras LIKE RTRIM(P.Localitate)+'%' 
		ORDER BY (CASE WHEN L.cod_oras=P.Localitate THEN 0 ELSE 1 END)) AS L
	OUTER APPLY (SELECT TOP (1) cod_judet FROM Judete J WHERE j.cod_judet=P.Judet OR L.cod_judet=J.cod_judet OR j.denumire LIKE RTRIM(P.Judet)+'%' OR P.Judet LIKE RTRIM(J.denumire)+'%'
		ORDER BY (CASE WHEN J.cod_judet=P.Judet OR L.cod_judet=J.cod_judet THEN 0 ELSE 1 END)) AS J
	OUTER APPLY (SELECT TOP (1) cod_tara FROM Tari T WHERE T.cod_tara=P.Judet OR T.denumire LIKE RTRIM(P.Judet)+'%' 
		ORDER BY (CASE WHEN T.cod_tara=P.Judet THEN 0 ELSE 1 END)) AS T
	LEFT JOIN Utilizatori U ON U.ID = P.Utilizator
WHERE P.Cod_producator <> ''
ORDER BY cod_centru_colectare
--WHERE j.cod_judet IS NULL
