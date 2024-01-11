program Janua.VCL.TMLogistic;

uses
  Vcl.Forms,
  ufrmTMMigrationMain in '..\..\src\VCL\Logistic\ufrmTMMigrationMain.pas' {frmTMMigrationMain},
  uframeTMMigration in '..\..\src\VCL\Logistic\uframeTMMigration.pas' {frameTMMigration: TFrame},
  uqrpTMLabels in '..\..\src\VCL\Logistic\uqrpTMLabels.pas' {qrpTMLabels},
  uqrpTMWarehouseReceipt in '..\..\src\VCL\Logistic\uqrpTMWarehouseReceipt.pas' {qrpTMWarehouseReceipt},
  Janua.TMLogistic.dlgVCLLogin in '..\..\src\VCL\Logistic\Janua.TMLogistic.dlgVCLLogin.pas' {dlgVCLTMLogisticLogin},
  Janua.TMLogistic.VCLApplication in '..\..\src\VCL\Logistic\Janua.TMLogistic.VCLApplication.pas',
  Janua.TMLogistic.frmVCLFileMigration in '..\..\src\VCL\Logistic\Janua.TMLogistic.frmVCLFileMigration.pas' {frmTMLogisticVCLFileMigration},
  ufrmVCLOutlookOLEAutomation in '..\..\Samples\Office OLE\Outlook\ufrmVCLOutlookOLEAutomation.pas' {frmVCLOutlookOLEAutomation},
  Janua.Test.VCL.frmTestFilters in '..\..\Samples\VCL\ViewModel\Janua.Test.VCL.frmTestFilters.pas' {frmVCLTestFilters},
  ufrmGridsTestings in '..\..\Samples\VCL\GridsTesting\ufrmGridsTestings.pas' {frmVCLTestGrids},
  Janua.VCL.Logistic.dlgVCLShipments in '..\..\src\VCL\Logistic\Janua.VCL.Logistic.dlgVCLShipments.pas' {dlgVCLLogisticShipments},
  uqrpTMShipmentOrder in '..\..\src\VCL\Logistic\uqrpTMShipmentOrder.pas' {qrpTMShipmentOrder},
  Janua.VCL.Logistic.frameWHReceiptRowsNavigator in '..\..\src\VCL\Logistic\Janua.VCL.Logistic.frameWHReceiptRowsNavigator.pas' {frameVCLWHReceiptRowsNavigator: TFrame},
  Janua.VCL.frameAttachments in '..\..\src\VCL\Commons\Janua.VCL.frameAttachments.pas' {frameVCLAttachments: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmVCLTestFilters, frmVCLTestFilters);
  Application.CreateForm(TfrmVCLTestFilters, frmVCLTestFilters);
  Application.CreateForm(TfrmVCLTestGrids, frmVCLTestGrids);
  Application.CreateForm(TdlgVCLLogisticShipments, dlgVCLLogisticShipments);
  Application.CreateForm(TqrpTMShipmentOrder, qrpTMShipmentOrder);
  Application.Run;
end.
