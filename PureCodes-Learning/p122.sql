
declare
  cur pls_integer;
  columns_list dbms_sql.desc_tab2;
  columns_cnt  integer;
begin
  cur :=  dbms_sql.open_cursor;
  dbms_sql.parse(cur,'select * from employees',dbms_sql.native);
  dbms_sql.describe_columns2(cur,columns_cnt,columns_list);
  dbms_output.put_line('number of columns:'||columns_cnt);
  for i in 1..columns_list.count
  loop
    dbms_output.put_line(columns_list(i).col_name||'-'||
                        columns_list(i).col_type || '-' ||
                        columns_list(i).col_precision || '-' ||
                        columns_list(i).col_scale || '-' ||
                        columns_list(i).col_max_len || '-' ||
                        columns_list(i).col_name_len || '-' 

                        );
  end loop;
  dbms_sql.close_cursor(cur);
end;