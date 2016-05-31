/****** Object:  Table [dbo].[AL_Grila_pret_centre_colectare]    Script Date: 5/31/2016 3:36:31 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AL_Grila_pret_centre_colectare]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AL_Grila_pret_centre_colectare](
	[Centru_colectare] [char](9) NOT NULL,
	[Tip_lapte] [char](20) NOT NULL,
	[Data_lunii] [datetime] NOT NULL,
	[Tip_plata] [char](1) NOT NULL,
	[Pret] [float] NOT NULL,
	[Cantitate] [float] NOT NULL,
	[Procent] [real] NOT NULL,
	[UM] [char](3) NOT NULL,
	[Data_operarii] [datetime] NOT NULL,
	[Ora_operarii] [char](6) NOT NULL,
	[Utilizator] [char](10) NOT NULL
) ON [PRIMARY]
END
GO

SET ANSI_PADDING OFF
GO

SET ANSI_PADDING ON

GO

/****** Object:  Index [Unic]    Script Date: 5/31/2016 3:36:31 PM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AL_Grila_pret_centre_colectare]') AND name = N'Unic')
CREATE UNIQUE CLUSTERED INDEX [Unic] ON [dbo].[AL_Grila_pret_centre_colectare]
(
	[Centru_colectare] ASC,
	[Tip_lapte] ASC,
	[Data_lunii] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


