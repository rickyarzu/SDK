unit FGroupsClient;

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
    procedure FormCreate(Sender: TObject);
    procedure btnConnectClick(Sender: TObject);
    procedure btnDisconnectClick(Sender: TObject);
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
  Client.Active := True;
end;

procedure TForm16.btnDisconnectClick(Sender: TObject);
begin
  Client.Active := False;
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
