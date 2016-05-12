/****** Object:  View [dbo].[Infocorectii]    Script Date: 07/27/2012 12:49:37 ******/
IF  EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[Infocorectii]'))
DROP TABLE [Infocorectii]
GO
/****** Object:  View [dbo].[facturiE]    Script Date: 07/27/2012 12:49:37 ******/
IF  EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[facturiE]'))
DROP TABLE [facturiE]
GO
/****** Object:  View [dbo].[tchsal]    Script Date: 07/27/2012 12:49:37 ******/
IF  EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tchsal]'))
DROP TABLE [tchsal]
GO
/****** Object:  View [dbo].[POZDOC]    Script Date: 07/27/2012 12:49:37 ******/
IF  EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[POZDOC]'))
DROP TABLE [POZDOC]
GO
/****** Object:  View [dbo].[POZADOC]    Script Date: 07/27/2012 12:49:37 ******/
IF  EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[POZADOC]'))
DROP TABLE [POZADOC]
GO
/****** Object:  View [dbo].[ncon]    Script Date: 07/27/2012 12:49:37 ******/
IF  EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[ncon]'))
DROP TABLE [ncon]
GO
/****** Object:  View [dbo].[extpersintr]    Script Date: 07/27/2012 12:49:37 ******/
IF  EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[extpersintr]'))
DROP TABLE [extpersintr]
GO
/****** Object:  View [dbo].[avexcep]    Script Date: 07/27/2012 12:49:36 ******/
IF  EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[avexcep]'))
DROP TABLE [avexcep]
GO
/****** Object:  View [dbo].[adoc]    Script Date: 07/27/2012 12:49:36 ******/
IF  EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[adoc]'))
DROP TABLE [adoc]
GO
/****** Object:  View [dbo].[plin]    Script Date: 07/27/2012 12:49:37 ******/
IF  EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[plin]'))
DROP TABLE [plin]
GO
/****** Object:  View [dbo].[resal]    Script Date: 07/27/2012 12:49:37 ******/
IF  EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[resal]'))
DROP TABLE [resal]
GO
/****** Object:  View [dbo].[pozincon]    Script Date: 07/27/2012 12:49:37 ******/
IF  EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[pozincon]'))
DROP TABLE [pozincon]
GO
/****** Object:  View [dbo].[conalte]    Script Date: 07/27/2012 12:49:36 ******/
IF  EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[conalte]'))
DROP TABLE [conalte]
GO
/****** Object:  View [dbo].[POZNCON]    Script Date: 07/27/2012 12:49:37 ******/
IF  EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[POZNCON]'))
DROP TABLE [POZNCON]
GO
/****** Object:  View [dbo].[persintr]    Script Date: 07/27/2012 12:49:37 ******/
IF  EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[persintr]'))
DROP TABLE [persintr]
GO
/****** Object:  View [dbo].[facturi]    Script Date: 07/27/2012 12:49:37 ******/
IF  EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[facturi]'))
DROP TABLE [facturi]
GO
/****** Object:  View [dbo].[stocuri]    Script Date: 07/27/2012 12:49:37 ******/
IF  EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[stocuri]'))
DROP TABLE [stocuri]
GO
/****** Object:  View [dbo].[infoconmed]    Script Date: 07/27/2012 12:49:37 ******/
IF  EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[infoconmed]'))
DROP TABLE [infoconmed]
GO
/****** Object:  View [dbo].[pontaj]    Script Date: 07/27/2012 12:49:37 ******/
IF  EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[pontaj]'))
DROP TABLE [pontaj]
GO
/****** Object:  View [dbo].[istpers]    Script Date: 07/27/2012 12:49:37 ******/
IF  EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[istpers]'))
DROP TABLE [istpers]
GO
/****** Object:  View [dbo].[corectii]    Script Date: 07/27/2012 12:49:36 ******/
IF  EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[corectii]'))
DROP TABLE [corectii]
GO
/****** Object:  View [dbo].[concodih]    Script Date: 07/27/2012 12:49:36 ******/
IF  EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[concodih]'))
DROP TABLE [concodih]
GO
/****** Object:  View [dbo].[POZPLIN]    Script Date: 07/27/2012 12:49:37 ******/
IF  EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[POZPLIN]'))
DROP TABLE [POZPLIN]
GO
/****** Object:  View [dbo].[extinfop]    Script Date: 07/27/2012 12:49:36 ******/
IF  EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[extinfop]'))
DROP TABLE [extinfop]
GO
/****** Object:  View [dbo].[realcom]    Script Date: 07/27/2012 12:49:37 ******/
IF  EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[realcom]'))
DROP TABLE [realcom]
GO
/****** Object:  View [dbo].[tichete]    Script Date: 07/27/2012 12:49:37 ******/
IF  EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tichete]'))
DROP TABLE [tichete]
GO
/****** Object:  View [dbo].[conmed]    Script Date: 07/27/2012 12:49:36 ******/
IF  EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[conmed]'))
DROP TABLE [conmed]
GO
/****** Object:  View [dbo].[net]    Script Date: 07/27/2012 12:49:37 ******/
IF  EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[net]'))
DROP TABLE [net]
GO
/****** Object:  View [dbo].[brut]    Script Date: 07/27/2012 12:49:36 ******/
IF  EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[brut]'))
DROP TABLE [brut]
GO

/****** Object:  View [dbo].[Infocorectii]    Script Date: 07/27/2012 12:49:37 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[Infocorectii]'))
DROP VIEW [Infocorectii]
GO
/****** Object:  View [dbo].[facturiE]    Script Date: 07/27/2012 12:49:37 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[facturiE]'))
DROP VIEW [facturiE]
GO
/****** Object:  View [dbo].[tchsal]    Script Date: 07/27/2012 12:49:37 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[tchsal]'))
DROP VIEW [tchsal]
GO
/****** Object:  View [dbo].[POZDOC]    Script Date: 07/27/2012 12:49:37 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[POZDOC]'))
DROP VIEW [POZDOC]
GO
/****** Object:  View [dbo].[POZADOC]    Script Date: 07/27/2012 12:49:37 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[POZADOC]'))
DROP VIEW [POZADOC]
GO
/****** Object:  View [dbo].[ncon]    Script Date: 07/27/2012 12:49:37 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[ncon]'))
DROP VIEW [ncon]
GO
/****** Object:  View [dbo].[extpersintr]    Script Date: 07/27/2012 12:49:37 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[extpersintr]'))
DROP VIEW [extpersintr]
GO
/****** Object:  View [dbo].[avexcep]    Script Date: 07/27/2012 12:49:36 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[avexcep]'))
DROP VIEW [avexcep]
GO
/****** Object:  View [dbo].[adoc]    Script Date: 07/27/2012 12:49:36 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[adoc]'))
DROP VIEW [adoc]
GO
/****** Object:  View [dbo].[plin]    Script Date: 07/27/2012 12:49:37 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[plin]'))
DROP VIEW [plin]
GO
/****** Object:  View [dbo].[resal]    Script Date: 07/27/2012 12:49:37 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[resal]'))
DROP VIEW [resal]
GO
/****** Object:  View [dbo].[pozincon]    Script Date: 07/27/2012 12:49:37 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[pozincon]'))
DROP VIEW [pozincon]
GO
/****** Object:  View [dbo].[conalte]    Script Date: 07/27/2012 12:49:36 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[conalte]'))
DROP VIEW [conalte]
GO
/****** Object:  View [dbo].[POZNCON]    Script Date: 07/27/2012 12:49:37 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[POZNCON]'))
DROP VIEW [POZNCON]
GO
/****** Object:  View [dbo].[persintr]    Script Date: 07/27/2012 12:49:37 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[persintr]'))
DROP VIEW [persintr]
GO
/****** Object:  View [dbo].[facturi]    Script Date: 07/27/2012 12:49:37 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[facturi]'))
DROP VIEW [facturi]
GO
/****** Object:  View [dbo].[stocuri]    Script Date: 07/27/2012 12:49:37 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[stocuri]'))
DROP VIEW [stocuri]
GO
/****** Object:  View [dbo].[infoconmed]    Script Date: 07/27/2012 12:49:37 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[infoconmed]'))
DROP VIEW [infoconmed]
GO
/****** Object:  View [dbo].[pontaj]    Script Date: 07/27/2012 12:49:37 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[pontaj]'))
DROP VIEW [pontaj]
GO
/****** Object:  View [dbo].[istpers]    Script Date: 07/27/2012 12:49:37 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[istpers]'))
DROP VIEW [istpers]
GO
/****** Object:  View [dbo].[corectii]    Script Date: 07/27/2012 12:49:36 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[corectii]'))
DROP VIEW [corectii]
GO
/****** Object:  View [dbo].[concodih]    Script Date: 07/27/2012 12:49:36 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[concodih]'))
DROP VIEW [concodih]
GO
/****** Object:  View [dbo].[POZPLIN]    Script Date: 07/27/2012 12:49:37 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[POZPLIN]'))
DROP VIEW [POZPLIN]
GO
/****** Object:  View [dbo].[extinfop]    Script Date: 07/27/2012 12:49:36 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[extinfop]'))
DROP VIEW [extinfop]
GO
/****** Object:  View [dbo].[realcom]    Script Date: 07/27/2012 12:49:37 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[realcom]'))
DROP VIEW [realcom]
GO
/****** Object:  View [dbo].[tichete]    Script Date: 07/27/2012 12:49:37 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[tichete]'))
DROP VIEW [tichete]
GO
/****** Object:  View [dbo].[conmed]    Script Date: 07/27/2012 12:49:36 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[conmed]'))
DROP VIEW [conmed]
GO
/****** Object:  View [dbo].[net]    Script Date: 07/27/2012 12:49:37 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[net]'))
DROP VIEW [net]
GO
/****** Object:  View [dbo].[brut]    Script Date: 07/27/2012 12:49:36 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[brut]'))
DROP VIEW [brut]
GO
/****** Object:  View [dbo].[adoc]    Script Date: 07/27/2012 12:52:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view  [adoc]  as 

select Subunitate, Tip, Numar_document, Data, Tert, Numar_pozitii, Jurnal, Stare
   from SRVBISTRITA.BISTRITA.dbo.adoc
union all
select Subunitate, Tip, Numar_document, Data, Tert, Numar_pozitii, Jurnal, Stare
	from romfulda.dbo.adoc
GO
/****** Object:  View [dbo].[avexcep]    Script Date: 07/27/2012 12:52:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [avexcep] as

select *
from SRVBISTRITA.BISTRITA.dbo.avexcep  where suma_avans>0
union all
select *
from romfulda.dbo.avexcep where suma_avans>0
GO
/****** Object:  View [dbo].[brut]    Script Date: 07/27/2012 12:52:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [brut] as

select *
from SRVBISTRITA.BISTRITA.dbo.brut  
union 
select *
from romfulda.dbo.brut
GO
/****** Object:  View [dbo].[conalte]    Script Date: 07/27/2012 12:52:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [conalte] as

select *
from SRVBISTRITA.BISTRITA.dbo.conalte 
union all
select *
from romfulda.dbo.conalte
GO
/****** Object:  View [dbo].[concodih]    Script Date: 07/27/2012 12:52:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [concodih] as

select *
from SRVBISTRITA.BISTRITA.dbo.concodih 
union all
select *
from romfulda.dbo.concodih
GO
/****** Object:  View [dbo].[conmed]    Script Date: 07/27/2012 12:52:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [conmed] as

select *
from SRVBISTRITA.BISTRITA.dbo.conmed 
union all
select *
from romfulda.dbo.conmed
GO
/****** Object:  View [dbo].[corectii]    Script Date: 07/27/2012 12:52:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [corectii] as

select *
from SRVBISTRITA.BISTRITA.dbo.corectii 
union all
select *
from romfulda.dbo.corectii
GO
/****** Object:  View [dbo].[extinfop]    Script Date: 07/27/2012 12:52:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [extinfop] as
select distinct  r.* from
(
select *
from SRVBISTRITA.BISTRITA.dbo.extinfop 
union all
select *
from romfulda.dbo.extinfop 
)r
GO
/****** Object:  View [dbo].[extpersintr]    Script Date: 07/27/2012 12:52:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [extpersintr] as

select *
from SRVBISTRITA.BISTRITA.dbo.extpersintr 
union all
select *
from romfulda.dbo.extpersintr
GO
/****** Object:  View [dbo].[facturi]    Script Date: 07/27/2012 12:53:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view  [facturi]  as 

select Subunitate, Loc_de_munca, Tip, Factura, Tert, Data, Data_scadentei, Valoare, TVA_11, TVA_22, Valuta, Curs, Valoare_valuta, Achitat, Sold, Cont_de_tert, Achitat_valuta, Sold_valuta, Comanda, Data_ultimei_achitari
   from SRVBISTRITA.BISTRITA.dbo.facturi
union all
select Subunitate, Loc_de_munca, Tip, Factura, Tert, Data, Data_scadentei, Valoare, TVA_11, TVA_22, Valuta, Curs, Valoare_valuta, Achitat, Sold, Cont_de_tert, Achitat_valuta, Sold_valuta, Comanda, Data_ultimei_achitari
	from romfulda.dbo.facturi
GO
/****** Object:  View [dbo].[infoconmed]    Script Date: 07/27/2012 12:53:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [infoconmed] as

select *
from SRVBISTRITA.BISTRITA.dbo.infoconmed 
union all
select *
from romfulda.dbo.infoconmed
GO
/****** Object:  View [dbo].[Infocorectii]    Script Date: 07/27/2012 12:53:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [Infocorectii] as

select *
from SRVBISTRITA.BISTRITA.dbo.Infocorectii 
union all
select *
from romfulda.dbo.Infocorectii
GO
/****** Object:  View [dbo].[istpers]    Script Date: 07/27/2012 12:53:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [istpers] as

select *
from SRVBISTRITA.BISTRITA.dbo.istpers 
union 
select *
from romfulda.dbo.istpers
GO
/****** Object:  View [dbo].[ncon]    Script Date: 07/27/2012 12:53:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view  [ncon]  as 

select Subunitate, Tip, Numar, Data, Jurnal, Nr_pozitii, Valuta, Curs, Valoare, Valoare_valuta, Stare
   from SRVBISTRITA.BISTRITA.dbo.ncon
union all 
select Subunitate, Tip, Numar, Data, Jurnal, Nr_pozitii, Valuta, Curs, Valoare, Valoare_valuta, Stare
	from romfulda.dbo.ncon
GO
/****** Object:  View [dbo].[net]    Script Date: 07/27/2012 12:53:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [net] as

select *
from SRVBISTRITA.BISTRITA.dbo.net where baza_cas!=0
union 
select *
from romfulda.dbo.net where baza_cas!=0
GO
/****** Object:  View [dbo].[persintr]    Script Date: 07/27/2012 12:53:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [persintr] as

select *
from SRVBISTRITA.BISTRITA.dbo.persintr 
union all
select *
from romfulda.dbo.persintr
GO
/****** Object:  View [dbo].[plin]    Script Date: 07/27/2012 12:53:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view  [plin]  as 

select Subunitate, Cont, Data, Numar, Valuta, Curs, Total_plati, Total_incasari, Ziua, Numar_pozitii, Jurnal, Stare
   from SRVBISTRITA.BISTRITA.dbo.plin
union all 
select Subunitate, Cont, Data, Numar, Valuta, Curs, Total_plati, Total_incasari, Ziua, Numar_pozitii, Jurnal, Stare
	from romfulda.dbo.plin
GO
/****** Object:  View [dbo].[pontaj]    Script Date: 07/27/2012 12:53:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [pontaj] as

select *
from SRVBISTRITA.BISTRITA.dbo.pontaj 
union all
select *
from romfulda.dbo.pontaj
GO
/****** Object:  View [dbo].[POZADOC]    Script Date: 07/27/2012 12:53:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view  [POZADOC]  as 

select Subunitate, Numar_document, Data, Tert, Tip, Factura_stinga, Factura_dreapta, Cont_deb, Cont_cred, Suma, TVA11, TVA22, Utilizator, Data_operarii, Ora_operarii, Numar_pozitie, Tert_beneficiar, Explicatii, Valuta, Curs, Suma_valuta, Cont_dif, suma_dif, Loc_munca, Comanda, Data_fact, Data_scad, Stare, Achit_fact, Dif_TVA, Jurnal
   from SRVBISTRITA.BISTRITA.dbo.POZADOC 
union all
select Subunitate, Numar_document, Data, Tert, Tip, Factura_stinga, Factura_dreapta, Cont_deb, Cont_cred, Suma, TVA11, TVA22, Utilizator, Data_operarii, Ora_operarii, Numar_pozitie, Tert_beneficiar, Explicatii, Valuta, Curs, Suma_valuta, Cont_dif, suma_dif, Loc_munca, Comanda, Data_fact, Data_scad, Stare, Achit_fact, Dif_TVA, Jurnal 
	from romfulda.dbo.POZADOC
GO
/****** Object:  View [dbo].[pozincon]    Script Date: 07/27/2012 12:53:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [pozincon] as 

select *
from SRVBISTRITA.BISTRITA.dbo.pozincon 
	
union all

select *
from romfulda.dbo.pozincon
GO
/****** Object:  View [dbo].[POZNCON]    Script Date: 07/27/2012 12:53:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [POZNCON] as 

select Subunitate,Tip,Numar,Data,Cont_debitor,Cont_creditor,
	Suma,Valuta,Curs,Suma_valuta,Explicatii,Utilizator,
	Data_operarii,Ora_operarii,Nr_pozitie,Loc_munca,
	Comanda,Tert,Jurnal 
from SRVBISTRITA.BISTRITA.dbo.POZNCON 
	
union all

select Subunitate,Tip,Numar,Data,Cont_debitor,Cont_creditor,
	Suma,Valuta,Curs,Suma_valuta,Explicatii,Utilizator,
	Data_operarii,Ora_operarii,Nr_pozitie,Loc_munca,
	Comanda,Tert,Jurnal 
from romfulda.dbo.POZNCON
GO
/****** Object:  View [dbo].[POZPLIN]    Script Date: 07/27/2012 12:53:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [POZPLIN] as 

select Subunitate,Cont,Data,Numar,Plata_incasare,Tert,
	Factura,Cont_corespondent,Suma,Valuta,Curs,
	Suma_valuta,Curs_la_valuta_facturii,TVA11,TVA22,
	Explicatii,Loc_de_munca,Comanda,Utilizator,
	Data_operarii,Ora_operarii,Numar_pozitie,Cont_dif,
	Suma_dif,Achit_fact,Jurnal 
from SRVBISTRITA.BISTRITA.dbo.POZPLIN 

union all

select Subunitate,Cont,Data,Numar,Plata_incasare,Tert,
	Factura,Cont_corespondent,Suma,Valuta,Curs,
	Suma_valuta,Curs_la_valuta_facturii,TVA11,TVA22,
	Explicatii,Loc_de_munca,Comanda,Utilizator,
	Data_operarii,Ora_operarii,Numar_pozitie,Cont_dif,
	Suma_dif,Achit_fact,Jurnal  
from romfulda.dbo.POZPLIN
GO
/****** Object:  View [dbo].[realcom]    Script Date: 07/27/2012 12:53:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [realcom] as

select *
from SRVBISTRITA.BISTRITA.dbo.realcom 
union all
select *
from romfulda.dbo.realcom
GO
/****** Object:  View [dbo].[resal]    Script Date: 07/27/2012 12:53:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [resal] as

select *
from SRVBISTRITA.BISTRITA.dbo.resal 
union all
select *
from romfulda.dbo.resal
GO
/****** Object:  View [dbo].[stocuri]    Script Date: 07/27/2012 12:53:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view  [stocuri]  as 

select Subunitate, Tip_gestiune, Cod_gestiune, Cod, Data, Cod_intrare, Pret, Stoc_initial, Intrari, Iesiri, Data_ultimei_iesiri, Stoc, Cont, Data_expirarii, Stoc_ce_se_calculeaza, Are_documente_in_perioada, TVA_neexigibil, Pret_cu_amanuntul, Locatie, Pret_vanzare, Loc_de_munca, Comanda, Contract, Furnizor, Lot, Stoc_initial_UM2, Intrari_UM2, Iesiri_UM2, Stoc_UM2, Stoc2_ce_se_calculeaza, Val1, Alfa1, Data1
   from SRVBISTRITA.BISTRITA.dbo.stocuri
union all 
select Subunitate, Tip_gestiune, Cod_gestiune, Cod, Data, Cod_intrare, Pret, Stoc_initial, Intrari, Iesiri, Data_ultimei_iesiri, Stoc, Cont, Data_expirarii, Stoc_ce_se_calculeaza, Are_documente_in_perioada, TVA_neexigibil, Pret_cu_amanuntul, Locatie, Pret_vanzare, Loc_de_munca, Comanda, Contract, Furnizor, Lot, Stoc_initial_UM2, Intrari_UM2, Iesiri_UM2, Stoc_UM2, Stoc2_ce_se_calculeaza, Val1, Alfa1, Data1
	from romfulda.dbo.stocuri
GO
/****** Object:  View [dbo].[POZDOC]    Script Date: 07/27/2012 12:53:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [POZDOC] as 
select Subunitate,Tip,Numar,Cod,Data,Gestiune,Cantitate,
	Pret_valuta,Pret_de_stoc,Adaos,Pret_vanzare,
	Pret_cu_amanuntul,TVA_deductibil,Cota_TVA,
	Utilizator,Data_operarii,Ora_operarii,Cod_intrare,
	Cont_de_stoc,Cont_corespondent,TVA_neexigibil,
	Pret_amanunt_predator,Tip_miscare,Locatie,
	Data_expirarii,Numar_pozitie,Loc_de_munca,Comanda,
	Barcod,Cont_intermediar,Cont_venituri,Discount,
	Tert,Factura,Gestiune_primitoare,Numar_DVI,Stare,
	Grupa,Cont_factura,Valuta,Curs,Data_facturii,
	Data_scadentei,Procent_vama,Suprataxe_vama,
	Accize_cumparare,Accize_datorate,Contract,Jurnal 
from SRVBISTRITA.BISTRITA.dbo.POZDOC 

union all

select Subunitate,Tip,Numar,Cod,Data,Gestiune,Cantitate,
	Pret_valuta,Pret_de_stoc,Adaos,Pret_vanzare,
	Pret_cu_amanuntul,TVA_deductibil,Cota_TVA,
	Utilizator,Data_operarii,Ora_operarii,Cod_intrare,
	Cont_de_stoc,Cont_corespondent,TVA_neexigibil,
	Pret_amanunt_predator,Tip_miscare,Locatie,
	Data_expirarii,Numar_pozitie,Loc_de_munca,Comanda,
	Barcod,Cont_intermediar,Cont_venituri,Discount,
	Tert,Factura,Gestiune_primitoare,Numar_DVI,Stare,
	Grupa,Cont_factura,Valuta,Curs,Data_facturii,
	Data_scadentei,Procent_vama,Suprataxe_vama,
	Accize_cumparare,Accize_datorate,Contract,Jurnal 
from ROMFULDA..POZDOC
GO
/****** Object:  View [dbo].[tichete]    Script Date: 07/27/2012 12:53:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [tichete] as

select *
from SRVBISTRITA.BISTRITA.dbo.tichete 
union all
select *
from romfulda.dbo.tichete
GO
/****** Object:  View [dbo].[tchsal]    Script Date: 07/27/2012 12:53:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/* view de cheltuieli salariale*/
create view [tchsal] as
select year(a.Data) as Anul, month(a.Data) as Luna, a.Marca, b.nume, a.Loc_de_munca, a.VENIT_TOTAL as Venit, 
a.Pensie_suplimentara_3 as CAS_indiv, a.Somaj_1 as Somaj_1, a.Impozit as Impozit, 
a.Somaj_5 as Somaj_5, a.Fond_de_risc_1 as Fonduri, a.Camera_de_Munca_1 as Camera_de_munca, a.Asig_sanatate_pl_unitate as Asigurari_unitate, 
a.Asig_sanatate_din_impozit+a.Asig_sanatate_din_net+a.Asig_sanatate_din_CAS as As_sanatate, a.CAS,
isnull((select Ind_c_medical_CAS+CMCAS from brut where marca=a.marca and Loc_de_munca=a.Loc_de_munca and year(data) =year(a.data)  and month(data)=month(a.data)),0) as CM_CAS, 
isnull((select Ind_c_medical_unitate+CMunitate from brut where marca=a.marca and Loc_de_munca=a.Loc_de_munca and year(data) =year(a.data)  and month(data)=month(a.data)),0) as CM_unit 
from net a, personal b
where a.marca=b.marca
GO
/****** Object:  View [dbo].[facturiE]    Script Date: 07/27/2012 12:53:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [facturiE] as 
select 'F' as Ce, Subunitate, Loc_de_munca, Tip, Factura, Tert, Data, Data_scadentei, Valoare, TVA_11, TVA_22, Valuta, Curs, Valoare_valuta, Achitat, Sold, Cont_de_tert, Achitat_valuta, Sold_valuta, Comanda, Data_ultimei_achitari from facturi 
union all
select 'E', Subunitate, Loc_de_munca, (case when tip='I' then 0x46 else 0x54 end), Nr_efect, Tert, Data, Data_scadentei, Valoare, 0, 0, Valuta, Curs, Valoare_valuta, Decontat, Sold, Cont, Decontat_valuta, Sold_valuta, Comanda, Data_decontarii from efecte
GO
