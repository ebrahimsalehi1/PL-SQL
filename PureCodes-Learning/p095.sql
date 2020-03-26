-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
-------------------------------------------------------------------------------
begin

  for i in 1..5
  loop
  
    for j in 1..5
    loop
    
      dbms_output.put_line(i||'*'||j||'='||i*j);
    end loop;
  
  end loop;

end;
-------------------------------------------------------------------------------
begin

  for i in 1..5
  loop
  
    for j in 1..i
    loop
    
      dbms_output.put_line(i||j);
    end loop;
  
  end loop;

end;
-------------------------------------------------------------------------------
declare
  i number := 0;
  j number := 0;

begin

  while  i <=5
  loop
    i:=i+1;
    j:=0;
    while j <=5
    loop
      j:=j+1;
      dbms_output.put_line(i||j);
    end loop;
  
  end loop;

end;
-------------------------------------------------------------------------------
--1^1+2^2+3^3
declare
  s  number := 0;
  m number;
  N number := 30;
begin

  for i in 1..N
  loop
  
    m := 1;
    for j in 1..i
    loop
    
      m:=m*i;
    end loop;
    
    s:=s+m;
  
  end loop;

  dbms_output.put_line('result:'||s);

end;
-------------------------------------------------------------------------------
