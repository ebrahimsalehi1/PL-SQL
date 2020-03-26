
select level,e.employee_id,e.last_name,e.manager_id,
  sys_connect_by_path(e.employee_id,'/') as path,
  connect_by_root(employee_id) as root,
  CONNECT_BY_ISLEAF as leaf,
  CONNECT_BY_ISCYCLE as cycle
from employees e
start with e.manager_id is null
connect by nocycle prior e.employee_id=e.manager_id