USE [master]
GO
/****** Object:  Database [DB_DonDonas]    Script Date: 26/06/2023 02:05:06 a. m. ******/
CREATE DATABASE [DB_DonDonas]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB_DonDonas', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER2019\MSSQL\DATA\DB_DonDonas.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DB_DonDonas_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER2019\MSSQL\DATA\DB_DonDonas_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DB_DonDonas] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB_DonDonas].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB_DonDonas] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB_DonDonas] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB_DonDonas] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB_DonDonas] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB_DonDonas] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB_DonDonas] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DB_DonDonas] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB_DonDonas] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB_DonDonas] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB_DonDonas] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB_DonDonas] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB_DonDonas] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB_DonDonas] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB_DonDonas] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB_DonDonas] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DB_DonDonas] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB_DonDonas] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB_DonDonas] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB_DonDonas] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB_DonDonas] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB_DonDonas] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB_DonDonas] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB_DonDonas] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DB_DonDonas] SET  MULTI_USER 
GO
ALTER DATABASE [DB_DonDonas] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB_DonDonas] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB_DonDonas] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB_DonDonas] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DB_DonDonas] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DB_DonDonas] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DB_DonDonas] SET QUERY_STORE = OFF
GO
USE [DB_DonDonas]
GO
/****** Object:  Table [dbo].[Donuts]    Script Date: 26/06/2023 02:05:06 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Donuts](
	[IdDonuts] [int] IDENTITY(1,1) NOT NULL,
	[donutFlavor] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Donuts] PRIMARY KEY CLUSTERED 
(
	[IdDonuts] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Donuts_Orders]    Script Date: 26/06/2023 02:05:06 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Donuts_Orders](
	[IdDonuts_Orders] [int] IDENTITY(1,1) NOT NULL,
	[IdOrder] [int] NOT NULL,
	[IdDonuts] [int] NOT NULL,
	[NumberOfDonuts] [int] NOT NULL,
 CONSTRAINT [PK_Donuts_Orders] PRIMARY KEY CLUSTERED 
(
	[IdDonuts_Orders] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 26/06/2023 02:05:06 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[IdOrder] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[IdOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Donuts] ON 

INSERT [dbo].[Donuts] ([IdDonuts], [donutFlavor]) VALUES (1, N'Glaseada_Original')
INSERT [dbo].[Donuts] ([IdDonuts], [donutFlavor]) VALUES (2, N'Carlos_V_Blanco')
INSERT [dbo].[Donuts] ([IdDonuts], [donutFlavor]) VALUES (3, N'Crunch')
INSERT [dbo].[Donuts] ([IdDonuts], [donutFlavor]) VALUES (4, N'Larin_Almendra')
INSERT [dbo].[Donuts] ([IdDonuts], [donutFlavor]) VALUES (5, N'Carlos_V')
INSERT [dbo].[Donuts] ([IdDonuts], [donutFlavor]) VALUES (6, N'Hello_Kitty')
INSERT [dbo].[Donuts] ([IdDonuts], [donutFlavor]) VALUES (7, N'Original_de_Fresa')
INSERT [dbo].[Donuts] ([IdDonuts], [donutFlavor]) VALUES (8, N'Brownie')
INSERT [dbo].[Donuts] ([IdDonuts], [donutFlavor]) VALUES (9, N'Shell_Manzana_Canela')
INSERT [dbo].[Donuts] ([IdDonuts], [donutFlavor]) VALUES (10, N'Relleno_de_Cajeta')
INSERT [dbo].[Donuts] ([IdDonuts], [donutFlavor]) VALUES (11, N'Crema_Pastelera')
INSERT [dbo].[Donuts] ([IdDonuts], [donutFlavor]) VALUES (12, N'Moka')
INSERT [dbo].[Donuts] ([IdDonuts], [donutFlavor]) VALUES (13, N'Chocolate')
SET IDENTITY_INSERT [dbo].[Donuts] OFF
GO
SET IDENTITY_INSERT [dbo].[Donuts_Orders] ON 

INSERT [dbo].[Donuts_Orders] ([IdDonuts_Orders], [IdOrder], [IdDonuts], [NumberOfDonuts]) VALUES (1, 1, 5, 3)
INSERT [dbo].[Donuts_Orders] ([IdDonuts_Orders], [IdOrder], [IdDonuts], [NumberOfDonuts]) VALUES (18, 4, 4, 3)
INSERT [dbo].[Donuts_Orders] ([IdDonuts_Orders], [IdOrder], [IdDonuts], [NumberOfDonuts]) VALUES (19, 5, 2, 6)
INSERT [dbo].[Donuts_Orders] ([IdDonuts_Orders], [IdOrder], [IdDonuts], [NumberOfDonuts]) VALUES (20, 6, 12, 9)
INSERT [dbo].[Donuts_Orders] ([IdDonuts_Orders], [IdOrder], [IdDonuts], [NumberOfDonuts]) VALUES (21, 7, 11, 2)
INSERT [dbo].[Donuts_Orders] ([IdDonuts_Orders], [IdOrder], [IdDonuts], [NumberOfDonuts]) VALUES (22, 8, 12, 25)
INSERT [dbo].[Donuts_Orders] ([IdDonuts_Orders], [IdOrder], [IdDonuts], [NumberOfDonuts]) VALUES (23, 9, 12, 11)
INSERT [dbo].[Donuts_Orders] ([IdDonuts_Orders], [IdOrder], [IdDonuts], [NumberOfDonuts]) VALUES (24, 10, 12, 10)
INSERT [dbo].[Donuts_Orders] ([IdDonuts_Orders], [IdOrder], [IdDonuts], [NumberOfDonuts]) VALUES (25, 11, 5, 45)
INSERT [dbo].[Donuts_Orders] ([IdDonuts_Orders], [IdOrder], [IdDonuts], [NumberOfDonuts]) VALUES (26, 12, 10, 12)
INSERT [dbo].[Donuts_Orders] ([IdDonuts_Orders], [IdOrder], [IdDonuts], [NumberOfDonuts]) VALUES (27, 13, 13, 15)
SET IDENTITY_INSERT [dbo].[Donuts_Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([IdOrder], [Name], [Address]) VALUES (1, N'Pedro Gonzalez', N'Blvd. Puerto Aéreo 342, México (Lic. Benito Juárez), Venustiano Carranza, 15540 Ciudad de México, CDMX')
INSERT [dbo].[Orders] ([IdOrder], [Name], [Address]) VALUES (4, N'Jonas Juarez', N'Camino a Santa Teresa 1055, Héroes de Padierna, 10700, Magdalena Contreras, Ciudad de México.')
INSERT [dbo].[Orders] ([IdOrder], [Name], [Address]) VALUES (5, N'Juan Perez', N'Direccion avenida')
INSERT [dbo].[Orders] ([IdOrder], [Name], [Address]) VALUES (6, N'Marisela Dominguez', N'Durango 50, Roma, 6760, Cuauhtémoc, Ciudad de México.')
INSERT [dbo].[Orders] ([IdOrder], [Name], [Address]) VALUES (7, N'Karla Sanchez', N'Tarascos 3435, Fracc. Monraz, 44670, Guadalajara, Jalisco.')
INSERT [dbo].[Orders] ([IdOrder], [Name], [Address]) VALUES (8, N'Alfredo Mendoza', N'Vialidad de la Barranca 22, Valle de las Palmas, 52763, Huixquilucan, Estado de México.')
INSERT [dbo].[Orders] ([IdOrder], [Name], [Address]) VALUES (9, N'Veronica Lopez', N'Av. Cerro Gordo 311,Lomas de Campestre, 37150, León, Guanajuato.')
INSERT [dbo].[Orders] ([IdOrder], [Name], [Address]) VALUES (10, N'Demetrio Bautista', N'Rio Bamba 639, Magdalena de las Salinas,7760, Gustavo A. Madero, Ciudad de México.')
INSERT [dbo].[Orders] ([IdOrder], [Name], [Address]) VALUES (11, N'Santiago Hernandez', N' Bernardino del Razo 21, Ensueño, 76178, Santiago Querétaro, Querétaro.')
INSERT [dbo].[Orders] ([IdOrder], [Name], [Address]) VALUES (12, N'Luis Garcia', N'Av. Kepler 2143, Reserva Territorial Atlixcayotl, 72190, Puebla,Puebla.')
INSERT [dbo].[Orders] ([IdOrder], [Name], [Address]) VALUES (13, N'Susana Gomez', N'Carretera Guadalajara Chapala km 17.50 Ambulatorio de la planta baja, Centro, 45160, Guadalajara, Jalisco.')
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
/****** Object:  Index [IX_Donuts_Orders_IdDonuts]    Script Date: 26/06/2023 02:05:06 a. m. ******/
CREATE NONCLUSTERED INDEX [IX_Donuts_Orders_IdDonuts] ON [dbo].[Donuts_Orders]
(
	[IdDonuts] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Donuts_Orders_IdOrder]    Script Date: 26/06/2023 02:05:06 a. m. ******/
CREATE NONCLUSTERED INDEX [IX_Donuts_Orders_IdOrder] ON [dbo].[Donuts_Orders]
(
	[IdOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Donuts_Orders]  WITH CHECK ADD  CONSTRAINT [FK_Donuts_Orders_Donuts] FOREIGN KEY([IdDonuts])
REFERENCES [dbo].[Donuts] ([IdDonuts])
GO
ALTER TABLE [dbo].[Donuts_Orders] CHECK CONSTRAINT [FK_Donuts_Orders_Donuts]
GO
ALTER TABLE [dbo].[Donuts_Orders]  WITH CHECK ADD  CONSTRAINT [FK_Donuts_Orders_Orders] FOREIGN KEY([IdOrder])
REFERENCES [dbo].[Orders] ([IdOrder])
GO
ALTER TABLE [dbo].[Donuts_Orders] CHECK CONSTRAINT [FK_Donuts_Orders_Orders]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllSales]    Script Date: 26/06/2023 02:05:06 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetAllSales]
AS
	BEGIN
		SELECT O.IdOrder, O.Name, O.Address, DO.NumberOfDonuts, D.donutFlavor 
		FROM Orders O INNER JOIN Donuts_Orders DO ON O.IdOrder = DO.IdOrder 
		INNER JOIN Donuts D ON DO.IdDonuts = D.IdDonuts
		ORDER BY O.IdOrder DESC
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsOrder]    Script Date: 26/06/2023 02:05:06 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsOrder]
@Name VARCHAR(50),
@Address VARCHAR (150),
@ID_DonutFlavor INT,
@Number INT
ASDECLARE @IDTableOrder INT  BEGIN TRY
    BEGIN TRANSACTION
		INSERT INTO Orders (Name, Address)
		VALUES (@Name, @Address)
		SET @IDTableOrder = (SELECT MAX(IdOrder) FROM Orders)
		INSERT INTO Donuts_Orders (IdOrder, IdDonuts, NumberOfDonuts)
		VALUES (@IDTableOrder, @ID_DonutFlavor, @Number)
    COMMIT TRANSACTION
  END TRY
  BEGIN CATCH
        ROLLBACK TRANSACTION
  END CATCH
GO
USE [master]
GO
ALTER DATABASE [DB_DonDonas] SET  READ_WRITE 
GO
