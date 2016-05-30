SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AL_Producatori]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AL_Producatori](
	[id_prod] [int] IDENTITY(1,1) NOT NULL,
	[cod_prod] [varchar](36) NOT NULL,
	[denumire] [varchar](50) NOT NULL,
	[initiala_tata] [char](1) NOT NULL,
	[CNP_CUI] [varchar](15) NOT NULL,
	[serie_BI] [char](2) NOT NULL,
	[nr_BI] [char](7) NOT NULL,
	[elib_BI] [varchar](20) NOT NULL,
	[cod_jud] [varchar](3) NULL,
	[cod_loc] [varchar](8) NULL,
	[cod_tara] [varchar](3) NULL,
	[comuna] [varchar](30) NOT NULL,
	[sat] [varchar](30) NOT NULL,
	[strada] [varchar](30) NOT NULL,
	[nr_str] [varchar](5) NOT NULL,
	[nr_casa] [varchar](10) NOT NULL,
	[bloc] [varchar](10) NOT NULL,
	[scara] [varchar](10) NOT NULL,
	[etaj] [varchar](10) NOT NULL,
	[ap] [varchar](5) NOT NULL,
	[cod_exploatatie] [varchar](15) NOT NULL,
	[cota_actuala] [decimal](12, 2) NOT NULL,
	[grad_actual] [decimal](7, 3) NOT NULL,
	[nr_contr] [varchar](20) NOT NULL,
	[data_contr] [datetime2](0) NOT NULL,
	[valabil_contr] [datetime2](0) NOT NULL,
	[cant_contr] [decimal](12, 2) NOT NULL,
	[nr_vaci] [smallint] NOT NULL,
	[grupa] [char](1) NOT NULL,
	[pret] [decimal](12, 2) NOT NULL,
	[bonus] [tinyint] NOT NULL,
	[tip_pers] [char](1) NOT NULL,
	[subunit] [varchar](9) NOT NULL,
	[tert] [varchar](13) NOT NULL,
	[reprezentant] [varchar](30) NOT NULL,
	[CNP_repr] [varchar](13) NOT NULL,
	[id_centru] [int] NULL,
	[centru_colectare] [varchar](9) NOT NULL,
	[loc_munca] [varchar](9) NOT NULL,
	[DACL] [tinyint] NOT NULL,
	[tip_furnizor] [char](1) NOT NULL,
	[cont_banca] [varchar](35) NOT NULL,
	[banca] [varchar](20) NOT NULL,
	[data_operarii] [datetime2](3) NOT NULL,
	[operator] [varchar](10) NOT NULL,
	[detalii] [xml] NULL,
 CONSTRAINT [PK_AL_Producatori] PRIMARY KEY CLUSTERED 
(
	[id_prod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO

SET ANSI_PADDING OFF
GO

SET ANSI_PADDING ON

GO

/****** Object:  Index [Denumire]    Script Date: 5/30/2016 5:44:07 PM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AL_Producatori]') AND name = N'Denumire')
CREATE NONCLUSTERED INDEX [Denumire] ON [dbo].[AL_Producatori]
(
	[denumire] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

SET ANSI_PADDING ON

GO

/****** Object:  Index [Unic_AL_Producatori]    Script Date: 5/30/2016 5:44:07 PM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AL_Producatori]') AND name = N'Unic_AL_Producatori')
CREATE UNIQUE NONCLUSTERED INDEX [Unic_AL_Producatori] ON [dbo].[AL_Producatori]
(
	[cod_prod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_AL_Producatori_cod_prod]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AL_Producatori] ADD  CONSTRAINT [DF_AL_Producatori_cod_prod]  DEFAULT (newid()) FOR [cod_prod]
END

GO

IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_AL_Producatori_subunitate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AL_Producatori] ADD  CONSTRAINT [DF_AL_Producatori_subunitate]  DEFAULT ('1') FOR [subunit]
END

GO

IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ProdLapte_Cont_banca]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AL_Producatori] ADD  CONSTRAINT [DF_ProdLapte_Cont_banca]  DEFAULT ('') FOR [cont_banca]
END

GO

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AL_Producatori_AL_Centre_colectare]') AND parent_object_id = OBJECT_ID(N'[dbo].[AL_Producatori]'))
ALTER TABLE [dbo].[AL_Producatori]  WITH CHECK ADD  CONSTRAINT [FK_AL_Producatori_AL_Centre_colectare] FOREIGN KEY([id_centru])
REFERENCES [dbo].[AL_Centre_colectare] ([id_centru])
GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AL_Producatori_AL_Centre_colectare]') AND parent_object_id = OBJECT_ID(N'[dbo].[AL_Producatori]'))
ALTER TABLE [dbo].[AL_Producatori] CHECK CONSTRAINT [FK_AL_Producatori_AL_Centre_colectare]
GO

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AL_Producatori_Judete]') AND parent_object_id = OBJECT_ID(N'[dbo].[AL_Producatori]'))
ALTER TABLE [dbo].[AL_Producatori]  WITH CHECK ADD  CONSTRAINT [FK_AL_Producatori_Judete] FOREIGN KEY([cod_jud])
REFERENCES [dbo].[Judete] ([cod_judet])
GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AL_Producatori_Judete]') AND parent_object_id = OBJECT_ID(N'[dbo].[AL_Producatori]'))
ALTER TABLE [dbo].[AL_Producatori] CHECK CONSTRAINT [FK_AL_Producatori_Judete]
GO

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AL_Producatori_Localitati]') AND parent_object_id = OBJECT_ID(N'[dbo].[AL_Producatori]'))
ALTER TABLE [dbo].[AL_Producatori]  WITH CHECK ADD  CONSTRAINT [FK_AL_Producatori_Localitati] FOREIGN KEY([cod_loc])
REFERENCES [dbo].[Localitati] ([cod_oras])
GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AL_Producatori_Localitati]') AND parent_object_id = OBJECT_ID(N'[dbo].[AL_Producatori]'))
ALTER TABLE [dbo].[AL_Producatori] CHECK CONSTRAINT [FK_AL_Producatori_Localitati]
GO

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AL_Producatori_Tari]') AND parent_object_id = OBJECT_ID(N'[dbo].[AL_Producatori]'))
ALTER TABLE [dbo].[AL_Producatori]  WITH CHECK ADD  CONSTRAINT [FK_AL_Producatori_Tari] FOREIGN KEY([cod_tara])
REFERENCES [dbo].[Tari] ([cod_tara])
GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AL_Producatori_Tari]') AND parent_object_id = OBJECT_ID(N'[dbo].[AL_Producatori]'))
ALTER TABLE [dbo].[AL_Producatori] CHECK CONSTRAINT [FK_AL_Producatori_Tari]
GO

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AL_Producatori_Terti]') AND parent_object_id = OBJECT_ID(N'[dbo].[AL_Producatori]'))
ALTER TABLE [dbo].[AL_Producatori]  WITH CHECK ADD  CONSTRAINT [FK_AL_Producatori_Terti] FOREIGN KEY([subunit], [tert])
REFERENCES [dbo].[Terti] ([Subunitate], [Tert])
GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AL_Producatori_Terti]') AND parent_object_id = OBJECT_ID(N'[dbo].[AL_Producatori]'))
ALTER TABLE [dbo].[AL_Producatori] CHECK CONSTRAINT [FK_AL_Producatori_Terti]
GO

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AL_Producatori_Utilizatori]') AND parent_object_id = OBJECT_ID(N'[dbo].[AL_Producatori]'))
ALTER TABLE [dbo].[AL_Producatori]  WITH CHECK ADD  CONSTRAINT [FK_AL_Producatori_Utilizatori] FOREIGN KEY([operator])
REFERENCES [dbo].[Utilizatori] ([ID])
GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AL_Producatori_Utilizatori]') AND parent_object_id = OBJECT_ID(N'[dbo].[AL_Producatori]'))
ALTER TABLE [dbo].[AL_Producatori] CHECK CONSTRAINT [FK_AL_Producatori_Utilizatori]
GO

IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_AL_Producatori_localitate_judet_tara_completate]') AND parent_object_id = OBJECT_ID(N'[dbo].[AL_Producatori]'))
ALTER TABLE [dbo].[AL_Producatori]  WITH CHECK ADD  CONSTRAINT [CK_AL_Producatori_localitate_judet_tara_completate] CHECK  ((coalesce([cod_loc],[cod_jud],[cod_tara]) IS NOT NULL))
GO

IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_AL_Producatori_localitate_judet_tara_completate]') AND parent_object_id = OBJECT_ID(N'[dbo].[AL_Producatori]'))
ALTER TABLE [dbo].[AL_Producatori] CHECK CONSTRAINT [CK_AL_Producatori_localitate_judet_tara_completate]
GO

IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'AL_Producatori', N'COLUMN',N'cod_prod'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'backward compatibility ASISold' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AL_Producatori', @level2type=N'COLUMN',@level2name=N'cod_prod'
GO

