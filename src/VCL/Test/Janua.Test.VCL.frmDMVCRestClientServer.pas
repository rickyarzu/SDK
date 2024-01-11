unit Janua.Test.VCL.frmDMVCRestClientServer;

interface

uses
  // Rtl
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  // VCL
  VCL.Samples.Spin, VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.ExtCtrls, VCL.StdCtrls, VCL.Mask,
  VCL.ComCtrls, JvExStdCtrls, JvCombobox, JvDBCombobox, JvDBLookup, VCL.DBCtrls,
  // TMS
  AdvMemo, advmjson,
  // FireDAC
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Comp.Client,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet,
  // Janua
  Janua.REST.Intf,
  Janua.Test.DMVC.ClientTests,
  Janua.Test.VCL.frmRESTAuthorization,
  Janua.REST.Fdac.dmMemUrlSettings,
  Janua.VCL.Interposers, Janua.TMS.Interposers, JvExControls, Janua.DMVC.Test.DMVCServer;

type
  TfrmTestRestClientServer = class(TForm)
    pnlHead: TPanel;
    btnStart: TButton;
    PageControl1: TPageControl;
    btnLogin: TButton;
    memJWT: TAdvMemo;
    AdvJSONMemoStyler1: TAdvJSONMemoStyler;
    tabJson: TTabSheet;
    MemJWTJsonLog: TAdvMemo;
    btnConnections: TButton;
    dsConnections: TDataSource;
    cboRestUrl: TJvDBLookupCombo;
    edListeningPort: TSpinEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    lbConnectionSettings: TLabel;
    lbLocalPort: TLabel;
    lbUsername: TLabel;
    Label1: TLabel;
    procedure btnStartClick(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConnectionsClick(Sender: TObject);
  private
    FRestForm: TfrmVCLTestRESTAuthorization;
    FdmRestUrlSettings: TdmRestUrlSettings;
    FdmDMVCTestServer: TdmDMVCTestServer;
  end;

var
  frmTestRestClientServer: TfrmTestRestClientServer;

implementation

uses RESTRequest4D, Janua.Core.Functions, Janua.DMVC.Test.WebModule, Janua.REST.Client, Janua.Core.Json,
  Janua.Application.Framework, Janua.VCL.REST.dlgConnections;

const
  sl = sLineBreak;

{$R *.dfm}
  { TfrmTestRestClientServer }

procedure TfrmTestRestClientServer.btnConnectionsClick(Sender: TObject);
var
  dlgVCLRestConnections: TdlgVCLRestConnections;
begin
  dlgVCLRestConnections := TdlgVCLRestConnections.Create(Self);
  try
    dlgVCLRestConnections.ShowModal;
    FdmRestUrlSettings.SaveFile;
  finally
    dlgVCLRestConnections.Free;
  end;
end;

procedure TfrmTestRestClientServer.btnLoginClick(Sender: TObject);
var
  TabSheet: TTabSheet;
begin
  if FdmRestUrlSettings.Login then
  begin
    memJWT.Lines.Text := TJanuaApplication.RESTClientConf.JWT;
    if Assigned(MemJWTJsonLog) then
      MemJWTJsonLog.Text := JSonPretty(TJanuaJson.JsonJWT);
    if PageControl1.PageCount = 1 then
    begin
      TabSheet := TTabSheet.Create(PageControl1);
      TabSheet.Caption := 'Test DMVC Auth';
      TabSheet.PageControl := PageControl1;
      FRestForm := TfrmVCLTestRESTAuthorization.Create(Self);
      FRestForm.WindowState := wsMaximized;
      FRestForm.BorderStyle := bsNone;
      FRestForm.Parent := TabSheet;
      FRestForm.Show;
    end;
  end;
end;

procedure TfrmTestRestClientServer.btnStartClick(Sender: TObject);
begin
  if btnStart.Caption = 'Start' then
  begin
    FdmDMVCTestServer.Port := edListeningPort.Value;
    FdmDMVCTestServer.StartHttpServer;
    btnStart.Caption := 'Stop'
  end
  else
  begin
    FdmDMVCTestServer.StopHttpServer;
    btnStart.Caption := 'Start'
  end;
end;

procedure TfrmTestRestClientServer.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if btnStart.Caption = 'Stop' then
  begin

    btnStart.Caption := 'Start'
  end;
end;

procedure TfrmTestRestClientServer.FormCreate(Sender: TObject);
begin
  IsMultiThread := True;
  FdmDMVCTestServer := TdmDMVCTestServer.Create(Self);
  FdmRestUrlSettings := TdmRestUrlSettings.Create(Self);
  Self.dsConnections.DataSet := FdmRestUrlSettings.memConnections;
  FdmRestUrlSettings.Activate;
  dsConnections.DataSet := FdmRestUrlSettings.memConnections;
  cboRestUrl.DisplayValue := FdmRestUrlSettings.memConnectionsConnectionUrl.AsString;
  cboRestUrl.Value := FdmRestUrlSettings.memConnectionsjguid.AsString;
end;

end.
