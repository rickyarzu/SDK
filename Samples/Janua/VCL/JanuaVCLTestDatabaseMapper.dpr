program JanuaVCLTestDatabaseMapper;

uses
  Vcl.Forms,
  Janua.VCL.Demos.DatabaseMapper in 'Janua.VCL.Demos.DatabaseMapper.pas' {frmVCLDemosDatabaseMapper},
  Janua.Core.DatabaseMapper.TestClasses in '..\..\..\src\januacore\Test\Janua.Core.DatabaseMapper.TestClasses.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmVCLDemosDatabaseMapper, frmVCLDemosDatabaseMapper);
  Application.Run;
end.
