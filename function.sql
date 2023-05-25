select * from employee;
/
CREATE OR REPLACE FUNCTION totalCustomers 
RETURN number IS 
   total number(2) := 0; 
BEGIN 
   SELECT count(*) into total 
   FROM employee; 
    
   RETURN total; 
END; 
/ 
set serveroutput on;
Declare
    c number := totalCustomers;
Begin
    dbms_output.put_line('Total Customer: ' ||c);
END;
