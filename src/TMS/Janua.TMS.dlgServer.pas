unit Janua.TMS.dlgServer;

interface

uses
  // System
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  // Janua
  Janua.Core.Functions, Janua.Core.Servers, Janua.Core.Sockets,
  Janua.Core.Types, uJanuaVCLForm,
  Janua.Core.Classes.Intf, Janua.Orm.Intf, Janua.Forms.Types, Janua.Core.DB.Intf,
  Janua.Controls.Intf, Janua.Controls.Forms.Intf,
  // VCL
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.StdCtrls, AdvEdit, DBAdvEd, AdvGlowButton,
  AdvAppStyler,
  VCL.ExtCtrls, AdvOfficeButtons, Vcl.Mask, AdvSpin, Vcl.ComCtrls;

type
  TdlgTMSSelectServer = class(TJanuaVCLFormModel, IJanuaForm, IJanuaContainer)
    Shader1: TPanel;
    Label1: TLabel;
    lbIP: TLabel;
    Label3: TLabel;
    lbDNDSuccess: TLabel;
    edServerAddress: TEdit;
    Label2: TLabel;
    edDatabase: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    edUsername: TEdit;
    Label6: TLabel;
    edPassword: TEdit;
    AdvGlowButton1: TAdvGlowButton;
    btnCancel: TAdvGlowButton;
    btnOK: TAdvGlowButton;
    Label7: TLabel;
    edSchema: TEdit;
    ckbDirect: TAdvOfficeCheckBox;
    cboDBEngine: TComboBox;
    Label8: TLabel;
    edPort: TAdvSpinEdit;
    procedure edServerAddressExit(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FLocalServerDBConf: TJanuaServerRecordConf;
    FLocalDBConnection: IJanuaDBConnection;
    procedure SetServerConf;
    procedure SetControls;
  protected
    function GetLocalDBConnection: IJanuaDBConnection;
    procedure SetLocalDBConnection(const Value: IJanuaDBConnection);
  public
    { Public declarations }
    property LocalDBConnection: IJanuaDBConnection read FLocalDBConnection write SetLocalDBConnection;
  end;

implementation

uses Janua.Application.Framework;

{$R *.dfm}

procedure TdlgTMSSelectServer.AdvGlowButton1Click(Sender: TObject);
begin
  SetServerConf;

  // Janua DB Connection è la connessioen ad un Server e 'risiede' in una Server Record Conf.

  self.FLocalDBConnection.ServerConf := TJanuaApplication.JanuaServerConf;
  if FLocalDBConnection.TestConnection then
  begin
    TJanuaApplication.Dialogs.JShowMessage('Connessione Ok');
    self.btnOK.Enabled := True
  end
  else
  begin
    TJanuaApplication.Dialogs.JShowError('Errore di connessione al server',
      FLocalDBConnection.LastErrorMessage);
    self.btnOK.Enabled := False
  end;
end;

procedure TdlgTMSSelectServer.edServerAddressExit(Sender: TObject);
begin
  SetServerConf;
  FLocalDBConnection.ServerConf.TestAddress;
  lbIP.Caption := FLocalDBConnection.ServerConf.IP;
  lbDNDSuccess.Caption := FLocalDBConnection.ServerConf.TestMessage;
end;

procedure TdlgTMSSelectServer.FormCreate(Sender: TObject);
var
  aEngine: TJanuaDBEngine;
begin
  FLocalDBConnection := Janua.Core.DB.Intf.DBConnection; // TJanuaCustomDBConnection.Create(self);
  { type
    TJanuaDBEngine = (jdbOracle, jdbPostgres, jdbMySql, jdbMongoDB, jdbODBC, jdbInterbase, jdbFirebird,
    jdbTmsRemoteDB, jdbMSAccess);

    const
    JanuaDBEngineCode: array [TJanuaDBEngine] of string = ('Oracle', 'Postgres', 'MySql', 'MongoDB', 'ODBC',
    'Interbase', 'Firebird', 'TMS RemoteDB', 'MSAccess'); }

  for aEngine :=  Low(TJanuaDBEngine) to High(TJanuaDBEngine) do
    cboDBEngine.Items.Add(JanuaDBEngineCode[aEngine]);
end;

function TdlgTMSSelectServer.GetLocalDBConnection: IJanuaDBConnection;
begin
  Result := FLocalDBConnection
end;

procedure TdlgTMSSelectServer.SetControls;
begin

end;

procedure TdlgTMSSelectServer.SetLocalDBConnection(const Value: IJanuaDBConnection);
begin
  if Assigned(Value) and (Value <> FLocalDBConnection) then
  begin
    FLocalDBConnection := Value;
    FLocalServerDBConf := FLocalDBConnection.ServerConf;
  end;
end;

procedure TdlgTMSSelectServer.SetServerConf;
begin
   FLocalServerDBConf.Port := self.edPort.Value;
   FLocalServerDBConf.Address := self.edServerAddress.Text;
   FLocalServerDBConf.DatabaseName := self.edDatabase.Text;
   FLocalServerDBConf.Direct := self.ckbDirect.Checked;
   FLocalServerDBConf.Username := self.edUsername.Text;
   FLocalServerDBConf.Password := self.edPassword.Text;
   FLocalServerDBConf.Schema := self.edSchema.Text;
   FLocalServerDBConf.EngineName := cboDBEngine.Items[cboDBEngine.ItemIndex];

   FLocalDBConnection.ServerConf :=  FLocalServerDBConf;
end;

end.
