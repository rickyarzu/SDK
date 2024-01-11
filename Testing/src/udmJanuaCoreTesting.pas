unit udmJanuaCoreTesting;

interface

uses
  System.SysUtils, System.Classes, Janua.Core.Mail, Janua.Core.System, Janua.Core.Classes,
  Janua.Core.Football, Janua.Postgres.Football, Janua.Postgres.System, Janua.Core.Cms, Janua.Core.Types,
  Janua.Postgres.Cms, Janua.Core.Servers, Janua.VCL.OS, Janua.Core.Statistics, Janua.Postgres.Statistics,
  System.Net.URLClient, System.Net.HttpClient, System.Net.HttpClientComponent, Janua.Core.DB, Janua.Postgres.Servers,
  Janua.Core.Customcontrols, Janua.VCL.Dialogs, Janua.VCL.dlgServer, Data.DB, MemDS, VirtualTable, Janua.Core.Conf;

type
  TdmJanuaCoreTesting = class(TDataModule)
    JanuaMailSender1: TJanuaMailSender;
    JanuaServerPgFootball: TJanuaServerPgFootball;
    JanuaServerPgCms: TJanuaServerPgCms;
    JanuaPostgresSystem: TJanuaPostgresSystem;
    JanuaVCLOS1: TJanuaVCLOS;
    JanuaServerConf1: TJanuaServerConf;
    JanuaPgStatisticsServer1: TJanuaPgStatisticsServer;
    NetHTTPClient1: TNetHTTPClient;
    NetHTTPRequest1: TNetHTTPRequest;
    JanuaVCLDBServerDialog1: TJanuaVCLDBServerDialog;
    JanuaDialog1: TJanuaDialog;
    JanuaPgConnection1: TJanuaPgConnection;
    JanuaDBLogger1: TJanuaDBLogger;
    vrtLogs: TVirtualTable;
    vrtDBLogs: TVirtualTable;
    procedure JanuaDBLogger1DBDatasetError(const Sender: TObject; const aLog: TJanuaDBDatasetError);
    procedure JanuaDBLogger1LogMsg(const Sender: TObject; const aLog: TJanuaLogRecord);
  private
    { Private declarations }
  public
    { Public declarations }
    function Activate: boolean;
  end;

var
  dmJanuaCoreTesting: TdmJanuaCoreTesting;

implementation

{ %CLASSGROUP 'Vcl.Controls.TControl' }

{$R *.dfm}
{ TdmJanuaCoreTesting }

function TdmJanuaCoreTesting.Activate: boolean;
begin
  try
    if self.JanuaVCLOS1.Activate then
    begin
      self.JanuaMailSender1.LoadParams;
      self.JanuaServerConf1.LoadProfile;
    end;
  except
    on e: exception do
    begin
      Result := False;
      raise exception.Create('TdmJanuaCoreTesting.Activate: ' + e.Message);
    end;
  end;
end;

procedure TdmJanuaCoreTesting.JanuaDBLogger1DBDatasetError(const Sender: TObject; const aLog: TJanuaDBDatasetError);
begin
  aLog.AppendToDataset(vrtDBLogs);
end;

procedure TdmJanuaCoreTesting.JanuaDBLogger1LogMsg(const Sender: TObject; const aLog: TJanuaLogRecord);
begin
  aLog.AppendToDataset(self.vrtLogs)
end;

end.
