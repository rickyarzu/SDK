program CarServiceUser;

uses
  System.SysUtils,
  System.StrUtils,
  Vcl.Forms,
  Vcl.Graphics,
  Janua.TMS.Error,
  Janua.Core.Functions,
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
  ufrmVCLItemsVMNavigator in '..\..\..\src\VCL\Items\ufrmVCLItemsVMNavigator.pas' {frmVCLItemsVMNavigator},
  uframeVCLItem in '..\..\..\src\VCL\Items\uframeVCLItem.pas' {frameVCLItem: TFrame},
  ufrmVCLOutlookOLEAutomation in '..\..\..\Samples\Office OLE\Outlook\ufrmVCLOutlookOLEAutomation.pas' {frmVCLOutlookOLEAutomation},
  ufrmLogisticMain in '..\..\..\src\VCL\Logistic\ufrmLogisticMain.pas' {frmLogisticMain},
  UTMSTetMenuFrame in '..\..\..\src\VCL\Forms\UTMSTetMenuFrame.pas' {TMSTestMenuFrame: TFrame},
  Janua.Test.VCL.frmTestFilters in '..\..\..\Samples\VCL\ViewModel\Janua.Test.VCL.frmTestFilters.pas' {frmVCLTestFilters},
  ufrmGridsTestings in '..\..\..\Samples\VCL\GridsTesting\ufrmGridsTestings.pas' {frmVCLTestGrids},
  Janua.CarService.VCLApplication in '..\..\..\src\VCL\CarService\Janua.CarService.VCLApplication.pas',
  Janua.CarService.VCL.dlgProtoCustomer in '..\..\..\src\VCL\CarService\Janua.CarService.VCL.dlgProtoCustomer.pas' {frmCarServiceLoginRegister},
  Janua.CarService.VCL.frmCarBooking in '..\..\..\src\VCL\CarService\Janua.CarService.VCL.frmCarBooking.pas' {frmVCLCarServiceBooking};

{$R *.res}

var
  errorManager: TJanuaTmsExceptionHandler;
  FLoginCount: Byte;
  FLoginRegister: TLoginRegister;

Label GotoLabel;

function TryLogin: Boolean;
var
  ldlgLoginRegister: TfrmCarServiceLoginRegister;
begin
  Inc(FLoginCount);
  // Result := False;
  ldlgLoginRegister := TfrmCarServiceLoginRegister.Create(nil);
  try
    ldlgLoginRegister.ShowModal;
    FLoginRegister := ldlgLoginRegister.LoginRegister;
    if FLoginRegister = TLoginRegister.lrLogin then
      Result := TJanuaApplication.UserSessionVM.SilentLogin(ldlgLoginRegister.User)
    else
      Result := TJanuaApplication.UserSessionVM.RegisterUser(ldlgLoginRegister.UserProfile)
  finally
    ldlgLoginRegister.Free;
    ldlgLoginRegister := nil;
  end;
end;

begin
  FLoginCount := 0;
  Application.Initialize;
  errorManager := TJanuaTmsExceptionHandler.Create(Application);
  errorManager.Activate;
  TStyleManager.TrySetStyle('Calypso LE');
  // Inizializzazione TAilor Made Logistic Application
  // Viene impostato l'albero delle finestre ed il menu principale
  TJanuaCarServiceVCLApplication.ApplicationSetup;
  TJanuaApplication.Title := 'Car Service Main Application';
  Application.Title := 'Car Service Main Application';
  Application.MainFormOnTaskbar := True;
{$IFDEF DEBUG}
  System.ReportMemoryLeaksOnShutdown := True;
{$ENDIF}
GotoLabel:
  if TryLogin then
  begin
    TJanuaCarServiceVCLApplication.AfterLogin;
    Application.CreateForm(TfrmVCLCarServiceBooking, frmVCLCarServiceBooking);
     Application.Run;
  end
  else
  begin
    JShowError(IfThen(FLoginRegister = lrLogin, 'Errore di Login', 'Errore di Registrazione Utente'));
    if FLoginCount < 3 then
      Application.Terminate
    else
      GoTo GotoLabel;
  end;

  TJanuaCarServiceVCLApplication.ApplicationTearDown;
  FreeAndNil(errorManager);

end.
