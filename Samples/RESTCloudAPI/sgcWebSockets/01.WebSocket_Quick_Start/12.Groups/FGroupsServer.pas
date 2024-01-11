unit FGroupsServer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sgcWebSocket_Classes, Math,
  sgcWebSocket_Classes_Indy, sgcWebSocket_Server, sgcWebSocket,
  HTTPApp, HTTPProd, IdContext, IdCustomHTTPServer,
  sgcBase_Classes, sgcTCP_Classes, sgcSocket_Classes, sgcWebSocket_Server_Groups;

type
  TForm16 = class(TForm)
    btnStart: TButton;
    btnStop: TButton;
    txtPort: TEdit;
    Label1: TLabel;
    btnChrome: TButton;
    btnFirefox: TButton;
    btnSafari: TButton;
    btnEdge: TButton;
    txtHost: TEdit;
    Label3: TLabel;
    Server: TsgcWebSocketHTTPServer;
    pageGroups: TPageProducer;
    pageJQueryMobile: TPageProducer;
    pageJQuery: TPageProducer;
    pageJQueryMobileCSS: TPageProducer;
    btnBroadcast: TButton;
    cboBroadcast: TComboBox;
    procedure btnBroadcastClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnChromeClick(Sender: TObject);
    procedure btnEdgeClick(Sender: TObject);
    procedure btnFirefoxClick(Sender: TObject);
    procedure btnSafariClick(Sender: TObject);
    procedure btnStartClick(Sender: TObject);
    procedure btnStopClick(Sender: TObject);
    procedure pageGroupsHTMLTag(Sender: TObject; Tag: TTag; const TagString:
        string; TagParams: TStrings; var ReplaceText: string);
    procedure ServerCommandGet(AContext: TIdContext; ARequestInfo:
        TIdHTTPRequestInfo; AResponseInfo: TIdHTTPResponseInfo);
    procedure ServerConnect(Connection: TsgcWSConnection);
    procedure ServerShutdown(Sender: TObject);
    procedure ServerStartup(Sender: TObject);
  private
    procedure DoOpenBrowser(const aBrowserName: string);
  private
    function GetRandomGroup: string;
    procedure OnClientRemovedEvent(Sender: TObject; const aGroup:
        TsgcWSServerGroupItem; const aConnection: TsgcWSConnection);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form16: TForm16;

implementation

uses
  sgcWebSocket_Helpers,
  ShellAPI;

{$R *.dfm}

procedure TForm16.btnBroadcastClick(Sender: TObject);
begin
  case cboBroadcast.ItemIndex of
    0: Server.Groups.BroadCast('*', 'Hello members group');
    1: Server.Groups.BroadCast('group/*', 'Hello members group/*');
    2: Server.Groups.BroadCast('group/level/sub-level*', 'Hello members group group/level/sub-level*');
    3: Server.Groups.Group['group/level/sub-level-1'].BroadCast('Hello members group sub-level-1');
  end;
end;

procedure TForm16.FormCreate(Sender: TObject);
begin
  Randomize;

  Server.Groups.OnClientRemoved := OnClientRemovedEvent;
  btnStart.Click;
end;

procedure TForm16.btnChromeClick(Sender: TObject);
begin
  DoOpenBrowser('chrome');
end;

procedure TForm16.btnEdgeClick(Sender: TObject);
begin
  DoOpenBrowser('msedge');
end;

procedure TForm16.btnFirefoxClick(Sender: TObject);
begin
  DoOpenBrowser('firefox');
end;

procedure TForm16.btnSafariClick(Sender: TObject);
begin
  DoOpenBrowser('safari');
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

procedure TForm16.DoOpenBrowser(const aBrowserName: string);
var
  vHTTP, vPort: string;
begin
  vHTTP := 'http';
  vPort := txtPort.Text;

  {$IFDEF UNICODE}
    ShellExecute(Application.Handle, 'open', PWideChar(aBrowserName),
      PWideChar(vHTTP + '://' + txtHost.Text + ':' + vPort), '', 0);
  {$ELSE}
    ShellExecute(Application.Handle, 'open', PAnsiChar(aBrowserName),
      PAnsiChar(vHTTP + '://' + txtHost.Text + ':' + vPort), '', 0);
  {$ENDIF}
end;

function TForm16.GetRandomGroup: string;
begin
  case RandomRange(1, 5) of
    1: result := 'group';
    2: result := 'group/level';
    3: result := 'group/level/sub-level-1';
    4: result := 'group/level/sub-level-2';
  end;
end;

procedure TForm16.OnClientRemovedEvent(Sender: TObject; const aGroup:
    TsgcWSServerGroupItem; const aConnection: TsgcWSConnection);
begin
  aGroup.BroadCast('Member ' + aConnection.Guid + ' has disconnected.' +
  'There are ' + IntToStr(aGroup.Clients.Count) + ' members in ' + aGroup.ID + '.');
end;

procedure TForm16.pageGroupsHTMLTag(Sender: TObject; Tag: TTag; const
    TagString: string; TagParams: TStrings; var ReplaceText: string);
begin
  if TagString = 'port' then
    ReplaceText := txtPort.Text
  else if TagString = 'host' then
    ReplaceText := txtHost.Text;
end;

procedure TForm16.ServerCommandGet(AContext: TIdContext; ARequestInfo:
    TIdHTTPRequestInfo; AResponseInfo: TIdHTTPResponseInfo);
begin
  if ARequestInfo.Document = '/jquery.mobile.css' then
  begin
    AResponseInfo.ContentText := pageJQueryMobileCSS.Content;
    AResponseInfo.ContentType := 'text/css';
    AResponseInfo.ResponseNo := 200;
  end
  else if ARequestInfo.Document = '/jquery.js' then
  begin
    AResponseInfo.ContentText := pageJQuery.Content;
    AResponseInfo.ContentType := 'text/javascript';
    AResponseInfo.ResponseNo := 200;
  end
  else if ARequestInfo.Document = '/jquery.mobile.js' then
  begin
    AResponseInfo.ContentText := pageJQueryMobile.Content;
    AResponseInfo.ContentType := 'text/javascript';
    AResponseInfo.ResponseNo := 200;
  end
  else
  begin
    AResponseInfo.ContentText := pageGroups.Content;
    AResponseInfo.ContentType := 'text/html';
    AResponseInfo.ResponseNo := 200;
  end;
end;

procedure TForm16.ServerConnect(Connection: TsgcWSConnection);
var
  vGroup: string;
  oGroup: TsgcWSServerGroupItem;
begin
  vGroup := GetRandomGroup;

  Server.Groups.Add(vGroup, Connection);

  oGroup := Server.Groups.Group[vGroup];
  oGroup.BroadCast('Welcome to new member: ' + Connection.Guid + '.' +
  ' There are ' + IntToStr(oGroup.Clients.Count) + ' members in ' + oGroup.ID + '.');
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
