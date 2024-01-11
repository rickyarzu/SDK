program JanuaVCLForms;

uses
  Vcl.Forms,
  uframeVCLLOgisticReceiptSingleRow in '..\..\src\VCL\Logistic\uframeVCLLOgisticReceiptSingleRow.pas' {frameVCLLogisticReceiptSingleRow: TFrame},
  uframeVCLShippingAddress in '..\..\src\VCL\Anagraph\uframeVCLShippingAddress.pas' {frameVCLShippingAddress: TFrame},
  uJanuaVCLMainForm in '..\..\src\VCL\Commons\
uJanuaVCLMainForm.pas' {JanuaVCLMainForm},
  uJanuaVCLframeMainToobar in '..\..\src\VCL\Commons\
uJanuaVCLframeMainToobar.pas' {FrameVCLMainToolBar: TFrame},
  ufrmVCLAnagraphNavigator in '..\..\src\VCL\Anagraph\ufrmVCLAnagraphNavigator.pas' {frmVCLAnagraphNavigator},
  Janua.Anagraph.VCL.frameCompanyInformations in '..\..\src\VCL\Anagraph\Janua.Anagraph.VCL.frameCompanyInformations.pas' {FrameVCLCompanyAnagraph: TFrame},
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
  Janua.VCL.Logistic.dlgAirWayBill in '..\..\src\VCL\Forms\Janua.VCL.Logistic.dlgAirWayBill.pas' {dlgVCLLogisticAirWayBill},
  Janua.VCL.Logistic.frameWarehouseReceipt in '..\..\src\VCL\Logistic\Janua.VCL.Logistic.frameWarehouseReceipt.pas' {FrameVCLLogisticWarehouseReceipt: TFrame},
  Janua.VCL.Logistic.frameWarehouseReceiptRow in '..\..\src\VCL\Logistic\Janua.VCL.Logistic.frameWarehouseReceiptRow.pas' {FrameVCLLogisticWarehouseReceiptRow: TFrame},
  Janua.VCL.Logistic.dlgWarehouseReceipt in '..\..\src\VCL\Logistic\Janua.VCL.Logistic.dlgWarehouseReceipt.pas' {dlgVCLLogisticWarehouseReceipt},
  Janua.VCL.Application in '..\..\src\VCL\Commons\Janua.VCL.Application.pas',
  uframeJanuaVCLViewModelDetail in '..\..\src\VCL\Forms\uframeJanuaVCLViewModelDetail.pas' {frameJanuaVCLViewModelDetail: TFrame},
  Janua.VCL.frmRepository in '..\..\src\VCL\System\Janua.VCL.frmRepository.pas' {frmVCLRepositoryMetadata},
  ufrmVCLFormsMainTestForm in '..\..\Samples\VCL\VCLForms\ufrmVCLFormsMainTestForm.pas' {frmVCLFormsMainTestForm},
  Janua.Test.VCLFormsApplication in '..\..\src\VCL\Test\Janua.Test.VCLFormsApplication.pas',
  Janua.Logistic.frmVCLAWBNavigator in '..\..\src\VCL\Logistic\Janua.Logistic.frmVCLAWBNavigator.pas' {frmVCLAWBNavigator},
  Janua.VCL.Logistic.frameShipmentHead in '..\..\src\VCL\Logistic\Janua.VCL.Logistic.frameShipmentHead.pas' {FrameVCLLogisticShipmentHead: TFrame},
  frameVCLAnagraphSimple in '..\..\src\VCL\Anagraph\frameVCLAnagraphSimple.pas' {framVCLAnagraphShort: TFrame},
  Janua.Anagraph.VCL.dlgEditAnagraph in '..\..\src\VCL\Anagraph\Janua.Anagraph.VCL.dlgEditAnagraph.pas' {dlgVCLEditAnagraph},
  Janua.VCL.Logistic.frmShipmentNavigator in '..\..\src\VCL\Logistic\Janua.VCL.Logistic.frmShipmentNavigator.pas' {frmVCLLogisticShipmentNavigator},
  uframeVCLItem in '..\..\src\VCL\Items\uframeVCLItem.pas' {frameVCLItem: TFrame},
  Janua.Items.VCL.MVVMNavigator in '..\..\src\VCL\Items\Janua.Items.VCL.MVVMNavigator.pas' {frmVCLItemsVMNavigator},
  Janua.Anagraph.VCL.framePaymentTerms in '..\..\src\VCL\Anagraph\Janua.Anagraph.VCL.framePaymentTerms.pas' {frameAnagraphVCLPaymentTerms: TFrame},
  Janua.VCL.frameAddress in '..\..\src\VCL\Commons\Janua.VCL.frameAddress.pas' {frameVCLAddress: TFrame},
  Janua.Anagraph.VCL.frameBankAccount in '..\..\src\VCL\Anagraph\Janua.Anagraph.VCL.frameBankAccount.pas' {uframeVCLBankAccount: TFrame},
  Janua.VCL.MVVM.frameNavigator in '..\..\src\VCL\Forms\Janua.VCL.MVVM.frameNavigator.pas' {frameVCLMVVMNavigator: TFrame},
  Janua.Documents.frmVCLInvoicesNavigator in '..\..\src\VCL\Documents\Janua.Documents.frmVCLInvoicesNavigator.pas' {frmVCLInvoicesNavigator},
  Janua.VCL.frameAddressVAT in '..\..\src\VCL\Commons\Janua.VCL.frameAddressVAT.pas' {frameVCLAddressVAT: TFrame},
  Janua.VCL.frameCountrySearch in '..\..\src\VCL\Commons\Janua.VCL.frameCountrySearch.pas' {frameVCLCountrySearch: TFrame},
  Janua.VCL.Logistic.dlgWarehouseReceiptRow in '..\..\src\VCL\Logistic\Janua.VCL.Logistic.dlgWarehouseReceiptRow.pas' {dlgVCLWarehouseReceiptRow},
  Janua.VCL.frmLocalSettings in '..\..\src\VCL\System\Janua.VCL.frmLocalSettings.pas' {Form1},
  Janua.VCL.dlgWaitSpin in '..\..\src\VCL\Commons\Janua.VCL.dlgWaitSpin.pas' {dlgVCLWaitSpin},
  Janua.VCL.frameAttachments in '..\..\src\VCL\Commons\Janua.VCL.frameAttachments.pas' {frameVCLAttachments: TFrame},
  Janua.Documents.frameVCLAttachments in '..\..\src\VCL\Documents\Janua.Documents.frameVCLAttachments.pas' {frameVCLDocAttachments: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Janua.Test.VCLFormsApplication.TJanuaTestVCLApplication.ApplicationSetup;
  Application.Run;
end.
