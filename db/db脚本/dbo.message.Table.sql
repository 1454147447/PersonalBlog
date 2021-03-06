USE [Web]
GO
/****** Object:  Table [dbo].[message]    Script Date: 2020/12/25 20:29:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[message](
	[username] [nvarchar](50) NOT NULL,
	[ctent] [nvarchar](300) NOT NULL,
	[day] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_message] PRIMARY KEY CLUSTERED 
(
	[ctent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[message] ([username], [ctent], [day]) VALUES (N'zzn', N'123', N'2020/12/14 16:52:48')
INSERT [dbo].[message] ([username], [ctent], [day]) VALUES (N'zzn', N'1234', N'2020/12/14 16:53:35')
INSERT [dbo].[message] ([username], [ctent], [day]) VALUES (N'bojack', N'12456', N'2020/12/6 ')
INSERT [dbo].[message] ([username], [ctent], [day]) VALUES (N'bojack', N'2020 12 7', N'2020/12/7 14:26:06')
INSERT [dbo].[message] ([username], [ctent], [day]) VALUES (N'bojack', N'我打的', N'2020/12/6 ')
INSERT [dbo].[message] ([username], [ctent], [day]) VALUES (N'bojack', N'我的天哪', N'2020/12/6 20:43:46')
INSERT [dbo].[message] ([username], [ctent], [day]) VALUES (N'zzn', N'我是昨日之子 周正楠', N'2020/12/9 22:32:35')
INSERT [dbo].[message] ([username], [ctent], [day]) VALUES (N'bojack', N'旋转木马哗啦啦', N'2020/12/6 20:43:31')
ALTER TABLE [dbo].[message]  WITH NOCHECK ADD  CONSTRAINT [FK_message_users] FOREIGN KEY([username])
REFERENCES [dbo].[users] ([username])
GO
ALTER TABLE [dbo].[message] CHECK CONSTRAINT [FK_message_users]
GO
