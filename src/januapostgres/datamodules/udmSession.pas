unit udmSession;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, PgAccess, MemDS;

type
  TdmPgSession = class(TDataModule)
    spLogin: TPgStoredProc;
    PgConnection1: TPgConnection;
    qryLogin: TPgQuery;
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
