unit uframeProfileDoctorStandard;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Janua.Core.CustomControls,
  Janua.VCL.Controls, Janua.Core.Health, Janua.VCL.Health, Janua.Core.Classes, Janua.Core.Users,
  Vcl.ExtCtrls, MemData, Janua.Core.JPublic;

type
  TFrame1 = class(TFrame)
    edAddressMail: TEdit;
    edAddress: TEdit;
    edBirthDate: TEdit;
    edCellularPhone: TEdit;
    edFaxNumber: TEdit;
    edGender: TEdit;
    edpostalcode: TEdit;
    edID: TEdit;
    edFirstName: TEdit;
    edPassword: TEdit;
    edPhone: TEdit;
    edRoleID: TEdit;
    edSecondName: TEdit;
    edWorkPhone: TEdit;
    btnNew: TButton;
    btnSave: TButton;
    btnSetNewPassword: TButton;
    lbAddrTown: TLabel;
    lbBirthCountry: TLabel;
    lbBirthDate: TLabel;
    lbBirthDistrict: TLabel;
    lbBirthRegion: TLabel;
    lbBirthTown: TLabel;
    lbCellularPhone: TLabel;
    lbFaxNumber: TLabel;
    lbAddrDistrict: TLabel;
    lbAddress: TLabel;
    lbAddressMail: TLabel;
    lbAddrRegion: TLabel;
    lbID: TLabel;
    lbName: TLabel;
    lbNumber: TLabel;
    lbPassword: TLabel;
    lbPhone: TLabel;
    lbPostalCode: TLabel;
    lbRole: TLabel;
    lbRoleID: TLabel;
    lbSecondName: TLabel;
    lbSelectGender: TLabel;
    lbWorkPhone: TLabel;
    edRegDate: TEdit;
    cboAddrRegion: TComboBox;
    edRegNumber: TEdit;
    lbRegDate: TLabel;
    lbRegNumber: TLabel;
    cboAddrTown: TComboBox;
    cboAddrDistrict: TComboBox;
    cboBirthCountry: TComboBox;
    cboBirthDistrict: TComboBox;
    cboBirthRegion: TComboBox;
    cboBirthTown: TComboBox;
    cboCouncil: TComboBox;
    lbCouncil: TLabel;
    lbAddrCountry: TLabel;
    Button1: TButton;
    Memo1: TMemo;
    JanuaVCLDoctor1: TJanuaVCLDoctor;
    edNumber: TEdit;
    selectGender: TRadioGroup;
    cboRole: TComboBox;
    Edit1: TEdit;
    Label1: TLabel;
    JanuaAnagDoctor1: TJanuaAnagDoctor;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses udmTestServerComponents;

procedure TFrame1.Button1Click(Sender: TObject);
begin
{
  self.JanuaVCLDoctor1.Active := True;
  self.Memo1.Lines.Add('Attivato profilo dottore');
  self.Memo1.Lines.Add(self.JanuaVCLDoctor1.Log.Text);
  if Assigned(self.JanuaVCLDoctor1.JanuaProfile) then self.JanuaVCLDoctor1.JanuaProfile.SendConfirmationMail;
  self.Memo1.Lines.Add('Inviata Mail profilo dottore');
  }
end;

end.
