program ServerAppRTC;

uses
  Forms,
  uServerAppRTC in 'uServerAppRTC.pas' {frmServerWebRTC};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TfrmServerWebRTC, frmServerWebRTC);
  Application.Run;
end.
