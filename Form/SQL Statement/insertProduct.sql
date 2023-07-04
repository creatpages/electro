use PRJ_ShoppingOnlineWebsite

insert into Product values(1, 'Dell Inspiron 1410', 'Description of Dell Inspiron 1410', '/Laptops/Dell-Inspiron-1410.png')
insert into Product values(1, 'Acer Nitro 5', 'Description of Acer Nitro 5', '/Laptops/Acer-Nitro-5.png')
insert into Product values(1, 'Asus TUF Gaming A15', 'Description of Asus TUF Gaming A15', '/Laptops/Asus-TUF-Gaming-A15.png')

insert into Product values(2, 'Xiaomi Redmi Note 12 4GB/128GB', 'Description of Xiaomi Redmi Note 12 4GB/128GB', '/Smartphones/Xiaomi-Redmi-Note-12.png')
insert into Product values(2, 'Iphone 14 Pro Max 128GB', 'Description of Iphone 14 Pro Max 128GB', '/Smartphones/Iphone-14-Pro-Max.png')
insert into Product values(2, 'Samsung Galaxy S22 Ultra 12GB/256GB', 'Description of Samsung Galaxy S22 Ultra 12GB/256GB', '/Smartphones/Samsung-Galaxy-S22-Ultra.png')

insert into Product values(3, 'iPad Pro 2021', 'Description of iPad Pro 11 Inch 2021', '/Tablets/iPad-Pro-2021.png')
insert into Product values(3, 'Microsoft Surface Pro 4', 'Description of Microsoft Surface Pro 4', '/Tablets/Microsoft-Surface-Pro-4.png')

insert into Product values(4, 'Logitech Headphone G335', 'Description of Logitech Headphone G335', '/Accessories/Logitech-Headphone-G335.png')
insert into Product values(4, 'Razer Kraken V3 Pro HyperSense', 'Description of Razer Kraken V3 Pro HyperSense', '/Accessories/Razer-Kraken-V3-Pro-HyperSense.png')

select pd.ID, pd.Name, pd.Description, pd.Image, ct.Name as 'Category Name' from Product pd
join Category ct on pd.CateID = ct.ID
where ct.name = 'Accessories'
