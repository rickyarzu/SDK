program ServerWebRTC;

uses
  Forms,
  uServerWebRTC in 'uServerWebRTC.pas' {frmServerWebRTC};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TfrmServerWebRTC, frmServerWebRTC);
  Application.Run;
end.
