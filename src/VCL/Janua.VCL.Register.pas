unit Janua.VCL.Register;


interface

uses
  // System
  System.Classes;

procedure Register;

implementation

uses // Cloud
  // Legacy
  Janua.Legacy.SplashDialog, JvxSpeedButton, JvxLabel,
  // Janua System
  Janua.VCL.System, Janua.VCL.Error, Janua.VCL.TestDebug, Janua.VCL.Mail,
  // Janua Controls
  Janua.VCL.EnhCRDBGrid, Janua.VCL.EnhDBGrid, Janua.VCL.Grids,
  // Janua Cloud
  Janua.VCL.Cloud, Janua.VCL.Backup, Janua.VCL.SMS, Janua.VCL.DirectoryBackup,
  // qUICK rePORT ,
  Janua.Legacy.QuickReport, Janua.Legacy.Qranglbl,
  // Statistics .......................................................................................................
  Janua.VCL.Statistics.MainFormController,
  // Printing
  Janua.Legacy.Logger, Janua.Legacy.Printers,
  // Health
  Janua.VCL.Health,
  // Janua Controllers
  Janua.VCL.Cloud.Images, Janua.VCL.AppController,
  // Janua.VCL.ExcelControllers,
  Janua.VCL.FootballControllers, Janua.VCL.Cloud.Files,
  // Forms Controllers
  Janua.VCL.Controls.Forms.Impl;

procedure Register;
begin
  RegisterComponents('Janua Legacy VCL', [TJvxLabel]);
  { TJanuaPrinter }
  RegisterComponents('Janua Legacy VCL', [TJvxSpeedButton]); // RegisterComponents('Januaproject', []);
  RegisterComponents('Janua Legacy VCL', [TJanuaSplashDialog]);
  RegisterComponents('Janua Legacy VCL', [TJanuaLogger]);
  RegisterComponents('Januaproject Win', [TJanuaLegacyPrinters]);
  // ************************************ Cloud *********************************************************
  { TJanuaVCLImagesManager }
  RegisterComponents('Januaproject VCL Cloud', [TJanuaVCLImagesManager]);
  { TJanuaVCLImagesManager }
  RegisterComponents('Januaproject VCL Cloud', [TJanuaVCLFilesManager]);
  // ************************************ Controls ******************************************************
  { Janua.VCL.Controls }
  // TJanuaVCLPageController
  RegisterComponents('Januaproject VCL Controls', [TJanuaVCLPageController]);
  // RegisterComponents('Januaproject VCL Controls', [TJanuaVCLTestControllers]);
  RegisterComponents('Januaproject VCL Controls', [TEnhCRDBGrid]);
  RegisterComponents('Januaproject VCL Controls', [TEnhDBGrid]);
  RegisterComponents('Januaproject VCL Controls', [TJanuaVclBackupTreeMaker]);
  { Janua.VCL.Health }
  RegisterComponents('Januaproject VCL Controls', [TJanuaVCLDoctor]);
  { Janua.VCL.System }
  RegisterComponents('Januaproject VCL Controls', [TJanuaVCLSystem]);
  RegisterComponents('Januaproject VCL Controls', [TJanuaSystem]);
  // TJanuaGridController
  RegisterComponents('Januaproject VCL Controls', [TJanuaGridController]);
  // Janua.VCL.Actions
  { Janua.VCL.SMS }
  RegisterComponents('Januaproject VCL Cloud', [TJanuaVclSms]);
  // TJanuaVCLCloudOAuthForm
  RegisterComponents('Januaproject VCL Cloud', [TJanuaVCLCloudOAuthForm]);
  { Janua.VCL.Excel }
  // RegisterComponents('Januaproject VCL Cloud', [TJanuaVCLExcel]);
  { Janua.VCL.Excel.TJanuaVCLFlexcelExport }
  // RegisterComponents('Januaproject VCL Cloud', [TJanuaVCLFlexcelExport]);

  // ************************************ Szystem  ********************************************************************
  // TJanuaDirBackupIO
  RegisterComponents('Januaproject VCL System', [TJanuaVCLDirBackupIO]);
  { Janua.VCL.Error }
  RegisterComponents('Januaproject VCL System', [TJanuaExceptionHandler]);
  { Janua.VCL.TestDebug }
  RegisterComponents('Januaproject VCL System', [TJanuaVCLTestLog]);

  // ************************************ Controller ******************************************************************
  // TJanuaVCLImageController
  RegisterComponents('Januaproject VCL Controllers', [TJanuaVCLImageController]);
  { Janua.VCL.Football }
  RegisterComponents('Januaproject VCL Controllers', [TJanuaVCLFootballRankingController]);
  { Janua.VCL.ExcelControllers }
  // RegisterComponents('Januaproject VCL Controllers', [TJanuaVCLExcelStringGridController]);
  { }
  RegisterComponents('Januaproject VCL Controllers', [TJanuaMailController]);

  RegisterComponents('Januaproject VCL Controllers', [TJanuaVCLAppsCollection]);

  // ************************************ Statistics *******************************************************************
  RegisterComponents('Januaproject VCL Forms', [TJanuaStatisticsMainForm]);
  RegisterComponents('Janua Legacy QuickReport', [TQRAngledLabel]);
  RegisterComponents('Janua Legacy QReport', [TgtQuickRep]);
  RegisterComponents('Janua Legacy QReport', [TgtQRBand]);
  RegisterComponents('Janua Legacy QReport', [TgtQRLabel]);
  RegisterComponents('Janua Legacy QReport', [TgtQRDBText]);
  RegisterComponents('Janua Legacy QReport', [TgtQRExpr]);
  RegisterComponents('Janua Legacy QReport', [TgtQRSysData]);
  RegisterComponents('Janua Legacy QReport', [TgtQRMemo]);
  RegisterComponents('Janua Legacy QReport', [TgtQRImage]);
  RegisterComponents('Janua Legacy QReport', [TgtQRDBImage]);
  RegisterComponents('Janua Legacy QReport', [TgtQRShape]);
  RegisterComponents('Janua Legacy QReport', [TgtQRRichText]);

end;

end.

