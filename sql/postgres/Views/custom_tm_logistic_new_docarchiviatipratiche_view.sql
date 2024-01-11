  
create or replace view custom_tm_logistic.new_docarchiviatipratiche_view as
select 
   h.id as doc_id, 
   h.workdate, 
   'workflows' || '/' || (date_part('year' ,  h.workdate)) || '/' || lpad( date_part('month' , h.workdate)::text,  2, '0') as doc_path, 
   d.nomefile,
   d.tipodoc, 
   d.path, 
   case when d.flgvisibile = 'S' then true else false end internet_visible, 
   d.codutente, 
   c.directory_id, 
   substring(nomefile, Length(nomefile) -3, 1  ) as p,
   case when substring(nomefile, Length(nomefile) -3, 1) = '.' then '' else '.' end ||  substring(nomefile, Length(nomefile) -3, 4  ) as file_ext,
   -- case when substring(  ) then true else false end internet_visible, 
   d.jguid 
from 
  workflow.workflows h  
    inner join  custom_tm_logistic.testatapratiche e on 
	  e.jguid = h.jguid
    inner join  custom_tm_logistic.documentiarchiviati d on
	  e.anno = d.anno and d.progressivo = e.progressivo and d.progressivopraticagroupage = e.progressivopraticagroupage
	  and e.codattivita = d.codattivita and e.codfiliale = d.codfiliale
	inner join cloud.directories c on 
	  c.directory_name = 'documents' || '/' || (date_part('year' ,  h.workdate)) || '/' || lpad( date_part('month' , h.workdate)::text,  2, '0')
	where not exists
	  (select 1 from cloud.blob_files f where f.jguid = d.jguid);
	  

	  
	  
  
  

