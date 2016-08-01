
IF EXISTS (SELECT 1 FROM sysobjects WHERE NAME = 'ProdLapte')
	AND NOT EXISTS (SELECT 1 FROM syscolumns sc, sysobjects so WHERE so.id = sc.id AND so.NAME = 'ProdLapte' AND sc.NAME = 'nr_contr')
begin
	alter table ProdLapte add nr_contr varchar(20)
end
GO

IF EXISTS (SELECT 1 FROM sysobjects WHERE NAME = 'ProdLapte')
	AND NOT EXISTS (SELECT 1 FROM syscolumns sc, sysobjects so WHERE so.id = sc.id AND so.NAME = 'ProdLapte' AND sc.NAME = 'data_contr')
begin
	alter table ProdLapte add data_contr datetime2(0)
end
GO

IF EXISTS (SELECT 1 FROM sysobjects WHERE NAME = 'ProdLapte')
	AND NOT EXISTS (SELECT 1 FROM syscolumns sc, sysobjects so WHERE so.id = sc.id AND so.NAME = 'ProdLapte' AND sc.NAME = 'valabil_contr')
begin
	alter table ProdLapte add valabil_contr datetime2(0)
end
GO

IF EXISTS (SELECT 1 FROM sysobjects WHERE NAME = 'ProdLapte')
	AND NOT EXISTS (SELECT 1 FROM syscolumns sc, sysobjects so WHERE so.id = sc.id AND so.NAME = 'ProdLapte' AND sc.NAME = 'cant_contr')
begin
	alter table ProdLapte add cant_contr decimal(12,2)
end
GO

IF EXISTS (SELECT 1 FROM sysobjects WHERE NAME = 'ProdLapte')
	AND NOT EXISTS (SELECT 1 FROM syscolumns sc, sysobjects so WHERE so.id = sc.id AND so.NAME = 'ProdLapte' AND sc.NAME = 'cont_banca')
begin
	alter table ProdLapte add cont_banca varchar(35)
end
GO

IF EXISTS (SELECT 1 FROM sysobjects WHERE NAME = 'ProdLapte')
	AND NOT EXISTS (SELECT 1 FROM syscolumns sc, sysobjects so WHERE so.id = sc.id AND so.NAME = 'ProdLapte' AND sc.NAME = 'banca')
begin
	alter table ProdLapte add banca varchar(20)
end
GO

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
GO

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
GO

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
GO

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
GO

DELETE AL_Centre_colectare
GO

--DBCC CHECKIDENT(AL_Centre_colectare, reseed, 0)
ALTER SEQUENCE AL_Centre_colectare_ID_centru RESTART WITH 1
GO

INSERT INTO AL_Centre_colectare 
	(cod_centru,denumire,cod_IBAN,banca,sat,comuna,cod_loc,cod_jud,cod_tara,responsabil,loc_munca,tip_pers,subunit,tert,cod_ruta,ord_ruta,data_operarii,operator,detalii)
SELECT 
	cod_centru_colectare = c.cod_centru_colectare, --	varchar	36
	denumire = c.denumire, --	varchar	50
	cod_IBAN = c.cod_IBAN, --	varchar	30
	banca = c.banca, --	varchar	20
	sat = c.sat, --	varchar	30
	comuna = c.comuna, --	varchar	30
	cod_loc = L.cod_oras, --	varchar	8
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
WHERE c.Cod_centru_colectare <> ''
ORDER BY cod_centru_colectare;
GO

WITH Centre_lipsa AS (	
	SELECT RTRIM(P.Centru_colectare) AS cod, RTRIM(P.Centru_colectare)+' IMPL' AS den,
		nr_aparitie = ROW_NUMBER() OVER(PARTITION BY P.centru_colectare ORDER BY P.centru_colectare DESC)
	FROM ProdLapte P 
		LEFT JOIN AL_Centre_colectare C ON C.cod_centru = P.Centru_colectare
	WHERE P.Centru_colectare <> '' AND C.cod_centru IS NULL
	) 
INSERT INTO AL_Centre_colectare 
	(cod_centru,denumire,cod_IBAN,banca,sat,comuna,cod_loc,cod_jud,cod_tara,responsabil,loc_munca,tip_pers,subunit,tert,cod_ruta,ord_ruta,data_operarii,operator,detalii)
SELECT 
	cod_centru_colectare = c.cod, --	varchar	36
	denumire = c.den, --	varchar	50
	cod_IBAN = '', --	varchar	30
	banca = '', --	varchar	20
	sat = '', --	varchar	30
	comuna = '', --	varchar	30
	cod_loc = NULL, --	varchar	8
	cod_judet = NULL, --	varchar	3
	cod_tara = NULL, --	varchar	3
	responsabil = '', --	varchar	30
	loc_de_munca = NULL, --	varchar	9
	tip_pers = 'F', --	char	1
	subunit = NULL, --	varchar	9
	tert = NULL, --	varchar	13
	cod_ruta = NULL, --	varchar	20
	ord_ruta = 0, --	smallint	2
	data_operarii = GETDATE(), --	datetime2	7
	operator = 'IMPL', --	varchar	10
	detalii = NULL
FROM Centre_lipsa AS C
WHERE C.nr_aparitie = 1
GO

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
GO

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
GO

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
GO

DELETE AL_Producatori
GO

--DBCC CHECKIDENT(AL_Producatori, reseed, 0)
ALTER SEQUENCE AL_Producatori_ID_prod RESTART WITH 1
GO

SET ANSI_WARNINGS ON
GO

INSERT INTO AL_Producatori (cod_prod,denumire,initiala_tata,CNP_CUI,serie_BI,nr_BI,elib_BI,cod_jud,cod_loc,cod_tara,comuna,sat,strada,nr_str,nr_casa,bloc,scara,etaj,ap,cod_exploatatie,cota_actuala,grad_actual,nr_contr,data_contr,valabil_contr,cant_contr,nr_vaci,grupa,pret,bonus,tip_pers,subunit,tert,reprezentant,CNP_repr,id_centru,centru_colectare,loc_munca,DACL,tip_furnizor,cont_banca,banca,data_operarii,operator,detalii) 
SELECT 
	RTRIM(P.Cod_producator) AS cod_prod, -- varchar	36	     
	P.denumire AS denumire, -- varchar	50	     
	LEFT(P.Initiala_tatalui, 1) AS initiala_tata, -- char	1	     
	P.CNP_CUI AS CNP_CUI, -- varchar	15	     
	P.Serie_buletin AS serie_BI, -- char	2	     
	P.Nr_buletin AS nr_BI, -- char	7	     
	P.Eliberat AS elib_BI, -- varchar	20	     
	NULLIF(J.cod_judet, '') AS cod_jud, -- varchar	3	     
	NULLIF(L.cod_oras, '') AS cod_loc, -- varchar	8	     
	NULLIF(T.cod_tara, '') AS cod_tara, -- varchar	3	     
	P.comuna AS comuna, -- varchar	30	     
	P.sat AS sat, -- varchar	30	     
	P.strada AS strada, -- varchar	30	     
	P.nr_str AS nr_str, -- varchar	5	     
	P.nr_casa AS nr_casa, -- varchar	10	     
	P.bloc AS bloc, -- varchar	10	     
	P.scara AS scara, -- varchar	10	     
	P.etaj AS etaj, -- varchar	10	     
	P.ap AS ap, -- varchar	5	     
	P.cod_exploatatie AS cod_exploatatie, -- varchar	15	     
	P.cota_actuala AS cota_actuala, -- decimal	9	12   
	P.grad_actual AS grad_actual, -- decimal	5	7    
	P.nr_contr AS nr_contr, -- varchar	20	     
	P.data_contr AS data_contr, -- datetime2	6	19   
	P.valabil_contr AS valabil_contr, -- datetime2	6	19   
	ISNULL(P.cant_contr, 0) AS cant_contr, -- decimal	9	12   
	P.Vaci AS nr_vaci, -- smallint	2	5    
	P.grupa AS grupa, -- char	1	     
	P.pret AS pret, -- decimal	9	12   
	P.bonus AS bonus, -- tinyint	1	3    
	P.tip_pers AS tip_pers, -- char	1	     
	'1' AS subunit, -- varchar	9	     
	NULLIF(P.tert, '') AS tert, -- varchar	13	     
	P.reprezentant AS reprezentant, -- varchar	30	     
	P.CNP_repr AS CNP_repr, -- varchar	13	     
	NULLIF(C.id_centru, '') AS id_centru, -- int	4	10   
	P.centru_colectare AS centru_colectare, -- varchar	9	     
	P.Loc_de_munca AS loc_munca, -- varchar	9	     
	P.DACL AS DACL, -- tinyint	1	3    
	P.tip_furnizor AS tip_furnizor, -- char	1	     
	ISNULL(P.cont_banca, '') AS cont_banca, -- varchar	35	     
	ISNULL(P.banca, '') AS banca, -- varchar	20	     
	P.data_operarii AS data_operarii, -- datetime2	7	23   
	NULLIF(P.Utilizator, '') AS operator, -- varchar	10	     
	(SELECT NULLIF(RTRIM(P.localitate),'') AS loc, NULLIF(RTRIM(P.judet), '') AS jud FOR XML RAW, TYPE) AS detalii -- xml	-1	 
--INTO #depanare
FROM ProdLapte AS P 	
	OUTER APPLY (SELECT TOP (1) L.cod_oras, L.cod_judet FROM Localitati L WHERE L.cod_oras=P.Localitate OR L.oras LIKE RTRIM(P.Localitate)+'%' 
		ORDER BY (CASE WHEN L.cod_oras=P.Localitate THEN 0 ELSE 1 END)) AS L
	OUTER APPLY (SELECT TOP (1) cod_judet FROM Judete J WHERE j.cod_judet=P.Judet OR L.cod_judet=J.cod_judet OR j.denumire LIKE RTRIM(P.Judet)+'%' OR P.Judet LIKE RTRIM(J.denumire)+'%'
		ORDER BY (CASE WHEN J.cod_judet=P.Judet OR L.cod_judet=J.cod_judet THEN 0 ELSE 1 END)) AS J
	OUTER APPLY (SELECT TOP (1) cod_tara FROM Tari T WHERE T.cod_tara=P.Judet OR T.denumire LIKE RTRIM(P.Judet)+'%' 
		ORDER BY (CASE WHEN T.cod_tara=P.Judet THEN 0 ELSE 1 END)) AS T
	LEFT JOIN AL_Centre_colectare AS C ON C.cod_centru = P.Centru_colectare
	LEFT JOIN Utilizatori U ON U.ID = P.Utilizator
WHERE P.Cod_producator <> ''
ORDER BY Cod_producator
GO

--EXCEPT SELECT cod_prod,denumire,initiala_tata,CNP_CUI,serie_BI,nr_BI,elib_BI,cod_jud,cod_loc,cod_tara,comuna,sat,strada,nr_str,nr_casa,bloc,scara,etaj,ap,cod_exploatatie,cota_actuala,grad_actual,nr_contr,data_contr,valabil_contr,cant_contr,nr_vaci,grupa,pret,bonus,tip_pers,subunit,tert,reprezentant,CNP_repr,id_centru,centru_colectare,loc_munca,DACL,tip_furnizor,cont_banca,banca,data_operarii,operator
--FROM AL_Producatori 

--SELECT cod_prod,denumire,initiala_tata,CNP_CUI,serie_BI,nr_BI,elib_BI,cod_jud,cod_loc,cod_tara,comuna,sat,strada,nr_str,nr_casa,bloc,scara,etaj,ap,cod_exploatatie,cota_actuala,grad_actual,nr_contr,data_contr,valabil_contr,cant_contr,nr_vaci,grupa,pret,bonus,tip_pers,subunit,tert,reprezentant,CNP_repr,id_centru,centru_colectare,loc_munca,DACL,tip_furnizor,cont_banca,banca,data_operarii,operator
--FROM AL_Producatori 
--WHERE j.cod_judet IS NULL
SET ANSI_WARNINGS ON
GO
/*
select * 
--*/delete b
from BordAchizLapte b where exists (
select Data_lunii, Producator, Centru_colectare, Tip_lapte, count(distinct tip)
from BordAchizLapte
group by Data_lunii, Producator, Centru_colectare, Tip_lapte
having count(distinct tip)>1
	and data_lunii=b.Data_lunii and Producator=b.Producator and Centru_colectare=b.Centru_colectare and Tip_lapte=b.Tip_lapte
)
and b.Cant_UM+b.Cant_STAS+b.Cant_UG=0

/*TODO:
	De preluat si proprietatile de grasime din borderoul de achizitii in borderoul de analize
	*/