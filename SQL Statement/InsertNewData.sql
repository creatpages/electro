USE [PRJ_ShoppingOnlineWebsite]
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
INSERT [dbo].[Brand] ([ID], [Name], [CateID]) VALUES (13, N'Lenovo', 1)
GO
INSERT [dbo].[Brand] ([ID], [Name], [CateID]) VALUES (14, N'HP', 1)
GO
INSERT [dbo].[Brand] ([ID], [Name], [CateID]) VALUES (15, N'Vivo', 2)
GO
INSERT [dbo].[Brand] ([ID], [Name], [CateID]) VALUES (16, N'Oppo', 2)
GO
INSERT [dbo].[Brand] ([ID], [Name], [CateID]) VALUES (17, N'Samsung Tab', 3)
GO
INSERT [dbo].[Brand] ([ID], [Name], [CateID]) VALUES (18, N'Xiaomi Pad', 3)
GO
INSERT [dbo].[Brand] ([ID], [Name], [CateID]) VALUES (19, N'Sennheiser', 4)
GO
INSERT [dbo].[Brand] ([ID], [Name], [CateID]) VALUES (20, N'HyperX', 4)
GO
SET IDENTITY_INSERT [dbo].[Brand] OFF
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
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (15, 1, 1, N'Dell Gaming G15', N'Description of Dell Gaming G15', NULL, 10)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (16, 1, 1, N'Dell Vostro 3420', N'Description of Dell Vostro 3420', NULL, 0)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (17, 1, 3, N'Acer Aspire 7', N'Description of Acer Aspire 7', NULL, 17)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (18, 1, 3, N'Acer Predator Helios Neo', N'Description of Acer Predator Helios Neo', NULL, 7)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (19, 1, 2, N'Asus ProArt Studiobook', N'Description of Asus ProArt Studiobook', NULL, 5)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (20, 1, 2, N'Asus Vivobook', N'Description of Asus Vivobook', NULL, 10)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (21, 1, 13, N'Lenovo Legion 5', N'Description of Lenovo Legion 5', NULL, 8)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (22, 1, 13, N'Lenovo Ideapad Gaming 3', N'Description of Lenovo Ideapad Gaming 3', NULL, 5)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (23, 1, 13, N'Lenovo ThinkPad T14s', N'Description of Lenovo ThinkPad T14s', NULL, 12)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (24, 1, 14, N'HP Pavilion 15', N'Description of HP Pavilion 15', NULL, 10)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (25, 1, 14, N'HP Elitebook Dragonfly G3', N'Description of HP Elitebook Dragonfly G3', NULL, 15)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (26, 1, 14, N'HP VICTUS', N'Description of HP VICTUS', NULL, 14)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (27, 2, 6, N'Xiaomi 13 Pro 12GB/256GB', N'Description of Xiaomi 13 Pro 12GB/256GB', NULL, 5)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (28, 2, 6, N'Xiaomi Mi 11 Lite 8GB/128GB', N'Description of Xiaomi Mi 11 Lite 8GB/128GB', NULL, 11)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (29, 2, 5, N'Iphone 13 256GB', N'Description of Iphone 13 256GB', NULL, 15)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (30, 2, 5, N'Iphone 13 Pro 128GB', N'Description of Iphone 13 Pro 128GB', NULL, 10)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (31, 2, 4, N'Samsung Galaxy Z Flip4 256GB', N'Description of Samsung Galaxy Z Flip4 256GB', NULL, 13)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (34, 2, 4, N'Samsung Galaxy A54 64GB', N'Description of Samsung Galaxy A54 64GB', NULL, 5)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (35, 2, 15, N'Vivo V27e 8GB/256GB', N'Description of Vivo V27e 8GB/256GB ', NULL, 10)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (36, 2, 15, N'Vivo Y02s 3GB/64GB', N'Description of Vivo Y02s 3GB/64GB', NULL, 15)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (37, 2, 15, N'Vivo V25 5G 8GB/128GB', N'Description of Vivo V25 5G 8GB/128GB', NULL, 12)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (38, 2, 16, N'Oppo Find N2 Flip 128GB', N'Description of Oppo Find N2 Flip 128GB', NULL, 5)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (40, 2, 16, N'Oppo Reno8 5G 8GB/256GB', N'Description of Oppo Reno8 5G 8GB/256GB', NULL, 10)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (41, 2, 16, N'Oppo A77s 8GB/128GB', N'Description of Oppo A77s 8GB/128GB', NULL, 5)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (42, 3, 7, N'Ipad Gen 10', N'Description of Ipad Gen 10', NULL, 10)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (43, 3, 7, N'Ipad Air 5', N'Description of Ipad Air 5', NULL, 13)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (44, 3, 8, N'Microsoft Surface Pro 8', N'Description of Microsoft Surface Pro 8', NULL, 0)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (45, 3, 8, N'Microsoft Surface Go 3', N'Description of Microsoft Surface Go 3', NULL, 5)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (47, 3, 9, N'Huawei MatePad SE', N'Description of Huawei MatePad SE', NULL, 10)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (48, 3, 9, N'Huawei MediaPad T5', N'Description of Huawei MediaPad T5', NULL, 7)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (49, 3, 9, N'Huawei MatePad Pro', N'Description of Huawei MatePad Pro', NULL, 12)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (50, 3, 17, N'Samsung Galaxy Tab S8 Ultra 5G', N'Description of Samsung Galaxy Tab S8 Ultra 5G', NULL, 10)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (51, 3, 17, N'Samsung Galaxy Tab A8', N'Description of Samsung Galaxy Tab A8', NULL, 15)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (52, 3, 17, N'Samsung Galaxy Tab A7 Lite LTE', N'Description of Samsung Galaxy Tab A7 Lite LTE', NULL, 12)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (53, 3, 18, N'Xiaomi Pad 6', N'Description of Xiaomi Pad 6', NULL, 10)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (54, 3, 18, N'Xiaomi Redmi Pad', N'Description of Xiaomi Redmi Pad', NULL, 15)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (55, 3, 18, N'Xiaomi Mi Pad 5 Pro', N'Description of Xiaomi Mi Pad 5 Pro', NULL, 13)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (56, 4, 11, N'Razer BlackShark V2', N'Description of Razer BlackShark V2', NULL, 15)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (57, 4, 11, N'Razer Hammerhead PRO V2', N'Description of Razer Hammerhead PRO V2', NULL, 15)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (58, 4, 10, N'Logitech G Pro X', N'Description of Logitech G Pro X', NULL, 10)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (59, 4, 10, N'Logitech G733 LIGHTSPEED Wireless', N'Description of Logitech G733 LIGHTSPEED Wireless', NULL, 15)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (60, 4, 12, N'Corsair HS55 Surround', N'Description of Corsair HS55 Surround', NULL, 10)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (61, 4, 12, N'Corsair HS80 RGB Wireless', N'Description of Corsair HS80 RGB Wireless', NULL, 0)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (62, 4, 12, N'Corsair Virtuoso RGB Wireless', N'Description of Corsair Virtuoso RGB Wireless', NULL, 8)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (63, 4, 19, N'Sennheiser GSP300', N'Description of Sennheiser GSP300', NULL, 15)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (64, 4, 19, N'Sennheiser GSP500', N'Description of Sennheiser GSP500', NULL, 10)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (66, 4, 19, N'Sennheiser GSP670 Wireless', N'Description of Sennheiser GSP670 Wireless', NULL, 5)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (67, 4, 20, N'HyperX Cloud Earbuds II', N'Description of HyperX Cloud Earbuds II', NULL, 15)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (68, 4, 20, N'HyperX Cloud Alpha Wireless', N'Description of HyperX Cloud Alpha Wireless', NULL, 10)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (69, 4, 20, N'HyperX Cloud III', N'Description of HyperX Cloud III', NULL, 14)
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
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (7, 2, 20, 1260, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (8, 2, 15, 1160, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (9, 2, 10, 1200, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (10, 1, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Product_Detail] OFF
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
