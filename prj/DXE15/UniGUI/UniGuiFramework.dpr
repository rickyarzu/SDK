program UniGuiFramework;

uses
  Forms,
  Janua.UniGUI.ApplicationForm in '..\..\..\src\UniGUI\Common\Janua.UniGUI.ApplicationForm.pas' {JanuaCustomApplicationForm: TUniForm},
  Janua.UniGUI.dlgHTMLMessage in '..\..\..\src\UniGUI\Common\Janua.UniGUI.dlgHTMLMessage.pas' {frmUniGUIHtmlMessage: TUniForm},
  Janua.UniGUI.frameSettings in '..\..\..\src\UniGUI\Common\Janua.UniGUI.frameSettings.pas' {frameUniGUIAccountSettings: TUniFrame},
  Janua.UniGUI.frameSettingsPassword in '..\..\..\src\UniGUI\Common\Janua.UniGUI.frameSettingsPassword.pas' {UniFrame4: TUniFrame},
  Janua.UniGUI.FreeForm in '..\..\..\src\UniGUI\Common\Janua.UniGUI.FreeForm.pas' {UniForm3: TUniForm},
  Janua.UniGUI.MainModule in '..\..\..\src\UniGUI\Common\Janua.UniGUI.MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Janua.UniGUI.ServerModule in '..\..\..\src\UniGUI\Common\Janua.UniGUI.ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  Janua.UniGUI.ServiceModule in '..\..\..\src\UniGUI\Common\Janua.UniGUI.ServiceModule.pas' {UniServiceModule: TUniGUIService},
  Janua.UniGUI.TextConfirmation in '..\..\..\src\UniGUI\Common\Janua.UniGUI.TextConfirmation.pas' {frameUniGUITextConfirmation: TUniFrame},
  Janua.Anagraph.UniGUI.dlgSimpleAnagraph in '..\..\..\src\UniGUI\Anagraph\Janua.Anagraph.UniGUI.dlgSimpleAnagraph.pas' {dlgUniGUISimpleAnagraph: TUniForm},
  Janua.Anagraph.UniGUI.frameAccountingInfo in '..\..\..\src\UniGUI\Anagraph\Janua.Anagraph.UniGUI.frameAccountingInfo.pas' {frameUniGUIAnagAccountingInfo: TUniFrame},
  Janua.Anagraph.UniGUI.frameSimpleAnagraph in '..\..\..\src\UniGUI\Anagraph\Janua.Anagraph.UniGUI.frameSimpleAnagraph.pas' {frameUniGUISimpleAnagraph: TUniFrame},
  Janua.UniGUI.frameDBUser in '..\..\..\src\UniGUI\Common\Janua.UniGUI.frameDBUser.pas' {frameUniGUIDBUser: TUniFrame},
  Janua.Anagraph.UniGUI.frameAnagraphHorizontal in '..\..\..\src\UniGUI\Anagraph\Janua.Anagraph.UniGUI.frameAnagraphHorizontal.pas' {frameUniGUIAnagraphHorizontal: TUniFrame},
  Janua.Anagraph.UniGUI.frameAddressList in '..\..\..\src\UniGUI\Anagraph\Janua.Anagraph.UniGUI.frameAddressList.pas' {frameUniGUIAddressList: TUniFrame};

{$R *.res}
begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.CreateForm(TUniServiceModule, UniServiceModule);
  Application.Run;
end.
