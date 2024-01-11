unit FGroupsUsersServer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sgcWebSocket_Classes, Math,
  sgcWebSocket_Classes_Indy, sgcWebSocket_Server, sgcWebSocket, sgcJSON,
  sgcBase_Classes, sgcTCP_Classes, sgcSocket_Classes, sgcWebSocket_Server_Groups;

type
  TsgcUser = class
  private
    FAge: Integer;
    FDepartment: string;
    FPhone: string;
    FUsername: string;
  public
    property Username: string read FUsername write FUsername;
    property Department: string read FDepartment write FDepartment;
    property Phone: string read FPhone write FPhone;
    property Age: Integer read FAge write FAge;
  end;

  TForm16 = class(TForm)
    btnStart: TButton;
    btnStop: TButton;
    txtPort: TEdit;
    Label1: TLabel;
    txtHost: TEdit;
    Label3: TLabel;
    Server: TsgcWebSocketHTTPServer;
    btnBroadcast: TButton;
    cboBroadcast: TComboBox;
    txtMessage: TEdit;
    log: TMemo;
    procedure btnBroadcastClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnStartClick(Sender: TObject);
    procedure btnStopClick(Sender: TObject);
    procedure ServerAuthentication(Connection: TsgcWSConnection; aUser, aPassword:
        string; var Authenticated: Boolean);
    procedure ServerConnect(Connection: TsgcWSConnection);
    procedure ServerDisconnect(Connection: TsgcWSConnection; Code: Integer);
    procedure ServerMessage(Connection: TsgcWSConnection; const Text: string);
    procedure ServerShutdown(Sender: TObject);
    procedure ServerStartup(Sender: TObject);
  private
    procedure OnClientAddedEvent(Sender: TObject; const aGroup:
        TsgcWSServerGroupItem; const aConnection: TsgcWSConnection);
    procedure OnClientRemovedEvent(Sender: TObject; const aGroup:
        TsgcWSServerGroupItem; const aConnection: TsgcWSConnection);
  public
    procedure DoLog(const aText: String);
  end;

var
  Form16: TForm16;

implementation

uses
  sgcWebSocket_Helpers;

{$R *.dfm}

procedure TForm16.btnBroadcastClick(Sender: TObject);
begin
  case cboBroadcast.ItemIndex of
    0: Server.Groups.BroadCast('*', txtMessage.Text);
    1: Server.Groups.BroadCast('Sales', txtMessage.Text);
    2: Server.Groups.BroadCast('Accounting', txtMessage.Text);
  end;
end;

procedure TForm16.FormCreate(Sender: TObject);
begin
  Server.Groups.OnClientAdded := OnClientAddedEvent;
  Server.Groups.OnClientRemoved := OnClientRemovedEvent;
  btnStart.Click;
end;

procedure TForm16.btnStartClick(Sender: TObject);
begin
  Server.Port := StrToInt(txtPort.Text);
  Server.Active := True;
end;

procedure TForm16.btnStopClick(Sender: TObject);
begin
  Server.Active := False;
end;

procedure TForm16.DoLog(const aText: String);
begin
  Log.Lines.Add(aText);
end;

procedure TForm16.OnClientAddedEvent(Sender: TObject; const aGroup:
    TsgcWSServerGroupItem; const aConnection: TsgcWSConnection);
var
  vMessage: string;
begin
  vMessage := TsgcUser(aConnection.Data).Username + ' has logged in.';

  aGroup.BroadCast(vMessage);
  DoLog(vMessage);
end;

procedure TForm16.OnClientRemovedEvent(Sender: TObject; const aGroup:
    TsgcWSServerGroupItem; const aConnection: TsgcWSConnection);
var
  vMessage: string;
begin
  vMessage := TsgcUser(aConnection.Data).Username + ' has disconnected.';

  aGroup.BroadCast(vMessage);
  DoLog(vMessage);
end;

procedure TForm16.ServerAuthentication(Connection: TsgcWSConnection; aUser,
    aPassword: string; var Authenticated: Boolean);
var
  oUser: TsgcUser;
begin
  if (aUser = 'user-1') and (aPassword = 'password-1') then
  begin
    Authenticated := True;

    oUser := TsgcUser.Create;
    oUser.Username := 'Mark';
    oUser.Phone := '+55431588744134';
    oUser.Department := 'Sales';
    oUser.Age := 22;

    Connection.Data := oUser;
  end
  else if (aUser = 'user-2') and (aPassword = 'password-2') then
  begin
    Authenticated := True;

    oUser := TsgcUser.Create;
    oUser.Username := 'Claire';
    oUser.Phone := '+5546681103551';
    oUser.Department := 'Sales';
    oUser.Age := 24;

    Connection.Data := oUser;
  end
  else if (aUser = 'user-3') and (aPassword = 'password-3') then
  begin
    Authenticated := True;

    oUser := TsgcUser.Create;
    oUser.Username := 'John';
    oUser.Phone := '+558746451144';
    oUser.Department := 'Accounting';
    oUser.Age := 54;

    Connection.Data := oUser;
  end
  else if (aUser = 'user-4') and (aPassword = 'password-4') then
  begin
    Authenticated := True;

    oUser := TsgcUser.Create;
    oUser.Username := 'Jeff';
    oUser.Phone := '+55698846541158';
    oUser.Department := 'Accounting';
    oUser.Age := 47;

    Connection.Data := oUser;
  end
end;

procedure TForm16.ServerConnect(Connection: TsgcWSConnection);
begin
  Server.Groups.Add(TsgcUser(Connection.Data).Department, Connection);
end;

procedure TForm16.ServerDisconnect(Connection: TsgcWSConnection; Code: Integer);
begin
  if Assigned(Connection.Data) then
    Connection.Data.Free;
end;

procedure TForm16.ServerMessage(Connection: TsgcWSConnection; const Text:
    string);
var
  oUser: TsgcUser;
  oJSON: TsgcJSON;
begin
  if Text = 'info' then
  begin
    oUser := TsgcUser(Connection.Data);
    oJSON := TsgcJSON.Create(nil);
    Try
      oJSON.AddPair('Username', oUser.Username);
      oJSON.AddPair('Department', oUser.Department);
      oJSON.AddPair('Phone', oUser.Phone);
      oJSON.AddPair('Age', oUser.Age);

      Connection.WriteData(oJSON.Text);
    Finally
      oJSON.Free;
    End;
  end;
end;

procedure TForm16.ServerShutdown(Sender: TObject);
begin
  if btnStart <> nil then
  begin
    btnStart.Enabled := True;
    btnStop.Enabled := False;
  end;
end;

procedure TForm16.ServerStartup(Sender: TObject);
begin
  btnStart.Enabled := False;
  btnStop.Enabled := True;
end;

end.
