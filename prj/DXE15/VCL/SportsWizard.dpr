program SportsWizard;

uses
  Vcl.Forms,
  Vcl.Dialogs,
  Midaslib,
  Vcl.Themes,
  Vcl.Styles,
  Janua.Core.Classes,
  Janua.Core.Types,
  Janua.Application.Framework,
  uJanuaVCLForm in '..\..\..\src\VCL\Forms\uJanuaVCLForm.pas' {JanuaVCLFormModel},
  uJanuaVCLFrame in '..\..\..\src\VCL\Forms\uJanuaVCLFrame.pas' {JanuaVCLFrameModel: TFrame},
  udmJanuaPostgresModel in '..\..\..\src\januaunidac\datamodules\udmJanuaPostgresModel.pas' {dmJanuaPostgresModel: TDataModule},
  Sports.VCL.dlgWizard in '..\..\..\src\VCL\Sports\Sports.VCL.dlgWizard.pas' {dlgVCLSportsWizard},
  Janua.Sports.pgChampionshipWizard in '..\..\..\src\januaunidac\datamodules\Janua.Sports.pgChampionshipWizard.pas' {dmPgSportsChampionshipWizard: TDataModule},
  PadelConf in '..\..\..\src\januacore\custom\PadelConf.pas';

{$R *.res}

begin
  Application.Initialize;

  TJanuaApplication.IsTestVersion := False;
  TJanuaApplication.ServerAddress := 'pg.januaservers.com';
  TJanuaApplication.ServerDatabaseName := 'ergomercator';
  TJanuaApplication.Initialize;

  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmPgSportsChampionshipWizard, dmPgSportsChampionshipWizard);
  Application.CreateForm(TdlgVCLSportsWizard, dlgVCLSportsWizard);
  Application.Run;

end.
