program JanuaWebBrowserCookies;

uses
  Vcl.Forms,
  ufrmTmsWebBrowserCookies in 'ufrmTmsWebBrowserCookies.pas' {frmTmsWebBrowserCookies};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmTmsWebBrowserCookies, frmTmsWebBrowserCookies);
  Application.Run;
end.
