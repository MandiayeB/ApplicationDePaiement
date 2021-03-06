USE [master]
GO
/****** Object:  Database [PaymentDetailDB]    Script Date: 03/01/2021 14:59:54 ******/
CREATE DATABASE [PaymentDetailDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PaymentDetailDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PaymentDetailDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PaymentDetailDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PaymentDetailDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PaymentDetailDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PaymentDetailDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PaymentDetailDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PaymentDetailDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PaymentDetailDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PaymentDetailDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PaymentDetailDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [PaymentDetailDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PaymentDetailDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PaymentDetailDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PaymentDetailDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PaymentDetailDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PaymentDetailDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PaymentDetailDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PaymentDetailDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PaymentDetailDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PaymentDetailDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PaymentDetailDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PaymentDetailDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PaymentDetailDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PaymentDetailDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PaymentDetailDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PaymentDetailDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PaymentDetailDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PaymentDetailDB] SET RECOVERY FULL 
GO
ALTER DATABASE [PaymentDetailDB] SET  MULTI_USER 
GO
ALTER DATABASE [PaymentDetailDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PaymentDetailDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PaymentDetailDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PaymentDetailDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PaymentDetailDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PaymentDetailDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'PaymentDetailDB', N'ON'
GO
ALTER DATABASE [PaymentDetailDB] SET QUERY_STORE = OFF
GO
USE [PaymentDetailDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 03/01/2021 14:59:55 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentDetails]    Script Date: 03/01/2021 14:59:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentDetails](
	[PaymentDetailId] [int] IDENTITY(1,1) NOT NULL,
	[CardOwnerName] [nvarchar](100) NULL,
	[CardNumber] [nvarchar](16) NULL,
	[ExpirationDate] [nvarchar](5) NULL,
	[SecurityCode] [nvarchar](3) NULL,
 CONSTRAINT [PK_PaymentDetails] PRIMARY KEY CLUSTERED 
(
	[PaymentDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [PaymentDetailDB] SET  READ_WRITE 
GO
