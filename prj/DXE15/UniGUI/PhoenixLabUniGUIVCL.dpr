program PhoenixLabUniGUIVCL;

uses
  Forms,
  ServerModule in 'C:\Users\Ergomercator\Documents\Embarcadero\Studio\Projects\Project1\ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'C:\Users\Ergomercator\Documents\Embarcadero\Studio\Projects\Project1\MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Main in 'C:\Users\Ergomercator\Documents\Embarcadero\Studio\Projects\Project1\Main.pas' {MainForm: TUniForm};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;
end.
