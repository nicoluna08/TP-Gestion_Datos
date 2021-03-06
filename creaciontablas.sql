USE [master]
GO
/****** Object:  Database [GD1C2016]    Script Date: 5/27/2016 11:56:53 AM ******/
CREATE DATABASE [GD1C2016]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GD1C2016', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLSERVER2012\MSSQL\DATA\GD1C2016.mdf' , SIZE = 359424KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'GD1C2016_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLSERVER2012\MSSQL\DATA\GD1C2016_log.ldf' , SIZE = 1280KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [GD1C2016] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GD1C2016].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GD1C2016] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GD1C2016] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GD1C2016] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GD1C2016] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GD1C2016] SET ARITHABORT OFF 
GO
ALTER DATABASE [GD1C2016] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [GD1C2016] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [GD1C2016] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GD1C2016] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GD1C2016] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GD1C2016] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GD1C2016] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GD1C2016] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GD1C2016] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GD1C2016] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GD1C2016] SET  DISABLE_BROKER 
GO
ALTER DATABASE [GD1C2016] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GD1C2016] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GD1C2016] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GD1C2016] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GD1C2016] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GD1C2016] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GD1C2016] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GD1C2016] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [GD1C2016] SET  MULTI_USER 
GO
ALTER DATABASE [GD1C2016] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GD1C2016] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GD1C2016] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GD1C2016] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [GD1C2016]
GO
/****** Object:  User [gd]    Script Date: 5/27/2016 11:56:53 AM ******/
CREATE USER [gd] FOR LOGIN [gd] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Schema [gd_esquema]    Script Date: 5/27/2016 11:56:53 AM ******/
CREATE SCHEMA [gd_esquema]
GO
/****** Object:  Table [dbo].[Calificacion]    Script Date: 5/27/2016 11:56:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calificacion](
	[Compra_id] [int] NOT NULL,
	[Calif_estrellas] [numeric](18, 2) NOT NULL,
	[Calif_descripcion] [nvarchar](255) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Compra]    Script Date: 5/27/2016 11:56:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compra](
	[Compra_id] [int] IDENTITY(1,1) NOT NULL,
	[Pub_id] [int] NOT NULL,
	[User_id] [int] NOT NULL,
	[Compra_cantidad] [numeric](18, 0) NOT NULL,
	[Compra_fecha] [datetime] NOT NULL,
 CONSTRAINT [PK_Compra] PRIMARY KEY CLUSTERED 
(
	[Compra_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Domicilio]    Script Date: 5/27/2016 11:56:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Domicilio](
	[Dom_id] [int] IDENTITY(1,1) NOT NULL,
	[Dom_calle] [nvarchar](255) NOT NULL,
	[Dom_nro] [numeric](18, 0) NOT NULL,
	[Dom_piso] [numeric](18, 0) NULL,
	[Dom_depto] [nvarchar](50) NULL,
	[Dom_cp] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Domicilio] PRIMARY KEY CLUSTERED 
(
	[Dom_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Empresa]    Script Date: 5/27/2016 11:56:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empresa](
	[User_id] [int] NOT NULL,
	[Emp_cuit] [nvarchar](50) NOT NULL,
	[Emp_razonsocial] [nvarchar](255) NOT NULL,
	[Emp_fechacreacion] [datetime] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Envio]    Script Date: 5/27/2016 11:56:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Envio](
	[Compra_id] [int] NOT NULL,
	[Dom_id] [int] NOT NULL,
	[Envio_horario] [datetime] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Factura]    Script Date: 5/27/2016 11:56:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factura](
	[Fact_id] [int] IDENTITY(1,1) NOT NULL,
	[Fact_fecha] [datetime] NOT NULL,
	[Fact_total] [numeric](18, 2) NULL,
	[User_id] [int] NOT NULL,
 CONSTRAINT [PK_Factura] PRIMARY KEY CLUSTERED 
(
	[Fact_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Item_Factura]    Script Date: 5/27/2016 11:56:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item_Factura](
	[Itemf_id] [int] IDENTITY(1,1) NOT NULL,
	[Fact_id] [int] NOT NULL,
	[Itemf_monto] [numeric](18, 2) NOT NULL,
	[Itemf_cantidad] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_Item_Factura] PRIMARY KEY CLUSTERED 
(
	[Itemf_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Oferta]    Script Date: 5/27/2016 11:56:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Oferta](
	[Oferta_id] [int] NOT NULL,
	[User_id] [int] NOT NULL,
	[Pub_id] [int] NOT NULL,
	[Oferta_valor] [numeric](18, 2) NOT NULL,
	[Oferta_fecha] [datetime] NOT NULL,
 CONSTRAINT [PK_Oferta] PRIMARY KEY CLUSTERED 
(
	[Oferta_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Persona]    Script Date: 5/27/2016 11:56:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persona](
	[User_id] [int] NOT NULL,
	[Pers_dni] [numeric](18, 0) NOT NULL,
	[Pers_nombre] [nvarchar](255) NOT NULL,
	[Pers_apellido] [nvarchar](255) NOT NULL,
	[Pers_fecnac] [datetime] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Preguntas]    Script Date: 5/27/2016 11:56:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Preguntas](
	[Preg_id] [int] IDENTITY(1,1) NOT NULL,
	[Pub_id] [int] NOT NULL,
	[User_id] [int] NOT NULL,
	[Preg_detalle] [nvarchar](255) NOT NULL,
	[Preg_fecha] [datetime] NOT NULL,
 CONSTRAINT [PK_Preguntas] PRIMARY KEY CLUSTERED 
(
	[Preg_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Publicacion]    Script Date: 5/27/2016 11:56:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Publicacion](
	[Pub_id] [int] IDENTITY(1,1) NOT NULL,
	[User_id] [int] NOT NULL,
	[Pub_estado] [nchar](255) NOT NULL,
	[Pub_descripcion] [nvarchar](255) NOT NULL,
	[Pub_stock] [numeric](18, 0) NOT NULL,
	[Pub_fechainicio] [datetime] NOT NULL,
	[Pub_fechafin] [datetime] NOT NULL,
	[Pub_precio] [numeric](18, 2) NOT NULL,
	[Pub_tipo] [nvarchar](255) NOT NULL,
	[Visib_id] [int] NOT NULL,
	[Rubro_id] [int] NOT NULL,
 CONSTRAINT [PK_Publicacion] PRIMARY KEY CLUSTERED 
(
	[Pub_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rubro]    Script Date: 5/27/2016 11:56:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rubro](
	[Rubro_id] [int] IDENTITY(1,1) NOT NULL,
	[Rubro_descripcion] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Rubro] PRIMARY KEY CLUSTERED 
(
	[Rubro_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 5/27/2016 11:56:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[User_id] [int] IDENTITY(1,1) NOT NULL,
	[User_nombredeusuario] [nvarchar](50) NOT NULL,
	[User_password] [nvarchar](50) NOT NULL,
	[Dom_id] [int] NOT NULL,
	[User_tipo] [tinyint] NOT NULL,
	[User_mail] [nvarchar](50) NOT NULL,
	[User_estado] [tinyint] NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[User_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Vibilidad]    Script Date: 5/27/2016 11:56:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Vibilidad](
	[Visib_id] [int] IDENTITY(1,1) NOT NULL,
	[Visib_precio] [numeric](18, 2) NOT NULL,
	[Visib_nombre] [varchar](50) NOT NULL,
	[Visib_porcentajecompra] [numeric](18, 2) NOT NULL,
	[Visib_porcentajeenvio] [numeric](18, 2) NOT NULL,
	[Visib_visibilidad] [tinyint] NOT NULL,
 CONSTRAINT [PK_Vibilidad] PRIMARY KEY CLUSTERED 
(
	[Visib_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [gd_esquema].[Maestra]    Script Date: 5/27/2016 11:56:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gd_esquema].[Maestra](
	[Publ_Cli_Dni] [numeric](18, 0) NULL,
	[Publ_Cli_Apeliido] [nvarchar](255) NULL,
	[Publ_Cli_Nombre] [nvarchar](255) NULL,
	[Publ_Cli_Fecha_Nac] [datetime] NULL,
	[Publ_Cli_Mail] [nvarchar](255) NULL,
	[Publ_Cli_Dom_Calle] [nvarchar](255) NULL,
	[Publ_Cli_Nro_Calle] [numeric](18, 0) NULL,
	[Publ_Cli_Piso] [numeric](18, 0) NULL,
	[Publ_Cli_Depto] [nvarchar](50) NULL,
	[Publ_Cli_Cod_Postal] [nvarchar](50) NULL,
	[Publ_Empresa_Razon_Social] [nvarchar](255) NULL,
	[Publ_Empresa_Cuit] [nvarchar](50) NULL,
	[Publ_Empresa_Fecha_Creacion] [datetime] NULL,
	[Publ_Empresa_Mail] [nvarchar](50) NULL,
	[Publ_Empresa_Dom_Calle] [nvarchar](100) NULL,
	[Publ_Empresa_Nro_Calle] [numeric](18, 0) NULL,
	[Publ_Empresa_Piso] [numeric](18, 0) NULL,
	[Publ_Empresa_Depto] [nvarchar](50) NULL,
	[Publ_Empresa_Cod_Postal] [nvarchar](50) NULL,
	[Publicacion_Cod] [numeric](18, 0) NULL,
	[Publicacion_Descripcion] [nvarchar](255) NULL,
	[Publicacion_Stock] [numeric](18, 0) NULL,
	[Publicacion_Fecha] [datetime] NULL,
	[Publicacion_Fecha_Venc] [datetime] NULL,
	[Publicacion_Precio] [numeric](18, 2) NULL,
	[Publicacion_Tipo] [nvarchar](255) NULL,
	[Publicacion_Visibilidad_Cod] [numeric](18, 0) NULL,
	[Publicacion_Visibilidad_Desc] [nvarchar](255) NULL,
	[Publicacion_Visibilidad_Precio] [numeric](18, 2) NULL,
	[Publicacion_Visibilidad_Porcentaje] [numeric](18, 2) NULL,
	[Publicacion_Estado] [nvarchar](255) NULL,
	[Publicacion_Rubro_Descripcion] [nvarchar](255) NULL,
	[Cli_Dni] [numeric](18, 0) NULL,
	[Cli_Apeliido] [nvarchar](255) NULL,
	[Cli_Nombre] [nvarchar](255) NULL,
	[Cli_Fecha_Nac] [datetime] NULL,
	[Cli_Mail] [nvarchar](255) NULL,
	[Cli_Dom_Calle] [nvarchar](255) NULL,
	[Cli_Nro_Calle] [numeric](18, 0) NULL,
	[Cli_Piso] [numeric](18, 0) NULL,
	[Cli_Depto] [nvarchar](50) NULL,
	[Cli_Cod_Postal] [nvarchar](50) NULL,
	[Compra_Fecha] [datetime] NULL,
	[Compra_Cantidad] [numeric](18, 0) NULL,
	[Oferta_Fecha] [datetime] NULL,
	[Oferta_Monto] [numeric](18, 2) NULL,
	[Calificacion_Codigo] [numeric](18, 0) NULL,
	[Calificacion_Cant_Estrellas] [numeric](18, 0) NULL,
	[Calificacion_Descripcion] [nvarchar](255) NULL,
	[Item_Factura_Monto] [numeric](18, 2) NULL,
	[Item_Factura_Cantidad] [numeric](18, 0) NULL,
	[Factura_Nro] [numeric](18, 0) NULL,
	[Factura_Fecha] [datetime] NULL,
	[Factura_Total] [numeric](18, 2) NULL,
	[Forma_Pago_Desc] [nvarchar](255) NULL
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Calificacion]  WITH CHECK ADD  CONSTRAINT [FK_Calificacion_Compra] FOREIGN KEY([Compra_id])
REFERENCES [dbo].[Compra] ([Compra_id])
GO
ALTER TABLE [dbo].[Calificacion] CHECK CONSTRAINT [FK_Calificacion_Compra]
GO
ALTER TABLE [dbo].[Compra]  WITH CHECK ADD  CONSTRAINT [FK_Compra_Publicacion] FOREIGN KEY([Pub_id])
REFERENCES [dbo].[Publicacion] ([Pub_id])
GO
ALTER TABLE [dbo].[Compra] CHECK CONSTRAINT [FK_Compra_Publicacion]
GO
ALTER TABLE [dbo].[Compra]  WITH CHECK ADD  CONSTRAINT [FK_Compra_Usuario] FOREIGN KEY([User_id])
REFERENCES [dbo].[Usuario] ([User_id])
GO
ALTER TABLE [dbo].[Compra] CHECK CONSTRAINT [FK_Compra_Usuario]
GO
ALTER TABLE [dbo].[Envio]  WITH CHECK ADD  CONSTRAINT [FK_Envio_Compra] FOREIGN KEY([Compra_id])
REFERENCES [dbo].[Compra] ([Compra_id])
GO
ALTER TABLE [dbo].[Envio] CHECK CONSTRAINT [FK_Envio_Compra]
GO
ALTER TABLE [dbo].[Envio]  WITH CHECK ADD  CONSTRAINT [FK_Envio_Domicilio] FOREIGN KEY([Dom_id])
REFERENCES [dbo].[Domicilio] ([Dom_id])
GO
ALTER TABLE [dbo].[Envio] CHECK CONSTRAINT [FK_Envio_Domicilio]
GO
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Usuario] FOREIGN KEY([User_id])
REFERENCES [dbo].[Usuario] ([User_id])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Usuario]
GO
ALTER TABLE [dbo].[Item_Factura]  WITH CHECK ADD  CONSTRAINT [FK_Item_Factura_Factura] FOREIGN KEY([Fact_id])
REFERENCES [dbo].[Factura] ([Fact_id])
GO
ALTER TABLE [dbo].[Item_Factura] CHECK CONSTRAINT [FK_Item_Factura_Factura]
GO
ALTER TABLE [dbo].[Oferta]  WITH CHECK ADD  CONSTRAINT [FK_Oferta_Publicacion] FOREIGN KEY([Pub_id])
REFERENCES [dbo].[Publicacion] ([Pub_id])
GO
ALTER TABLE [dbo].[Oferta] CHECK CONSTRAINT [FK_Oferta_Publicacion]
GO
ALTER TABLE [dbo].[Oferta]  WITH CHECK ADD  CONSTRAINT [FK_Oferta_Usuario] FOREIGN KEY([User_id])
REFERENCES [dbo].[Usuario] ([User_id])
GO
ALTER TABLE [dbo].[Oferta] CHECK CONSTRAINT [FK_Oferta_Usuario]
GO
ALTER TABLE [dbo].[Preguntas]  WITH CHECK ADD  CONSTRAINT [FK_Preguntas_Publicacion] FOREIGN KEY([Pub_id])
REFERENCES [dbo].[Publicacion] ([Pub_id])
GO
ALTER TABLE [dbo].[Preguntas] CHECK CONSTRAINT [FK_Preguntas_Publicacion]
GO
ALTER TABLE [dbo].[Preguntas]  WITH CHECK ADD  CONSTRAINT [FK_Preguntas_Usuario] FOREIGN KEY([User_id])
REFERENCES [dbo].[Usuario] ([User_id])
GO
ALTER TABLE [dbo].[Preguntas] CHECK CONSTRAINT [FK_Preguntas_Usuario]
GO
ALTER TABLE [dbo].[Publicacion]  WITH CHECK ADD  CONSTRAINT [FK_Publicacion_Rubro] FOREIGN KEY([Rubro_id])
REFERENCES [dbo].[Rubro] ([Rubro_id])
GO
ALTER TABLE [dbo].[Publicacion] CHECK CONSTRAINT [FK_Publicacion_Rubro]
GO
ALTER TABLE [dbo].[Publicacion]  WITH CHECK ADD  CONSTRAINT [FK_Publicacion_Usuario] FOREIGN KEY([User_id])
REFERENCES [dbo].[Usuario] ([User_id])
GO
ALTER TABLE [dbo].[Publicacion] CHECK CONSTRAINT [FK_Publicacion_Usuario]
GO
ALTER TABLE [dbo].[Publicacion]  WITH CHECK ADD  CONSTRAINT [FK_Publicacion_Vibilidad] FOREIGN KEY([Visib_id])
REFERENCES [dbo].[Vibilidad] ([Visib_id])
GO
ALTER TABLE [dbo].[Publicacion] CHECK CONSTRAINT [FK_Publicacion_Vibilidad]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Domicilio] FOREIGN KEY([Dom_id])
REFERENCES [dbo].[Domicilio] ([Dom_id])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Domicilio]
GO
USE [master]
GO
ALTER DATABASE [GD1C2016] SET  READ_WRITE 
GO
