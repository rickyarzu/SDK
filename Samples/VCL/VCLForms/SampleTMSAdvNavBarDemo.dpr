program SampleTMSAdvNavBarDemo;

uses
  Forms,
  UAdvNavBarDemo in '..\..\components\src\UAdvNavBarDemo.pas' {frmAdvNavBarDemo},
  Vcl.Themes,
  Vcl.Styles,
  Janua.Controls.Forms.Impl,
  uNavBarFrame in '..\..\components\src\uNavBarFrame.pas' {FrameNavBar: TFrame},
  Janua.VCL.CategoryButtonsFrame in '..\..\src\VCL\Commons\Janua.VCL.CategoryButtonsFrame.pas' {JanuaCategoryButtonsFrame: TFrame},
  uNavaBarFrameListview in '..\..\components\src\uNavaBarFrameListview.pas' {Frame5: TFrame},
  uNavBarDemoDataModule in '..\..\components\src\uNavBarDemoDataModule.pas' {NavBarDemoDataModule: TDataModule},
  Janua.TMS.NavBar in '..\..\src\TMS\Janua.TMS.NavBar.pas' {JanuaTMSNavBarFrame: TFrame},
  ufrmTMSVCLBarMainForm in 'ufrmTMSVCLBarMainForm.pas' {frmTMSVCLBarMainForm};

{$R *.res}

begin

  Application.Initialize;
  TStyleManager.TrySetStyle('Glossy');
  //Application.CreateForm(TNavBarDemoDataModule, NavBarDemoDataModule);
  // Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrmAdvNavBarDemo, frmAdvNavBarDemo);
  Application.Run;

end.
