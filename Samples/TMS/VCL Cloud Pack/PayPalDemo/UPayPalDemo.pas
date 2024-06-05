unit UPayPalDemo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CloudBase, CloudBaseWin,
  CloudCustomPayPal, CloudPayPal, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    Button2: TButton;
    AdvPayPal1: TAdvPayPal;
    ListView1: TListView;
    cbCurrency: TComboBox;
    cbShipping: TComboBox;
    cbInsurance: TCheckBox;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    lbStatus: TLabel;
    lbID: TLabel;
    lbName: TLabel;
    lbAddress: TLabel;
    lbCountry: TLabel;
    lbTotal: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure AdvPayPal1PaymentAccepted(Sender: TObject);
    procedure AdvPayPal1PaymentCancelled(Sender: TObject);
    procedure AdvPayPal1PaymentFailed(Sender: TObject);
    procedure AdvPayPal1AuthFormClose(Sender: TObject);
    procedure ListView1Edited(Sender: TObject; Item: TListItem; var S: string);
    procedure cbCurrencyChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Success: boolean;
    Cancel: boolean;
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

// PLEASE USE A VALID INCLUDE FILE THAT CONTAINS THE APPLICATION KEY & SECRET
// FOR THE CLOUD STORAGE SERVICES YOU WANT TO USE
// STRUCTURE OF THIS .INC FILE SHOULD BE
//
// const
//  PayPalAppkey = 'xxxxxxxxx';
//  PayPalAppSecret = 'yyyyyyyy';

{$I APPIDS.INC}

procedure TForm6.AdvPayPal1AuthFormClose(Sender: TObject);
begin
  Screen.Cursor := crDefault;
  Button2.Enabled := true;
  if (not Success) and (not Cancel) then
    ShowMessage('Payment cancelled by user');
end;

procedure TForm6.AdvPayPal1PaymentAccepted(Sender: TObject);
begin
  Screen.Cursor := crDefault;
  Button2.Enabled := true;
  Success := true;
  lbStatus.Caption := 'Payment OK (' + AdvPayPal1.Payment.State + ')';
  lbID.Caption := AdvPayPal1.Payment.TransactionID;
  lbName.Caption := AdvPayPal1.Payment.Payer.FirstName + ' ' + AdvPayPal1.Payment.Payer.LastName;
  lbAddress.Caption := AdvPayPal1.Payment.Payer.Street + ', ' + AdvPayPal1.Payment.Payer.City;
  lbCountry.Caption := AdvPayPal1.Payment.Payer.CountryCode;
  lbTotal.Caption := AdvPayPal1.Payment.Total + ' ' + AdvPayPal1.Payment.Currency;
end;

procedure TForm6.AdvPayPal1PaymentCancelled(Sender: TObject);
begin
  Screen.Cursor := crDefault;
  Button2.Enabled := true;
  Cancel := true;
  ShowMessage('Payment cancelled by user');
end;

procedure TForm6.AdvPayPal1PaymentFailed(Sender: TObject);
begin
  Screen.Cursor := crDefault;
  Button2.Enabled := true;
  ShowMessage('Payment failed' + #13 + AdvPayPal1.PaymentError.ErrorMessage);
end;

procedure TForm6.FormCreate(Sender: TObject);
begin
  lbStatus.Caption := '';
  lbID.Caption := '';
  lbName.Caption := '';
  lbAddress.Caption := '';
  lbCountry.Caption := '';
  lbTotal.Caption := '';

  AdvPayPal1.App.Key := PayPalAppKey;
  AdvPayPal1.App.Secret := PayPalAppSecret;
end;

procedure TForm6.ListView1Edited(Sender: TObject; Item: TListItem;
  var S: string);
var
  i: integer;
begin
  if not TryStrToInt(s, i) then
    s := '1';
end;

procedure TForm6.Button2Click(Sender: TObject);
var
  pi: TPayPalItem;
  I: Integer;
  ItemSelected: boolean;
begin
  Screen.Cursor := crHourGlass;
  Success := false;
  Cancel := false;
  ItemSelected := false;

  case cbCurrency.ItemIndex of
    0: AdvPayPal1.Transaction.Currency := pcEUR;
    1: AdvPayPal1.Transaction.Currency := pcUSD;
    2: AdvPayPal1.Transaction.Currency := pcNOK;
    3: AdvPayPal1.Transaction.Currency := pcHKD;
  end;

  if cbInsurance.Checked then
    AdvPayPal1.Transaction.Insurance := 5
  else
    AdvPayPal1.Transaction.Insurance := 0;

  AdvPayPal1.Transaction.Shipping := 5;

  AdvPayPal1.Transaction.Items.Clear;
  for I := 0 to ListView1.Items.Count - 1 do
  begin
    if ListView1.Items[I].Checked then
    begin
      ItemSelected := true;
      pi := AdvPayPal1.Transaction.Items.Add;
      pi.Price := StrToFloat(ListView1.Items[I].SubItems[2]);
      pi.Name := ListView1.Items[I].SubItems[0];
      pi.Description := ListView1.Items[I].SubItems[1];
      pi.Quantity := StrToInt(ListView1.Items[I].Caption);
    end;
  end;

  if ItemSelected then
  begin
    Button2.Enabled := false;
    AdvPayPal1.DoPayment
  end
  else
  begin
    Screen.Cursor := crDefault;
    ShowMessage('Please select at least 1 product from the list');
  end;
end;

procedure TForm6.cbCurrencyChange(Sender: TObject);
var
  Currency: string;
begin
  case cbCurrency.ItemIndex of
    0: begin Currency := 'EUR'; cbShipping.ItemIndex := 0; end;
    1: begin Currency := 'USD'; cbShipping.ItemIndex := 1; end;
    2: begin Currency := 'NOK'; cbShipping.ItemIndex := 0; end;
    3: begin Currency := 'HKD'; cbShipping.ItemIndex := 2; end;
  end;

  cbInsurance.Caption := 'Insurance (5 ' + Currency + ')';
end;


end.
