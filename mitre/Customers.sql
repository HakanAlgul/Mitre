USE [Mitre]
GO

/****** Object:  Table [dbo].[Customers]    Script Date: 12/26/2022 9:52:58 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Customers](
	[customer_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[phone] [varchar](20) NOT NULL,
	[account_id] [int] NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_Accounts] FOREIGN KEY([customer_id])
REFERENCES [dbo].[Accounts] ([id])
GO

ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_Accounts]
GO


