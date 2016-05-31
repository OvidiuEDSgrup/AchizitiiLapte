/****** Object:  Sequence [dbo].[AL_Centre_colectare_id_centru]    Script Date: 5/31/2016 11:02:51 AM ******/
IF NOT EXISTS (SELECT * FROM sys.sequences WHERE name = N'AL_Centre_colectare_id_centru')
BEGIN
CREATE SEQUENCE [dbo].[AL_Centre_colectare_id_centru] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -2147483648
 MAXVALUE 2147483647
 NO CACHE 
END

GO

