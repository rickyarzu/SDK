program SignalR;

uses
  Vcl.Forms,
  fSignalR in 'fSignalR.pas' {FRMSignalR};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TFRMSignalR, FRMSignalR);
  Application.Run;
end.
