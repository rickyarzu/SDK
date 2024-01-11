program sgcJWT_Client;

uses
  Forms,
  FJWT_Client in 'FJWT_Client.pas' {FRMJWT_Client};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TFRMJWT_Client, FRMJWT_Client);
  Application.Run;
end.
