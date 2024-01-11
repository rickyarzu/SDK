program CarService;

uses
  System.SysUtils,
  Vcl.Forms,
  Vcl.Graphics,
  Janua.TMS.Error,
  Janua.Application.Framework,
  Janua.Uni.Framework,
  Janua.Vcl.Framework,
  Janua.ViewModels.Framework,
  Janua.Orm.Register,
  Janua.Vcl.MVVM.Framework,
  Vcl.Themes,
  Vcl.Styles,
  ufrmMDIRibbonToolbar in '..\..\..\src\TMS\ufrmMDIRibbonToolbar.pas' {frmMDIRibbonToolbar},
  udmVCLMainApplication in '..\..\..\src\VCL\Commons\
udmVCLMainApplication.pas' {dmVCLMainApplication: TDataModule},
  udmTmsMainApplication in '..\..\..\src\TMS\udmTmsMainApplication.pas' {dmTmsMainApplication: TDataModule},
  udmLogisticMain in '..\..\..\src\VCL\Logistic\udmLogisticMain.pas' {dmLogisticMain: TDataModule},
  uJanuaVCLForm in '..\..\..\src\VCL\Forms\uJanuaVCLForm.pas' {JanuaVCLFormModel},
  uJanuaVCLFrame in '..\..\..\src\VCL\Forms\uJanuaVCLFrame.pas' {JanuaVCLFrameModel: TFrame},
  uJanuaVCLMainForm in '..\..\..\src\VCL\Commons\
uJanuaVCLMainForm.pas' {JanuaVCLMainForm},
  ufrmVCLVMTestNavigator in '..\..\..\src\VCL\Test\ufrmVCLVMTestNavigator.pas' {TfrmVCLVMTestNavigator},
  uframeVCLDBReceiptRows in '..\..\..\src\VCL\Logistic\uframeVCLDBReceiptRows.pas' {frameVCLDBReceiptRows: TFrame},
  uframeVCLLOgisticReceiptSingleRow in '..\..\..\src\VCL\Logistic\uframeVCLLOgisticReceiptSingleRow.pas' {frameVCLLogisticReceiptSingleRow: TFrame},
  uframeVCLItem in '..\..\..\src\VCL\Items\uframeVCLItem.pas' {frameVCLItem: TFrame},
  ufrmVCLOutlookOLEAutomation in '..\..\..\Samples\Office OLE\Outlook\ufrmVCLOutlookOLEAutomation.pas' {frmVCLOutlookOLEAutomation},
  ufrmLogisticMain in '..\..\..\src\VCL\Logistic\ufrmLogisticMain.pas' {frmLogisticMain},
  UTMSTetMenuFrame in '..\..\..\src\VCL\Forms\UTMSTetMenuFrame.pas' {TMSTestMenuFrame: TFrame},
  Janua.Test.VCL.frmTestFilters in '..\..\..\Samples\VCL\ViewModel\Janua.Test.VCL.frmTestFilters.pas' {frmVCLTestFilters},
  ufrmGridsTestings in '..\..\..\Samples\VCL\GridsTesting\ufrmGridsTestings.pas' {frmVCLTestGrids},
  Janua.VCL.Controls.BoolSelect in '..\..\..\src\VCL\Controls\Janua.VCL.Controls.BoolSelect.pas' {frameSelectBool: TFrame},
  Janua.CarService.VCLApplication in '..\..\..\src\VCL\CarService\Janua.CarService.VCLApplication.pas',
  Janua.CarService.VCL.frmCarBooking in '..\..\..\src\VCL\CarService\Janua.CarService.VCL.frmCarBooking.pas' {frmVCLCarServiceBooking};

{$R *.res}

var
  errorManager: TJanuaTmsExceptionHandler;

begin
  Application.Initialize;
  errorManager := TJanuaTmsExceptionHandler.Create(Application);
  errorManager.Activate;
  TStyleManager.TrySetStyle('Win10IDE_Light');
  // Inizializzazione TAilor Made Logistic Application
  // Viene impostato l'albero delle finestre ed il menu principale
  TJanuaCarServiceVCLApplication.ApplicationSetup;
  TJanuaApplication.Title := 'Car Service Main Application';
  Application.Title := 'Car Service Main Application';
  Application.MainFormOnTaskbar := True;
{$IFDEF DEBUG}
  System.ReportMemoryLeaksOnShutdown := True;
{$ENDIF}
  // sStyle := 'Windows10 SlateGray';
  // sStyle := 'Windows';
  // 2020-10-14 Replaced monochrome buttons with color ones
  {
    if (sStyle = 'Windows10 SlateGray') then
    TJanuaVCLApplication.IconFontColor := clSilver
    else
    TJanuaVCLApplication.IconFontColor := StyleServices.GetStyleColor(TStyleColor.scButtonHot); // clSilver;
  }
  // 2020-10-14 Replaced monochrome buttons with color ones
  // Alla fien Creo il Form principale
  if TJanuaApplication.UserSessionVM.LoginWithDialog then
  begin
    TJanuaCarServiceVCLApplication.LoadMenu;
    Application.CreateForm(TfrmLogisticMain, frmLogisticMain);
  Application.CreateForm(TfrmVCLCarServiceBooking, frmVCLCarServiceBooking);
  Application.Run;
  end
  else
    Application.Terminate;

  TJanuaCarServiceVCLApplication.ApplicationTearDown;
  FreeAndNil(errorManager);

end.
