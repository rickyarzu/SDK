program OAuth2_server;

uses
  Forms,
  FOAuth2_Server in 'FOAuth2_Server.pas' {FRMOAuth2Server};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TFRMOAuth2Server, FRMOAuth2Server);
  Application.Run;
end.
