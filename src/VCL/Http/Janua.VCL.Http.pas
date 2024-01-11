unit Janua.VCL.Http;

interface

uses
  // System Delphi ................................................................................
  System.Classes,
  // tms Sparkle
  //Sparkle.HttpServer.Context, Sparkle.HttpServer.Module, Sparkle.HttpSys.Server, Sparkle.HttpServer.Request,
  // Janua Core Classes ..........................................................................
  Janua.Core.Types, Janua.Core.Functions,  Janua.Core.Sockets, Janua.Core.Classes, Janua.Http.Types;


type
  TJanuaSparkleCoreServer = Class(TJanuaCoreComponent)
{$IFDEF MSWINDOWS}
  private
    FHttpSysServer: THttpSysServer;
  public
    procedure SetHttpSysServer(const Value: THttpSysServer);
  published
    property HttpSysServer: THttpSysServer read FHttpSysServer write SetHttpSysServer;
{$ENDIF MSWINDOWS}
  private
    FProtocol: TJanuaProtocol;
    FServer: string;
    procedure SetProtocol(const Value: TJanuaProtocol);
    procedure SetServer(const Value: string);
  public
    constructor Create(AOwner: TComponent); override;
    Destructor Destroy; override;
    function Activate: boolean; override;
    procedure Deactivate; override;
  published
    property Server: string read FServer write SetServer;
    property Protocol: TJanuaProtocol read FProtocol write SetProtocol default jptHttp;
  end;

  TJanuaSparkleRequestEvent = procedure(const C: THttpServerContext) of object;
  {$M+}
  TJanuaSparkleHttpServerModule = class(THttpServerModule)
  private
    FJanuaMimeType: TJanuaMimeType;
    FContentType: string;
    procedure SetContentType(const Value: string);
    procedure SetJanuaMimeType(const Value: TJanuaMimeType);
  protected
  public
    procedure ProcessRequest(const C: THttpServerContext); override;
  published
    property ContentType: string read FContentType write SetContentType;
    property JanuaMimeType: TJanuaMimeType read FJanuaMimeType write SetJanuaMimeType;
  end;
  {$M-}

  TJanuaSparkleCoreServerModule = Class(TJanuaObject)
  private
    FMimeType: TJanuaMimeType;
    FMimeText: string;
    FJanuaSparkleServer: TJanuaSparkleCoreServer;
    FJanuaSparkleServerModule: TJanuaSparkleHttpServerModule;
    procedure SetMimeType(const Value: TJanuaMimeType);
    procedure SetMimeText(const Value: string);
    procedure SetJanuaSparkleServer(const Value: TJanuaSparkleCoreServer);
    procedure SetJanuaSparkleServerModule(const Value: TJanuaSparkleHttpServerModule);

  public
    constructor Create; override;
    Destructor Destroy; override;
    function Activate: boolean; override;
    property JanuaSparkleServerModule: TJanuaSparkleHttpServerModule read FJanuaSparkleServerModule
      write SetJanuaSparkleServerModule;
  published
    property ContentType: TJanuaMimeType read FMimeType write SetMimeType;
    property ContentText: string read FMimeText write SetMimeText;
    property JanuaSparkleServer: TJanuaSparkleCoreServer read FJanuaSparkleServer write SetJanuaSparkleServer;

  End;

implementation

{ TJanuaSparkleServer }
{$IF  Defined(MSWINDOWS)}

function TJanuaSparkleCoreServerModule.Activate: boolean;
begin
  Result := inherited;
  if not Result then
  begin
    // do some Stuff to start the Sparkle Core Server Module ............
  end;
end;

constructor TJanuaSparkleCoreServerModule.Create;
begin
  inherited;

end;

destructor TJanuaSparkleCoreServerModule.Destroy;
begin

  inherited;
end;

procedure TJanuaSparkleCoreServerModule.SetJanuaSparkleServer(const Value: TJanuaSparkleCoreServer);
begin
  FJanuaSparkleServer := Value;
end;

procedure TJanuaSparkleCoreServerModule.SetJanuaSparkleServerModule
  (const Value: TJanuaSparkleHttpServerModule);
begin
  FJanuaSparkleServerModule := Value;
end;

procedure TJanuaSparkleCoreServerModule.SetMimeText(const Value: string);
begin
  FMimeText := Value;
end;

procedure TJanuaSparkleCoreServerModule.SetMimeType(const Value: TJanuaMimeType);
begin
  FMimeType := Value;
end;
{$ENDIF  Defined(MSWINDOWS)}
{ TJanuaSparkleCoreServer }

function TJanuaSparkleCoreServer.Activate: boolean;
begin
  Result := False;
end;

constructor TJanuaSparkleCoreServer.Create(AOwner: TComponent);
begin
  inherited;
  /// This procedure creates the HttpSysServer when instance is crated.
  /// THttpSysServer is not
{$IFDEF MSWINDOWS}
  self.FHttpSysServer := THttpSysServer.Create;
{$ENDIF MSWINDOWS}
end;

procedure TJanuaSparkleCoreServer.Deactivate;
begin
  inherited;
{$IFDEF MSWINDOWS}
  if self.FHttpSysServer.IsRunning then
    self.FHttpSysServer.Stop;
{$ENDIF MSWINDOWS}
end;

destructor TJanuaSparkleCoreServer.Destroy;
begin
{$IFDEF MSWINDOWS}
  self.FHttpSysServer.Free;
{$ENDIF MSWINDOWS}
  inherited;
end;
{$IFDEF MSWINDOWS}

procedure TJanuaSparkleCoreServer.SetHttpSysServer(const Value: THttpSysServer);
begin
  FHttpSysServer := Value;
end;
{$ENDIF MSWINDOWS}

procedure TJanuaSparkleCoreServer.SetProtocol(const Value: TJanuaProtocol);
begin
  FProtocol := Value;
end;

procedure TJanuaSparkleCoreServer.SetServer(const Value: string);
begin
  FServer := Value;
end;

{ TJanuaSparkleHttpServerModule }
{$IF  Defined(MSWINDOWS)}

procedure TJanuaSparkleHttpServerModule.ProcessRequest(const C: THttpServerContext);
begin
  inherited;

end;

procedure TJanuaSparkleHttpServerModule.SetContentType(const Value: string);
begin
  if Value <> self.FContentType then
  begin
    FContentType := Value;
  end;
end;

procedure TJanuaSparkleHttpServerModule.SetJanuaMimeType(const Value: TJanuaMimeType);
begin
  FJanuaMimeType := Value;
end;
{$ENDIF  Defined(MSWINDOWS)}

end.
