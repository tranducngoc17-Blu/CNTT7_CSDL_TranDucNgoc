create database ShopManager;

use ShopManager;

create table Categories_db (
	category_id int primary key auto_increment,
    category_name char(255) not null
);

create table Products_db (
	product_id int primary key auto_increment,
    product_name char(255) not null,
    price decimal(10,2) not null check (price >= 0),
    stock varchar(40) null,
    category_id int not null
);

insert into Categories_db
values
(1, 'Điện tử'),
(2, 'Thời trang');

select * from Categories_db;

insert into Products_db
values
(1, 'iPhone 15',  25000000, 10, 1),
(2, 'Samsung S23', 20000000, 5, 1),
(3, 'Áo sơ mi nam', 500000, 50, 1),
(4, 'Giày thể thao', 1200000, 20, 2);

select * from Products_db;

update Products_db
set price = '26000000'
where product_name = 'iPhone 15' and stock = stock + 10;





