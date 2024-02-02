USE [master]
GO

/****** Object:  Database [KR2_Saifutdinov]    Script Date: 01.02.2024 17:32:12 ******/
CREATE DATABASE [KR2_Saifutdinov]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KR2_Saifutdinov', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.IS2011\MSSQL\DATA\KR2_Saifutdinov.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'KR2_Saifutdinov_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.IS2011\MSSQL\DATA\KR2_Saifutdinov_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KR2_Saifutdinov].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [KR2_Saifutdinov] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [KR2_Saifutdinov] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [KR2_Saifutdinov] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [KR2_Saifutdinov] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [KR2_Saifutdinov] SET ARITHABORT OFF 
GO

ALTER DATABASE [KR2_Saifutdinov] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [KR2_Saifutdinov] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [KR2_Saifutdinov] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [KR2_Saifutdinov] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [KR2_Saifutdinov] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [KR2_Saifutdinov] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [KR2_Saifutdinov] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [KR2_Saifutdinov] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [KR2_Saifutdinov] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [KR2_Saifutdinov] SET  DISABLE_BROKER 
GO

ALTER DATABASE [KR2_Saifutdinov] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [KR2_Saifutdinov] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [KR2_Saifutdinov] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [KR2_Saifutdinov] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [KR2_Saifutdinov] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [KR2_Saifutdinov] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [KR2_Saifutdinov] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [KR2_Saifutdinov] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [KR2_Saifutdinov] SET  MULTI_USER 
GO

ALTER DATABASE [KR2_Saifutdinov] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [KR2_Saifutdinov] SET DB_CHAINING OFF 
GO

ALTER DATABASE [KR2_Saifutdinov] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [KR2_Saifutdinov] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [KR2_Saifutdinov] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [KR2_Saifutdinov] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [KR2_Saifutdinov] SET QUERY_STORE = OFF
GO

ALTER DATABASE [KR2_Saifutdinov] SET  READ_WRITE 
GO

