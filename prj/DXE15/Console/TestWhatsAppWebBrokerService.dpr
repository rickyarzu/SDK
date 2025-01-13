program TestWhatsAppWebBrokerService;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  Janua.WebBroker.Server,
  Janua.Application.Framework,
  Janua.Test.dmTestWebBrokerService
    in '..\..\..\src\januacore\Test\Janua.Test.dmTestWebBrokerService.pas' {dmTestWebBrokerService: TDataModule} ,
  Janua.Test.dmTestWebWhatsAppService
    in '..\..\..\src\januacore\Test\Janua.Test.dmTestWebWhatsAppService.pas' {dmTestWhatsAppWebBrokerService: TDataModule};

procedure RunServer;
var
  DM: TdmTestWhatsAppWebBrokerService;
begin
  try
    DM := TdmTestWhatsAppWebBrokerService.Create(nil);
    DM.Active := True;
    if DM.Active then
      DM.ConsoleRun
    else
      WriteLn('Error Activating Web Module');
  finally
    DM.Free;
    DM := nil;
  end;
end;

begin
  try
    RunServer
  except
    on E: Exception do
      WriteLn(E.ClassName, ': ', E.Message);
  end;

end.
