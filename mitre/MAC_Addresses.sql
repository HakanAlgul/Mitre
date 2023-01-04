USE [Mitre]
GO

/****** Object:  Table [dbo].[MAC_Addresses]    Script Date: 12/26/2022 9:53:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[MAC_Addresses](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[mac_address] [varchar](50) NOT NULL,
	[date] [date] NOT NULL,
 CONSTRAINT [PK_MAC_Addresses] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[MAC_Addresses] ADD  CONSTRAINT [DF__MAC_Addres__date__6A30C649]  DEFAULT (getdate()) FOR [date]
GO


