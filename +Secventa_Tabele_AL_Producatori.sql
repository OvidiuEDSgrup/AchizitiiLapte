/****** Object:  Sequence [dbo].[AL_Producatori_id_prod]    Script Date: 5/31/2016 11:03:04 AM ******/
IF NOT EXISTS (SELECT * FROM sys.sequences WHERE name = N'AL_Producatori_id_prod')
BEGIN
CREATE SEQUENCE [dbo].[AL_Producatori_id_prod] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -2147483648
 MAXVALUE 2147483647
 NO CACHE 
END

GO

