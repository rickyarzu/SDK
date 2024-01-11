unit udmTestPgFrameworks;

interface

uses
  System.SysUtils, System.Classes, Janua.Core.Servers, Janua.Core.Cms, Janua.Postgres.Cms, Janua.Core.JPublic,
  Janua.Postgres.JPublic, Janua.Core.Health, Janua.Postgres.Health, Janua.Core.System, Janua.Postgres.System,
  Janua.Core.Football, Janua.Postgres.Football, Janua.Core.Mail, Janua.Core.Classes, Janua.VCL.OS, Janua.Core.Swap,
  Janua.Postgres.Swap, Janua.Core.University, Janua.Postgres.Univeristy, Janua.Core.Ads, Janua.Postgres.Ads,
  Janua.Core.Statistics, Janua.Postgres.Statistics, Janua.Core.Social, Janua.Postgres.Social, Janua.Core.Forms,
  Janua.Postgres.Forms, Janua.Core.Books, Janua.Core.DB, Janua.Postgres.Servers, Janua.VCL.dlgServer,
  Janua.Core.Types,
  Janua.Core.Customcontrols, Janua.VCL.Dialogs, Data.DB, MemDS, VirtualTable, DBAccess, Uni, Janua.Core.Conf;

type
  TdmTestPgFrameworks = class(TDataModule)
    JanuaVCLOS1: TJanuaVCLOS;
    JanuaFiscalCode1: TJanuaFiscalCode;
    JanuaMailSender1: TJanuaMailSender;
    JanuaServerPgFootball: TJanuaServerPgFootball;
    JanuaPostgresSystem: TJanuaPostgresSystem;
    JanuaServerHealth: TJanuaServerHealth;
    JanuaServerJPublic: TJanuaServerJPublic;
    JanuaServerPgCms: TJanuaServerPgCms;
    JanuaServerConf1: TJanuaServerConf;
    JanuaServerPgAds1: TJanuaServerPgAds;
    JanuaServerPgUniversity1: TJanuaServerPgUniversity;
    JanuaPgServerSwap1: TJanuaPgServerSwap;
    JanuaPgStatisticsServer1: TJanuaPgStatisticsServer;
    JanuaServerSocial1: TJanuaServerSocial;
    JanuaServerPgUniBooks1: TJanuaServerPgUniBooks;
    JanuaPgServerForms1: TJanuaPgServerForms;
    JanuaPgConnection1: TJanuaPgConnection;
    JanuaVCLDBServerDialog1: TJanuaVCLDBServerDialog;
    JanuaDialog1: TJanuaDialog;
    vrtLogs: TVirtualTable;
    dsLogs: TUniDataSource;
    vrtDBLogs: TVirtualTable;
    dsBDLogs: TUniDataSource;
    JanuaDBLogger1: TJanuaDBLogger;
    procedure DataModuleCreate(Sender: TObject);
    procedure JanuaDBLogger1DBDatasetError(const Sender: TObject; const aLog: TJanuaDBDatasetError);
    procedure JanuaDBLogger1LogMsg(const Sender: TObject; const aLog: TJanuaLogRecord);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmTestPgFrameworks: TdmTestPgFrameworks;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TdmTestPgFrameworks.DataModuleCreate(Sender: TObject);
begin
  self.JanuaVCLOS1.Activate;

end;

procedure TdmTestPgFrameworks.JanuaDBLogger1DBDatasetError(const Sender: TObject; const aLog: TJanuaDBDatasetError);
begin
  aLog.AppendToDataset(self.vrtDBLogs);
end;

procedure TdmTestPgFrameworks.JanuaDBLogger1LogMsg(const Sender: TObject; const aLog: TJanuaLogRecord);
begin
  aLog.AppendToDataset(self.vrtLogs);
end;

end.
