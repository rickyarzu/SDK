unit udlgMailSettings;

interface

uses Winapi.Windows, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Forms,
  Vcl.Controls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Janua.Core.Customcontrols, Janua.VCL.Mail, Janua.Core.Classes,
  Janua.Core.Mail, udmCMSViewModel, AdvGlowButton, AdvAppStyler;

type
  TOKRightDlg = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    Bevel1: TBevel;
    edMailAddress: TEdit;
    Label1: TLabel;
    JanuaMailController1: TJanuaMailController;
    btnSend: TAdvGlowButton;
    edPort: TEdit;
    Label2: TLabel;
    edPassword: TEdit;
    Label3: TLabel;
    edServer: TEdit;
    Label4: TLabel;
    AdvFormStyler1: TAdvFormStyler;
    RadioGroup1: TRadioGroup;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OKRightDlg: TOKRightDlg;

implementation

uses
  ufrmVCLCmsEditor;

{$R *.dfm}

end.
