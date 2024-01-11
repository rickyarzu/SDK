create view workflow.workflows_folders as 
select distinct   'workflows' || '/' || (date_part('year' ,  d.workdate)) || '/' || lpad( date_part('month' , d.workdate)::text,  2, '0') as path
  from workflow.workflows d
  where workdate is not null
  order by 'workflows' || '/' || (date_part('year' ,  d.workdate)) || '/' || lpad( date_part('month' , d.workdate)::text,  2, '0');

insert into cloud.directories 
(directory_id, computer_id, db_schema_id, directory_name, directory_path, jguid, deleted )
select 
  nextval('cloud.cloud_directories_seq') as id, --directory_id 
  null,  --computer_id, 
  33, -- db_schema_id
  f.path, -- directory_name
  f.path, -- directory_path
  public.uuid_generate_v1mc(), -- jguid
  false -- deleted
from 
  workflow.workflows_folders f
where not exists
  (select 1 from cloud.directories c where c.computer_id is null and c.db_schema_id = 33 and c.directory_path = f.path );

