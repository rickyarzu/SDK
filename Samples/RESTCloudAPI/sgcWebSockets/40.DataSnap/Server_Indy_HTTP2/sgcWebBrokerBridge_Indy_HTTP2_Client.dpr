program sgcWebBrokerBridge_Indy_HTTP2_Client;

uses
  Vcl.Forms,
  fClientDataSnap in 'fClientDataSnap.pas' {Form66},
  uClientDataSnap in 'uClientDataSnap.pas';

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TForm66, Form66);
  Application.Run;
end.
