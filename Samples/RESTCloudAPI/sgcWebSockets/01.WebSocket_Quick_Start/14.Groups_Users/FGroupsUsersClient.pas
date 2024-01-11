unit FGroupsUsersClient;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Math, sgcWebSocket_Classes,
  sgcWebSocket_Classes_Indy, sgcWebSocket_Client, sgcWebSocket, StdCtrls,
  sgcBase_Classes, sgcTCP_Classes, sgcSocket_Classes;

type
  TForm16 = class(TForm)
    btnConnect: TButton;
    btnDisconnect: TButton;
    Client: TsgcWebSocketClient;
    txtHost: TEdit;
    txtPort: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Log: TMemo;
    Label6: TLabel;
    cboUser: TComboBox;
    Label1: TLabel;
    btnReqInfo: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnConnectClick(Sender: TObject);
    procedure btnDisconnectClick(Sender: TObject);
    procedure btnReqInfoClick(Sender: TObject);
    procedure ClientConnect(Connection: TsgcWSConnection);
    procedure ClientDisconnect(Connection: TsgcWSConnection; Code: Integer);
    procedure ClientError(Connection: TsgcWSConnection; const Error: string);
    procedure ClientException(Connection: TsgcWSConnection; E: Exception);
    procedure ClientMessage(Connection: TsgcWSConnection; const Text: string);
  private
    { Private declarations }
  public
    procedure DoLog(const aText: String);
    { Public declarations }
  end;

var
  Form16: TForm16;

implementation

{$R *.dfm}

procedure TForm16.FormCreate(Sender: TObject);
begin
  Randomize;

end;

procedure TForm16.btnConnectClick(Sender: TObject);
begin
  Log.Lines.clear;
  
  Client.Host := txtHost.Text;
  Client.Port := StrToInt(txtPort.Text);

  client.Authentication.Enabled := True;
  client.Authentication.Basic.Enabled := True;

  case cboUser.ItemIndex of
    0:
      begin
        Client.Authentication.User := 'user-1';
        Client.Authentication.Password := 'password-1';
      end;
    1:
      begin
        Client.Authentication.User := 'user-2';
        Client.Authentication.Password := 'password-2';
      end;
    2:
      begin
        Client.Authentication.User := 'user-3';
        Client.Authentication.Password := 'password-3';
      end;
    3:
      begin
        Client.Authentication.User := 'user-4';
        Client.Authentication.Password := 'password-4';
      end;
  end;

  Client.Active := True;
end;

procedure TForm16.btnDisconnectClick(Sender: TObject);
begin
  Client.Active := False;
end;

procedure TForm16.btnReqInfoClick(Sender: TObject);
begin
  client.WriteData('info');
end;

procedure TForm16.ClientConnect(Connection: TsgcWSConnection);
begin
  DoLog('#connected');

  btnConnect.Enabled := False;
  btnDisconnect.Enabled := True;
end;

procedure TForm16.ClientDisconnect(Connection: TsgcWSConnection; Code: Integer);
begin
  DoLog('#disconnected');

  btnConnect.Enabled := True;
  btnDisconnect.Enabled := False;
end;

procedure TForm16.ClientError(Connection: TsgcWSConnection; const Error:
    string);
begin
  DoLog('#error: ' + Error);
end;

procedure TForm16.ClientException(Connection: TsgcWSConnection; E: Exception);
begin
  DoLog('#exception: ' + E.Message);
end;

procedure TForm16.ClientMessage(Connection: TsgcWSConnection; const Text:
    string);
begin
  Log.Lines.add(Text);
end;

procedure TForm16.DoLog(const aText: String);
begin

end;

end.
