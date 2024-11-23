program CarServiceDriverApp;

uses
  System.StartUpCopy,
  FMX.Forms,
  Janua.CarService.FMX.frmDriverMainMobile in '..\..\..\src\FMX\CarService\Janua.CarService.FMX.frmDriverMainMobile.pas' {frmFMXDriverMainMobile},
  Frame.ReportItem in '..\..\..\Samples\RESTCloudAPI\field-report-delphi\FieldReport\Frame.ReportItem.pas' {ReportItemFrame: TFrame},
  Settings in '..\..\..\Samples\RESTCloudAPI\field-report-delphi\FieldReport\Settings.pas',
  Janua.CarService.PgRemoteDrivers in '..\..\..\src\januaunidac\datamodules\Janua.CarService.PgRemoteDrivers.pas' {dmCarServicePgRemoteDrivers: TDataModule},
  Janua.Carservice.dmPgDrivers in '..\..\..\src\januaunidac\datamodules\Janua.Carservice.dmPgDrivers.pas' {dmPgCarServiceBookingDrivers: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmFMXDriverMainMobile, frmFMXDriverMainMobile);
  Application.Run;
end.
