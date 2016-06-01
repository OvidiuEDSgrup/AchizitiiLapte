/****** Object:  Table [dbo].[AL_Grila_preturi_centre_colectare]    Script Date: 6/1/2016 2:36:58 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AL_Grila_preturi_centre_colectare]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AL_Grila_preturi_centre_colectare](
	[id_centru] [int] NULL,
	[cod_centru] [varchar](36) NOT NULL,
	[id_tip_lapte] [int] NULL,
	[cod_lapte] [char](20) NOT NULL,
	[data_lunii] [datetime2](0) NOT NULL,
	[tip_plata] [char](1) NOT NULL,
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

/****** Object:  Index [Unic]    Script Date: 6/1/2016 2:36:58 PM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AL_Grila_preturi_centre_colectare]') AND name = N'Unic')
CREATE UNIQUE CLUSTERED INDEX [Unic] ON [dbo].[AL_Grila_preturi_centre_colectare]
(
	[cod_centru] ASC,
	[cod_lapte] ASC,
	[data_lunii] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_AL_Grila_preturi_centre_colectare_cod_centru]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AL_Grila_preturi_centre_colectare] ADD  CONSTRAINT [DF_AL_Grila_preturi_centre_colectare_cod_centru]  DEFAULT (newid()) FOR [cod_centru]
END

GO

IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'AL_Grila_preturi_centre_colectare', N'COLUMN',N'cod_centru'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'backward compatibility AL OLD' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AL_Grila_preturi_centre_colectare', @level2type=N'COLUMN',@level2name=N'cod_centru'
GO

