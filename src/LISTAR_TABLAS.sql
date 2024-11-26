USE MiBaseDeDatos; -- Reemplaza 'MiBaseDeDatos' con el nombre de tu base de datos
GO
  
SELECT 
    TABLE_SCHEMA AS [Schema], 
    TABLE_NAME AS [TableName]
FROM 
    INFORMATION_SCHEMA.TABLES
WHERE 
    TABLE_TYPE = 'BASE TABLE'
    AND TABLE_NAME != 'sysdiagrams' -- Excluir la tabla 'sysdiagrams'
ORDER BY 
    TABLE_SCHEMA, 
    TABLE_NAME;
