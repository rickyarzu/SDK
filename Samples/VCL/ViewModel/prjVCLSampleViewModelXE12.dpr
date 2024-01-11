program prjVCLSampleViewModelXE12;

uses
  Vcl.Forms,
  Vcl.Graphics,
  Janua.Application.Framework,
  Janua.Mock.Firedac.Framework,
  Janua.Vcl.Framework,
  Janua.ViewModels.Framework,
  Janua.Orm.Register,
  Vcl.Themes,
  Vcl.Styles,
  ufrmVCLViewModelNavigator in '..\..\src\VCL\Forms\ufrmVCLViewModelNavigator.pas' {frmVCLViewModelNavigator},
  uframeVCLTest in '..\..\src\VCL\Commons\uframeVCLTest.pas' {frameVCLTest: TFrame},
  ufrmVCLVMTestNavigator in '..\..\src\VCL\Test\ufrmVCLVMTestNavigator.pas' {frmVCLVMTestNavigator},
  JOrm.Documents.Types.Intf in '..\..\src\januacore\orm\JOrm.Documents.Types.Intf.pas',
  JOrm.Documents.Rows.Intf in '..\..\src\januacore\orm\JOrm.Documents.Rows.Intf.pas';

{$R *.res}

var
  sStyle: string;

begin
  Janua.Mock.Firedac.Framework.TJanuaMockFiredacApplication.RegisterFireDacDataModules;
  Janua.Vcl.Framework.TJanuaVCLApplication.Initialize;
  TJanuaCoreViewModelFramework.Initialize;
  Janua.Orm.Register.TJanuaOrmFramework.Initialize;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  sStyle := 'Windows10 SlateGray';
  TStyleManager.TrySetStyle(sStyle);

  if (sStyle = 'Windows10 SlateGray') then
    TJanuaVCLApplication.IconFontColor := clSilver
  else
    TJanuaVCLApplication.IconFontColor := StyleServices.GetStyleColor(TStyleColor.scButtonHot); // clSilver;


  Application.CreateForm(TfrmVCLVMTestNavigator, frmVCLVMTestNavigator);
  Application.Run;

end.
