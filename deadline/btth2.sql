create database book_worm;

use book_worm;

create table authors (
	author_id int unsigned primary key auto_increment,
    full_name varchar(100) not null,
    birth_year int,
    nationality varchar(100)
);

create table books (
	book_id int unsigned primary key auto_increment,
    book_name varchar(150) not null unique,
    category varchar(100),
    author_id int unsigned not null,
    price decimal(10, 2) not null default 0,
    publish_year year,
    
    constraint chk_price check (price >= 0),
    
    constraint fk_books_authors 
		foreign key (author_id)
		references authors(author_id)
		on delete cascade
        
);

create table customers (
	customer_id int unsigned primary key auto_increment,
    full_name varchar(100) not null,
	email varchar(100) not null unique,
    phone varchar(15) not null unique,
    registration_date datetime default current_timestamp
);

insert into authors (full_name, birth_year, nationality) 
values
('Nguyen Nhat Anh', 1955, 'Vietnam'),
('Agatha Christie', 1890, 'British'),
('Dale Carnegie', 1888, 'American');

insert into books (book_name, category, author_id, price, publish_year) 
values
('Mat Biec', 'Van hoc', 1, 50000, 1990),
('Toi thay hoa vang tren co xanh', 'Van hoc', 1, 60000, 2010),
('Cho toi xin mot ve di tuoi tho', 'Van hoc', 1, 55000, 2008),

('Murder on the Orient Express', 'Trinh tham', 2, 120000, 1934),
('Death on the Nile', 'Trinh tham', 2, 110000, 1937),

('How to Win Friends and Influence People', 'Ky nang', 3, 150000, 1936),
('The Quick and Easy Way to Effective Speaking', 'Ky nang', 3, 130000, 1950),
('How to Stop Worrying and Start Living', 'Ky nang', 3, 140000, 1948);

insert into customers (full_name, email, phone) 
values
('Tran Van A', 'a@gmail.com', '0900000001'),
('Le Thi B', 'b@gmail.com', '0900000002'),
('Pham Van C', 'c@gmail.com', '0900000003'),
('Nguyen Thi D', 'd@gmail.com', '0900000004'),
('Hoang Van E', 'e@gmail.com', '0900000005');