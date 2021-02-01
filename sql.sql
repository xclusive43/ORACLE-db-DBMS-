 
 select ascii('h')
 from dual;
 
 select CHR(116) from dual;
 
 select concat('a','b') from dual;
 
 select instr('west garo hills ','a') from dual;

select instr('west garo hills a a','a' ,1,2) from dual;
select instr('west garo hills a a','a' ,-1,2) from dual;

select length('hello world') from dual;
select length(null) from dual;
select length('') from dual;

select lower('Hello World') from dual;
select upper('Hello World') from dual;

select lpad('hello',7,90) from dual;
select lpad('hello',9,'k') from dual;
select lpad('hello',2) from dual;

<--string replace
select rpad('hello',4) FROM dual; 
 
select rtrim('nehu tura campus 12',12) from dual; 
select rtrim('nehu tura campus 12', '12') from dual;

select replace('nahu tura','nahu','nehu') from dual;
select replace('nehu tura 123','123') from dual;

select substr('this is nehu', 9,4) from dual;
select substr('this is nehu', -3,4) from dual;

select trim(leading '0' from '000112') from dual;
select trim(trailing '2' from '000112') from dual;
select trim(both '1' from '000112111') from dual;

<-- 5=101 and op with 3=011 =001 decimal of 001 is 1
select bitand(5,3) from dual;
select bitand(13,7) from dual;

select ceil(32.65) from dual;
select ceil(31.2) from dual;
select ceil(32.1) from dual;

<--exponatial value
select exp(3) from dual;
select exp(0) from dual;

select floor(20.99) from dual;

<--log
select ln(20) from dual ;
SELECT mod(2, 5) from dual;
select power(4, 2) from dual;
select round(123.315, 2) from dual;

select sign(0) from dual;
select sign(-177) from dual;
select sign(1) from dual;

select sqrt(9) from dual;

select trunc(100.88,2) from dual;

//conversion function

select to_number('1234.77','9999.99') from dual;
select to_char (1234.77, '9999.99') from dual;

select to_date('02/07/2003', 'dd/mm/yyyy')from dual;

select add_months('10-aug-2003',-1) from dual;
select add_months('10-aug-2003',3) from dual;
 



 



 



