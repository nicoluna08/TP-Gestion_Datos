
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
		IF OBJECT_ID('Los_Pumas.FuncionalidadxRol') IS NOT NULL
		DROP TABLE [Los_Pumas].[FuncionalidadxRol]
		
		--Procedimientos
		IF OBJECT_ID('Los_Pumas.Roles_sel') IS NOT NULL
		DROP PROCEDURE [Los_Pumas].[Roles_Sel]
		IF OBJECT_ID('Los_Pumas.Roles_Ins') IS NOT NULL
		DROP PROCEDURE [Los_Pumas].[Roles_Ins]
		IF OBJECT_ID('Los_Pumas.FuncionalidadxRoles_Ins') IS NOT NULL
		DROP PROCEDURE [Los_Pumas].[FuncionalidadxRoles_Ins]
		IF OBJECT_ID('Los_Pumas.FuncionalidadxRoles_Del') IS NOT NULL
		DROP PROCEDURE [Los_Pumas].[FuncionalidadxRoles_Del]
		IF OBJECT_ID('Los_Pumas.FuncionalidadxRoles_Sel') IS NOT NULL
		DROP PROCEDURE [Los_Pumas].[FuncionalidadxRoles_Sel]
		IF OBJECT_ID('Los_Pumas.Roles_Upd') IS NOT NULL
		DROP PROCEDURE [Los_Pumas].[Roles_Upd]
		IF OBJECT_ID('Los_Pumas.Roles_Baja') IS NOT NULL
		DROP PROCEDURE [Los_Pumas].[Roles_Baja]
		IF OBJECT_ID('Los_Pumas.Roles_Habilitado') IS NOT NULL
		DROP PROCEDURE [Los_Pumas].[Roles_Habilitado]
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

CREATE TABLE [Los_Pumas].[FuncionalidadxRol]
	(
	 [Rol_Nombre]	nvarchar(150)
	,[Funcionalidad]	nvarchar(200)
    )
GO


CREATE PROCEDURE [Los_Pumas].[Roles_Sel]
as
begin
 select Rol_id, Nombre from Los_Pumas.Rol

end
go


CREATE PROCEDURE [Los_Pumas].[Roles_Ins]
@nombre nvarchar(150),
@estado bit
as
begin
 insert into Los_Pumas.Rol values (@nombre,@estado,'0')

end
go

CREATE PROCEDURE [Los_Pumas].[FuncionalidadxRoles_Ins]
@nombre nvarchar(150),
@funcionalidad nvarchar(200)
as
begin
 insert into Los_Pumas.FuncionalidadxRol values (@nombre,@funcionalidad)

end
go

CREATE PROCEDURE [Los_Pumas].[FuncionalidadxRoles_Del]
@nombre nvarchar(150),
@funcionalidad nvarchar(200)
as
begin
 delete from Los_Pumas.FuncionalidadxRol where  Rol_Nombre =@nombre and Funcionalidad = @funcionalidad

end
go

CREATE PROCEDURE [Los_Pumas].[FuncionalidadxRoles_Sel]
@nombre nvarchar(150)
as
begin
 select Rol_Nombre , Funcionalidad from Los_Pumas.FuncionalidadxRol where Rol_Nombre =  @nombre 

end
go

CREATE PROCEDURE [Los_Pumas].[Roles_Upd]
@nombre nvarchar(150),
@nombreAct nvarchar(150),
@inhabilitado bit,
@baja bit

as
begin
 update Los_Pumas.Rol set Nombre = @nombreAct, Habilitado = @inhabilitado, Baja = @baja where Nombre = @nombre
end
go

CREATE PROCEDURE [Los_Pumas].[Roles_Baja]
@nombre nvarchar(150)
as
begin
 select Baja from  Los_Pumas.Rol where Nombre = @nombre
end
go

CREATE PROCEDURE [Los_Pumas].[Roles_Habilitado]
@nombre nvarchar(150)
as
begin
 select Habilitado from  Los_Pumas.Rol where Nombre = @nombre
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




