/****** Object:  Table [dbo].[AL_Centre_colectare]    Script Date: 5/24/2016 3:36:05 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AL_Centre_colectare]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AL_Centre_colectare](
	[id_centru] [int] IDENTITY(1,1) NOT NULL,
	[cod_centru_colectare] [varchar](36) NOT NULL CONSTRAINT [DF_AL_Centre_colectare_cod_centru_colectare]  DEFAULT (newid()),
	[denumire] [varchar](50) NOT NULL,
	[cod_IBAN] [varchar](30) NOT NULL,
	[banca] [varchar](20) NOT NULL,
	[sat] [varchar](30) NOT NULL,
	[comuna] [varchar](30) NOT NULL,
	[cod_localitate] [varchar](8) NULL,
	[cod_judet] [varchar](3) NULL,
	[cod_tara] [varchar](3) NULL,
	[responsabil] [varchar](30) NOT NULL,
	[loc_de_munca] [varchar](9) NULL,
	[tip_pers] [char](1) NOT NULL,
	[subunit] [varchar](9) NOT NULL CONSTRAINT [DF_AL_Centre_colectare_subunitate]  DEFAULT ('1'),
	[tert] [varchar](13) NULL,
	[cod_ruta] [varchar](20) NULL,
	[ord_ruta] [smallint] NOT NULL,
	[data_operarii] [datetime2](3) NOT NULL,
	[operator] [varchar](10) NOT NULL,
	[detalii] [xml] NULL,
 CONSTRAINT [PK_AL_Centre_colectare] PRIMARY KEY CLUSTERED 
(
	[id_centru] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO

SET ANSI_PADDING OFF
GO

SET ANSI_PADDING ON

GO

/****** Object:  Index [Denumire]    Script Date: 5/24/2016 3:36:05 PM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AL_Centre_colectare]') AND name = N'Denumire')
CREATE NONCLUSTERED INDEX [Denumire] ON [dbo].[AL_Centre_colectare]
(
	[denumire] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

SET ANSI_PADDING ON

GO

/****** Object:  Index [Loc_munca]    Script Date: 5/24/2016 3:36:05 PM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AL_Centre_colectare]') AND name = N'Loc_munca')
CREATE NONCLUSTERED INDEX [Loc_munca] ON [dbo].[AL_Centre_colectare]
(
	[loc_de_munca] ASC,
	[cod_centru_colectare] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

SET ANSI_PADDING ON

GO

/****** Object:  Index [Ordine_ruta]    Script Date: 5/24/2016 3:36:05 PM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AL_Centre_colectare]') AND name = N'Ordine_ruta')
CREATE NONCLUSTERED INDEX [Ordine_ruta] ON [dbo].[AL_Centre_colectare]
(
	[cod_ruta] ASC,
	[ord_ruta] ASC,
	[cod_centru_colectare] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

SET ANSI_PADDING ON

GO

/****** Object:  Index [Unic]    Script Date: 5/24/2016 3:36:05 PM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AL_Centre_colectare]') AND name = N'Unic')
CREATE UNIQUE NONCLUSTERED INDEX [Unic] ON [dbo].[AL_Centre_colectare]
(
	[cod_centru_colectare] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AL_Centre_colectare_Judete]') AND parent_object_id = OBJECT_ID(N'[dbo].[AL_Centre_colectare]'))
ALTER TABLE [dbo].[AL_Centre_colectare]  WITH CHECK ADD  CONSTRAINT [FK_AL_Centre_colectare_Judete] FOREIGN KEY([cod_judet])
REFERENCES [dbo].[Judete] ([cod_judet])
GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AL_Centre_colectare_Judete]') AND parent_object_id = OBJECT_ID(N'[dbo].[AL_Centre_colectare]'))
ALTER TABLE [dbo].[AL_Centre_colectare] CHECK CONSTRAINT [FK_AL_Centre_colectare_Judete]
GO

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AL_Centre_colectare_Lm]') AND parent_object_id = OBJECT_ID(N'[dbo].[AL_Centre_colectare]'))
ALTER TABLE [dbo].[AL_Centre_colectare]  WITH CHECK ADD  CONSTRAINT [FK_AL_Centre_colectare_Lm] FOREIGN KEY([loc_de_munca])
REFERENCES [dbo].[Lm] ([Cod])
GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AL_Centre_colectare_Lm]') AND parent_object_id = OBJECT_ID(N'[dbo].[AL_Centre_colectare]'))
ALTER TABLE [dbo].[AL_Centre_colectare] CHECK CONSTRAINT [FK_AL_Centre_colectare_Lm]
GO

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AL_Centre_colectare_Localitati]') AND parent_object_id = OBJECT_ID(N'[dbo].[AL_Centre_colectare]'))
ALTER TABLE [dbo].[AL_Centre_colectare]  WITH CHECK ADD  CONSTRAINT [FK_AL_Centre_colectare_Localitati] FOREIGN KEY([cod_localitate])
REFERENCES [dbo].[Localitati] ([cod_oras])
GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AL_Centre_colectare_Localitati]') AND parent_object_id = OBJECT_ID(N'[dbo].[AL_Centre_colectare]'))
ALTER TABLE [dbo].[AL_Centre_colectare] CHECK CONSTRAINT [FK_AL_Centre_colectare_Localitati]
GO

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AL_Centre_colectare_Rute]') AND parent_object_id = OBJECT_ID(N'[dbo].[AL_Centre_colectare]'))
ALTER TABLE [dbo].[AL_Centre_colectare]  WITH CHECK ADD  CONSTRAINT [FK_AL_Centre_colectare_Rute] FOREIGN KEY([cod_ruta])
REFERENCES [dbo].[Rute] ([codRuta])
GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AL_Centre_colectare_Rute]') AND parent_object_id = OBJECT_ID(N'[dbo].[AL_Centre_colectare]'))
ALTER TABLE [dbo].[AL_Centre_colectare] CHECK CONSTRAINT [FK_AL_Centre_colectare_Rute]
GO

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AL_Centre_colectare_Tari]') AND parent_object_id = OBJECT_ID(N'[dbo].[AL_Centre_colectare]'))
ALTER TABLE [dbo].[AL_Centre_colectare]  WITH CHECK ADD  CONSTRAINT [FK_AL_Centre_colectare_Tari] FOREIGN KEY([cod_tara])
REFERENCES [dbo].[Tari] ([cod_tara])
GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AL_Centre_colectare_Tari]') AND parent_object_id = OBJECT_ID(N'[dbo].[AL_Centre_colectare]'))
ALTER TABLE [dbo].[AL_Centre_colectare] CHECK CONSTRAINT [FK_AL_Centre_colectare_Tari]
GO

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AL_Centre_colectare_Terti]') AND parent_object_id = OBJECT_ID(N'[dbo].[AL_Centre_colectare]'))
ALTER TABLE [dbo].[AL_Centre_colectare]  WITH CHECK ADD  CONSTRAINT [FK_AL_Centre_colectare_Terti] FOREIGN KEY([subunit], [tert])
REFERENCES [dbo].[Terti] ([Subunitate], [Tert])
GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AL_Centre_colectare_Terti]') AND parent_object_id = OBJECT_ID(N'[dbo].[AL_Centre_colectare]'))
ALTER TABLE [dbo].[AL_Centre_colectare] CHECK CONSTRAINT [FK_AL_Centre_colectare_Terti]
GO

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AL_Centre_colectare_utilizatori]') AND parent_object_id = OBJECT_ID(N'[dbo].[AL_Centre_colectare]'))
ALTER TABLE [dbo].[AL_Centre_colectare]  WITH CHECK ADD  CONSTRAINT [FK_AL_Centre_colectare_utilizatori] FOREIGN KEY([operator])
REFERENCES [dbo].[Utilizatori] ([ID])
GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AL_Centre_colectare_utilizatori]') AND parent_object_id = OBJECT_ID(N'[dbo].[AL_Centre_colectare]'))
ALTER TABLE [dbo].[AL_Centre_colectare] CHECK CONSTRAINT [FK_AL_Centre_colectare_utilizatori]
GO

IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_AL_Centre_colectare_localitate_judet_tara_completate]') AND parent_object_id = OBJECT_ID(N'[dbo].[AL_Centre_colectare]'))
ALTER TABLE [dbo].[AL_Centre_colectare]  WITH CHECK ADD  CONSTRAINT [CK_AL_Centre_colectare_localitate_judet_tara_completate] CHECK  ((coalesce([cod_localitate],[cod_judet],[cod_tara]) IS NOT NULL))
GO

IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_AL_Centre_colectare_localitate_judet_tara_completate]') AND parent_object_id = OBJECT_ID(N'[dbo].[AL_Centre_colectare]'))
ALTER TABLE [dbo].[AL_Centre_colectare] CHECK CONSTRAINT [CK_AL_Centre_colectare_localitate_judet_tara_completate]
GO

IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_AL_Centre_colectare_tip_persoana_Fizica_sau_Juridica]') AND parent_object_id = OBJECT_ID(N'[dbo].[AL_Centre_colectare]'))
ALTER TABLE [dbo].[AL_Centre_colectare]  WITH CHECK ADD  CONSTRAINT [CK_AL_Centre_colectare_tip_persoana_Fizica_sau_Juridica] CHECK  (([tip_pers]='J' OR [tip_pers]='F'))
GO

IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_AL_Centre_colectare_tip_persoana_Fizica_sau_Juridica]') AND parent_object_id = OBJECT_ID(N'[dbo].[AL_Centre_colectare]'))
ALTER TABLE [dbo].[AL_Centre_colectare] CHECK CONSTRAINT [CK_AL_Centre_colectare_tip_persoana_Fizica_sau_Juridica]
GO

IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'AL_Centre_colectare', N'COLUMN',N'cod_centru_colectare'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'backward compatibility AL OLD' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AL_Centre_colectare', @level2type=N'COLUMN',@level2name=N'cod_centru_colectare'
GO


