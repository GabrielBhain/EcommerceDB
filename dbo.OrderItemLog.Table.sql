USE [Ecomerce]
GO
/****** Object:  Table [dbo].[OrderItemLog]    Script Date: 08/11/2023 14:26:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItemLog](
	[OrderCode] [int] NOT NULL,
	[ProductCode] [int] NOT NULL,
	[StatusOrderItemCode] [int] NOT NULL,
	[MovementDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OrderItemLog]  WITH CHECK ADD  CONSTRAINT [FK_OrderItemLog_OrderItem] FOREIGN KEY([OrderCode], [ProductCode])
REFERENCES [dbo].[OrderItem] ([OrderCode], [ProductCode])
GO
ALTER TABLE [dbo].[OrderItemLog] CHECK CONSTRAINT [FK_OrderItemLog_OrderItem]
GO
ALTER TABLE [dbo].[OrderItemLog]  WITH CHECK ADD  CONSTRAINT [FK_OrderItemLog_StatusOrderItem] FOREIGN KEY([StatusOrderItemCode])
REFERENCES [dbo].[StatusOrderItem] ([Code])
GO
ALTER TABLE [dbo].[OrderItemLog] CHECK CONSTRAINT [FK_OrderItemLog_StatusOrderItem]
GO
