set serveroutput on;

declare
x number;
begin
x := &enter_value;
dbms_output.put_line(x*2);
end;
/