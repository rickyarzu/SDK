program sgcBinanceConsole;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  Classes,
  SysUtils,
  sgcWebSocket,
  sgcWebSocket_APIs,
  sgcWebSocket_Types,
  sgcWebSocket_Classes;

type
  TsgcBinanceConsole = class(TComponent)
  private
    FBinance: TsgcWSAPI_Binance;
    FClient: TsgcWebSocketClient;
    function GetBinance: TsgcWSAPI_Binance;
    function GetClient: TsgcWebSocketClient;
  private
    procedure OnConnectEvent(Connection: TsgcWSConnection);
    procedure OnDisconnectEvent(Connection: TsgcWSConnection; Code: Integer);
    procedure OnExceptionEvent(Connection: TsgcWSConnection; E: Exception);
    procedure OnMessageEvent(Connection: TsgcWSConnection; const aText: string);
  public
    property Binance: TsgcWSAPI_Binance read GetBinance write FBinance;
    property Client: TsgcWebSocketClient read GetClient write FClient;
  end;

var
  oBinance: TsgcBinanceConsole;

function TsgcBinanceConsole.GetBinance: TsgcWSAPI_Binance;
begin
  if not Assigned(FBinance) then
    FBinance := TsgcWSAPI_Binance.Create(self);
  Result := FBinance;
end;

function TsgcBinanceConsole.GetClient: TsgcWebSocketClient;
begin
  if not Assigned(FClient) then
  begin
    FClient := TsgcWebSocketClient.Create(nil);
    FClient.NotifyEvents := neNoSync;
    FClient.OnConnect := OnConnectEvent;
    FClient.OnDisconnect := OnDisconnectEvent;
    FClient.OnMessage := OnMessageEvent;
    FClient.OnException := OnExceptionEvent;

    FClient.HeartBeat.Interval := 10;
    FClient.HeartBeat.Timeout := 20;
    FClient.HeartBeat.Enabled := True;

    FClient.WatchDog.Interval := 10;
    FClient.WatchDog.Enabled := True;

    FClient.TLSOptions.OpenSSL_Options.APIVersion := oslAPI_1_1;

    Binance.Client := FClient;
  end;
  Result := FClient;
end;

procedure TsgcBinanceConsole.OnConnectEvent(Connection: TsgcWSConnection);
begin
  WriteLn('#connected');

  oBinance.Binance.SubscribeTicker('bnbbtc');
end;

procedure TsgcBinanceConsole.OnDisconnectEvent(Connection: TsgcWSConnection;
    Code: Integer);
begin
  WriteLn('#disconnected');
end;

procedure TsgcBinanceConsole.OnExceptionEvent(Connection: TsgcWSConnection; E:
    Exception);
begin
  WriteLn('#exception: ' + E.Message);
end;

procedure TsgcBinanceConsole.OnMessageEvent(Connection: TsgcWSConnection; const
    aText: string);
begin
  WriteLn(aText);
end;

begin
  try
    oBinance := TsgcBinanceConsole.Create(nil);
    if oBinance.Client.Connect then
    begin
      while True do
        Sleep(1);
    end;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
