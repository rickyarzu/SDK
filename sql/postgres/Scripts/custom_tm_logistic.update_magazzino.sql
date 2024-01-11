-- FUNCTION: custom_tm_logistic.update_magazzino()

-- DROP FUNCTION custom_tm_logistic.update_magazzino();

CREATE OR REPLACE FUNCTION custom_tm_logistic.update_magazzino(
	)
    RETURNS void
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
begin

 raise notice 'record found: accounting.vat_codes';

insert into accounting.vat_codes (
code, description, vat_rate, jguid, db_schema_id
)
SELECT codice, descrizion, percentiva,  jguid, 33
  jguid
	FROM custom_tm_logistic.tabiva t where not exists
	 (select 1 from accounting.vat_codes c where c.jguid = t.jguid); 
	 
	 
 raise notice 'record found: workflow.levels';

insert into workflow.levels (
id, 
description, 
jguid, 
db_schema_id
)
SELECT codice::integer, 
       case when descrizione = '' then codice::character varying else descrizione end as description, 
       jguid, 
       33 as db_schema_id
FROM custom_tm_logistic.livelli l
where not exists
(select 1 from workflow.levels w where l.jguid = w.jguid); 

  -- first part *** items generation ***
  
  raise notice 'record found: jpublic.measure_units';
  
INSERT INTO jpublic.measure_units(
	db_schema_id, munit_code, munit_des, jguid)
    
SELECT 0, unitamisura, descrizione, jguid
	FROM custom_tm_logistic.unitamisura u
    where unitamisura not in (
    'USD', 'JPY', 'EUR', 'DKK', 'NOK', 'GBP', 'HK$', 'AU$'
    )
    and not exists
    (select 1 from jpublic.measure_units m where m.jguid = u.jguid );
	
 raise notice 'record found: jpublic.currencies';
    
INSERT INTO jpublic.currencies(
	currency_code, currency_name, jguid)
   
SELECT unitamisura, descrizione, jguid
	FROM custom_tm_logistic.unitamisura u
    where unitamisura in (
     'JPY',  'DKK', 'NOK',  'HK$', 'AU$'
    )
    and not exists
    (select 1 from jpublic.currencies c where c.jguid = u.jguid );
    

    --- *** brands ***
    INSERT INTO items.brands  (
	   db_schema_id,  brand_name, code, insert_date, update_date, jguid
       )
	SELECT 
	   33,  marca, codmarca,  datainserimento,  dataultimamodifica, jguid
	FROM 
	   custom_tm_logistic.marche m 
	where 
	   not exists (select 1 from items.brands b where b.jguid = m.jguid); 

    --- *** packages ***
    INSERT INTO 
	    items.package_types(
	         code, description, jguid, insert_date,   db_schema_id
		)
    SELECT 
	     codimballo, desimballo, jguid, datainserimento, 33
	FROM 
	    custom_tm_logistic.imballi i 
	where 
	   not exists (select 1 from items.package_types p where p.jguid = i.jguid ); 	
	   
-- Ship Owners --

insert into anagraph.anagraphs
(
  db_schema_id, anagraph_id, an_code, an_last_name, an_main_group_id, insert_date, jguid
)
SELECT 33 /*db_schema_id*/, null  /*anagraph_id*/,  codcompagnia  /*an_code*/, compagnia  /*an_last_name*/,  12 /*an_main_group_id = shipowners*/,
        datainserimento /* insert_date */, jguid
	FROM custom_tm_logistic.compagnie c
	where 
	not exists (select 1 from anagraph.anagraphs a where a.jguid = c.jguid);

  -- *** Agenti IATA ***
  
insert into anagraph.anagraphs (
	an_code,  an_last_name,      an_address,  an_town, jguid, db_schema_id)
select 
	codiceiata, agente, indirizzoagente, indirizzo1agente,  jguid, 33
	FROM custom_tm_logistic.agentiiata i
where not exists
  (select 1 from anagraph.anagraphs  a where a.jguid = i.jguid);
  
--- *** Agenzie ***

INSERT INTO  anagraph.anagraphs 
(
	an_code, --1
	an_last_name, --2
	an_address, --3
	an_town, -- 4
	an_vat_numeric, --4
	an_phone, --5
	an_fax, --6
	update_date, --7
	jguid, --8
	db_schema_id, -- 9
	an_main_group_id -- 10
)
select 
	CodAgenzia as an_code, --1
	ragsocialeagenzia as an_last_name, --2
	Indirizzo1 as an_address, Indirizzo2 as an_town, --3
	PIva as an_vat_numeric, --4
	Telefono as an_phone, --5
	Fax as an_fax, --6
	DataUltimaModifica as update_date, --7
	jguid, --8
	33 as db_schema_id, -- 9
	20 as an_main_group_id-- 10
 from custom_tm_logistic.agenzie c
 where not exists (select 1 from anagraph.anagraphs a where a.jguid = c.jguid);

  
update  anagraph.anagraphs 
	set db_schema_id = 33, an_main_group_id = 18 where an_code = '38.4.7044.001.3';

  -- *** Airlines ***
  
insert into anagraph.anagraphs
 (
   db_schema_id, anagraph_id, an_code, an_last_name, 
   an_address, an_town, an_vat_numeric, an_phone,
   an_fax, update_date,  custom_field_1, custom_field_2, 
   custom_field_3, an_email, custom_int_1, 
   an_main_group_id, jguid
 )
 
SELECT 
    33 /*db_schema_id*/, null /*anagraph_id*/, codcompagnia /*an_code*/, ragsocialecompagnia /*an_last_name*/, 
	indirizzo1/*an_address*/,  indirizzo2/*an_town*/, piva/*an_vat_numeric*/,  telefono/*an_phone*/,
    fax/*an_fax*/,  dataultimamodifica /*update_date*/, codiceaerea1 /*custom_field_1*/, codiceaerea2 /* custom_field_2 */, 
	codtariffamasteraereoflr /* custom_field_3 */, emailriferimento /* an_email */, scortaminawb /*custom_int_1*/ , 
	 17 /* an_main_group_id */,  jguid
	FROM custom_tm_logistic.pr_compagnie c
	where flgaerea = '1'
	and not exists (select 1 from anagraph.anagraphs a where a.jguid = c.jguid )
	order by ragsocialecompagnia; 
	
-- 16 Magazzini	
	insert into anagraph.anagraphs
	(
		db_schema_id, anagraph_id, an_code, an_last_name, an_main_group_id, insert_date, jguid, update_date, an_town
	)
	SELECT 
		33 /* db_schema_id */, null  /* anagraph_id */,  codice  /* an_code */, descrizione  /* an_last_name */,  
		16 /* an_main_group_id = warehouses */, datainserimento /*  insert_date  */, jguid, dataultimamodifica, localita
	FROM 
		custom_tm_logistic.magazzini c
	where
		not exists (select 1 from anagraph.anagraphs a where a.jguid = c.jguid);

	insert into anagraph.identities (db_schema_id, an_group_id, anagraph_id) 
	SELECT 
		33, 16, a.anagraph_id
	FROM 
		custom_tm_logistic.magazzini c 
      	inner join  anagraph.anagraphs a on a.jguid = c.jguid
	where 
		not exists (select 1 from anagraph.identities g where g.anagraph_id = a.anagraph_id and g.an_group_id = 16);

	
-- 13 From CliFo. -- vettori
insert 
    into anagraph.identities (db_schema_id, an_group_id, anagraph_id)
SELECT 
    33, 13, a.anagraph_id
FROM 
    custom_tm_logistic.clifo c
inner join 
     anagraph.anagraphs a on a.jguid = c.jguid
where 
    c.tipo = 'V'
    and not exists
     (select 1 from anagraph.identities g where g.anagraph_id = a.anagraph_id and g.an_group_id = 13); 
     
---  ** Vettori e corrieri

INSERT INTO  anagraph.anagraphs -- 13 carriers 
(
	an_last_name, --1
	an_address, --2
	an_postal_code, --3
	an_town, --4
	an_state_province, --5
    an_phone, --6
	an_fax, --7
	an_email, --8
	an_vat_numeric, --9
	jguid, -- 10
    db_schema_id, -- 11
    an_main_group_id -- 12 
) 
 select  
	Corriere an_last_name, --1
	-- FlgENAC char(1) NULL,
	INDIR1 || ', ' || INDIR2 as an_address, --2
	CAP as an_postal_code, --3
	LOCALITA as an_town, --4
	--COMUNE varchar(50) NULL,
	PROVINCIA as an_state_province, --5
	-- NAZIONE varchar(50) NULL,
	case when length(tel) <= 30 then tel else null end  as an_phone, --6
    case when length(fax) <= 30 then FAX else null end as an_fax, --7
	E_MailAddress as an_email, --8
	PAIV as an_vat_numeric, --9
	jguid, -- 10
    33 as db_schema_id, -- 11
    13 as an_main_group_id -- 12   	
 from custom_tm_logistic.corrieri c where localita is not null
 and not exists (select 1 from anagraph.anagraphs a where a.jguid = c.jguid);  
	 
  -- *** Accounting Customers *** --
  
insert into anagraph.anagraphs
 (
   db_schema_id, anagraph_id, an_code, an_last_name, 
   an_address, an_town, an_postal_code, an_state_province,  
   custom_field_1, an_vat_numeric, an_phone, an_fax, an_email, 
   update_date,  custom_field_2, custom_field_3, an_main_group_id,  jguid
 )
SELECT  
    33 /*db_schema_id*/, null /*anagraph_id*/, codice /*an_code*/, ragionesoc /*an_last_name*/, 
	
	indir1 || ' ' || indir2 /*an_address*/,  localita /*an_town*/,  cap /*an_postal_code*/, provincia  /*an_state_province*/,
	
	nazione /*custom_field_1*/, paiv/*an_vat_numeric*/,  
	case when length(tel) > 30 then '' else tel end as an_phone/*an_phone*/, 
	case when length(fax) > 30 then '' else fax end as an_fax /*an_fax*/,  
	nvl(e_mailaddress, emailinviodocumenti)  /* an_email */, 
	
	dataultimamodifica /*update_date*/,  utenteultimamodifica /* custom_field_2 */, utente /* custom_field_3 */, 14 /* an_main_group_id */,  jguid
	
	FROM custom_tm_logistic.pr_clifo c
	where not exists (select 1 from anagraph.anagraphs a where a.jguid = c.jguid) 
	order by codice; 
	
 
  -- *** 12 ShipOwners ***	
	
insert into anagraph.anagraphs
 (
   db_schema_id, anagraph_id, an_code, an_last_name, 
   an_address, an_town, an_vat_numeric, an_phone,
   an_fax, update_date,  custom_field_1, custom_field_2, 
   custom_field_3, an_email, custom_int_1, 
   an_main_group_id, jguid
 )

  
SELECT  
    33 /*db_schema_id*/, null /*anagraph_id*/, codcompagnia /*an_code*/, ragsocialecompagnia /*an_last_name*/, 
	indirizzo1/*an_address*/,  indirizzo2/*an_town*/, piva/*an_vat_numeric*/,  telefono/*an_phone*/,
    fax/*an_fax*/,  dataultimamodifica /*update_date*/, codiceaerea1 /*custom_field_1*/, codiceaerea2 /* custom_field_2 */, 
	codtariffamasteraereoflr /* custom_field_3 */, emailriferimento /* an_email */, scortaminawb /*custom_int_1*/ , 
	 12 /* an_main_group_id */,  jguid
	FROM custom_tm_logistic.pr_compagnie c
	where (flgaerea = '0' or flgaerea is null)  and codtariffamasteraereoflr is  null
	and not exists (select 1 from anagraph.anagraphs a where a.jguid = c.jguid )
	order by ragsocialecompagnia; 
	
	insert into anagraph.identities 
		(db_schema_id, an_group_id, anagraph_id) 
	SELECT 
		33, 12, a.anagraph_id
	FROM custom_tm_logistic.pr_compagnie c 
      inner join  anagraph.anagraphs a on a.jguid = c.jguid
	where  (flgaerea = '0' or flgaerea is null)  and codtariffamasteraereoflr is  null
	and not exists 
				(select 1 from anagraph.identities g where g.anagraph_id = a.anagraph_id and g.an_group_id = 12);

  -- *** 16 Warehouses Anagraphs ***
  
	insert into anagraph.anagraphs
	(
		db_schema_id, anagraph_id, an_code, an_last_name, an_main_group_id, insert_date, jguid, update_date, an_town
	)
	SELECT 
		33 /* db_schema_id */, null  /* anagraph_id */,  codice  /* an_code */, descrizione  /* an_last_name */,  
		16 /* an_main_group_id = warehouses */, datainserimento /*  insert_date  */, jguid, dataultimamodifica, localita
	FROM 
		custom_tm_logistic.magazzini c
	where
		not exists (select 1 from anagraph.anagraphs a where a.jguid = c.jguid);

  -- *** 13 Vettori = Carriers ***
  
	insert into anagraph.identities 
		(db_schema_id, an_group_id, anagraph_id) 
	SELECT 
		33, 13, a.anagraph_id
	FROM custom_tm_logistic.clifo c 
      inner join  anagraph.anagraphs a on a.jguid = c.jguid
	where c.tipo = 'V'
		and not exists 
				(select 1 from anagraph.identities g where g.anagraph_id = a.anagraph_id and g.an_group_id = 13);

	insert into anagraph.anagraphs
  		(db_schema_id, anagraph_id, an_code, an_last_name, an_main_group_id, insert_date, jguid)
  	SELECT 
  		33 /*db_schema_id*/, null  /*anagraph_id*/,  codcompagnia  /*an_code*/, compagnia  /*an_last_name*/,  
    	12 /*an_main_group_id = shipowners*/,    datainserimento /* insert_date */, jguid
	FROM 
		custom_tm_logistic.compagnie c
	where 
		not exists (select 1 from anagraph.anagraphs a where a.jguid = c.jguid); 
		
	-- 12 ShipOwners
	insert into anagraph.anagraphs
	(
		db_schema_id, anagraph_id, an_code, an_last_name, an_main_group_id, insert_date, jguid
	)
	SELECT 33 /* db_schema_id */, null  /* anagraph_id */,  codcompagnia  /* an_code */, 
	    compagnia  /* an_last_name */,  12 /* an_main_group_id = shipowners */,
		datainserimento /*  insert_date  */, jguid
	FROM 
		custom_tm_logistic.compagnie c
	where
		not exists (select 1 from anagraph.anagraphs a where a.jguid = c.jguid); 
		
UPDATE ANAGRAPH.ANAGRAPHS SET
AN_POSTAL_CODE = TRIM(UPPER(AN_POSTAL_CODE)) WHERE AN_POSTAL_CODE <> TRIM(UPPER(AN_POSTAL_CODE));

UPDATE ANAGRAPH.ANAGRAPHS SET
AN_TOWN = TRIM(UPPER(AN_TOWN)) WHERE AN_TOWN <> TRIM(UPPER(AN_TOWN));

--- *** Container Types ****

	INSERT INTO logistic.container_types(
		code, description, cntr_size, franchise_days, rate, thcimp, thcval, tarifpri, 
		prirate_days, max_weight, max_volume, cntr_length, cntr_width,
		cntr_height, internal_length, to_door_length, internal_width, to_door_width, 
		internal_heigth, to_door_heigth, insert_date,update_date, jguid)
	SELECT 
		cod_cntr, des_cntr, siz_cntr, gg_franchigia, tariffa, thcimp, thcval, tarifpri, 
		gg_prirata, max_weight, max_volume, lunghezza, larghezza, altezza,
		lunghezza_interna, lunghezza_allaporta, larghezza_interna, larghezza_allaporta, 
		altezza_interna, altezza_allaporta, datainserimento, dataultimamodifica, jguid
	FROM 
		custom_tm_logistic.cntr_type c 
	where 
		not exists (select 1 from logistic.container_types l where l.jguid = c.jguid); 

--- *** Inserimento Navi *** ---

INSERT INTO shipping.vessels
	(name, code, custom_char_3, 
	update_date, custom_char_1,custom_char_2, 
	--anagraph_id, 
	 jguid)							 
	-- net_tonnage, gross_tonnage, deadweight, insert_date, update_date, ins_id, upd_id, user_insert_id, user_update_id, local, passenger_limit, db_schema_id, jguid, deleted, notes)
SELECT  
	desnave /*name*/,  codnave /*code*/, flgdefinitiva /*custom_char_3*/, 
	dataultimamodifica /* update_date*/, utente /* custom_char_1 */, codclientecontabile /* custom_char_2 */, 
	--anagraph.get_id_by_code(codclientecontabile,  33) as anagraph_id,  
	jguid
    --viaggionave, dataviaggio, , pol, pod, codcompagnia, codlinea, progressivo, lastdateassigned, teus, utenteultimamodifica, , , codgruppo, jguid
FROM 
    custom_tm_logistic.navi n
    where not exists (select 1 from shipping.vessels a where a.jguid = n.jguid )
	and not exists  (select 1 from shipping.vessels a where a.code = n.codnave ); 
	
insert into anagraph.anagraphs
(
db_schema_id, 
jguid, 
an_last_name,
an_code,
update_date,	
an_main_group_id	
)
select 
33 as db_schema_id, 
jguid, 
name, 
code, 
update_date,
9 as an_group_id
from 
shipping.vessels v
where not exists
(select 1 from anagraph.anagraphs b where  b.jguid = v.jguid); 

	insert into anagraph.identities 
		(db_schema_id, an_group_id, anagraph_id) 
	SELECT 
		33, 9, a.anagraph_id
	FROM shipping.vessels c 
      inner join  anagraph.anagraphs a on a.jguid = c.jguid
	where 
		not exists 
				(select 1 from anagraph.identities g where g.anagraph_id = a.anagraph_id and g.an_group_id = 9);

-- inserimento items definitions

insert into items.definitions (db_schema_id,code,   model, insert_date, update_date, family_id, jguid, type_id, munit_id, description)
SELECT  33, codice, substring(merce, -5, 100), datainserimento,  dataultimamodifica, 130,  jguid, 2, 1, merce 
	FROM custom_tm_logistic.merci m 
	where 
	not exists (select 1 from items.definitions d where d.jguid = m.jguid); 
 

--- inserimento 'teste' delle Entrate

insert into documents.heads 
( 
  db_schema_id, doc_year,  doc_number, 
  doc_state, insert_date, 
  doc_date,  
  type_id, 
  in_out, 
  warehouse_location_id, 
  anagraph_id,
  holder_id, custom_field_2,
  carrier_id, custom_field_3,
  doc_ref_code, 
  notes1,notes2,notes3,purchase_order_number,
  update_date, 
  registry_code, 
  carrier_tracking_number,
  carrier_expenses_currency_id,
  custom_int_1,
  carrier_expenses,
  jguid
)

SELECT 
	33 /*db_schema_id*/,  anno /*doc_year*/, num_entrata /*doc_number*/, 
	flgdefinitiva::smallint /*doc_state*/,  datainserimento /*insert_date*/, 
	data_entrata /*doc_date*/, 
	20 as type_id, -- 
	1 as in_out, 
	shipping.vessels_get_id_by_code(cod_nave, 33) as vessel  , -- warehouse_location_id, 
    anagraph.get_id_by_code(codmagazzino, 16, 33) as office_id, -- anagraph_id,
	anagraph.get_id_by_code(codfornitore, 10, 33) as supplier_id, -- holder_id,  
	codfornitore, 
	anagraph.get_id_by_code(codvettore, 13, 33) as carrier_id, -- carrier_id,
	codvettore, 
	bldeposito /*doc_ref_code*/,  --tipomerce,  
	note, note2, note3, potesta,   
	dataultimamodifica  /*update_date*/, --numfattura, datafattura, 
	tipoentrata  /*registry_code*/, 
	-- annotp, progressivotp, ppgtp, codattivitatp, codfilialetp, 
	ntrackingvettore, /*  carrier_tracking_number,*/
	CASE WHEN valutafattura = 'EUR' then 1 WHEN valutafattura = 'USD' then 2 ELSE NULL END as currency_id, /*carrier_expenses_currency_id*/
	flgportoassegnato::integer, /*custom_int_1*/
	importovettore, /*carrier_expenses*/
	jguid
	FROM custom_tm_logistic.entrate e 
	where 
	not exists (select 1 from documents.heads  b where b.jguid = e.jguid)
	order by anno , num_entrata; 

------ fine della procedura --------------------------

-- holder (destination warehouse)
update documents.heads
set
dest_name = anagraph.get_name_by_id(anagraph_id)
where db_schema_id = 33 and dest_name is null;

update documents.heads
set
holder_name = anagraph.get_name_by_id(holder_id)
where db_schema_id = 33 and holder_name is null;

update documents.heads
set
carrier_name = anagraph.get_name_by_id(carrier_id)
where db_schema_id = 33 and carrier_name is null;

update documents.heads
set
location_name = anagraph.get_name_by_id(warehouse_location_id)
where db_schema_id = 33 and location_name is null;

------ inserimento righe delle entrate ---------------

insert into documents.rows   (
    doc_id, 
	item_id, 
    position,  
    doc_head_jguid, 
    jguid, 
    code, 
    model, 
    item_jguid, 
    delivered_qty,
    pallets,
    weight_on_delivery,
    weight_on_order, 
    weight_on_shipping,
    volume, 
    inventory_qty, 
    inventory_weight, 
    container_status, 
    customs_doc_type_id, 
    customs_doc_ref, 
   description, 
   price, 
  rights,
  purchase_order,
  insert_date , 
  custom_field_1 , 
  custom_field_2, 
  update_date,
  quantity, 
  size_weight, 
  size_length, 
  Size_height, 
  doc_origin_number, 
  doc_origin_date, 
  supplier_id,
  invoice_amount, 
  invoice_number,  
  invoice_date 
     )

SELECT  
  h.id as doc_id , 
  i.id,
  r.riga as position, --  d.position,  
  e.jguid as doc_head_jguid, 
  r.jguid as jguid, 
  codmerce as code, 
  m.merce as model, 
  m.jguid as item_jguid ,
  collientrate as delivered_qty , -- collientrateorig, packages
  plts as pallets, 
  pesoentrate as weight_on_delivery,
  pesoentrateorig as weight_on_order, 
  pesoriscontrato as weight_on_shipping,
  volume as volume, 
  colliesistenza as inventory_qty, 
  pesoesistenza as inventory_weight, 
  containerstatus as container_status ,  
  documents.types_get_id_by_code(tipodocumento, 33) as  customs_doc_type_id, 
  numerodocumentodog as customs_doc_ref, 
  r.note as description, 
  r.valore as price, 
  diritti as rights,
  po as purchase_order,
  r.datainserimento asinsert_date , 
  r.codutente as custom_field_1 , 
  r.utenteultimamodifica as custom_field_2, 
  r.dataultimamodifica as update_date,
  pezzi as quantity, 
  misuraw as size_weight, 
  misural as size_length, 
  misurah as size_height, 
  numddt as doc_origin_number, 
  dataddt as doc_origin_date, 
  anagraph.get_id_by_code(codfornitorerigo, 10, 33) as supplier_id,
  importofatturaf as invoice_amount, 
  numfatturaf as ref_invoice_number,  
  datafatturaf as ref_invoice_date
  
from 
custom_tm_logistic.entrate_righe r, 
custom_tm_logistic.entrate e, documents.heads h , 
custom_tm_logistic.merci m , items.definitions i
where
m.codice = r.codmerce 
  and h.jguid = e.jguid -- join entrate head
  and i.jguid = m.jguid -- join items merci
  and e.anno = r.anno and e.num_entrata = r.num_entrata and r.pg = e.pg 
and not exists
(select 1 from documents.rows dr where dr.jguid = r.jguid);

/* View Cli Fo */ 

INSERT INTO  anagraph.anagraphs 
(
an_code,
an_last_name,
an_address,
an_postal_code,
an_town, 
an_state_province, 
an_iso_country_code,
an_phone,
an_fax,
an_email,
an_vat_numeric,
custom_field_1,
insert_date,
custom_field_2,
update_date,
jguid,
an_main_group_id,
db_schema_id
)

select 
 codice, -- an_code
 ragionesoc, --an_last_name
 ind_anag, -- an_address
 cap_anag, -- an_postal_code
 loc_anag, --an_town
 prov_anag, -- an_state_province
 cod_naz, -- an_iso_country_code
 tel_anag1, -- an_phone
 fax_anag, -- an_fax
 email, --an_email
 p_iva, -- an_vat_numeric
 codutente, --custom_field_1
 datainserimento, -- insert_date
 utenteultimamodifica, -- custom_field_2
 dataultimamodifica, -- update_date
 jguid , --jguid,
 CASE WHEN TIPO = 'C' then 14 else 15 end /* (tipo, 'C', 14, 15) */ as an_main_group_id,
 33 -- db_schema_id
 from custom_tm_logistic.tblview_clifo c
 where not exists (select 1 from anagraph.anagraphs a where a.jguid = c.jguid);

------ fine della procedura --------------------------

--- generazione workflows dalle pratiche -------------

--- inserimento pickup orders dalle pratiche --------------------------------------------

INSERT INTO logistic.locations 
(db_schema_id, 
 code, 
 "name", 
 state_province, 
 country, 
 area_code, 
 flgairport, 
 iso_code,
 jguid
 ) 
 select 
  33, -- db_schema_id, 
  codporto, --code, 
  desporto, --"name", 
  state, -- state_province, 
  country,
  codzona, --area_code, 
  CASE WHEN flgaerea='1' THEN true ELSE false END, --flgaerea, 
  codiso, --iso_code
  jguid
  from 
  custom_tm_logistic.porti p where not exists
  (select 1 from logistic.locations l where l.jguid = p.jguid);
  
  update logistic.locations set 
       code = upper(code), 
       name = upper(name), 
       state_province = upper(state_province);
       
  UPDATE logistic.locations l 
  set 
  	iata_code = upper(substring(code, 1, 3));
         
--- generazione workflows dalle pratiche -------------

INSERT INTO workflow.workflows 
(jguid, workdate, code, office_id, customer_id, "year", type_id) 
select 
jguid, -- jguid
dataaperturapratica, -- workdate
case when progressivopraticagroupage = 0 then commessa else commessa || '-' || progressivopraticagroupage end as code, -- code 
-- codfiliale || codattivita ||  substring(anno, 3, 2) || lpad(progressivo::character varying, 6, '0'), --code
149503 as office_id, 
anagraph.get_id_by_code(codclientecontabile, 14::integer, 33::integer) as customer_id, --customer_id
anno::smallint, --"year"
codattivita::smallint -- type_id
from 
custom_tm_logistic.testatapratiche p
where not exists
(select 1 from workflow.workflows w where w.jguid = p.jguid)
; 
/*
update custom_tm_logistic.testatapratiche 
set commessa = commessa || '-' || progressivopraticagroupage
where commessa in (
select commessa from custom_tm_logistic.testatapratiche 
group by commessa
having count(1) > 1
    )
    and progressivopraticagroupage > 0;
	

update workflow.workflows w
set 
code = (
    	select commessa from 
           custom_tm_logistic.testatapratiche p
        where  w.jguid = p.jguid
)
where exists
(select 1 from custom_tm_logistic.testatapratiche t where w.jguid = t.jguid and t.commessa <> w.code);
*/

/* Pickup Orders */

INSERT INTO 
logistic.shipments
(
--id, 
jguid, 
creation_date, 
pickup_date, 
delivery_date, 
office_id, 
workflow_uid, 
agent_id, shipper_id, shipper_address, pickup_address, 
"year", 
groupage_number, 
export_type_id, 
fullcontainer, 
vessel_id, 
work_code, 
travel_identification_code, 
carrier_id, 
carrier_code, 
workflow_id, 
pol_id, 
pol_code, 
pol_name, 
pod_id, 
pod_name, 
pod_code, 
customer_id, 
notes, 
warehouse_id, 
work_date, 
order_state, 
airport_id, 
airport_code, 
awb_number, 
internal_notes, 
internal_notes2, 
warehouse_notes, 
route_type, 
internet_visible, 
flag_air, 
flag_ground, 
departure_date, 
arrival_date, 
po_state, 
po_level, 
final_date, 
flg_house, 
flg_master, 
delivered, 
flg_billable, 
customs_declearer, 
customs_date, 
insert_date, 
update_date
) 
select 
t.jguid, --jguid, 
dataaperturapratica, --creation_date, 
datanave, -- pickup_date, 
dataconsegna, -- delivery_date, 
149503 as office_id,  -- office_id, 
t.jguid, -- workflow_uid, 
null, null, null, null, -- agent_id, shipper_id,  shipper_address, pickup_address, 
anno::smallint, --year
progressivopraticagroupage, --groupage_number
typeexport::smallint, -- export_type_id (0,1)
tipocompleto, -- fullcontainer, FCL/LCL (0,1)
shipping.vessels_get_id_by_code(codnavegruppo::character varying, 33),  --vessel_id, 
codfiliale || codattivita ||substring(anno, 3, 2) || lpad(progressivo::character varying, 6, '0'), --work_code,
viaggionave, -- travel_identification_code, 
anagraph.get_id_by_code(codcompagnia, 17::integer, 33::integer)  codcompagnia,  --carrier_code,
codcompagnia, --carrier_id,
w.id, --workflow_id
/* POL*/
logistic.get_location_id_by_code(pol, 33), --pol_id
pol, --pol_code, 
logistic.get_location_name_by_code(pol, 33), --pol_name
/* POD */
logistic.get_location_id_by_code(pol, 33), --pod_id
pod, --pod_code, 
logistic.get_location_name_by_code(pol, 33), --pod_name
anagraph.get_id_by_code(codclientecontabile, 14, 33), --customer_id,
note, -- notes
null, -- warehouse_id, 
dataaperturapratica, -- work_date, 
flgpraticadefinitiva::smallint, -- order_state,
logistic.get_location_id_by_code(pol, 33), --airport_id
pol, --airport_code, 
numawb, -- awb_number,
noteinterne, -- internal_notes, 
noteinterne2, -- internal_notes2
notemagazzino, -- warehouse_notes, 
null, -- route type
case when flgvisibileinternet::smallint = 1 then true else false end, -- internet_visible
case when flgaerea = 'SI' then true else false end, -- flag_air
case when flgterra::smallint = 1 then true else false end, -- flag_ground
datanave, -- departure_date, 
datanavearrivo, -- arrival_date, 
flgpraticadefinitiva::smallint, -- po_state, 
levelcode::smallint, -- po_level, 
datanavedefinitiva, -- final_date, 
case when flggeneratahouse::smallint = 1 then true else false end, -- flg_house, 
case when flggeneratamaster::smallint = 1 then true else false end, -- flg_master, 
case when flgdelivery::smallint = 1 then true else false end, -- delivered, 
case when flgfatturabile::smallint = 1 then true else false end, -- flg_billable, 
coddichiarantedoganale, -- customs_declearer, 
datasdoganamento, -- customs_date
dataaperturapraticadautente, -- insert_date
dataultimamodifica --update_date
from 
workflow.workflows w , custom_tm_logistic.testatapratiche t
where 
t.jguid = w.jguid
and not exists
(select 1 from logistic.shipments o where o.jguid = t.jguid)
;

/* tabelle di supporto AWB */

INSERT INTO logistic.awb_codes(
	code, type, amount, description, house, jguid)
SELECT sigla, tipo, importo, descrizione, true, jguid
	FROM custom_tm_logistic.aereavociotherhouse  a where not exists 
    (select 1 from logistic.awb_codes c where c.jguid = a.jguid);

INSERT INTO logistic.awb_codes(
	code, type, amount, description, house, jguid)
SELECT sigla, tipo, importo, descrizione, false, jguid
	FROM custom_tm_logistic.aereavociother  a where not exists 
    (select 1 from custom_tm_logistic.aereavociotherhouse o where o.sigla = a.sigla)
    and not exists
    (select 1 from logistic.awb_codes c where c.jguid = a.jguid);
    
    

/* Inserimento LTA HOUSE */

INSERT INTO logistic.awb(
	year, 
	office_id, 
	code, 
    year_number, 
	db_schema_id, 
	field1a, 
	field1b, 
	field1c, 
	cin, 
	field2, 
	field21, 
	field22,
	field23, 
	field3, 
	field31, 
	field32, 
	field33, 
	field4a, 
	field4b, 
	field4c, 
	field4c2, 
	field4c3, 
	field5, 
	field6, 
	field7, 
	field8, 
	field8a, 
	field8b, 
	field8c, 
	field8d, 
	field8c1, 
	field8d1, 
	field8e, 
	field8f, 
	field8f1, 
	field9, 
	field10, 
	field11, 
	field12, 
	field13, 
	field14, 
	field15, 
	field16, 
	field17, 
	field28a, 
	field28b, 
	field29a, 
	field29b, 
	field30a, 
	field30b, 
	field31a, 
	field31b, 
	field32a, 
	field32b, 
	field33a, 
	field33b, 
	field34, 
	field35, 
	field36, 
	field37, 
	field38, 
	hi1, 
	hi2, 
	hi3, 
	codother1, 
	codother2, 
	codother3, 
	codother4, 
	codother5, 
	codother6, 
	codother7, 
	codother8, 
	codother9, 
	amountother9, 
	amountother8, 
	amountother7, 
	amountother6, 
	amountother5, 
	amountother4, 
	amountother3, 
	amountother2, 
	amountother1, 
	fieldhead, 
	partialmaster, 
	partialmasteryear, 
	currency_id, 
	customs_doc_type, 
    awb_type_id,
    awb_type, 
    jguid,
	order_id)

select
h.anno, -- year
149503, -- office_id
h.codfiliale, -- code
progressivolta, -- year_number
33, -- db_schema_id
campo1a, -- field1a
campo1b, -- field1b
campo1c, -- field1c
 cin, -- cin,
campo2,
campo21,
campo22, 
campo23, 
campo3, 
campo31, 
campo32, 
campo33,
campo4a, 
campo4b, 
campo4c, 
campo4c2, 
campo4c3,
campo5, 
campo6, 
campo7,
campo8, 
campo8a, 
campo8b, 
campo8c, 
campo8d, 
campo8c1, 
campo8d1, 
campo8e, 
campo8f, 
campo8f1,
campo9, 
campo10, 
campo11, 
campo12, 
campo13, 
campo14, 
campo15, 
campo16, 
campo17,
campo28a, 
campo28b, 
campo29a, 
campo29b, 
campo30a, 
campo30b, 
campo31a, 
campo31b, 
campo32a, 
campo32b, 
campo33a, 
campo33b, 
campo34, 
campo35, 
campo36, 
campo37, 
campo38,
hi1, 
hi2, 
hi3, 
codother1, 
codother2, 
codother3, 
codother4, 
codother5, 
codother6, 
codother7, 
codother8, 
codother9,
importoother9,
importoother8, 
importoother7, 
importoother6, 
importoother5, 
importoother4, 
importoother3, 
importoother2, 
importoother1,
campohead, 
masterparziale, 
annomasterparziale, 
CASE when valuta='USD' THEN 1 ELSE 2 END, --currency_id
tipo, -- customs_doc_type
1, --awb_type_id
'H' as awb_type, -- awb_type = house 
h.jguid,  -- jguid
p.id -- order_id 
from 
custom_tm_logistic.aerealtahouse h,  custom_tm_logistic.testatapratiche t, logistic.shipments p
where
p.jguid = t.jguid and
t.anno = h.anno and t.codfiliale = h.codfiliale 
and t.progressivo = h.progressivo and t.progressivopraticagroupage = h.progressivopraticagroupage
and t.codattivita = h.codattivita
and not exists
(select 1 from logistic.awb a where a.jguid = h.jguid );

/* Inserimento LTA MASTER */

INSERT INTO logistic.awb(
	year, 
	office_id, 
	code, 
        year_number, 
	db_schema_id, 
	field1a, 
	field1b, 
	field1c, 
	cin, 
	field2, 
	field21, 
	field22,
	field23, 
	field3, 
	field31, 
	field32, 
	field33, 
	field4a, 
	field4b, 
	field4c, 
	field4c2, 
	field4c3, 
	field5, 
	field6, 
	field7, 
	field8, 
	field8a, 
	field8b, 
	field8c, 
	field8d, 
	field8c1, 
	field8d1, 
	field8e, 
	field8f, 
	field8f1, 
	field9, 
	field10, 
	field11, 
	field12, 
	field13, 
	field14, 
	field15, 
	field16, 
	field17, 
	field28a, 
	field28b, 
	field29a, 
	field29b, 
	field30a, 
	field30b, 
	field31a, 
	field31b, 
	field32a, 
	field32b, 
	field33a, 
	field33b, 
	field34, 
	field35, 
	field36, 
	field37, 
	field38, 
	hi1, 
	hi2, 
	hi3, 
	codother1, 
	codother2, 
	codother3, 
	codother4, 
	codother5, 
	codother6, 
	codother7, 
	codother8, 
	codother9, 
	amountother9, 
	amountother8, 
	amountother7, 
	amountother6, 
	amountother5, 
	amountother4, 
	amountother3, 
	amountother2, 
	amountother1, 
       /* */
      	netamount, 
	mawbcosts, 
	mawbothcosts, 
	taxableweight, 
	masterdate, 
	estimateflight, 
	effectiveflight, 
	etdestimate, 
	etdeffective, 
	etaestimate, 
	etaeffective, 
	palletcost, 
	transportcost, 
	containerseals, 
	masternotes, 
	awb_type, 
        /* */
	fieldhead, 
	partialmaster, 
	customs_doc_type, 
         awb_type_id,
        jguid,
	order_id)
select
m.anno, -- year
149503, -- office_id
o.work_code, -- code
m.progressivo, -- year_number
33 as db_schema_id, -- db_schema_id
campo1a, -- field1a
campo1b, -- field1b
campo1c, -- field1c
m.cin::smallint, -- cin,
-- campo19a, -- field19a, 
-- campo20a, -- field20a
campo2,	--field2, 
campo21,	--field21, 
campo22,	--field22,
campo23,	--field23, 
campo3,	--field3, 
campo31, 	--field31, 
campo32, 	--field32, 
campo33,	--field33, 
campo4a, --field4a, 
campo4b, --field4b, 
campo4c, --field4c, 
null, 	--field4c2, 
campo4c3, 	--field4c3, 
campo5, -- field5, 
campo6, --field6, 
campo7, --field7, 
campo8, --field8, 
campo8a, --field8a, 
campo8b,--field8b, 
campo8c,--field8c, 
campo8d,--field8d, 
campo8c1, --field8c1, 
campo8d1, --field8d1, 
campo8e, --field8e, 
campo8f, --field8f, 
campo8f1, --field8f1, 
campo9,  --field9, 
campo10, --field10, 
campo11, --field11, 
campo12, --field12, 
campo13, --field13, 
campo14,--	field14, 
campo15,--	field15, 
campo16,--	field16, 
campo17,--	field17, 
campo28a, --field28a, 
campo28b, --field28b, 
campo29a, --field29a, 
campo29b, --field29b, 
campo30a, --field30a, 
campo30b,--	field30b, 
campo31a,--	field31a,  
campo31b,--	field31b, 
campo32a, --field32a, 
campo32b,--field32b, 
campo33a, -- field33a, 
campo33b, --field33b, 
campo34, --field34, 
campo35, --field35, 
campo36, --field36, 
campo37, --field37, 
campo38, --field38, 
m.hi1,--	hi1, 
m.hi2,--	hi2, 
m.hi3,--	hi3,
m.codother1,--	codother1, 
m.codother2,--	codother2, 
m.codother3,--	codother3, 
m.codother4,--	codother4, 
m.codother5,--	codother5, 
m.codother6,--	codother6, 
m.codother7,--	codother7, 
m.codother8,--	codother8, 
m.codother9,--	codother9, 
importoother8, --amountother9, 
importoother9, --amountother8, 
importoother7, --amountother7, 
importoother6, --amountother6, 
importoother5, --amountother5, 
importoother4, --amountother4, 
importoother3, --amountother3, 
importoother2, --amountother2, 
importoother1, --amountother1, 
/* */
ratanetta,     --netamount, 
m.mawbcosts,	--mawbcosts, 
m.mawbothcosts,	--mawbothcosts, 
pesotassabile, 	--taxableweight, 
datamaster,	--masterdate, 
voloprevisto,	--estimateflight, 
voloeffettivo,	--effectiveflight, 
etdprevisto,	--etdestimate, 
etdeffettivo,	--etdeffective, 
etaprevisto, 	--etaestimate, 
etaeffettivo, 	--etaeffective, 
costopallet,	--palletcost, 
costotrasporto,	--transportcost, 
sigillo,	--containerseals, 
notemaster,	--masternotes, 
'M' as awb_type,	--awb_type = master awb  
/* */
campohead,--	fieldhead, 
ratanetta,  --	partialmaster, 
tipo,	-- customs_doc_type, 
2 as awb_type_id,    --     awb_type_id,
m.jguid,    --jguid,
o.id    -- order_id
from 
--logistic.shippings l, 
custom_tm_logistic.aerealtamaster m,
custom_tm_logistic.testatapratiche p, 
logistic.shipments o
where
o.jguid = p.jguid
and
p.anno =  m.anno
and
p.progressivo  = m.progressivo
and not exists
(select 1 from logistic.awb w where w.jguid = m.jguid);

update  logistic.awb
set  field2_shipper_id = anagraph.get_id_by_name(
	field2,
	field21,
	null,
	14,
	33)
where field2_shipper_id is null; 

update logistic.awb set field1b_location_name = logistic.get_location_name_by_code(field1b, 33)  
	where field1b_location_name is null; 
update logistic.awb set field8_location_name = logistic.get_location_name_by_code(field8, 33)  
	where field8_location_name is null; 
update logistic.awb set field8a_location_name = logistic.get_location_name_by_code(field8a, 33)  
	where field8a_location_name is null; 
update logistic.awb set field8e_location_name = logistic.get_location_name_by_code(field8e, 33)  
	where field8e_location_name is null; 
update logistic.awb set field8c_location_name = logistic.get_location_name_by_code(field8c, 33)  
	where field8c_location_name is null and field8c is not null;
update logistic.awb set field8c1_location_name = logistic.get_location_name_by_code(field8c1, 33)  
	where field8c1_location_name is null and field8c1 is not null;
	
update logistic.awb set handling_information = 
           case when hi1 is null then '' else  hi1 end ||
           case when hi2 is null then '' else   E'\n' || hi2 end ||
		   case when hi3 is null then '' else   E'\n' || hi3 end
		   where handling_information is null; 

/* Righe House */

INSERT INTO logistic.awb_rows(
       awb_id, row_pos, field19a, field20a, field21, field22, field23, field24, field25, field26a, field27, jguid
    )
SELECT  --r.progressivolta, r.anno, r.codfiliale, 
        a.id as awb_id,         -- awb_id,
        r.prriga, --  row_pos,
        r.campo19a, --  field19a,
        r.campo20a, -- field20a,
        r.campo21, -- field21,
        r.campo22, -- field22, 
        r.campo23, -- field23, 
        r.campo24, -- field24, 
        r.campo25, -- field25,
        r.campo26a, -- field26a,
        r.campo27, -- field27,
        r.jguid -- , jguid
	FROM custom_tm_logistic.aerearigheltahouse r,
         custom_tm_logistic.aerealtahouse h, 
         logistic.awb a
         where 
         a.jguid = h.jguid
         and
         h.anno = r.anno
         and 
         h.codfiliale = r.codfiliale
         and
         h.progressivolta = r.progressivolta
         and not exists
         (select 1 from logistic.awb_rows w where w.jguid = r.jguid)
     order by r.anno, r.progressivolta, r.prriga;
     
/* Righe Master */

INSERT INTO logistic.awb_rows(
       awb_id, row_pos, field19a, field20a, field21, field22, field23, field24, field25, field26a, field27, jguid
    )
SELECT  --r.progressivolta, r.anno, r.codfiliale, 
        a.id as awb_id,         -- awb_id,
        r.prriga,  -- row_pos,
        r.campo19a, --  field19a,
        r.campo20a, -- field20a,
        r.campo21, -- field21,
        r.campo22, -- field22, 
        r.campo23, -- field23, 
        r.campo24, -- field24, 
        r.campo25, -- field25,
        r.campo26a, -- field26a,
        r.campo27, -- field27,
        r.jguid -- , jguid
	FROM custom_tm_logistic.aerearigheltamaster r,
         custom_tm_logistic.aerealtamaster h, 
         logistic.awb a
         where 
         a.jguid = h.jguid
         and
         h.campo1c = r.campo1c
         and not exists
         (select 1 from logistic.awb_rows w where w.jguid = r.jguid)
     order by a.id, r.prriga;

UPDATE anagraph.anagraphs a 
SET
  an_country_id = jpublic.get_country_id_by_code(an_state_province), 
  an_iso_country_code2 = an_state_province,
  an_state_province = null
where exists
(select 1 from  jpublic.countries C
where 
an_state_province =  iso_country_code2
)
AND AN_STATE_PROVINCE NOT IN ('GE') AND AN_TOWN NOT IN ('FORLI')
and
not exists (select 1 from jpublic.towns_regions_countries where country_id = 1 and town_name = an_town )
AND NOT EXISTS
(select 1 from jpublic.towns_regions_countries where country_id = 1 AND AN_STATE_PROVINCE = REGION_NAME AND
 AN_POSTAL_CODE = TOWN_POSTAL_CODE )
AND DB_SCHEMA_ID = 33;

/* ----------- documents ----------------------------------------------------- */

/* costs  */

raise notice 'items.definition'; 

INSERT INTO items.definitions(
	db_schema_id, code, model, type_id, munit_id,family_id)
select * from 
(
SELECT  
  33 as db_schema_id, 
  codvoce as code,
  min(desvoce) as model, 
  1 as type_id, 
  1 as munit_id, 
  131 as family_id
FROM custom_tm_logistic.costipredefiniti c
group by codvoce
) a
where not exists
(select 1 from items.definitions i where i.code = a.code and i.family_id = 131);

/* incomes */

INSERT INTO items.definitions(
	db_schema_id, code, model, type_id, munit_id,family_id, jguid
)
SELECT
  33 as db_schema_id, 
  codvoce as code, 
  desvoceit as model, 
  3 as type_id, 
  1 as munit_id, 
  132 as family_id,   
  jguid 
-- tipovoce, gruppovoci, desvocestat, desvoceit, desvocele, tipocalcolo, um, percentuale, percentuale2, coefficentetr, 
-- importobase, importominimo, codiva, contropartita, flgmaggioraz, flgnscarico, codanalitica, flgvociascaglioni, desaddizionale, 
-- codraggpref, utente, utenteultimamodifica, dataultimamodifica, flgvisibile, importomassimo, jguid
FROM custom_tm_logistic.fvocifatt f
where not exists
(select 1 from items.definitions d where d.jguid = f.jguid);

/* ---------- pro forma invoices -------------------------------------------- */

insert into documents.heads (
  doc_year, --1
  office_id, -- SC 2
  type_id, --3
  an_code, --4 
  anagraph_id, -- 5
  dest_name, -- 6
  ref_code, --7
  payment_term_id, -- 8 
  currency_id, -- 9  
  stamp_duty, --10 
  exchange_rate, --11
  notes1, --12
  notes2, --13
  doc_number, --14
  custom_int_1, --15
  printed, --16 
  amount, --17
  accounted, -- 18 flgcontabilizzata, 
  deleted , -- 19   
 work_code,  --20  
importexport, --21
 workflow_id, --22
 jguid, --23, 
 db_schema_id, --24,
 payment_term_code, --25
 payment_terms_des	--26	
)

SELECT 
       annofattura::integer  as doc_year, --1
	   149503 AS office_id, --codfiliale, --2
	   case when cod_causale = 'FT' then 18 else 19 end  as type_id, -- 3  
       codcliente as an_code, --4
	   a.anagraph_id,  --5 
	   ragionesoc as dest_name, --6
       numriferimentoesterno as ref_code, -- 7
	   accounting.get_payment_id_by_code(codpagamento, 33) payment_id, -- 8 
      case when codvaluta = 'EUR' THEN 1 ELSE 2 END AS currency_id, -- 9
       importobollo as stamp_duty, --10 
       importocambio as exchange_rate, -- 11 
       oggetto as notes1, --12 
       descrizionepiede as notes2, --13 
       contatore as doc_number, --14
       numrif as doc_ref, --15
       case when flgstampata = '1' then true else false end as printed, --16 
       importofatt as amount, --17
       false as accounted, -- 18 flgcontabilizzata, 
       case when flgerrata = '1' then true else false end as deleted , -- 19 
       p.commessa as work_code, --20 
       typeexport::smallint as importexport, --21
       w.id as workflow_id, --22
       t.jguid, --23, 
	   33 as db_schema_id, --24
	   codpagamento, --25
	   accounting.get_payment_term_by_code( codpagamento, 33) --26	
	   FROM custom_tm_logistic.pretestafatt t, anagraph.anagraphs a, 
         custom_tm_logistic.testatapratiche p, workflow.workflows w
   	where 
	a.an_code = t.codcliente and a.an_main_group_id = 14 and
	t.anno in ('2018', '2019', '2020', '2017', '2016', '2015', '2014') and
    p.anno = t.anno and p.progressivo = t.progressivo and t.codattivita = p.codattivita and p.progressivopraticagroupage = 0
    and w.jguid = p.jguid
	and not exists
    (select 1 from documents.heads h where h.jguid = t.jguid);
    
/* Righe fatture pro Forma */

insert into documents.rows (
  doc_id, --1
  code, --2
  item_id, --3
  model, --4
  price, --5
  quantity, ---6
  freight_rate, --7
  freight_qty, --8
  amount, --9
  vat_code, --10
  vat_id, --11
  description, --12
  vat_rate, --13
  currency_id, --14
  position, --15
  exchange_rate, --16
  is_description, --17
  jguid
)
SELECT 
   h.id as doc_id, --1
   p.codvoce as code, --2
   i.id as item_id, --3
   p.desvoce as model, --4
   p.prezzo as price, --5
   p.qta as qty, --6
   case when um <> 'EUR' then 0.0 else p.percmoltiplicatorenoli end as freight_rate, --7
   p.qtanoli as freight_qty, --8
   p.importo as amount, --9
   p.codiva as vat_code, --10
   --p.contropartita, 
   v.id as vat_id,  --11
   p.descrizioneaggnoli as description, --12
   perciva as vat_rate, --13
   case when um = 'EUR' then 1 when um = 'USD' then 2 else null end as currency_id, --14
   progrriga as pos, --15
   case when um <> 'EUR' then p.percmoltiplicatorenoli else 0.0 end as exchange_rate, --16
   case when tipocalcolo = 'D' then true else false end as is_description, --17
   p.jguid 
 FROM custom_tm_logistic.precorpofatt p 
 	inner join accounting.vat_codes v on v.code = p.codiva 
 	inner join items.definitions i on i.code = p.codvoce
 	inner join custom_tm_logistic.pretestafatt t on t.anno = p.anno and t.contatore = p.contatore and t.codfiliale = p.codfiliale
 	inner join documents.heads h on h.jguid = t.jguid
 where
    v.db_schema_id = 33 and i.db_schema_id = 33 and i.family_id = 132
    and t.anno in ('2018', '2019', '2020', '2017', '2016', '2015', '2014')
    AND P.tipocalcolo not in ('P')
    and not exists
    (select 1 from documents."rows" r where r.jguid = p.jguid);   
    
    
    
/* Testa Fatture Definitive documents.heads */ 

raise notice 'custom_tm_logistic.testafatt t';

insert into documents.heads (
  doc_year, --1
  office_id, -- SC 2
  type_id, --3
  an_code, --4 
  anagraph_id, -- 5
  dest_name, -- 6
  ref_code, --7
  payment_term_id, -- 8 
  currency_id, -- 9  
  stamp_duty, --10 
  exchange_rate, --11
  notes1, --12
  notes2, --13
  doc_number, --14
  conversion_date, --15
  printed, --16 
  amount, --17
  accounted, -- 18 flgcontabilizzata, 
  --type_id, -- 18  
  deleted , -- 19   
  work_code, --20  
  importexport, --21
  jguid, --22, 
  db_schema_id, --23
  doc_date --24
)
SELECT 
       annofattura::integer as doc_year, --1
       --contatore, 
	   149503 AS office_id, --codfiliale, --2
	   case when cod_causale = 'FT' then 16 else 17 end  as type_id, -- 3  
	   --codutente, anno, codattivita, progressivo, progressivopraticagroupage, contatorepref, 
       codcliente as an_code, --4
	   a.anagraph_id,  --5 
	   ragionesoc as dest_name, --6
       numriferimentoesterno as ref_code, -- 7
	   --cod_anag, 
	   case when codpagamento is null then 0 when codpagamento = '' then 0 else codpagamento::integer end as payment_id, -- 8 
	   --coddestinazione,  ragsocialedestinazione, indirizzodestinazione, indirizzodestinazione2, capdestinazione, localitadestinazione,pvdestinazione, flglinguavoce
       case when codvaluta = 'EUR' THEN 1 ELSE 2 END AS currency_id, -- 9
       importobollo as stamp_duty, --10 
       --codbanca, abi, cab, importocambio, 
       importocambio as exchange_rate, -- 11 
       oggetto as notes1, --12 
       descrizionepiede as notes2, --13 
       numdocumento as doc_number, --14
       datafatturadefinitiva as conversion_date, --15
       case when flgstampata = '1' then true else false end as printed, --16 
       importofatt as amount, --17
       false as accounted, -- 18 flgcontabilizzata, 
       --codregistroiva, datacompetenzafattura, 
       case when flgerrata = '1' then true else false end as deleted , -- 19 
	   --flgcontabilizzata, importofatt, codregistroiva, datacompetenzafattura, cod_causale, flgerrata, 
       --flgesportata, numerocopie, codvalutacontabilita, note1, note2, 
       commessa as work_code, --20 
       typeexport::smallint as importexport, --21
       /* numpn, flgclientenotabolla, prog_destin, 
	   flgricontabilizza, desbanca, filialeeolog, typeexport, po, datainserimento, flgassegna, utente, dataincasso, 
	   idstatoinviofe, */
       t.jguid, --22, 
	   33 as db_schema_id, --23
	   datafatturadefinitiva --24
	FROM custom_tm_logistic.testafatt t, anagraph.anagraphs a
	where 
	a.an_code = t.codcliente and a.an_main_group_id = 14 
    and not exists (select 1 from documents.heads h where h.jguid = t.jguid)
	order by annofattura, contatore;   
	
/* righe fatture definitive */

insert into documents.rows (
  doc_id, --1
  code, --2
  item_id, --3
  model, --4
  price, --5
  quantity, ---6
  freight_rate, --7
  freight_qty, --8
  amount, --9
  vat_code, --10
  vat_id, --11
  description, --12
  vat_rate, --13
  currency_id, --14
  position, --15
  exchange_rate, --16
  is_description, --17
  jguid
)
SELECT 
   h.id as doc_id, --1
   p.codvoce as code, --2
   i.id as item_id, --3
   p.desvoce as model, --4
   p.prezzo as price, --5
   p.qta as qty, --6
   case when um <> 'EUR' then 0.0 else p.percmoltiplicatorenoli end as freight_rate, --7
   p.qtanoli as freight_qty, --8
   p.importo as amount, --9
   p.codiva as vat_code, --10
   --p.contropartita, 
   v.id as vat_id,  --11
   p.descrizioneaggnoli as description, --12
   perciva as vat_rate, --13
   case when um = 'EUR' then 1 when um = 'USD' then 2 else null end as currency_id, --14
   progrriga as pos, --15
   case when um <> 'EUR' then p.percmoltiplicatorenoli else 0.0 end as exchange_rate, --16
   case when tipocalcolo = 'D' then true else false end as is_description, --17
   p.jguid 
 FROM custom_tm_logistic.corpofatt p 
 	inner join accounting.vat_codes v on v.code = p.codiva 
 	inner join items.definitions i on i.code = p.codvoce
 	inner join custom_tm_logistic.testafatt t on t.annofattura = p.anno and t.contatore = p.contatore and t.codfiliale = p.codfiliale
 	inner join documents.heads h on h.jguid = t.jguid
 where
    v.db_schema_id = 33 and i.db_schema_id = 33 and i.family_id = 132
    AND P.tipocalcolo not in ('P')
    and not exists
    (select 1 from documents."rows" r where r.jguid = p.jguid);

/* documents.vat_amounts */

INSERT INTO documents.vat_amounts(
	doc_id, vat_id, vat_code,  taxable_amount, taxes, vat_rate, amount, vat_description)
    select * from 
    (
	select 
      h.id as doc_id, 
      c.id as vat_id, 
      c.code as vat_code, 
      imponibile1 as taxable_amount, 
      imposta1 as taxes, 
      c.vat_rate, 
      imponibile1 + imposta1 as amount,
      c.description as desctription   
    from custom_tm_logistic.testafatt t, documents.heads h, accounting.vat_codes c
    where h.jguid = t.jguid and   c.code = codiva1
        
union all 
        
	select 
      h.id as doc_id, 
      c.id as vat_id, 
      c.code as vat_code, 
      imponibile2 as taxable_amount, 
      imposta2 as taxes, 
      c.vat_rate, 
      imponibile2 + imposta2 as amount,
      c.description as desctription  
    from  custom_tm_logistic.testafatt t, documents.heads h, accounting.vat_codes c
    where h.jguid = t.jguid and c.code = codiva2
        
union all 
        
	select 
      h.id as doc_id, 
      c.id as vat_id, 
      c.code as vat_code, 
      imponibile3 as taxable_amount, 
      imposta3 as taxes, 
      c.vat_rate, 
      imponibile3 + imposta3 as amount,
      c.description as desctription  
    from  custom_tm_logistic.testafatt t, documents.heads h, accounting.vat_codes c
    where h.jguid = t.jguid and c.code = codiva3
        
union all 
        
	select 
      h.id as doc_id, 
      c.id as vat_id, 
      c.code as vat_code, 
      imponibile4 as taxable_amount, 
      imposta4 as taxes, 
      c.vat_rate, 
      imponibile4 + imposta4 as amount,
      c.description as desctription  
    from  custom_tm_logistic.testafatt t, documents.heads h, accounting.vat_codes c
    where h.jguid = t.jguid and c.code = codiva4
        
union all 
        
	select 
      h.id as doc_id, 
      c.id as vat_id, 
      c.code as vat_code, 
      imponibile5 as taxable_amount, 
      imposta5 as taxes, 
      c.vat_rate, 
      imponibile5 + imposta4 as amount,
      c.description as desctription  
    from  custom_tm_logistic.testafatt t, documents.heads h, accounting.vat_codes c
    where h.jguid = t.jguid and c.code = codiva5
     
union all
        
	select 
      h.id as doc_id, 
      c.id as vat_id, 
      c.code as vat_code, 
      imponibile6 as taxable_amount, 
      imposta1 as taxes, 
      c.vat_rate, 
      imponibile6 + imposta6 as amount,
      c.description as desctription   
    from custom_tm_logistic.testafatt t, documents.heads h, accounting.vat_codes c
    where h.jguid = t.jguid and   c.code = codiva6
        
    ) a 
    where not exists (select 1 from documents.vat_amounts v  where v.doc_id = a.doc_id and  v.vat_id=a.vat_id)
    order by 
    a.doc_id, a.vat_id;
    
raise notice 'documents.vat_amounts'; 	
	
INSERT INTO documents.vat_amounts(
	doc_id, --1
    vat_id, --2
    taxable_amount, --3
    taxes, --4 
    vat_rate, --5
    amount, --6
    vat_description, --7
    vat_code)--8
select 
    doc_id, --1
    vat_id, --2
    sum(amount) as taxable_amount, --3
    sum(amount) * r.vat_rate/100 as taxes,  --4
    r.vat_rate, --5
    sum(amount) + sum(amount) * r.vat_rate/100 as amount,--6
    v.description as  vat_description,--7
    r.vat_code--8
from documents.rows r 
     inner join accounting.vat_codes v on v.id = r.vat_id
where 
   vat_id is not null
and not exists
  (select 1 from documents.vat_amounts a where a.doc_id = r.doc_id)
group by
     r.doc_id, r.vat_id, r.vat_rate, v.description, r.vat_code;  /*
select  
  CodFornitoreMagazzino,
  count(1) 
  from 
  custom_tm_logistic.datimerce 
  group by CodFornitoreMagazzino

select * from anagraph.anagraphs where an_code = 'SC'

*/

raise notice 'logistic.shipment_rows'; 

insert into logistic.shipment_rows 
(
  jguid, --1
  year, --2
  shipment_id, -- 3 
  office_id, --4
  pos, --5
  quantity,--6
  weight,--7
  volume,--8
  booking, --9
  cntr_type, --10
  cntr_code, --11
  cntr_seal, --12
   pkg_type_code, --13
   PO1 , --14
   PO2 , --15
   PO3 , --16
	PO4 , --17
	PO5 , --18
	PO6, --19
	PO7, --20
	PO8 , --21
    freight_amount, --22
    marks, --23
    description1 ,--24
    description2 ,--25
	BOL ,--26
	BOLHouse,--27
    NOTE, --28
    temperature, --29
    supplier,  --30
    supplier_code, --31
    taxable_weight,-- 32
    Dimentions, --33
    Remarks, --34
    weght_volume_ratio,--35
    flgnotaxw,
    actual_weight,
    actual_volume, 
    booking_number, 
    customs_tariff, 
    size_weight,
    size_length,
    size_height,
    supplier_warehouse_code,
    supplier_warehouse_id
)
select 
  m.jguid, --1
  year, --2
  o.id as shipment_id, -- 3 
  office_id, --4
  progressivoriga as pos, --5
  numerocolli as quantity,
  peso as  weight,
  volume,
  booking as booking, 
  TipoCntr as cntr_type, 
  SiglaCntr as cntr_code, 
  Sigillo as cntr_seal, 
  Imballo as pkg_type_code, 
   PO1 ,
   PO2 ,
   PO3 ,
	PO4 ,
	PO5 ,
	PO6,
	PO7,
	PO8 ,
   ImportoNolo as freight_amount, 
   Marche as marks, 
   DescrizioneMerce1 as description1 ,
    DescrizioneMerce2 as asdescription2 ,
	BL as BOL ,
	BLHouse as BOLHouse,
    m.NOTE, 
    Temperatura as temperature, 
    Fornitore as supplier,  
    CodFornitore as supplier_code, 
    PesoTassabile as taxable_weight,
    Dimentions, 
    Remarks, 
    RappPesoVolume as weght_volume_ratio,
    case when FlgNoTaxW = '1' then true else false end as flg_notaxv,
    PesoVero as actual_weight,
    VolumeVero as actual_volume, 
    BookingNumber as booking_number, 
    TariffaDoganale as customs_tariff, 
    MisuraW as size_weight,
    MisuraL as size_length,
    MisuraH as size_height,
    CodFornitoreMagazzino as supplier_warehouse_code,
    anagraph.get_id_by_code(CodFornitoreMagazzino, 10, 33)
      as supplier_warehouse_id    
from 
  custom_tm_logistic.datimerce  m
  inner join custom_tm_logistic.testatapratiche p 
    on  p.anno = m.anno and p.progressivo = m.progressivo and p.codattivita = m.codattivita 
      and p.progressivopraticagroupage = m.progressivopraticagroupage 
  inner join logistic.shipments o on o.jguid = p.jguid
  where 
  not exists (select 1 from logistic.shipment_rows  r where r.jguid = m.jguid);
     
     

    
end;
$BODY$;

ALTER FUNCTION custom_tm_logistic.update_magazzino()
    OWNER TO ergo;

COMMENT ON FUNCTION custom_tm_logistic.update_magazzino()
    IS 'Procedura di aggiornamento del magazzino e delle entrate di Tailor Made Logistic';
