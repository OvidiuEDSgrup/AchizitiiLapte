CREATE PROCEDURE [dbo].[wIaBordAchizLapte]
	@sesiune varchar(50),
	@parXML xml
AS
	SELECT TOP (100) * 
	FROM BordAchizLapte
	ORDER BY Data_lunii
	FOR XML RAW

RETURN 0
