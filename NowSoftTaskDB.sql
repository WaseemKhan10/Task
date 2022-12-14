USE [NowSoft]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 8/29/2022 12:08:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 8/29/2022 12:08:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 8/29/2022 12:08:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 8/29/2022 12:08:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 8/29/2022 12:08:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 8/29/2022 12:08:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 8/29/2022 12:08:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[RefreashToken] [nvarchar](max) NULL,
	[device] [nvarchar](max) NULL,
	[ipaddress] [nvarchar](max) NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 8/29/2022 12:08:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220827081957_nowsoft', N'5.0.8')
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [RefreashToken], [device], [ipaddress], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'00da7761-d65e-4f6a-8d41-03f83df7bda8', N'ahsan', N'khan', N'eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiIwMGRhNzc2MS1kNjVlLTRmNmEtOGQ0MS0wM2Y4M2RmN2JkYTgiLCJ1bmlxdWVfbmFtZSI6ImFoc2FuIiwic3ViIjoiYWhzYW5raGFuQGdtYWlsLmNvbSIsImp0aSI6ImE2Yzg5NGZhLWQwMDctNDQ5NS04YmMwLTgxOWRiN2U5ZjMzZiIsImVtYWlsIjoiYWhzYW5raGFuQGdtYWlsLmNvbSIsImlkIjoiMDBkYTc3NjEtZDY1ZS00ZjZhLThkNDEtMDNmODNkZjdiZGE4Iiwicm9sZSI6Ik5BIiwibmJmIjoxNjYxNzExODI1LCJleHAiOjE2NjE3MTU0MjQsImlhdCI6MTY2MTcxMTgyNSwiaXNzIjoiTG90dGFyeSIsImF1ZCI6IkxvdHRhcnkifQ.T90jPPCPGEoZQ2liBP_D67zmGZc5LZ2zZeICFOgTOIWu_TsOqzDb4txTga95fkaHZyWttusA6CPUnVhMgwQNhQ', N'dfdfdfdf', N'192.27.29', N'ahsan', N'AHSAN', N'ahsankhan@gmail.com', N'AHSANKHAN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEG0D/nr/UdaXJHXM7MdZpX9kfFUtJwXavyCsMp4NU58i3wR1xNWsGWyuAB9CteYjXg==', N'XGBP37PZENCFU2WISIOINHLVR35KPAL4', N'1f8dd3ae-1a0a-4d46-aae1-6c54276f630e', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [RefreashToken], [device], [ipaddress], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'12c0360e-e482-4344-82e0-165a2036093a', N'Hassan', N'ALi', N'eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiIxMmMwMzYwZS1lNDgyLTQzNDQtODJlMC0xNjVhMjAzNjA5M2EiLCJ1bmlxdWVfbmFtZSI6IlNoYXluIiwic3ViIjoiaGFzc2FuQGdtYWlsLmNvbSIsImp0aSI6ImZjNjZmZjQ3LWNkYzAtNDY5OS1iMTQ3LTQxNjdiYTgwYzlhNCIsImVtYWlsIjoiaGFzc2FuQGdtYWlsLmNvbSIsImlkIjoiMTJjMDM2MGUtZTQ4Mi00MzQ0LTgyZTAtMTY1YTIwMzYwOTNhIiwicm9sZSI6Ik5BIiwibmJmIjoxNjYxNzEyODIzLCJleHAiOjE2NjE3MTY0MjIsImlhdCI6MTY2MTcxMjgyMywiaXNzIjoiTG90dGFyeSIsImF1ZCI6IkxvdHRhcnkifQ.XLu3BWrMFEGRpuRQ_T-isEeP_mofGZXs2MgNBMpyANTGv6GoEZDcii3jevZYuKpovG-wfj0-0mKrggLqC61Q3g', N'dfdfdfdf', N'192.2.2.2', N'Shayn', N'SHAYN', N'hassan@gmail.com', N'HASSAN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEGOXzSg+uejrklchLjY7in8xvmznw37IzTLkWEB6OAYl/dxJYRZjwZT5KZ7dWZPCeQ==', N'RJ63QOIPWAZIJDSWSFKTAIT5EPSDNHLZ', N'90ca0464-bac6-4dec-9582-8d7f89081dba', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [RefreashToken], [device], [ipaddress], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'32bfcbc9-3f20-4ba4-9859-299dfb7f9138', N'Awais', N'Muhammad', N'eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiIzMmJmY2JjOS0zZjIwLTRiYTQtOTg1OS0yOTlkZmI3ZjkxMzgiLCJ1bmlxdWVfbmFtZSI6IkF3YWlzIiwic3ViIjoiYXdhaUBnbWFpbC5jb20iLCJqdGkiOiI4YzE4NDNkYy1iNDZhLTRkMmYtOGQzYS1iNTg5YTEzMjdjZjAiLCJlbWFpbCI6ImF3YWlAZ21haWwuY29tIiwiaWQiOiIzMmJmY2JjOS0zZjIwLTRiYTQtOTg1OS0yOTlkZmI3ZjkxMzgiLCJyb2xlIjoiTkEiLCJuYmYiOjE2NjE2MzQwMzUsImV4cCI6MTY2MTYzNzYzNSwiaWF0IjoxNjYxNjM0MDM1LCJpc3MiOiJMb3R0YXJ5IiwiYXVkIjoiTG90dGFyeSJ9.0OsfaFZMs8ihp9EKCS-g3h2E4v4eZgNqpRIVC_zHbHcpzrbbR_aXSl5334KF6qt4hL-4yIiIpX6elhgsr9gI5A', N'dfdfdfdf', N'192.65.363', N'Awais', N'AWAIS', N'awai@gmail.com', N'AWAI@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEKD9lsOHyZI7DbL0BRhWSzPcKahqOecNt6MP5AsBxXzgxxanDwa5G0hFHbBEnT4OEA==', N'W2YH3EOM2IMQE742OHXU2DIP4OPPO7FL', N'6a171593-2982-40d7-84fd-92d14e1da5b0', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [RefreashToken], [device], [ipaddress], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'3acbed62-d053-4d64-9551-fbdc3dde7aec', N'Waseem', N'Khan', N'eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiIzYWNiZWQ2Mi1kMDUzLTRkNjQtOTU1MS1mYmRjM2RkZTdhZWMiLCJ1bmlxdWVfbmFtZSI6Indhc2lpMTIiLCJzdWIiOiJ3YXNlZW1AZ21haWwuY29tIiwianRpIjoiOTI2NTBmMTctMWYzNi00NTY1LWFkMmQtZDhlMTliZGEzNTM5IiwiZW1haWwiOiJ3YXNlZW1AZ21haWwuY29tIiwiaWQiOiIzYWNiZWQ2Mi1kMDUzLTRkNjQtOTU1MS1mYmRjM2RkZTdhZWMiLCJyb2xlIjoiTkEiLCJuYmYiOjE2NjE1ODkxNTAsImV4cCI6MTY2MTU5Mjc1MCwiaWF0IjoxNjYxNTg5MTUwLCJpc3MiOiJMb3R0YXJ5IiwiYXVkIjoiTG90dGFyeSJ9.psHraMIGxPxOwCkbxk8F70O6dIywi9dgv-IAFGmd4fhBtKYGVG6ep9sBxDW1Y8FOrda_Gks6M1SisnAdVNsOSw', N'dfdfdfd', N'198.38.38', N'wasii12', N'WASII12', N'waseem@gmail.com', N'WASEEM@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEM3QjBAVFBkSWjpRdsQMmrxa0qBcv59P4tBxtlLfPtcfkzev2NcUU9/GaPV2NvPgeQ==', N'RENQQDNZFDY424LTX664R2B4IQWQO7SY', N'348e4aad-61c6-4e29-8d0f-f50353ad7642', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [RefreashToken], [device], [ipaddress], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'552a9d39-4f95-4051-99ad-c12a2c03828e', N'Ehsan', N'Khan', N'eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI1NTJhOWQzOS00Zjk1LTQwNTEtOTlhZC1jMTJhMmMwMzgyOGUiLCJ1bmlxdWVfbmFtZSI6IkVoc2FuIiwic3ViIjoiRWhzYW5AZ21haWwuY29tIiwianRpIjoiMDc1MDZkZGUtZDZlYi00MmMyLTk2YWItMmYzNDVjYzczMjA0IiwiZW1haWwiOiJFaHNhbkBnbWFpbC5jb20iLCJpZCI6IjU1MmE5ZDM5LTRmOTUtNDA1MS05OWFkLWMxMmEyYzAzODI4ZSIsInJvbGUiOiJOQSIsIm5iZiI6MTY2MTYzNTkwMCwiZXhwIjoxNjYxNjM5NTAwLCJpYXQiOjE2NjE2MzU5MDAsImlzcyI6IkxvdHRhcnkiLCJhdWQiOiJMb3R0YXJ5In0.JjWjyx3Ai09XHMBEBqhjc9AS6GFEE8FZKjns7rUmco0VpJkFCpTLAq9v1e1OQ9aCx_pquTW0ZPonIfePgFuJ6w', N'dfdfdfdfdd', N'192.72.2', N'Ehsan', N'EHSAN', N'Ehsan@gmail.com', N'EHSAN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEC/PHMhjrs67Ir1o6YxBeK1MgZHOmQF9Dk/DQuyEWeTyXkuF4rKr8jYlLRsMfayzug==', N'T3M77IKHPA6DQZZCOKN5Y26XVITPS6U3', N'3450aca0-1744-4c3e-966d-1ed5df4ec095', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [RefreashToken], [device], [ipaddress], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'57ae42a2-7bbe-483d-a336-706ca70f51d1', N'wisal', N'khan', N'eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI1N2FlNDJhMi03YmJlLTQ4M2QtYTMzNi03MDZjYTcwZjUxZDEiLCJ1bmlxdWVfbmFtZSI6Indpc2FsIiwic3ViIjoid2lzYWxAZ21haWwuY29tIiwianRpIjoiOThkMTM3MGQtZDJhOC00ZTg1LWJhOTktYThmMDlhYzgzZTkwIiwiZW1haWwiOiJ3aXNhbEBnbWFpbC5jb20iLCJpZCI6IjU3YWU0MmEyLTdiYmUtNDgzZC1hMzM2LTcwNmNhNzBmNTFkMSIsInJvbGUiOiJOQSIsIm5iZiI6MTY2MTY4MzAyNywiZXhwIjoxNjYxNjg2NjI3LCJpYXQiOjE2NjE2ODMwMjcsImlzcyI6IkxvdHRhcnkiLCJhdWQiOiJMb3R0YXJ5In0.vr5wZTEWxO062SKGipDOfSKnAopyfdu_qMKhbX_jXUIBRzG7TLl52-AXprIljPw9DNIV7j_U98GnZNAG6mA5AA', N'dfdfddf', N'192.272.2', N'wisal', N'WISAL', N'wisal@gmail.com', N'WISAL@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEB2/J4UPflVZ6v4Q5WgG3RO5Z2nu29x771RyWTZcAjIlAziUU6taM+IOWSdChhpWMw==', N'O7XEI57KTHFSCEXIP4UPKPRSYTGMERJH', N'385e9793-bfc8-41ff-8e3c-23aec01ec3f2', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [RefreashToken], [device], [ipaddress], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'5bf468d3-6e81-441a-a88a-6e0335343529', N'testing', N'User', N'eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI1YmY0NjhkMy02ZTgxLTQ0MWEtYTg4YS02ZTAzMzUzNDM1MjkiLCJ1bmlxdWVfbmFtZSI6InRlc3QxMjMiLCJzdWIiOiJ0ZXN0aW5nQGdtYWlsLmNvbSIsImp0aSI6IjcwM2I1OTUwLTRiMTYtNGZhOS1iNGRlLWZiNmZhMGNlMmQ0MSIsImVtYWlsIjoidGVzdGluZ0BnbWFpbC5jb20iLCJpZCI6IjViZjQ2OGQzLTZlODEtNDQxYS1hODhhLTZlMDMzNTM0MzUyOSIsInJvbGUiOiJOQSIsIm5iZiI6MTY2MTYzNTQwMSwiZXhwIjoxNjYxNjM5MDAxLCJpYXQiOjE2NjE2MzU0MDEsImlzcyI6IkxvdHRhcnkiLCJhdWQiOiJMb3R0YXJ5In0.fTfT_OUgbEW_tI1DHHyiaLxrcwUzYEJlPPVgZXdnHBdazEfniC2TmSi371qtZKmgRQCrOYu3poRMzFZR3nH0Mg', N'dfdfdfdf', N'192.35.36', N'test123', N'TEST123', N'testing@gmail.com', N'TESTING@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEI4fPTgP4KWtyVa51ImRxyhpiDj6l9rLWAb0ZNB2OW1cg4V6gKRS9FaI7NFNzXo86w==', N'DTMRPIW43HNHY7DLJ5DYFFWZFYKWOIIK', N'2ae48d3e-c121-4a8c-b642-59d3c9dfd36d', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [RefreashToken], [device], [ipaddress], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'5d983b04-5f0b-41d9-a725-35e2c451ccf7', N'Ismail', N'Khan', N'eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI1ZDk4M2IwNC01ZjBiLTQxZDktYTcyNS0zNWUyYzQ1MWNjZjciLCJ1bmlxdWVfbmFtZSI6IklzbWlhbCIsInN1YiI6IklzbWFpbEBnbWFpbC5jb20iLCJqdGkiOiJhZTM3M2EyMy1hZGQ5LTRmNjUtODNiOS1kZDMwZDgxZDk1YjgiLCJlbWFpbCI6IklzbWFpbEBnbWFpbC5jb20iLCJpZCI6IjVkOTgzYjA0LTVmMGItNDFkOS1hNzI1LTM1ZTJjNDUxY2NmNyIsInJvbGUiOiJOQSIsIm5iZiI6MTY2MTY2NzczMywiZXhwIjoxNjYxNjcxMzMzLCJpYXQiOjE2NjE2Njc3MzMsImlzcyI6IkxvdHRhcnkiLCJhdWQiOiJMb3R0YXJ5In0.qSFm_ZmdumwuKPjiux1f2EBnTEJTwTjVXRDKrqxjWxGgK1RkyMhwCebZQVBOFwJNsIQHFKcTYgr2lEvS7n2ufg', N'dfdfdfdfd', N'192.29.29', N'Ismial', N'ISMIAL', N'Ismail@gmail.com', N'ISMAIL@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEFxNOj7VGruF9PypSlZY57afor673vhOprRvcEsIUVCbBW+ReDMytMjLKOHPtun/VA==', N'R7OKU6FZY3XXMWKV2VM2LSYHWL5QIQXR', N'3f522234-97b6-4961-8c6b-214b7baaf0ec', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [RefreashToken], [device], [ipaddress], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'67d72019-8f7b-4501-9d84-d995101ccfc4', N'Bilal', N'Khan', N'eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI2N2Q3MjAxOS04ZjdiLTQ1MDEtOWQ4NC1kOTk1MTAxY2NmYzQiLCJ1bmlxdWVfbmFtZSI6IkJpbGxhIiwic3ViIjoiQmlsYWxAZ21haWwuY29tIiwianRpIjoiMWE1NWZlZDctMzBiZi00YjdjLWI3NTktYzA4NWRhY2ZmMzE5IiwiZW1haWwiOiJCaWxhbEBnbWFpbC5jb20iLCJpZCI6IjY3ZDcyMDE5LThmN2ItNDUwMS05ZDg0LWQ5OTUxMDFjY2ZjNCIsInJvbGUiOiJOQSIsIm5iZiI6MTY2MTY4Nzc5OCwiZXhwIjoxNjYxNjkxMzk3LCJpYXQiOjE2NjE2ODc3OTgsImlzcyI6IkxvdHRhcnkiLCJhdWQiOiJMb3R0YXJ5In0.GjRc6RoOn8P84RhMxDWJWNJaFBAW2Mw5yC3MfFsa-qt1h3b0gQDNjLq-NWkB_iPsYrroNZTtdx-L0mne_jkHDg', N'dfdfdfdf', N'192.2.2.2', N'Billa', N'BILLA', N'Bilal@gmail.com', N'BILAL@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEITi1J+wD0UZctAuHN6YdRCBo/3sC9xQLv9Y144+A43SrKq1N7c9z/eYwyXYT1ZIlg==', N'BUYNVNP7V3MESMOL4STYXRTEORQHCQ7R', N'3daed3bc-f6f2-4bdb-a558-61f8b105b0d3', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [RefreashToken], [device], [ipaddress], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'8857fa74-40e5-4845-a890-4375f9bdd34a', N'Alishbah', N'Khan', N'eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI4ODU3ZmE3NC00MGU1LTQ4NDUtYTg5MC00Mzc1ZjliZGQzNGEiLCJ1bmlxdWVfbmFtZSI6ImFsaXNoYWIiLCJzdWIiOiJhbGlzaGJhaEBnbWFpbC5jb20iLCJqdGkiOiJkOWQwNGUzNC0zNjMyLTQxZGUtYjA0OS0yZmY2OTdiODYzOGUiLCJlbWFpbCI6ImFsaXNoYmFoQGdtYWlsLmNvbSIsImlkIjoiODg1N2ZhNzQtNDBlNS00ODQ1LWE4OTAtNDM3NWY5YmRkMzRhIiwicm9sZSI6Ik5BIiwibmJmIjoxNjYxNjY2NzY1LCJleHAiOjE2NjE2NzAzNjUsImlhdCI6MTY2MTY2Njc2NSwiaXNzIjoiTG90dGFyeSIsImF1ZCI6IkxvdHRhcnkifQ.3UU1HJHqRptnuCV3nz5flVnSGn4MGR8cYxrK2duwtfr3rEX_voH0CsqGs-B97o-xCwirU2haHjiV_l_8elmLYg', N'sfdfdfdfdfdf', N'192.262.25.26', N'alishab', N'ALISHAB', N'alishbah@gmail.com', N'ALISHBAH@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEP2NpvTbE8BYPtfAu2uPFItHoZoO6TgQUS5QUhg0PNx8hOe7kdbeSCgZSZ92Fbu3Ww==', N'ITBUEONNXUZ4MGNVIAHM5INGCDFQL6HP', N'439333f5-d396-4dee-9d76-e65af0ffcc74', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [RefreashToken], [device], [ipaddress], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'92033bb2-2234-4063-913d-2ede3e9f303f', N'shakeel', N'khan', N'eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI5MjAzM2JiMi0yMjM0LTQwNjMtOTEzZC0yZWRlM2U5ZjMwM2YiLCJ1bmlxdWVfbmFtZSI6InNoYWtlZWwiLCJzdWIiOiJzaGFrZWVsQGdtYWlsLmNvbSIsImp0aSI6ImU4YjI3OGE3LWEwMGQtNDE3Mi1hNmIyLTg1M2VjOGJiMmM5YSIsImVtYWlsIjoic2hha2VlbEBnbWFpbC5jb20iLCJpZCI6IjkyMDMzYmIyLTIyMzQtNDA2My05MTNkLTJlZGUzZTlmMzAzZiIsInJvbGUiOiJOQSIsIm5iZiI6MTY2MTY2NzMyNywiZXhwIjoxNjYxNjcwOTI3LCJpYXQiOjE2NjE2NjczMjcsImlzcyI6IkxvdHRhcnkiLCJhdWQiOiJMb3R0YXJ5In0.0O0jHymGWeYqfuHkPVQxdLToEBqK98FYWE6Pxbp77GDjf-4c707fHS-UtXiMc0tImo0tqhB7wqDiNIjqXM_ovQ', N'dfdfdfd', N'192.27272.2', N'shakeel', N'SHAKEEL', N'shakeel@gmail.com', N'SHAKEEL@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEA+naReH++L0pEHCBXX+ca8cpZKE7E3+s+sC0XxcH5mYsaLnm3Eq9dxUebluEb0lyw==', N'OSEILXWNW6COCYY6ABTQO4R4VZSBFFAS', N'82d2da32-792d-46bf-98d6-1a728467747b', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [RefreashToken], [device], [ipaddress], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'97def571-6c16-4789-8e9b-43de1a62b7ea', N'Shayan', N'Ahmed', N'eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI5N2RlZjU3MS02YzE2LTQ3ODktOGU5Yi00M2RlMWE2MmI3ZWEiLCJ1bmlxdWVfbmFtZSI6Indhc2VlIiwic3ViIjoic2hheWFuQGdtYWlsLmNvbSIsImp0aSI6ImRlMWE4N2Q5LTZhODQtNGI1OS1hYzU1LTZkMTk1ZDljNzgzOCIsImVtYWlsIjoic2hheWFuQGdtYWlsLmNvbSIsImlkIjoiOTdkZWY1NzEtNmMxNi00Nzg5LThlOWItNDNkZTFhNjJiN2VhIiwicm9sZSI6Ik5BIiwibmJmIjoxNjYxNjgyNjQ4LCJleHAiOjE2NjE2ODYyNDgsImlhdCI6MTY2MTY4MjY0OCwiaXNzIjoiTG90dGFyeSIsImF1ZCI6IkxvdHRhcnkifQ.sBIovPtjmly2sMZfSt2BTTnkXH8P2v5dxFBy-toHeUxkr702QXH8JJufR__Ocdv3pNAsbSdao1OCiJQ7aUFYzQ', N'dfdfdfd', N'a92.3.3', N'wasee', N'WASEE', N'shayan@gmail.com', N'SHAYAN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEP8FfaqPCaQoY/kkh1EPkkKeb33u+qaUYOPqZYAXAHZBc02xA5+mrwqK/BwAj1ie+w==', N'O53COZTYK44TLC54YK3USNAFZD25PEYP', N'8c379604-8392-438a-ba81-f8aa7378021a', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [RefreashToken], [device], [ipaddress], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'a1baba13-243d-4e38-be19-88d8a9fdec1e', N'was', N'kha', N'eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJhMWJhYmExMy0yNDNkLTRlMzgtYmUxOS04OGQ4YTlmZGVjMWUiLCJ1bmlxdWVfbmFtZSI6IndhcyIsInN1YiI6Indhc0BnbWFpLmNvbSIsImp0aSI6Ijc5ZWUwYTEwLWYwN2QtNGQ5OS04OTljLTUzMmU0M2ZmMjllOSIsImVtYWlsIjoid2FzQGdtYWkuY29tIiwiaWQiOiJhMWJhYmExMy0yNDNkLTRlMzgtYmUxOS04OGQ4YTlmZGVjMWUiLCJyb2xlIjoiTkEiLCJuYmYiOjE2NjE3MTMzNjUsImV4cCI6MTY2MTcxNjk2NSwiaWF0IjoxNjYxNzEzMzY1LCJpc3MiOiJMb3R0YXJ5IiwiYXVkIjoiTG90dGFyeSJ9.CF41WyqmFud3ZB-drXRdujM4k01jT1Kw_UcXabZ-6W-RqPe_virgjZvImZtTj25Bf3lLOFgw8wrs1rOowayhMg', N'dfdffdffdf', N'192.2.2.2', N'was', N'WAS', N'was@gmai.com', N'WAS@GMAI.COM', 0, N'AQAAAAEAACcQAAAAEM8ywT2Kv5fvV3atOihoRsniKHDXmqwhbOZOGPGicAvCFfm+wInBle8LykIKBNb1fQ==', N'NTDN2BSKLBAL5W3UBYIYDPES4AYXC7TE', N'1c1073ed-b9a6-4d35-818f-e24998278bc8', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [RefreashToken], [device], [ipaddress], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'b48589e3-c99a-4fc6-981f-808508931cce', N'abcde', N'fgh', N'eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJiNDg1ODllMy1jOTlhLTRmYzYtOTgxZi04MDg1MDg5MzFjY2UiLCJ1bmlxdWVfbmFtZSI6ImFiY2QiLCJzdWIiOiJhYmNkQGdtYWlsLmNvbSIsImp0aSI6IjI2MDg5Yjc3LTMxZmItNDBlMC1iYWVlLWQyMzkzOTE3NDM2MCIsImVtYWlsIjoiYWJjZEBnbWFpbC5jb20iLCJpZCI6ImI0ODU4OWUzLWM5OWEtNGZjNi05ODFmLTgwODUwODkzMWNjZSIsInJvbGUiOiJOQSIsIm5iZiI6MTY2MTYzNTA5OSwiZXhwIjoxNjYxNjM4Njk5LCJpYXQiOjE2NjE2MzUwOTksImlzcyI6IkxvdHRhcnkiLCJhdWQiOiJMb3R0YXJ5In0.cR1iGR1q5yTqQZBTZcoC9e0rLwLhtGzkNttnflZUFmoDIALMNN_8xsbYsGweaGImuyVQn783zgTfUjJXp0ahuQ', N'dfdfdfdfd', N'192.18.14', N'abcd', N'ABCD', N'abcd@gmail.com', N'ABCD@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEBVjX154Biv/KQxxLXpNuOv79InAjAhnOVs9Kck2VJyCyW2oavyCeN9yAXAU7IlXdw==', N'NZGV4IPKRURK2FAHENPRBEVN6RX4FKLW', N'c9db0264-6ca0-4db0-8a62-5a802a0a60db', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [RefreashToken], [device], [ipaddress], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'b8844f42-df62-48b6-b2ab-d864944be7ea', N'Waseem', N'Khan', N'eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJiODg0NGY0Mi1kZjYyLTQ4YjYtYjJhYi1kODY0OTQ0YmU3ZWEiLCJ1bmlxdWVfbmFtZSI6Indhc2kxMiIsInN1YiI6Indhc2VlbTFAZ21haWwuY29tIiwianRpIjoiZDdmMjhlZmUtMmQ2Mi00MTI3LWFiNjQtNWMyMGEyNTdiYzFlIiwiZW1haWwiOiJ3YXNlZW0xQGdtYWlsLmNvbSIsImlkIjoiYjg4NDRmNDItZGY2Mi00OGI2LWIyYWItZDg2NDk0NGJlN2VhIiwicm9sZSI6Ik5BIiwibmJmIjoxNjYxNTg5MzIxLCJleHAiOjE2NjE1OTI5MjEsImlhdCI6MTY2MTU4OTMyMSwiaXNzIjoiTG90dGFyeSIsImF1ZCI6IkxvdHRhcnkifQ.wUgOiOPMAXCu4SWyq9trgUHMy-9f4u6aOOjldtHOVMR_llxh1EQt7v-duOECCDmtnFp7rl9YctIFhQzzsy1mMg', N'dfdfdfdd', N'192.63.36', N'wasi12', N'WASI12', N'waseem1@gmail.com', N'WASEEM1@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEFSdSOzKbMeWMhfrSS0yzQj1mFMrvhCda/CknRbtiBTEho1WnE6bC/V9Fv3SCp1BrA==', N'JYU2XRPLHMOWGB3H6JTPPZLKFU5JRSGQ', N'2874913f-491d-4ba7-81b3-5ca1ea579ee4', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [RefreashToken], [device], [ipaddress], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'be52343a-4373-40ce-932e-78169856862e', N'New', N'User', N'eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJiZTUyMzQzYS00MzczLTQwY2UtOTMyZS03ODE2OTg1Njg2MmUiLCJ1bmlxdWVfbmFtZSI6Ik5ldyIsInN1YiI6Ik5ld0BnbWFpbC5jb20iLCJqdGkiOiJkNTNmZmRlMS0xNDhjLTQzMjUtOWY4Ni0xNWNhZjUwMGI0YzkiLCJlbWFpbCI6Ik5ld0BnbWFpbC5jb20iLCJpZCI6ImJlNTIzNDNhLTQzNzMtNDBjZS05MzJlLTc4MTY5ODU2ODYyZSIsInJvbGUiOiJOQSIsIm5iZiI6MTY2MTY4NzA3MywiZXhwIjoxNjYxNjkwNjczLCJpYXQiOjE2NjE2ODcwNzMsImlzcyI6IkxvdHRhcnkiLCJhdWQiOiJMb3R0YXJ5In0.wrGxLhBasi2bRRq2jiKLgqaBbfMYIEJ3EJbgaGeVVc9QMnk5Qib_jK9yt4r_cKeFBV5Mdr4O-jj_4GcGprl4Yg', N'ddfdffddf', N'34567890', N'New', N'NEW', N'New@gmail.com', N'NEW@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEGSadiEDtwvGQ3LG237KpLGhTvET49/1qdtyeUgiGxVq5d2MefYB+qKHkyyGWWQheQ==', N'TGDPKHHNTYDSWJRF7HOYUVKDYVCXMMXR', N'b3839bb6-1c97-4e0a-b46b-af0dda278cff', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [RefreashToken], [device], [ipaddress], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'c48881fb-75dd-417b-af0d-37f46ea650e2', N'ali', N'ahmed', N'eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJjNDg4ODFmYi03NWRkLTQxN2ItYWYwZC0zN2Y0NmVhNjUwZTIiLCJ1bmlxdWVfbmFtZSI6Indhc2kiLCJzdWIiOiJhbGlAZ21haWwuY29tIiwianRpIjoiM2MzOWZhNDMtNTQ2Yi00YzhmLTgzY2MtMDZhN2M1ZjgwMjI0IiwiZW1haWwiOiJhbGlAZ21haWwuY29tIiwiaWQiOiJjNDg4ODFmYi03NWRkLTQxN2ItYWYwZC0zN2Y0NmVhNjUwZTIiLCJyb2xlIjoiTkEiLCJuYmYiOjE2NjE2NjY0ODEsImV4cCI6MTY2MTY3MDA4MSwiaWF0IjoxNjYxNjY2NDgxLCJpc3MiOiJMb3R0YXJ5IiwiYXVkIjoiTG90dGFyeSJ9.qRmac9HZCvG5gP9uWz6DU1TiEmKcw20Yt8lfbLRCKLx_0KCeWdWMK3zZQAN1Xygm2SLkyHrZMjriCDQtItBntA', N'dfdfdfdf', N'192.62.26', N'wasi', N'WASI', N'ali@gmail.com', N'ALI@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEBYbZPeTqH+mkBEAdgB/9ty1WsTSn3aRyevkbR3bh6SG5nqLvNrF9PYSY0amXpPpHg==', N'APB5UV2R2KQKGTNXR5LPAXQEKKHW3AQM', N'31fe2271-0a05-40cd-97b9-a421ae2b00e4', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [RefreashToken], [device], [ipaddress], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'cd6ffe45-93d2-499d-b5c0-858024d3fe1c', N'Tester', N'User', N'eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJjZDZmZmU0NS05M2QyLTQ5OWQtYjVjMC04NTgwMjRkM2ZlMWMiLCJ1bmlxdWVfbmFtZSI6IlRlc3RlciIsInN1YiI6InRlc3QxQGdtYWlsLmNvbSIsImp0aSI6IjhjY2ZkNDZkLTM5MGMtNDk1My05MTMyLTViNWI0MGM1NjI4ZSIsImVtYWlsIjoidGVzdDFAZ21haWwuY29tIiwiaWQiOiJjZDZmZmU0NS05M2QyLTQ5OWQtYjVjMC04NTgwMjRkM2ZlMWMiLCJyb2xlIjoiTkEiLCJuYmYiOjE2NjE2NjcwOTIsImV4cCI6MTY2MTY3MDY5MiwiaWF0IjoxNjYxNjY3MDkyLCJpc3MiOiJMb3R0YXJ5IiwiYXVkIjoiTG90dGFyeSJ9.xUeIJz6mduWCu6w7faSFydNSGQK0Izu-K4N6GpyhZRSTchnDWY6U-F9iNNwZohWW1kr46sO_ikg3DVpPlmRheQ', N'dfdfdfdfd', N'192.17.18', N'Tester', N'TESTER', N'test1@gmail.com', N'TEST1@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEPKLnXP0wJjKC/0bPjaD9Q3JvAa8nzuCj/cmGwtH9f8PgsaKYCWapzxaELukLg8t7Q==', N'XO5IMR5UQQ2UVQV7DXAEXZ2MD7PTV3F6', N'06d60fe8-4c52-4f6f-84cf-6728b9352bb9', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [RefreashToken], [device], [ipaddress], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'd5fc2ab6-8da7-4893-a84a-c6c5d6630734', N'Hilal', N'Khan', N'eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJkNWZjMmFiNi04ZGE3LTQ4OTMtYTg0YS1jNmM1ZDY2MzA3MzQiLCJ1bmlxdWVfbmFtZSI6IkhpbGFsMTIiLCJzdWIiOiJIaWFsMTJAZ21haWwuY29tIiwianRpIjoiM2Y2ZjQ1NDktZWNhNy00MDc0LWI0OGMtMzAwYmQzYTRjODY1IiwiZW1haWwiOiJIaWFsMTJAZ21haWwuY29tIiwiaWQiOiJkNWZjMmFiNi04ZGE3LTQ4OTMtYTg0YS1jNmM1ZDY2MzA3MzQiLCJyb2xlIjoiTkEiLCJuYmYiOjE2NjE2NjUzNDMsImV4cCI6MTY2MTY2ODk0MywiaWF0IjoxNjYxNjY1MzQzLCJpc3MiOiJMb3R0YXJ5IiwiYXVkIjoiTG90dGFyeSJ9.vOTltcevlc_u6UdDpYqnv48ICGcZxItGAmxzgSgBjG2RI5cbzd6avMIVS7OZNTycw34bwewY26b2L8Xf6v9AEw', N'dffdffd', N'192.19.27', N'Hilal12', N'HILAL12', N'Hial12@gmail.com', N'HIAL12@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEJ6ojvH6Ytnml/wOOpl9xpHKDUjItVx5TnJKS1r9XKFKpRCPofrHnK79ZWLm7Y4pOw==', N'2C3KKAJFGQAJ5BFQI46F6EL3IH3M6EHR', N'471b691b-3992-4e11-a7da-2cbe43da32f3', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [RefreashToken], [device], [ipaddress], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e5f44899-384c-4c82-bc32-424e6a6e4800', N'Waqar', N'Ahmed', N'eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJlNWY0NDg5OS0zODRjLTRjODItYmMzMi00MjRlNmE2ZTQ4MDAiLCJ1bmlxdWVfbmFtZSI6ImNoc2FiIiwic3ViIjoid2FxYXJAZ21haWwuY29tIiwianRpIjoiMjQ1YjZhMDAtOWY5My00MWJiLTk0MjktNTc2NGY2ZGI0NzM5IiwiZW1haWwiOiJ3YXFhckBnbWFpbC5jb20iLCJpZCI6ImU1ZjQ0ODk5LTM4NGMtNGM4Mi1iYzMyLTQyNGU2YTZlNDgwMCIsInJvbGUiOiJOQSIsIm5iZiI6MTY2MTYzNDE2NSwiZXhwIjoxNjYxNjM3NzY1LCJpYXQiOjE2NjE2MzQxNjUsImlzcyI6IkxvdHRhcnkiLCJhdWQiOiJMb3R0YXJ5In0.Ymse0Jb7PhxZUcosv3zZEHqUgLiE6BdSfkeFeGaS3oTf-0evWwMDke8BUSCmKwB3g7VPk5VryToW2r8CPehyog', N'dfdfdfd', N'192.63.98', N'chsab', N'CHSAB', N'waqar@gmail.com', N'WAQAR@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEA1xuer6m5vDaQ13Hu66e+01NJ3HD8XrmVlfORvQ6GyOqgcHS/JmaMgGW3934ic6Mg==', N'YYME6JM2XFDSKVHFQBUGCUEXHNATWPK7', N'ff74f001-cd42-4151-83ca-363b8a447e56', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [RefreashToken], [device], [ipaddress], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e60bd7e2-ff03-4866-abe8-4eff85c3d3cf', N'Waseem', N'Khan', N'eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJlNjBiZDdlMi1mZjAzLTQ4NjYtYWJlOC00ZWZmODVjM2QzY2YiLCJ1bmlxdWVfbmFtZSI6InVtYWlyIiwic3ViIjoiVW1haXJAZ21haWwuY29tIiwianRpIjoiNDc0ZWEzMzEtMGFjNy00MzAzLThhZGYtMzFlOTY4MGZlODM1IiwiZW1haWwiOiJVbWFpckBnbWFpbC5jb20iLCJpZCI6ImU2MGJkN2UyLWZmMDMtNDg2Ni1hYmU4LTRlZmY4NWMzZDNjZiIsInJvbGUiOiJOQSIsIm5iZiI6MTY2MTY4NzI0NSwiZXhwIjoxNjYxNjkwODQ1LCJpYXQiOjE2NjE2ODcyNDUsImlzcyI6IkxvdHRhcnkiLCJhdWQiOiJMb3R0YXJ5In0.x5grqk-QT52qU6pAAU40ue-iXKYbUbZOMCQeqJennhM5vWUXDEddeb5xngplsdh6yEJfnkX002P_Se7sLvrNfQ', N'dfdfdfd', N'192.62.66', N'umair', N'UMAIR', N'Umair@gmail.com', N'UMAIR@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEJsLSCzV0y7fjS86PjFunbN4I3LsYp1dB2+6W2kX6RU/EzimFyP5S13WjR9j0MzRIA==', N'QXU4BEGVVQAHCSSF4UDFQHAJNA2ZVMQ6', N'f31adc97-b1d5-4625-985c-467b7d5f48f0', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [RefreashToken], [device], [ipaddress], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e9d9c9fb-0733-4589-a03a-0a493858781b', N'Ahmed', N'Khan', N'eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJlOWQ5YzlmYi0wNzMzLTQ1ODktYTAzYS0wYTQ5Mzg1ODc4MWIiLCJ1bmlxdWVfbmFtZSI6IkFobWVkMTIiLCJzdWIiOiJhaG1lZEBnbWFpbC5jb20iLCJqdGkiOiIwMjBkYjhjOC1hNmEyLTQ1N2YtODg1OS0yNDE2NDQzNjJiNjMiLCJlbWFpbCI6ImFobWVkQGdtYWlsLmNvbSIsImlkIjoiZTlkOWM5ZmItMDczMy00NTg5LWEwM2EtMGE0OTM4NTg3ODFiIiwicm9sZSI6Ik5BIiwibmJmIjoxNjYxNjg1ODA3LCJleHAiOjE2NjE2ODk0MDcsImlhdCI6MTY2MTY4NTgwNywiaXNzIjoiTG90dGFyeSIsImF1ZCI6IkxvdHRhcnkifQ.XWT76a-fWBsXhMIR_MlmW0v_76zXYRkxXRrQmDY040JNxABnCfMEmO_RH1TcQdncHnJmos2MLc_Jm9SYgwvA0w', N'ddfdddfff', N'192.19.38', N'Ahmed12', N'AHMED12', N'ahmed@gmail.com', N'AHMED@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEBb1ZhRrRjYzvhL4y+Yj0DlnPAfhV6AsyHD52oG4PViIOWWuuJgalwMW50yEMTYjBg==', N'TELWIPRSTIVPWA6LQE2VSPVZN7RU2NGR', N'0b0f0a5e-d9a2-4e52-a683-fe8888f0d5f1', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [RefreashToken], [device], [ipaddress], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'fb37dd55-9c5f-46db-a64e-ca73585d33df', N'Wasim', N'Khan', N'eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJmYjM3ZGQ1NS05YzVmLTQ2ZGItYTY0ZS1jYTczNTg1ZDMzZGYiLCJ1bmlxdWVfbmFtZSI6Indhc2lpa2hhbiIsInN1YiI6Indhc2ltQGdtYWlsLmNvbSIsImp0aSI6IjBhMjNjMjlmLWRiZWEtNGUxNi04NmRkLTExZWIzMTMxNDE3ZSIsImVtYWlsIjoid2FzaW1AZ21haWwuY29tIiwiaWQiOiJmYjM3ZGQ1NS05YzVmLTQ2ZGItYTY0ZS1jYTczNTg1ZDMzZGYiLCJyb2xlIjoiTkEiLCJuYmYiOjE2NjE3MTE0MTIsImV4cCI6MTY2MTcxNTAxMiwiaWF0IjoxNjYxNzExNDEyLCJpc3MiOiJMb3R0YXJ5IiwiYXVkIjoiTG90dGFyeSJ9.rAlRc7MuOInOQ2oXBeHmByYwfZa6i0VJQsAtC_rAZrAuBZx5mwDA5AIwlgXVay-Lq-veMg5VomuTvybwy0K_Cw', N'dfdfddf', N'192.72.26', N'wasiikhan', N'WASIIKHAN', N'wasim@gmail.com', N'WASIM@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAELSPo5kx/hmYQpVnsmQQf84O0M4U5o3KF47l+MP4YhF+CEcj9vHHs39zyNB8L2AY5A==', N'6IH7VCZLSYOOP5B2VXZLQXYQ27X5J6N4', N'004fd1ec-c8fc-466a-aee1-83de2f0230a8', NULL, 0, 0, NULL, 1, 0)
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
