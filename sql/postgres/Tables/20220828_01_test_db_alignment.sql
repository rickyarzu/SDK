
--ALTER TABLE anagraph.anagraphs ALTER COLUMN an_office_id TYPE integer;

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

--COMMENT ON FUNCTION blob_files_id_trg IS 'begin\n    if New.blob_id is null then\n       New.club_id:=nextval(''cloud.file_seq'');\n   end if;\n         New.ext_file_key := system.get_key(blob_id,  32);\n      Return NEW;\nend;';

--COMMENT ON FUNCTION update_magazzino IS 'Procedura di aggiornamento del magazzino e delle entrate di Tailor Made Logistic';

COMMENT ON TABLE custom_tm_logistic.translate_db_users IS 'This table Translates users from TMLogistic old application and New Application';

COMMENT ON COLUMN documents.attachments.filename IS 'a descriptive file name to identify the attachment';

COMMENT ON COLUMN documents.attachments.description IS 'A long Text Description for the File';

COMMENT ON COLUMN documents.attachments.context IS 'content text for contextual search on engine (from OCR or PDF-Word-Excel scan Read).';

COMMENT ON COLUMN documents.attachments.extension IS 'File Extension (to correctly display the icon and manage MIME informations)';

COMMENT ON COLUMN documents.attachments.flg_internet IS 'Flag Internet Visible Field';

--COMMENT ON FUNCTION shipments_view_ioi_trg IS 'This is the Instead of insert trigger for Shipments View that involves both Works and Shipments table';

--COMMENT ON FUNCTION dbtimezone IS '';

--COMMENT ON FUNCTION sessiontimezone IS 'Ruturns server time zone (orafce.timezone)';

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
