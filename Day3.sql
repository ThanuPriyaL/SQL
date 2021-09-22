create table sales(
salesid int not null primary key,
salesname varchar(20),
address varchar(20)
);

create table order_sales(
id int primary key,
productname varchar(15),
address varchar(15),
salesid int,
constraint FK_ORDER foreign key (salesid) references sales(salesid) );

insert into sales values(1,'maya','bengaluru');
 insert into sales values(2,'thanu','bang');
 insert into sales values(3,'priya','bang');

insert into order_sales values(1,'mobile','bengaluru','1');
 insert into order_sales values(2,'clothings','bengaluru','2');
 insert into order_sales values(3,'accessories','bengaluru','3');

select * from sales;
select * from order_sales;

delete from sales where salesid=1; /* cannot delete as it is connect to foriegn key */

select distinct  salesname, id, productname from sales s , order_sales o where s.salesid= o.salesid and s.salesname= 'maya';
select * from sales s , order_sales o where s.salesid= o.salesid and s.salesname= 'maya';

select s.salesid,s.salesname,s.address,p.id, p.productname from sales s inner join order_sales p on s.salesid=p.salesid;

select * from sales s inner join order_sales p on s.salesid=p.salesid;

select * from order_sales where salesid= (select salesid from sales where salesname= 'maya');

select s.salesid,s.salesname,s.address,p.id, p.productname from sales s left join order_sales p on s.salesid=p.salesid;

select * from sales s left join order_sales p on s.salesid=p.salesid;
select s.salesid,s.salesname,s.address,p.id, p.productname from sales s right join order_sales p on s.salesid=p.salesid;

select * from sales s right join order_sales p on s.salesid=p.salesid;