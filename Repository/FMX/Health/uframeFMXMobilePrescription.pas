unit uframeFMXMobilePrescription;

interface

uses
  // System
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  // Januaproject Libraries
  Janua.Core.Classes, Janua.Core.Functions, Janua.Core.Health, Janua.Core.Anagraph,  Janua.Anagraph.Types,
  Janua.Core.Servers, Janua.Core.System, Janua.FMX.Forms, Janua.FMX.Geocoding,
  // FMX Components
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.Controls.Presentation,
  FMX.Edit, FMX.DateTimeCtrls, FMX.TMSBaseControl, FMX.TMSBaseGroup, FMX.TMSRadioGroup, FMX.Layouts, FMX.Ani,
  FMX.Calendar, FMX.TabControl;

type
  TframeFMXMobilePrescription = class(TFrame)
    VertScrollBoxPersonal: TVertScrollBox;
    edFirstBarcode: TEdit;
    edFirstName: TEdit;
    edLastBarcode: TEdit;
    edLastName: TEdit;
    Label1: TLabel;
    LayoutPrescription: TLayout;
    TabControl1: TTabControl;
    TabItem71Personal: TTabItem;
    TabItem72Prescription: TTabItem;
    VertScrollBox1: TVertScrollBox;
    Layout1: TLayout;
    Panel1: TPanel;
    Label3: TLabel;
    Edit1: TEdit;
    Panel2: TPanel;
    Label6: TLabel;
    edProvince: TEdit;
    pnlExemption: TPanel;
    ckbExemption: TSwitch;
    lbExemption: TLabel;
    pnlExemptionCode: TPanel;
    lbExemptionCode: TLabel;
    edExemptionCode: TEdit;
    pnlIncomeExemption: TPanel;
    ckbIncomeExemption: TSwitch;
    lbIncomeExemption: TLabel;
    lbPrescriptionExemption: TLabel;
    edFiscalCode: TEdit;
    btnSavePrescription: TButton;
    btnCopyData: TButton;
    Label2: TLabel;
    edPrescriptionDate: TDateEdit;
    rbU: TRadioButton;
    rbB: TRadioButton;
    rbD: TRadioButton;
    rbP: TRadioButton;
    lbError: TLabel;
    procedure btnSavePrescriptionClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure ckbIncomeExemptionExit(Sender: TObject);
    procedure ckbExemptionExit(Sender: TObject);
  private
    FJanuaITHealthPrescription: TJanuaITHealthPrescription;
    FChecked: boolean;
    FOtherPerson: TJanuaAnagraphRecord;
    FJanuaFMXFormManager: TJanuaFMXFormManager;
    procedure SetJanuaITHealthPrescription(const Value: TJanuaITHealthPrescription);
    procedure SetChecked(const Value: boolean);
    procedure SetOtherPerson(const Value: TJanuaAnagraphRecord);
    procedure SetJanuaFMXFormManager(const Value: TJanuaFMXFormManager);
    procedure SetHealthPrescription;
    procedure UpdatePrescription;
    procedure CheckExemptions;
    { Private declarations }
  public // public procedures and functions
    function CheckPrescription: boolean;
    procedure First;
    procedure Last;
    procedure Prior;
    procedure Next;
    procedure SetupFormManager;
    procedure Default;
  public
    { Public declarations }
    property Checked: boolean read FChecked write SetChecked;
    property JanuaITHealthPrescription: TJanuaITHealthPrescription read FJanuaITHealthPrescription
      write SetJanuaITHealthPrescription;
    property OtherPerson: TJanuaAnagraphRecord read FOtherPerson write SetOtherPerson;
    property JanuaFMXFormManager: TJanuaFMXFormManager read FJanuaFMXFormManager write SetJanuaFMXFormManager;
  end;

implementation

{$R *.fmx}
{ TFrame1 }

procedure TframeFMXMobilePrescription.btnNextClick(Sender: TObject);
begin
  self.FChecked := False;
  UpdatePrescription;
  if not self.FJanuaITHealthPrescription.CheckFirst then
  begin
    self.lbError.Text := self.FJanuaITHealthPrescription.LastMessage;
    self.lbError.Visible := True;
  end
  else
  begin
    self.lbError.Visible := False;
    if self.edPrescriptionDate.Date = 0.0 then
      self.edPrescriptionDate.Date := Date - 3;

    self.TabControl1.Next(TTabTransition.Slide);
  end;

end;

procedure TframeFMXMobilePrescription.btnSavePrescriptionClick(Sender: TObject);
begin
  self.FChecked := False;
  UpdatePrescription;
  self.FChecked := CheckPrescription;

end;

function TframeFMXMobilePrescription.CheckPrescription: boolean;
begin
  Result := self.FJanuaITHealthPrescription.Check;
  if not Result then
    ShowMessage(self.FJanuaITHealthPrescription.LastMessage);
  self.FChecked := Result
end;

procedure TframeFMXMobilePrescription.ckbExemptionExit(Sender: TObject);
begin
  self.ckbIncomeExemption.IsChecked := not self.ckbExemption.IsChecked;
end;

procedure TframeFMXMobilePrescription.ckbIncomeExemptionExit(Sender: TObject);
begin
  self.ckbExemption.IsChecked := not self.ckbIncomeExemption.IsChecked;
end;

procedure TframeFMXMobilePrescription.Default;
begin
  SetHealthPrescription;
  self.First;
  // non sarebbe il caso di chiamare SetUPFormManager sul Default ma chiamarlo da fuori sull'evento Show .............
  // self.SetupFormManager;
end;

procedure TframeFMXMobilePrescription.CheckExemptions;
begin

end;

procedure TframeFMXMobilePrescription.UpdatePrescription;
begin
  FJanuaITHealthPrescription.first_code := self.edFirstBarcode.Text;
  FJanuaITHealthPrescription.second_code := self.edLastBarcode.Text;
  FJanuaITHealthPrescription.province := self.edProvince.Text;
  FJanuaITHealthPrescription.first_name := self.edFirstName.Text;
  FJanuaITHealthPrescription.last_name := self.edLastName.Text;
  FJanuaITHealthPrescription.fiscal_code := self.edFiscalCode.Text;
  FJanuaITHealthPrescription.exemption := not self.ckbExemption.IsChecked;
  FJanuaITHealthPrescription.exemption_code := self.edExemptionCode.Text;
  FJanuaITHealthPrescription.exemption_income := self.ckbIncomeExemption.IsChecked;
  if self.rbP.IsChecked then
    FJanuaITHealthPrescription.priority := 'P'
  else if self.rbU.IsChecked then
    FJanuaITHealthPrescription.priority := 'U'
  else if self.rbB.IsChecked then
    FJanuaITHealthPrescription.priority := 'B'
  else if self.rbD.IsChecked then
    FJanuaITHealthPrescription.priority := 'D';
  FJanuaITHealthPrescription.Date := self.edPrescriptionDate.Date;
end;

procedure TframeFMXMobilePrescription.SetHealthPrescription;
begin
  // At first i Setup all the Values to Default .......................................................................
  self.FChecked := False;
  self.edFirstBarcode.Text := FJanuaITHealthPrescription.first_code;
  self.edLastBarcode.Text := FJanuaITHealthPrescription.second_code;
  self.edProvince.Text := FJanuaITHealthPrescription.province;
  self.edFirstName.Text := FJanuaITHealthPrescription.first_name;
  self.edLastName.Text := FJanuaITHealthPrescription.last_name;
  self.edFiscalCode.Text := FJanuaITHealthPrescription.fiscal_code;
  self.ckbExemption.IsChecked := not FJanuaITHealthPrescription.exemption;
  self.edExemptionCode.Text := FJanuaITHealthPrescription.exemption_code;
  self.ckbIncomeExemption.IsChecked := FJanuaITHealthPrescription.exemption_income;
  self.rbP.IsChecked := FJanuaITHealthPrescription.priority = 'P';
  self.rbU.IsChecked := FJanuaITHealthPrescription.priority = 'U';
  self.rbB.IsChecked := FJanuaITHealthPrescription.priority = 'B';
  self.rbD.IsChecked := FJanuaITHealthPrescription.priority = 'D';
  self.edPrescriptionDate.Date := FJanuaITHealthPrescription.Date;
end;

procedure TframeFMXMobilePrescription.First;
begin
  self.TabControl1.First(TTabTransition.Slide);
  self.SetupFormManager;
end;

procedure TframeFMXMobilePrescription.Last;
begin
  self.TabControl1.Last(TTabTransition.Slide)
end;

procedure TframeFMXMobilePrescription.Next;
begin
  self.TabControl1.Next(TTabTransition.Slide)
end;

procedure TframeFMXMobilePrescription.Prior;
begin
  self.TabControl1.Previous(TTabTransition.Slide)
end;

procedure TframeFMXMobilePrescription.SetChecked(const Value: boolean);
begin
  FChecked := Value;
end;

procedure TframeFMXMobilePrescription.SetJanuaFMXFormManager(const Value: TJanuaFMXFormManager);
begin
  FJanuaFMXFormManager := Value;
end;

procedure TframeFMXMobilePrescription.SetJanuaITHealthPrescription(const Value: TJanuaITHealthPrescription);
begin
  FJanuaITHealthPrescription := Value;
end;

procedure TframeFMXMobilePrescription.SetOtherPerson(const Value: TJanuaAnagraphRecord);
begin
  FOtherPerson := Value;
end;

procedure TframeFMXMobilePrescription.SetupFormManager;
begin
  if (FJanuaFMXFormManager <> nil) and (self.TabControl1.ActiveTab = self.TabItem71Personal) then
  begin
    self.FJanuaFMXFormManager.Active := False;
    self.FJanuaFMXFormManager.VertScrollBox := self.VertScrollBoxPersonal;
    self.FJanuaFMXFormManager.MainLayout := self.LayoutPrescription;
    FJanuaFMXFormManager.Activate;
  end
  else if self.TabControl1.ActiveTab = self.TabItem72Prescription then
  begin
    self.FJanuaFMXFormManager.Active := False;
    self.FJanuaFMXFormManager.VertScrollBox := self.VertScrollBox1;
    self.FJanuaFMXFormManager.MainLayout := self.Layout1;
    FJanuaFMXFormManager.Activate;
  end;
end;

end.
