unit udmPgSessionModelXE4;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, PgAccess, MemDS,
  januacustomsession, JanuaPgSession, JanuaOS, janualogger, januamailcomponents;

type
  TdmPgSessionModelXE4 = class(TDataModule)
    tbIsoCountries: TPgTable;
    tbIsoCountriesiso_country_code: TWideStringField;
    tbIsoCountriesiso_country_code2: TWideStringField;
    tbIsoCountriescountry_year: TSmallintField;
    tbIsoCountriescountry_name: TWideStringField;
    tbIsoCountriesiso_currency_id: TSmallintField;
    spLogin: TPgStoredProc;
    qryLogin: TPgQuery;
    qryLoginactive: TBooleanField;
    qryLoginemail: TWideStringField;
    qryLogindb_user_id: TIntegerField;
    qryLoginpassword: TWideStringField;
    qryLoginusername: TWideStringField;
    qryLoginisactive: TBooleanField;
    qryLoginverify_token: TWideStringField;
    qryLoginverified: TBooleanField;
    dsLogin: TPgDataSource;
    tbUserSchemas: TPgTable;
    tbUserSchemasdb_schema_id: TIntegerField;
    tbUserSchemasdb_user_id: TIntegerField;
    tbUserSchemasisadmin: TBooleanField;
    tbUserSchemasisdefault: TBooleanField;
    tbUserSchemasisowner: TBooleanField;
    tbUserSchemasreadwrite: TBooleanField;
    PgConnection1: TPgConnection;
    JanuaUser1: TJanuaUser;
    JanuaOS1: TJanuaOS;
    JanuaLogger1: TJanuaLogger;
    tbFileDirList: TPgTable;
    spInsertFile: TPgStoredProc;
    tbFileDirListdb_schema_id: TIntegerField;
    tbFileDirListdb_owner_id: TIntegerField;
    tbFileDirListid: TLargeintField;
    tbFileDirListlocal_id: TIntegerField;
    tbFileDirListparent_id: TLargeintField;
    tbFileDirListdir: TBooleanField;
    tbFileDirListtreeorder: TWideStringField;
    tbFileDirListname: TWideStringField;
    tbFileDirListlocal_location: TWideStringField;
    tbFileDirListdescription: TWideStringField;
    tbFileDirListfiledatetime: TPgDateField;
    tbFileDirListfileattr: TIntegerField;
    tbFileDirListextension: TWideStringField;
    tbFileDirListnamenoextension: TWideStringField;
    JanuaPgSession1: TJanuaPgSession;
    JanuaMailSender1: TJanuaMailSender;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmPgSessionModelXE4: TdmPgSessionModelXE4;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

end.
