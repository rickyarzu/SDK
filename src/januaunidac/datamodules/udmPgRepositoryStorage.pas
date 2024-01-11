unit udmPgRepositoryStorage;

interface

uses
  System.SysUtils, System.Classes, udmPgStorage, UniProvider, PostgreSQLUniProvider, Data.DB, DBAccess, Uni,
  MemDS;

type
  TdmPgStorage1 = class(TdmPgStorage)
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmPgStorage1: TdmPgStorage1;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

end.
