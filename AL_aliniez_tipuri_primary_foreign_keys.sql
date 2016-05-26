
SELECT 'DROP INDEX ' + QUOTENAME(SCHEMA_NAME(t.schema_id),'"') + '.' + QUOTENAME(t.name, '"') + '.' + QUOTENAME(x.name, '"'),
	*
FROM sys.columns c 
	INNER JOIN sys.index_columns i ON i.column_id = c.column_id and i.object_id = c.object_id 
	INNER JOIN sys.indexes x ON x.index_id = i.index_id AND x.object_id = i.object_id
	INNER JOIN sys.tables t ON t.object_id = c.object_id
WHERE t.name = 'localitati' and c.name in ('cod_oras')
	AND x.is_primary_key=0 and x.is_unique_constraint=0
create nonclustered index test on localitati (cod_oras,cod_judet)
exec script_table_keys 'localitati'

-- Drop Candidate Keys
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
DROP INDEX [cod_localitate]
ON [dbo].[Localitati];

alter table al_centre_colectare with check check constraint FK_AL_Centre_colectare_Localitati
ALTER TABLE [dbo].[AL_Centre_colectare]
DROP CONSTRAINT [FK_AL_Centre_colectare_Localitati];
alter index TEST ON dbo.localitati DISABLE
alter index judet_oras ON dbo.localitati DISABLE

alter table localitati alter column cod_oras varchar(8) NOT NULL

-- Create Candidate Keys
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE UNIQUE CLUSTERED INDEX [cod_localitate]
ON [dbo].[Localitati]
( 
	[cod_oras]
)
WITH 
(
	PAD_INDEX = OFF,
	IGNORE_DUP_KEY = OFF,
	ALLOW_ROW_LOCKS = ON,
	ALLOW_PAGE_LOCKS = ON,
	DATA_COMPRESSION = NONE
) 
ON [PRIMARY];