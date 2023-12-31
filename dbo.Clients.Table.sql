USE [Ecomerce]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 08/11/2023 14:26:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[CName] [varchar](200) NOT NULL,
	[PersonType] [char](1) NOT NULL,
	[CDate] [datetime] NULL,
 CONSTRAINT [pk_client] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
