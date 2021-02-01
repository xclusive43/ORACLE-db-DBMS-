select * from EMPLOYEE_DEPARTMENT;
select * from  EMPLOYEES;
select * from DEPARTMENT;

UPDATE employee_department SET enter_date ='26-sep-18' WHERE emp_id IN (3001,3002);
UPDATE employees SET salary=2000 WHERE lname = 'sangma';
UPDATE employees SET emp_id=3005 WHERE emp_id=3004;
UPDATE employees SET salary=salary+1200 WHERE fname LIKE 'r%';

UPDATE employees SET salary=salary+1200 WHERE lname LIKE 'P%';

UPDATE employees SET lname='k', fname = 'l' WHERE emp_id=3001;
UPDATE employees SET hire_date ='12-Nov-18' WHERE emp_id BETWEEN 3001 AND 3004;

--EXAM SET2.1

SELECT * FROM employees where salary BETWEEN 1000 and 5000; 
SELECT UPPER( FNAME) || UPPER (lname) AS FULLNAME,salary  FROM employees WHERE hire_date <= '31-DEC-18';
SELECT COUNT( emp_id) AS TOTAL_EMPLOYESS,AVG(salary) AS AVERAGE_SALARY,SUM(salary) AS TOTAL_SALARY FROM employees; 
SELECT * FROM employees WHERE fname LIKE 'r%' OR fname LIKE 'm%';
select substr(departmentname,0,3) from department;
SELECT LENGTH(departmentname) FROM department;   

SELECT emp_id,fname || lname as employess_name  from employees order by dept_id DESC;

select instr(fname,'e') from employees;
SELECT replace(lname ,'a','K') from employees;
update employees set salary=salary + salary * 0.02;
SELECT   CURRENT_DATE FROM DUAL;
SELECT DISTINCT lname from employees;

SELECT * from employees WHERE lname  LIKE '%a' and length(lname)=6;

SELECT employees.emp_id as id ,employees.fname ||employees.lname as full_name, employees.salary as salary, department.departmentname as d_dame 
from employees,department 
where employees.dept_id = department.dept_id order by employees.salary DESC;

SELECT employees.emp_id as id ,employees.fname ||employees.lname as full_name, employees.hire_date as salary, department.departmentname as d_dame 
from employees,department
where employees.dept_id = department.dept_id order by employees.hire_date DESC;


