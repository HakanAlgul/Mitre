USE [Mitre]
GO

/****** Object:  Table [dbo].[Credentials_From_Password_Stores]    Script Date: 12/26/2022 9:52:36 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Credentials_From_Password_Stores](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[result] [varchar](50) NOT NULL,
	[filename] [varchar](50) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[date] [date] NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Credentials_From_Password_Stores] ADD  CONSTRAINT [DF__Credential__date__66603565]  DEFAULT (getdate()) FOR [date]
GO

ALTER TABLE [dbo].[Credentials_From_Password_Stores]  WITH CHECK ADD  CONSTRAINT [FK_Credentials_From_Password_Stores_Accounts] FOREIGN KEY([username])
REFERENCES [dbo].[Accounts] ([username])
GO

ALTER TABLE [dbo].[Credentials_From_Password_Stores] CHECK CONSTRAINT [FK_Credentials_From_Password_Stores_Accounts]
GO


