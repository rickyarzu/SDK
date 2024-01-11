unit uWebBrokerTest;

interface

{$I JANUACORE.INC}
{$IFDEF WEBBROKER}

uses
  IdHTTPWebBrokerBridge;

procedure Setup;
procedure TearDown;

var
  FServer: TIdHTTPWebBrokerBridge;
{$ENDIF WEBBROKER}

implementation

uses System.SysUtils, Janua.Core.Functions, Janua.Application.Framework;

{$IFDEF WEBBROKER}

procedure Setup;
begin
  try
    if not Assigned(FServer) then
    begin
      FServer := TIdHTTPWebBrokerBridge.Create(nil);
      if not FServer.Active then
      begin
        FServer.Bindings.Clear;
        FServer.DefaultPort := 8099;
        FServer.Active := True;
      end;
    end;
  except
    on e: exception do
    begin
      RaiseException('uWebBrokerTest.Setup', e, nil);
    end;
  end;
end;

procedure TearDown;
begin
  if Assigned(FServer) then
  begin
    FServer.Active := False;
    FServer.Bindings.Clear;
    FServer.Free;
    FServer := nil;
  end;
end;
{$ENDIF WEBBROKER}

end.
