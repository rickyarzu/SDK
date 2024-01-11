program sgcTURNClient;

uses
  Forms,
  FTURNClient in 'FTURNClient.pas' {FRMSTUNClient};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TFRMSTUNClient, FRMSTUNClient);
  Application.Run;
end.
