USE [Mitre]
GO

/****** Object:  Table [dbo].[Hardware_Additions]    Script Date: 12/26/2022 9:53:11 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Hardware_Additions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[result] [varchar](50) NOT NULL,
	[checked_device] [varchar](50) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[date] [date] NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Hardware_Additions] ADD  CONSTRAINT [DF__Hardware_A__date__6C190EBB]  DEFAULT (getdate()) FOR [date]
GO

ALTER TABLE [dbo].[Hardware_Additions]  WITH CHECK ADD  CONSTRAINT [FK_Hardware_Additions_Accounts] FOREIGN KEY([username])
REFERENCES [dbo].[Accounts] ([username])
GO

ALTER TABLE [dbo].[Hardware_Additions] CHECK CONSTRAINT [FK_Hardware_Additions_Accounts]
GO


