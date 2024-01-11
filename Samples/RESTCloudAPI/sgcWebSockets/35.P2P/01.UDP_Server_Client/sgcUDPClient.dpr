program sgcUDPClient;

uses
  Forms,
  FUDP_Client in 'FUDP_Client.pas' {FRMUDP_Client};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TFRMUDP_Client, FRMUDP_Client);
  Application.Run;
end.
