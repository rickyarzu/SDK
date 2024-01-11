program JanuaFMXTestDesktop;

uses
  System.StartUpCopy,
  FMX.Forms,
  Janua.Core.Classes,
  Janua.Core.Types,
  ufrmFMXMainTest in '..\src\ufrmFMXMainTest.pas' {frmFmxDesktopMain},
  uTestHtml in '..\src\uTestHtml.pas',
  uTestMetro5 in '..\src\uTestMetro5.pas',
  udmAppConf in '..\..\..\src\DataModules\udmAppConf.pas' {dmAppConf: TDataModule},
  udmServerModel in '..\..\..\src\DataModules\udmServerModel.pas' {dmServerModel: TDataModule},
  udmTestFootball in '..\src\udmTestFootball.pas' {dmTestFootball: TDataModule},
  udmVirtualFootballServer in '..\..\src\januacore\datamodule\udmVirtualFootballServer.pas' {dmVirtualFootballServer: TDataModule},
  udmPgCms in '..\..\src\januaunidac\datamodules\udmPgCms.pas' {dmPgCms: TDataModule},
  Janua.Orm.Specifications.Intf in '..\..\src\januacore\orm\Janua.Orm.Specifications.Intf.pas',
  Janua.Dilettantissimo.Intf in '..\..\src\januacore\custom\Janua.Dilettantissimo.Intf.pas',
  udmVirtualCmsServer in '..\..\src\januacore\datamodule\udmVirtualCmsServer.pas' {dmVirtualCmsServer: TDataModule},
  udmPgSystemCommand in '..\..\src\januaunidac\datamodules\udmPgSystemCommand.pas' {dmPgSystemCommand: TDataModule},
  udmPgCloudStorage in '..\..\src\januaunidac\datamodules\udmPgCloudStorage.pas' {dmPgCloudStorage: TDataModule},
  Janua.Test.Football in '..\..\src\januacore\Test\Janua.Test.Football.pas',
  Janua.Orm.Specification.Impl in '..\..\src\januacore\orm\Janua.Orm.Specification.Impl.pas';

{$R *.res}


var
  FServerConf: TJanuaServerRecordConf;

begin
  FServerConf.Port := 5432;
  FServerConf.DatabaseName := 'ergomercator';
  FServerConf.Password := '3rg0m3rc4t0r';
  FServerConf.Username := 'ergo';
  FServerConf.Address := 'pg.januaservers.com';
  //FServerConf.Address := 'pg.januaservers.com';
  FServerConf.Schema := 'cms';
  FServerConf.DBEngine := TJanuaDBEngine.jdbPostgres;
  JanuaApplicationGlobalProfile.JanuaServerConf := FServerConf;
  // Creazione dei DataModule da Analizzare dal Frm Desktop Main
  Application.CreateForm(TdmPgSystemCommand, dmPgSystemCommand);
  Application.CreateForm(TdmPgCms, dmPgCms);
  Application.CreateForm(TdmPgCloudStorage, dmPgCloudStorage);
  Application.Initialize;
  Application.CreateForm(TfrmFmxDesktopMain, frmFmxDesktopMain);

  Application.Run;

end.
