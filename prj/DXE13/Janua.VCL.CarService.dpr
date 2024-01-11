program Janua.VCL.CarService;

uses
  Vcl.Forms,
  ufrmTMMigrationMain in '..\..\src\VCL\Logistic\ufrmTMMigrationMain.pas' {frmTMMigrationMain},
  uframeTMMigration in '..\..\src\VCL\Logistic\uframeTMMigration.pas' {frameTMMigration: TFrame},
  uqrpTMLabels in '..\..\src\VCL\Logistic\uqrpTMLabels.pas' {qrpTMLabels},
  uqrpTMWarehouseReceipt in '..\..\src\VCL\Logistic\uqrpTMWarehouseReceipt.pas' {qrpTMWarehouseReceipt},
  Janua.CarService.dlgVCLLogin in '..\..\src\VCL\CarService\Janua.CarService.dlgVCLLogin.pas' {dlgVCLCarServiceLogin},
  Janua.TMLogistic.VCLApplication in '..\..\src\VCL\Logistic\Janua.TMLogistic.VCLApplication.pas',
  Janua.TMLogistic.frmVCLFileMigration in '..\..\src\VCL\Logistic\Janua.TMLogistic.frmVCLFileMigration.pas' {frmTMLogisticVCLFileMigration},
  ufrmVCLOutlookOLEAutomation in '..\..\Samples\Office OLE\Outlook\ufrmVCLOutlookOLEAutomation.pas' {frmVCLOutlookOLEAutomation},
  Janua.Test.VCL.frmTestFilters in '..\..\Samples\VCL\ViewModel\Janua.Test.VCL.frmTestFilters.pas' {frmVCLTestFilters},
  ufrmGridsTestings in '..\..\Samples\VCL\GridsTesting\ufrmGridsTestings.pas' {frmVCLTestGrids};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmVCLTestFilters, frmVCLTestFilters);
  Application.CreateForm(TfrmVCLTestFilters, frmVCLTestFilters);
  Application.CreateForm(TfrmVCLTestGrids, frmVCLTestGrids);
  Application.Run;
end.
