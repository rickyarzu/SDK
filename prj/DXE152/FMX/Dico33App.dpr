program Dico33App;

uses
  System.StartUpCopy,
  FMX.Forms,
  ufrmTestDico33Fmx in '..\..\..\Testing\src\ufrmTestDico33Fmx.pas' {TabbedwithNavigationForm},
  Janua.Health.dmDico33Client in '..\..\..\src\januaunidac\datamodules\Janua.Health.dmDico33Client.pas' {dmDico33Client: TDataModule},
  udmHealthBooking in '..\..\..\src\januaunidac\datamodules\udmHealthBooking.pas' {dmHealthBooking: TDataModule},
  udmJanuaPostgresModel in '..\..\..\src\januaunidac\datamodules\udmJanuaPostgresModel.pas' {dmJanuaPostgresModel: TDataModule},
  Janua.FMX.PhoenixMobile.frameReportListModel in '..\..\..\src\FMX\Phoenix\Janua.FMX.PhoenixMobile.frameReportListModel.pas' {frameFMXPhoenixReportListModel: TFrame},
  Janua.FMX.PhoenixMobile.frameReportListEstinguishers in '..\..\..\src\FMX\Phoenix\Janua.FMX.PhoenixMobile.frameReportListEstinguishers.pas' {frameFMXPhoenixReportListEstinguishers: TFrame},
  Janua.FMX.PhoenixMobile.frameEstinguisher in '..\..\..\src\FMX\Phoenix\Janua.FMX.PhoenixMobile.frameEstinguisher.pas' {frameFMXMobileEstinguisher: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TdmDico33Client, dmDico33Client);
  Application.CreateForm(TTabbedwithNavigationForm, TabbedwithNavigationForm);
  Application.CreateForm(TdmHealthBooking, dmHealthBooking);
  Application.CreateForm(TdmJanuaPostgresModel, dmJanuaPostgresModel);
  Application.Run;
end.
