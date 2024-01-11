program sgcHTTP2Client;

uses
  Forms,
  FHTTP2_Client in 'FHTTP2_Client.pas' {FRMHTTP2_Client};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TFRMHTTP2_Client, FRMHTTP2_Client);
  Application.Run;
end.








