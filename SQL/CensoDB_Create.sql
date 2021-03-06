USE [master]
GO
/****** Object:  Database [CensoDB]    Script Date: 22/03/2020 20:18:01 ******/
CREATE DATABASE [CensoDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CensoDB', FILENAME = N'/var/opt/mssql/data/CensoDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CensoDB_log', FILENAME = N'/var/opt/mssql/data/CensoDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CensoDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CensoDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CensoDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CensoDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CensoDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CensoDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CensoDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [CensoDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CensoDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CensoDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CensoDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CensoDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CensoDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CensoDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CensoDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CensoDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CensoDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CensoDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CensoDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CensoDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CensoDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CensoDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CensoDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CensoDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CensoDB] SET RECOVERY FULL 
GO
ALTER DATABASE [CensoDB] SET  MULTI_USER 
GO
ALTER DATABASE [CensoDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CensoDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CensoDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CensoDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CensoDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'CensoDB', N'ON'
GO
ALTER DATABASE [CensoDB] SET QUERY_STORE = OFF
GO
USE [CensoDB]
GO
/****** Object:  User [CensoUser]    Script Date: 22/03/2020 20:18:01 ******/
CREATE USER [CensoUser] FOR LOGIN [CensoUser] WITH DEFAULT_SCHEMA=[db_owner]
GO
/****** Object:  Table [dbo].[TB_District]    Script Date: 22/03/2020 20:18:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_District](
	[Id] [uniqueidentifier] NOT NULL,
	[CreatAt] [datetime] NOT NULL,
	[AlterAt] [datetime] NULL,
	[Active] [bit] NOT NULL,
	[Description] [varchar](100) NOT NULL,
 CONSTRAINT [PK_TB_District] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Educational]    Script Date: 22/03/2020 20:18:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Educational](
	[Id] [uniqueidentifier] NOT NULL,
	[CreatAt] [datetime] NOT NULL,
	[AlterAt] [datetime] NULL,
	[Active] [bit] NOT NULL,
	[Description] [varchar](100) NOT NULL,
 CONSTRAINT [PK_TB_Educational] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Ethnicity]    Script Date: 22/03/2020 20:18:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Ethnicity](
	[Id] [uniqueidentifier] NOT NULL,
	[CreatAt] [datetime] NOT NULL,
	[AlterAt] [datetime] NULL,
	[Active] [bit] NOT NULL,
	[Description] [varchar](100) NOT NULL,
 CONSTRAINT [PK_TB_Ethnicity] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Gender]    Script Date: 22/03/2020 20:18:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Gender](
	[Id] [uniqueidentifier] NOT NULL,
	[CreatAt] [datetime] NOT NULL,
	[AlterAt] [datetime] NULL,
	[Active] [bit] NOT NULL,
	[Description] [varchar](100) NOT NULL,
 CONSTRAINT [PK_TB_Gender] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_People]    Script Date: 22/03/2020 20:18:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_People](
	[Id] [uniqueidentifier] NOT NULL,
	[CreatAt] [datetime] NOT NULL,
	[AlterAt] [datetime] NULL,
	[Active] [bit] NOT NULL,
	[Document] [varchar](50) NOT NULL,
	[Birthdate] [datetime] NOT NULL,
	[FirstName] [varchar](100) NOT NULL,
	[LastName] [varchar](100) NOT NULL,
	[EthnicityId] [uniqueidentifier] NOT NULL,
	[GenderId] [uniqueidentifier] NOT NULL,
	[EducationalId] [uniqueidentifier] NOT NULL,
	[DistrictId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_TB_People] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Relationship]    Script Date: 22/03/2020 20:18:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Relationship](
	[SonId] [uniqueidentifier] NOT NULL,
	[ParentId] [uniqueidentifier] NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[TB_District] ([Id], [CreatAt], [AlterAt], [Active], [Description]) VALUES (N'803851cd-637f-4837-91f6-0fb2a40186de', CAST(N'2020-03-18T00:10:53.253' AS DateTime), CAST(N'2020-03-18T00:10:53.253' AS DateTime), 1, N'CT - Centro')
INSERT [dbo].[TB_District] ([Id], [CreatAt], [AlterAt], [Active], [Description]) VALUES (N'ac27b6ea-f64d-473f-8160-50009d64dbfa', CAST(N'2020-03-18T00:10:53.253' AS DateTime), CAST(N'2020-03-18T00:10:53.253' AS DateTime), 1, N'ZN - Zona Norte')
INSERT [dbo].[TB_District] ([Id], [CreatAt], [AlterAt], [Active], [Description]) VALUES (N'7e0d84ce-b739-4783-a353-6a7524fc2d12', CAST(N'2020-03-18T00:10:53.253' AS DateTime), CAST(N'2020-03-18T00:10:53.253' AS DateTime), 1, N'ZO - Zona Oeste')
INSERT [dbo].[TB_District] ([Id], [CreatAt], [AlterAt], [Active], [Description]) VALUES (N'063e9a08-704d-4493-be87-6f67f25728ad', CAST(N'2020-03-18T00:10:53.253' AS DateTime), CAST(N'2020-03-18T00:10:53.253' AS DateTime), 1, N'ZL - Zona Leste')
INSERT [dbo].[TB_District] ([Id], [CreatAt], [AlterAt], [Active], [Description]) VALUES (N'7dd22e82-8d30-49c8-8d7e-7ccf1d1c357c', CAST(N'2020-03-18T00:10:53.253' AS DateTime), CAST(N'2020-03-18T00:10:53.253' AS DateTime), 1, N'ZS - Zona Sul')
INSERT [dbo].[TB_Educational] ([Id], [CreatAt], [AlterAt], [Active], [Description]) VALUES (N'd5ff16f8-4eab-4570-a462-30f3a83fe803', CAST(N'2020-03-18T00:15:42.423' AS DateTime), CAST(N'2020-03-18T00:15:42.423' AS DateTime), 1, N'Pós-graduação (Lato senso) - Completo')
INSERT [dbo].[TB_Educational] ([Id], [CreatAt], [AlterAt], [Active], [Description]) VALUES (N'0e15a744-6d13-45d5-bfe9-374d0c9bdfe9', CAST(N'2020-03-18T00:15:42.423' AS DateTime), CAST(N'2020-03-18T00:15:42.423' AS DateTime), 1, N'Médio - Completo')
INSERT [dbo].[TB_Educational] ([Id], [CreatAt], [AlterAt], [Active], [Description]) VALUES (N'63d7413f-783f-4b02-b9e6-5a167b3e7cd0', CAST(N'2020-03-18T00:15:42.423' AS DateTime), CAST(N'2020-03-18T00:15:42.423' AS DateTime), 1, N'Superior - Completo')
INSERT [dbo].[TB_Educational] ([Id], [CreatAt], [AlterAt], [Active], [Description]) VALUES (N'68de8abc-b032-4005-922a-6305c9d2b3e2', CAST(N'2020-03-18T00:15:42.423' AS DateTime), CAST(N'2020-03-18T00:15:42.423' AS DateTime), 1, N'Pós-graduação (Stricto sensu, nível mestrado) - Completo')
INSERT [dbo].[TB_Educational] ([Id], [CreatAt], [AlterAt], [Active], [Description]) VALUES (N'eaceb641-0eb2-45e6-a5d1-6c11e1732aef', CAST(N'2020-03-18T00:15:42.423' AS DateTime), CAST(N'2020-03-18T00:15:42.423' AS DateTime), 1, N'Pós-graduação (Stricto sensu, nível doutor) - Incompleto')
INSERT [dbo].[TB_Educational] ([Id], [CreatAt], [AlterAt], [Active], [Description]) VALUES (N'3d3c0944-ac03-49b0-a4d6-7b21401e5d2b', CAST(N'2020-03-18T00:15:42.423' AS DateTime), CAST(N'2020-03-18T00:15:42.423' AS DateTime), 1, N'Fundamental - Incompleto')
INSERT [dbo].[TB_Educational] ([Id], [CreatAt], [AlterAt], [Active], [Description]) VALUES (N'77348f60-dd60-4c2c-9e90-9f0f0ea7c7ba', CAST(N'2020-03-18T00:15:42.423' AS DateTime), CAST(N'2020-03-18T00:15:42.423' AS DateTime), 1, N'Médio - Incompleto')
INSERT [dbo].[TB_Educational] ([Id], [CreatAt], [AlterAt], [Active], [Description]) VALUES (N'2eecb485-7768-4cc4-aadd-9f9b76f17882', CAST(N'2020-03-18T00:15:42.423' AS DateTime), CAST(N'2020-03-18T00:15:42.423' AS DateTime), 1, N'Fundamental - Completo')
INSERT [dbo].[TB_Educational] ([Id], [CreatAt], [AlterAt], [Active], [Description]) VALUES (N'af3926d4-6da0-4e82-9f05-ac53c59b5578', CAST(N'2020-03-18T00:15:42.423' AS DateTime), CAST(N'2020-03-18T00:15:42.423' AS DateTime), 1, N'Superior - Incompleto')
INSERT [dbo].[TB_Educational] ([Id], [CreatAt], [AlterAt], [Active], [Description]) VALUES (N'aef864e8-e42c-4ba2-9617-b1a617861bd2', CAST(N'2020-03-18T00:15:42.423' AS DateTime), CAST(N'2020-03-18T00:15:42.423' AS DateTime), 1, N'Pós-graduação (Stricto sensu, nível doutor) - Completo')
INSERT [dbo].[TB_Educational] ([Id], [CreatAt], [AlterAt], [Active], [Description]) VALUES (N'430ecc9b-6e61-4c19-934d-dd50d5ab3616', CAST(N'2020-03-18T00:15:42.423' AS DateTime), CAST(N'2020-03-18T00:15:42.423' AS DateTime), 1, N'Pós-graduação (Stricto sensu, nível mestrado) - Incompleto')
INSERT [dbo].[TB_Educational] ([Id], [CreatAt], [AlterAt], [Active], [Description]) VALUES (N'93668858-9677-4ad0-b6fb-e2717ab420f1', CAST(N'2020-03-18T00:15:42.423' AS DateTime), CAST(N'2020-03-18T00:15:42.423' AS DateTime), 1, N'Pós-graduação (Lato senso) - Incompleto')
INSERT [dbo].[TB_Ethnicity] ([Id], [CreatAt], [AlterAt], [Active], [Description]) VALUES (N'8adffa72-f0a6-41f5-b49a-2b0e1fb96114', CAST(N'2020-03-18T00:18:15.943' AS DateTime), CAST(N'2020-03-18T00:18:15.943' AS DateTime), 1, N'Amarelo')
INSERT [dbo].[TB_Ethnicity] ([Id], [CreatAt], [AlterAt], [Active], [Description]) VALUES (N'5516125e-7f15-40c3-925a-2f48a7b87668', CAST(N'2020-03-18T00:18:15.943' AS DateTime), CAST(N'2020-03-18T00:18:15.943' AS DateTime), 1, N'Negro')
INSERT [dbo].[TB_Ethnicity] ([Id], [CreatAt], [AlterAt], [Active], [Description]) VALUES (N'fd21d607-903a-4f89-889d-cc6ca2a1171c', CAST(N'2020-03-18T00:18:15.943' AS DateTime), CAST(N'2020-03-18T00:18:15.943' AS DateTime), 1, N'Branco')
INSERT [dbo].[TB_Ethnicity] ([Id], [CreatAt], [AlterAt], [Active], [Description]) VALUES (N'388a716e-e7a1-4647-bd04-d811044b909d', CAST(N'2020-03-18T00:18:15.943' AS DateTime), CAST(N'2020-03-18T00:18:15.943' AS DateTime), 1, N'Pardo')
INSERT [dbo].[TB_Ethnicity] ([Id], [CreatAt], [AlterAt], [Active], [Description]) VALUES (N'8598d107-99f4-405c-be1c-f33ae242abfb', CAST(N'2020-03-18T00:18:15.943' AS DateTime), CAST(N'2020-03-18T00:18:15.943' AS DateTime), 1, N'Indígena')
INSERT [dbo].[TB_Gender] ([Id], [CreatAt], [AlterAt], [Active], [Description]) VALUES (N'7c389d3c-c8f2-4dac-813d-c906e1171d3f', CAST(N'2020-03-18T00:04:47.367' AS DateTime), CAST(N'2020-03-18T00:04:47.367' AS DateTime), 1, N'Masculino')
INSERT [dbo].[TB_Gender] ([Id], [CreatAt], [AlterAt], [Active], [Description]) VALUES (N'cae5f74a-40c2-45d9-a4af-e5e402dc0866', CAST(N'2020-03-18T00:04:47.367' AS DateTime), CAST(N'2020-03-18T00:04:47.367' AS DateTime), 1, N'Feminino')
/****** Object:  Index [IX_TB_Relationship]    Script Date: 22/03/2020 20:18:01 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_TB_Relationship] ON [dbo].[TB_Relationship]
(
	[SonId] ASC,
	[ParentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TB_People]  WITH CHECK ADD  CONSTRAINT [FK_TB_People_TB_District] FOREIGN KEY([DistrictId])
REFERENCES [dbo].[TB_District] ([Id])
GO
ALTER TABLE [dbo].[TB_People] CHECK CONSTRAINT [FK_TB_People_TB_District]
GO
ALTER TABLE [dbo].[TB_People]  WITH CHECK ADD  CONSTRAINT [FK_TB_People_TB_Educational] FOREIGN KEY([EducationalId])
REFERENCES [dbo].[TB_Educational] ([Id])
GO
ALTER TABLE [dbo].[TB_People] CHECK CONSTRAINT [FK_TB_People_TB_Educational]
GO
ALTER TABLE [dbo].[TB_People]  WITH CHECK ADD  CONSTRAINT [FK_TB_People_TB_Ethnicity] FOREIGN KEY([EthnicityId])
REFERENCES [dbo].[TB_Ethnicity] ([Id])
GO
ALTER TABLE [dbo].[TB_People] CHECK CONSTRAINT [FK_TB_People_TB_Ethnicity]
GO
ALTER TABLE [dbo].[TB_People]  WITH CHECK ADD  CONSTRAINT [FK_TB_People_TB_Gender] FOREIGN KEY([GenderId])
REFERENCES [dbo].[TB_Gender] ([Id])
GO
ALTER TABLE [dbo].[TB_People] CHECK CONSTRAINT [FK_TB_People_TB_Gender]
GO
ALTER TABLE [dbo].[TB_Relationship]  WITH CHECK ADD  CONSTRAINT [FK_TB_Relationship_PARENT_TB_Relationship] FOREIGN KEY([ParentId])
REFERENCES [dbo].[TB_People] ([Id])
GO
ALTER TABLE [dbo].[TB_Relationship] CHECK CONSTRAINT [FK_TB_Relationship_PARENT_TB_Relationship]
GO
ALTER TABLE [dbo].[TB_Relationship]  WITH CHECK ADD  CONSTRAINT [FK_TB_Relationship_SON_TB_People] FOREIGN KEY([SonId])
REFERENCES [dbo].[TB_People] ([Id])
GO
ALTER TABLE [dbo].[TB_Relationship] CHECK CONSTRAINT [FK_TB_Relationship_SON_TB_People]
GO
USE [master]
GO
ALTER DATABASE [CensoDB] SET  READ_WRITE 
GO
