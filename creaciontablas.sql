USE [GD1C2016]
GO
/****** Object:  Table [dbo].[Domicilio]    Script Date: 5/19/2016 11:35:26 PM ******/
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
/****** Object:  Table [dbo].[Empresa]    Script Date: 5/19/2016 11:35:26 PM ******/
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
/****** Object:  Table [dbo].[Factura]    Script Date: 5/19/2016 11:35:26 PM ******/
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
/****** Object:  Table [dbo].[Item_Factura]    Script Date: 5/19/2016 11:35:26 PM ******/
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
/****** Object:  Table [dbo].[Persona]    Script Date: 5/19/2016 11:35:26 PM ******/
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
/****** Object:  Table [dbo].[Publicacion]    Script Date: 5/19/2016 11:35:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Publicacion](
	[Pub_id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 5/19/2016 11:35:26 PM ******/
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
/****** Object:  Table [dbo].[Vibilidad]    Script Date: 5/19/2016 11:35:26 PM ******/
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
/****** Object:  Table [gd_esquema].[Maestra]    Script Date: 5/19/2016 11:35:26 PM ******/
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
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Domicilio] FOREIGN KEY([Dom_id])
REFERENCES [dbo].[Domicilio] ([Dom_id])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Domicilio]
GO
