program JanuaUniGuiForms;

uses
  Forms,
  Janua.Unigui.MainModule
    in '..\..\src\UniGUI\Commons\Janua.Unigui.MainModule.pas' {JanuaUniMainModule: TUniGUIMainModule} ,
  Janua.Unigui.ServerModule
    in '..\..\src\UniGUI\Commons\Janua.UniGUI.ServerModule.pas' {UniServerModule: TUniGUIServerModule} ,
  Janua.Unigui.ApplicationForm
    in '..\..\src\UniGUI\Commons\Janua.UniGUI.ApplicationForm.pas' {JanuaCustomApplicationForm: TUniForm} ,
  Janua.Unigui.LoginForm
    in '..\..\src\UniGUI\Commons\Janua.UniGUI.LoginForm.pas' {JanuaCustomLoginForm: TUniLoginForm} ,
  Janua.Unigui.FreeForm in '..\..\src\UniGUI\Commons\Janua.UniGUI.FreeForm.pas' {UniForm3: TUniForm};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;

end.
