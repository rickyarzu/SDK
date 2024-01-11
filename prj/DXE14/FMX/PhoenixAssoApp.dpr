program PhoenixAssoApp;

uses
  System.StartUpCopy,
  FMX.Forms,
  Janua.FMX.PhoenixMobile.frmMain in '..\..\..\src\FMX\Phoenix\Janua.FMX.PhoenixMobile.frmMain.pas' {frmFMXPhoenixMobileMain},
  Janua.FMX.PhoenixMobile.Resources in '..\..\..\src\FMX\Phoenix\Janua.FMX.PhoenixMobile.Resources.pas' {dmJanuaFMXPhoenixMobileResources: TDataModule},
  Janua.FMX.PhoenixMobile.frameReportItem in '..\..\..\src\FMX\Phoenix\Janua.FMX.PhoenixMobile.frameReportItem.pas' {Frame1: TFrame},
  Janua.FMX.PhoenixMobile.frameReportHeader in '..\..\..\src\FMX\Phoenix\Janua.FMX.PhoenixMobile.frameReportHeader.pas' {frameFMXPhoenixMobileReportHeader: TFrame},
  Janua.FMX.PhoenixMobile.frameReportListModel in '..\..\..\src\FMX\Phoenix\Janua.FMX.PhoenixMobile.frameReportListModel.pas' {frameFMXPhoenixReportListModel: TFrame},
  Janua.FMX.PhoenixMobile.frameReportListEstinguishers in '..\..\..\src\FMX\Phoenix\Janua.FMX.PhoenixMobile.frameReportListEstinguishers.pas' {frameFMXPhoenixReportListEstinguishers: TFrame},
  Janua.FMX.PhoenixMobile.frameEstinguisher in '..\..\..\src\FMX\Phoenix\Janua.FMX.PhoenixMobile.frameEstinguisher.pas' {frameFMXMobileEstinguisher: TFrame},
  Janua.FMX.PhoenixMobile.frameEstinguisherSettings in '..\..\..\src\FMX\Phoenix\Janua.FMX.PhoenixMobile.frameEstinguisherSettings.pas' {frameFMXPhoenixMobileEstinguisherSetting: TFrame},
  Janua.FMX.PhoenixMobile.frameFireHose in '..\..\..\src\FMX\Phoenix\Janua.FMX.PhoenixMobile.frameFireHose.pas' {frameFMXMobileFireHose: TFrame},
  Janua.FMX.PhoenixMobile.frameReportListFireHoses in '..\..\..\src\FMX\Phoenix\Janua.FMX.PhoenixMobile.frameReportListFireHoses.pas' {Frame4: TFrame},
  Janua.Phoenix.dmReportController in '..\..\..\src\januacore\datamodule\Janua.Phoenix.dmReportController.pas' {dmPhoenixReportController: TDataModule},
  Janua.Phoenix.dmReportRemoteModel in '..\..\..\src\januacore\datamodule\Janua.Phoenix.dmReportRemoteModel.dfm' {dmPhoenixReportRemoteModel: TDataModule},
  Janua.FMX.PhoenixMobile.frameReportListSmokeDetection in '..\..\..\src\FMX\Phoenix\Janua.FMX.PhoenixMobile.frameReportListSmokeDetection.pas' {frameFMXPhoenixReportListSmokeDetection: TFrame},
  Janua.FMX.PhoenixMobile.frameSmokeDetectionSettings in '..\..\..\src\FMX\Phoenix\Janua.FMX.PhoenixMobile.frameSmokeDetectionSettings.pas' {frameFMXPhoenixSmokeDetectionSetting: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmFMXPhoenixMobileMain, frmFMXPhoenixMobileMain);
  Application.CreateForm(TdmJanuaFMXPhoenixMobileResources, dmJanuaFMXPhoenixMobileResources);
  Application.CreateForm(TframeFMXPhoenixReportListEstinguishers, frameFMXPhoenixReportListEstinguishers);
  Application.CreateForm(TdmPhoenixReportController, dmPhoenixReportController);
  Application.CreateForm(TdmPhoenixReportRemoteModel, dmPhoenixReportRemoteModel);
  Application.Run;
end.
