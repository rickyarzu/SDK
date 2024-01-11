create or replace view custom_tm_logistic.new_docarchiviatientrate_view as
select 
   h.id as doc_id, 
   h.doc_date, 
   'documents' || '/' || (date_part('year' ,  h.doc_date)) || '/' || lpad( date_part('month' , h.doc_date)::text,  2, '0') as doc_path, 
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
  documents.heads h  
    join custom_tm_logistic.entrate e on 
	  e.jguid = h.jguid
    join  custom_tm_logistic.docarchiviatientrate d on
	  e.anno = d.anno and d.num_entrata = e.num_entrata and d.pg = e.pg
	join cloud.directories c on 
	  c.directory_name = 'documents' || '/' || (date_part('year' ,  h.doc_date)) || '/' || lpad( date_part('month' , h.doc_date)::text,  2, '0')
	  and 
	  c.db_schema_id = 33
	where not exists
	  (select 1 from cloud.blob_files f where f.jguid = d.jguid)
	  
  
  

