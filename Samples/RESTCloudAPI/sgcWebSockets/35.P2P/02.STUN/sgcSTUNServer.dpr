program sgcSTUNServer;

uses
  Forms,
  FSTUNServer in 'FSTUNServer.pas' {FRMSTUNServer};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TFRMSTUNServer, FRMSTUNServer);
  Application.Run;
end.
