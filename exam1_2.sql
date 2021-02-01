set serveroutput on;

DECLARE 
        n number;
        avg1 NUMBER :=0;
        sum1 number :=0;
        count1 number :=0;

BEGIN
    
        n :=&enter_a_number;
        
        while(n<>0) 
        loop
        
        count1 := count1+1;
        sum1 := sum1 + n;
        n :=&enter_a_number;
        
        end loop;
         avg1 := sum1 / count1;
         dbms_output.put_line('the avg is '||avg1);
end;

--//////////////////////////////////////////////////
set serveroutput on;

DECLARE 
      SUBTYPE name is CHAR(20);
      SUBTYPE message is varchar2(100);
      salutation name;
      greetings message;

BEGIN
    
    salutation :='reader';
    greetings :='welcome to the world of pl/sql';
        
end;
--////////////////////////

set SERVEROUTPUT on;

BEGIN
         for i in REVERSE 1..99
         loop
         if mod(i,3)=0 then
         
         dbms_output.put_line(i);
         end if;
         end loop;
end;
--////////////////////////////////////

set SERVEROUTPUT on;

declare
  
  n_salary employees.salary%type;
  n_emp_id employees.emp_id%TYPE := 3001;
  n_msg VARCHAR(20);
  
  BEGIN
        select salary into n_salary
        from employees
        where emp_id=n_emp_id;
        
        case
          when n_salary<2000 then
          n_msg:='low';
          when n_salary>20000 and n_salary<30000 then
          n_msg:='fair';
          when n_salary>=30000  then
          n_msg:='high';
          end case;
          dbms_output.put_line(n_msg);
  end;
