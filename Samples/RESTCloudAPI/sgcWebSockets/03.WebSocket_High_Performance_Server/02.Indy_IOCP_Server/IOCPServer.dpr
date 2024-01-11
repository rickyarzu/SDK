program IOCPServer;

uses
  Forms,
  FIOCPServer in 'FIOCPServer.pas' {FRMIOCPServer};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TFRMIOCPServer, FRMIOCPServer);
  Application.Run;
end.
