program JanuaVCLTestRESTImportExport;
uses
  Vcl.Forms,
  Janua.VCL.Test.FiredacExportImport in 'Janua.VCL.Test.FiredacExportImport.pas' {frmVCLTestFiredacExportImport},
  Janua.Test.FireDac.dmExportImport in '..\..\src\januacore\Test\Janua.Test.FireDac.dmExportImport.pas' {dmTestFireDACImportExport: TDataModule},
  Janua.Uni.Test.PgExportImport in '..\..\src\januaunidac\Test\Janua.Uni.Test.PgExportImport.pas' {dmPgTestExportImport: TDataModule},
  Janua.DMVC.Test.Firedac in '..\..\src\januacore\dmvc\Test\Janua.DMVC.Test.Firedac.pas',
  Janua.Test.DMVC.WebModuleImportExport in 'Janua.Test.DMVC.WebModuleImportExport.pas' {TestWebModule: TWebModule},
  Janua.TMS.FrameAdvBrowser in '..\..\src\TMS\Janua.TMS.FrameAdvBrowser.pas' {frameTmsAdvBrowser: TFrame},
  Janua.Test.FDac.dmRemoteDMCustomers in '..\..\src\januacore\Test\Janua.Test.FDac.dmRemoteDMCustomers.pas' {dmTestFDacRemoteCustomers: TDataModule},
  Janua.DMVC.CarService.ServiceAPI.Driver in '..\..\src\januacore\custom\Janua.DMVC.CarService.ServiceAPI.Driver.pas',
  Janua.VCL.RestClient in '..\..\src\VCL\Cloud\Janua.VCL.RestClient.pas' {frmVCLRestClient};

{$R *.res}
begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  AApplication.CreateForm(TfrmVCLTestFiredacExportImport, frmVCLTestFiredacExportImport);
  pplication.Run;
end.
