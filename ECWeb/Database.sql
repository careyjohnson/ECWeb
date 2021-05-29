drop database if exists ecweb;
create database ecweb;
use ecweb;

create table Users(
id bigint auto_increment primary key,
username varchar(20) not null unique,
password varchar(20) not null,
email varchar(20),
phone varchar(13),
address varchar(200),
created_by bigint,
created_time datetime,
update_by bigint,
update_time datetime
);

create table Category(
id bigint primary key,
name varchar(20) not null,
description varchar(500),
category_id bigint,
created_by bigint,
created_time datetime,
update_by bigint,
update_time datetime
);

create table Products(
id bigint primary key,
name varchar(20) not null,
description varchar(500),
price decimal(10,2),
inventory bigint,
category_id bigint,
created_by bigint,
created_time datetime,
update_by bigint,
update_time datetime,
FOREIGN KEY (category_id) REFERENCES Category (id) ON DELETE CASCADE ON UPDATE CASCADE
);

create table PaymentMethod(
id bigint primary key,
name varchar(20) not null,
created_by bigint,
created_time datetime,
update_by bigint,
update_time datetime
);

create table ShoppingCart(
id bigint primary key,
user_id bigint not null,
payment_method bigint,
status binary,
created_by bigint,
created_time datetime,
update_by bigint,
update_time datetime,
FOREIGN KEY (user_id) REFERENCES Users (id) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (payment_method) REFERENCES PaymentMethod (id) ON DELETE CASCADE ON UPDATE CASCADE
);

create table ShoppingCart_Product(
product_id bigint,
shoppingcart_id bigint,
total_price bigint not null,
name varchar(20),
description varchar(500),
price decimal(10,2),
promotion decimal(10,2),
Inventory bigint,
category_id bigint,
created_by bigint,
created_time datetime,
update_by bigint,
update_time datetime,
FOREIGN KEY (product_id) REFERENCES Products (id) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (shoppingcart_id) REFERENCES ShoppingCart (id) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (category_id) REFERENCES Category (id) ON DELETE CASCADE ON UPDATE CASCADE
);

create table Staff(
id bigint auto_increment primary key,
username varchar(20) not null unique,
password varchar(20) not null,
email varchar(20),
created_by bigint,
created_time datetime,
update_by bigint,
update_time datetime
);

insert Staff (username,password) values
('admin','admin'),
('mai','123'),
('linh','123');
insert Users (username,password) values
('mai','123');
select * from users;