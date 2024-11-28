USE NOMBRE_DE_TU_BASE_DE_DATOS; --Cambia por el nombre de la base de datos que quieres analizar
GO

SELECT 
    SCHEMA_NAME(schema_id) AS [Schema], 
    name AS [ProcedureName]
FROM 
    sys.procedures
WHERE 
    SCHEMA_NAME(schema_id) NOT IN ('sys', 'INFORMATION_SCHEMA')
    AND name NOT LIKE 'sp_%diagram%' 
    AND name NOT IN ('SP_CREAR_VSE_SDT1')
ORDER BY 
    [Schema], 
    [ProcedureName];
