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
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (15, 1, 1, N'Dell Gaming G15', N'Description of Dell Gaming G15', N'/laptops/Dell-Gaming-G15.png', 10)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (16, 1, 1, N'Dell Vostro 3420', N'Description of Dell Vostro 3420', N'/laptops/Dell-Vostro-3420.png', 0)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (17, 1, 3, N'Acer Aspire 7', N'Description of Acer Aspire 7', N'/laptops/Acer-Aspire-7.png', 17)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (18, 1, 3, N'Acer Predator Helios Neo', N'Description of Acer Predator Helios Neo', N'/laptops/Acer-Predator-Helios-Neo.png', 7)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (19, 1, 2, N'Asus ProArt Studiobook', N'Description of Asus ProArt Studiobook', N'/laptops/Asus-ProArt-Studiobook.png', 5)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (20, 1, 2, N'Asus Vivobook', N'Description of Asus Vivobook', N'/laptops/Asus-Vivobook.png', 10)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (21, 1, 13, N'Lenovo Legion 5', N'Description of Lenovo Legion 5', N'/laptops/Lenovo-Legion-5.png', 8)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (22, 1, 13, N'Lenovo Ideapad Gaming 3', N'Description of Lenovo Ideapad Gaming 3', N'/laptops/Lenovo-Ideapad-Gaming-3.png', 5)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (23, 1, 13, N'Lenovo ThinkPad T14s', N'Description of Lenovo ThinkPad T14s', N'/laptops/Lenovo-ThinkPad-T14s.png', 12)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (24, 1, 14, N'HP Pavilion 15', N'Description of HP Pavilion 15', N'/laptops/HP-Pavilion-15.png', 10)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (25, 1, 14, N'HP Elitebook Dragonfly G3', N'Description of HP Elitebook Dragonfly G3', N'/laptops/HP-Elitebook-Dragonfly-G3.png', 15)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (26, 1, 14, N'HP Victus', N'Description of HP VICTUS', N'/laptops/HP-Victus.png', 14)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (27, 2, 6, N'Xiaomi 13 Pro 12GB/256GB', N'Description of Xiaomi 13 Pro 12GB/256GB', N'/smartphones/Xiaomi-13-Pro.png', 5)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (28, 2, 6, N'Xiaomi Mi 11 Lite 8GB/128GB', N'Description of Xiaomi Mi 11 Lite 8GB/128GB', N'/smartphones/Xiaomi-Mi-11-Lite.png', 11)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (29, 2, 5, N'Iphone 13 256GB', N'Description of Iphone 13 256GB', N'/smartphones/Iphone-13.png', 15)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (30, 2, 5, N'Iphone 13 Pro 128GB', N'Description of Iphone 13 Pro 128GB', N'/smartphones/Iphone-13-Pro.png', 10)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (31, 2, 4, N'Samsung Galaxy Z Flip4 256GB', N'Description of Samsung Galaxy Z Flip4 256GB', N'/smartphones/Samsung-Galaxy-Z-Flip4.png', 13)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (34, 2, 4, N'Samsung Galaxy A54 64GB', N'Description of Samsung Galaxy A54 64GB', N'/smartphones/Samsung-Galaxy-A54.png', 5)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (35, 2, 15, N'Vivo V27e 8GB/256GB', N'Description of Vivo V27e 8GB/256GB ', N'/smartphones/Vivo-V27e.png', 10)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (36, 2, 15, N'Vivo Y02s 3GB/64GB', N'Description of Vivo Y02s 3GB/64GB', N'/smartphones/Vivo-Y02s.png', 15)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (37, 2, 15, N'Vivo V25 5G 8GB/128GB', N'Description of Vivo V25 5G 8GB/128GB', N'/smartphones/Vivo-V25-5G.png', 12)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (38, 2, 16, N'Oppo Find N2 Flip 128GB', N'Description of Oppo Find N2 Flip 128GB', N'/smartphones/Oppo-Find-N2-Flip.png', 5)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (40, 2, 16, N'Oppo Reno8 5G 8GB/256GB', N'Description of Oppo Reno8 5G 8GB/256GB', N'/smartphones/Oppo-Reno8-5G.png', 10)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (41, 2, 16, N'Oppo A77s 8GB/128GB', N'Description of Oppo A77s 8GB/128GB', N'/smartphones/Oppo-A77s.png', 5)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (42, 3, 7, N'Ipad Gen 10', N'Description of Ipad Gen 10', N'/tablets/Ipad-Gen-10.png', 10)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (43, 3, 7, N'Ipad Air 5', N'Description of Ipad Air 5', N'/tablets/Ipad-Air-5.png', 13)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (44, 3, 8, N'Microsoft Surface Pro 8', N'Description of Microsoft Surface Pro 8', N'/tablets/Microsoft-Surface-Pro-8.png', 0)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (45, 3, 8, N'Microsoft Surface Go 3', N'Description of Microsoft Surface Go 3', N'/tablets/Microsoft-Surface-Go-3.png', 5)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (47, 3, 9, N'Huawei MatePad SE', N'Description of Huawei MatePad SE', N'/tablets/Huawei-MatePad-SE.png', 10)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (48, 3, 9, N'Huawei MediaPad T5', N'Description of Huawei MediaPad T5', N'/tablets/Huawei-MediaPad-T5.png', 7)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (49, 3, 9, N'Huawei MatePad Pro', N'Description of Huawei MatePad Pro', N'/tablets/Huawei-MatePad-Pro.png', 12)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (50, 3, 17, N'Samsung Galaxy Tab S8 Ultra 5G', N'Description of Samsung Galaxy Tab S8 Ultra 5G', N'/tablets/Samsung-Galaxy-Tab-S8-Ultra-5G.png', 10)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (51, 3, 17, N'Samsung Galaxy Tab A8', N'Description of Samsung Galaxy Tab A8', N'/tablets/Samsung-Galaxy-Tab-A8.png', 15)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (52, 3, 17, N'Samsung Galaxy Tab A7 Lite LTE', N'Description of Samsung Galaxy Tab A7 Lite LTE', N'/tablets/Samsung-Galaxy-Tab-A7-Lite-LTE.png', 12)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (53, 3, 18, N'Xiaomi Pad 6', N'Description of Xiaomi Pad 6', N'/tablets/Xiaomi-Pad-6.png', 10)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (54, 3, 18, N'Xiaomi Redmi Pad', N'Description of Xiaomi Redmi Pad', N'/tablets/Xiaomi-Redmi-Pad.png', 15)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (55, 3, 18, N'Xiaomi Mi Pad 5 Pro', N'Description of Xiaomi Mi Pad 5 Pro', N'/tablets/Xiaomi-Mi-Pad-5-Pro.png', 13)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (56, 4, 11, N'Razer BlackShark V2', N'Description of Razer BlackShark V2', N'/accessories/Razer-BlackShark-V2.png', 15)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (57, 4, 11, N'Razer Hammerhead PRO V2', N'Description of Razer Hammerhead PRO V2', N'/accessories/Razer-Hammerhead-PRO-V2.png', 15)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (58, 4, 10, N'Logitech G Pro X', N'Description of Logitech G Pro X', N'/accessories/Logitech-G-Pro-X.png', 10)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (59, 4, 10, N'Logitech G733 LIGHTSPEED Wireless', N'Description of Logitech G733 LIGHTSPEED Wireless', N'/accessories/Logitech-G733-LIGHTSPEED-Wireless.png', 15)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (60, 4, 12, N'Corsair HS55 Surround', N'Description of Corsair HS55 Surround', N'/accessories/Corsair-HS55-Surround.png', 10)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (61, 4, 12, N'Corsair HS80 RGB Wireless', N'Description of Corsair HS80 RGB Wireless', N'/accessories/Corsair-HS80-RGB-Wireless.png', 0)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (62, 4, 12, N'Corsair Virtuoso RGB Wireless', N'Description of Corsair Virtuoso RGB Wireless', N'/accessories/Corsair-Virtuoso-RGB-Wireless.png', 8)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (63, 4, 19, N'Sennheiser GSP300', N'Description of Sennheiser GSP300', N'/accessories/Sennheiser-GSP300.png', 15)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (64, 4, 19, N'Sennheiser GSP500', N'Description of Sennheiser GSP500', N'/accessories/Sennheiser-GSP500.png', 10)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (66, 4, 19, N'Sennheiser GSP670 Wireless', N'Description of Sennheiser GSP670 Wireless', N'/accessories/Sennheiser-GSP670-Wireless.png', 5)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (67, 4, 20, N'HyperX Cloud Earbuds II', N'Description of HyperX Cloud Earbuds II', N'/accessories/HyperX-Cloud-Earbuds-II.png', 15)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (68, 4, 20, N'HyperX Cloud Alpha Wireless', N'Description of HyperX Cloud Alpha Wireless', N'/accessories/HyperX-Cloud-Alpha-Wireless.png', 10)
GO
INSERT [dbo].[Product] ([ID], [CateID], [BrandID], [Name], [Description], [Image], [Sold]) VALUES (69, 4, 20, N'HyperX Cloud III', N'Description of HyperX Cloud III', N'/accessories/HyperX-Cloud-III.png', 14)
GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Product_Detail] ON 
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (4, 1, 10, 1056.41, N'/laptops/Dell-Inspiron-1410/Dell-Inspiron-1410-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (5, 1, 15, 1060, N'/laptops/Dell-Inspiron-1410/Dell-Inspiron-1410-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (6, 1, 5, 900.5, N'/laptops/Dell-Inspiron-1410/Dell-Inspiron-1410-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (7, 2, 15, 1260, N'/laptops/Acer-Nitro-5/Acer-Nitro-5-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (8, 2, 15, 1160, N'/laptops/Acer-Nitro-5/Acer-Nitro-5-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (9, 2, 10, 1200, N'/laptops/Acer-Nitro-5/Acer-Nitro-5-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (10, 3, 10, 1350, N'/laptops/Asus-TUF-Gaming-A15/Asus-TUF-Gaming-A15-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (11, 3, 15, 1500, N'/laptops/Asus-TUF-Gaming-A15/Asus-TUF-Gaming-A15-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (12, 3, 12, 1400, N'/laptops/Asus-TUF-Gaming-A15/Asus-TUF-Gaming-A15-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (13, 4, 10, 800, N'/smartphones/Xiaomi-Redmi-Note-12/Xiaomi-Redmi-Note-12-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (14, 4, 15, 820, N'/smartphones/Xiaomi-Redmi-Note-12/Xiaomi-Redmi-Note-12-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (15, 4, 10, 850, N'/smartphones/Xiaomi-Redmi-Note-12/Xiaomi-Redmi-Note-12-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (16, 5, 15, 1000, N'/smartphones/Iphone-14-Pro-Max/Iphone-14-Pro-Max-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (17, 5, 15, 1050, N'/smartphones/Iphone-14-Pro-Max/Iphone-14-Pro-Max-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (18, 5, 15, 1050, N'/smartphones/Iphone-14-Pro-Max/Iphone-14-Pro-Max-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (19, 6, 10, 1100, N'/smartphones/Samsung-Galaxy-S22-Ultra/Samsung-Galaxy-S22-Ultra-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (20, 6, 15, 1150, N'/smartphones/Samsung-Galaxy-S22-Ultra/Samsung-Galaxy-S22-Ultra-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (21, 6, 15, 1150, N'/smartphones/Samsung-Galaxy-S22-Ultra/Samsung-Galaxy-S22-Ultra-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (22, 7, 15, 1300, N'/tablets/iPad-Pro-2021/iPad-Pro-2021-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (23, 7, 15, 1250, N'/tablets/iPad-Pro-2021/iPad-Pro-2021-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (24, 7, 10, 1350, N'/tablets/iPad-Pro-2021/iPad-Pro-2021-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (25, 8, 10, 1500, N'/tablets/Microsoft-Surface-Pro-4/Microsoft-Surface-Pro-4-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (26, 8, 15, 1599, N'/tablets/Microsoft-Surface-Pro-4/Microsoft-Surface-Pro-4-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (27, 8, 10, 1550, N'/tablets/Microsoft-Surface-Pro-4/Microsoft-Surface-Pro-4-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (28, 10, 15, 150, N'/accessories/Razer-Kraken-V3-Pro-HyperSense/Razer-Kraken-V3-Pro-HyperSense-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (29, 10, 5, 170, N'/accessories/Razer-Kraken-V3-Pro-HyperSense/Razer-Kraken-V3-Pro-HyperSense-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (30, 10, 8, 170, N'/accessories/Razer-Kraken-V3-Pro-HyperSense/Razer-Kraken-V3-Pro-HyperSense-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (31, 11, 10, 120, N'/accessories/Logitech-Headphone-G335/Logitech-Headphone-G335-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (32, 11, 5, 120, N'/accessories/Logitech-Headphone-G335/Logitech-Headphone-G335-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (33, 11, 7, 120, N'/accessories/Logitech-Headphone-G335/Logitech-Headphone-G335-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (34, 15, 10, 1500, N'/laptops/Dell-Gaming-G15/Dell-Gaming-G15-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (35, 15, 11, 1450, N'/laptops/Dell-Gaming-G15/Dell-Gaming-G15-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (36, 15, 10, 1450, N'/laptops/Dell-Gaming-G15/Dell-Gaming-G15-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (37, 16, 14, 820, N'/laptops/Dell-Vostro-3420/Dell-Vostro-3420-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (38, 16, 8, 900, N'/laptops/Dell-Vostro-3420/Dell-Vostro-3420-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (39, 16, 9, 900, N'/laptops/Dell-Vostro-3420/Dell-Vostro-3420-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (40, 17, 15, 950, N'/laptops/Acer-Aspire-7/Acer-Aspire-7-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (41, 17, 10, 920, N'/laptops/Acer-Aspire-7/Acer-Aspire-7-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (42, 17, 10, 890, N'/laptops/Acer-Aspire-7/Acer-Aspire-7-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (43, 18, 15, 1800, N'/laptops/Acer-Predator-Helios-Neo/Acer-Predator-Helios-Neo-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (44, 18, 10, 1850, N'/laptops/Acer-Predator-Helios-Neo/Acer-Predator-Helios-Neo-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (45, 18, 14, 1900, N'/laptops/Acer-Predator-Helios-Neo/Acer-Predator-Helios-Neo-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (46, 19, 10, 1500, N'/laptops/Asus-ProArt-Studiobook/Asus-ProArt-Studiobook-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (47, 19, 10, 1450, N'/laptops/Asus-ProArt-Studiobook/Asus-ProArt-Studiobook-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (48, 19, 14, 1450, N'/laptops/Asus-ProArt-Studiobook/Asus-ProArt-Studiobook-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (49, 20, 10, 1200, N'/laptops/Asus-Vivobook/Asus-Vivobook-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (50, 20, 13, 1300, N'/laptops/Asus-Vivobook/Asus-Vivobook-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (51, 20, 14, 1350, N'/laptops/Asus-Vivobook/Asus-Vivobook-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (52, 21, 10, 1100, N'/laptops/Lenovo-Legion-5/Lenovo-Legion-5-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (53, 21, 10, 1150, N'/laptops/Lenovo-Legion-5/Lenovo-Legion-5-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (54, 21, 5, 1300, N'/laptops/Lenovo-Legion-5/Lenovo-Legion-5-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (55, 22, 10, 1500, N'/laptops/Lenovo-Ideapad-Gaming-3/Lenovo-Ideapad-Gaming-3-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (56, 22, 10, 1450, N'/laptops/Lenovo-Ideapad-Gaming-3/Lenovo-Ideapad-Gaming-3-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (57, 22, 14, 1550, N'/laptops/Lenovo-Ideapad-Gaming-3/Lenovo-Ideapad-Gaming-3-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (58, 23, 12, 1500, N'/laptops/Lenovo-ThinkPad-T14s/Lenovo-ThinkPad-T14s-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (59, 23, 14, 1550, N'/laptops/Lenovo-ThinkPad-T14s/Lenovo-ThinkPad-T14s-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (60, 23, 5, 1700, N'/laptops/Lenovo-ThinkPad-T14s/Lenovo-ThinkPad-T14s-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (61, 24, 5, 700, N'/laptops/HP-Pavilion-15/HP-Pavilion-15-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (62, 24, 5, 700, N'/laptops/HP-Pavilion-15/HP-Pavilion-15-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (63, 24, 5, 700, N'/laptops/HP-Pavilion-15/HP-Pavilion-15-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (64, 25, 7, 670, N'/laptops/HP-Elitebook-Dragonfly-G3/HP-Elitebook-Dragonfly-G3-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (65, 25, 10, 640, N'/laptops/HP-Elitebook-Dragonfly-G3/HP-Elitebook-Dragonfly-G3-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (66, 25, 3, 650, N'/laptops/HP-Elitebook-Dragonfly-G3/HP-Elitebook-Dragonfly-G3-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (67, 26, 10, 900, N'/laptops/HP-Victus/HP-Victus-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (68, 26, 5, 950, N'/laptops/HP-Victus/HP-Victus-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (69, 26, 8, 950, N'/laptops/HP-Victus/HP-Victus-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (70, 27, 10, 1000, N'/smartphones/Xiaomi-13-Pro/Xiaomi-13-Pro-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (71, 27, 7, 1100, N'/smartphones/Xiaomi-13-Pro/Xiaomi-13-Pro-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (72, 27, 8, 1150, N'/smartphones/Xiaomi-13-Pro/Xiaomi-13-Pro-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (73, 28, 10, 750, N'/smartphones/Xiaomi-Mi-11-Lite/Xiaomi-Mi-11-Lite-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (74, 28, 13, 750, N'/smartphones/Xiaomi-Mi-11-Lite/Xiaomi-Mi-11-Lite-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (75, 28, 5, 750, N'/smartphones/Xiaomi-Mi-11-Lite/Xiaomi-Mi-11-Lite-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (76, 29, 7, 1200, N'/smartphones/Iphone-13/Iphone-13-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (77, 29, 5, 1200, N'/smartphones/Iphone-13/Iphone-13-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (78, 29, 4, 1250, N'/smartphones/Iphone-13/Iphone-13-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (79, 30, 6, 1400, N'/smartphones/Iphone-13-Pro/Iphone-13-Pro-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (80, 30, 7, 1450, N'/smartphones/Iphone-13-Pro/Iphone-13-Pro-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (81, 30, 4, 1450, N'/smartphones/Iphone-13-Pro/Iphone-13-Pro-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (82, 31, 10, 800, N'/smartphones/Samsung-Galaxy-Z-Flip4/Samsung-Galaxy-Z-Flip4-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (83, 31, 14, 890, N'/smartphones/Samsung-Galaxy-Z-Flip4/Samsung-Galaxy-Z-Flip4-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (84, 31, 5, 890, N'/smartphones/Samsung-Galaxy-Z-Flip4/Samsung-Galaxy-Z-Flip4-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (85, 34, 9, 1200, N'/smartphones/Samsung-Galaxy-A54/Samsung-Galaxy-A54-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (86, 34, 5, 1150, N'/smartphones/Samsung-Galaxy-A54/Samsung-Galaxy-A54-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (87, 34, 7, 1250, N'/smartphones/Samsung-Galaxy-A54/Samsung-Galaxy-A54-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (88, 35, 5, 350, N'/smartphones/Vivo-V27e/Vivo-V27e-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (89, 35, 5, 350, N'/smartphones/Vivo-V27e/Vivo-V27e-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (90, 35, 5, 350, N'/smartphones/Vivo-V27e/Vivo-V27e-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (91, 36, 5, 420, N'/smartphones/Vivo-Y02s/Vivo-Y02s-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (92, 36, 5, 380, N'/smartphones/Vivo-Y02s/Vivo-Y02s-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (93, 36, 5, 390, N'/smartphones/Vivo-Y02s/Vivo-Y02s-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (94, 37, 4, 420, N'/smartphones/Vivo-V25-5G/Vivo-V25-5G-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (95, 37, 5, 400, N'/smartphones/Vivo-V25-5G/Vivo-V25-5G-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (96, 37, 5, 420, N'/smartphones/Vivo-V25-5G/Vivo-V25-5G-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (97, 38, 3, 1100, N'/smartphones/Oppo-Find-N2-Flip/Oppo-Find-N2-Flip-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (98, 38, 4, 1150, N'/smartphones/Oppo-Find-N2-Flip/Oppo-Find-N2-Flip-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (99, 38, 6, 1200, N'/smartphones/Oppo-Find-N2-Flip/Oppo-Find-N2-Flip-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (100, 40, 7, 400, N'/smartphones/Oppo-Reno8-5G/Oppo-Reno8-5G-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (101, 40, 5, 450, N'/smartphones/Oppo-Reno8-5G/Oppo-Reno8-5G-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (102, 40, 8, 450, N'/smartphones/Oppo-Reno8-5G/Oppo-Reno8-5G-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (103, 41, 5, 400, N'/smartphones/Oppo-A77s/Oppo-A77s-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (104, 41, 5, 400, N'/smartphones/Oppo-A77s/Oppo-A77s-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (105, 41, 3, 400, N'/smartphones/Oppo-A77s/Oppo-A77s-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (106, 42, 10, 600, N'/tablets/Ipad-Gen-10/Ipad-Gen-10-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (107, 42, 8, 660, N'/tablets/Ipad-Gen-10/Ipad-Gen-10-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (108, 42, 9, 640, N'/tablets/Ipad-Gen-10/Ipad-Gen-10-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (109, 43, 5, 700, N'/tablets/Ipad-Air-5/Ipad-Air-5-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (110, 43, 10, 670, N'/tablets/Ipad-Air-5/Ipad-Air-5-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (111, 43, 8, 650, N'/tablets/Ipad-Air-5/Ipad-Air-5-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (112, 44, 10, 1500, N'/tablets/Microsoft-Surface-Pro-8/Microsoft-Surface-Pro-8-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (113, 44, 10, 1500, N'/tablets/Microsoft-Surface-Pro-8/Microsoft-Surface-Pro-8-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (114, 44, 8, 1500, N'/tablets/Microsoft-Surface-Pro-8/Microsoft-Surface-Pro-8-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (115, 45, 5, 1200, N'/tablets/Microsoft-Surface-Go-3/Microsoft-Surface-Go-3-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (116, 45, 8, 1200, N'/tablets/Microsoft-Surface-Go-3/Microsoft-Surface-Go-3-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (117, 45, 5, 1200, N'/tablets/Microsoft-Surface-Go-3/Microsoft-Surface-Go-3-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (118, 47, 10, 500, N'/tablets/Huawei-MatePad-SE/Huawei-MatePad-SE-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (119, 47, 5, 550, N'/tablets/Huawei-MatePad-SE/Huawei-MatePad-SE-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (120, 47, 4, 520, N'/tablets/Huawei-MatePad-SE/Huawei-MatePad-SE-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (121, 48, 7, 600, N'/tablets/Huawei-MediaPad-T5/Huawei-MediaPad-T5-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (122, 48, 10, 550, N'/tablets/Huawei-MediaPad-T5/Huawei-MediaPad-T5-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (123, 48, 5, 600, N'/tablets/Huawei-MediaPad-T5/Huawei-MediaPad-T5-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (124, 49, 10, 550, N'/tablets/Huawei-MatePad-Pro/Huawei-MatePad-Pro-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (125, 49, 5, 540, N'/tablets/Huawei-MatePad-Pro/Huawei-MatePad-Pro-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (126, 49, 12, 500, N'/tablets/Huawei-MatePad-Pro/Huawei-MatePad-Pro-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (127, 50, 8, 600, N'/tablets/Samsung-Galaxy-Tab-S8-Ultra-5G/Samsung-Galaxy-Tab-S8-Ultra-5G-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (128, 50, 5, 650, N'/tablets/Samsung-Galaxy-Tab-S8-Ultra-5G/Samsung-Galaxy-Tab-S8-Ultra-5G-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (129, 50, 5, 600, N'/tablets/Samsung-Galaxy-Tab-S8-Ultra-5G/Samsung-Galaxy-Tab-S8-Ultra-5G-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (130, 51, 7, 700, N'/tablets/Samsung-Galaxy-Tab-A8/Samsung-Galaxy-Tab-A8-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (131, 51, 9, 750, N'/tablets/Samsung-Galaxy-Tab-A8/Samsung-Galaxy-Tab-A8-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (132, 51, 4, 750, N'/tablets/Samsung-Galaxy-Tab-A8/Samsung-Galaxy-Tab-A8-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (133, 52, 5, 1200, N'/tablets/Samsung-Galaxy-Tab-A7-Lite-LTE/Samsung-Galaxy-Tab-A7-Lite-LTE-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (134, 52, 8, 1250, N'/tablets/Samsung-Galaxy-Tab-A7-Lite-LTE/Samsung-Galaxy-Tab-A7-Lite-LTE-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (135, 52, 9, 1250, N'/tablets/Samsung-Galaxy-Tab-A7-Lite-LTE/Samsung-Galaxy-Tab-A7-Lite-LTE-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (136, 53, 10, 850, N'/tablets/Xiaomi-Pad-6/Xiaomi-Pad-6-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (137, 53, 6, 890, N'/tablets/Xiaomi-Pad-6/Xiaomi-Pad-6-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (138, 53, 8, 890, N'/tablets/Xiaomi-Pad-6/Xiaomi-Pad-6-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (139, 54, 10, 550, N'/tablets/Xiaomi-Redmi-Pad/Xiaomi-Redmi-Pad-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (140, 54, 5, 550, N'/tablets/Xiaomi-Redmi-Pad/Xiaomi-Redmi-Pad-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (141, 54, 4, 550, N'/tablets/Xiaomi-Redmi-Pad/Xiaomi-Redmi-Pad-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (142, 55, 9, 600, N'/tablets/Xiaomi-Mi-Pad-5-Pro/Xiaomi-Mi-Pad-5-Pro-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (143, 55, 5, 590, N'/tablets/Xiaomi-Mi-Pad-5-Pro/Xiaomi-Mi-Pad-5-Pro-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (144, 55, 7, 650, N'/tablets/Xiaomi-Mi-Pad-5-Pro/Xiaomi-Mi-Pad-5-Pro-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (145, 56, 15, 150, N'/accessories/Razer-BlackShark-V2/Razer-BlackShark-V2-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (146, 56, 12, 150, N'/accessories/Razer-BlackShark-V2/Razer-BlackShark-V2-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (147, 56, 10, 150, N'/accessories/Razer-BlackShark-V2/Razer-BlackShark-V2-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (148, 57, 15, 49, N'/accessories/Razer-Hammerhead-PRO-V2/Razer-Hammerhead-PRO-V2-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (149, 57, 15, 49, N'/accessories/Razer-Hammerhead-PRO-V2/Razer-Hammerhead-PRO-V2-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (150, 57, 15, 49, N'/accessories/Razer-Hammerhead-PRO-V2/Razer-Hammerhead-PRO-V2-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (151, 58, 10, 150, N'/accessories/Logitech-G-Pro-X/Logitech-G-Pro-X-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (152, 58, 10, 150, N'/accessories/Logitech-G-Pro-X/Logitech-G-Pro-X-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (153, 58, 10, 150, N'/accessories/Logitech-G-Pro-X/Logitech-G-Pro-X-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (154, 59, 10, 120, N'/accessories/Logitech-G733-LIGHTSPEED-Wireless/Logitech-G733-LIGHTSPEED-Wireless-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (155, 59, 10, 120, N'/accessories/Logitech-G733-LIGHTSPEED-Wireless/Logitech-G733-LIGHTSPEED-Wireless-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (156, 59, 10, 120, N'/accessories/Logitech-G733-LIGHTSPEED-Wireless/Logitech-G733-LIGHTSPEED-Wireless-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (157, 60, 15, 100, N'/accessories/Corsair-HS55-Surround/Corsair-HS55-Surround-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (158, 60, 15, 100, N'/accessories/Corsair-HS55-Surround/Corsair-HS55-Surround-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (159, 60, 15, 100, N'/accessories/Corsair-HS55-Surround/Corsair-HS55-Surround-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (160, 61, 10, 110, N'/accessories/Corsair-HS80-RGB-Wireless/Corsair-HS80-RGB-Wireless-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (161, 61, 10, 110, N'/accessories/Corsair-HS80-RGB-Wireless/Corsair-HS80-RGB-Wireless-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (162, 61, 10, 110, N'/accessories/Corsair-HS80-RGB-Wireless/Corsair-HS80-RGB-Wireless-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (163, 62, 7, 85, N'/accessories/Corsair-Virtuoso-RGB-Wireless/Corsair-Virtuoso-RGB-Wireless-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (164, 62, 5, 85, N'/accessories/Corsair-Virtuoso-RGB-Wireless/Corsair-Virtuoso-RGB-Wireless-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (165, 62, 5, 85, N'/accessories/Corsair-Virtuoso-RGB-Wireless/Corsair-Virtuoso-RGB-Wireless-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (166, 63, 10, 95, N'/accessories/Sennheiser-GSP300/Sennheiser-GSP300-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (167, 63, 10, 95, N'/accessories/Sennheiser-GSP300/Sennheiser-GSP300-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (168, 63, 10, 95, N'/accessories/Sennheiser-GSP300/Sennheiser-GSP300-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (169, 64, 8, 150, N'/accessories/Sennheiser-GSP500/Sennheiser-GSP500-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (170, 64, 10, 150, N'/accessories/Sennheiser-GSP500/Sennheiser-GSP500-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (171, 64, 10, 150, N'/accessories/Sennheiser-GSP500/Sennheiser-GSP500-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (172, 66, 5, 240, N'/accessories/Sennheiser-GSP670-Wireless/Sennheiser-GSP670-Wireless-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (173, 66, 5, 240, N'/accessories/Sennheiser-GSP670-Wireless/Sennheiser-GSP670-Wireless-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (174, 66, 5, 240, N'/accessories/Sennheiser-GSP670-Wireless/Sennheiser-GSP670-Wireless-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (175, 67, 10, 100, N'/accessories/HyperX-Cloud-Earbuds-II/HyperX-Cloud-Earbuds-II-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (176, 67, 10, 120, N'/accessories/HyperX-Cloud-Earbuds-II/HyperX-Cloud-Earbuds-II-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (177, 67, 12, 100, N'/accessories/HyperX-Cloud-Earbuds-II/HyperX-Cloud-Earbuds-II-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (178, 68, 10, 150, N'/accessories/HyperX-Cloud-Alpha-Wireless/HyperX-Cloud-Alpha-Wireless-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (179, 68, 10, 150, N'/accessories/HyperX-Cloud-Alpha-Wireless/HyperX-Cloud-Alpha-Wireless-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (180, 68, 5, 150, N'/accessories/HyperX-Cloud-Alpha-Wireless/HyperX-Cloud-Alpha-Wireless-White', N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (181, 69, 15, 200, N'/accessories/HyperX-Cloud-III/HyperX-Cloud-III-Black', N'black')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (182, 69, 15, 200, N'/accessories/HyperX-Cloud-III/HyperX-Cloud-III-Grey', N'grey')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (183, 69, 10, 200, NULL, N'white')
GO
INSERT [dbo].[Product_Detail] ([ID], [ProID], [Quantity], [Price], [Image], [Color]) VALUES (184, NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Product_Detail] OFF
GO
SET IDENTITY_INSERT [dbo].[Wishlist] ON 
GO
INSERT [dbo].[Wishlist] ([ID], [UserID], [ProID]) VALUES (7, 6, 1)
GO
SET IDENTITY_INSERT [dbo].[Wishlist] OFF
GO
