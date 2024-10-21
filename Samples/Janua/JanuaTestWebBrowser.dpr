program JanuaTestWebBrowser;

uses
  Vcl.Forms,
  ufrmTestWebBrowser in 'TMS\ufrmTestWebBrowser.pas' {frmJanuaVCLTestWebBrowser},
  Janua.TMS.WebView in '..\..\src\TMS\Janua.TMS.WebView.pas' {JanuaVCLWebView: TFrame},
  Janua.TMSVCLDemos.VCLApplication in 'Janua.TMSVCLDemos.VCLApplication.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TJanuaTmsDemosVCLApplication.ApplicationSetup('desktop.phoenix_asso.com');
  Application.CreateForm(TfrmJanuaVCLTestWebBrowser, frmJanuaVCLTestWebBrowser);
  Application.Run;
end.
