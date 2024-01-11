program OAuth2_client;

uses
  Forms,
  FOAuth2_Client in 'FOAuth2_Client.pas' {FRMOAuth2_Client},
  FOAuth2_Client_WebBrowser in 'FOAuth2_Client_WebBrowser.pas' {FRMOAuth2_Client_WebBrowser};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TFRMOAuth2_Client, FRMOAuth2_Client);
  Application.Run;
end.
