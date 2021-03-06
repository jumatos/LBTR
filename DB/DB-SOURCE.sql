USE [LBTR]
GO
/****** Object:  Table [dbo].[LBTR]    Script Date: 3/10/2022 12:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LBTR](
	[Numero_Referencia] [int] IDENTITY(1,1) NOT NULL,
	[Cuenta] [int] NOT NULL,
	[Numero_extracto] [int] NOT NULL,
	[Fecha_extracto] [date] NOT NULL,
	[Fecha_transaccion] [date] NOT NULL,
	[Importe] [int] NOT NULL,
	[Referencia_cliente] [nvarchar](50) NOT NULL,
	[Referencia_bancaria] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XML]    Script Date: 3/10/2022 12:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XML](
	[Nombre] [nvarchar](50) NULL,
	[Id] [int] NULL,
	[value] [int] NULL
) ON [PRIMARY]
GO
