unit udmPgWebSite;

interface

uses
  System.SysUtils, System.Classes, udmJanuaPostgresModel, Data.DB, Uni, MemDS, DBAccess, UniProvider,
  PostgreSQLUniProvider;

type
  TdmPgWebSite = class(TdmJanuaPostgresModel)
    qryTemplates: TUniQuery;
    qryWebSites: TUniQuery;
    qryWebSiteswebsite_id: TIntegerField;
    qryWebSiteswebsite_url: TWideStringField;
    qryWebSiteswebsite_key: TWideStringField;
    qryWebSitesdb_schema_id: TIntegerField;
    dsWebSites: TDataSource;
    qryTemplatesdb_schema_id: TIntegerField;
    qryTemplatestheme_id: TSmallintField;
    qryTemplatestemplate_id: TSmallintField;
    qryTemplatestemplate_name: TWideStringField;
    qryTemplatestemplate_type: TSmallintField;
    qryTemplateswebsite_id: TIntegerField;
    qryTemplateshead: TWideMemoField;
    qryTemplatesheader: TWideMemoField;
    qryTemplatesjs: TWideMemoField;
    qryTemplatesscripts: TWideMemoField;
    qryTemplatesfooter: TWideMemoField;
    dsTemplates: TDataSource;
    qryTemplatePages: TUniQuery;
    qryTemplatePagesid: TSmallintField;
    qryTemplatePagesdb_schema_id: TIntegerField;
    qryTemplatePagespage_name: TWideStringField;
    qryTemplatePagesbody: TWideMemoField;
    qryTemplatePageshtml: TWideMemoField;
    qryTemplatePagesjs: TWideMemoField;
    qryTemplatePagestemplate_id: TSmallintField;
    qryTemplatePagescss: TWideMemoField;
    qryTemplatePageshead: TWideMemoField;
    qryPing: TUniQuery;
    dsTemplatePages: TDataSource;
    procedure DataModuleCreate(Sender: TObject); override;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure OpenSchema(aSchema: integer);
    procedure Ping;
  end;

var
  dmPgWebSite: TdmPgWebSite;

implementation

{$R *.dfm}

procedure TdmPgWebSite.DataModuleCreate(Sender: TObject);
begin
  inherited;
  self.WriteLog('Creato TdmPgWebSite');
end;

procedure TdmPgWebSite.OpenSchema(aSchema: integer);
begin
  qryWebSites.Close;
  self.qryWebSites.ParamByName('db_schema_id').AsInteger := aSchema;
  ServerFunctions.OpenDataset(qryWebSites);
  ServerFunctions.OpenDataset(qryTemplates);
  ServerFunctions.OpenDataset(qryTemplatePages);
end;

procedure TdmPgWebSite.Ping;
begin
  try
    ServerFunctions.OpenDataset(qryPing);
  finally
    self.qryPing.Close
  end;
end;

end.
