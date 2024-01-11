program TMSAdvNavBarDemo;

uses
  Forms,
  UAdvNavBarDemo in '..\src\UAdvNavBarDemo.pas' {Form1},
  Vcl.Themes,
  Vcl.Styles,
  uNavBarFrame in '..\src\uNavBarFrame.pas' {FrameNavBar: TFrame},
  Janua.VCL.CategoryButtonsFrame in '..\..\src\VCL\Commons\Janua.VCL.CategoryButtonsFrame.pas' {Frame4: TFrame},
  uNavaBarFrameListview in '..\src\uNavaBarFrameListview.pas' {Frame5: TFrame},
  uNavBarDemoDataModule in '..\src\uNavBarDemoDataModule.pas' {NavBarDemoDataModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  TStyleManager.TrySetStyle('Glossy');
  Application.CreateForm(TNavBarDemoDataModule, NavBarDemoDataModule);
  Application.CreateForm(TForm1, Form1);
  Application.Run;

end.
