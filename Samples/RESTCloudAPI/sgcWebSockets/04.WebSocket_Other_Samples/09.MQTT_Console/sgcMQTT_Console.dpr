program sgcMQTT_Console;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  SysUtils,
  sgcWebSocket_Classes,
  sgcWebSocket,
  sgcWebSocket_Protocols,
  sgcWebSocket_Types,
  sgcWebSocket_Protocol_MQTT_Client,
  sgcWebSocket_Protocol_MQTT_Message,
  sgcBase_Helpers;

type
  TsgcMQTTLinux = class
  private
    FClient: TsgcWebSocketClient;
    FMQTT: TsgcWSPClient_MQTT;
    function GetActive: Boolean;
    procedure SetActive(const Value: Boolean);
  protected
    procedure OnMQTTConnectEvent(Connection: TsgcWSConnection; const Session:
        Boolean; const ReasonCode: Integer; const ReasonName: string; const
        ConnectProperties: TsgcWSMQTTCONNACKProperties); virtual;
    procedure OnMQTTDisconnectEvent(Connection: TsgcWSConnection; ReasonCode:
        Integer; const ReasonName: string; DisconnectProperties:
        TsgcWSMQTTDISCONNECTProperties); virtual;
    procedure OnMQTTPublishEvent(Connection: TsgcWSConnection; aTopic, aText:
        string; PublishProperties: TsgcWSMQTTPublishProperties); virtual;
  public
    constructor Create; virtual;
    destructor Destroy; override;
  public
    property Active: Boolean read GetActive write SetActive;
  end;

constructor TsgcMQTTLinux.Create;
begin
  inherited;
  FClient := TsgcWebSocketClient.Create(nil);
  FClient.Host := 'www.esegece.com';
  FClient.Port := 15675;
  FClient.Options.Parameters := '/ws';
  FClient.NotifyEvents := neNoSync;

  FMQTT := TsgcWSPClient_MQTT.Create(nil);
  FMQTT.Authentication.Enabled := True;
  FMQTT.Authentication.Username := 'sgc';
  FMQTT.Authentication.Password := 'sgc';
  FMQTT.HeartBeat.Enabled := True;
  FMQTT.HeartBeat.Interval := 20;
  FMQTT.Client := FClient;

  FMQTT.OnMQTTConnect := OnMQTTConnectEvent;
  FMQTT.OnMQTTDisconnect := OnMQTTDisconnectEvent;
  FMQTT.OnMQTTPublish := OnMQTTPublishEvent;
end;

destructor TsgcMQTTLinux.Destroy;
begin
  FClient.Disconnect;
  sgcFree(FMQTT);
  sgcFree(FClient);
  inherited;
end;

procedure TsgcMQTTLinux.OnMQTTPublishEvent(Connection: TsgcWSConnection;
    aTopic, aText: string; PublishProperties: TsgcWSMQTTPublishProperties);
begin
  WriteLn(aTopic + ': ' + aText);
end;

procedure TsgcMQTTLinux.OnMQTTConnectEvent(Connection: TsgcWSConnection; const
    Session: Boolean; const ReasonCode: Integer; const ReasonName: string;
    const ConnectProperties: TsgcWSMQTTCONNACKProperties);
begin
  WriteLn('#connected');
  FMQTT.Subscribe('sgc:test');
end;

procedure TsgcMQTTLinux.OnMQTTDisconnectEvent(Connection: TsgcWSConnection;
    ReasonCode: Integer; const ReasonName: string; DisconnectProperties:
    TsgcWSMQTTDISCONNECTProperties);
begin
  WriteLn('#disconnected');
end;

function TsgcMQTTLinux.GetActive: Boolean;
begin
  Result := FClient.Active;
end;

procedure TsgcMQTTLinux.SetActive(const Value: Boolean);
begin
  FClient.Active := Value;
end;

var
  oClient: TsgcMQTTLinux;

begin
  try
    oClient := TsgcMQTTLinux.Create;
    oClient.Active := True;

    while oClient.Active do
      sleep(1);

    sgcFree(oClient);
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
