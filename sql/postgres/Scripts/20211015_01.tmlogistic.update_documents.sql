-- FUNCTION: custom_tm_logistic.update_documents()

-- DROP FUNCTION IF EXISTS custom_tm_logistic.update_documents();

CREATE OR REPLACE FUNCTION custom_tm_logistic.update_documents(
	)
    RETURNS integer
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
declare
  i integer;
  j integer; 
  rec record; 
  curaa cursor for select h.id, a.an_address
  	from documents.heads h inner join anagraph.anagraphs a on a.anagraph_id = h.anagraph_id
  	and a.an_address is not null and h.dest_address is null;  
	
  curap cursor for select h.id, a.an_postal_code
    	from documents.heads h inner join anagraph.anagraphs a on a.anagraph_id = h.anagraph_id
  	and a.an_postal_code is not null and h.dest_postal_code is null;  
	
  curat cursor for select h.id, a.an_town
    	from documents.heads h inner join anagraph.anagraphs a on a.anagraph_id = h.anagraph_id
  	and a.an_town is not null and h.dest_town is null;
	
  curas cursor for select h.id, a.an_state_province
    from documents.heads h inner join anagraph.anagraphs a on a.anagraph_id = h.anagraph_id
  	and a.an_state_province is not null and h.dest_state_province is null;
	
  curai cursor for select h.id, a.an_iso_country_code2
  	from documents.heads h inner join anagraph.anagraphs a on a.anagraph_id = h.anagraph_id
  	and a.an_iso_country_code2 is not null and h.dest_country_iso is null;
  -- pro forma payments 
  curpp cursor for select s.id, t.codpagamento, a.description, a.endmonth, a.months, a.days
		from documents.heads s
		inner join custom_tm_logistic.pretestafatt t on t.jguid = s.jguid
		inner join accounting.payment_terms a on t.codpagamento = a.code
	    where t.codpagamento is not null and s.payment_terms_des is null; 
		
   curfp cursor for	
   select s.id, t.codpagamento, a.description, a.endmonth, a.months, a.days
		from documents.heads s
		inner join custom_tm_logistic.testafatt t on t.jguid = s.jguid
		inner join accounting.payment_terms a on t.codpagamento = a.code	
		where t.codpagamento is not null and s.payment_terms_des is null; 
		
currv cursor for		
select r.id, r.vat_rate, r.vat_code, codiva, perciva, v.description
 from documents.rows r
	inner join custom_tm_logistic.precorpofatt c on c.jguid = r.jguid
	inner join accounting.vat_codes v on v.code = r.vat_code 
	where r.vat_description is null ;  
	
curfv cursor for	
select r.id, r.vat_rate, r.vat_code, codiva, perciva, v.description
 from documents.rows r
	inner join custom_tm_logistic.corpofatt c on c.jguid = r.jguid
	inner join accounting.vat_codes v on v.code = r.vat_code 
	where r.vat_description is null ;
	
curdc cursor for	
select h.id, h.currency_id, c.currency_code, c.currency_name from documents.heads h	
   inner join jpublic.currencies c on c.currency_id = h.currency_id
   where h.currency_code is null or h.currency_description is null; 
   
currc cursor for	
select h.id, h.currency_id, c.currency_code, c.currency_name from documents.rows h	
   inner join jpublic.currencies c on c.currency_id = h.currency_id
   where h.currency_code is null or h.currency_description is null; 
   
curda cursor for 
select doc_id, sum(v.taxable_amount) as taxable_amount, sum(v.taxes) as taxes, sum(v.amount) as amount
  from documents.vat_amounts v
     inner join documents.heads h on h.id = doc_id
  where h.taxable_amount is null 
  group by doc_id;
  
curwh cursor for
select d.id,  a.anagraph_id,  a.an_last_name, d.holder_town, a.an_town, a.an_address,
       a.an_state_province,  a.an_postal_code
from 
	documents.heads d	
	inner join anagraph.anagraphs a on a.anagraph_id = d.holder_id
	where
	(
	 (holder_town is null and a.an_town is not null)
	 or
	 (holder_address is null and a.an_address is not null)
	); 
	
curws cursor for	
select id, warehouse_location_id, location_name, v.name
from documents.heads h
  inner join shipping.vessels v on v.vessel_id = warehouse_location_id
where h.type_id = 20 and v.name <> location_name; 

curre cursor for 
select e.jguid, r.type_id, r.id 
from custom_tm_logistic.entrate_righe e
	inner join documents.rows r on r.jguid = e.jguid
	where r.type_id is null or r.type_id = 0; 
	
curhs cursor for 
select id, search_index,  nvl(doc_number, '') || nvl(doc_year::character varying, '') || ' ' || nvl(dest_name, '') 
        || ' ' || nvl(dest_town, '') || ' ' || nvl(dest_postal_code, '') || ' ' || nvl(location_name, '') 
		|| ' ' || nvl(dest_vat_number, '') || ' ' || nvl(holder_name, '') || ' ' || nvl(holder_town, '')
		|| ' ' || nvl(po_number, '') as search_text
from 
  documents.heads r ;
  
curtp cursor for select t.jguid, progressivo
  	from custom_tm_logistic.testatapratiche t inner join  logistic.shipments s
	  on  s.jguid = t.jguid
	 where s.work_number is null;

begin
  i := 0; 
  j := 0; 
  
 open curtp; 
  loop
  	fetch curtp into rec; 
    exit when not found;
	  i := i + 1; 
    		update logistic.shipments s set 
				work_number = rec.progressivo
      		where s.jguid = rec.jguid;
   end loop; 
   
  j := j + i; 
  raise notice 'shipment found progressive number indexes: %', i;
  i := 0;    
  
  
  open curhs; 
  loop
  	fetch curhs into rec; 
    exit when not found;
		if rec.search_index <> rec.search_text then 
    		i := i + 1; 
    		update documents.heads h set 
				search_index = rec.search_text
      		where h.id = rec.id;
	 	end if; 
   end loop; 
   
  j := j + i; 
  raise notice 'record found heads indexes: %', i; 
  i := 0;  
  
  open curre; 
  loop
  	fetch curre into rec; 
    exit when not found;
    i := i + 1; 
    update documents.rows h set 
		type_id = 2
      where h.id = rec.id;
   end loop; 
   
  j := j +i; 
  raise notice 'record found rows type commodities: %', i; 
  i := 0;
  
  open curws; 
  loop
  	fetch curws into rec; 
    exit when not found;
    i := i + 1; 
    update documents.heads h set 
		location_name =  rec.name
      where h.id = rec.id;
   end loop; 
   
  j := j +i; 
  raise notice 'record found heads vessels: %', i; 
  i := 0;
  
  open curwh; 
  loop
  	fetch curwh into rec; 
    exit when not found;
    i := i + 1; 
    update documents.heads h set 
		holder_name =  rec.an_last_name,
		holder_town = rec.an_town,
		holder_address = rec.an_address,
		holder_state_province = rec.an_state_province,
		holder_postal_code = rec.an_postal_code
      where h.id = rec.id;
   end loop; 
   
  j := j +i; 
  raise notice 'record found heads holders: %', i; 
  i := 0;
  
  open curda; 
  loop
  	fetch curda into rec; 
    exit when not found;
    i := i + 1; 
    update documents.heads h set 
		taxable_amount =  rec.taxable_amount,
		amount = rec.amount,
		vat_taxes = rec.taxes
      where h.id = rec.doc_id;
   end loop; 
   
  j := j +i; 
  raise notice 'record found heads amounts: %', i; 
  i := 0;
  
  open currc; 
  loop
  	fetch currc into rec; 
    exit when not found;
    i := i + 1; 
    update documents.rows h set 
		currency_description =  rec.currency_name,
		currency_code = rec.currency_code
      where h.id = rec.id;
   end loop; 
   
  j := j +i; 
  raise notice 'record found rows currency_description: %', i; 
  i := 0;
  
  open curdc; 
  loop
  	fetch curdc into rec; 
    exit when not found;
    i := i + 1; 
    update documents.heads h set 
		currency_description =  rec.currency_name,
		currency_code = rec.currency_code
      where h.id = rec.id;
   end loop; 
   
  j := j +i; 
  raise notice 'record found heds currency_description: %', i; 
  i := 0;
  
  open currv; 
  loop
  	fetch currv into rec; 
    exit when not found;
    i := i + 1; 
    update documents.rows h set vat_description =  rec.description
      where h.id = rec.id;
   end loop; 
   
  j := j +i; 
  raise notice 'record found pro forma vat_description: %', i; 
  i := 0;
  
  open curfv; 
  loop
  	fetch curfv into rec; 
    exit when not found;
    i := i + 1; 
    update documents.rows h set vat_description =  rec.description
      where h.id = rec.id;
   end loop; 
   
  j := j +i; 
  raise notice 'record found invoice vat_description: %', i; 
  i := 0;
  
  
  
  open curai; 
  loop
  	fetch curai into rec; 
    exit when not found;
    i := i + 1; 
    update documents.heads h set dest_country_iso =  rec.an_iso_country_code2
      where h.id = rec.id;
   end loop; 
   
  j := j +i; 
  raise notice 'record found iso_country_code2: %', i; 
  i := 0;
  
  open curpp; 
  loop
  	fetch curpp into rec; 
    exit when not found;
    i := i + 1; 
    update documents.heads h set 
	   payment_terms_des = rec.description,
	   payment_term_code = rec.codpagamento
      where h.id = rec.id;
   end loop;   
  
  j := j +i; 
  raise notice 'record found pro forma payments: %', i; 
  i := 0;
  
  open curfp; 
  loop
  	fetch curfp into rec; 
    exit when not found;
    i := i + 1; 
    update documents.heads h set 
	   payment_terms_des = rec.description,
	   payment_term_code = rec.codpagamento
      where h.id = rec.id;
   end loop;   
  
  j := j +i; 
  raise notice 'record found invoice payments: %', i; 
  i := 0;
  
  open curaa; 
  loop
  	fetch curaa into rec; 
    exit when not found;
    i := i + 1; 
    update documents.heads h set dest_address =  rec.an_address
      where h.id = rec.id;
   end loop; 
   
  raise notice 'record found dest_address: %', i; 
   
  open curap; 
  loop
  	fetch curap into rec; 
    exit when not found;
    i := i + 1; 
    update documents.heads h set dest_postal_code =  rec.an_postal_code
      where h.id = rec.id;
   end loop;  
   
   raise notice 'record found dest_postal_code: %', i; 
   
  open curat; 
  loop
  	fetch curat into rec; 
    exit when not found;
    i := i + 1; 
    update documents.heads h set dest_town =  rec.an_town
      where h.id = rec.id;
   end loop;
   
   raise notice 'record found dest_town: %', i; 
   
  open curas; 
  loop
  	fetch curas into rec; 
    exit when not found;
    i := i + 1; 
    update documents.heads h set dest_state_province =  rec.an_state_province
      where h.id = rec.id;
   end loop;  
   
update documents.heads set inventory = false
where
inventory = true and 
id in 
( select id from documents.heads h 
     inner join  custom_tm_logistic.entrate_righe r
     on h.doc_number = r.num_entrata::character varying and h.doc_year = r.anno
  where colliesistenza = 0 );
  
update documents.heads set inventory = true
where
inventory = false and 
id in 
(select id
 from documents.heads h 
     inner join  custom_tm_logistic.entrate_righe r
     on h.doc_number = r.num_entrata::character varying and h.doc_year = r.anno
 where colliesistenza > 0);   
   
   return j; 
end;
$BODY$;

ALTER FUNCTION custom_tm_logistic.update_documents()
    OWNER TO ergo;
