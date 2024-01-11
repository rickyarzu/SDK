program sgcAppClient;

uses
  Forms,
  fsgcAppClient in 'fsgcAppClient.pas' {FRMClientApp};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TFRMClientApp, FRMClientApp);
  Application.Run;
end.
