--IF EXISTS (SELECT TOP (1) 1 FROM CentrColectLapte C WHERE C.Utilizator = '')
--	UPDATE CentrColectLapte SET Utilizator = 'IMPL'

IF EXISTS (SELECT TOP (1) 1 FROM CentrColectLapte C LEFT JOIN UTILIZATORI U ON U.ID = C.Utilizator WHERE U.ID IS NULL)
	WITH Utilizatori_lipsa AS (	
		SELECT C.Utilizator AS id, C.Utilizator AS nume, LOWER(C.Utilizator) AS parola, '.\' AS info,
			nr_aparitie = ROW_NUMBER() OVER(PARTITION BY C.Utilizator ORDER BY C.Utilizator DESC)
		FROM CentrColectLapte C --LEFT JOIN (VALUES ('IMPL','IMPL','impl','.\IMPL')) A(id, nume, parola, info) ON RTRIM(C.Utilizator) = ''
			LEFT JOIN UTILIZATORI U ON U.ID = C.Utilizator 
		WHERE C.Utilizator <> '' AND U.ID IS NULL 
		) 
	INSERT INTO Utilizatori (ID, Nume, Parola, Info, Categoria, Jurnal, Marca, Observatii)
	SELECT U.id, U.nume, U.parola, U.info, '', '', '', ''
	FROM Utilizatori_lipsa U WHERE U.nr_aparitie = 1

IF EXISTS (SELECT * FROM CentrColectLapte C LEFT JOIN Terti T ON T.Tert = C.Tert AND T.Subunitate = '1' WHERE T.Tert IS NULL)
	WITH Terti_lipsa AS (	
		SELECT RTRIM(C.Tert) AS cod, RTRIM(C.Tert)+' IMPL' AS den,
			nr_aparitie = ROW_NUMBER() OVER(PARTITION BY C.Tert ORDER BY C.Tert DESC)
		FROM CentrColectLapte C 
			LEFT JOIN Terti T ON T.Tert = C.Tert AND T.Subunitate = '1' 
		WHERE C.tert <> '' AND T.tert IS NULL
		) 
	INSERT INTO Terti (Subunitate, Tert, Denumire, Cod_fiscal, Localitate, Judet, Adresa, Telefon_fax, Banca, Cont_in_banca, Tert_extern, Grupa, Cont_ca_furnizor, Cont_ca_beneficiar, 
		Sold_ca_furnizor, Sold_ca_beneficiar, Sold_maxim_ca_beneficiar, Disccount_acordat, detalii)
	SELECT '1' AS Subunitate, T.cod AS Tert, T.den AS Denumire, '' AS Cod_fiscal, '' AS Localitate, '' AS Judet, '' AS Adresa, '' AS Telefon_fax, '' AS Banca, '' AS Cont_in_banca, '' AS Tert_extern, '' AS Grupa, '' AS Cont_ca_furnizor, '' AS Cont_ca_beneficiar, 
		'' AS Sold_ca_furnizor, '' AS Sold_ca_beneficiar, '' AS Sold_maxim_ca_beneficiar, '' AS Disccount_acordat, NULL AS detalii
	FROM Terti_lipsa T WHERE T.nr_aparitie = 1

IF EXISTS (SELECT * FROM CentrColectLapte C LEFT JOIN Lm L ON L.cod = C.Loc_de_munca WHERE C.Loc_de_munca <> '' AND L.Cod IS NULL)
	WITH Lm_lipsa AS (	
		SELECT RTRIM(C.Loc_de_munca) AS cod, RTRIM(C.Loc_de_munca)+' IMPL' AS den,
			nr_aparitie = ROW_NUMBER() OVER(PARTITION BY C.loc_de_munca ORDER BY C.loc_de_munca DESC)
		FROM CentrColectLapte C 
			LEFT JOIN Lm L ON L.Cod = C.Loc_de_munca 
		WHERE C.Loc_de_munca <> '' AND L.Cod IS NULL
		) 
	INSERT INTO Lm (Nivel, Cod, Cod_parinte, Denumire, detalii)
	SELECT ISNULL(S.Nivel,1) AS Nivel, L.cod AS Cod, '' AS Cod_parinte, L.den AS Denumire, NULL AS detalii
	FROM Lm_lipsa L LEFT JOIN Strlm S ON S.Lungime = LEN(L.cod)
	WHERE L.nr_aparitie = 1

IF EXISTS (SELECT * FROM CentrColectLapte C LEFT JOIN Rute R ON R.codRuta = C.Ruta WHERE C.Loc_de_munca <> '' AND R.codRuta IS NULL)
	WITH Rute_lipsa AS (	
		SELECT RTRIM(C.Ruta) AS cod, RTRIM(C.Ruta)+' IMPL' AS den,
			nr_aparitie = ROW_NUMBER() OVER(PARTITION BY C.ruta ORDER BY C.ruta DESC)
		FROM CentrColectLapte C 
			LEFT JOIN Rute R ON R.codRuta = C.Ruta 
		WHERE C.Ruta <> '' AND R.codRuta IS NULL
		) 
	INSERT INTO Rute (codRuta, denumire, descriere, detalii)
	SELECT R.cod AS Cod, R.den AS Denumire, R.den AS descriere, NULL AS detalii
	FROM Rute_lipsa R 
	WHERE R.nr_aparitie = 1

DELETE AL_Centre_colectare 
DBCC CHECKIDENT(AL_Centre_colectare, reseed, 0)
INSERT INTO AL_Centre_colectare 
	(cod_centru_colectare,denumire,cod_IBAN,banca,sat,comuna,cod_localitate,cod_judet,cod_tara,responsabil,loc_de_munca,tip_pers,subunit,tert,cod_ruta,ord_ruta,data_operarii,operator,detalii)
SELECT 
	cod_centru_colectare = c.cod_centru_colectare, --	varchar	36
	denumire = c.denumire, --	varchar	50
	cod_IBAN = c.cod_IBAN, --	varchar	30
	banca = c.banca, --	varchar	20
	sat = c.sat, --	varchar	30
	comuna = c.comuna, --	varchar	30
	cod_localitate = L.cod_oras, --	varchar	8
	cod_judet = j.cod_judet, --	varchar	3
	cod_tara = T.cod_tara, --	varchar	3
	responsabil = c.responsabil, --	varchar	30
	loc_de_munca = NULLIF(c.loc_de_munca,''), --	varchar	9
	tip_pers = (CASE c.tip_pers WHEN '' THEN 'F' ELSE c.Tip_pers END), --	char	1
	subunit = '1', --	varchar	9
	tert = NULLIF(c.tert, ''), --	varchar	13
	cod_ruta = NULLIF(c.ruta, ''), --	varchar	20
	ord_ruta = c.ord_ruta, --	smallint	2
	data_operarii = c.data_operarii, --	datetime2	7
	operator = NULLIF(c.Utilizator,''), --	varchar	10
	detalii = (SELECT NULLIF(RTRIM(C.localitate),'') AS loc, NULLIF(RTRIM(C.judet), '') AS jud, NULLIF(RTRIM(C.Ruta),'') AS ruta FOR XML RAW, TYPE)
FROM CentrColectLapte AS C 	
	OUTER APPLY (SELECT TOP (1) L.cod_oras, L.cod_judet FROM Localitati L WHERE L.cod_oras=c.Localitate OR L.oras LIKE RTRIM(C.Localitate)+'%' 
		ORDER BY (CASE WHEN L.cod_oras=C.Localitate THEN 0 ELSE 1 END)) AS L
	OUTER APPLY (SELECT TOP (1) cod_judet FROM Judete J WHERE j.cod_judet=c.Judet OR L.cod_judet=J.cod_judet OR j.denumire LIKE RTRIM(c.Judet)+'%' OR C.Judet LIKE RTRIM(J.denumire)+'%'
		ORDER BY (CASE WHEN J.cod_judet=C.Judet OR L.cod_judet=J.cod_judet THEN 0 ELSE 1 END)) AS J
	OUTER APPLY (SELECT TOP (1) cod_tara FROM Tari T WHERE T.cod_tara=C.Judet OR T.denumire LIKE RTRIM(C.Judet)+'%' 
		ORDER BY (CASE WHEN T.cod_tara=C.Judet THEN 0 ELSE 1 END)) AS T
	LEFT JOIN Utilizatori U ON U.ID = C.Utilizator
--WHERE j.cod_judet IS NULL
