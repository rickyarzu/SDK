program sgcRTCPeerConnection;

uses
  Forms,
  fRTCPeerConnection in 'fRTCPeerConnection.pas' {FRMICE_Client};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TFRMICE_Client, FRMICE_Client);
  Application.Run;
end.
