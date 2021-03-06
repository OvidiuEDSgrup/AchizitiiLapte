IF EXISTS (SELECT 1 FROM sysobjects WHERE NAME = 'ProdLapte')
	AND NOT EXISTS (SELECT 1 FROM syscolumns sc, sysobjects so WHERE so.id = sc.id AND so.NAME = 'ProdLapte' AND sc.NAME = 'nr_contr')
begin
	alter table ProdLapte add nr_contr varchar(20)
end

IF EXISTS (SELECT 1 FROM sysobjects WHERE NAME = 'ProdLapte')
	AND NOT EXISTS (SELECT 1 FROM syscolumns sc, sysobjects so WHERE so.id = sc.id AND so.NAME = 'ProdLapte' AND sc.NAME = 'data_contr')
begin
	alter table ProdLapte add data_contr datetime2(0)
end

IF EXISTS (SELECT 1 FROM sysobjects WHERE NAME = 'ProdLapte')
	AND NOT EXISTS (SELECT 1 FROM syscolumns sc, sysobjects so WHERE so.id = sc.id AND so.NAME = 'ProdLapte' AND sc.NAME = 'valabil_contr')
begin
	alter table ProdLapte add valabil_contr datetime2(0)
end

IF EXISTS (SELECT 1 FROM sysobjects WHERE NAME = 'ProdLapte')
	AND NOT EXISTS (SELECT 1 FROM syscolumns sc, sysobjects so WHERE so.id = sc.id AND so.NAME = 'ProdLapte' AND sc.NAME = 'cant_contr')
begin
	alter table ProdLapte add cant_contr decimal(12,2)
end

IF EXISTS (SELECT 1 FROM sysobjects WHERE NAME = 'ProdLapte')
	AND NOT EXISTS (SELECT 1 FROM syscolumns sc, sysobjects so WHERE so.id = sc.id AND so.NAME = 'ProdLapte' AND sc.NAME = 'cont_banca')
begin
	alter table ProdLapte add cont_banca varchar(35)
end

IF EXISTS (SELECT 1 FROM sysobjects WHERE NAME = 'ProdLapte')
	AND NOT EXISTS (SELECT 1 FROM syscolumns sc, sysobjects so WHERE so.id = sc.id AND so.NAME = 'ProdLapte' AND sc.NAME = 'banca')
begin
	alter table ProdLapte add banca varchar(20)
end