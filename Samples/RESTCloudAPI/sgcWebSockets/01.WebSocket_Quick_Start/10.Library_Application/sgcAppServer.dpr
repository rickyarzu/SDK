program sgcAppServer;

uses
  Forms,
  fsgcAppServer in 'fsgcAppServer.pas' {FRMAppServer};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TFRMAppServer, FRMAppServer);
  Application.Run;
end.
