USE [master]
GO
/****** Object:  Database [PetStore]    Script Date: 10/23/2015 2:12:18 PM ******/
CREATE DATABASE [PetStore]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PetStore', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\PetStore.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PetStore_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\PetStore_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [PetStore] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PetStore].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PetStore] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PetStore] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PetStore] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PetStore] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PetStore] SET ARITHABORT OFF 
GO
ALTER DATABASE [PetStore] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PetStore] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PetStore] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PetStore] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PetStore] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PetStore] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PetStore] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PetStore] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PetStore] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PetStore] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PetStore] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PetStore] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PetStore] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PetStore] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PetStore] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PetStore] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PetStore] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PetStore] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PetStore] SET  MULTI_USER 
GO
ALTER DATABASE [PetStore] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PetStore] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PetStore] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PetStore] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [PetStore] SET DELAYED_DURABILITY = DISABLED 
GO
USE [PetStore]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 10/23/2015 2:12:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Colors]    Script Date: 10/23/2015 2:12:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colors](
	[Name] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Colors] PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Countries]    Script Date: 10/23/2015 2:12:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pets]    Script Date: 10/23/2015 2:12:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pets](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SpeciesId] [int] NOT NULL,
	[BirthDate] [datetime] NOT NULL,
	[Price] [money] NOT NULL,
	[ColorName] [nvarchar](10) NOT NULL,
	[Breed] [nvarchar](30) NULL,
 CONSTRAINT [PK_Pets] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 10/23/2015 2:12:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](25) NOT NULL,
	[Price] [money] NOT NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Species]    Script Date: 10/23/2015 2:12:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Species](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[OriginCountryName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Species] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SpeciesProducts]    Script Date: 10/23/2015 2:12:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpeciesProducts](
	[SpeciesId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_SpeciesProducts] PRIMARY KEY CLUSTERED 
(
	[SpeciesId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_PetBirthDate]    Script Date: 10/23/2015 2:12:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_PetBirthDate] ON [dbo].[Pets]
(
	[BirthDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PetPrice]    Script Date: 10/23/2015 2:12:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_PetPrice] ON [dbo].[Pets]
(
	[Price] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Species]    Script Date: 10/23/2015 2:12:18 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Species] ON [dbo].[Species]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Pets]  WITH CHECK ADD  CONSTRAINT [FK_Pets_Colors] FOREIGN KEY([ColorName])
REFERENCES [dbo].[Colors] ([Name])
GO
ALTER TABLE [dbo].[Pets] CHECK CONSTRAINT [FK_Pets_Colors]
GO
ALTER TABLE [dbo].[Pets]  WITH CHECK ADD  CONSTRAINT [FK_Pets_Species] FOREIGN KEY([SpeciesId])
REFERENCES [dbo].[Species] ([Id])
GO
ALTER TABLE [dbo].[Pets] CHECK CONSTRAINT [FK_Pets_Species]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [dbo].[Species]  WITH CHECK ADD  CONSTRAINT [FK_Species_Countries] FOREIGN KEY([OriginCountryName])
REFERENCES [dbo].[Countries] ([Name])
GO
ALTER TABLE [dbo].[Species] CHECK CONSTRAINT [FK_Species_Countries]
GO
ALTER TABLE [dbo].[SpeciesProducts]  WITH CHECK ADD  CONSTRAINT [FK_SpeciesProducts_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[SpeciesProducts] CHECK CONSTRAINT [FK_SpeciesProducts_Products]
GO
ALTER TABLE [dbo].[SpeciesProducts]  WITH CHECK ADD  CONSTRAINT [FK_SpeciesProducts_Species] FOREIGN KEY([SpeciesId])
REFERENCES [dbo].[Species] ([Id])
GO
ALTER TABLE [dbo].[SpeciesProducts] CHECK CONSTRAINT [FK_SpeciesProducts_Species]
GO
ALTER TABLE [dbo].[Categories]  WITH CHECK ADD  CONSTRAINT [CK_CategoruNameMinLenghtFive] CHECK  (((5)<=len([Name])))
GO
ALTER TABLE [dbo].[Categories] CHECK CONSTRAINT [CK_CategoruNameMinLenghtFive]
GO
ALTER TABLE [dbo].[Countries]  WITH CHECK ADD  CONSTRAINT [CK_CountryNameMinLengthFive] CHECK  (((5)<=len([Name])))
GO
ALTER TABLE [dbo].[Countries] CHECK CONSTRAINT [CK_CountryNameMinLengthFive]
GO
ALTER TABLE [dbo].[Pets]  WITH CHECK ADD  CONSTRAINT [CK_PetBreeMinLendth5] CHECK  (((5)<=len([Breed])))
GO
ALTER TABLE [dbo].[Pets] CHECK CONSTRAINT [CK_PetBreeMinLendth5]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [CK_ProductNameLengthMinFive] CHECK  (((5)<=len([Name])))
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [CK_ProductNameLengthMinFive]
GO
ALTER TABLE [dbo].[Species]  WITH CHECK ADD  CONSTRAINT [CK_SpecieNameLengthMinFive] CHECK  (((5)<=len([Name])))
GO
ALTER TABLE [dbo].[Species] CHECK CONSTRAINT [CK_SpecieNameLengthMinFive]
GO
/****** Object:  StoredProcedure [dbo].[usp_SeedColors]    Script Date: 10/23/2015 2:12:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_SeedColors]
AS
BEGIN
	DECLARE @colorsCount INT = (SELECT COUNT(*) FROM Colors)

	IF (@colorsCount = 0)
	BEGIN
		INSERT INTO Colors VALUES
		('black'),
		('white'),
		('red'),
		('mixed')
	END
END


GO
USE [master]
GO
ALTER DATABASE [PetStore] SET  READ_WRITE 
GO
