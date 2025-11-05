create table employee(
    emp_id number primary key,
    name varchar(50),
    age number,
    salary number,
    email varchar(100)
);
drop table employee cascade constraints;

insert into employee values (1,'Alice',18,60000,'a@gmail.com');
insert into employee values (2,'Bob',19,50000,'b@gmail.com');
insert into employee values (3,'Charlie',20,65000,'c@gmail.com');

update employee set age=19 where emp_id=3;
update employee set email='bob@gmail.com' where emp_id=2;
update employee set salary=70000 where emp_id=1;

delete from employee where emp_id=4;
delete from employee where salary=60000;
delete from employee where age =20;

select * from employee;
select name from employee where age=18;
select name from employee where emp_id=3;

--std_details table
create table std_details(
    s_no number,
    course varchar(10),
    hobbies varchar(20)
);

insert into std_details values (1,'DBMS','Singing');
insert into std_details values (1,'DBMS','Dancing');
insert into std_details values (2,'DBMS','Dancing');
insert into std_details values (2,'Python','Playing');
delete from std_details where course='Python';
rollback;
select * from std_details;

create table std_details_course(
    s_no int,
    course varchar(10),
    primary key(s_no,course)
);
drop table std_details_course;

insert into std_details_course values (1,'DBMS');
insert into std_details_course values (2,'DBMS');
insert into std_details_course values (2,'Python');

create table std_details_hobbies(
    s_no int,
    hobbies varchar(20),
    primary key(s_no,hobbies)
);

insert into std_details_hobbies values (1,'Singing');
insert into std_details_hobbies values (1,'Dancing');
insert into std_details_hobbies values (2,'Dancing');
insert into std_details_hobbies values (2,'Playing');

select * from std_details_course;

select * from std_details_hobbies;


