insert into Customer(cID, cName, cAge)
values (1, 'Minh Quan', 10),
       (2, 'Ngoc Oanh', 20),
       (3, 'Hong Ha', 50);

insert into orders (oID, cID, oDate, oTotalPrice)
values (1, 1, str_to_date('03/21/2006', '%m/%d/%Y'), Null),
       (2, 2, str_to_date('03/23/2006', '%m/%d/%Y'), Null),
       (3, 1, str_to_date('03/16/2006', '%m/%d/%Y'), Null);

insert into product (pID, pName, pPrice) value (1, 'May Giat', 3),
    (2, 'Tu Lanh', 5),
    (3, 'Dieu Hoa', 7) ,
    (4, 'Quat', 1),
    (5, 'Bep Dien', 2);

insert into order_detail (oID, pID, odQTY)
VALUEs (1, 1, 3),
       (1, 3, 7),
       (1, 4, 2),
       (2, 1, 1),
       (3, 1, 8),
       (2, 5, 4),
       (2, 3, 3);

select oID, oDate, oTotalPrice
from orders;

select c.*, p.*
from customer c
         join orders o on c.cID = o.cID
         join order_detail od on o.oID = od.oID
         join product p on od.pID = p.pID;

select *
from customer c
where not exists(select 1 from orders o where o.cID = c.cID);

select o.oID, o.oDate, sum(od.odQty * p.pPrice)
from orders o
         join order_detail od on o.oID = od.oID
         join product p on p.pID = od.pID
group by o.oID, o.oDate;