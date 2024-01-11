unit uframeProfileStandard;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Janua.Core.CustomControls,
  Janua.VCL.Controls, Janua.Core.Health, Janua.VCL.Health;

type
  TFrame1 = class(TFrame)
    ComboBox1: TComboBox;
    edAddressMail: TEdit;
    lbGender: TLabel;
    edAddress: TEdit;
    edBirthDate: TEdit;
    edCellularPhone: TEdit;
    edFaxNumber: TEdit;
    edGender: TEdit;
    edpostalcode: TEdit;
    edID: TEdit;
    edName: TEdit;
    edPassword: TEdit;
    edPhone: TEdit;
    edRoleID: TEdit;
    edSecondName: TEdit;
    edWorkPhone: TEdit;
    btnNew: TButton;
    btnSave: TButton;
    btnSetNewPassword: TButton;
    JanuaVCLDoctor1: TJanuaVCLDoctor;
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
    Edit1: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
