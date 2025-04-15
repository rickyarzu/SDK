program PickAPP;

uses
  System.StartUpCopy,
  FMX.Forms,
  Janua.Application.Framework,
  Janua.Uni.Framework,
  Janua.ViewModels.Framework,
  Janua.FMX.Application,
  Janua.FMX.dlgNotes in '..\..\..\..\src\FMX\Janua.FMX.dlgNotes.pas' {dlgFMXNotes},
  Janua.CarService.FMX.frmTabbedCarService in '..\..\..\..\src\FMX\CarService\Janua.CarService.FMX.frmTabbedCarService.pas' {frmFMXCarServiceDriverMain},
  Janua.FMX.LoginDialog in '..\..\..\..\src\FMX\Janua.FMX.LoginDialog.pas' {dlgFMXLoginDialogMobile},
  Janua.FMX.frmModel in '..\..\..\..\src\FMX\Janua.FMX.frmModel.pas' {frmFMXModel},
  Janua.CarService.FMX.dlgLoginMobile in '..\..\..\..\src\FMX\CarService\Janua.CarService.FMX.dlgLoginMobile.pas' {dlgFMXCarserviceLoginDialogMobile},
  Janua.CarService.FMX.Application in '..\..\..\..\src\FMX\CarService\Janua.CarService.FMX.Application.pas',
  Janua.FMX.frmAccessCamera in '..\..\..\..\src\FMX\Janua.FMX.frmAccessCamera.pas' {AccessCameraAppForm},
  Janua.FMX.frmSignatureCaptureMobile in '..\..\..\..\src\FMX\Janua.FMX.frmSignatureCaptureMobile.pas' {frmFMXSignatureCaptureMobile},
  Janua.Carservice.dmPgDrivers in '..\..\..\..\src\januaunidac\datamodules\Janua.Carservice.dmPgDrivers.pas' {dmPgCarServiceBookingDrivers: TDataModule},
  Janua.FMX.frameUserMobile in '..\..\..\..\src\FMX\Common\Janua.FMX.frameUserMobile.pas' {frameFMXRegisterMobile: TFrame},
  Janua.CarService.FMX.dmDriverClient in '..\..\..\..\src\FMX\CarService\Janua.CarService.FMX.dmDriverClient.pas' {dmCarserviceFMXDriverClient: TDataModule},
  Janua.CarService.FMX.frameDriverConfirmation in '..\..\..\..\src\FMX\CarService\Janua.CarService.FMX.frameDriverConfirmation.pas' {frameFMXCarServiceDriverConfirmation: TFrame},
  Janua.CarService.FMX.dlgBrowser in '..\..\..\..\src\FMX\CarService\Janua.CarService.FMX.dlgBrowser.pas' {dlgCarServiceBrowser},
  Janua.FMX.frameCanvasPaintImage in '..\..\..\..\src\FMX\Janua.FMX.frameCanvasPaintImage.pas' {frameFMXImageDraw: TFrame},
  Janua.FMX.dlgCanvasImageBlox in '..\..\..\..\src\FMX\Janua.FMX.dlgCanvasImageBlox.pas' {dlgFMXCanvasImageBlox},
  Janua.FMX.frameFNCBlox in '..\..\..\..\src\FMX\Janua.FMX.frameFNCBlox.pas' {frameFNCBloxDrawing: TFrame},
  Janua.FXM.FNCBloxControls in '..\..\..\..\src\FMX\Janua.FXM.FNCBloxControls.pas',
  Janua.FMX.dlgCanvasImage in '..\..\..\..\src\FMX\Janua.FMX.dlgCanvasImage.pas' {dlgFMXCanvasImage};

{$R *.res}

function GetForm: TForm;
begin
  Application.CreateForm(TfrmFMXCarServiceDriverMain, frmFMXCarServiceDriverMain);
  Application.MainForm := frmFMXCarServiceDriverMain;
  Result := frmFMXCarServiceDriverMain;
end;

var
  FSessionKey: string;

begin
  TJanuaApplication.ServerUserName := 'ergo';
  TJanuaApplication.ServerSchema := 'ergomercator';
  TJanuaApplication.DBSchemaID := 36;
  TJanuaApplication.ServerPassword := '3rg0m3rc4t0r';
  TJanuaApplication.ServerPort := 5432;
  TJanuaApplication.AppName := ('drivers.carservice.com');
  TJanuaApplication.ServerAddress := 'pg.januaservers.com' { 185.36.74.140 };

    Application.Initialize;
  TJanuaCarServiceFMXMobileApplication.ApplicationSetup('drivers.carservice.com');
  TJanuaApplication.ServerAddress := 'pg.januaservers.com' { 185.36.74.140 };
  // Remote Configuration  {'https://api.pikapp.it/'}
  TJanuaApplication.RestServer := 'https://api.pikapp.it';
  TJanuaApplication.RESTClientConf.Server := 'https://api.pikapp.it';
  TJanuaApplication.RESTClientConf.Port := 0; // usa la porta di Default 443 per https in questo caso
  (*
    // Local Configuration
    TJanuaApplication.RestServer := 'http://127.0.0.1';
    TJanuaApplication.RESTClientConf.Server := 'http://127.0.0.1';
    TJanuaApplication.RESTClientConf.Port := 9010;
  *)

  if FSessionKey = '' then
  begin
    // associa la funzione di CallBack ShowForm (principale) a GetForm dichiarata qui sopra
    // La CallBack viene chiamata dalla Dialog se viene chiusa positivamente e viene fatto il login
    TJanuaFMXApplication.MainFormFunc := GetForm;
    Application.CreateForm(TdlgFMXCarserviceLoginDialogMobile, dlgFMXCarserviceLoginDialogMobile);
    Application.Run;
  end
  else
  begin
    TJanuaApplication.UserSessionVM.LoginByKey(FSessionKey);
    Application.CreateForm(TfrmFMXCarServiceDriverMain, frmFMXCarServiceDriverMain);
    Application.MainForm := frmFMXCarServiceDriverMain;
    Application.Run;
  end;

end.
