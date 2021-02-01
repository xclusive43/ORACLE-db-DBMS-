<!--PROGRAM 1 -->
SET SERVEROUTPUT ON;
 Accept n1 number Prompt 'Enter first number :'
 Accept n2 number Prompt 'enter second number :'
 
 declare
 res number(2);
 
 begin 
    res := &n1 + &n2;
    dbms_output.put_line('the sum is :'||res);
 end;



BEGIN
   FOR I IN 1..5 LOOP
   dbms_output.put_line(I);
   END LOOP;
end;

<!--PROGRAM 2 ->

BEGIN
  FOR I IN 1..5 LOOP
   dbms_output.put_line(TO_CHAR(I));
   END LOOP;
 END;
 
 <!-- PROGRAM 3 ->
 BEGIN 
      FOR I IN REVERSE 1..5 LOOP
      dbms_output.put_line(I);
      END LOOP;
    END;
    
 <!--PROGRAM 4-->
 Declare
 i NUMBER :=5;
 
 BEGIN 
 FOR i IN 1..3 LOOP
 
 dbms_output.put_line('inside loop,i ='|| i);
 
 END LOOP;
 
 dbms_output.put_line('outside loop,i= '||i);
 
 end;
 
 
 <-- switch cahe-->
 SET SERVEROUTPUT ON;
 Declare 
 grade char(1) := 'A';
 
 begin
      case grade
      
      when 'A' then    dbms_output.put_line('Excellent');
      when 'B' then    dbms_output.put_line('Very Good');
      when 'C' then    dbms_output.put_line('Good');
      when 'D' then    dbms_output.put_line('Fair');
      when 'C' then    dbms_output.put_line('Poor');
      else     dbms_output.put_line('No such grade');
      end case;
      
 end;
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
