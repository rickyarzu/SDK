program JanuaVCLForms;

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
  Janua.VCL.Logistic.dlgWarehouseReceipt in '..\..\src\VCL\Logistic\Janua.VCL.Logistic.dlgWarehouseReceipt.pas' {dlgVCLLogisticWarehouseReceipt},
  Janua.VCL.Application in '..\..\src\VCL\Commons\Janua.VCL.Application.pas',
  uframeJanuaVCLViewModelDetail in '..\..\src\VCL\Forms\uframeJanuaVCLViewModelDetail.pas' {frameJanuaVCLViewModelDetail: TFrame},
  Janua.VCL.frmRepository in '..\..\src\VCL\System\Janua.VCL.frmRepository.pas' {frmVCLRepositoryMetadata},
  Janua.VCL.Logistic.dlgAirWayBill in '..\..\src\VCL\Forms\Janua.VCL.Logistic.dlgAirWayBill.pas' {dlgVCLLogisticAirWayBill},
  Janua.VCL.Logistic.frameWHReceiptRowsNavigator in '..\..\src\VCL\Logistic\Janua.VCL.Logistic.frameWHReceiptRowsNavigator.pas' {frameVCLWHReceiptRowsNavigator: TFrame},
  Janua.VCL.Logistic.frameWHReceiptChargesNavigator in '..\..\src\VCL\Logistic\Janua.VCL.Logistic.frameWHReceiptChargesNavigator.pas' {frameVCLWHReceiptChargesNavigator: TFrame},
  Janua.Documents.frameVCLDocRows in '..\..\src\VCL\Documents\Janua.Documents.frameVCLDocRows.pas' {frameVCLDocRow: TFrame},
  Janua.Documents.dlgVCLDocRows in '..\..\src\VCL\Documents\Janua.Documents.dlgVCLDocRows.pas' {dlgVCLDocumentRow},
  Janua.Documents.dlgVCLDocCharges in '..\..\src\VCL\Documents\Janua.Documents.dlgVCLDocCharges.pas' {dlgVCLDocChargesRow},
  Janua.VCL.Actions.Test in '..\..\src\VCL\Test\Janua.VCL.Actions.Test.pas',
  Janua.VCL.ApplicationSetup.Test in '..\..\src\VCL\Test\Janua.VCL.ApplicationSetup.Test.pas',
  Janua.VCL.CoreComponents.Test in '..\..\src\VCL\Test\Janua.VCL.CoreComponents.Test.pas',
  Janua.Test.VCLTestFilters in '..\..\src\VCL\Test\Janua.Test.VCLTestFilters.pas' {frmVCLTestFilters},
  Janua.VCL.TestApplication in '..\..\src\VCL\Commons\Janua.VCL.TestApplication.pas',
  Janua.VCL.Cloud.RESTDebuggerClient in '..\..\src\VCL\Cloud\Janua.VCL.Cloud.RESTDebuggerClient.pas' {FrmMain},
  Janua.Test.VCL.frmTest3 in '..\..\src\VCL\Test\Janua.Test.VCL.frmTest3.pas' {frmTest3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  AApplication.CreateForm(TdlgVCLLogisticAirWayBill, dlgVCLLogisticAirWayBill);
  Application.CreateForm(TdlgVCLDocumentRow, dlgVCLDocumentRow);
  Application.CreateForm(TdlgVCLDocChargesRow, dlgVCLDocChargesRow);
  Application.CreateForm(TfrmVCLTestFilters, frmVCLTestFilters);
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TfrmTest3, frmTest3);
  pplication.Run;

end.
