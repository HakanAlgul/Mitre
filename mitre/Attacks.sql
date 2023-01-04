USE [Mitre]
GO

/****** Object:  Table [dbo].[Attacks]    Script Date: 12/26/2022 9:52:23 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Attacks](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[information] [varchar](150) NOT NULL,
	[type] [varchar](50) NOT NULL
) ON [PRIMARY]
GO


