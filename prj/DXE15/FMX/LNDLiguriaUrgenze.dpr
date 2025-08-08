program LNDLiguriaUrgenze;

uses
  System.StartUpCopy,
  FMX.Forms,
  Janua.FMX.frmLNDUrgenzeMain in '..\..\..\src\FMX\Football\Janua.FMX.frmLNDUrgenzeMain.pas' {frmLNDUrgenzeMain},
  udmWpJson in '..\..\..\src\januacore\datamodule\udmWpJson.pas' {dmWpJson: TDataModule},
  uLNDMainDataModule in '..\..\..\..\Projects\mobile\lnd\uLNDMainDataModule.pas' {LNDMainDataModule: TDataModule},
  uLNDBrowser in '..\..\..\..\Projects\mobile\lnd\uLNDBrowser.pas' {fmLndBrowser},
  Janua.Wordpress.Impl in '..\..\..\src\januacore\Janua.Wordpress.Impl.pas',
  Janua.Cloud.Http.Impl in '..\..\..\src\januacore\Janua.Cloud.Http.Impl.pas',
  Janua.Html.Impl in '..\..\..\src\januacore\Janua.Html.Impl.pas',
  Janua.Wordpress.Types in '..\..\..\src\januacore\Janua.Wordpress.Types.pas',
  Janua.Cloud.Http.Intf in '..\..\..\src\januacore\Janua.Cloud.Http.Intf.pas',
  Janua.Cloud.Files.Impl in '..\..\..\src\januacore\Janua.Cloud.Files.Impl.pas',
  Janua.FMX.WordpressLogin in '..\..\..\src\FMX\Common\Janua.FMX.WordpressLogin.pas' {frmLogin},
  Janua.Core.RESTCloudDatamodule in '..\..\..\src\januacore\Janua.Core.RESTCloudDatamodule.pas' {JanuaRestCloudDataModule: TDataModule},
  Janua.Core.Classes.Social in '..\..\..\src\januacore\Janua.Core.Classes.Social.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmLNDUrgenzeMain, frmLNDUrgenzeMain);
  Application.CreateForm(TJanuaRestCloudDataModule, JanuaRestCloudDataModule);
  Application.Run;
end.
