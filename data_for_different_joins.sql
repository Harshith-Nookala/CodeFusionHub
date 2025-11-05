-- DROP TABLE department
CREATE TABLE department(
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
);

-- DROP TABLE employee
CREATE TABLE employee(
    emp_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    salary INT NOT NULL,
    d_id INT
);

-- DROP TABLE professor
CREATE TABLE professor(
    pro_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    salary INT NOT NULL,
    hod_id INT
);

-- DROP TABLE worker
CREATE TABLE worker(
    worker_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    salary INT NOT NULL
);
-- DROP TABLE payment
CREATE TABLE payment(
    min_salary INT,
    max_salary INT,
    grade VARCHAR(2)
);

-- INSERTS on department table
INSERT INTO department VALUES(101, 'HR');
INSERT INTO department VALUES(102, 'IT');
INSERT INTO department VALUES(103, 'Finance');
INSERT INTO department VALUES(104, 'Marketing');

-- INSERTS on employee table
INSERT INTO employee VALUES(1, 'Alice', 50000, 101);
INSERT INTO employee VALUES(2, 'Bob', 45000, 102);
INSERT INTO employee VALUES(3, 'Charlie', 60000, NULL);
INSERT INTO employee VALUES(4, 'Diana', 48000, 101);
INSERT INTO employee VALUES(5, 'Eve', 70000, 103);
INSERT INTO employee VALUES(6, 'Frank', 65000, 105);

-- INSERTS on professor table
INSERT INTO professor VALUES(1, 'Alice', 50000, 3);
INSERT INTO professor VALUES(2, 'Bob', 45000, NULL);
INSERT INTO professor VALUES(3, 'Charlie', 60000, NULL);
INSERT INTO professor VALUES(4, 'Diana', 48000, 2);
INSERT INTO professor VALUES(5, 'Eve', 70000, NULL);
INSERT INTO professor VALUES(6, 'Frank', 65000, 5);
INSERT INTO professor VALUES(7, 'Henry', 55000, 3);


-- INSERTs on worker table
INSERT INTO worker VALUES(1, 'Alice', 24500);
INSERT INTO worker VALUES(2, 'Bob', 16900);
INSERT INTO worker VALUES(3, 'Charlie', 40000);
INSERT INTO worker VALUES(4, 'Diana', 35650);
INSERT INTO worker VALUES(5, 'Eve', 12000);
INSERT INTO worker VALUES(6, 'Frank', 29990);
INSERT INTO worker VALUES(7, 'Henry', 47670);

-- INSERTs on payment table
INSERT INTO payment VALUES(40000, 49999, 'A');
INSERT INTO payment VALUES(30000, 39999, 'B');
INSERT INTO payment VALUES(20000, 29999, 'C');
INSERT INTO payment VALUES(10000, 19999, 'D');

SELECT * FROM employee;
SELECT * FROM department;
SELECT * FROM professor;
SELECT * FROM worker;
SELECT * FROM payment;

select e.emp_id,e.name,d.dept_name
from employee e
join department d 
on e.d_id=d.dept_id;

--inner join means it adds the table when it is matched
select dept_name,count(*) as counts
from employee  join department  on d_id=dept_id
group by dept_name;

--left (outerjoin compares from left table and in right table if they didn't matches it gives output null for the another table
select emp_id,name,dept_id,dept_name employee 
left join department on d_id=dept_id;

--right join
select emp_id,name,dept_id,dept_name
from employee right join department on d_id=dept_id;

--full outer join
select emp_id,name,dept_id,dept_name
from employee full outer join department on d_id=dept_id;

--self join
select p1.pro_id as professor_id,p1.name as professor_name,
p2.pro_id as hod_id,p2.name as hod_name
from professor p1 join professor p2 on
p1.hod_id=p2.pro_id order by professor_name;

--thete join
select w.worker_id,w.name,w.salary,p.grade
from worker w join payment p
on w.salary>=p.min_salary and w.salary<=p.max_salary;






select i.name,c.client from
intern i join projects p
on i.p_id=p.project_id
join client c
on p.c_id=c.c.client_id;







