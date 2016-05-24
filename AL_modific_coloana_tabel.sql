
SELECT * 
FROM sys.columns c JOIN sys.index_columns i ON i.column_id = c.column_id and i.object_id = c.object_id 
	JOIN sys.objects o ON o.object_id = c.object_id
WHERE o.type = 'U' and o.name = 'Localitati' and c.name = 'cod_oras'