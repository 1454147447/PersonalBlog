USE [Web]
GO
/****** Object:  Table [dbo].[users]    Script Date: 2020/12/25 20:29:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[phone] [nvarchar](50) NOT NULL,
	[sex] [nchar](1) NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[users] ([username], [password], [email], [phone], [sex]) VALUES (N'bojack', N'bojack0527', N'1454147447@qq.com', N'15228952445', N'男')
INSERT [dbo].[users] ([username], [password], [email], [phone], [sex]) VALUES (N'zzn', N'123456', N'123456', N'123456', N'男')
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_users_users] FOREIGN KEY([username])
REFERENCES [dbo].[users] ([username])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_users_users]
GO
