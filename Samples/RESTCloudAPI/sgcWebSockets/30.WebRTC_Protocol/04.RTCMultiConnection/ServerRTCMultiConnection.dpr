program ServerRTCMultiConnection;

uses
  Forms,
  uServerRTCMultiConnection in 'uServerRTCMultiConnection.pas' {frmServerRTCMultiConnection};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TfrmServerRTCMultiConnection, frmServerRTCMultiConnection);
  Application.Run;
end.
