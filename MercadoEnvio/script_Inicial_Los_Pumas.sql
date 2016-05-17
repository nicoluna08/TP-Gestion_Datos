
use [GD1C2016]

GO
/*--------------Validacion de existencia de tablas y esquema------------------*/
BEGIN
		--tablas
		IF OBJECT_ID('Los_Pumas.Usuarios') IS NOT NULL
		DROP TABLE [Los_Pumas].[Usuarios]
		IF OBJECT_ID('Los_Pumas.Rol') IS NOT NULL
		DROP TABLE [Los_Pumas].[Rol]
		IF OBJECT_ID('Los_Pumas.Rol_Usuario') IS NOT NULL
		DROP TABLE [Los_Pumas].[Rol_Usuario]
		
		--Procedimientos
		IF OBJECT_ID('Los_Pumas.Roles_sel') IS NOT NULL
		DROP PROCEDURE [Los_Pumas].[Roles_Sel]

END
GO

DROP SCHEMA [Los_Pumas]
go
CREATE SCHEMA [Los_Pumas] --AUTHORIZATION [gd]
GO




CREATE TABLE [Los_Pumas].[Rol]
	(
	 [Rol_id]	int  identity
	,[Nombre]	nvarchar(100)
    ,[Habilitado]	bit
    ,[Baja]	bit
    
	)
GO

CREATE TABLE [Los_Pumas].[Rol_Usuario]
	(
	 [Rol_id]	int
	,[User_id]	int
    ,[Baja]	bit
    )
GO



CREATE PROCEDURE [Los_Pumas].[Roles_Sel]
as
begin
 select Rol_id, Nombre from Los_Pumas.Rol

end
go

    INSERT INTO [Los_Pumas].[Rol]

	Select	'Empresa', 1,0
	Union all
	Select	'Administrativo', 1,0
	Union all
	Select	'Cliente', 1,0
GO


ALTER TABLE Los_Pumas.Rol ADD CONSTRAINT
	PK_Rol PRIMARY KEY CLUSTERED 
	(
	Rol_id
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO




