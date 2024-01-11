unit Januauser;

interface

uses
  Classes, SysUtils;

type

  { TJanuaUser }

  TJanuaUser = class(TComponent)
  private
    FConnected: boolean;
    FDatabase: string;
    FLoginTime: TDateTime;
    FSessionID: int64;
    FUserName: string;
    FUserPassWord: string;
    procedure SetConnected(const AValue: boolean);
    procedure SetDatabase(const AValue: string);
    procedure SetLoginTime(const AValue: TDateTime);
    procedure SetSessionID(const AValue: int64);
    procedure SetUserName(const AValue: string);
    procedure SetUserPassWord(const AValue: string);
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
  published
    { Published declarations }
    property UserName: string read FUserName write SetUserName;
    // nome utente connesso al db e al repository
    property UserPassWord: string read FUserPassWord write SetUserPassWord;
    // password dell'utente connesso al db
    property Connected: boolean read FConnected write SetConnected;
    // indica se l'utente è connesso se non lo è la sessione non sarebbe attiva
    property Database: string read FDatabase write SetDatabase;
    // indica l'indirizzo del db o dello schema di oracle attualmente in uso
    property SessionID: int64 read FSessionID write SetSessionID;
    // indica la sessione un id unico assegnato dal db per ogni sessione di lavoro
    property LoginTime: TDateTime read FLoginTime write SetLoginTime;
    // indica da quanto tempo l'utente è collegato


  end;



implementation



{ TJanuaUser }

procedure TJanuaUser.SetUserName(const AValue: string);
begin
  if FUserName=AValue then exit;
  FUserName:=AValue;
end;

procedure TJanuaUser.SetConnected(const AValue: boolean);
begin
  if FConnected=AValue then exit;
  FConnected:=AValue;
end;

procedure TJanuaUser.SetDatabase(const AValue: string);
begin
  if FDatabase=AValue then exit;
  FDatabase:=AValue;
end;

procedure TJanuaUser.SetLoginTime(const AValue: TDateTime);
begin
  if FLoginTime=AValue then exit;
  FLoginTime:=AValue;
end;

procedure TJanuaUser.SetSessionID(const AValue: int64);
begin
  if FSessionID=AValue then exit;
  FSessionID:=AValue;
end;

procedure TJanuaUser.SetUserPassWord(const AValue: string);
begin
  if FUserPassWord=AValue then exit;
  FUserPassWord:=AValue;
end;

end.
