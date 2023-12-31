USE [master]
GO
/****** Object:  Database [InventoryAndSalesManagementAPI]    Script Date: 7/20/2023 10:17:34 PM ******/
CREATE DATABASE [InventoryAndSalesManagementAPI]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'InventoryAndSalesManagementAPI', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\InventoryAndSalesManagementAPI.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'InventoryAndSalesManagementAPI_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\InventoryAndSalesManagementAPI_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [InventoryAndSalesManagementAPI] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [InventoryAndSalesManagementAPI].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [InventoryAndSalesManagementAPI] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [InventoryAndSalesManagementAPI] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [InventoryAndSalesManagementAPI] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [InventoryAndSalesManagementAPI] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [InventoryAndSalesManagementAPI] SET ARITHABORT OFF 
GO
ALTER DATABASE [InventoryAndSalesManagementAPI] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [InventoryAndSalesManagementAPI] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [InventoryAndSalesManagementAPI] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [InventoryAndSalesManagementAPI] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [InventoryAndSalesManagementAPI] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [InventoryAndSalesManagementAPI] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [InventoryAndSalesManagementAPI] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [InventoryAndSalesManagementAPI] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [InventoryAndSalesManagementAPI] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [InventoryAndSalesManagementAPI] SET  ENABLE_BROKER 
GO
ALTER DATABASE [InventoryAndSalesManagementAPI] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [InventoryAndSalesManagementAPI] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [InventoryAndSalesManagementAPI] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [InventoryAndSalesManagementAPI] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [InventoryAndSalesManagementAPI] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [InventoryAndSalesManagementAPI] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [InventoryAndSalesManagementAPI] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [InventoryAndSalesManagementAPI] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [InventoryAndSalesManagementAPI] SET  MULTI_USER 
GO
ALTER DATABASE [InventoryAndSalesManagementAPI] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [InventoryAndSalesManagementAPI] SET DB_CHAINING OFF 
GO
ALTER DATABASE [InventoryAndSalesManagementAPI] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [InventoryAndSalesManagementAPI] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [InventoryAndSalesManagementAPI] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [InventoryAndSalesManagementAPI] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [InventoryAndSalesManagementAPI] SET QUERY_STORE = ON
GO
ALTER DATABASE [InventoryAndSalesManagementAPI] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [InventoryAndSalesManagementAPI]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 7/20/2023 10:17:34 PM ******/
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
/****** Object:  Table [dbo].[Customers]    Script Date: 7/20/2023 10:17:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](150) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItems]    Script Date: 7/20/2023 10:17:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItems](
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_OrderItems] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 7/20/2023 10:17:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [date] NOT NULL,
	[DeliveryDate] [date] NULL,
	[Status] [int] NOT NULL,
	[CustomerID] [int] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 7/20/2023 10:17:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[Price] [money] NOT NULL,
	[IsAvailable] [bit] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 7/20/2023 10:17:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[Role] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Token] [nvarchar](max) NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230716064102_Inventory', N'7.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230717163340_User', N'7.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230717164040_Sales', N'7.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230718152337_Auth', N'7.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230719052835_Auth', N'7.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230719144431_Authenticate', N'7.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230720052336_Product', N'7.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230720062506_Product', N'7.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230720063225_sell', N'7.0.9')
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [Address], [Email]) VALUES (1, N'Maliha', N'Barishal', N'maliha@gmail.com')
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [Address], [Email]) VALUES (2, N'Lubna', N'Mirpur', N'lubna@gmail.com')
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [Address], [Email]) VALUES (3, N'Mumu', N'Dhaka', N'mumu@gmail.com')
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [Address], [Email]) VALUES (4, N'Leon', N'Matikata', N'leon@gmail.com')
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
INSERT [dbo].[OrderItems] ([OrderID], [ProductID], [Quantity]) VALUES (1, 1, 2)
INSERT [dbo].[OrderItems] ([OrderID], [ProductID], [Quantity]) VALUES (2, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([OrderID], [OrderDate], [DeliveryDate], [Status], [CustomerID]) VALUES (1, CAST(N'2023-07-08' AS Date), CAST(N'2023-07-15' AS Date), 1, 1)
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [DeliveryDate], [Status], [CustomerID]) VALUES (2, CAST(N'2023-07-08' AS Date), CAST(N'2023-07-16' AS Date), 1, 2)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [IsAvailable]) VALUES (1, N'Mouse', 120000.0000, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [IsAvailable]) VALUES (4, N'nose pin', 1200.0000, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [IsAvailable]) VALUES (5, N'Mouse', 120000.0000, 1)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[user] ON 

INSERT [dbo].[user] ([Id], [UserName], [Password], [Role], [Email], [FirstName], [LastName], [Token]) VALUES (12, N'admin', N'hSduJbB66IlnePWl9MzMYGCbZzfX1ZqY0Yhdv+Mkdb77DasK', N'string', N'admin@gmail.com', N'admin', N'admin', N'')
SET IDENTITY_INSERT [dbo].[user] OFF
GO
/****** Object:  Index [IX_OrderItems_ProductID]    Script Date: 7/20/2023 10:17:35 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderItems_ProductID] ON [dbo].[OrderItems]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_CustomerID]    Script Date: 7/20/2023 10:17:35 PM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_CustomerID] ON [dbo].[Orders]
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Orders_OrderID] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Orders_OrderID]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Products_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Products_ProductID]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers_CustomerID] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers_CustomerID]
GO
/****** Object:  StoredProcedure [dbo].[DeleteProduct]    Script Date: 7/20/2023 10:17:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteProduct]
    @productId INT
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if the product exists
    IF NOT EXISTS (SELECT 1 FROM Products WHERE ProductID = @productId)
    BEGIN
        -- Return a not found response
        SELECT 0 AS Result;
        RETURN;
    END;

    
    DELETE FROM Products WHERE ProductID = @productId;

    

END
GO
/****** Object:  StoredProcedure [dbo].[InsertProduct]    Script Date: 7/20/2023 10:17:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertProduct]
    @productName NVARCHAR(50),
    @price MONEY,
	@isAvailable bit
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO Products (ProductName,Price,IsAvailable)
    VALUES (@productName,@price,@isAvailable);
   
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateProduct]    Script Date: 7/20/2023 10:17:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateProduct]
    
    @productId INT,
    @productName NVARCHAR(100), 
	@price MONEY,
	@isAvailable bit
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        -- Update the product
        UPDATE Products
        SET
            ProductName = @productName,
            Price = @price,
			IsAvailable=@isAvailable
        WHERE ProductID = @productId;

        
    END TRY
    BEGIN CATCH
       
        IF ERROR_NUMBER() = 1205
        BEGIN
		If @@TRANCOUNT > 0
            THROW;
            
        END;
        RETURN;
    END CATCH;
END
GO
USE [master]
GO
ALTER DATABASE [InventoryAndSalesManagementAPI] SET  READ_WRITE 
GO
