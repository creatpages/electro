use PRJ_ShoppingOnlineWebsite

insert into Brand values('Dell', 1)
insert into Brand values('Asus', 1)
insert into Brand values('Acer', 1)
insert into Brand values('Samsung', 2)
insert into Brand values('Apple', 2)
insert into Brand values('Xiaomi', 2)
insert into Brand values('Apple iPad', 3)
insert into Brand values('Microsoft', 3)
insert into Brand values('Huawei', 3)
insert into Brand values('Logitech', 4)
insert into Brand values('Razer', 4)
insert into Brand values('Corsair', 4)

select * from Brand

select br.ID, br.Name as 'Brand Name', ct.Name as 'Category Name' from Brand br
join Category ct on br.CateID = ct.ID
where ct.Name = 'Smartphone'