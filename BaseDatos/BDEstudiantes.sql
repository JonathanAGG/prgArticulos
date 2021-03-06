USE [master]
GO
/****** Object:  Database [BDEstudiantes]    Script Date: 04/12/2016 16:55:46 ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'BDEstudiantes')
BEGIN
CREATE DATABASE [BDEstudiantes] ON  PRIMARY 
( NAME = N'BDEstudiantes', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\BDEstudiantes.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BDEstudiantes_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\BDEstudiantes_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
END
GO
ALTER DATABASE [BDEstudiantes] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BDEstudiantes].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BDEstudiantes] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [BDEstudiantes] SET ANSI_NULLS OFF
GO
ALTER DATABASE [BDEstudiantes] SET ANSI_PADDING OFF
GO
ALTER DATABASE [BDEstudiantes] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [BDEstudiantes] SET ARITHABORT OFF
GO
ALTER DATABASE [BDEstudiantes] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [BDEstudiantes] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [BDEstudiantes] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [BDEstudiantes] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [BDEstudiantes] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [BDEstudiantes] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [BDEstudiantes] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [BDEstudiantes] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [BDEstudiantes] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [BDEstudiantes] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [BDEstudiantes] SET  DISABLE_BROKER
GO
ALTER DATABASE [BDEstudiantes] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [BDEstudiantes] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [BDEstudiantes] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [BDEstudiantes] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [BDEstudiantes] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [BDEstudiantes] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [BDEstudiantes] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [BDEstudiantes] SET  READ_WRITE
GO
ALTER DATABASE [BDEstudiantes] SET RECOVERY FULL
GO
ALTER DATABASE [BDEstudiantes] SET  MULTI_USER
GO
ALTER DATABASE [BDEstudiantes] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [BDEstudiantes] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'BDEstudiantes', N'ON'
GO
USE [BDEstudiantes]
GO
/****** Object:  ForeignKey [FK_tbEstudiantes_tbUsuarios]    Script Date: 04/12/2016 16:55:48 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbEstudiantes_tbUsuarios]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbEstudiantes]'))
ALTER TABLE [dbo].[tbEstudiantes] DROP CONSTRAINT [FK_tbEstudiantes_tbUsuarios]
GO
/****** Object:  Table [dbo].[tbEstudiantes]    Script Date: 04/12/2016 16:55:48 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbEstudiantes_tbUsuarios]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbEstudiantes]'))
ALTER TABLE [dbo].[tbEstudiantes] DROP CONSTRAINT [FK_tbEstudiantes_tbUsuarios]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbEstudiantes]') AND type in (N'U'))
DROP TABLE [dbo].[tbEstudiantes]
GO
/****** Object:  Table [dbo].[tbUsuarios]    Script Date: 04/12/2016 16:55:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbUsuarios]') AND type in (N'U'))
DROP TABLE [dbo].[tbUsuarios]
GO
/****** Object:  User [admEstudiante]    Script Date: 04/12/2016 16:55:46 ******/
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'admEstudiante')
DROP USER [admEstudiante]
GO
USE [master]
GO
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 04/12/2016 16:55:46 ******/
IF  EXISTS (SELECT * FROM sys.server_principals WHERE name = N'##MS_PolicyEventProcessingLogin##')
DROP LOGIN [##MS_PolicyEventProcessingLogin##]
GO
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 04/12/2016 16:55:46 ******/
IF  EXISTS (SELECT * FROM sys.server_principals WHERE name = N'##MS_PolicyTsqlExecutionLogin##')
DROP LOGIN [##MS_PolicyTsqlExecutionLogin##]
GO
/****** Object:  Login [admEstudiante]    Script Date: 04/12/2016 16:55:46 ******/
IF  EXISTS (SELECT * FROM sys.server_principals WHERE name = N'admEstudiante')
DROP LOGIN [admEstudiante]
GO
/****** Object:  Login [NT AUTHORITY\SYSTEM]    Script Date: 04/12/2016 16:55:46 ******/
IF  EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT AUTHORITY\SYSTEM')
DROP LOGIN [NT AUTHORITY\SYSTEM]
GO
/****** Object:  Login [NT SERVICE\MSSQLSERVER]    Script Date: 04/12/2016 16:55:46 ******/
IF  EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT SERVICE\MSSQLSERVER')
DROP LOGIN [NT SERVICE\MSSQLSERVER]
GO
/****** Object:  Login [NT SERVICE\SQLSERVERAGENT]    Script Date: 04/12/2016 16:55:46 ******/
IF  EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT SERVICE\SQLSERVERAGENT')
DROP LOGIN [NT SERVICE\SQLSERVERAGENT]
GO
/****** Object:  Login [SP-DOC-LAB01-00\Administrador]    Script Date: 04/12/2016 16:55:46 ******/
IF  EXISTS (SELECT * FROM sys.server_principals WHERE name = N'SP-DOC-LAB01-00\Administrador')
DROP LOGIN [SP-DOC-LAB01-00\Administrador]
GO
/****** Object:  Login [SP-DOC-LAB01-00\Administrador]    Script Date: 04/12/2016 16:55:46 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'SP-DOC-LAB01-00\Administrador')
CREATE LOGIN [SP-DOC-LAB01-00\Administrador] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[Español]
GO
/****** Object:  Login [NT SERVICE\SQLSERVERAGENT]    Script Date: 04/12/2016 16:55:46 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT SERVICE\SQLSERVERAGENT')
CREATE LOGIN [NT SERVICE\SQLSERVERAGENT] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[Español]
GO
/****** Object:  Login [NT SERVICE\MSSQLSERVER]    Script Date: 04/12/2016 16:55:46 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT SERVICE\MSSQLSERVER')
CREATE LOGIN [NT SERVICE\MSSQLSERVER] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[Español]
GO
/****** Object:  Login [NT AUTHORITY\SYSTEM]    Script Date: 04/12/2016 16:55:46 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT AUTHORITY\SYSTEM')
CREATE LOGIN [NT AUTHORITY\SYSTEM] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[Español]
GO
/****** Object:  Login [admEstudiante]    Script Date: 04/12/2016 16:55:46 ******/
/* For security reasons the login is created disabled and with a random password. */
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'admEstudiante')
CREATE LOGIN [admEstudiante] WITH PASSWORD=N'LRl²¤EmEºµihc
Ja±áçAV`5(', DEFAULT_DATABASE=[BDEstudiantes], DEFAULT_LANGUAGE=[Español], CHECK_EXPIRATION=ON, CHECK_POLICY=ON
GO
EXEC sys.sp_addsrvrolemember @loginame = N'admEstudiante', @rolename = N'sysadmin'
GO
EXEC sys.sp_addsrvrolemember @loginame = N'admEstudiante', @rolename = N'securityadmin'
GO
EXEC sys.sp_addsrvrolemember @loginame = N'admEstudiante', @rolename = N'serveradmin'
GO
EXEC sys.sp_addsrvrolemember @loginame = N'admEstudiante', @rolename = N'setupadmin'
GO
EXEC sys.sp_addsrvrolemember @loginame = N'admEstudiante', @rolename = N'processadmin'
GO
EXEC sys.sp_addsrvrolemember @loginame = N'admEstudiante', @rolename = N'diskadmin'
GO
EXEC sys.sp_addsrvrolemember @loginame = N'admEstudiante', @rolename = N'dbcreator'
GO
EXEC sys.sp_addsrvrolemember @loginame = N'admEstudiante', @rolename = N'bulkadmin'
GO
ALTER LOGIN [admEstudiante] DISABLE
GO
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 04/12/2016 16:55:46 ******/
/* For security reasons the login is created disabled and with a random password. */
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'##MS_PolicyTsqlExecutionLogin##')
CREATE LOGIN [##MS_PolicyTsqlExecutionLogin##] WITH PASSWORD=N'YDÞ©ZGA@:®;ÄAÖixº]@äm ÒsºAÔ', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyTsqlExecutionLogin##] DISABLE
GO
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 04/12/2016 16:55:46 ******/
/* For security reasons the login is created disabled and with a random password. */
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'##MS_PolicyEventProcessingLogin##')
CREATE LOGIN [##MS_PolicyEventProcessingLogin##] WITH PASSWORD=N'+¿»I7ß¿0ñ4Cý@aìó­N®ãniK', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyEventProcessingLogin##] DISABLE
GO
USE [BDEstudiantes]
GO
/****** Object:  User [admEstudiante]    Script Date: 04/12/2016 16:55:46 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'admEstudiante')
CREATE USER [admEstudiante] FOR LOGIN [admEstudiante] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[tbUsuarios]    Script Date: 04/12/2016 16:55:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbUsuarios]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbUsuarios](
	[codigo] [nvarchar](10) NOT NULL,
	[clave] [nvarchar](10) NOT NULL,
	[perfil] [nvarchar](50) NOT NULL,
	[estado] [int] NOT NULL,
 CONSTRAINT [PK_tbUsuarios] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[tbUsuarios] ([codigo], [clave], [perfil], [estado]) VALUES (N'wvargas', N'123', N'admEstudiante', 0)
/****** Object:  Table [dbo].[tbEstudiantes]    Script Date: 04/12/2016 16:55:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbEstudiantes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbEstudiantes](
	[idEstudiante] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NOT NULL,
	[apellido1] [nvarchar](50) NOT NULL,
	[apellido2] [nvarchar](50) NOT NULL,
	[cedula] [int] NOT NULL,
	[email] [nvarchar](100) NOT NULL,
	[direccion] [nvarchar](150) NOT NULL,
	[foto] [varbinary](max) NULL,
	[codigo] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_tbEstudiantes] PRIMARY KEY CLUSTERED 
(
	[idEstudiante] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [FK_tbEstudiantes_tbUsuarios]    Script Date: 04/12/2016 16:55:48 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbEstudiantes_tbUsuarios]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbEstudiantes]'))
ALTER TABLE [dbo].[tbEstudiantes]  WITH CHECK ADD  CONSTRAINT [FK_tbEstudiantes_tbUsuarios] FOREIGN KEY([codigo])
REFERENCES [dbo].[tbUsuarios] ([codigo])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbEstudiantes_tbUsuarios]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbEstudiantes]'))
ALTER TABLE [dbo].[tbEstudiantes] CHECK CONSTRAINT [FK_tbEstudiantes_tbUsuarios]
GO
USE [master]
GO
GRANT CONNECT TO [admEstudiante] AS [dbo]
GO
USE [BDEstudiantes]
GO
GRANT ALTER ON [dbo].[tbUsuarios] TO [admEstudiante] AS [dbo]
GO
GRANT CONTROL ON [dbo].[tbUsuarios] TO [admEstudiante] AS [dbo]
GO
GRANT DELETE ON [dbo].[tbUsuarios] TO [admEstudiante] AS [dbo]
GO
GRANT INSERT ON [dbo].[tbUsuarios] TO [admEstudiante] AS [dbo]
GO
GRANT REFERENCES ON [dbo].[tbUsuarios] TO [admEstudiante] AS [dbo]
GO
GRANT SELECT ON [dbo].[tbUsuarios] TO [admEstudiante] AS [dbo]
GO
GRANT TAKE OWNERSHIP ON [dbo].[tbUsuarios] TO [admEstudiante] AS [dbo]
GO
GRANT UPDATE ON [dbo].[tbUsuarios] TO [admEstudiante] AS [dbo]
GO
GRANT VIEW DEFINITION ON [dbo].[tbUsuarios] TO [admEstudiante] AS [dbo]
GO
GRANT ALTER ON [dbo].[tbEstudiantes] TO [admEstudiante] AS [dbo]
GO
GRANT CONTROL ON [dbo].[tbEstudiantes] TO [admEstudiante] AS [dbo]
GO
GRANT DELETE ON [dbo].[tbEstudiantes] TO [admEstudiante] AS [dbo]
GO
GRANT INSERT ON [dbo].[tbEstudiantes] TO [admEstudiante] AS [dbo]
GO
GRANT REFERENCES ON [dbo].[tbEstudiantes] TO [admEstudiante] AS [dbo]
GO
GRANT SELECT ON [dbo].[tbEstudiantes] TO [admEstudiante] AS [dbo]
GO
GRANT TAKE OWNERSHIP ON [dbo].[tbEstudiantes] TO [admEstudiante] AS [dbo]
GO
GRANT UPDATE ON [dbo].[tbEstudiantes] TO [admEstudiante] AS [dbo]
GO
