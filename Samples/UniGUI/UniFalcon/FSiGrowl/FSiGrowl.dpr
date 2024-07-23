program FSiGrowl;

uses
  Forms,
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Main in 'Main.pas' {MainForm: TUniForm},
  uDmMensagens in 'uDmMensagens.pas' {dmMensagens: TDataModule},
  uLogin in 'uLogin.pas' {UniLoginForm1: TUniLoginForm},
  uFrmiGrowl in 'uFrmiGrowl.pas' {frmiGrowl: TUniFrame};

{$R *.res}

begin
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;
end.
