program sgcTURNServer;

uses
  Forms,
  FTURNServer in 'FTURNServer.pas' {FRMTURNServer};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TFRMTURNServer, FRMTURNServer);
  Application.Run;
end.
