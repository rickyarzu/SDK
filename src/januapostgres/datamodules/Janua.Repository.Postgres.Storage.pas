unit Janua.Repository.Postgres.Storage;

interface

uses
  System.SysUtils, System.Classes, Data.DB, MemDS, DBAccess, Uni, udmPgStorage, UniProvider,
  PostgreSQLUniProvider;

type
  TdmPgRepositoryStorage = class(TdmPgStorage)
    qryDBSchemaTables: TUniQuery;
    qryDBSchemaTablestable_name: TWideStringField;
    qryDBSchemaTablestable_catalog: TWideMemoField;
    qryDBSchemaTablestable_schema: TWideMemoField;
    qryDBSchemaTablestable_type: TWideMemoField;
    qryDBSchemaTablesself_referencing_column_name: TWideMemoField;
    qryDBSchemaTablesreference_generation: TWideMemoField;
    qryDBSchemaTablesuser_defined_type_catalog: TWideMemoField;
    qryDBSchemaTablesuser_defined_type_schema: TWideMemoField;
    qryDBSchemaTablesuser_defined_type_name: TWideMemoField;
    qryDBSchemaTablesis_insertable_into: TWideStringField;
    qryDBSchemaTablesis_typed: TWideStringField;
    qryDBSchemaTablescommit_action: TWideMemoField;
    qrySchemas: TUniQuery;
    qrySchemasjguid: TGuidField;
    qrySchemasname: TWideStringField;
    qrySchemasprefix: TWideStringField;
    qryEntities: TUniQuery;
    qryEntitiesjguid: TGuidField;
    qryEntitiesschema: TWideStringField;
    qryEntitiesname: TWideStringField;
    qryEntitiessingular: TWideStringField;
    qryEntitiesplural: TWideStringField;
    qryEntitiestitle: TWideStringField;
    qryEntitiesdescription: TWideStringField;
    qryEntitiesisvirtual: TBooleanField;
    qryEntitiesmodel_uid: TGuidField;
    qryEntitiesquery_text: TWideMemoField;
    qryEntitiesschema_jguid: TGuidField;
    dsEntities: TUniDataSource;
    qryEntitiesFields: TUniQuery;
    qryEntitiesFieldsjguid: TGuidField;
    qryEntitiesFieldsentity_guid: TGuidField;
    qryEntitiesFieldsfieldname: TWideStringField;
    qryEntitiesFieldsfieldtitle: TWideStringField;
    qryEntitiesFieldsongrid: TBooleanField;
    qryEntitiesFieldspxwidth: TSmallintField;
    qryEntitiesFieldsdb_fieldtype: TSmallintField;
    qryEntitiesFieldsrs_fieldtype: TSmallintField;
    qryEntitiesFieldsgridgroup: TWideStringField;
    qryEntitiesFieldsexportfield: TBooleanField;
    qryEntitiesFieldsexporttype: TSmallintField;
    qryEntitiesFieldsmask: TWideStringField;
    qryEntitiesFieldsgridtitle: TWideStringField;
    qryEntitiesFieldsfieldlabel: TWideStringField;
    qryEntitiesFieldsfieldlength: TSmallintField;
    qryEntitiesFieldsfieldprecisoin: TSmallintField;
    qryEntitiesFieldsgridpos: TSmallintField;
    qryEntitiesFieldsrequired: TBooleanField;
    qryEntitiesFieldscondition: TWideMemoField;
    qryEntitiesParams: TUniQuery;
    GuidField1: TGuidField;
    GuidField2: TGuidField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    BooleanField1: TBooleanField;
    SmallintField1: TSmallintField;
    SmallintField2: TSmallintField;
    SmallintField3: TSmallintField;
    WideStringField3: TWideStringField;
    BooleanField2: TBooleanField;
    SmallintField4: TSmallintField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    WideStringField6: TWideStringField;
    SmallintField5: TSmallintField;
    SmallintField6: TSmallintField;
    SmallintField7: TSmallintField;
    BooleanField3: TBooleanField;
    WideMemoField1: TWideMemoField;
    qryFieldTypeGroups: TUniQuery;
    dsFieldTypesGroups: TUniDataSource;
    qryFieldTypes: TUniQuery;
    qryFieldTypesjguid: TGuidField;
    qryFieldTypesgroup_id: TGuidField;
    qryFieldTypesid: TSmallintField;
    qryFieldTypesname: TWideStringField;
    dsSchemas: TUniDataSource;
    qryDBSchemas: TUniQuery;
    qryDBSchemascatalog_name: TWideStringField;
    qryDBSchemasschema_name: TWideStringField;
    qryDBSchemasschema_owner: TWideStringField;
    qryDBSchemasdefault_character_set_catalog: TWideStringField;
    qryDBSchemasdefault_character_set_schema: TWideStringField;
    qryDBSchemasdefault_character_set_name: TWideStringField;
    qryDBSchemassql_path: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmPgRepositoryStorage: TdmPgRepositoryStorage;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

end.
