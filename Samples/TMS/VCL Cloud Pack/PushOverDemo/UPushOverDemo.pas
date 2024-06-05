unit UPushOverDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CloudBase, CloudPushOver, CloudBaseWin;

type
  TForm4 = class(TForm)
    AdvPushOver1: TAdvPushOver;
    edUser: TEdit;
    GroupBox1: TGroupBox;
    edTitle: TEdit;
    edMemo: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    edSound: TComboBox;
    edDevice: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    edURL: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

{$I APPIDS.INC}

procedure TForm4.Button1Click(Sender: TObject);
begin
  // set the PushOver application ID
  AdvPushOver1.App.Key := APPID;
  // fill in the message details
  AdvPushOver1.PushOverMessage.User := edUser.Text;
  AdvPushOver1.PushOverMessage.Title := edTitle.Text;
  AdvPushOver1.PushOverMessage.Message := edMemo.Lines.Text;
  AdvPushOver1.PushOverMessage.URL := edURL.Text;
  AdvPushOver1.PushOverMessage.Device := edDevice.Text;
  AdvPushOver1.PushOverMessage.Sound := TMessageSound(integer(edSound.Items.Objects[edSound.ItemIndex]));
  // Send the message
  if not AdvPushOver1.PushMessage(AdvPushOver1.PushOverMessage) then
    ShowMessage(AdvPushOver1.LastError);
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
  edUser.Text := USERID;

  edSound.AddItem('Default',TObject(msDefault));
  edSound.AddItem('Bike',TObject(msBike));
  edSound.AddItem('Bugle',TObject(msBugle));
  edSound.AddItem('CashRegister',TObject(msCashRegister));
  edSound.AddItem('Cosmic',TObject(msCosmic));
  edSound.AddItem('Intermission',TObject(msIntermission));
  edSound.AddItem('PianoBar',TObject(msPianoBar));
  edSound.AddItem('Siren',TObject(msSiren));
  edSound.AddItem('Alien',TObject(msAlien));
  edSound.AddItem('Echo',TObject(msEcho));
  edSound.AddItem('Persistent',TObject(msPersistent));
  edSound.AddItem('None',TObject(msNone));
  edSound.ItemIndex := 0;
end;




end.
