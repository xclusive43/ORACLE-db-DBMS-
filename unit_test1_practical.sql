--example 1:
 Set Serveroutput on;
 
 DECLARE 
        
        a number(2);
        b number(2);
        c number(2);
        res number(2);
BEGIN

  a := &a;
  b := &b;
  c := &c;
  
  if a>b and a>c then
  dbms_output.put_line('the greater number is :'||a);
  
  ELSIF b>a and b>c then
  dbms_output.put_line('the greater number is:'||b);
  
  else
   dbms_output.put_line('the greater number is :'||c);
  end if;


end;
--/////////////////////////////////////////////////
--example 2


 DECLARE 
        
        a number(2);
         
BEGIN

  a := &a;

  
  if a mod 2 = 0 then
  dbms_output.put_line(a||' is even number');
  
   
  
  else
   dbms_output.put_line(a||' is odd');
  end if;


end;
--//////////////////////////////////////////////////////
--example 3:

 Set Serveroutput on;
  
 DECLARE 
        
      ar number(10); 
         
BEGIN
ar := &ar;
  
  
dbms_output.put_line('Even Numbers are : ');
  for i in 1..ar loop
    if i mod 2 = 0 then
        dbms_output.put_line(i);
    end if;

    end loop;
end;

--/////////////////////////////////////////////////////////

--example4 
 Set Serveroutput on;
  
 DECLARE 
        
      ar number(10); 
         
BEGIN
ar := &ar;
  
  
dbms_output.put_line('ODD Numbers are : ');
  for i in 1..ar loop
    if i mod 2 != 0 then
        dbms_output.put_line(i);
    end if;

    end loop;
end;
////////////////////////////////////////////////////////////
example 5
Set Serveroutput on;
  
DECLARE
    counter NUMBER;
    k NUMBER;
    r number;
BEGIN
r := &r;
  FOR n IN 1..r LOOP   
    counter := 0;
    k := floor(n/2);
    FOR i IN 2..k LOOP
        IF (mod(n, i) = 0 ) THEN
            counter := 1;
        END IF;
    END LOOP;
    IF (counter = 0) THEN
       DBMS_OUTPUT.PUT_LINE(n||' is prime number');
    END IF;
  END LOOP;
END;
--//////////////////////////////////////////////////////////

--example 6
SET SERVEROUTPUT ON;
 Declare 
 d number(2);
 c number(2);
 
 begin
 d :=&d;

        if d>=1 and d<=7 then
         c := 1;
         
         ELSIF d>7 and d<=14 then
         c := 2;
          
         ELSIF d>14 and d<=21 then
         c := 3;
         
         ELSIF d>21 and d<=28 then
         c := 4;
         
         else 
         
         c :=5;
         
        end if;
        
      
 
      case c
      
      when '1' then    dbms_output.put_line(d||' in First Week');
      when '2' then    dbms_output.put_line(d||' in Second Week');
      when '3' then    dbms_output.put_line(d||' in Third Week');
      when '4' then    dbms_output.put_line(d||' in Fourth Week');
      when '5' then    dbms_output.put_line(d||' in Fifth Week');
      else     dbms_output.put_line('please input the day between 1 to 31 ');
      end case;
      
 end;
--///////////////////////////////////////////////////////
--example 7
SET SERVEROUTPUT ON;

   Accept a number  Prompt 'enter the month value between 1 to 12, like january  = 1 :'
 
 Declare 
 
   c number(2);
   d number(2);
 
 begin
   d :=&a;
  

        if d=1 or d=3 or d=5 or d=7 or d=8 or d=10 or d=12 then
         c := 1;
         
         ELSIF d=4 or d=6 or d=9 or d=11 then
         c := 2;
         
         ELSIF d=2 then 
         
         c :=3;
         
        end if;
         
      case c
      
      when '1' then    dbms_output.put_line(d||' month has 31 days');
      when '2' then    dbms_output.put_line(d||' month has 30 days');
      when '3' then    dbms_output.put_line(d||' month has 28 or 29 days');
     
      else     dbms_output.put_line('please input the month value between 1 to 12 ');
      end case;
      
 end;
--///////////////////////////////////////////////////////////////
--//example 8
SET SERVEROUTPUT ON;
 Accept d1  char Prompt 'Enter a Character :'
   
 Declare 
     d char;
    c number(2);
   
 
 begin
  
   d :='&d1';
   
        if d='a' or d='e' or d='i' or d='o' or d='u' or  d='A' or d='E' or d='I' or d='O' or d='U' then
         c := 1;
        
         ELSE
         c :=2;
         
         end if;
         
      case c
      
      when '1' then    dbms_output.put_line(d||' is vowels');
      
      when '2' then    dbms_output.put_line(d||' is CONSONENT');
      
 
      
      else     dbms_output.put_line('ENTER A CHARACHER');
      
      end case;
      
 end;
--//////////////////////////////////////////////////////////////////////
--example 9
--to read an employee id of a particular employees and display the full name in uppercase,salary 
--and hire-date.
set SERVEROUTPUT on;
 ACCEPT id1 number PROMPT 'enter the employee id';

declare 
 fname1 employees.fname%TYPE ;
 salary1 employees.salary%TYPE;
 hdate employees.hire_date%TYPE;
 
begin

 select  upper(fname)||upper(lname) into fname1   from employees
 
 where emp_id=&id1;
 
 select  salary into salary1   from employees
 
 where emp_id=&id1;
 
  select hire_date into hdate   from employees
 
 where emp_id=&id1;
 

 dbms_output.put_line('Full-Name: '||fname1||' hire-date: '||hdate||' Salary: '||salary1);
  
end;

