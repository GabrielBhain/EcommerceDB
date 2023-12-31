USE [Ecomerce]
GO
/****** Object:  Table [dbo].[POrder]    Script Date: 08/11/2023 14:26:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[POrder](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[PaidFlag] [bit] NOT NULL,
	[OrderTotal] [float] NOT NULL,
	[ClientCode] [int] NOT NULL,
	[StatusCode] [int] NULL,
 CONSTRAINT [PK_POrder] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[POrder]  WITH CHECK ADD  CONSTRAINT [FK_POrder_Clients] FOREIGN KEY([ClientCode])
REFERENCES [dbo].[Clients] ([Code])
GO
ALTER TABLE [dbo].[POrder] CHECK CONSTRAINT [FK_POrder_Clients]
GO
ALTER TABLE [dbo].[POrder]  WITH CHECK ADD  CONSTRAINT [FK_POrder_Status] FOREIGN KEY([StatusCode])
REFERENCES [dbo].[Status] ([Code])
GO
ALTER TABLE [dbo].[POrder] CHECK CONSTRAINT [FK_POrder_Status]
GO
