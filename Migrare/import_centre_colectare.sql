--INSERT INTO AL_Centre_colectare 
--	(cod_centru_colectare,denumire,cod_IBAN,banca,sat,comuna,cod_localitate,localitate,cod_judet,judet,responsabil,loc_de_munca,tip_pers,subunit,tert,ruta,ord_ruta,data_operarii,operator)
SELECT 
	cod_centru_colectare=c.cod_centru_colectare --	varchar	36
	,denumire=c.denumire --	varchar	50
	,cod_IBAN=c.cod_IBAN --	varchar	30
	,banca=c.banca --	varchar	20
	,sat=c.sat --	varchar	30
	,comuna=c.comuna --	varchar	30
	,cod_localitate=L.cod_oras --	varchar	8
	,localitate=c.localitate --	varchar	30
	,cod_judet=j.cod_judet --	varchar	3
	,judet=c.judet --	varchar	30
	,responsabil=c.responsabil --	varchar	30
	,loc_de_munca=c.loc_de_munca --	varchar	9
	,tip_pers=c.tip_pers --	char	1
	,subunit='1' --	varchar	9
	,tert=c.tert --	varchar	13
	,ruta=c.ruta --	varchar	20
	,ord_ruta=c.ord_ruta --	smallint	2
	,data_operarii=c.data_operarii --	datetime2	7
	,operator=c.Utilizator --	varchar	10
FROM CentrColectLapte AS C 	
	OUTER APPLY (SELECT TOP (1) L.cod_oras, L.cod_judet FROM Localitati L WHERE L.cod_oras=c.Localitate OR L.oras LIKE RTRIM(C.Localitate)+'%' 
		ORDER BY (CASE WHEN L.cod_oras=C.Localitate THEN 0 ELSE 1 END)) AS L
	OUTER APPLY (SELECT TOP (1) cod_judet FROM Judete J WHERE j.cod_judet=c.Judet OR L.cod_judet=J.cod_judet OR j.denumire LIKE RTRIM(c.Judet)+'%' OR C.Judet LIKE RTRIM(J.denumire)+'%'
		ORDER BY (CASE WHEN J.cod_judet=C.Judet OR L.cod_judet=J.cod_judet THEN 0 ELSE 1 END)) AS J
	OUTER APPLY (SELECT TOP (1) cod_tara FROM Tari T WHERE T.cod_tara=C.Judet OR T.denumire LIKE RTRIM(C.Judet)+'%' 
		ORDER BY (CASE WHEN T.cod_tara=C.Judet THEN 0 ELSE 1 END)) AS T
WHERE j.cod_judet IS NULL