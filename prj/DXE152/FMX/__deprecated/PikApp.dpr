program PikApp;

uses
  System.StartUpCopy,
  FMX.Forms,
  Janua.Application.Framework,
  Janua.Uni.Framework,
  Janua.ViewModels.Framework,
  Janua.FMX.Application,
  Janua.CarService.FMX.frmTabbedCarService
    in '..\..\..\src\FMX\CarService\Janua.CarService.FMX.frmTabbedCarService.pas' {TabbedwithNavigationForm} ,
  Janua.FMX.LoginDialog in '..\..\..\src\FMX\Janua.FMX.LoginDialog.pas' {dlgFMXLoginDialogMobile} ,
  Janua.FMX.frmModel in '..\..\..\src\FMX\Janua.FMX.frmModel.pas' {frmFMXModel} ,
  Janua.CarService.FMX.dlgLoginMobile
    in '..\..\..\src\FMX\CarService\Janua.CarService.FMX.dlgLoginMobile.pas' {dlgFMXCarserviceLoginDialogMobile} ,
  Janua.CarService.FMX.Application in '..\..\..\src\FMX\CarService\Janua.CarService.FMX.Application.pas',
  Janua.FMX.frmAccessCamera in '..\..\..\src\FMX\Janua.FMX.frmAccessCamera.pas' {AccessCameraAppForm} ,
  Janua.FMX.frmSignatureCaptureMobile
    in '..\..\..\src\FMX\Janua.FMX.frmSignatureCaptureMobile.pas' {rmFMXSignatureCaptureMobile} ,
  JOrm.Anagraph.Anagraphs.Custom.Intf in '..\..\..\src\januacore\orm\JOrm.Anagraph.Anagraphs.Custom.Intf.pas',
  Janua.CarService.dmPgDrivers
    in '..\..\..\src\januaunidac\datamodules\Janua.Carservice.dmPgDrivers.pas' {dmPgCarServiceBookingDrivers: TDataModule};

{$R *.res}

function GetForm: TForm;
begin
  Application.CreateForm(TTabbedwithNavigationForm, TabbedwithNavigationForm);
  Application.MainForm := TabbedwithNavigationForm;
  Result := TabbedwithNavigationForm;
end;

var
  FSessionKey: string;

begin
  TJanuaApplication.ServerUserName := 'ergo';
  TJanuaApplication.ServerAddress := 'pg.januaservers.com';
  TJanuaApplication.ServerSchema := 'ergomercator';
  TJanuaApplication.DBSchemaID := 36;
  TJanuaApplication.ServerPassword := '3rg0m3rc4t0r';
  TJanuaApplication.ServerPort := 5432;
  TJanuaApplication.AppName := ('drivers.carservice.com');
  Application.Initialize;
  TJanuaCarServiceFMXMobileApplication.ApplicationSetup('drivers.carservice.com');

    FSessionKey := TJanuaCoreOS.ReadRegistryCrypt(False, 'SessionKey', 'System', FSessionKey);

    if FSessionKey = '' then
    begin
      TJanuaFMXApplication.MainFormFunc := GetForm;
      Application.CreateForm(TdlgFMXCarserviceLoginDialogMobile, dlgFMXCarserviceLoginDialogMobile);
      Application.Run;
    end
    else
    begin
      TJanuaApplication.UserSessionVM.LoginByKey(FSessionKey);
      Application.CreateForm(TTabbedwithNavigationForm, TabbedwithNavigationForm);
      Application.MainForm := TabbedwithNavigationForm;
      Application.Run;
    end;

end.
