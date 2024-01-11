program ServerGame;

uses
  Vcl.Forms,
  fServerGame in 'fServerGame.pas' {FRMServerGame};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TFRMServerGame, FRMServerGame);
  Application.Run;
end.
