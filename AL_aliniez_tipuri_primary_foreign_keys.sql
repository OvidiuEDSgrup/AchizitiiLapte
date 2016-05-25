
SELECT 'DROP INDEX ' + QUOTENAME(SCHEMA_NAME(t.schema_id),'"') + '.' + QUOTENAME(t.name, '"') + '.' + QUOTENAME(x.name, '"'),
	*
FROM sys.columns c 
	INNER JOIN sys.index_columns i ON i.column_id = c.column_id and i.object_id = c.object_id 
	INNER JOIN sys.indexes x ON x.index_id = i.index_id AND x.object_id = i.object_id
	INNER JOIN sys.tables t ON t.object_id = c.object_id
WHERE t.name = 'Localitati' and c.name = 'cod_oras'
	AND x.is_primary_key=0 and x.is_unique_constraint=0