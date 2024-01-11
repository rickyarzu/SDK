unit udmSession;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, Uni, MemDS;

type
  TdmPgSession = class(TDataModule)
    spLogin: TUniStoredProc;
    PgConnection1: TJanuaUniConnection;
    qryLogin: TUniQuery;
    qryLoginactive: TBooleanField;
    qryLoginemail: TWideStringField;
    qryLogindb_user_id: TIntegerField;
    qryLoginpassword: TWideStringField;
    qryLoginusername: TWideStringField;
    qryLoginisactive: TBooleanField;
    qryLoginverify_token: TWideStringField;
    qryLoginverified: TBooleanField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmPgSession: TdmPgSession;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

end.
