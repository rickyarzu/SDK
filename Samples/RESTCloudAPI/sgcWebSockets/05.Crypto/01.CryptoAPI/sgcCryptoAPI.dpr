program sgcCryptoAPI;

uses
  Forms,
  uCryptoAPI in 'uCryptoAPI.pas' {frmWebSocketClient};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TfrmWebSocketClient, frmWebSocketClient);
  Application.Run;
end.
