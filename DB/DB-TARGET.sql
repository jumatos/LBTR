USE [LBTRIMPORT]
GO
/****** Object:  Table [dbo].[LBTRIMP]    Script Date: 3/10/2022 12:36:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LBTRIMP](
	[Numero_Referencia] [int] NOT NULL,
	[Cuenta] [int] NOT NULL,
	[Numero_extracto] [int] NOT NULL,
	[Fecha_extracto] [date] NOT NULL,
	[Fecha_transaccion] [date] NOT NULL,
	[Importe] [int] NOT NULL,
	[Referencia_cliente] [nvarchar](50) NOT NULL,
	[Referencia_bancaria] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
