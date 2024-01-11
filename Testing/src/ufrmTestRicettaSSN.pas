unit ufrmTestRicettaSSN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin, Vcl.Mask, JvExMask, JvToolEdit, Vcl.ExtCtrls,
  Vcl.DBCtrls, AdvGlowButton, Janua.Core.Health;

type
  TfrmTestRicettaSSN = class(TForm)
    edFirstBarcode: TEdit;
    edLastBarcode: TEdit;
    Label1: TLabel;
    edLastName: TEdit;
    Label2: TLabel;
    edFirstName: TEdit;
    Label3: TLabel;
    edFiscalCode: TEdit;
    Label4: TLabel;
    GroupBox1: TGroupBox;
    ckbExemption: TCheckBox;
    edExemptionCode: TEdit;
    Label5: TLabel;
    ckbIncomeExemption: TCheckBox;
    advSpinPrestazioni: TSpinEdit;
    Label6: TLabel;
    edPrescriptionDate: TJvDateEdit;
    Label7: TLabel;
    edPrescriptionType: TEdit;
    Label8: TLabel;
    grpPrescriptionPriority: TDBRadioGroup;
    AdvGlowButton1: TAdvGlowButton;
    Label9: TLabel;
    Label10: TLabel;
    edProvince: TEdit;
    edCodAsl: TEdit;
    procedure AdvGlowButton1Click(Sender: TObject);
  private
    FJanuaHealtPrescription: TJanuaITHealthPrescription;
    procedure SetJanuaHealtPrescription(const Value: TJanuaITHealthPrescription);
    { Private declarations }
  public
    { Public declarations }
    property JanuaHealtPrescription: TJanuaITHealthPrescription read FJanuaHealtPrescription
      write SetJanuaHealtPrescription;
  end;

var
  frmTestRicettaSSN: TfrmTestRicettaSSN;

implementation

{$R *.dfm}

procedure TfrmTestRicettaSSN.AdvGlowButton1Click(Sender: TObject);
begin
  FJanuaHealtPrescription.first_code := self.edFirstBarcode.Text;
  FJanuaHealtPrescription.second_code := self.edLastBarcode.Text;
  FJanuaHealtPrescription.province := self.edProvince.Text;
  FJanuaHealtPrescription.first_name := self.edFirstName.Text;
  FJanuaHealtPrescription.last_name := self.edLastName.Text;
  FJanuaHealtPrescription.fiscal_code := self.edFiscalCode.Text;
  FJanuaHealtPrescription.exemption := self.ckbExemption.Checked;
  FJanuaHealtPrescription.exemption_code := self.edExemptionCode.Text;
  FJanuaHealtPrescription.exemption_income := self.ckbIncomeExemption.Checked;
  FJanuaHealtPrescription.services := self.advSpinPrestazioni.Value;
  FJanuaHealtPrescription.date := self.edPrescriptionDate.date;
  FJanuaHealtPrescription.priority := grpPrescriptionPriority.Items[grpPrescriptionPriority.ItemIndex - 1];
  self.Close;
end;

procedure TfrmTestRicettaSSN.SetJanuaHealtPrescription(const Value: TJanuaITHealthPrescription);
begin
  FJanuaHealtPrescription := Value;
end;

end.
