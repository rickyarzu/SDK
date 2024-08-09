unit Janua.DMVC.WebBroker.Server;

interface

uses Janua.WebBroker.Server;

type
  TJanuaDMVCServer = class(TJanuaWebBrokerServer)
  strict protected
    FCustomHandler: TMVCCustomREPLCommandsHandler;
  protected
    procedure AfterServerCreation; override;
  end;


implementation

{ TJanuaDMVCServer }

procedure TJanuaDMVCServer.AfterServerCreation;
begin
  inherited;

end;

end.
