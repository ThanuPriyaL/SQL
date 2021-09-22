select * from stu where id = (select id from dept where dep_name= 'maths');

select id from dept where dep_name='science'|| dep_name='maths';

select * from stu where id in (select id from dept where dep_name='social'|| dep_name='maths');

select * from stu s, dept d where s.marks > 700 and d.dep_name= 'maths';

delete from dept where dep_id=3;

drop table dept;

update student_details set marks=800 where id='1';

select * from stu;

alter table stu add results varchar(10);

alter table stu drop results;

alter table stud modify results varchar(10);

alter table stu modify results int;

select * from stu ;

select * from stu s, dept d where s.results= 710 and s.dep_id= d.dep_id;


select * from sec;

select * from salary;

insert into salary(name,salary) values('aabhay',30000),('anu',40000),('thanu',50000);

insert into salary values(1,'thanu',30000);

