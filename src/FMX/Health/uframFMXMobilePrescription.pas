unit uframFMXMobilePrescription;

interface

uses
  // System
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  // Januaproject Libraries
  Janua.Core.Classes, Janua.Core.Functions, Janua.Core.Health,

  // FMX Components
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.Controls.Presentation,
  FMX.Edit, FMX.DateTimeCtrls, FMX.TMSBaseControl, FMX.TMSBaseGroup, FMX.TMSRadioGroup;

type
  TFrame1 = class(TFrame)
    Button1: TButton;
    Label4: TLabel;
    edFiscalCode: TEdit;
    lbFirstName: TLabel;
    edFirstName: TEdit;
    lbLastName: TLabel;
    edLastName: TEdit;
    Label7: TLabel;
    edLastBarcode: TEdit;
    Label8: TLabel;
    edFirstBarcode: TEdit;
    pnlLocation: TPanel;
    pnlLocationLeft: TPanel;
    pnlLocationRight: TPanel;
    edProvince: TEdit;
    edCodAsl: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    lbPrescriptionExemption: TLabel;
    pnlExemption: TPanel;
    ckbExemption: TSwitch;
    lbExemption: TLabel;
    pnlExemptionCode: TPanel;
    lbExemptionCode: TLabel;
    edExemptionCode: TEdit;
    pnlIncomeExemption: TPanel;
    ckbIncomeExemption: TSwitch;
    lbIncomeExemption: TLabel;
    Label1: TLabel;
    pnlPrescriptionDate: TPanel;
    edPrescriptionDate: TDateEdit;
    pnlPriority: TPanel;
    rgPriority: TTMSFMXRadioGroup;
    procedure Button1Click(Sender: TObject);
  private
    FJanuaITHealthPrescription: TJanuaITHealthPrescription;
    FChecked: boolean;
    procedure SetJanuaITHealthPrescription(const Value: TJanuaITHealthPrescription);
    procedure SetChecked(const Value: boolean);
    { Private declarations }
  public // public procedures and functions
    function CheckPrescription: boolean;
  public
    { Public declarations }
    property Checked: boolean read FChecked write SetChecked;
    property JanuaITHealthPrescription: TJanuaITHealthPrescription read FJanuaITHealthPrescription
      write SetJanuaITHealthPrescription;
  end;

implementation

{$R *.fmx}
{ TFrame1 }

procedure TFrame1.Button1Click(Sender: TObject);
begin
  self.FChecked := False;
  FJanuaITHealthPrescription.first_code := self.edFirstBarcode.Text;
  FJanuaITHealthPrescription.second_code := self.edLastBarcode.Text;
  FJanuaITHealthPrescription.province := self.edProvince.Text;
  FJanuaITHealthPrescription.first_name := self.edFirstName.Text;
  FJanuaITHealthPrescription.last_name := self.edLastName.Text;
  FJanuaITHealthPrescription.fiscal_code := self.edFiscalCode.Text;
  FJanuaITHealthPrescription.exemption := not self.ckbExemption.IsChecked;
  FJanuaITHealthPrescription.exemption_code := self.edExemptionCode.Text;
  FJanuaITHealthPrescription.exemption_income := self.ckbIncomeExemption.IsChecked;
  FJanuaITHealthPrescription.priority := self.rgPriority.Items[rgPriority.ItemIndex].Value;
  FJanuaITHealthPrescription.date := self.edPrescriptionDate.date;
  self.CheckPrescription;

end;

function TFrame1.CheckPrescription: boolean;
begin
  Result := self.FJanuaITHealthPrescription.Check;
  if not Result then
    ShowMessage(self.FJanuaITHealthPrescription.LastMessage);

end;

procedure TFrame1.SetChecked(const Value: boolean);
begin
  FChecked := Value;
end;

procedure TFrame1.SetJanuaITHealthPrescription(const Value: TJanuaITHealthPrescription);
begin
  FJanuaITHealthPrescription := Value;
end;

end.
