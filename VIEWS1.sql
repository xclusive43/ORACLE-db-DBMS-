<!--0ASSIGNMENT SET-3-->

CREATE VIEW myview as select emp_id,fname,lname,dept_id from employees where dept_id = 1;
SELECT * FROM MYVIEW;

create or replace view myview as select emp_id,fname,hire_date,salary,dept_id from employees where dept_id = 1;
SELECT * FROM MYVIEW;
update myview set salary = salary + 500 ;
SELECT * FROM MYVIEW;

insert INTO myview values(3006,'david','12-Apr-20',12000,3);
SELECT * FROM MYVIEW;

create view myview2 as select emp_id,fname,hire_date,salary,dept_id from employees where dept_id =1 with CHECK OPTION;

select * from myview2;
SELECT * FROM MYVIEW2;
update myview2 set salary = salary  + 500; 

insert  into myview2 values(3007,'ramu','22-may-18',23000,2);
SELECT * FROM EMPLOYEES;

insert  into myview2 values(3008,'raj','2-may-18',2000,1);
SELECT * FROM EMPLOYEES;

create view myview3 as SELECT emp_id,fname,hire_date,salary ,dept_id from employees where dept_id =1 with READ ONLY; 

select * from myview3;

update myview3 set salary =salary+ 500;

insert INTO myview3 VALUES(3009,'manoj','30-jan-16',33000,1);



