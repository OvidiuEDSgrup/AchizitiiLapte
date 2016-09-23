CREATE PROCEDURE [dbo].[wIaGrilaPretCentrColectLapte]
	@sesiune varchar(50),
	@parXML xml
AS
	SELECT TOP (100) *
	FROM GrilaPretCentrColectLapte
	WHERE 1=1
	FOR XML RAW

