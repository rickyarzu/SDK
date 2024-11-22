program Janua.VCL.TMLogistic;

uses
  Vcl.Forms,
  uframeVCLLOgisticReceiptSingleRow in '..\..\src\VCL\Logistic\uframeVCLLOgisticReceiptSingleRow.pas' {frameVCLLogisticReceiptSingleRow: TFrame},
  uframeVCLShippingAddress in '..\..\src\VCL\Anagraph\uframeVCLShippingAddress.pas' {frameVCLShippingAddress: TFrame},
  uJanuaVCLMainForm in '..\..\src\VCL\Commons\uJanuaVCLMainForm.pas' {JanuaVCLMainForm},
  uJanuaVCLframeMainToobar in '..\..\src\VCL\Commons\uJanuaVCLframeMainToobar.pas' {FrameVCLMainToolBar: TFrame},
  ufrmVCLAnagraphNavigator in '..\..\src\VCL\Anagraph\ufrmVCLAnagraphNavigator.pas' {frmVCLAnagraphNavigator},
  Janua.Anagraph.VCL.frameCompanyPayments in '..\..\src\VCL\Anagraph\Janua.Anagraph.VCL.frameCompanyPayments.pas' {frameAnagraphCompanyPayments: TFrame},
  uFrameVCLDBAnagraphLocations in '..\..\src\VCL\Anagraph\uFrameVCLDBAnagraphLocations.pas' {FrameVCLDBAnagraphLocations: TFrame},
  uFrameVCLAnagraphPanel in '..\..\src\VCL\Anagraph\uFrameVCLAnagraphPanel.pas' {FrameVCLAnagraphPanel: TFrame},
  uFrameVCLAnagraphLocations in '..\..\src\VCL\Anagraph\uFrameVCLAnagraphLocations.pas' {FrameVCLAnagraphLocations},
  uframeVCLAnagraphMVVM in '..\..\src\VCL\Anagraph\uframeVCLAnagraphMVVM.pas' {frameVCLAnagraphMVVM: TFrame},
  ufrmVCLViewModelNavigator in '..\..\src\VCL\Forms\ufrmVCLViewModelNavigator.pas' {frmVCLViewModelNavigator},
  uframeVCLTest in '..\..\src\VCL\Commons\uframeVCLTest.pas' {frameVCLTest: TFrame},
  ufrmVCLVMTestNavigator in '..\..\src\VCL\Test\ufrmVCLVMTestNavigator.pas' {frmVCLVMTestNavigator},
  ufrmVCLVMAnagraphNavigator in '..\..\src\VCL\Anagraph\ufrmVCLVMAnagraphNavigator.pas' {frmVCLVMAnagraphNavigator},
  Janua.Documents.frmVCLMVVMNavigator in '..\..\src\VCL\Documents\Janua.Documents.frmVCLMVVMNavigator.pas' {frmVCLMVVMDocumentsNavigator},
  ufrmVCLLogistiReceiptsNavigator in '..\..\src\VCL\Logistic\ufrmVCLLogistiReceiptsNavigator.pas' {frmVCLLogistiReceiptsNavigator},
  uframeVCLLogisticCustomDocuments in '..\..\src\VCL\Logistic\uframeVCLLogisticCustomDocuments.pas' {frameVCLLogisticCustomDocuments: TFrame},
  ufrmVCLLogisticReceipt in '..\..\src\VCL\Logistic\ufrmVCLLogisticReceipt.pas' {frmVCLLogisticReceipt},
  uframeVCLCompanyInformations in '..\..\src\VCL\Anagraph\uframeVCLCompanyInformations.pas' {frameVCLCompanyInformations},
  uframeVCLLogisticReceipt in '..\..\src\VCL\Logistic\uframeVCLLogisticReceipt.pas' {frameVCLLogisticReceipt: TFrame},
  ufrmVCLLogisticInventoryNavigator in '..\..\src\VCL\Logistic\ufrmVCLLogisticInventoryNavigator.pas' {frmVCLLogisticInventoryNavigator},
  uqrpAirWayBill in '..\..\src\VCL\Logistic\uqrpAirWayBill.pas' {qrpAirWayBill},
  uqrpInvoice in '..\..\src\VCL\Documents\uqrpInvoice.pas' {qrpInvoice},
  Janua.VCL.Logistic.frameWarehouseReceipt in '..\..\src\VCL\Logistic\Janua.VCL.Logistic.frameWarehouseReceipt.pas' {FrameVCLLogisticWarehouseReceipt: TFrame},
  Janua.VCL.Logistic.frameWarehouseReceiptRow in '..\..\src\VCL\Logistic\Janua.VCL.Logistic.frameWarehouseReceiptRow.pas' {FrameVCLLogisticWarehouseReceiptRow: TFrame},
  Janua.VCL.Application in '..\..\src\VCL\Commons\Janua.VCL.Application.pas',
  uframeJanuaVCLViewModelDetail in '..\..\src\VCL\Forms\uframeJanuaVCLViewModelDetail.pas' {frameJanuaVCLViewModelDetail: TFrame},
  Janua.VCL.frmRepository in '..\..\src\VCL\System\Janua.VCL.frmRepository.pas' {frmVCLRepositoryMetadata},
  uqrpTMLabels in '..\..\src\VCL\Logistic\uqrpTMLabels.pas' {qrpTMLabels},
  uqrpTMShipmentOrder in '..\..\src\VCL\Logistic\uqrpTMShipmentOrder.pas' {qrpTMShipmentOrder},
  uqrpTMWarehouseReceipt in '..\..\src\VCL\Logistic\uqrpTMWarehouseReceipt.pas' {qrpTMWarehouseReceipt},
  Janua.VCL.Logistic.dlgWarehouseReceipt in '..\..\src\VCL\Logistic\Janua.VCL.Logistic.dlgWarehouseReceipt.pas' {dlgVCLLogisticWarehouseReceipt},
  Janua.VCL.Logistic.dlgWarehouseReceiptRow in '..\..\src\VCL\Logistic\Janua.VCL.Logistic.dlgWarehouseReceiptRow.pas' {dlgVCLWarehouseReceiptRow},
  Janua.TMLogistic.dlgVCLLogin in '..\..\src\VCL\Logistic\Janua.TMLogistic.dlgVCLLogin.pas' {dlgVCLTMLogisticLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TqrpTMLabels, qrpTMLabels);
  Application.CreateForm(TqrpTMShipmentOrder, qrpTMShipmentOrder);
  Application.CreateForm(TqrpTMWarehouseReceipt, qrpTMWarehouseReceipt);
  Application.CreateForm(TdlgVCLLogisticWarehouseReceipt, dlgVCLLogisticWarehouseReceipt);
  Application.CreateForm(TdlgVCLWarehouseReceiptRow, dlgVCLWarehouseReceiptRow);
  Application.CreateForm(TdlgVCLTMLogisticLogin, dlgVCLTMLogisticLogin);
  Application.Run;
end.
