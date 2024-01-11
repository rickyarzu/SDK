unit Janua.VCL.Test.FiredacExportImport;

interface

uses
  MVCFramework,
  MVCFramework.Logger,
  MVCFramework.Commons,
  MVCFramework.Signal,
  Web.ReqMulti,
  Web.WebReq,
  Web.WebBroker,
  IdContext,
  IdHTTPWebBrokerBridge,
  Janua.Test.DMVC.WebModuleImportExport,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, VCL.Graphics,
  VCL.Controls, VCL.Forms, VCL.Dialogs, Data.DB, VCL.StdCtrls, VCL.DBCtrls, VCL.Grids, VCL.DBGrids,
  VCL.ComCtrls, VCL.ExtCtrls, VCL.Samples.Spin, AdvCustomControl, AdvWebBrowser, AdvMemo, Advmxml, advmjson,
  DBAdvMemo;

type
  TfrmVCLTestFiredacExportImport = class(TForm)
    PageControl1: TPageControl;
    tabFiredac: TTabSheet;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    btnExportBinary: TButton;
    btnExportJson: TButton;
    btnImportBinary: TButton;
    btnImportJson: TButton;
    dsFireDACClienti: TDataSource;
    dsRemoteFireDACClienti: TDataSource;
    tabUniDAC: TTabSheet;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    memExportXML: TMemo;
    dsUniCountries: TDataSource;
    dsVirtualCountries: TDataSource;
    pnlTop: TPanel;
    btnStartServer: TButton;
    spPort: TSpinEdit;
    tabDMVCSimpleTest: TTabSheet;
    pnlUrl: TPanel;
    edtUrl: TEdit;
    btnUrl: TButton;
    AdvWebBrowser1: TAdvWebBrowser;
    tabRESTClientFDAC: TTabSheet;
    DBGrid5: TDBGrid;
    btnExportXml: TButton;
    btnImportXML: TButton;
    AdvJSONMemoStyler1: TAdvJSONMemoStyler;
    AdvXMLMemoStyler1: TAdvXMLMemoStyler;
    memExport: TAdvMemo;
    pnlButtons: TPanel;
    Panel6: TPanel;
    lblStatusCode: TLabel;
    Label3: TLabel;
    advMemoClient: TDBAdvMemo;
    btnJson: TButton;
    btnRecord: TButton;
    btnXml: TButton;
    btnBin: TButton;
    procedure btnExportBinaryClick(Sender: TObject);
    procedure btnImportBinaryClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure btnStartServerClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnUrlClick(Sender: TObject);
    procedure btnExportJsonClick(Sender: TObject);
    procedure btnImportJsonClick(Sender: TObject);
    procedure btnImportXMLClick(Sender: TObject);
    procedure btnExportXmlClick(Sender: TObject);
    procedure btnBinClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure RunServer(const aPort: UInt16);
  end;

var
  frmVCLTestFiredacExportImport: TfrmVCLTestFiredacExportImport;

implementation

{$R *.dfm}

uses Janua.Test.dmFiredacExportImport, Janua.Core.Json, udmPgTestExportImport, Janua.Core.DB.Types,
  Janua.Test.Firead.dmRemoteDMCustomers;

var
  LServer: TIdHTTPWebBrokerBridge;

procedure TfrmVCLTestFiredacExportImport.btnBinClick(Sender: TObject);
begin
  advMemoClient.Lines.Text := dmTestFDacRemoteCustomers.OpenCustomers(TRestFormat.rfBinary);
end;

procedure TfrmVCLTestFiredacExportImport.btnExportBinaryClick(Sender: TObject);
begin
  memExport.Lines.Text := dmTestFireDACImportExport.ExportArticoliBinary
end;

procedure TfrmVCLTestFiredacExportImport.btnExportJsonClick(Sender: TObject);
begin
  memExport.Lines.Text := JsonPretty(dmTestFireDACImportExport.ExportArticoliJson);
  memExport.SyntaxStyles := AdvJSONMemoStyler1;
end;

procedure TfrmVCLTestFiredacExportImport.btnExportXmlClick(Sender: TObject);
begin
  memExport.Lines.Text := dmTestFireDACImportExport.ExportArticoliXml;
  memExport.SyntaxStyles := AdvXMLMemoStyler1;
end;

procedure TfrmVCLTestFiredacExportImport.btnImportBinaryClick(Sender: TObject);
begin
  dmTestFireDACImportExport.ImportArticoliBinary;
end;

procedure TfrmVCLTestFiredacExportImport.btnImportJsonClick(Sender: TObject);
begin
  dmTestFireDACImportExport.ImportArticoliJson
end;

procedure TfrmVCLTestFiredacExportImport.btnImportXMLClick(Sender: TObject);
begin
  dmTestFireDACImportExport.ImportArticoliXml
end;

procedure TfrmVCLTestFiredacExportImport.btnStartServerClick(Sender: TObject);
begin
  IsMultiThread := True;
  // DMVCFramework Specific Configuration
  // When MVCSerializeNulls = True empty nullables and nil are serialized as json null.
  // When MVCSerializeNulls = False empty nullables and nil are not serialized at all.
  MVCSerializeNulls := True;
  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleClass;
  WebRequestHandlerProc.MaxConnections := 1024;
  RunServer(UInt16(spPort.Value));
end;

procedure TfrmVCLTestFiredacExportImport.btnUrlClick(Sender: TObject);
begin
  AdvWebBrowser1.Navigate(self.edtUrl.Text)
end;

procedure TfrmVCLTestFiredacExportImport.Button1Click(Sender: TObject);
begin
  memExportXML.Text := dmPgTestExportImport.ExportArticoliBinary;
end;

procedure TfrmVCLTestFiredacExportImport.Button3Click(Sender: TObject);
begin
  dmPgTestExportImport.ImportArticoliBinary
end;

procedure TfrmVCLTestFiredacExportImport.FormDestroy(Sender: TObject);
begin
  if Assigned(LServer) then
  begin
    LServer.Active := False;
    LServer.Free;
  end;
end;

procedure TfrmVCLTestFiredacExportImport.RunServer(const aPort: UInt16);
begin
  // Writeln('** DMVCFramework Server ** build ' + DMVCFRAMEWORK_VERSION);
  LServer := TIdHTTPWebBrokerBridge.Create(nil);
  LServer.OnParseAuthentication := TMVCParseAuthentication.OnParseAuthentication;
  LServer.DefaultPort := aPort;
  LServer.KeepAlive := True;

  { more info about MaxConnections
    http://ww2.indyproject.org/docsite/html/frames.html?frmname=topic&frmfile=index.html }
  LServer.MaxConnections := 0;

  { more info about ListenQueue
    http://ww2.indyproject.org/docsite/html/frames.html?frmname=topic&frmfile=index.html }
  LServer.ListenQueue := 200;

  LServer.Active := True;
  // WriteLn('Listening on port ', APort);
  // Write('CTRL+C to shutdown the server');
  // WaitForTerminationSignal;
  // EnterInShutdownState;
  // LServer.Active := False;
end;

end.
