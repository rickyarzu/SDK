unit Janua.VCL.dlgServer;

interface

uses
  // System
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  // Janua
  Janua.Core.Classes, Janua.Core.Servers, Janua.Core.Sockets, Janua.Core.DB, Janua.Core.DB.Intf,
  Janua.Core.CustomControls, Janua.Core.Types, Janua.Controls.Dialogs.Impl, Janua.Controls.Dialogs.Intf,
  // VCL
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.StdCtrls, AdvEdit, DBAdvEd, AdvGlowButton,
  AdvAppStyler,
  VCL.ExtCtrls, Shader, AdvOfficeButtons, AdvStyleIF, VCL.Mask, VCL.DBCtrls;

type
  TdlgVCLSelectServer = class(TForm)
    Shader1: TPanel;
    Label1: TLabel;
    lbIP: TLabel;
    Label3: TLabel;
    lbDNDSuccess: TLabel;
    edServerAddress: TEdit;
    Label2: TLabel;
    edDatabase: TEdit;
    Label4: TLabel;
    edPort: TDBEdit;
    Label5: TLabel;
    edUsername: TEdit;
    Label6: TLabel;
    edPassword: TEdit;
    AdvGlowButton1: TButton;
    btnCancel: TButton;
    btnOK: TButton;
    Label7: TLabel;
    edSchema: TEdit;
    ckbDirect: TAdvOfficeCheckBox;
    procedure edServerAddressExit(Sender: TObject);
    procedure edServerAddressChange(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FJanuaDBConnection: IJanuaDBConnection;
    FLocalServerConf: TJanuaServerRecordConf;
    procedure SetServerConf;
    procedure SetLocalServerConf(const Value: TJanuaServerRecordConf);
    procedure SetJanuaDBConnection(const Value: IJanuaDBConnection);
  public
    { Public declarations }
    property JanuaDBConnection: IJanuaDBConnection read FJanuaDBConnection write SetJanuaDBConnection;
    property LocalServerConf: TJanuaServerRecordConf read FLocalServerConf write SetLocalServerConf;
  end;

type
  TJanuaVCLDBServerDialog = class(TJanuaCustomDBServerDialog, IJanuaServerDialog)
  private
    FdlgSelectServer: TdlgVCLSelectServer;
  public
    function Execute: boolean; override;
  end;

implementation

uses Janua.Core.Functions, Janua.Application.Framework;

{$R *.dfm}

procedure TdlgVCLSelectServer.AdvGlowButton1Click(Sender: TObject);
begin
  SetServerConf;
  self.FJanuaDBConnection.ServerConf := TJanuaApplication.JanuaServerConf;
  try
    if FJanuaDBConnection.TestConnection then
    begin
      TJanuaApplication.Dialogs.JShowMessage('Connessione Ok');
      self.btnOK.Enabled := True
    end
  except
    on e: exception do
    begin
      TJanuaApplication.Dialogs.JShowError('Errore di connessione al server', e.Message);
      self.btnOK.Enabled := False
    end;
  end;
end;

procedure TdlgVCLSelectServer.edServerAddressChange(Sender: TObject);
begin
  self.FLocalServerConf.Address := self.edServerAddress.Text;
end;

procedure TdlgVCLSelectServer.edServerAddressExit(Sender: TObject);
begin
  FJanuaDBConnection.ServerConf.TestAddress;
  self.lbIP.Caption := FJanuaDBConnection.ServerConf.IP;
  lbDNDSuccess.Caption := FJanuaDBConnection.ServerConf.TestMessage;
end;

procedure TdlgVCLSelectServer.FormCreate(Sender: TObject);
begin
  FJanuaDBConnection := Janua.Core.DB.DBConnection; // TJanuaCustomDBConnection.Create(self);
end;

procedure TdlgVCLSelectServer.SetJanuaDBConnection(const Value: IJanuaDBConnection);
begin
 FJanuaDBConnection := Value
end;

procedure TdlgVCLSelectServer.SetLocalServerConf(const Value: TJanuaServerRecordConf);
begin
  FLocalServerConf := Value;
end;

procedure TdlgVCLSelectServer.SetServerConf;
begin

end;

{ TJanuaVCLDBServerDialog }

function TJanuaVCLDBServerDialog.Execute: boolean;
begin
  FdlgSelectServer := TdlgVCLSelectServer.Create(nil);
  try
    FdlgSelectServer.FJanuaDBConnection := JanuaDBConnection;
    FdlgSelectServer.ShowModal;
    Result := FdlgSelectServer.ModalResult = mrOK;
    if Result then
      TJanuaApplication.JanuaServerConf := FdlgSelectServer.LocalServerConf;
  finally
    FdlgSelectServer.Free;
  end;
end;

end.
