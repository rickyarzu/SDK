
DROP TRIGGER cdrc_bi_trg ON cloud.directories;

DROP FUNCTION update_documents(  );

DROP FUNCTION update_magazzino(  );

DROP FUNCTION documents_insert_id_trg(  );

DROP FUNCTION shipments_view_ioi_trg(  );

DROP FUNCTION shipments_insert( bigint, uuid, timestamp with time zone, timestamp without time zone, timestamp without time zone, integer, uuid, integer, integer, json, json, smallint, smallint, smallint, character, integer, character varying, character varying, integer, character varying, bigint, integer, character varying, character varying, integer, character varying, character varying, integer, text, integer, timestamp without time zone, smallint, integer, character varying, character varying, text, text, text, character, boolean, boolean, boolean, timestamp without time zone, timestamp without time zone, smallint, smallint, timestamp without time zone, boolean, boolean, boolean, boolean, character varying, timestamp without time zone, timestamp with time zone, timestamp with time zone, boolean, integer, character varying, integer );

DROP FUNCTION shipments_select(  );

DROP FUNCTION shipments_update( bigint, uuid, timestamp with time zone, timestamp without time zone, timestamp without time zone, integer, uuid, integer, integer, json, json, smallint, smallint, smallint, character, integer, character varying, character varying, integer, character varying, bigint, integer, character varying, character varying, integer, character varying, character varying, integer, text, integer, timestamp without time zone, smallint, integer, character varying, character varying, text, text, text, character, boolean, boolean, boolean, timestamp without time zone, timestamp without time zone, smallint, smallint, timestamp without time zone, boolean, boolean, boolean, boolean, character varying, timestamp without time zone, timestamp with time zone, timestamp with time zone, boolean, integer, character varying, integer );

DROP FUNCTION shipments_view_iod_trg(  );

DROP FUNCTION shipments_view_iou_trg(  );

DROP FUNCTION add_months( timestamp with time zone, integer );

DROP FUNCTION nvl( bigint, integer );

DROP FUNCTION nvl( bigint, integer );

DROP FUNCTION numtodsinterval( double precision, text );


DROP FUNCTION replace_empty_strings(  );

DROP FUNCTION replace_null_strings(  );

DROP FUNCTION unistr( text );

DROP FUNCTION postgis_topology_scripts_installed(  );

ALTER TABLE crm.quote_forms DROP CONSTRAINT fk_quote_forms_mails;

ALTER TABLE football.ft_teams DROP CONSTRAINT ft_teams_clubs_fk;

ALTER TABLE repository.fields DROP CONSTRAINT fields_entities_fk;

ALTER TABLE cloud.directories DROP CONSTRAINT cdrc_jguid_uk;

DROP INDEX repository.fki_fields_entities_fk;

ALTER TABLE repository.fields DROP CONSTRAINT field_entities_uk;

DROP VIEW custom_tm_logistic.verifiche;

DROP VIEW oracle.user_constraints;

DROP VIEW oracle.user_tables;

DROP VIEW "public".geometry_columns;

DROP VIEW "public".raster_overviews;

ALTER TABLE cloud.directories DROP COLUMN cdrc_jguid CASCADE;

ALTER TABLE cloud.directories DROP COLUMN cdrc_deleted CASCADE;

ALTER TABLE items.hazmat DROP COLUMN passenger CASCADE;

ALTER TABLE items.hazmat DROP COLUMN cargo_aircraft CASCADE;

ALTER TABLE items.hazmat DROP COLUMN location_code CASCADE;

ALTER TABLE items.hazmat DROP COLUMN other CASCADE;

ALTER TABLE items.hazmat DROP COLUMN c1 CASCADE;

ALTER TABLE repository.entities DROP COLUMN virtual CASCADE;

ALTER TABLE repository.fields DROP COLUMN name CASCADE;

ALTER TABLE repository.fields DROP COLUMN entity_id CASCADE;

ALTER TABLE repository.fields DROP COLUMN ds_type_id CASCADE;

ALTER TABLE repository.fields DROP COLUMN rs_type_id CASCADE;

ALTER TABLE repository.fields DROP COLUMN title CASCADE;

ALTER TABLE repository.fields DROP COLUMN lang_id CASCADE;

ALTER TABLE repository.fields DROP COLUMN width CASCADE;

CREATE SCHEMA IF NOT EXISTS carservice;

CREATE SCHEMA IF NOT EXISTS maillist;

CREATE SEQUENCE carservice.booking_heads_sequence START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE maillist.attachments_seq START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE maillist.mailing_list_seq START WITH 1 INCREMENT BY 1;

CREATE  TABLE custom_tm_logistic.translate_db_users ( 
	db_user_id           integer  NOT NULL  ,
	old_user             varchar(30)  NOT NULL  ,
	CONSTRAINT translate_db_users_pkey PRIMARY KEY ( db_user_id, old_user )
 ) ;

CREATE  TABLE items.hazamat_divisions ( 
	code                 varchar(10)  NOT NULL  ,
	description          varchar(128)    ,
	placard              bytea    ,
	CONSTRAINT hazamat_divisions_pkey PRIMARY KEY ( code )
 ) ;

CREATE  TABLE "public".tmp_ft_calendar ( 
	match_id             integer    ,
	league_id            smallint    ,
	season_id            smallint    ,
	match_day_number     smallint    ,
	match_date           date    ,
	home_team_id         smallint    ,
	visitors_team_id     smallint    ,
	goal_home            smallint    ,
	goal_visitor         smallint    ,
	points_home          smallint    ,
	points_visitors      smallint    ,
	notes                text    ,
	confirmed            boolean    ,
	db_schema_id         integer    ,
	insert_date          timestamptz    ,
	update_date          timestamptz    ,
	home_notes           varchar(1024)    ,
	visitors_notes       varchar(1024)    ,
	match_time           timestamp    ,
	referee_id           integer    ,
	referee_second_id    integer    ,
	referee_third_id     integer    ,
	suspended            boolean    ,
	postponed            boolean    ,
	forfeit              boolean    ,
	remote_id            integer    ,
	filed_id             integer    ,
	fcld_jguid           varchar(40)    ,
	fcld_deleted         boolean    ,
	article_url          varchar(1024)    ,
	video_url            varchar(1024)    
 ) ;

CREATE  TABLE "system".db_tables ( 
	jguid                uuid  NOT NULL  ,
	"schema"             varchar(64)  NOT NULL  ,
	name                 varchar(64)  NOT NULL  ,
	title                varchar(128)  NOT NULL  ,
	description          varchar(1024)    ,
	isvirtual            boolean DEFAULT false NOT NULL  ,
	model_uid            uuid    ,
	isquery              boolean    ,
	query_text           text    ,
	CONSTRAINT "DB_TABLES_UK" UNIQUE ( "schema", name ) ,
	CONSTRAINT "DB_TABLES_PK" PRIMARY KEY ( jguid )
 ) ;

CREATE  TABLE "system".db_tables_fields ( 
	jguid                uuid  NOT NULL  ,
	table_guid           uuid  NOT NULL  ,
	fieldname            varchar(64)  NOT NULL  ,
	fieldtitle           varchar(128)  NOT NULL  ,
	ongrid               boolean  NOT NULL  ,
	pxwidth              smallint  NOT NULL  ,
	fieldtype            smallint  NOT NULL  ,
	gridgroup            varchar(128)    ,
	exportfield          boolean    ,
	exporttype           smallint    ,
	mask                 varchar(32)    ,
	gridtitle            varchar(128)    ,
	fieldlabel           varchar(128)    ,
	fieldlength          smallint    ,
	fieldprecisoin       smallint    ,
	gridpos              smallint    ,
	CONSTRAINT db_table_fields_uk UNIQUE ( fieldname, table_guid ) ,
	CONSTRAINT db_table_fields_pk PRIMARY KEY ( jguid )
 ) ;

CREATE  TABLE "system".db_user_schema_params ( 
	db_schema_id         integer  NOT NULL  ,
	db_user_id           integer  NOT NULL  ,
	"key"                varchar(256)  NOT NULL  ,
	param                varchar(256)  NOT NULL  ,
	"value"              text  NOT NULL  ,
	has_translation      boolean DEFAULT false NOT NULL  ,
	jguid                uuid  NOT NULL  ,
	deleted              boolean DEFAULT false   ,
	CONSTRAINT ssup_jguid_uk UNIQUE ( db_user_id, db_schema_id, "key", param ) ,
	CONSTRAINT db_user_schema_params_pk PRIMARY KEY ( jguid )
 ) ;

CREATE  TABLE "system".json_objects ( 
	jguid                uuid  NOT NULL  ,
	"object"             json  NOT NULL  ,
	CONSTRAINT json_objects_pkey PRIMARY KEY ( jguid )
 ) ;

CREATE  TABLE "system".db_table_params ( 
	jguid                uuid  NOT NULL  ,
	table_guid           uuid  NOT NULL  ,
	fieldname            varchar(64)  NOT NULL  ,
	fieldtitle           varchar(128)  NOT NULL  ,
	ongrid               boolean  NOT NULL  ,
	pxwidth              smallint  NOT NULL  ,
	fieldtype            smallint  NOT NULL  ,
	gridgroup            varchar(128)    ,
	exportfield          boolean    ,
	exporttype           smallint    ,
	mask                 varchar(32)    ,
	gridtitle            varchar(128)    ,
	fieldlabel           varchar(128)    ,
	fieldlength          smallint    ,
	fieldprecisoin       smallint    ,
	gridpos              smallint    
 ) ;

CREATE  TABLE carservice.booking_states ( 
	id                   smallint  NOT NULL  ,
	description          varchar  NOT NULL  ,
	jguid                uuid  NOT NULL  ,
	CONSTRAINT booking_states_jk UNIQUE ( jguid ) ,
	CONSTRAINT booking_states_pk PRIMARY KEY ( id )
 ) ;

CREATE  TABLE carservice.timetable_slots ( 
	slot_id              smallint  NOT NULL  ,
	slot_des             varchar(6)  NOT NULL  ,
	slot_time            time    ,
	CONSTRAINT timetable_slots_pk PRIMARY KEY ( slot_id, slot_des ),
	CONSTRAINT unq_timetable_slots_slot_id UNIQUE ( slot_id ) 
 ) ;

CREATE  TABLE carservice.booking_heads ( 
	id                   bigint  NOT NULL  ,
	office_id            integer  NOT NULL  ,
	jguid                uuid  NOT NULL  ,
	db_schema_id         integer DEFAULT 0 NOT NULL  ,
	user_insert          integer    ,
	customer_id          integer    ,
	state_id             smallint DEFAULT 0 NOT NULL  ,
	branch_id            integer  NOT NULL  ,
	insert_date          timestamptz    ,
	vehicle_numberplate  varchar(24)    ,
	vehicle_model        varchar(128)    ,
	vehicle_color        varchar(64)    ,
	CONSTRAINT booking_heads_pkey PRIMARY KEY ( id )
 ) ;

CREATE  TABLE carservice.timetable ( 
	workingday           date  NOT NULL  ,
	slot_id              smallint  NOT NULL  ,
	driver_anagraph_id   integer DEFAULT 0 NOT NULL  ,
	booking_id           bigint    ,
	from_id              integer    ,
	to_id                integer    ,
	state_id             smallint DEFAULT 0 NOT NULL  ,
	jguid                uuid DEFAULT uuid_generate_v4() NOT NULL  ,
	CONSTRAINT timetable_pkey PRIMARY KEY ( workingday, slot_id, driver_anagraph_id )
 ) ;

CREATE  TABLE maillist.campaign_members ( 
	sent                 boolean    ,
	campaign_id          integer  NOT NULL  ,
	member_id            bigint  NOT NULL  ,
	insert_date          timestamptz    ,
	update_date          timestamptz    ,
	sent_datetime        timestamptz    ,
	clicked              boolean    ,
	opens                smallint    ,
	clicks               smallint    ,
	CONSTRAINT campaign_members_pk PRIMARY KEY ( campaign_id, member_id )
 ) ;

CREATE  TABLE maillist.campaigns ( 
	campaign_id          integer  NOT NULL  ,
	campaign_name        integer  NOT NULL  ,
	db_schema_id         integer    ,
	CONSTRAINT mail_campaigns_pk PRIMARY KEY ( campaign_id )
 ) ;

CREATE  TABLE maillist.clicks ( 
	url_id               bigint  NOT NULL  ,
	campaign_id          integer  NOT NULL  ,
	member_id            bigint  NOT NULL  ,
	CONSTRAINT mail_clicks_pk PRIMARY KEY ( url_id, campaign_id, member_id )
 ) ;

CREATE  TABLE maillist.list_members ( 
	member_id            bigint  NOT NULL  ,
	mailing_id           bigint    ,
	email                varchar(256)  NOT NULL  ,
	insert_date          timestamptz    ,
	update_date          timestamptz    ,
	CONSTRAINT mail_list_members_pk PRIMARY KEY ( member_id )
 ) ;

CREATE  TABLE maillist.mailing_list ( 
	db_schema_id         integer    ,
	mailing_id           bigint  NOT NULL  ,
	creation_date        timestamptz    ,
	list_name            varchar(128)    ,
	mailtext             text    ,
	mailing_key          varchar(128)    ,
	CONSTRAINT mailing_list_pk PRIMARY KEY ( mailing_id )
 ) ;

CREATE  TABLE maillist.opens ( 
	open_date            timestamptz    ,
	campaign_id          integer  NOT NULL  ,
	member_id            bigint  NOT NULL  ,
	CONSTRAINT mail_opens_pk PRIMARY KEY ( campaign_id, member_id )
 ) ;

CREATE  TABLE maillist.sender ( 
	ms_send_id           bigint  NOT NULL  ,
	db_user_id           integer    ,
	db_schema_id         integer    ,
	ms_to                varchar(256)  NOT NULL  ,
	ms_cc                varchar(256)    ,
	ms_bcc               varchar(256)    ,
	ms_text              varchar(2048)    ,
	ms_object            varchar(1024)    ,
	insert_date          timestamptz    ,
	update_date          timestamptz    ,
	user_insert          varchar(30)    ,
	user_update          varchar(30)    ,
	ms_owner             varchar(30)  NOT NULL  ,
	ms_sent              varchar(3) DEFAULT 'N'::character varying   ,
	ms_from              varchar(256)    ,
	ms_from_addr         varchar(256)    ,
	CONSTRAINT mail_send_pk PRIMARY KEY ( ms_send_id )
 ) ;

CREATE  TABLE maillist.sender_attachments ( 
	ms_send_id           bigint    ,
	attach_id            bigint  NOT NULL  ,
	filename             varchar(512)    ,
	attachment           bytea    ,
	jguid                uuid  NOT NULL  ,
	blob_id              bigint    ,
	context              text    ,
	description          varchar(1024)    ,
	CONSTRAINT attachments_pk PRIMARY KEY ( attach_id )
 ) ;

CREATE  TABLE maillist.subset_members ( 
	member_id            bigint  NOT NULL  ,
	subset_id            integer  NOT NULL  ,
	CONSTRAINT primarykey3 PRIMARY KEY ( member_id, subset_id )
 ) ;

CREATE  TABLE maillist.subsets ( 
	subset_id            integer  NOT NULL  ,
	subset_name          integer  NOT NULL  ,
	mailing_id           bigint    ,
	db_schema_id         integer    ,
	CONSTRAINT mail_list_subset_pk PRIMARY KEY ( subset_id )
 ) ;

ALTER TABLE analytics.group_users ADD CONSTRAINT pk_group_users PRIMARY KEY ( db_user_id, query_group_id ) ;

ALTER TABLE cloud.blob_files ADD CONSTRAINT cloud_blob_files_pk PRIMARY KEY ( blob_id ) ;

ALTER TABLE cloud.blob_files ADD CONSTRAINT blob_files_uuid_uk UNIQUE ( jguid ) ;

CREATE INDEX heads_sort_desc_ndx ON documents.heads  ( doc_year, doc_date, lpad((doc_number)::text, 15, '0'::text) ) ;

CREATE INDEX heads_doc_types_btree_ndx ON documents.heads  ( type_id ) ;

CREATE INDEX heads_doc_types_hash_ndx ON documents.heads  ( type_id ) ;

CREATE INDEX heads_doc_years_btree_ndx ON documents.heads  ( doc_year ) ;

CREATE INDEX heads_doc_years_brin_ndx ON documents.heads  ( doc_year ) ;

CREATE INDEX fki_doc_rows_suppliers_fk ON documents."rows"  ( supplier_id ) ;

ALTER TABLE logistic.shipment_rows ADD CONSTRAINT shipment_rows_pk PRIMARY KEY ( "year", shipment_id, office_id, pos ) ;

ALTER TABLE logistic.shipment_rows ADD CONSTRAINT shipment_rows_jk UNIQUE ( jguid ) ;

CREATE INDEX fki_entities_schemas_fk ON repository.entities  ( schema_jguid ) ;

ALTER TABLE repository.fields ADD CONSTRAINT db_table_fields_uk UNIQUE ( fieldname, entity_guid ) ;

ALTER TABLE repository.fieldtypes ADD CONSTRAINT unq_fieldtypes_id UNIQUE ( id ) ;

CREATE INDEX fki_timetable_booking_states_fk ON carservice.timetable  ( state_id ) ;

CREATE INDEX mail_send_owner ON maillist.sender  ( ms_owner ) ;

CREATE INDEX mail_attach_mail_fk_i ON maillist.sender_attachments  ( ms_send_id ) ;

ALTER TABLE anagraph.anagraphs ADD CONSTRAINT fk_anagraphs_categories FOREIGN KEY ( main_category_id ) REFERENCES anagraph.categories( category_id )  ON UPDATE CASCADE ;

ALTER TABLE analytics.group_users ADD CONSTRAINT fk_group_users_db_users FOREIGN KEY ( db_user_id ) REFERENCES "system".db_users( db_user_id )   ;

ALTER TABLE analytics.params ADD CONSTRAINT fk_params_queries_0 FOREIGN KEY ( lookup_query_id ) REFERENCES analytics.queries( query_id )   ;

ALTER TABLE analytics.queries ADD CONSTRAINT fk_queries_queries_schemas FOREIGN KEY ( schema_id ) REFERENCES analytics.queries_schemas( schema_id )   ;

ALTER TABLE crm.quote_forms ADD CONSTRAINT fk_quote_forms_mails FOREIGN KEY ( ms_send_id ) REFERENCES maillist.sender( ms_send_id )  ON UPDATE CASCADE ;

ALTER TABLE documents.heads ADD CONSTRAINT heads_workflows_fk FOREIGN KEY ( workflow_id ) REFERENCES workflow.workflows( id )  ON UPDATE CASCADE ;

ALTER TABLE documents."rows" ADD CONSTRAINT doc_rows_suppliers_fk FOREIGN KEY ( supplier_id ) REFERENCES anagraph.anagraphs( anagraph_id )   ;

ALTER TABLE football.ft_teams ADD CONSTRAINT ft_teams_clubs_fk FOREIGN KEY ( club_id ) REFERENCES football.ft_clubs( club_id ) ON DELETE CASCADE ON UPDATE CASCADE ;

ALTER TABLE logistic.shipments ADD CONSTRAINT fk_pickup_orders_workflows FOREIGN KEY ( workflow_id ) REFERENCES workflow.workflows( id )  ON UPDATE CASCADE ;

ALTER TABLE logistic.shipments ADD CONSTRAINT fk_pickup_orders_workflows_uid FOREIGN KEY ( workflow_uid ) REFERENCES workflow.workflows( jguid )  ON UPDATE CASCADE ;

ALTER TABLE repository.entities ADD CONSTRAINT entities_schemas_fk FOREIGN KEY ( schema_jguid ) REFERENCES repository.schemas( jguid )  ON UPDATE CASCADE ;

ALTER TABLE repository.fields ADD CONSTRAINT db_fields_tables_fk FOREIGN KEY ( entity_guid ) REFERENCES "system".db_tables( jguid )   ;

ALTER TABLE repository.fields ADD CONSTRAINT fk_fields_entities FOREIGN KEY ( entity_guid ) REFERENCES repository.entities( jguid )  ON UPDATE CASCADE ;

ALTER TABLE repository.fields ADD CONSTRAINT fk_fields_fieldtypes FOREIGN KEY ( db_fieldtype ) REFERENCES repository.fieldtypes( id )   ;

ALTER TABLE repository.fields ADD CONSTRAINT fk_fields_fieldtypes_0 FOREIGN KEY ( rs_fieldtype ) REFERENCES repository.fieldtypes( id )   ;

ALTER TABLE repository.fields ADD CONSTRAINT fk_fields_fieldtypes_1 FOREIGN KEY ( exporttype ) REFERENCES repository.fieldtypes( id )   ;

ALTER TABLE "system".db_tables_fields ADD CONSTRAINT db_fields_tables_fk FOREIGN KEY ( table_guid ) REFERENCES "system".db_tables( jguid )   ;

ALTER TABLE "system".db_user_schema_params ADD CONSTRAINT db_user_schema_params_db_schema_fk FOREIGN KEY ( db_schema_id ) REFERENCES "system".db_schemas( db_schema_id )   ;

ALTER TABLE "system".db_table_params ADD CONSTRAINT fk_db_table_params_db_tables FOREIGN KEY ( table_guid ) REFERENCES "system".db_tables( jguid )  ON UPDATE CASCADE ;

ALTER TABLE carservice.booking_heads ADD CONSTRAINT timetable_booking_states_fk FOREIGN KEY ( state_id ) REFERENCES carservice.booking_states( id )  ON UPDATE CASCADE ;

ALTER TABLE carservice.timetable ADD CONSTRAINT timetable_booking_states_fk FOREIGN KEY ( state_id ) REFERENCES carservice.booking_states( id )  ON UPDATE CASCADE ;

ALTER TABLE carservice.timetable ADD CONSTRAINT fk_timetable_timetable_slots FOREIGN KEY ( slot_id ) REFERENCES carservice.timetable_slots( slot_id )   ;

ALTER TABLE maillist.sender_attachments ADD CONSTRAINT fk_attachments FOREIGN KEY ( ms_send_id ) REFERENCES maillist.sender( ms_send_id )   ;

CREATE OR REPLACE FUNCTION anagraph.anagraph_view_insert_trg()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
DECLARE
  v_count integer; v_id integer; v_jguid uuid; v_vessel_id integer; 
BEGIN
  v_count := 0; 
  v_id := new.anagraph_id;
  
  if v_id is null or v_id = 0 then
    v_id:=nextval('anagraph.an_anagraph_seq');
  end if; 
  
  v_jguid := new.jguid; 
  
  if v_jguid is null then
     v_jguid := '{' || public.uuid_generate_v1mc() || '}';
  end if; 
  
  if new.vessel_id = 0 then v_vessel_id := null; else v_vessel_id := new.vessel_id; end if; 
  
  
  INSERT INTO anagraph.anagraphs (
    db_schema_id,	
    anagraph_id,
    an_title,
    an_name,
    an_second_name,
    an_last_name,
    an_notes,
    an_address,
    an_town,
    an_postal_code,
    an_iso_country_code,
    an_state_province,
    an_phone,
    an_phone2,
    an_fax,
    an_cellular,
    an_code,
    an_vat_numeric,
    an_email,
    an_web,
    an_contact_id,
    an_bank_account,
    an_payment_des,
    an_discount,
    an_distance,
    an_distance_mesunit,
    an_sex,
    an_cod_comune,
    an_cod_provincia,
    an_credit_line,
    an_currency_id,
    an_cat_id,
    an_notes2,
    an_notes3,
    an_edi,
    an_privacy,
    an_office_id,
    an_cod_prov_rif,
    an_data_fido,
    an_user_insert,
    an_user_update,
    an_area_id,
    an_agent_id,
    an_area_code,
    an_zone_id,
    an_ins_id,
    an_upd_id,
    an_documents,
    an_last_date,
    an_birthdate,
    an_office_type_id,
    an_searchname,
    an_extra_ue_flag,
    an_external_code,
    an_vat_id,
    an_personal_fiscal_code,
    an_privacy_print,
    an_sms,
    an_encrypted_fiscal_code,
    an_vat_purcentage,
    an_status,
    an_ownsite,
    an_insurance_id,
    an_anagraphs_anagraph_id,
    an_main_language_code,
    an_main_culture_code,
    an_fiscal_code,
    an_main_group_id,
    an_image_id,
    latitude,
    longitude,
    test,
    search_index,
    an_birthplace,
    an_birthplace_code,
    anagraph64,
    main_category_id,
    osm_id,
    an_description,
    an_address_number,
    anag_jguid,
    anag_deleted,
    insert_date,
    update_date,
    user_insert,
    jguid,
    custom_field_1,
    custom_field_2,
    custom_field_3,
    custom_float_1,
    custom_float_2,
    custom_int_1,
    custom_int_2,
    supplier_id,
    vessel_id,
    an_country_id,
    an_iso_country_code2
  )
  values( 
    new.db_schema_id,
    case when v_id = 0 then NULL else v_id end,
    new.an_title,
    new.an_name,
    new.an_second_name,
    new.an_last_name,
    new.an_notes,
    new.an_address,
    new.an_town,
    new.an_postal_code,
    new.an_iso_country_code,
    new.an_state_province,
    new.an_phone,
    new.an_phone2,
    new.an_fax,
    new.an_cellular,
    new.an_code,
    new.an_vat_numeric,
    new.an_email,
    new.an_web,
    case when new.an_contact_id = 0 then NULL else new.an_contact_id end,
    new.an_bank_account,
    new.an_payment_des,
    new.an_discount,
    new.an_distance,
    new.an_distance_mesunit,
    new.an_sex,
    new.an_cod_comune,
    new.an_cod_provincia,
    new.an_credit_line,
    case when new.an_currency_id = 0 then NULL else new.an_currency_id end,
    case when new.an_cat_id = 0 then NULL else new.an_cat_id end,
    new.an_notes2,
    new.an_notes3,
    new.an_edi,
    new.an_privacy,
    case when new.an_office_id = 0 then NULL else new.an_office_id end,
    new.an_cod_prov_rif,
    new.an_data_fido,
    new.an_user_insert,
    new.an_user_update,
    case when new.an_area_id = 0 then NULL else new.an_area_id end,
    case when new.an_agent_id = 0 then NULL else new.an_agent_id end,
    new.an_area_code,
    case when new.an_zone_id = '' then NULL else new.an_zone_id end,
    case when new.an_ins_id = 0 then NULL else new.an_ins_id end,
    case when new.an_upd_id = 0 then NULL else new.an_upd_id end,
    new.an_documents,
    new.an_last_date,
    new.an_birthdate,
    case when new.an_office_type_id = 0 then NULL else new.an_office_type_id end,
    new.an_searchname,
    new.an_extra_ue_flag,
    new.an_external_code,
    case when new.an_vat_id = 0 then NULL else new.an_vat_id end,
    new.an_personal_fiscal_code,
    new.an_privacy_print,
    new.an_sms,
    new.an_encrypted_fiscal_code,
    new.an_vat_purcentage,
    new.an_status,
    new.an_ownsite,
    case when new.an_insurance_id = 0 then NULL else new.an_insurance_id end,
    case when new.an_anagraphs_anagraph_id = 0 then NULL else new.an_anagraphs_anagraph_id end,
    new.an_main_language_code,
    new.an_main_culture_code,
    new.an_fiscal_code,
    new.an_main_group_id,
    case when new.an_image_id = 0 then NULL else new.an_image_id end,
    new.latitude,
    new.longitude,
    new.test,
    new.search_index,
    new.an_birthplace,
    new.an_birthplace_code,
    new.anagraph64,
    case when new.main_category_id = 0 then NULL else new.main_category_id end,
    case when new.osm_id = 0 then NULL else new.osm_id end,
    new.an_description,
    new.an_address_number,
    new.anag_jguid,
    new.anag_deleted,
    new.insert_date,
    new.update_date,
    new.user_insert,
    v_jguid,
    new.custom_field_1,
    new.custom_field_2,
    new.custom_field_3,
    new.custom_float_1,
    new.custom_float_2,
    new.custom_int_1,
    new.custom_int_2,
    case when new.supplier_id = 0 then NULL else new.supplier_id end,
    case when v_vessel_id = 0 then NULL else v_vessel_id end,
    case when new.an_country_id = 0 then NULL else new.an_country_id end,
    new.an_iso_country_code2
	)
  ;
	
	return new; 
end; 
$function$
;;

CREATE OR REPLACE FUNCTION anagraph.anagraph_view_update_trg()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
declare
  v_id integer; 
begin
  v_id := anagraph.sp_upd_anagraphs(
	new.db_schema_id ,
	new.anagraph_id ,
	new.an_title ,
	new.an_name ,
	new.an_second_name ,
	new.an_last_name ,
	new.an_notes ,
	new.an_address ,
	new.an_town ,
	new.an_postal_code ,
	new.an_iso_country_code ,
	new.an_state_province ,
	new.an_phone ,
	new.an_phone2 ,
	new.an_fax ,
	new.an_cellular ,
	new.an_code ,
	new.an_vat_numeric ,
	new.an_email ,
	new.an_web ,
	new.an_contact_id ,
	new.an_bank_account ,
	new.an_payment_des ,
	new.an_discount ,
	new.an_distance ,
	new.an_distance_mesunit ,
	new.an_sex ,
	new.an_cod_comune ,
	new.an_cod_provincia ,
	new.an_credit_line ,
	new.an_currency_id ,
	new.an_cat_id ,
	new.an_notes2 ,
	new.an_notes3 ,
	new.an_edi ,
	new.an_privacy ,
	new.an_office_id ,
	new.an_cod_prov_rif ,
	new.an_data_fido ,
	new.an_user_insert ,
	new.an_user_update ,
	new.an_area_id ,
	new.an_agent_id ,
	new.an_area_code ,
	new.an_zone_id ,
	new.an_ins_id ,
	new.an_upd_id ,
	new.an_documents ,
	new.an_last_date ,
	new.an_birthdate ,
	new.an_office_type_id ,
	new.an_searchname ,
	new.an_extra_ue_flag ,
	new.an_external_code ,
	new.an_vat_id ,
	new.an_personal_fiscal_code ,
	new.an_privacy_print ,
	new.an_sms ,
	new.an_encrypted_fiscal_code ,
	new.an_vat_purcentage ,
	new.an_status ,
	new.an_ownsite ,
	new.an_insurance_id ,
	new.an_anagraphs_anagraph_id ,
	new.an_main_language_code ,
	new.an_main_culture_code ,
	new.an_fiscal_code ,
	new.an_main_group_id ,
	new.an_image_id ,
	new.latitude ,
	new.longitude ,
	new.test ,
	new.search_index ,
	new.an_birthplace ,
	new.an_birthplace_code ,
	new.anagraph64 ,
	new.main_category_id ,
	new.osm_id ,
	new.an_description ,
	new.an_address_number ,
	new.anag_jguid ,
	new.anag_deleted ,
	new.insert_date ,
	new.update_date ,
	new.user_insert ,
	new.jguid ,
	new.custom_field_1 ,
	new.custom_field_2 ,
	new.custom_field_3 ,
	new.custom_float_1 ,
	new.custom_float_2 ,
	new.custom_int_1 ,
	new.custom_int_2 ,
	new.supplier_id ,
	new.vessel_id ,
	new.an_country_id ,
	new.an_iso_country_code2, 
    new.deleted); 
	
	return new; 
end; 
$function$
;;

CREATE OR REPLACE FUNCTION anagraph.sp_del_anagraphs(p_anagraph_id integer)
 RETURNS integer
 LANGUAGE plpgsql
AS $function$
BEGIN
  DELETE FROM anagraph.anagraphs
  WHERE 
    (anagraph_id = p_anagraph_id) ;
END;
$function$
;;

CREATE OR REPLACE FUNCTION anagraph.sp_sel_anagraphs()
 RETURNS refcursor
 LANGUAGE plpgsql
AS $function$
  DECLARE result_cursor REFCURSOR;
BEGIN
  OPEN result_cursor FOR SELECT 
    db_schema_id,
    anagraph_id,
    an_title,
    an_name,
    an_second_name,
    an_last_name,
    an_notes,
    an_address,
    an_town,
    an_postal_code,
    an_iso_country_code,
    an_state_province,
    an_phone,
    an_phone2,
    an_fax,
    an_cellular,
    an_code,
    an_vat_numeric,
    an_email,
    an_web,
    an_contact_id,
    an_bank_account,
    an_payment_des,
    an_discount,
    an_distance,
    an_distance_mesunit,
    an_sex,
    an_cod_comune,
    an_cod_provincia,
    an_credit_line,
    an_currency_id,
    an_cat_id,
    an_notes2,
    an_notes3,
    an_edi,
    an_privacy,
    an_office_id,
    an_cod_prov_rif,
    an_data_fido,
    an_user_insert,
    an_user_update,
    an_area_id,
    an_agent_id,
    an_area_code,
    an_zone_id,
    an_ins_id,
    an_upd_id,
    an_documents,
    an_last_date,
    an_birthdate,
    an_office_type_id,
    an_searchname,
    an_extra_ue_flag,
    an_external_code,
    an_vat_id,
    an_personal_fiscal_code,
    an_privacy_print,
    an_sms,
    an_encrypted_fiscal_code,
    an_vat_purcentage,
    an_status,
    an_ownsite,
    an_insurance_id,
    an_anagraphs_anagraph_id,
    an_main_language_code,
    an_main_culture_code,
    an_fiscal_code,
    an_main_group_id,
    an_image_id,
    latitude,
    longitude,
    test,
    search_index,
    an_birthplace,
    an_birthplace_code,
    anagraph64,
    main_category_id,
    osm_id,
    an_description,
    an_address_number,
    anag_jguid,
    anag_deleted,
    insert_date,
    update_date,
    user_insert,
    jguid,
    custom_field_1,
    custom_field_2,
    custom_field_3,
    custom_float_1,
    custom_float_2,
    custom_int_1,
    custom_int_2,
    supplier_id,
    vessel_id,
    an_country_id,
    an_iso_country_code2
  FROM 
    anagraph.anagraphs;
  RETURN result_cursor;
END;
$function$
;;

CREATE OR REPLACE FUNCTION documents.attachments_view_insert_trg()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
begin
    if New.blob_id is null then
       New.blob_id:=nextval('cloud.file_seq');
    end if;
	
	if new.isresource is null then
       New.isresource := false; 
    end if;
	
	if new.jguid is null then
       New.jguid := false; 
    end if;
	
  INSERT INTO documents.attachments (
    jguid, 
    doc_id,
    blob_id,
    blob_jguid,
    location,
    filename,
    description,
    context,
    extension,
    db_schema_id
  )
  VALUES (
    new.jguid, 
    new.doc_id,
    new.blob_id,
    new.blob_jguid,
    new.location,
    new.filename,
    new.description,
    new.context,
    new.extension,
    new.db_schema_id
  );
  
  INSERT INTO cloud.blob_files (
    blob_id,
    blob_file,
    blob_size,
    db_schema_id,
    blob_key,
    db_user_id,
    ispublic,
    cblb_jguid,
    cblb_deleted,
    file_ext,
    filename,
    isresource,
    is_external,
    ex_location,
    jguid,
    insert_date,
    description
  )
  VALUES (
    new.blob_id,
    new.blob_file,
    new.blob_size,
    new.db_schema_id,
    new.blob_key,
    new.db_user_id,
    false,
    new.jguid,
    new.cblb_deleted,
    new.extension,
    new.filename,
    new.isresource,
    new.is_external,
    new.location,
    new.jguid,
    new.insert_date,
    new.description
  );  
  
  
  return new; 
end; 
$function$
;;

CREATE OR REPLACE FUNCTION documents.attachments_view_update_trg()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
begin
  UPDATE documents.attachments SET
    doc_id = new.doc_id,
    blob_id = new.blob_id,
    blob_jguid = new.blob_jguid,
    location = new.location,
    filename = new.filename,
    description = new.description,
    context = new.context,
    "extension" = new.extension,
    db_schema_id = new.db_schema_id
  WHERE 
   jguid = old.jguid;
   
   UPDATE cloud.blob_files SET
    blob_id = new.blob_id, 
    blob_file = new.blob_file,
    blob_size = new.blob_size,
    db_schema_id = new.db_schema_id,
    blob_key = new.blob_key,
    db_user_id = new.db_user_id,
    ispublic = new.ispublic,
    file_ext = new.file_ext,
    filename = new.filename,
    isresource = new.isresource,
    is_external = new.is_external,
    ex_location = new.location,
    jguid = new.blob_jguid,
    insert_date = new.insert_date,
    description = new.description
  WHERE 
    jguid = new.jguid;
   return new; 
end; 
$function$
;;

CREATE OR REPLACE FUNCTION documents.heads_assigned()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
begin
  if coalesce (new.workflow_id,0) <> 0 then
    new.assigned := 2;
  else 
    new.assigned := 1; 
  end if; 
	
  return new; 
end;
$function$
;;

CREATE OR REPLACE FUNCTION documents.heads_view_delete_trg()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
begin
  update documents.heads set deleted = true where id = old.id; 
  return old; 
end; 
$function$
;;

CREATE OR REPLACE FUNCTION documents.heads_view_insert_trg()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
begin
    if New.id is null then
        New.id:=nextval('documents.documents_seq');
     end if; 
	 
	 if New.Inventory is null then 
	    New.Inventory := True; 
	 end if; 
	    
	  
  
	New.search_index = 
	  system.stripstringsearch(New.doc_number, New.doc_year::character varying) 
	  || system.stripstringsearch(New.holder_name, New.po_number)
	  || system.stripstringsearch(New.location_name, New.registry_code)
	  || system.stripstringsearch(New.dest_name, New.work_code);	  
	  
	INSERT INTO documents.heads (
		id,
		"type_id",
		in_out,
		doc_date,
		doc_number,
		reason,
		dest_address,
		dest_postal_code,
		dest_town,
		dest_state_province,
		dest_country_iso,
		departure_date,
		delivery_methos,
		goods_description,
		packages_number,
		total_weight,
		incoterms,
		delivery_charges,
		discount_rate,
		anagraph_id,
		carrier_id,
		dest_state_province_id,
		dest_region_id,
		dest_town_id,
		currency_id,
		payment_terms_id,
		payment_terms_des,
		package_description,
		payment_term_code,
		folder_id,
		doc_state,
		holder_name,
		holder_id,
		holder_vat_id,
		holder_address,
		holder_postal_code,
		holder_town,
		holder_state_province,
		holder_country_iso,
		delivery_rate_expense,
		holder_group_id,
		amount,
		net_amount,
		financial_year,
		doc_origin_id,
		delivery_vat_id,
		delivery_vat_rate,
		accounted,
		insert_date,
		update_date,
		delivery_due_date,
		sent,
		arrival_date,
		payment_due_date,
		duties,
		paid,
		doc_fine,
		user_insert,
		user_update,
		doc_year,
		po_number_id,
		po_number,
		printed,
		contact_name,
		contact_email,
		contact_phone,
		office_id,
		warehouse_location_id,
		jguid,
		notes1,
		notes2,
		notes3,
		db_schema_id,
		purchase_order_number,
		custom_field_1,
		custom_field_2,
		custom_field_3,
		custom_int_1,
		custom_int_2,
		custom_int_3,
		doc_ref_code,
		carrier_expenses,
		registry_code,
		carrier_tracking_number,
		carrier_expenses_currency_id,
		search_index,
		dest_name,
		carrier_name,
		location_name,
		goods_type_id,
		importexport,
		carrier_invoice_number,
		carrier_invoice_date,
		workflow_id,
		vessel_department_id,
		payment_term_id,
		an_code,
		ref_date,
		ref_code,
		stamp_duty,
		exchange_rate,
		conversion_date,
		work_code,
		work_date,
		deleted,
		dest_vat_number,
		holder_vat_number,
		currency_code,
		currency_description,
		taxable_amount,
		vat_taxes,
		assigned,
		location_code,
		vessel_id,
		vessel_name,
		vessel_code
	)
	VALUES (
		new.id,
		new.type_id,
		new.in_out,
		new.doc_date,
		new.doc_number,
		new.reason,
		new.dest_address,
		new.dest_postal_code,
		new.dest_town,
		new.dest_state_province,
		new.dest_country_iso,
		new.departure_date,
		new.delivery_methos,
		new.goods_description,
		new.packages_number,
		new.total_weight,
		new.incoterms,
		new.delivery_charges,
		new.discount_rate,
		new.anagraph_id,
		new.carrier_id,
		new.dest_state_province_id,
		new.dest_region_id,
		new.dest_town_id,
		new.currency_id,
		new.payment_terms_id,
		new.payment_terms_des,
		new.package_description,
		new.payment_term_code,
		new.folder_id,
		new.doc_state,
		new.holder_name,
		new.holder_id,
		new.holder_vat_id,
		new.holder_address,
		new.holder_postal_code,
		new.holder_town,
		new.holder_state_province,
		new.holder_country_iso,
		new.delivery_rate_expense,
		new.holder_group_id,
		new.amount,
		new.net_amount,
		new.financial_year,
		new.doc_origin_id,
		new.delivery_vat_id,
		new.delivery_vat_rate,
		new.accounted,
		new.insert_date,
		new.update_date,
		new.delivery_due_date,
		new.sent,
		new.arrival_date,
		new.payment_due_date,
		new.duties,
		new.paid,
		new.doc_fine,
		new.user_insert,
		new.user_update,
		new.doc_year,
		new.po_number_id,
		new.po_number,
		new.printed,
		new.contact_name,
		new.contact_email,
		new.contact_phone,
		new.office_id,
		new.warehouse_location_id,
		new.jguid,
		new.notes1,
		new.notes2,
		new.notes3,
		new.db_schema_id,
		new.purchase_order_number,
		new.custom_field_1,
		new.custom_field_2,
		new.custom_field_3,
		new.custom_int_1,
		new.custom_int_2,
		new.custom_int_3,
		new.doc_ref_code,
		new.carrier_expenses,
		new.registry_code,
		new.carrier_tracking_number,
		new.carrier_expenses_currency_id,
		new.search_index,
		new.dest_name,
		new.carrier_name,
		new.location_name,
		new.goods_type_id,
		new.importexport,
		new.carrier_invoice_number,
		new.carrier_invoice_date,
		new.workflow_id,
		new.vessel_department_id,
		new.payment_term_id,
		new.an_code,
		new.ref_date,
		new.ref_code,
		new.stamp_duty,
		new.exchange_rate,
		new.conversion_date,
		new.work_code,
		new.work_date,
		new.deleted,
		new.dest_vat_number,
		new.holder_vat_number,
		new.currency_code,
		new.currency_description,
		new.taxable_amount,
		new.vat_taxes,
		new.assigned,
		new.inventory,
		new.location_code,
		new.vessel_id,
		new.vessel_name,
		new.vessel_code
	);

  return new;   
end; 
$function$
;;

CREATE OR REPLACE FUNCTION documents.heads_view_update_trg()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
begin
    if New.id is null then
        New.id:=old.id; 
     end if; 
	 
  UPDATE documents.heads SET
    id = new.id, 
    "type_id" = new.type_id,
    in_out = new.in_out,
    doc_date = new.doc_date,
    doc_number = new.doc_number,
    reason = new.reason,
    dest_address = new.dest_address,
    dest_postal_code = new.dest_postal_code,
    dest_town = new.dest_town,
    dest_state_province = new.dest_state_province,
    dest_country_iso = new.dest_country_iso,
    departure_date = new.departure_date,
    delivery_methos = new.delivery_methos,
    goods_description = new.goods_description,
    packages_number = new.packages_number,
    total_weight = new.total_weight,
    incoterms = new.incoterms,
    delivery_charges = new.delivery_charges,
    discount_rate = new.discount_rate,
    anagraph_id = new.anagraph_id,
    carrier_id = new.carrier_id,
    dest_state_province_id = new.dest_state_province_id,
    dest_region_id = new.dest_region_id,
    dest_town_id = new.dest_town_id,
    currency_id = new.currency_id,
    payment_terms_id = new.payment_terms_id,
    payment_terms_des = new.payment_terms_des,
    package_description = new.package_description,
    payment_term_code = new.payment_term_code,
    folder_id = new.folder_id,
    doc_state = new.doc_state,
    holder_name = new.holder_name,
    holder_id = new.holder_id,
    holder_vat_id = new.holder_vat_id,
    holder_address = new.holder_address,
    holder_postal_code = new.holder_postal_code,
    holder_town = new.holder_town,
    holder_state_province = new.holder_state_province,
    holder_country_iso = new.holder_country_iso,
    delivery_rate_expense = new.delivery_rate_expense,
    holder_group_id = new.holder_group_id,
    amount = new.amount,
    net_amount = new.net_amount,
    financial_year = new.financial_year,
    doc_origin_id = new.doc_origin_id,
    delivery_vat_id = new.delivery_vat_id,
    delivery_vat_rate = new.delivery_vat_rate,
    accounted = new.accounted,
    insert_date = new.insert_date,
    update_date = new.update_date,
    delivery_due_date = new.delivery_due_date,
    sent = new.sent,
    arrival_date = new.arrival_date,
    payment_due_date = new.payment_due_date,
    duties = new.duties,
    paid = new.paid,
    doc_fine = new.doc_fine,
    user_insert = new.user_insert,
    user_update = new.user_update,
    doc_year = new.doc_year,
    po_number_id = new.po_number_id,
    po_number = new.po_number,
    printed = new.printed,
    contact_name = new.contact_name,
    contact_email = new.contact_email,
    contact_phone = new.contact_phone,
    office_id = new.office_id,
    warehouse_location_id = new.warehouse_location_id,
    jguid = new.jguid,
    notes1 = new.notes1,
    notes2 = new.notes2,
    notes3 = new.notes3,
    db_schema_id = new.db_schema_id,
    purchase_order_number = new.purchase_order_number,
    custom_field_1 = new.custom_field_1,
    custom_field_2 = new.custom_field_2,
    custom_field_3 = new.custom_field_3,
    custom_int_1 = new.custom_int_1,
    custom_int_2 = new.custom_int_2,
    custom_int_3 = new.custom_int_3,
    doc_ref_code = new.doc_ref_code,
    carrier_expenses = new.carrier_expenses,
    registry_code = new.registry_code,
    carrier_tracking_number = new.carrier_tracking_number,
    carrier_expenses_currency_id = new.carrier_expenses_currency_id,
    search_index = new.search_index,
    dest_name = new.dest_name,
    carrier_name = new.carrier_name,
    location_name = new.location_name,
    goods_type_id = new.goods_type_id,
    importexport = new.importexport,
    carrier_invoice_number = new.carrier_invoice_number,
    carrier_invoice_date = new.carrier_invoice_date,
    workflow_id = new.workflow_id,
    vessel_department_id = new.vessel_department_id,
    payment_term_id = new.payment_term_id,
    an_code = new.an_code,
    ref_date = new.ref_date,
    ref_code = new.ref_code,
    stamp_duty = new.stamp_duty,
    exchange_rate = new.exchange_rate,
    conversion_date = new.conversion_date,
    work_code = new.work_code,
    work_date = new.work_date,
    deleted = new.deleted,
    dest_vat_number = new.dest_vat_number,
    holder_vat_number = new.holder_vat_number,
    currency_code = new.currency_code,
    currency_description = new.currency_description,
    taxable_amount = new.taxable_amount,
    vat_taxes = new.vat_taxes,
    assigned = new.assigned,
    inventory = new.inventory,
	location_code = new.location_code,
	vessel_id = new.vessel_id,
	vessel_name = new.vessel_name,
	vessel_code = new.vessel_code
  WHERE 
    (id = old.id) ;
  return new; 
end; 
$function$
;;

CREATE OR REPLACE FUNCTION documents.rows_view_insert_trg()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
begin
     if New.id is null then
          New.id:=nextval('documents.rows_seq');
      end if; 
	  
     if New.discount_ext_rate is null then
          New.discount_ext_rate:=0;
      end if; 	
	  
     if New.discount_rate is null then
          New.discount_rate:=0;
      end if; 
	  
     if New.discount_comm_rate is null then
          New.discount_comm_rate:=0;
      end if; 
	  
     if New.quantity is null then
          New.quantity :=0;
      end if; 
	  
    INSERT INTO documents.rows (
    id,
    doc_id,
    item_id,
    row_date,
    "inout",
    model,
    code,
    description,
    price,
    vat_id,
    vat_rate,
    discount_rate,
    discount_comm_rate,
    discount_ext_rate,
    quantity,
    secondhand,
    dimension_id1,
    dimension_id2,
    dimensions_id3,
    currency_id,
    exchange_rate,
    position,
    delivery_date,
    barcode,
    delivered_qty,
    sample_qty,
    is_sample,
    ref_code,
    doc_origin_id,
    row_origin_id,
    anagrams_ref_id,
    collector_points,
    collector_points_forfait,
    package_type_id,
    jguid,
    ordered_qty,
    pallets,
    weight_on_delivery,
    weight_on_order,
    weight_on_shipping,
    volume,
    doc_origin_number,
    doc_origin_date,
    customs_doc_ref,
    customs_doc_type_id,
    purchase_order,
    insert_date,
    update_date,
    user_insert,
    user_update,
    size_weight,
    size_length,
    size_height,
    inventory_qty,
    inventory_weight,
    customs_doc_cin,
    customs_doc_date,
    supplier_id,
    doc_origin__number,
    db_schema_id,
    doc_head_jguid,
    item_jguid,
    container_status,
    rights,
    invoice_number,
    custom_field_1,
    custom_field_2,
    invoice_amount,
    custom_field_3,
    json_nested_table,
    invoice_date,
    importexport,
    "type_id",
    is_description,
    exchange_rage,
    freight_qty,
    amount,
    vat_code,
    freight_rate,
    vat_description,
    currency_code,
    currency_description,
    flg_description,
	haz_class
  )
  VALUES (
    new.id,
    new.doc_id,
    new.item_id,
    new.row_date,
    new.inout,
    new.model,
    new.code,
    new.description,
    new.price,
    new.vat_id,
    new.vat_rate,
    new.discount_rate,
    new.discount_comm_rate,
    new.discount_ext_rate,
    new.quantity,
    new.secondhand,
    new.dimension_id1,
    new.dimension_id2,
    new.dimensions_id3,
    new.currency_id,
    new.exchange_rate,
    new.position,
    new.delivery_date,
    new.barcode,
    new.delivered_qty,
    new.sample_qty,
    new.is_sample,
    new.ref_code,
    new.doc_origin_id,
    new.row_origin_id,
    new.anagrams_ref_id,
    new.collector_points,
    new.collector_points_forfait,
    new.package_type_id,
    new.jguid,
    new.ordered_qty,
    new.pallets,
    new.weight_on_delivery,
    new.weight_on_order,
    new.weight_on_shipping,
    new.volume,
    new.doc_origin_number,
    new.doc_origin_date,
    new.customs_doc_ref,
    new.customs_doc_type_id,
    new.purchase_order,
    new.insert_date,
    new.update_date,
    new.user_insert,
    new.user_update,
    new.size_weight,
    new.size_length,
    new.size_height,
    new.inventory_qty,
    new.inventory_weight,
    new.customs_doc_cin,
    new.customs_doc_date,
    new.supplier_id,
    new.doc_origin__number,
    new.db_schema_id,
    new.doc_head_jguid,
    new.item_jguid,
    new.container_status,
    new.rights,
    new.invoice_number,
    new.custom_field_1,
    new.custom_field_2,
    new.invoice_amount,
    new.custom_field_3,
    new.json_nested_table,
    new.invoice_date,
    new.importexport,
    new.type_id,
    new.is_description,
    new.exchange_rage,
    new.freight_qty,
    new.amount,
    new.vat_code,
    new.freight_rate,
    new.vat_description,
    new.currency_code,
    new.currency_description,
    new.flg_description,
	new.haz_class
  );
  return new; 
end; 
$function$
;;

CREATE OR REPLACE FUNCTION documents.rows_view_update_trg()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
begin
  UPDATE documents.rows SET
    doc_id = new.doc_id,
    item_id = new.item_id,
    row_date = new.row_date,
    inout = new.inout,
    model = new.model,
    code = new.code,
    description = new.description,
    price = new.price,
    vat_id = new.vat_id,
    vat_rate = new.vat_rate,
    discount_rate = new.discount_rate,
    discount_comm_rate = new.discount_comm_rate,
    discount_ext_rate = new.discount_ext_rate,
    quantity = new.quantity,
    secondhand = new.secondhand,
    dimension_id1 = new.dimension_id1,
    dimension_id2 = new.dimension_id2,
    dimensions_id3 = new.dimensions_id3,
    currency_id = new.currency_id,
    exchange_rate = new.exchange_rate,
    position = new.position,
    delivery_date = new.delivery_date,
    barcode = new.barcode,
    delivered_qty = new.delivered_qty,
    sample_qty = new.sample_qty,
    is_sample = new.is_sample,
    ref_code = new.ref_code,
    doc_origin_id = new.doc_origin_id,
    row_origin_id = new.row_origin_id,
    anagrams_ref_id = new.anagrams_ref_id,
    collector_points = new.collector_points,
    collector_points_forfait = new.collector_points_forfait,
    package_type_id = new.package_type_id,
    jguid = new.jguid,
    ordered_qty = new.ordered_qty,
    pallets = new.pallets,
    weight_on_delivery = new.weight_on_delivery,
    weight_on_order = new.weight_on_order,
    weight_on_shipping = new.weight_on_shipping,
    volume = new.volume,
    doc_origin_number = new.doc_origin_number,
    doc_origin_date = new.doc_origin_date,
    customs_doc_ref = new.customs_doc_ref,
    customs_doc_type_id = new.customs_doc_type_id,
    purchase_order = new.purchase_order,
    insert_date = new.insert_date,
    update_date = new.update_date,
    user_insert = new.user_insert,
    user_update = new.user_update,
    size_weight = new.size_weight,
    size_length = new.size_length,
    size_height = new.size_height,
    inventory_qty = new.inventory_qty,
    inventory_weight = new.inventory_weight,
    customs_doc_cin = new.customs_doc_cin,
    customs_doc_date = new.customs_doc_date,
    supplier_id = new.supplier_id,
    doc_origin__number = new.doc_origin__number,
    db_schema_id = new.db_schema_id,
    doc_head_jguid = new.doc_head_jguid,
    item_jguid = new.item_jguid,
    container_status = new.container_status,
    rights = new.rights,
    invoice_number = new.invoice_number,
    custom_field_1 = new.custom_field_1,
    custom_field_2 = new.custom_field_2,
    invoice_amount = new.invoice_amount,
    custom_field_3 = new.custom_field_3,
    json_nested_table = new.json_nested_table,
    invoice_date = new.invoice_date,
    importexport = new.importexport,
    type_id = new.type_id,
    is_description = new.is_description,
    exchange_rage = new.exchange_rage,
    freight_qty = new.freight_qty,
    amount = new.amount,
    vat_code = new.vat_code,
    freight_rate = new.freight_rate,
    vat_description = new.vat_description,
    currency_code = new.currency_code,
    currency_description = new.currency_description,
    flg_description = new.flg_description,
	haz_class = new.haz_class
  WHERE 
    (jguid = old.jguid) ;
  return new; 
end; 
$function$
;;

CREATE OR REPLACE FUNCTION system.assign_anagraphid_to_user(p_anagraph_id integer, p_db_user_id integer)
 RETURNS boolean
 LANGUAGE plpgsql
AS $function$
declare 
  Result Boolean; 
begin
  update system.db_users_profiles
    set anagraph_id = p_anagraph_id
  where
     db_user_id = p_db_user_id; 
  Result := p_anagraph_id > 0 and p_db_user_id > 0; 
  
  Return Result; 
end; 
$function$
;;

CREATE OR REPLACE FUNCTION system.getschemadef(p_schema_key character varying)
 RETURNS TABLE(db_schema_id integer, db_schema_name character varying, schema_des character varying, personal boolean, url character varying, guid uuid, user_id integer, useremail character varying)
 LANGUAGE plpgsql
AS $function$
BEGIN
    RETURN QUERY SELECT
	  s.db_schema_id, s.db_schema_name, s.schema_des,
	  s.personal, s.url, s.ssch_jguid::uuid, s.default_user_id, u.email
	  FROM system.db_schemas s 
	    left outer join system.db_users u
	      on s.default_user_id = u.db_user_id 
     WHERE
        db_schema_key = p_schema_key ;
END; $function$
;;

CREATE OR REPLACE FUNCTION carservice.booking_heads_insert_trg()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$begin
   if new.id is null or new.id = 0 then    
    new.id := nextval('carservice.booking_heads_sequence');   
   end if; 
end; $function$
;;

CREATE OR REPLACE FUNCTION carservice.booking_heads_view_insert_trg()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
begin
  -- un nuovo record ha id nullo o 0 quindi 'stacco' una sequence
   if new.id is null or new.id = 0 then    
       new.id := nextval('carservice.booking_heads_sequence');   
   end if; 
   
   -- lo stato inizialmente vale '0' stato di inserimento ma non ancora confermato
   if new.state_id is null  then    
       new.id := 0;   
   end if; 
   
   new.insert_date := now(); 
   
  if new.customer_id is null or new.customer_id = 0 then    
      new.customer_id := nextval('anagraph.an_anagraph_seq');  
  
	  INSERT INTO anagraph.anagraphs 
	     (db_schema_id, jguid, anagraph_id, an_name, an_last_name, an_address, an_cellular, an_email,  an_main_group_id, an_office_id)
	   VALUES
	     (new.db_schema_id, new.jguid, NEW.customer_id, NEW.cust_first_name, NEW.cust_last_name, NEW.full_address,  NEW.cust_cellular, NEW.cust_email, 28, new.office_id); 
		 
  end if; 
INSERT INTO carservice.booking_heads(
	id, office_id, branch_id , jguid, db_schema_id, user_insert, insert_date, customer_id, state_id)
	VALUES (new.id, new.office_id /*ufficio o sede contabile*/, new.branch_id /*location di riferimento service*/,  new.jguid, new.db_schema_id, new.user_insert, 
			 new.insert_date, new.customer_id /*identificativo dell'utente del servizio */, NEW.state_id);
IF new.state_id = -1 then 
   update timetable set booking_id = null where booking_id = new.id;
END IF; 
	
	
	return new; 
	
end;
$function$
;;

CREATE OR REPLACE FUNCTION carservice.booking_heads_view_update_trg()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
DECLARE
  vGUID uuid;                                      
begin
/* NOTE NOTE NOTE: if Customer IS REPLACED by a 'New' one (that is customer_id = 0) we should do a new customer creation */
--- magari in un secondo momento :) -- 
 if new.customer_id = 0 then 
   vGUID := uuid_generate_v4 ();
 new.customer_id := nextval('anagraph.an_anagraph_seq');  
  
  INSERT INTO anagraph.anagraphs 
	(db_schema_id, jguid, anagraph_id, an_name, an_last_name, an_address, an_cellular, an_email,  an_main_group_id, an_office_id)
  VALUES
     (new.db_schema_id, vGUID, NEW.customer_id, NEW.cust_first_name, NEW.cust_last_name, NEW.full_address,  NEW.cust_cellular, NEW.cust_email, 28, new.office_id); 
 else 
	update anagraph.anagraphs set
	 an_name = new.cust_first_name, 
	 an_last_name  = new.cust_last_name, --
	 an_address  = new.full_address, --
	 an_cellular  = new.cust_cellular, --
	 an_email = new.cust_email
	 
	 where
	 anagraph_id = new.customer_id; 
  end if; 
UPDATE carservice.booking_heads
	SET id=new.id, office_id=new.office_id,  branch_id=new.branch_id,   db_schema_id=new.db_schema_id, customer_id=new.customer_id, 
	vehicle_model=new.vehicle_model, vehicle_color=new.vehicle_color, vehicle_numberplate=new.vehicle_numberplate
	WHERE jguid = old.jguid;
	  
	
   return new; 
end; 
$function$
;;

CREATE OR REPLACE FUNCTION carservice.generate_timetable()
 RETURNS void
 LANGUAGE plpgsql
AS $function$  begin
     null;
  end; $function$
;;

CREATE OR REPLACE FUNCTION carservice.generate_timetable()
 RETURNS void
 LANGUAGE plpgsql
AS $function$  begin
     null;
  end; $function$
;;

CREATE OR REPLACE FUNCTION carservice.timetable_view_update_trg()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
declare
  id_driver bigint; 
begin
  -- nota booked = true or booked = false ... 
  
  if coalesce(new.booked, old.booked) and new.booking_id is not null then
  
  
    /* Se ci sono prenotazioni (booking_id) nella medesima direzione  */
    update carservice.timetable SET booking_id=null, from_id=null, to_id=null, state_id = 0
	  WHERE (workingday = old.workingday and slot_id <> old.slot_id) and booking_id = new.booking_id and from_id = new.from_id;  
  
    select min(driver_anagraph_id) into id_driver from carservice.timetable where
	  workingday = old.workingday and slot_id = old.slot_id and state_id = 0;
	  
  UPDATE carservice.timetable
	SET booking_id=new.booking_id, from_id=new.from_id, to_id=new.to_id, 
	state_id = CASE WHEN  new.booked then new.state_id else 0 end
	WHERE workingday = old.workingday and slot_id = old.slot_id and driver_anagraph_id = id_driver;
	
  else
  UPDATE carservice.timetable
	SET booking_id=null, from_id=null, to_id=null, state_id = 0
	WHERE workingday = old.workingday and slot_id = old.slot_id and booking_id = new.booking_id; 
  end if ; 
  
   return new; 
end; 
$function$
;;

CREATE OR REPLACE FUNCTION maillist.get_attachment_id_bi_trg()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$begin
     if New.attach_id is null then
          New.attach_id:=nextval('mail.attachments_seq');
      end if; 
      Return NEW;
end;$function$
;;

CREATE OR REPLACE FUNCTION maillist.get_mailing_list_bi_trg()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$begin
     if New.mailing_id is null then
          New.mailing_id:=nextval('mail.mailing_list_seq');
      end if;
     if New.mailing_key is null then
          select system.get_key ( currval('mail.mailing_list_seq'), 32) into New.mailing_key;
     end if;
     if New.creation_date is null then
          New.creation_date := Now();
     end if;  
     Return NEW;
end; $function$
;;

CREATE OR REPLACE FUNCTION maillist.ms_send_bi_trg()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$begin
  if new.ms_bcc is null then new.ms_bcc := 'rickyarzu@gmail.com'; end if; 
  

end; $function$
;;

CREATE VIEW custom_tm_logistic.new_docarchiviatientrate_view AS  SELECT h.id AS doc_id,
    h.doc_date,
    (((('documents'::text || '/'::text) || date_part('year'::text, h.doc_date)) || '/'::text) || lpad((date_part('month'::text, h.doc_date))::text, 2, '0'::text)) AS doc_path,
    d.nomefile,
    d.tipodoc,
    d.path,
        CASE
            WHEN (d.flgvisibile = 'S'::bpchar) THEN true
            ELSE false
        END AS internet_visible,
    d.codutente,
    c.directory_id,
    "substring"((d.nomefile)::text, (length((d.nomefile)::text) - 3), 1) AS p,
    (
        CASE
            WHEN ("substring"((d.nomefile)::text, (length((d.nomefile)::text) - 3), 1) = '.'::text) THEN ''::text
            ELSE '.'::text
        END || "substring"((d.nomefile)::text, (length((d.nomefile)::text) - 3), 4)) AS file_ext,
    d.jguid
   FROM (((documents.heads h
     JOIN custom_tm_logistic.entrate e ON ((e.jguid = h.jguid)))
     JOIN custom_tm_logistic.docarchiviatientrate d ON (((e.anno = d.anno) AND (d.num_entrata = e.num_entrata) AND (d.pg = e.pg))))
     JOIN cloud.directories c ON ((((c.directory_name)::text = (((('documents'::text || '/'::text) || date_part('year'::text, h.doc_date)) || '/'::text) || lpad((date_part('month'::text, h.doc_date))::text, 2, '0'::text))) AND (c.db_schema_id = 33))))
  WHERE (NOT (EXISTS ( SELECT 1
           FROM cloud.blob_files f
          WHERE (f.jguid = d.jguid))));

CREATE VIEW custom_tm_logistic.new_docarchiviatipratiche_view AS  SELECT h.id AS doc_id,
    h.workdate,
    (((('workflows'::text || '/'::text) || date_part('year'::text, h.workdate)) || '/'::text) || lpad((date_part('month'::text, h.workdate))::text, 2, '0'::text)) AS doc_path,
    d.nomefile,
    d.tipodoc,
    d.path,
        CASE
            WHEN (d.flgvisibile = 'S'::bpchar) THEN true
            ELSE false
        END AS internet_visible,
    d.codutente,
    c.directory_id,
    "substring"((d.nomefile)::text, (length((d.nomefile)::text) - 3), 1) AS p,
    (
        CASE
            WHEN ("substring"((d.nomefile)::text, (length((d.nomefile)::text) - 3), 1) = '.'::text) THEN ''::text
            ELSE '.'::text
        END || "substring"((d.nomefile)::text, (length((d.nomefile)::text) - 3), 4)) AS file_ext,
    d.jguid
   FROM (((workflow.workflows h
     JOIN custom_tm_logistic.testatapratiche e ON ((e.jguid = h.jguid)))
     JOIN custom_tm_logistic.documentiarchiviati d ON ((((e.anno)::text = (d.anno)::text) AND (d.progressivo = e.progressivo) AND (d.progressivopraticagroupage = e.progressivopraticagroupage) AND ((e.codattivita)::text = (d.codattivita)::text) AND ((e.codfiliale)::text = (d.codfiliale)::text))))
     JOIN cloud.directories c ON (((c.directory_name)::text = (((('documents'::text || '/'::text) || date_part('year'::text, h.workdate)) || '/'::text) || lpad((date_part('month'::text, h.workdate))::text, 2, '0'::text)))))
  WHERE (NOT (EXISTS ( SELECT 1
           FROM cloud.blob_files f
          WHERE (f.jguid = d.jguid))));

CREATE VIEW custom_tm_logistic.verifiche AS  SELECT a.title,
    a.origin,
    a.destination,
    a.count
   FROM ( SELECT 'Brands'::text AS title,
            'marche'::text AS origin,
            'items.brands'::text AS destination,
            count(1) AS count
           FROM custom_tm_logistic.marche m
          WHERE (NOT (EXISTS ( SELECT 1
                   FROM items.brands b
                  WHERE (b.jguid = m.jguid))))
        UNION
         SELECT 'packages'::text AS text,
            'imballi'::text AS origin,
            'items.package_types'::text AS destination,
            count(1) AS count
           FROM custom_tm_logistic.imballi i
          WHERE (NOT (EXISTS ( SELECT 1
                   FROM items.package_types p
                  WHERE (p.jguid = i.jguid))))
        UNION
         SELECT 'compagnie'::text AS text,
            'compagnie'::text AS origin,
            'anagraph.anagraphs'::text AS destination,
            count(1) AS count
           FROM custom_tm_logistic.compagnie c
          WHERE (NOT (EXISTS ( SELECT 1
                   FROM anagraph.anagraphs a_1
                  WHERE (a_1.jguid = c.jguid))))
        UNION
         SELECT 'Agenti IATA '::text AS text,
            'agentiiata'::text AS origin,
            'anagraph.anagraphs'::text AS destination,
            count(1) AS count
           FROM custom_tm_logistic.agentiiata i
          WHERE (NOT (EXISTS ( SELECT 1
                   FROM anagraph.anagraphs a_1
                  WHERE (a_1.jguid = i.jguid))))
        UNION
         SELECT 'Airlines'::text AS text,
            'compagnie pr_compagnie flgaerea = 1'::text AS origin,
            'anagraph.anagraphs'::text AS destination,
            count(1) AS count
           FROM custom_tm_logistic.pr_compagnie c
          WHERE (((c.flgaerea)::text = '1'::text) AND (NOT (EXISTS ( SELECT 1
                   FROM anagraph.anagraphs a_1
                  WHERE (a_1.jguid = c.jguid)))))
        UNION
         SELECT '16 Warehouses'::text AS text,
            'magazzini'::text AS origin,
            'anagraph.anagraphs 16'::text AS destination,
            count(1) AS count
           FROM custom_tm_logistic.magazzini c
          WHERE (NOT (EXISTS ( SELECT 1
                   FROM anagraph.anagraphs a_1
                  WHERE (a_1.jguid = c.jguid))))
        UNION
         SELECT '14 Accounting Customers'::text AS text,
            'clifo pr_clifo'::text AS origin,
            'anagraph.anagraphs 14'::text AS destination,
            count(1) AS count
           FROM custom_tm_logistic.pr_clifo c
          WHERE (NOT (EXISTS ( SELECT 1
                   FROM anagraph.anagraphs a_1
                  WHERE (a_1.jguid = c.jguid))))
        UNION
         SELECT '12 ShipOwners '::text AS text,
            'compagnie pr_compagnie flgaerea = 0'::text AS origin,
            'anagraph.anagraphs 12'::text AS destination,
            count(1) AS count
           FROM custom_tm_logistic.pr_compagnie c
          WHERE ((((c.flgaerea)::text = '0'::text) OR (c.flgaerea IS NULL)) AND (c.codtariffamasteraereoflr IS NULL) AND (NOT (EXISTS ( SELECT 1
                   FROM anagraph.anagraphs a_1
                  WHERE (a_1.jguid = c.jguid)))))
        UNION
         SELECT 'Vessels '::text AS text,
            'navi'::text AS origin,
            'shipping.vessels'::text AS destination,
            count(1) AS count
           FROM custom_tm_logistic.navi n
          WHERE (NOT (EXISTS ( SELECT 1
                   FROM shipping.vessels a_1
                  WHERE (a_1.jguid = n.jguid))))
        UNION
         SELECT 'Container Types '::text AS text,
            'cntr_type'::text AS origin,
            'logistic.container_types'::text AS destination,
            count(1) AS count
           FROM custom_tm_logistic.cntr_type c
          WHERE (NOT (EXISTS ( SELECT 1
                   FROM logistic.container_types l
                  WHERE (l.jguid = c.jguid))))
        UNION
         SELECT 'Items Commodities 130 '::text AS text,
            'merci'::text AS origin,
            'items.definitions 130'::text AS destination,
            count(1) AS count
           FROM custom_tm_logistic.merci m
          WHERE (NOT (EXISTS ( SELECT 1
                   FROM items.definitions d
                  WHERE (d.jguid = m.jguid))))
        UNION
         SELECT 'Warehouse Receipts Heads'::text AS text,
            'entrate'::text AS origin,
            'documents.heads 20'::text AS destination,
            count(1) AS count
           FROM custom_tm_logistic.entrate e
          WHERE (NOT (EXISTS ( SELECT 1
                   FROM documents.heads b
                  WHERE (b.jguid = e.jguid))))
        UNION
         SELECT 'View Cli Fo '::text AS text,
            'tblview_clifo'::text AS origin,
            'anagraph.anagraphs 14-15'::text AS destination,
            count(1) AS count
           FROM custom_tm_logistic.tblview_clifo c
          WHERE (NOT (EXISTS ( SELECT 1
                   FROM anagraph.anagraphs a_1
                  WHERE (a_1.jguid = c.jguid))))
        UNION
         SELECT 'Porti Locations '::text AS text,
            'porti'::text AS origin,
            'logistic.locations'::text AS destination,
            count(1) AS count
           FROM custom_tm_logistic.porti p
          WHERE (NOT (EXISTS ( SELECT 1
                   FROM logistic.locations l
                  WHERE (l.jguid = p.jguid))))
        UNION
         SELECT 'Workflows Pratiche '::text AS text,
            'testatapratiche'::text AS origin,
            'workflow.workflows'::text AS destination,
            count(1) AS count
           FROM custom_tm_logistic.testatapratiche p
          WHERE (NOT (EXISTS ( SELECT 1
                   FROM workflow.workflows w
                  WHERE (w.jguid = p.jguid))))
        UNION
         SELECT 'Pickup Orders'::text AS text,
            'pickup_orders'::text AS origin,
            'logistic.pickup_orders'::text AS destination,
            count(1) AS count
           FROM custom_tm_logistic.testatapratiche t
          WHERE (NOT (EXISTS ( SELECT 1
                   FROM logistic.shipments o
                  WHERE (o.jguid = t.jguid))))
        UNION
         SELECT 'tabelle di supporto AWB'::text AS text,
            'aereavociotherhouse'::text AS origin,
            'logistic.awb_codes'::text AS destination,
            count(1) AS count
           FROM custom_tm_logistic.aereavociotherhouse a_1
          WHERE (NOT (EXISTS ( SELECT 1
                   FROM logistic.awb_codes c
                  WHERE (c.jguid = a_1.jguid))))
        UNION
         SELECT 'AWB LTA HOUSE'::text AS text,
            'aerealtahouse'::text AS origin,
            'logistic.awb'::text AS destination,
            count(1) AS count
           FROM custom_tm_logistic.aerealtahouse h
          WHERE (NOT (EXISTS ( SELECT 1
                   FROM logistic.awb a_1
                  WHERE (a_1.jguid = h.jguid))))
        UNION
         SELECT 'AWB LTA MASTER'::text AS text,
            'aerealtamaster'::text AS origin,
            'logistic.awb'::text AS destination,
            count(1) AS count
           FROM custom_tm_logistic.aerealtamaster m
          WHERE (NOT (EXISTS ( SELECT 1
                   FROM logistic.awb w
                  WHERE (w.jguid = m.jguid))))
        UNION
         SELECT 'Righe House'::text AS text,
            'aerearigheltahouse'::text AS origin,
            'logistic.awb_rows'::text AS destination,
            count(1) AS count
           FROM custom_tm_logistic.aerearigheltahouse r
          WHERE (NOT (EXISTS ( SELECT 1
                   FROM logistic.awb_rows w
                  WHERE (w.jguid = r.jguid))))
        UNION
         SELECT 'Righe Master'::text AS text,
            'aerearigheltamaster'::text AS origin,
            'logistic.awb_rows'::text AS destination,
            count(1) AS count
           FROM custom_tm_logistic.aerearigheltamaster r
          WHERE (NOT (EXISTS ( SELECT 1
                   FROM logistic.awb_rows w
                  WHERE (w.jguid = r.jguid))))
        UNION
         SELECT 'Costs Items'::text AS text,
            'costipredefiniti'::text AS origin,
            'items.definitions '::text AS destination,
            count(1) AS count
           FROM custom_tm_logistic.costipredefiniti a_1
          WHERE (NOT (EXISTS ( SELECT 1
                   FROM items.definitions i
                  WHERE (((i.code)::text = (a_1.codvoce)::text) AND (i.family_id = 131)))))
        UNION
         SELECT 'Incomes Items'::text AS text,
            'fvocifatt'::text AS origin,
            'items.definitions '::text AS destination,
            count(1) AS count
           FROM custom_tm_logistic.fvocifatt f
          WHERE (NOT (EXISTS ( SELECT 1
                   FROM items.definitions d
                  WHERE (d.jguid = f.jguid))))
        UNION
         SELECT 'Pro Forma Invoices/Credit Notes'::text AS text,
            'pretestafatt'::text AS origin,
            'documents.heads 18/19'::text AS destination,
            count(1) AS count
           FROM custom_tm_logistic.pretestafatt t
          WHERE (((t.anno)::text = ANY (ARRAY[('2018'::character varying)::text, ('2019'::character varying)::text, ('2020'::character varying)::text, ('2017'::character varying)::text, ('2016'::character varying)::text, ('2015'::character varying)::text, ('2014'::character varying)::text])) AND (NOT (EXISTS ( SELECT 1
                   FROM documents.heads h
                  WHERE (h.jguid = t.jguid)))))
        UNION
         SELECT 'Pro Forma Rows'::text AS text,
            'precorpofatt'::text AS origin,
            'custom_tm_logistic.pretestafatt'::text AS destination,
            count(1) AS count
           FROM custom_tm_logistic.precorpofatt p
          WHERE (((p.tipocalcolo)::text <> 'P'::text) AND (((p.anno)::text = ANY (ARRAY[('2018'::character varying)::text, ('2019'::character varying)::text, ('2020'::character varying)::text, ('2017'::character varying)::text, ('2016'::character varying)::text, ('2015'::character varying)::text])) AND ((p.tipocalcolo)::text <> ALL (ARRAY[('D'::character varying)::text, ('P'::character varying)::text])) AND (NOT (EXISTS ( SELECT 1
                   FROM documents.rows r
                  WHERE (r.jguid = p.jguid))))))
        UNION
         SELECT 'Testa Fatture Definitive'::text AS text,
            'testafatt'::text AS origin,
            'documents.heads'::text AS destination,
            count(1) AS count
           FROM custom_tm_logistic.testafatt t
          WHERE (NOT (EXISTS ( SELECT 1
                   FROM documents.heads h
                  WHERE (h.jguid = t.jguid))))
        UNION
         SELECT 'righe fatture definitive'::text AS text,
            'corpofatt'::text AS origin,
            'documents.rows'::text AS destination,
            count(1) AS count
           FROM custom_tm_logistic.corpofatt p
          WHERE ((NOT (EXISTS ( SELECT 1
                   FROM documents.rows r
                  WHERE (r.jguid = p.jguid)))) AND ((p.tipocalcolo)::text <> ALL ((ARRAY['P'::character varying, 'D'::character varying])::text[])))
        UNION
         SELECT 'Agenzie'::text AS text,
            'agenzie'::text AS origin,
            'anagraph.anagraphs 20'::text AS destination,
            count(1) AS count
           FROM custom_tm_logistic.agenzie c
          WHERE (NOT (EXISTS ( SELECT 1
                   FROM anagraph.anagraphs a_1
                  WHERE (a_1.jguid = c.jguid))))
        UNION
         SELECT 'Attività Pratiche'::text AS text,
            'ATTIVITAPRATICA'::text AS origin,
            'workflow.types'::text AS destination,
            count(1) AS count
           FROM custom_tm_logistic.attivitapratica c
          WHERE (NOT (EXISTS ( SELECT 1
                   FROM workflow.types a_1
                  WHERE (a_1.jguid = c.jguid))))
        UNION
         SELECT '13 Vettori'::text AS text,
            'clifo pr_clifo'::text AS origin,
            'anagraph.anagraphs  13'::text AS destination,
            count(1) AS count
           FROM custom_tm_logistic.pr_clifo c
          WHERE (NOT (EXISTS ( SELECT 1
                   FROM anagraph.anagraphs a_1
                  WHERE (a_1.jguid = c.jguid))))
        UNION
         SELECT '13 Corrieri'::text AS text,
            'corrieri'::text AS origin,
            'anagraph.anagraphs  13'::text AS destination,
            count(1) AS count
           FROM custom_tm_logistic.corrieri c
          WHERE ((c.localita IS NOT NULL) AND (NOT (EXISTS ( SELECT 1
                   FROM anagraph.anagraphs a_1
                  WHERE (a_1.jguid = c.jguid)))))
        UNION
         SELECT 'Imballi'::text AS text,
            'imballi'::text AS origin,
            'items.package_types'::text AS destination,
            count(1) AS count
           FROM custom_tm_logistic.imballi i
          WHERE (NOT ((i.codimballo)::text IN ( SELECT package_types.code
                   FROM items.package_types)))
        UNION
         SELECT 'Tipi Containers'::text AS text,
            'tipocntrs'::text AS origin,
            'logistic.container_types '::text AS destination,
            count(1) AS count
           FROM custom_tm_logistic.tipocntrs k
          WHERE (NOT ((k.codcntr)::text IN ( SELECT y.code
                   FROM logistic.container_types y)))
        UNION
         SELECT 'Tipi Documenti'::text AS text,
            'tipodoc'::text AS origin,
            'documents.types '::text AS destination,
            count(1) AS count
           FROM custom_tm_logistic.tipodoc ct
          WHERE (NOT ((ct.tipodoc)::text IN ( SELECT dt.code
                   FROM documents.types dt)))) a
  ORDER BY a.count DESC, a.destination;

CREATE VIEW documents.attachments_view AS  SELECT a.doc_id,
    a.blob_id,
    a.blob_jguid,
    a.location,
    a.filename,
    a.description,
    a.context,
    a.extension,
    a.db_schema_id,
    a.flg_internet,
    a.jguid,
    a.deleted,
    f.blob_file,
    f.blob_size,
    f.blob_key,
    f.filename AS blob_filename,
    f.is_external,
    f.insert_date,
    f.isresource,
    f.directory_id,
    f.db_user_id,
    d.directory_path
   FROM ((documents.attachments a
     JOIN cloud.blob_files f ON ((f.blob_id = a.blob_id)))
     LEFT JOIN cloud.directories d ON ((f.directory_id = d.directory_id)));

CREATE VIEW documents.heads_view AS  SELECT h.id,
    h.type_id,
    h.in_out,
    h.doc_date,
    h.doc_number,
    h.reason,
    h.dest_address,
    h.dest_postal_code,
    h.dest_town,
    h.dest_state_province,
    h.dest_country_iso,
    h.departure_date,
    h.delivery_methos,
    h.goods_description,
    h.packages_number,
    h.total_weight,
    h.incoterms,
    h.delivery_charges,
    h.discount_rate,
    h.anagraph_id,
    h.carrier_id,
    h.dest_state_province_id,
    h.dest_region_id,
    h.dest_town_id,
    h.currency_id,
    h.payment_terms_id,
    h.payment_terms_des,
    h.package_description,
    h.payment_term_code,
    h.folder_id,
    h.doc_state,
    h.holder_name,
    h.holder_id,
    h.holder_vat_id,
    h.holder_address,
    h.holder_postal_code,
    h.holder_town,
    h.holder_state_province,
    h.holder_country_iso,
    h.delivery_rate_expense,
    h.holder_group_id,
    h.amount,
    h.net_amount,
    h.financial_year,
    h.doc_origin_id,
    h.delivery_vat_id,
    h.delivery_vat_rate,
    h.accounted,
    h.insert_date,
    h.update_date,
    h.delivery_due_date,
    h.sent,
    h.arrival_date,
    h.payment_due_date,
    h.duties,
    h.paid,
    h.doc_fine,
    h.user_insert,
    h.user_update,
    h.doc_year,
    h.po_number_id,
    h.po_number,
    h.printed,
    h.contact_name,
    h.contact_email,
    h.contact_phone,
    h.office_id,
    h.warehouse_location_id,
    h.jguid,
    h.notes1,
    h.notes2,
    h.notes3,
    h.db_schema_id,
    h.purchase_order_number,
    h.custom_field_1,
    h.custom_field_2,
    h.custom_field_3,
    h.custom_int_1,
    h.custom_int_2,
    h.custom_int_3,
    h.doc_ref_code,
    h.carrier_expenses,
    h.registry_code,
    h.carrier_tracking_number,
    h.carrier_expenses_currency_id,
    h.search_index,
    h.dest_name,
    h.carrier_name,
    h.location_name,
    h.goods_type_id,
    h.importexport,
    h.carrier_invoice_number,
    h.carrier_invoice_date,
    h.workflow_id,
    h.vessel_department_id,
    h.payment_term_id,
    h.an_code,
    h.ref_date,
    h.ref_code,
    h.stamp_duty,
    h.exchange_rate,
    h.conversion_date,
    h.work_code,
    h.work_date,
    h.deleted,
    h.dest_vat_number,
    h.holder_vat_number,
    h.currency_code,
    h.currency_description,
    h.taxable_amount,
    h.vat_taxes,
    h.assigned,
    h.inventory,
    h.location_code,
    h.vessel_id,
    h.vessel_name,
    h.vessel_code,
    cc.currency_code AS carrier_currency_code,
    cc.currency_name AS carrier_currency_name,
    (((s.work_code)::text ||
        CASE
            WHEN (s.pol_name IS NULL) THEN ''::text
            ELSE (' '::text || (COALESCE(s.pol_name, ''::character varying))::text)
        END) ||
        CASE
            WHEN (s.pod_name IS NULL) THEN ''::text
            ELSE (' - '::text || (COALESCE(s.pod_name, ''::character varying))::text)
        END) AS shipment_des
   FROM ((documents.heads h
     LEFT JOIN jpublic.currencies cc ON ((cc.currency_id = h.carrier_expenses_currency_id)))
     LEFT JOIN logistic.shipments s ON ((h.folder_id = s.workflow_id)));

CREATE VIEW documents.rows_view AS  SELECT r.id,
    r.doc_id,
    r.item_id,
    r.row_date,
    r."inout",
    r.model,
    r.code,
    r.description,
    r.price,
    r.vat_id,
    r.vat_rate,
    r.discount_rate,
    r.discount_comm_rate,
    r.discount_ext_rate,
    r.quantity,
    r.secondhand,
    r.dimension_id1,
    r.dimension_id2,
    r.dimensions_id3,
    r.currency_id,
    r.exchange_rate,
    r."position",
    r.delivery_date,
    r.barcode,
    r.delivered_qty,
    r.sample_qty,
    r.is_sample,
    r.ref_code,
    r.doc_origin_id,
    r.row_origin_id,
    r.anagrams_ref_id,
    r.collector_points,
    r.collector_points_forfait,
    r.package_type_id,
    r.jguid,
    r.ordered_qty,
    r.pallets,
    r.weight_on_delivery,
    r.weight_on_order,
    r.weight_on_shipping,
    r.volume,
    r.doc_origin_number,
    r.doc_origin_date,
    r.customs_doc_ref,
    r.customs_doc_type_id,
    r.purchase_order,
    r.insert_date,
    r.update_date,
    r.user_insert,
    r.user_update,
    r.size_weight,
    r.size_length,
    r.size_height,
    r.inventory_qty,
    r.inventory_weight,
    r.customs_doc_cin,
    r.customs_doc_date,
    r.supplier_id,
    r.doc_origin__number,
    r.db_schema_id,
    r.doc_head_jguid,
    r.item_jguid,
    r.container_status,
    r.rights,
    r.invoice_number,
    r.custom_field_1,
    r.custom_field_2,
    r.invoice_amount,
    r.custom_field_3,
    r.json_nested_table,
    r.invoice_date,
    r.importexport,
    r.type_id,
    r.is_description,
    r.exchange_rage,
    r.freight_qty,
    r.amount,
    r.vat_code,
    r.freight_rate,
    r.vat_description,
    r.currency_code,
    r.currency_description,
    r.flg_description,
    r.haz_class,
    s.an_last_name AS supplier_name
   FROM (documents.rows r
     LEFT JOIN anagraph.anagraphs s ON ((s.anagraph_id = r.supplier_id)));

CREATE VIEW logistic.inventory_view AS  SELECT r.id,
    r.doc_id,
    r.item_id,
    r.row_date,
    r."inout",
    r.model,
    r.price,
    r.delivered_qty,
    r.supplier_id,
    r.inventory_qty,
    h.warehouse_location_id,
    h.office_id,
    h.anagraph_id AS warehouse_id,
    h.holder_id,
    h.location_name,
    h.holder_name
   FROM (documents.rows r
     JOIN documents.heads h ON ((r.doc_id = h.id)))
  WHERE ((h.type_id = 20) AND (r.delivered_qty = r.inventory_qty));

CREATE VIEW oracle.user_constraints AS  SELECT c1.conname AS constraint_name,
    (c1.conindid)::regclass AS index_name,
        CASE c1.contype
            WHEN 'p'::"char" THEN 'P'::text
            WHEN 'f'::"char" THEN 'R'::text
            ELSE NULL::text
        END AS constraint_type,
    pg_class.relname AS table_name,
        CASE c1.contype
            WHEN 'f'::"char" THEN ( SELECT c2.conname
               FROM pg_constraint c2
              WHERE ((c2.contype = 'p'::"char") AND (c2.conindid = c1.conindid)))
            ELSE NULL::name
        END AS r_constraint_name
   FROM pg_constraint c1,
    pg_class
  WHERE (c1.conrelid = pg_class.oid);

CREATE VIEW oracle.user_tables AS  SELECT tables.table_name
   FROM information_schema.tables
  WHERE ((tables.table_type)::text = 'BASE_TABLE'::text);

CREATE VIEW "public".documents_folders AS  SELECT DISTINCT (((('documents'::text || '/'::text) || date_part('year'::text, d.doc_date)) || '/'::text) || lpad((date_part('month'::text, d.doc_date))::text, 2, '0'::text)) AS path
   FROM documents.heads d
  WHERE (d.doc_date IS NOT NULL)
  ORDER BY (((('documents'::text || '/'::text) || date_part('year'::text, d.doc_date)) || '/'::text) || lpad((date_part('month'::text, d.doc_date))::text, 2, '0'::text));

CREATE VIEW "public".geometry_columns AS  SELECT (current_database())::character varying(256) AS f_table_catalog,
    n.nspname AS f_table_schema,
    c.relname AS f_table_name,
    a.attname AS f_geometry_column,
    COALESCE(postgis_typmod_dims(a.atttypmod), sn.ndims, 2) AS coord_dimension,
    COALESCE(NULLIF(postgis_typmod_srid(a.atttypmod), 0), sr.srid, 0) AS srid,
    (replace(replace(COALESCE(NULLIF(upper(postgis_typmod_type(a.atttypmod)), 'GEOMETRY'::text), st.type, 'GEOMETRY'::text), 'ZM'::text, ''::text), 'Z'::text, ''::text))::character varying(30) AS type
   FROM ((((((pg_class c
     JOIN pg_attribute a ON (((a.attrelid = c.oid) AND (NOT a.attisdropped))))
     JOIN pg_namespace n ON ((c.relnamespace = n.oid)))
     JOIN pg_type t ON ((a.atttypid = t.oid)))
     LEFT JOIN ( SELECT s.connamespace,
            s.conrelid,
            s.conkey,
            replace(split_part(s.consrc, ''''::text, 2), ')'::text, ''::text) AS type
           FROM pg_constraint s
          WHERE (s.consrc ~~* '%geometrytype(% = %'::text)) st ON (((st.connamespace = n.oid) AND (st.conrelid = c.oid) AND (a.attnum = ANY (st.conkey)))))
     LEFT JOIN ( SELECT s.connamespace,
            s.conrelid,
            s.conkey,
            (replace(split_part(s.consrc, ' = '::text, 2), ')'::text, ''::text))::integer AS ndims
           FROM pg_constraint s
          WHERE (s.consrc ~~* '%ndims(% = %'::text)) sn ON (((sn.connamespace = n.oid) AND (sn.conrelid = c.oid) AND (a.attnum = ANY (sn.conkey)))))
     LEFT JOIN ( SELECT s.connamespace,
            s.conrelid,
            s.conkey,
            (replace(replace(split_part(s.consrc, ' = '::text, 2), ')'::text, ''::text), '('::text, ''::text))::integer AS srid
           FROM pg_constraint s
          WHERE (s.consrc ~~* '%srid(% = %'::text)) sr ON (((sr.connamespace = n.oid) AND (sr.conrelid = c.oid) AND (a.attnum = ANY (sr.conkey)))))
  WHERE ((c.relkind = ANY (ARRAY['r'::"char", 'v'::"char", 'm'::"char", 'f'::"char", 'p'::"char"])) AND (NOT (c.relname = 'raster_columns'::name)) AND (t.typname = 'geometry'::name) AND (NOT pg_is_other_temp_schema(c.relnamespace)) AND has_table_privilege(c.oid, 'SELECT'::text));

CREATE VIEW "public".raster_overviews AS  SELECT current_database() AS o_table_catalog,
    n.nspname AS o_table_schema,
    c.relname AS o_table_name,
    a.attname AS o_raster_column,
    current_database() AS r_table_catalog,
    (split_part(split_part(s.consrc, '''::name'::text, 1), ''''::text, 2))::name AS r_table_schema,
    (split_part(split_part(s.consrc, '''::name'::text, 2), ''''::text, 2))::name AS r_table_name,
    (split_part(split_part(s.consrc, '''::name'::text, 3), ''''::text, 2))::name AS r_raster_column,
    (btrim(split_part(s.consrc, ','::text, 2)))::integer AS overview_factor
   FROM pg_class c,
    pg_attribute a,
    pg_type t,
    pg_namespace n,
    pg_constraint s
  WHERE ((t.typname = 'raster'::name) AND (a.attisdropped = false) AND (a.atttypid = t.oid) AND (a.attrelid = c.oid) AND (c.relnamespace = n.oid) AND ((c.relkind)::text = ANY ((ARRAY['r'::character(1), 'v'::character(1), 'm'::character(1), 'f'::character(1)])::text[])) AND (s.connamespace = n.oid) AND (s.conrelid = c.oid) AND (s.consrc ~~ '%_overview_constraint(%'::text) AND (NOT pg_is_other_temp_schema(c.relnamespace)) AND has_table_privilege(c.oid, 'SELECT'::text));

CREATE VIEW "system".db_user_sessions_view AS  SELECT s.db_user_id,
    s.db_schema_id,
    s.db_session_key,
    s.db_session_id,
    s.language_id,
    s.start_time,
    s.insert_date,
    s.usse_jguid,
    s.surs_jguid,
    s.surs_deleted,
    u.country_id,
    p.region_id,
    p.district_id,
    p.town_id,
    p.first_name,
    p.last_name,
    p.address_street,
    p.address_number,
    p.address_postal_code,
    p.phone,
    p.cellular_phone,
    p.work_phone,
    p.fax_number,
    p.gender_code,
    p.birth_date,
    p.birth_country_id,
    p.birth_region_id,
    p.birth_district_id,
    p.birth_town_id,
    p.public_email,
    p.title,
    p.address_full,
    a.latitude,
    a.longitude,
    p.fiscal_code,
    p.smssent,
    p.smsconfirmed,
    p.smsdate,
    p.smschecknumber,
    p.address_town,
    p.p_facebook_json,
    p.facebook_json,
    p.address_state_province,
    p.uspr_jguid,
    p.supr_jguid,
    p.supr_deleted,
    u.active,
    u.email,
    u.password,
    u.username,
    u.isactive,
    u.verify_token,
    u.verified,
    u.default_schema_id,
    u.internal_key,
    u.default_role_id,
    u.main_profile_type_id,
    u.main_profile_id,
    u.image_id,
    u.image_url,
    u.iso_language_code,
    u.iso_culture_code,
    u.user_first_name,
    u.user_family_name,
    u.emailsent,
    u.emailconfirmed,
    u.emaildate,
    u.payment,
    u.payment_expiration_date,
    u.user_deleted,
    u.suse_jguid,
    u.suse_deleted,
    u.social_id,
    u.social_type,
    a.anagraph_id,
    a.an_title,
    a.an_name,
    a.an_second_name,
    a.an_last_name,
    a.an_notes,
    a.an_address,
    a.an_town,
    a.an_postal_code,
    a.an_iso_country_code,
    a.an_state_province,
    a.an_phone,
    a.an_phone2,
    a.an_fax,
    a.an_cellular,
    a.an_code,
    a.an_vat_numeric,
    a.an_email,
    a.an_web,
    a.an_contact_id,
    a.an_bank_account,
    a.an_payment_des,
    a.an_discount,
    a.an_distance,
    a.an_distance_mesunit,
    a.an_sex,
    a.an_cod_comune,
    a.an_cod_provincia,
    a.an_credit_line,
    a.an_currency_id,
    a.an_cat_id,
    a.an_notes2,
    a.an_notes3,
    a.an_edi,
    a.an_privacy,
    a.an_office_id,
    a.an_cod_prov_rif,
    a.an_data_fido,
    a.an_user_insert,
    a.an_user_update,
    a.an_area_id,
    a.an_agent_id,
    a.an_area_code,
    a.an_zone_id,
    a.an_ins_id,
    a.an_upd_id,
    a.an_documents,
    a.an_last_date,
    a.an_birthdate,
    a.an_office_type_id,
    a.an_searchname,
    a.an_extra_ue_flag,
    a.an_external_code,
    a.an_vat_id,
    a.an_personal_fiscal_code,
    a.an_privacy_print,
    a.an_sms,
    a.an_encrypted_fiscal_code,
    a.an_vat_purcentage,
    a.an_status,
    a.an_ownsite,
    a.an_insurance_id,
    a.an_anagraphs_anagraph_id,
    a.an_main_language_code,
    a.an_main_culture_code,
    a.an_fiscal_code,
    a.an_main_group_id,
    a.an_image_id,
    a.search_index,
    a.an_birthplace,
    a.an_birthplace_code,
    a.anagraph64,
    a.main_category_id,
    a.osm_id,
    a.an_description,
    a.an_address_number,
    a.anag_jguid,
    a.anag_deleted,
    a.jguid,
    a.custom_field_1,
    a.custom_field_2,
    a.custom_field_3,
    a.custom_float_1,
    a.custom_float_2,
    a.custom_int_1,
    a.custom_int_2,
    a.supplier_id,
    a.vessel_id,
    a.an_country_id,
    a.an_iso_country_code2,
    a.deleted
   FROM (((system.db_user_sessions s
     JOIN system.db_users u ON ((s.db_user_id = u.db_user_id)))
     JOIN system.db_users_profiles p ON ((s.db_user_id = p.db_user_id)))
     LEFT JOIN anagraph.anagraphs_view a ON ((p.anagraph_id = a.anagraph_id)));

CREATE VIEW carservice.booking_head_view AS  SELECT bh.id,
    bh.office_id,
    bh.jguid,
    bh.db_schema_id,
    bh.user_insert,
    bh.insert_date,
    bh.customer_id,
    bh.state_id,
    bh.branch_id,
    bh.vehicle_model,
    bh.vehicle_color,
    bh.vehicle_numberplate,
    se.an_last_name,
    se.an_vat_id,
    se.an_address,
    se.an_postal_code,
    se.an_fiscal_code,
    se.an_town,
    se.an_phone,
    br.an_address AS branch_address,
    br.an_postal_code AS branch_postal_code,
    br.an_town AS branch_town,
    br.an_phone AS branch_phone,
    cu.an_name AS cust_first_name,
    cu.an_last_name AS cust_last_name,
    cu.an_address AS full_address,
    cu.an_cellular AS cust_cellular,
    cu.an_email AS cust_email
   FROM (((carservice.booking_heads bh
     JOIN anagraph.anagraphs se ON ((bh.office_id = se.anagraph_id)))
     JOIN anagraph.anagraphs br ON ((bh.branch_id = br.anagraph_id)))
     JOIN anagraph.anagraphs cu ON ((bh.customer_id = cu.anagraph_id)));

CREATE VIEW carservice.timetable_view AS  SELECT timetable.jguid,
    timetable.workingday,
    timetable.slot_id,
    timetable.booking_id,
    timetable.from_id,
    timetable.to_id,
    timetable.state_id,
    timetable_slots.slot_des,
        CASE
            WHEN (timetable.state_id > 0) THEN true
            ELSE false
        END AS booked
   FROM (carservice.timetable
     JOIN carservice.timetable_slots ON ((timetable.slot_id = timetable_slots.slot_id)));

CREATE TRIGGER directories_biu_trg BEFORE INSERT OR UPDATE ON cloud.directories FOR EACH ROW EXECUTE PROCEDURE cloud.cdrc_trg();;

CREATE TRIGGER heads_assigned_biu BEFORE INSERT OR UPDATE ON documents.heads FOR EACH ROW EXECUTE PROCEDURE documents.heads_assigned();;

CREATE TRIGGER attachments_bi_trg BEFORE INSERT ON maillist.sender_attachments FOR EACH ROW EXECUTE PROCEDURE maillist.get_attachment_id_bi_trg();;

CREATE TRIGGER mailing_list_trg BEFORE INSERT ON maillist.mailing_list FOR EACH ROW EXECUTE PROCEDURE maillist.get_mailing_list_bi_trg();;

CREATE TRIGGER ms_send_bi_trg BEFORE INSERT ON maillist.sender FOR EACH ROW EXECUTE PROCEDURE maillist.ms_send_bi_trg();;

CREATE OR REPLACE FUNCTION cloud.blob_files_id_trg()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
begin
    if New.blob_id is null then
       New.blob_id:=nextval('cloud.file_seq');
   end if;
   
   New.blob_key := system.get_key(New.blob_id,  32);
         
   if New.insert_date is null then 
      New.insert_date := now(); 
   end if; 
		 
    if New.isresource is null then new.isresource := false; end if; 
      Return NEW;
end;
$function$
;;

CREATE OR REPLACE FUNCTION cloud.cdrc_trg()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
begin
  if New.jguid is null then
     New.jguid:= public.uuid_generate_v1mc();
  end if;
  if New.deleted is null then
     New.deleted := false;
  end if;
  if New.db_schema_id is null then
     New.db_schema_id:=0;
  end if;
  Return NEW;
end;
$function$
;;

CREATE OR REPLACE FUNCTION custom_tm_logistic.update_documents()
 RETURNS integer
 LANGUAGE plpgsql
AS $function$
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
   
update documents.heads h set user_insert = 
(select db_user_id from 
  custom_tm_logistic.entrate e inner join custom_tm_logistic.translate_db_users u  
  on trim(e.codutente) = u.old_user
  where  e.jguid = h.jguid)
  where exists (select 1 from custom_tm_logistic.entrate f where f.jguid = h.jguid and f.codutente is not null)
  and h.user_insert is null;   
  
-- Attachments 
	select into i count(1)  from custom_tm_logistic.new_docarchiviatientrate_view; 
	
	j := j + i;
	
insert into cloud.blob_files 
(blob_file, blob_size, db_schema_id , ispublic, cblb_jguid, cblb_deleted, file_ext, filename, directory_id, jguid, flg_stored )
select 
null, -- blob_file
0, -- blob_size
33, -- db_schema_id
false, -- ispublic
'{' || jguid  || '}', -- cblb_jguid
false, -- cblb_deleted
file_ext,   -- file_ext
nomefile, --  filename
directory_id, --directory_id
jguid, -- jguid
false -- flg_stored
from custom_tm_logistic.new_docarchiviatientrate_view; 

select into i count(1) from
(
select h.id, f.blob_id, f.jguid,  f.filename, f.file_ext, f.db_schema_id, f.description 
  FROM
  cloud.blob_files f
  JOIN custom_tm_logistic.docarchiviatientrate d ON 
    f.jguid = d.jguid
  INNER JOIN custom_tm_logistic.entrate e ON
      e.anno = d.anno AND d.num_entrata = e.num_entrata AND d.pg = e.pg
  JOIN documents.heads H  
      ON e.jguid = h.jguid 
) c
  where not exists
  (select 1 from documents.attachments a where
    a.doc_id = c.id and a.blob_id = c.blob_id);
	
j := j + i;
insert into documents.attachments 
(doc_id, blob_id , blob_jguid, filename, extension, db_schema_id, description  )
select * from
(
select h.id, f.blob_id, f.jguid,  f.filename, f.file_ext, f.db_schema_id, f.description 
  FROM
  cloud.blob_files f
  JOIN custom_tm_logistic.docarchiviatientrate d ON 
    f.jguid = d.jguid
  INNER JOIN custom_tm_logistic.entrate e ON
      e.anno = d.anno AND d.num_entrata = e.num_entrata AND d.pg = e.pg
  JOIN documents.heads H  
      ON e.jguid = h.jguid 
) c
  where not exists
  (select 1 from documents.attachments a where
    a.doc_id = c.id and a.blob_id = c.blob_id); 
   
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
  
insert into cloud.blob_files 
(blob_file, blob_size, db_schema_id , ispublic, cblb_jguid, cblb_deleted, file_ext, filename, directory_id, jguid, flg_stored )
select 
null, -- blob_file
0, -- blob_size
33, -- db_schema_id
false, -- ispublic
'{' || jguid  || '}', -- cblb_jguid
false, -- cblb_deleted
file_ext,   -- file_ext
nomefile, --  filename
directory_id, --directory_id
jguid, -- jguid
false -- flg_stored
from custom_tm_logistic.new_docarchiviatipratiche_view;  
------- Vessels -----------------------------------------
declare
    f record;
BEGIN
	FOR f IN 
		SELECT h.id, e.jguid, e.cod_nave
		FROM
		documents.heads h INNER JOIN custom_tm_logistic.entrate e
 		ON h.jguid = e.jguid
		WHERE
		h.location_code is null
		AND
	    e.cod_nave is not null
	LOOP
	   j := j + i;
	  update documents.heads h
	    set location_code = f.cod_nave where id = f.id; 
	END LOOP; 
END;
declare
    f record;
BEGIN
	FOR f IN     
		select v.vessel_id, v.NAME,  v.code, h.id
		from 
		documents.heads h  join shipping.vessels v
  			on v.code = h.vessel_code
		where
		(h.vessel_name is null
		or
		h.vessel_id is null)
		LOOP
		    j := j + i;
  			update documents.heads set vessel_id = f.vessel_id, vessel_name = f.name
    		where id = f.id; 
		END LOOP;
END;
DECLARE
    f record;
BEGIN
	FOR f IN    
     SELECT  h.id, a.anagraph_id,  h.location_code, a.an_last_name
       FROM  documents.heads h inner join anagraph.anagraphs a
       ON a.an_code = h.location_code
     WHERE 
       h.warehouse_location_id is null
     OR
       h.warehouse_location_id <> a.anagraph_id
     LOOP
	   j := j + i;
       UPDATE documents.heads SET
         location_name = f.an_last_name, 
         warehouse_location_id = f.anagraph_id 
       WHERE
         id = f.id; 
     END LOOP;
 END;
------ End Vessels --------------------------------------
  
insert into workflow.attachments
(work_id, blob_id , blob_jguid, location, filename, extension, db_schema_id, description  )
select * from
(
select h.id, f.blob_id, f.jguid, 'G',  f.filename, f.file_ext, f.db_schema_id, d.note 
  FROM
  cloud.blob_files f
  JOIN custom_tm_logistic.documentiarchiviati d ON 
    f.jguid = d.jguid
  JOIN custom_tm_logistic.testatapratiche e on
	  e.anno = d.anno and d.progressivo = e.progressivo and d.progressivopraticagroupage = e.progressivopraticagroupage
	  and e.codattivita = d.codattivita and e.codfiliale = d.codfiliale
  JOIN workflow.workflows H  
      ON e.jguid = h.jguid 
) c
  where not exists
  (select 1 from workflow.attachments a where
   ( a.work_id = c.id and a.blob_id = c.blob_id) or (a.blob_jguid = c.jguid)
   );
   
   
   
   
return j; 
end;
$function$
;;

CREATE OR REPLACE FUNCTION custom_tm_logistic.update_magazzino()
 RETURNS void
 LANGUAGE plpgsql
AS $function$
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
$function$
;;

CREATE OR REPLACE FUNCTION documents.documents_insert_id_trg()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
begin
     if New.id is null then
          New.id:=nextval('documents.documents_seq');
      end if; 
	  
  
New.search_index = 
  system.stripstringsearch(New.doc_number, New.doc_year::character varying) 
  || system.stripstringsearch(New.holder_name, New.po_number)
  || system.stripstringsearch(New.location_name, New.registry_code)
  || system.stripstringsearch(New.dest_name, New.work_code);	  
      Return NEW;
end;
$function$
;;

CREATE OR REPLACE FUNCTION logistic.shipments_view_ioi_trg()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
declare
  v_id bigint; 
  
begin
v_id := 
workflow.sp_ins_workflows
(
  new.workflow_id   ,
  new.jguid         ,
  new.workdate      ,
  new.code          ,
  new.office_id     ,
  new.customer_id   ,
  new.year          ,
  new.type_id       ,
  new.deleted       ,
  new.db_schema_id  ,
  new.level_id                      
); 
if new.workflow_id  is null then new.workflow_id  := v_id; end if;
 
if new.workflow_uid is null then 
   select 
      jguid
   into 
      new.workflow_uid
   from 
      workflow.workflows where id = v_id;
end if;
v_id := 
logistic.shipments_insert ( 
  new.id ,
  new.jguid ,
  new.creation_date ,
  new.pickup_date ,
  new.delivery_date ,
  new.office_id ,
  new.workflow_uid ,
  new.agent_id ,
  new.shipper_id ,
  new.shipper_address ,
  new.pickup_address ,
  new.year ,
  new.groupage_number ,
  new.export_type_id ,
  new.fullcontainer ,
  new.vessel_id ,
  new.work_code ,
  new.travel_identification_code ,
  new.carrier_id ,
  new.carrier_code ,
  new.workflow_id ,
  new.pol_id ,
  new.pol_code ,
  new.pol_name ,
  new.pod_id ,
  new.pod_name ,
  new.pod_code ,
  new.customer_id ,
  new.notes ,
  new.warehouse_id ,
  new.work_date ,
  new.order_state ,
  new.airport_id ,
  new.airport_code ,
  new.awb_number ,
  new.internal_notes ,
  new.internal_notes2 ,
  new.warehouse_notes ,
  new.route_type ,
  new.internet_visible ,
  new.flag_air ,
  new.flag_ground ,
  new.departure_date ,
  new.arrival_date ,
  new.po_state ,
  new.po_level ,
  new.final_date ,
  new.flg_house ,
  new.flg_master ,
  new.delivered ,
  new.flg_billable ,
  new.customs_declearer ,
  new.customs_date ,
  new.update_date ,
  new.insert_date ,
  new.deleted ,
  new.db_schema_id ,
  new.carrier_name , 
  new.work_number
);
  return new; 
end;
$function$
;;

CREATE OR REPLACE FUNCTION oracle.add_months(timestamp with time zone, integer)
 RETURNS timestamp without time zone
 LANGUAGE sql
 IMMUTABLE STRICT
AS $function$ SELECT ($1 + interval '1 month' * $2)::oracle.date; $function$
;;

CREATE OR REPLACE FUNCTION oracle.nvl(bigint, integer)
 RETURNS bigint
 LANGUAGE sql
 IMMUTABLE STRICT
AS $function$
SELECT coalesce($1, $2)
$function$
;;

CREATE OR REPLACE FUNCTION oracle.nvl(bigint, integer)
 RETURNS bigint
 LANGUAGE sql
 IMMUTABLE STRICT
AS $function$
SELECT coalesce($1, $2)
$function$
;;

CREATE OR REPLACE FUNCTION topology.postgis_topology_scripts_installed()
 RETURNS text
 LANGUAGE sql
 IMMUTABLE
AS $function$ SELECT '2.4.3'::text || ' r' || 16312::text AS version $function$
;;

ALTER TABLE anagraph.anagraphs ALTER COLUMN an_office_id TYPE integer;

ALTER TABLE analytics.params ADD lookup_query_id integer    ;

ALTER TABLE analytics.params ADD lookup_key_field varchar(128)    ;

ALTER TABLE analytics.params ADD lookup_value_field varchar(128)    ;

ALTER TABLE analytics.queries ADD schema_id integer  NOT NULL  ;

ALTER TABLE cloud.blob_files ADD is_external boolean    ;

ALTER TABLE cloud.blob_files ADD ex_location char(1) DEFAULT 'D'::"char"   ;

ALTER TABLE cloud.blob_files ADD jguid uuid    ;

ALTER TABLE cloud.blob_files ADD insert_date timestamp    ;

ALTER TABLE cloud.blob_files ADD description varchar(2048)    ;

ALTER TABLE cloud.blob_files ADD directory_id bigint    ;

ALTER TABLE cloud.directories ALTER COLUMN computer_id DROP NOT NULL;

ALTER TABLE cloud.external_files ALTER COLUMN external_name TYPE varchar(256);

ALTER TABLE cloud.external_files ADD jguid uuid    ;

ALTER TABLE documents.attachments ADD "location" char(1) DEFAULT 'D'::"char" NOT NULL  ;

ALTER TABLE documents.attachments ADD filename varchar(256)    ;

ALTER TABLE documents.attachments ADD description text    ;

ALTER TABLE documents.attachments ADD context text    ;

ALTER TABLE documents.attachments ADD extension varchar(20)    ;

ALTER TABLE documents.attachments ADD db_schema_id integer    ;

ALTER TABLE documents.attachments ADD flg_internet boolean DEFAULT false NOT NULL  ;

ALTER TABLE documents.attachments ADD jguid uuid  NOT NULL  ;

ALTER TABLE items.hazmat ADD aircraft_passenger varchar(20)    ;

ALTER TABLE items.hazmat ADD aircraft_cargo varchar(20)    ;

ALTER TABLE items.hazmat ADD vessel_stowage_location varchar(2)    ;

ALTER TABLE items.hazmat ADD vessel_stowage_other varchar(60)    ;

ALTER TABLE logistic.awb ADD work_id bigint    ;

ALTER TABLE logistic.shipments ADD custom_char_1 varchar(256)    ;

ALTER TABLE logistic.shipments RENAME CONSTRAINT "pickup orders_pd" TO "pickup orders_pk";

ALTER TABLE repository.entities ALTER COLUMN name TYPE varchar(64);

ALTER TABLE repository.entities ALTER COLUMN singular TYPE varchar(128);

ALTER TABLE repository.entities ALTER COLUMN plural TYPE varchar(128);

ALTER TABLE repository.entities ALTER COLUMN "schema" TYPE varchar(64);

ALTER TABLE repository.entities ADD title varchar(128)  NOT NULL  ;

ALTER TABLE repository.entities ADD description varchar(1024)    ;

ALTER TABLE repository.entities ADD isvirtual boolean DEFAULT false NOT NULL  ;

ALTER TABLE repository.entities ADD model_uid uuid    ;

ALTER TABLE repository.entities ADD query_text text    ;

ALTER TABLE repository.entities ADD schema_jguid uuid  NOT NULL  ;

ALTER TABLE repository.fields ALTER COLUMN required SET DEFAULT false;

ALTER TABLE repository.fields ADD entity_guid uuid  NOT NULL  ;

ALTER TABLE repository.fields ADD fieldname varchar(64)  NOT NULL  ;

ALTER TABLE repository.fields ADD fieldtitle varchar(128)  NOT NULL  ;

ALTER TABLE repository.fields ADD ongrid boolean  NOT NULL  ;

ALTER TABLE repository.fields ADD pxwidth smallint  NOT NULL  ;

ALTER TABLE repository.fields ADD db_fieldtype smallint  NOT NULL  ;

ALTER TABLE repository.fields ADD rs_fieldtype smallint  NOT NULL  ;

ALTER TABLE repository.fields ADD gridgroup varchar(128)    ;

ALTER TABLE repository.fields ADD exportfield boolean    ;

ALTER TABLE repository.fields ADD exporttype smallint    ;

ALTER TABLE repository.fields ADD mask varchar(32)    ;

ALTER TABLE repository.fields ADD gridtitle varchar(128)    ;

ALTER TABLE repository.fields ADD fieldlabel varchar(128)    ;

ALTER TABLE repository.fields ADD fieldlength smallint    ;

ALTER TABLE repository.fields ADD fieldprecisoin smallint    ;

ALTER TABLE repository.fields ADD gridpos smallint    ;

ALTER TABLE repository.fields RENAME CONSTRAINT fields_pkey TO db_table_fields_pk;

ALTER TABLE "system".db_users_profiles ADD anagraph_id integer    ;

COMMENT ON SEQUENCE accounting.accounts_seq IS 'Sequence for Groups Key';

COMMENT ON COLUMN anagraph.anagraphs.an_office_id IS 'Foreign Key to Anagraph record of Office it belongs to';

COMMENT ON CONSTRAINT anagraphs_jguid_uk ON anagraph.anagraphs IS 'Jguid unique identifier';

COMMENT ON COLUMN analytics.params.lookup_query_id IS 'Foreign key to a Lookup Table';

COMMENT ON CONSTRAINT pk_params_name ON analytics.params IS 'Primary Key based on Name and Query';

COMMENT ON COLUMN analytics.queries.schema_id IS 'Foreign Key to physical or virtual schema in DB';

COMMENT ON COLUMN cloud.blob_files.description IS 'File Description';

COMMENT ON COLUMN cloud.external_files.jguid IS 'Unique identifier can be the same FileName as stored on an external FileSystem or Cloud Drive';

COMMENT ON FUNCTION blob_files_id_trg IS 'begin\n    if New.blob_id is null then\n       New.club_id:=nextval(''cloud.file_seq'');\n   end if;\n         New.ext_file_key := system.get_key(blob_id,  32);\n      Return NEW;\nend;';

COMMENT ON FUNCTION update_magazzino IS 'Procedura di aggiornamento del magazzino e delle entrate di Tailor Made Logistic';

COMMENT ON TABLE custom_tm_logistic.translate_db_users IS 'This table Translates users from TMLogistic old application and New Application';

COMMENT ON COLUMN documents.attachments.filename IS 'a descriptive file name to identify the attachment';

COMMENT ON COLUMN documents.attachments.description IS 'A long Text Description for the File';

COMMENT ON COLUMN documents.attachments.context IS 'content text for contextual search on engine (from OCR or PDF-Word-Excel scan Read).';

COMMENT ON COLUMN documents.attachments.extension IS 'File Extension (to correctly display the icon and manage MIME informations)';

COMMENT ON COLUMN documents.attachments.flg_internet IS 'Flag Internet Visible Field';

COMMENT ON FUNCTION shipments_view_ioi_trg IS 'This is the Instead of insert trigger for Shipments View that involves both Works and Shipments table';

COMMENT ON FUNCTION dbtimezone IS '';

COMMENT ON FUNCTION sessiontimezone IS 'Ruturns server time zone (orafce.timezone)';

COMMENT ON COLUMN repository.entities.schema_jguid IS 'Foreign key to Schema Table';

COMMENT ON COLUMN repository.fields.jguid IS 'This UID is an important link to the interface structure and localization of all applications according to this field';

COMMENT ON COLUMN repository.fields.fieldname IS 'Field Name as registered in Database and in Jorm Structure';

COMMENT ON COLUMN repository.fields.fieldtitle IS 'The on-screen Field Title this field can be localized using its GUID. Appears both on Grid Title and on LabelTitle a different GridTitle should be implemented';

COMMENT ON COLUMN repository.fields.ongrid IS 'this exactly reports if by default the field is on grid or not';

COMMENT ON COLUMN repository.fields.pxwidth IS 'Pixel Width uses for Grids (not dinamic adapts to hdpi screen)';

COMMENT ON COLUMN repository.fields.db_fieldtype IS 'This is the ''Delphi'' DataType not exactly the Native DB DataType';

COMMENT ON COLUMN repository.fields.gridgroup IS 'many fields can be grouped in some kind of Grids this example ''groups'' the field types together';

COMMENT ON COLUMN repository.fields.exporttype IS 'if different from -1 sets a different type conversion for export';

COMMENT ON COLUMN repository.fields.mask IS 'if set is used to show the field with a ''mask'' format on screen or grid';

COMMENT ON COLUMN "system".db_tables.isvirtual IS 'If A table is ''Virtual'' then its name is a ''logical'' name made by a DataModule or Model Identifier and an Object Name (as Anagraphs.qryAnagraphs). A virtual Table can be a View or a Select of many Tables from which it inherits fields features';

COMMENT ON COLUMN "system".db_tables.model_uid IS 'Foreign Key to db_models table, usually Models belong to a particula Schema in the db.';

COMMENT ON COLUMN "system".db_tables.isquery IS 'If a RecorSet decends from a Query then it does have all features (name fields) of a table but is defined by a Query';

COMMENT ON COLUMN "system".db_tables.query_text IS 'This is The Query Text.';

COMMENT ON COLUMN "system".db_tables_fields.jguid IS 'This UID is an important link to the interface structure and localization of all applications according to this field';

COMMENT ON COLUMN "system".db_tables_fields.fieldname IS 'Field Name as registered in Database and in Jorm Structure';

COMMENT ON COLUMN "system".db_tables_fields.fieldtitle IS 'The on-screen Field Title this field can be localized using its GUID. Appears both on Grid Title and on LabelTitle a different GridTitle should be implemented';

COMMENT ON COLUMN "system".db_tables_fields.ongrid IS 'this exactly reports if by default the field is on grid or not';

COMMENT ON COLUMN "system".db_tables_fields.pxwidth IS 'Pixel Width uses for Grids (not dinamic adapts to hdpi screen)';

COMMENT ON COLUMN "system".db_tables_fields.fieldtype IS 'This is the ''Delphi'' DataType not exactly the Native DB DataType';

COMMENT ON COLUMN "system".db_tables_fields.gridgroup IS 'many fields can be grouped in some kind of Grids this example ''groups'' the field types together';

COMMENT ON COLUMN "system".db_tables_fields.exporttype IS 'if different from -1 sets a different type conversion for export';

COMMENT ON COLUMN "system".db_tables_fields.mask IS 'if set is used to show the field with a ''mask'' format on screen or grid';

COMMENT ON COLUMN "system".db_user_schema_params.db_schema_id IS 'Foreign  schema id for reference ..................';

COMMENT ON COLUMN "system".db_user_schema_params."key" IS 'The System Parameters'' Key';

COMMENT ON COLUMN "system".db_user_schema_params.param IS 'the parameter';

COMMENT ON COLUMN "system".db_user_schema_params."value" IS 'The value of The parameter, Can Even be a Text File ora a Whole Html Page';

COMMENT ON COLUMN "system".db_user_schema_params.has_translation IS 'Has Translation';

COMMENT ON COLUMN "system".db_user_schema_params.jguid IS 'guid unique identifier across DBs';

COMMENT ON COLUMN carservice.booking_heads.id IS 'Unique Identifier';

COMMENT ON COLUMN carservice.booking_heads.office_id IS 'Car Service identifier (or branch identifier)';

COMMENT ON COLUMN carservice.booking_heads.customer_id IS 'Car Service''s customer anagraph_id';

COMMENT ON COLUMN carservice.booking_heads.vehicle_numberplate IS 'Car or Vehicle Numberplate for this Booking mandatory';

COMMENT ON COLUMN carservice.booking_heads.vehicle_color IS 'Color of the vehicle should be a complex definition color and metal just to say';

COMMENT ON COLUMN maillist.sender_attachments.jguid IS 'unique identifier for Mail Attachment';

COMMENT ON COLUMN maillist.sender_attachments.description IS 'Descritpion for search index of Files';
