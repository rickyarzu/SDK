program ClientGame;

uses
  System.StartUpCopy,
  FMX.Forms,
  fClientGame in 'fClientGame.pas' {FRMClientGame};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFRMClientGame, FRMClientGame);
  Application.Run;
end.
