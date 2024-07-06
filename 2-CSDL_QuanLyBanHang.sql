CREATE DATABASE QuanLyBanHang;

use QuanLyBanHang;

create table customer
(
    cID   int auto_increment primary key,
    cName VARCHAR(500),
    cAge  int
);

create table orders
(
    oID         int auto_increment primary key,
    cID         int,
    oDate       datetime,
    oTotalPrice int,
    foreign key (cID) references customer (cID)
);

create table order_detail
(
    oID         int,
    pID         int,
    oDate       datetime,
    oTotalPrice int,
    foreign key (oID) references orders (oID),
    foreign key (pID) references product (pID)
);

create table product
(
    pID    int auto_increment primary key,
    pName  VARCHAR(500),
    pPrice int
);