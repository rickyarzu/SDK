program DetectPlatform;

uses
  Forms,
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Mainm in 'Mainm.pas' {MainmForm: TUnimForm};

{$R *.res}

begin
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;
end.
