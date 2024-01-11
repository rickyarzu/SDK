program JanuaTestVCLWinErrors;

uses
  Vcl.Forms,
  Janua.TMS.Error,
  Janua.Application.Framework,
  Janua.Uni.Framework,
  Janua.Vcl.Framework,
  Janua.ViewModels.Framework,
  Janua.Orm.Register,
  Janua.Vcl.MVVM.Framework,
  Vcl.Dialogs,
  Vcl.Themes,
  Vcl.Styles,
  ufrmVCLErrorTesting in '..\src\ufrmVCLErrorTesting.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  if TJanuaApplication.ErrorLog.count > 0 then
    ShowMessage(TJanuaApplication.ErrorLog.Text);
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.Run;

end.
