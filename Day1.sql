create table stu (
id int not null primary key,

name varchar(10),

dep_id varchar(10)
);


alter table stu add marks int;


insert into stu( id, name, dep_id, marks)

values( 1, 'thanu' , '3',730),
( 2, 'priya' , '1',750),
( 3, 'anu' , '2',700);


select * from stu;

select name from stu;

select * from stu where marks>700;

select * from stu where marks<710;

select * from stu where name like='a%';

select * from stu where name like='%a';

create table dept (
id int not null primary key,
dep_name varchar(10)
);



insert into dept( id, dep_name,)

values( 1, 'maths'),
( 2, 'science'),
( 3, 'social');


select * from dept;

select dept_name from dept;

select * from stu order by id acs;

select * from stu order by id desc;

select * from stu where id>1 order by id desc;

select count(*) from stu;

