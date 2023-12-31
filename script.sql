USE [master]
GO
/****** Object:  Database [sqltodo]    Script Date: 8/9/2023 5:40:16 AM ******/
CREATE DATABASE [sqltodo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'sqltodo', FILENAME = N'D:\sql\MSSQL13.MSSQLSERVER\MSSQL\DATA\sqltodo.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'sqltodo_log', FILENAME = N'D:\sql\MSSQL13.MSSQLSERVER\MSSQL\DATA\sqltodo_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [sqltodo] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [sqltodo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [sqltodo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [sqltodo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [sqltodo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [sqltodo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [sqltodo] SET ARITHABORT OFF 
GO
ALTER DATABASE [sqltodo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [sqltodo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [sqltodo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [sqltodo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [sqltodo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [sqltodo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [sqltodo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [sqltodo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [sqltodo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [sqltodo] SET  DISABLE_BROKER 
GO
ALTER DATABASE [sqltodo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [sqltodo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [sqltodo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [sqltodo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [sqltodo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [sqltodo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [sqltodo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [sqltodo] SET RECOVERY FULL 
GO
ALTER DATABASE [sqltodo] SET  MULTI_USER 
GO
ALTER DATABASE [sqltodo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [sqltodo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [sqltodo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [sqltodo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [sqltodo] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'sqltodo', N'ON'
GO
ALTER DATABASE [sqltodo] SET QUERY_STORE = OFF
GO
USE [sqltodo]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [sqltodo]
GO
/****** Object:  Table [dbo].[Table_1]    Script Date: 8/9/2023 5:40:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_1](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[topic] [nvarchar](50) NULL,
	[txt] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [sqltodo] SET  READ_WRITE 
GO
