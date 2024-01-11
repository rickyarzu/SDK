unit udlgPhoneConfirmation;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  // Janua
  Janua.Core.MObyt, Janua.Core.Functions,
  // Vcl
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  // Tms
  HTMLText, AdvGlowButton, AdvOfficeImage, Janua.Core.Classes, Janua.Core.Customcontrols, Janua.Vcl.Dialogs,
  AdvAppStyler;

type
  TJanuaResult = (jrsMrOk, jrsMrCancel, jrsNotConfirmed, jrsConfirmed, jrsNone);

type
  TdlgSmsConfirmation = class(TForm)
    HTMLStaticText1: THTMLStaticText;
    AdvOfficeImage1: TAdvOfficeImage;
    AdvGlowButton1: TAdvGlowButton;
    lbPhone: TLabel;
    AdvGlowButton2: TAdvGlowButton;
    Edit1: TEdit;
    Label2: TLabel;
    JanuaSMS1: TJanuaSMS;
    JanuaDialog1: TJanuaDialog;
    Label3: TLabel;
    Label4: TLabel;
    AdvFormStyler1: TAdvFormStyler;
    procedure FormCreate(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
  private
    { Private declarations }
    iActivation: Integer;
    sActivation: string;
    FUser: TJanuaRecordUserProfile;
    procedure SetUser(const Value: TJanuaRecordUserProfile);
  public
    { Public declarations }
    JanuaResult: TJanuaResult;
    property User: TJanuaRecordUserProfile read FUser write SetUser;
  end;

var
  dlgSmsConfirmation: TdlgSmsConfirmation;

  { TODO : Portare le funzioni di gestione degli SMS di conferma dentro a JanuaCoreSystem }

implementation

{$R *.dfm}

uses udmTestHealthBooking;

procedure TdlgSmsConfirmation.AdvGlowButton1Click(Sender: TObject);
begin
  iActivation := Random(10000);
  self.FUser.Address.SMSCheckNumber := Lpad(iActivation, 4, '0');
  JanuaSMS1.Send(StripString(User.Address.CellularPhone), 'Portale Dico33, il tuo codice è: ' +
    User.Address.SMSCheckNumber);
  self.JanuaDialog1.JShowMessage
    ('Abbiamo inviato un SMS al tuo numero di Telefono controlla e riporta nella casellina le 4 cifre');
  self.FUser.Address.SMSSent := True;
  self.FUser.Address.SMSDate := now();
  self.JanuaResult := TJanuaResult.jrsNotConfirmed;
end;

procedure TdlgSmsConfirmation.Edit1Exit(Sender: TObject);
begin
  if self.Edit1.Text = User.Address.SMSCheckNumber then
  begin
    self.JanuaDialog1.JShowMessage('Cellulare correttamente confermato');
    FUser.Address.SMSConfirmed := True;
    self.JanuaResult := TJanuaResult.jrsConfirmed;
  end;
end;

procedure TdlgSmsConfirmation.FormCreate(Sender: TObject);
begin
  JanuaResult := TJanuaResult.jrsNone;
end;

procedure TdlgSmsConfirmation.SetUser(const Value: TJanuaRecordUserProfile);
begin
  FUser := Value;
  self.lbPhone.Caption := StripString(self.FUser.Address.CellularPhone);
end;

end.
