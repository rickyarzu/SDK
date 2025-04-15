unit Janua.VCL.frmTestOracle;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, VCL.Graphics,
  VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.StdCtrls, VCL.Samples.Spin, VCL.Mask, VCL.ExtCtrls, UniProvider,
  OracleUniProvider, Data.DB, DBAccess, Uni;

type
  TfrmVCLTestOracle = class(TForm)
    edServerName: TLabeledEdit;
    edServiceName: TLabeledEdit;
    edPort: TSpinEdit;
    lbPort: TLabel;
    edConnectionString: TLabeledEdit;
    edUserName: TLabeledEdit;
    edPassword: TLabeledEdit;
    btnTestConnection: TButton;
    UniConnection1: TUniConnection;
    OracleUniProvider1: TOracleUniProvider;
    ckbSid: TCheckBox;
    procedure editConnectionString(Sender: TObject);
    procedure btnTestConnectionClick(Sender: TObject);
  private
    { Private declarations }
    function GenerateConnectionString: string;
  public
    { Public declarations }
    procedure UpdateConnectionString;
  end;

var
  frmVCLTestOracle: TfrmVCLTestOracle;

implementation

uses System.StrUtils, System.Math;

{$R *.dfm}
{ TForm2 }

procedure TfrmVCLTestOracle.btnTestConnectionClick(Sender: TObject);
begin
  UniConnection1.Server := GenerateConnectionString;
  UniConnection1.Username := edUserName.Text;
  UniConnection1.Password := edPassword.Text;
  try
    UniConnection1.Connected := True;
    ShowMessage('connessione al DB Riuscita');
    UniConnection1.Connected := False;
  except
    on e: exception do
      ShowMessage('Connessione non riuscita a causa Errore: ' + e.message);

  end;
end;

procedure TfrmVCLTestOracle.editConnectionString(Sender: TObject);
begin
  UpdateConnectionString
end;

function TfrmVCLTestOracle.GenerateConnectionString: string;
begin
  var
  vSeparator := IfThen(ckbSid.Checked, ':', '/');

  var
  vServer := edServerName.Text;

  var
  vPort := edPort.Text;

  var
  vSid := edServiceName.Text;

  Result := vServer + ':' + vPort + vSeparator + vSid;
end;

procedure TfrmVCLTestOracle.UpdateConnectionString;
begin
  edConnectionString.Text := GenerateConnectionString;
end;

end.
