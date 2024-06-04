unit udmPgSession;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, Uni,
  Datasnap.DBClient, MemDS,  JanuaPgSession,
  CloudBase, CloudGDrive, CloudBaseWin, CloudCustomGDrive, Janua.Core.Commons,
  Janua.Core.Classes, Janua.Components.Mail, Janua.Legacy.Logger, Janua.Unidac.Connection;

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
    dsLogin: TUniDataSource;
    tbUserSchemas: TUniTable;
    tbUserSchemasdb_schema_id: TIntegerField;
    tbUserSchemasdb_user_id: TIntegerField;
    tbUserSchemasisadmin: TBooleanField;
    tbUserSchemasisdefault: TBooleanField;
    tbUserSchemasisowner: TBooleanField;
    tbUserSchemasreadwrite: TBooleanField;
    tbIsoCountries: TUniTable;
    tbIsoCountriesiso_country_code: TWideStringField;
    tbIsoCountriesiso_country_code2: TWideStringField;
    tbIsoCountriescountry_year: TSmallintField;
    tbIsoCountriescountry_name: TWideStringField;
    tbIsoCountriesiso_currency_id: TSmallintField;
    pgRegisterUser: TUniStoredProc;
    JanuaLogger1: TJanuaLogger;
    JanuaMailSender1: TJanuaMailSender;
    spUserTest: TUniStoredProc;
    AdvGDrive1: TAdvGDrive;
  private
    Femail: string;
    Fpassword: string;
    Fusername: string;
    Fsession_id: int64;
    procedure Setemail(const Value: string);
    procedure Setpassword(const Value: string);
    procedure Setusername(const Value: string);
    { Private declarations }
  public
    { Public declarations }
    function Login : boolean;
    function LogintWithSession(Value : int64) : boolean;
    property username : string read Fusername write Setusername;
    property password : string read Fpassword write Setpassword;
    property email : string read Femail write Setemail;
    property session_id : int64 read Fsession_id;
    procedure Authorization;
  end;

var
  dmPgSession: TdmPgSession;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

{ TdmPgSession }

procedure TdmPgSession.Authorization;
begin
     AdvGDrive1.DoAuth;
end;

function TdmPgSession.Login: boolean;
begin

end;

function TdmPgSession.LogintWithSession(Value: int64): boolean;
begin
  self.Fsession_id := Value;
  Result := self.Fsession_id > 0;
end;

procedure TdmPgSession.Setemail(const Value: string);
begin
  Femail := Value;
  //self.qryLogin.ParamByName('email').Value := self.Femail;
  self.JanuaPgSession1.UserEmail := Value;
end;

procedure TdmPgSession.Setpassword(const Value: string);
begin
  Fpassword := Value;
  self.JanuaPgSession1.Password := Value;
end;


procedure TdmPgSession.Setusername(const Value: string);
begin
  Fusername := Value;
  self.JanuaPgSession1.Username := Value
end;

end.
