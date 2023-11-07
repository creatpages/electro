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
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (7, 2, 15, 1260, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (8, 2, 15, 1160, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (9, 2, 10, 1200, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (10, 3, 10, 1350, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (11, 3, 15, 1500, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (12, 3, 12, 1400, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (13, 4, 10, 800, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (14, 4, 15, 820, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (15, 4, 10, 850, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (16, 5, 15, 1000, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (17, 5, 15, 1050, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (18, 5, 15, 1050, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (19, 6, 10, 1100, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (20, 6, 15, 1150, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (21, 6, 15, 1150, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (22, 7, 15, 1300, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (23, 7, 15, 1250, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (24, 7, 10, 1350, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (25, 8, 10, 1500, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (26, 8, 15, 1599, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (27, 8, 10, 1550, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (28, 10, 15, 150, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (29, 10, 5, 170, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (30, 10, 8, 170, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (31, 11, 10, 120, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (32, 11, 5, 120, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (33, 11, 7, 120, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (34, 15, 10, 1500, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (35, 15, 11, 1450, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (36, 15, 10, 1450, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (37, 16, 14, 820, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (38, 16, 8, 900, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (39, 16, 9, 900, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (40, 17, 15, 950, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (41, 17, 10, 920, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (42, 17, 10, 890, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (43, 18, 15, 1800, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (44, 18, 10, 1850, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (45, 18, 14, 1900, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (46, 19, 10, 1500, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (47, 19, 10, 1450, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (48, 19, 14, 1450, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (49, 20, 10, 1200, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (50, 20, 13, 1300, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (51, 20, 14, 1350, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (52, 21, 10, 1100, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (53, 21, 10, 1150, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (54, 21, 5, 1300, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (55, 22, 10, 1500, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (56, 22, 10, 1450, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (57, 22, 14, 1550, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (58, 23, 12, 1500, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (59, 23, 14, 1550, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (60, 23, 5, 1700, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (61, 24, 5, 700, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (62, 24, 5, 700, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (63, 24, 5, 700, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (64, 25, 7, 670, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (65, 25, 10, 640, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (66, 25, 3, 650, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (67, 26, 10, 900, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (68, 26, 5, 950, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (69, 26, 8, 950, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (70, 27, 10, 1000, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (71, 27, 7, 1100, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (72, 27, 8, 1150, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (73, 28, 10, 750, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (74, 28, 13, 750, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (75, 28, 5, 750, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (76, 29, 7, 1200, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (77, 29, 5, 1200, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (78, 29, 4, 1250, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (79, 30, 6, 1400, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (80, 30, 7, 1450, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (81, 30, 4, 1450, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (82, 31, 10, 800, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (83, 31, 14, 890, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (84, 31, 5, 890, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (85, 34, 9, 1200, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (86, 34, 5, 1150, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (87, 34, 7, 1250, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (88, 35, 5, 350, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (89, 35, 5, 350, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (90, 35, 5, 350, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (91, 36, 5, 420, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (92, 36, 5, 380, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (93, 36, 5, 390, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (94, 37, 4, 420, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (95, 37, 5, 400, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (96, 37, 5, 420, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (97, 38, 3, 1100, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (98, 38, 4, 1150, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (99, 38, 6, 1200, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (100, 40, 7, 400, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (101, 40, 5, 450, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (102, 40, 8, 450, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (103, 41, 5, 400, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (104, 41, 5, 400, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (105, 41, 3, 400, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (106, 42, 10, 600, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (107, 42, 8, 660, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (108, 42, 9, 640, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (109, 43, 5, 700, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (110, 43, 10, 670, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (111, 43, 8, 650, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (112, 44, 10, 1500, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (113, 44, 10, 1500, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (114, 44, 8, 1500, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (115, 45, 5, 1200, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (116, 45, 8, 1200, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (117, 45, 5, 1200, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (118, 47, 10, 500, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (119, 47, 5, 550, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (120, 47, 4, 520, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (121, 48, 7, 600, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (122, 48, 10, 550, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (123, 48, 5, 600, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (124, 49, 10, 550, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (125, 49, 5, 540, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (126, 49, 12, 500, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (127, 50, 8, 600, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (128, 50, 5, 650, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (129, 50, 5, 600, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (130, 51, 7, 700, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (131, 51, 9, 750, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (132, 51, 4, 750, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (133, 52, 5, 1200, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (134, 52, 8, 1250, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (135, 52, 9, 1250, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (136, 53, 10, 850, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (137, 53, 6, 890, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (138, 53, 8, 890, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (139, 54, 10, 550, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (140, 54, 5, 550, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (141, 54, 4, 550, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (142, 55, 9, 600, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (143, 55, 5, 590, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (144, 55, 7, 650, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (145, 56, 15, 150, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (146, 56, 12, 150, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (147, 56, 10, 150, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (148, 57, 15, 49, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (149, 57, 15, 49, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (150, 57, 15, 49, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (151, 58, 10, 150, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (152, 58, 10, 150, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (153, 58, 10, 150, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (154, 59, 10, 120, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (155, 59, 10, 120, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (156, 59, 10, 120, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (157, 60, 15, 100, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (158, 60, 15, 100, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (159, 60, 15, 100, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (160, 61, 10, 110, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (161, 61, 10, 110, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (162, 61, 10, 110, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (163, 62, 7, 85, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (164, 62, 5, 85, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (165, 62, 5, 85, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (166, 63, 10, 95, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (167, 63, 10, 95, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (168, 63, 10, 95, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (169, 64, 8, 150, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (170, 64, 10, 150, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (171, 64, 10, 150, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (172, 66, 5, 240, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (173, 66, 5, 240, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (174, 66, 5, 240, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (175, 67, 10, 100, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (176, 67, 10, 120, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (177, 67, 12, 100, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (178, 68, 10, 150, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (179, 68, 10, 150, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (180, 68, 5, 150, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (181, 69, 15, 200, NULL, N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (182, 69, 15, 200, NULL, N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (183, 69, 10, 200, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (184, NULL, NULL, NULL, NULL, NULL)
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
