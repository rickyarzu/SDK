unit Janua.DMVC.WebBroker.Server;

interface

uses
  IPPeerServer,
  IPPeerAPI,
  IdHTTPWebBrokerBridge,
  Web.WebReq,
  Janua.Core.Types,
  MVCFramework,
  MVCFramework.Logger,
  MVCFramework.Commons,
  MVCFramework.Signal,
  MVCFramework.REPLCommandsHandlerU,
  Janua.WebBroker.Server;

type
  TJanuaDMVCServer = class(TJanuaWebBrokerServer)
  strict protected
    FCustomHandler: TMVCCustomREPLCommandsHandler;
  protected
    procedure AfterServerCreation; override;
    function CustomHandler(const Value: String; const Server: TIdHTTPWebBrokerBridge; out Handled: Boolean)
      : THandleCommandResult; virtual;
  public
    constructor Create; overload;
  end;

implementation

{ TJanuaDMVCServer }

procedure TJanuaDMVCServer.AfterServerCreation;
begin
  inherited;

end;

constructor TJanuaDMVCServer.Create;
begin
  inherited;
  // DMVCFramework Specific Configuration
  // When MVCSerializeNulls = True empty nullables and nil are serialized as json null.
  // When MVCSerializeNulls = False empty nullables and nil are not serialized at all.
  MVCSerializeNulls := True;
  OnParseAuthentication := TMVCParseAuthentication.OnParseAuthentication;
end;

function TJanuaDMVCServer.CustomHandler(const Value: String; const Server: TIdHTTPWebBrokerBridge;
  out Handled: Boolean): THandleCommandResult;
begin

end;

end.
