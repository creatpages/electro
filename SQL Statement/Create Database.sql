USE [master]
GO
/****** Object:  Database [PRJ_ShoppingOnlineWebsite]    Script Date: 7/6/2023 11:05:45 AM ******/
CREATE DATABASE [PRJ_ShoppingOnlineWebsite]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PRJ_ShoppingOnlineWebsite', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.DUYDUC_LAP\MSSQL\DATA\PRJ_ShoppingOnlineWebsite.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PRJ_ShoppingOnlineWebsite_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.DUYDUC_LAP\MSSQL\DATA\PRJ_ShoppingOnlineWebsite_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PRJ_ShoppingOnlineWebsite] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PRJ_ShoppingOnlineWebsite].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PRJ_ShoppingOnlineWebsite] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PRJ_ShoppingOnlineWebsite] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PRJ_ShoppingOnlineWebsite] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PRJ_ShoppingOnlineWebsite] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PRJ_ShoppingOnlineWebsite] SET ARITHABORT OFF 
GO
ALTER DATABASE [PRJ_ShoppingOnlineWebsite] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PRJ_ShoppingOnlineWebsite] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PRJ_ShoppingOnlineWebsite] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PRJ_ShoppingOnlineWebsite] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PRJ_ShoppingOnlineWebsite] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PRJ_ShoppingOnlineWebsite] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PRJ_ShoppingOnlineWebsite] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PRJ_ShoppingOnlineWebsite] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PRJ_ShoppingOnlineWebsite] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PRJ_ShoppingOnlineWebsite] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PRJ_ShoppingOnlineWebsite] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PRJ_ShoppingOnlineWebsite] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PRJ_ShoppingOnlineWebsite] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PRJ_ShoppingOnlineWebsite] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PRJ_ShoppingOnlineWebsite] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PRJ_ShoppingOnlineWebsite] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PRJ_ShoppingOnlineWebsite] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PRJ_ShoppingOnlineWebsite] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PRJ_ShoppingOnlineWebsite] SET  MULTI_USER 
GO
ALTER DATABASE [PRJ_ShoppingOnlineWebsite] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PRJ_ShoppingOnlineWebsite] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PRJ_ShoppingOnlineWebsite] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PRJ_ShoppingOnlineWebsite] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PRJ_ShoppingOnlineWebsite] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PRJ_ShoppingOnlineWebsite] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [PRJ_ShoppingOnlineWebsite] SET QUERY_STORE = OFF
GO
USE [PRJ_ShoppingOnlineWebsite]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 7/6/2023 11:05:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](250) NULL,
	[City] [nvarchar](50) NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 7/6/2023 11:05:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[CateID] [int] NULL,
 CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 7/6/2023 11:05:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart_Item]    Script Date: 7/6/2023 11:05:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart_Item](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CartID] [int] NULL,
	[ProDetailID] [int] NULL,
	[Quantity] [int] NULL,
	[Price] [float] NULL,
 CONSTRAINT [PK_Cart_Item] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 7/6/2023 11:05:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 7/6/2023 11:05:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[Date] [date] NULL,
	[TotalAmount] [float] NULL,
	[Status] [int] NULL,
	[ShippingAddress] [int] NULL,
	[ShippingMethod] [bit] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Detail]    Script Date: 7/6/2023 11:05:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Detail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CartItemID] [int] NULL,
	[OrderID] [int] NULL,
 CONSTRAINT [PK_Order_Detail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Status]    Script Date: 7/6/2023 11:05:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Status](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Status] [varchar](50) NULL,
 CONSTRAINT [PK_Order_Status] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 7/6/2023 11:05:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CateID] [int] NULL,
	[BrandID] [int] NULL,
	[Name] [varchar](50) NULL,
	[Description] [text] NULL,
	[Image] [varchar](50) NULL,
	[Sold] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Detail]    Script Date: 7/6/2023 11:05:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Detail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProID] [int] NULL,
	[Quantity] [int] NULL,
	[Price] [float] NULL,
	[Image] [varchar](250) NULL,
	[Color] [varchar](50) NULL,
 CONSTRAINT [PK_Product_Detail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Account]    Script Date: 7/6/2023 11:05:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Account](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](32) NULL,
	[Password] [varchar](32) NULL,
	[Role] [bit] NULL,
	[Status] [bit] NULL,
	[Name] [nvarchar](50) NULL,
	[Phone] [varchar](15) NULL,
	[Email] [varchar](50) NULL,
 CONSTRAINT [PK_User_Account] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Address]    Script Date: 7/6/2023 11:05:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Address](
	[UserID] [int] NULL,
	[AddressID] [int] NULL,
	[IsDefault] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Wishlist]    Script Date: 7/6/2023 11:05:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wishlist](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[ProID] [int] NOT NULL,
 CONSTRAINT [PK_Wishlist] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Brand] ON 
GO
INSERT [dbo].[Brand] ([ID], [Name], [CateID]) VALUES (1, N'Dell', 1)
GO
INSERT [dbo].[Brand] ([ID], [Name], [CateID]) VALUES (2, N'Asus', 1)
GO
INSERT [dbo].[Brand] ([ID], [Name], [CateID]) VALUES (3, N'Acer', 1)
GO
INSERT [dbo].[Brand] ([ID], [Name], [CateID]) VALUES (4, N'Samsung', 2)
GO
INSERT [dbo].[Brand] ([ID], [Name], [CateID]) VALUES (5, N'Apple', 2)
GO
INSERT [dbo].[Brand] ([ID], [Name], [CateID]) VALUES (6, N'Xiaomi', 2)
GO
INSERT [dbo].[Brand] ([ID], [Name], [CateID]) VALUES (7, N'Apple iPad', 3)
GO
INSERT [dbo].[Brand] ([ID], [Name], [CateID]) VALUES (8, N'Microsoft', 3)
GO
INSERT [dbo].[Brand] ([ID], [Name], [CateID]) VALUES (9, N'Huawei', 3)
GO
INSERT [dbo].[Brand] ([ID], [Name], [CateID]) VALUES (10, N'Logitech', 4)
GO
INSERT [dbo].[Brand] ([ID], [Name], [CateID]) VALUES (11, N'Razer', 4)
GO
INSERT [dbo].[Brand] ([ID], [Name], [CateID]) VALUES (12, N'Corsair', 4)
GO
SET IDENTITY_INSERT [dbo].[Brand] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 
GO
INSERT [dbo].[Category] ([ID], [Name]) VALUES (1, N'Laptop')
GO
INSERT [dbo].[Category] ([ID], [Name]) VALUES (2, N'Smartphone')
GO
INSERT [dbo].[Category] ([ID], [Name]) VALUES (3, N'Tablet')
GO
INSERT [dbo].[Category] ([ID], [Name]) VALUES (4, N'Accessory')
GO
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Order_Status] ON 
GO
INSERT [dbo].[Order_Status] ([ID], [Status]) VALUES (1, N'Canceled')
GO
INSERT [dbo].[Order_Status] ([ID], [Status]) VALUES (2, N'Delivering')
GO
INSERT [dbo].[Order_Status] ([ID], [Status]) VALUES (3, N'Delivered ')
GO
SET IDENTITY_INSERT [dbo].[Order_Status] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (1, 1, 1, N'Dell Inspiron 1410', N'Description of Dell Inspiron 1410', N'/laptops/Dell-Inspiron-1410.png', 15)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (2, 1, 3, N'Acer Nitro 5', N'Description of Acer Nitro 5', N'/laptops/Acer-Nitro-5.png', 10)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (3, 1, 2, N'Asus TUF Gaming A15', N'Description of Asus TUF Gaming A15', N'/laptops/Asus-TUF-Gaming-A15.png', 14)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (4, 2, 6, N'Xiaomi Redmi Note 12 4GB/128GB', N'Description of Xiaomi Redmi Note 12 4GB/128GB', N'/smartphones/Xiaomi-Redmi-Note-12.png', 10)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (5, 2, 5, N'Iphone 14 Pro Max 128GB', N'Description of Iphone 14 Pro Max 128GB', N'/smartphones/Iphone-14-Pro-Max.png', 5)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (6, 2, 4, N'Samsung Galaxy S22 Ultra 12GB/256GB', N'Description of Samsung Galaxy S22 Ultra 12GB/256GB', N'/smartphones/Samsung-Galaxy-S22-Ultra.png', 0)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (7, 3, 7, N'iPad Pro 2021', N'Description of iPad Pro 11 Inch 2021', N'/tablets/iPad-Pro-2021.png', 13)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (8, 3, 8, N'Microsoft Surface Pro 4', N'Description of Microsoft Surface Pro 4', N'/tablets/Microsoft-Surface-Pro-4.png', 11)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (10, 4, 11, N'Razer Kraken V3 Pro HyperSense', N'Description of Razer Kraken V3 Pro HyperSense', N'/accessories/Razer-Kraken-V3-Pro-HyperSense.png', 12)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (11, 4, 10, N'Logitech Headphone G335', N'Description of Logitech Headphone G335', N'/accessories/Logitech-Headphone-G335.png', 10)
GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Product_Detail] ON 
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (4, 1, 10, 1056.41, N'/Laptops/Dell-Inspiron-1410/Dell-Inspiron-1410-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (5, 1, 15, 1060, N'/Laptops/Dell-Inspiron-1410/Dell-Inspiron-1410-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (6, 1, 5, 900.5, N'/Laptops/Dell-Inspiron-1410/Dell-Inspiron-1410-Grey', N'grey')
GO
SET IDENTITY_INSERT [dbo].[Product_Detail] OFF
GO
SET IDENTITY_INSERT [dbo].[User_Account] ON 
GO
INSERT [dbo].[User_Account] ([ID], [Username], [Password], [Role], [Status], [Name], [Phone], [Email]) VALUES (1, N'admin', N'admin', 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[User_Account] ([ID], [Username], [Password], [Role], [Status], [Name], [Phone], [Email]) VALUES (3, N'user2', N'user2', 0, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[User_Account] ([ID], [Username], [Password], [Role], [Status], [Name], [Phone], [Email]) VALUES (4, N'user3', N'user3', 0, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[User_Account] ([ID], [Username], [Password], [Role], [Status], [Name], [Phone], [Email]) VALUES (5, N'user1', N'user1', 0, 1, NULL, N'0943218394', N'chacaidoseve@gmail.com')
GO
INSERT [dbo].[User_Account] ([ID], [Username], [Password], [Role], [Status], [Name], [Phone], [Email]) VALUES (6, N'duyduc94', N'duy', 0, 1, N'Duy Đức', N'0943218394', N'duyduc.luonghuu@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[User_Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Wishlist] ON 
GO
INSERT [dbo].[Wishlist] ([ID], [UserID], [ProID]) VALUES (1, 6, 1)
GO
INSERT [dbo].[Wishlist] ([ID], [UserID], [ProID]) VALUES (2, 6, 3)
GO
INSERT [dbo].[Wishlist] ([ID], [UserID], [ProID]) VALUES (4, 6, 5)
GO
SET IDENTITY_INSERT [dbo].[Wishlist] OFF
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Sold]  DEFAULT ((0)) FOR [Sold]
GO
ALTER TABLE [dbo].[User_Account] ADD  CONSTRAINT [DF_User_Account_Role]  DEFAULT ((0)) FOR [Role]
GO
ALTER TABLE [dbo].[User_Account] ADD  CONSTRAINT [DF_User_Account_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[User_Address] ADD  CONSTRAINT [DF_User_Address_IsDefault]  DEFAULT ((0)) FOR [IsDefault]
GO
ALTER TABLE [dbo].[Brand]  WITH CHECK ADD  CONSTRAINT [FK_Brand_Category] FOREIGN KEY([CateID])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[Brand] CHECK CONSTRAINT [FK_Brand_Category]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_User_Account] FOREIGN KEY([UserID])
REFERENCES [dbo].[User_Account] ([ID])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_User_Account]
GO
ALTER TABLE [dbo].[Cart_Item]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Item_Cart] FOREIGN KEY([CartID])
REFERENCES [dbo].[Cart] ([ID])
GO
ALTER TABLE [dbo].[Cart_Item] CHECK CONSTRAINT [FK_Cart_Item_Cart]
GO
ALTER TABLE [dbo].[Cart_Item]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Item_Product_Detail] FOREIGN KEY([ProDetailID])
REFERENCES [dbo].[Product_Detail] ([ID])
GO
ALTER TABLE [dbo].[Cart_Item] CHECK CONSTRAINT [FK_Cart_Item_Product_Detail]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Address] FOREIGN KEY([ShippingAddress])
REFERENCES [dbo].[Address] ([ID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Address]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Order_Status] FOREIGN KEY([Status])
REFERENCES [dbo].[Order_Status] ([ID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Order_Status]
GO
ALTER TABLE [dbo].[Order_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Order_Detail_Cart_Item] FOREIGN KEY([CartItemID])
REFERENCES [dbo].[Cart_Item] ([ID])
GO
ALTER TABLE [dbo].[Order_Detail] CHECK CONSTRAINT [FK_Order_Detail_Cart_Item]
GO
ALTER TABLE [dbo].[Order_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Order_Detail_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([ID])
GO
ALTER TABLE [dbo].[Order_Detail] CHECK CONSTRAINT [FK_Order_Detail_Order]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Brand] FOREIGN KEY([BrandID])
REFERENCES [dbo].[Brand] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Brand]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([CateID])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Product_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Product_Detail_Product] FOREIGN KEY([ProID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[Product_Detail] CHECK CONSTRAINT [FK_Product_Detail_Product]
GO
ALTER TABLE [dbo].[User_Address]  WITH CHECK ADD  CONSTRAINT [FK_User_Address_Address] FOREIGN KEY([AddressID])
REFERENCES [dbo].[Address] ([ID])
GO
ALTER TABLE [dbo].[User_Address] CHECK CONSTRAINT [FK_User_Address_Address]
GO
ALTER TABLE [dbo].[User_Address]  WITH CHECK ADD  CONSTRAINT [FK_User_Address_User_Account] FOREIGN KEY([UserID])
REFERENCES [dbo].[User_Account] ([ID])
GO
ALTER TABLE [dbo].[User_Address] CHECK CONSTRAINT [FK_User_Address_User_Account]
GO
ALTER TABLE [dbo].[Wishlist]  WITH CHECK ADD  CONSTRAINT [FK_Wishlist_Product] FOREIGN KEY([ProID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[Wishlist] CHECK CONSTRAINT [FK_Wishlist_Product]
GO
ALTER TABLE [dbo].[Wishlist]  WITH CHECK ADD  CONSTRAINT [FK_Wishlist_User_Account] FOREIGN KEY([UserID])
REFERENCES [dbo].[User_Account] ([ID])
GO
ALTER TABLE [dbo].[Wishlist] CHECK CONSTRAINT [FK_Wishlist_User_Account]
GO
USE [master]
GO
ALTER DATABASE [PRJ_ShoppingOnlineWebsite] SET  READ_WRITE 
GO
