create table Category
(
    ID   int identity
        constraint PK_Category
            primary key,
    Name varchar(50)
);

create table Brand
(
    ID     int identity
        constraint PK_Brand
            primary key,
    Name   varchar(50),
    CateID int
        constraint FK_Brand_Category
            references Category
);

create table Order_Status
(
    ID     int identity
        constraint PK_Order_Status
            primary key,
    Status varchar(50)
);

create table Product
(
    ID          int identity
        constraint PK_Product
            primary key,
    CateID      int
        constraint FK_Product_Category
            references Category,
    BrandID     int
        constraint FK_Product_Brand
            references Brand,
    Name        varchar(50),
    Description text,
    Image       varchar(50),
    Sold        int
        constraint DF_Product_Sold default 0
);

create table Product_Option
(
    ID       int identity
        constraint PK_Product_Detail
            primary key,
    ProID    int
        constraint FK_Product_Detail_Product
            references Product,
    Quantity int,
    Price    float,
    Image    varchar(250),
    Color    varchar(50)
);

create table [User]
(
    ID       int identity
        constraint PK_User_Account
            primary key,
    Username varchar(32),
    Password varchar(32),
    Role     bit
        constraint DF_User_Account_Role default 0,
    Status   bit
        constraint DF_User_Account_Status default 1,
    Name     nvarchar(50),
    Phone    varchar(15),
    Email    varchar(50)
);

create table Address
(
    ID        int identity
        constraint PK_User_Address_1
            primary key,
    UserID    int
        constraint FK_User_Address_User_Account
            references [User],
    Address   nvarchar(250),
    City      nvarchar(50),
    IsDefault bit
        constraint DF_User_Address_IsDefault default 0
);

create table Cart
(
    ID          int identity
        constraint PK_Cart_Item
            primary key,
    UserID      int
        constraint FK_Cart_Item_User_Account
            references [User],
    ProDetailID int
        constraint FK_Cart_Item_Product_Detail
            references Product_Option,
    Quantity    int
);

create table [Order]
(
    ID              int identity
        constraint PK_Order
            primary key,
    UserID          int
        constraint FK_Order_User_Account
            references [User],
    DateOrder       date,
    Status          int
        constraint FK_Order_Order_Status
            references Order_Status,
    ShippingAddress nvarchar(250),
    PaymentMethod   varchar(50)
);

create table Order_Detail
(
    ID          int identity
        constraint PK_Order_Detail
            primary key,
    ProDetailID int
        constraint FK_Order_Detail_Product_Detail
            references Product_Option,
    Quantity    int,
    Price       float,
    OrderID     int
        constraint FK_Order_Detail_Order1
            references [Order]
);

create table Wishlist
(
    ID     int identity
        constraint PK_Wishlist
            primary key,
    UserID int not null
        constraint FK_Wishlist_User_Account
            references [User],
    ProID  int not null
        constraint FK_Wishlist_Product
            references Product
);