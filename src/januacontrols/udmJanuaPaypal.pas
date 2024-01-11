unit udmJanuaPaypal;

interface

uses
  SysUtils, Classes,    Janua.Legacy.Logger; {iblexpresscheckout}

type
  TdmJanuaPaypal = class(TDataModule)
    // JanuaLogger1: TJanuaLogger;
    // iblExpressCheckout1: TiblExpressCheckout;
  private
    FUserUrl: widestring;
    FResponseToken: widestring;
    FToken: widestring;
    FPayerID: widestring;
    FBuyerEmail: String;
    FCurrencyCode: String;
    FCancelUrl: String;
    FSignature: String;
    FReturnUrl: String;
    FPassword: String;
    FOrderTotal: String;
    FURL: String;
    FUser: String;
    FBaseUrl: WideString;
    procedure SetUserUrl(const Value: widestring);
    procedure SetResponseToken(const Value: widestring);
    procedure SetParams;
    procedure CheckoutDetails;
    procedure SetToken(const Value: widestring);

    procedure SetPayerID(const Value: widestring);
    procedure SetBuyerEmail(const Value: String);
    procedure SetCancelUrl(const Value: String);
    procedure SetCurrencyCode(const Value: String);
    procedure SetOrderTotal(const Value: String);
    procedure SetPassword(const Value: String);
    procedure SetReturnUrl(const Value: String);
    procedure SetSignature(const Value: String);
    procedure SetURL(const Value: String);
    procedure SetUser(const Value: String);
    procedure SetBaseUrl(const Value: WideString);
    { Private declarations }
  public
    { Public declarations }
    function ExpressCheckOut: boolean;
    function Payment: boolean;
    function GetDetails: boolean; 
  published
    property UserUrl: widestring read FUserUrl write SetUserUrl;
    property ResponseToken: widestring read FResponseToken;
    property Token: widestring read FToken write SetToken;
    property PayerID: widestring read FPayerID write SetPayerID;
    property URL: String read FURL write SetURL;
    property CurrencyCode: String read FCurrencyCode write SetCurrencyCode;
    property User: String read FUser write SetUser;
    property Password: String read FPassword write SetPassword;
    property Signature: String read FSignature write SetSignature;
    property ReturnUrl: String read FReturnUrl write SetReturnUrl;
    property CancelUrl: String read FCancelUrl write SetCancelUrl;
    property OrderTotal: String read FOrderTotal write SetOrderTotal;
    property BuyerEmail: String read FBuyerEmail write SetBuyerEmail;
    property BaseUrl: WideString read FBaseUrl write SetBaseUrl;
  end;

var
  dmJanuaPaypal: TdmJanuaPaypal;

implementation

{$R *.dfm}

{ TdmJanuaPaypal }

function TdmJanuaPaypal.ExpressCheckOut: boolean;
begin
  SetParams;
  iblExpressCheckout1.SetCheckout;

  If (LowerCase(iblExpressCheckout1.Ack) = 'success') Then
  begin
     FResponseToken := iblExpressCheckout1.ResponseToken;
     FUserUrl :=
      (FBaseUrl + FResponseToken);
      Result := True;
  end
  else
  begin
    Result := False; 
  end;


end;

function TdmJanuaPaypal.GetDetails: boolean;
begin
  try
    SetParams;
    iblExpressCheckout1.Token := FToken;
    iblExpressCheckout1.PayerId := FPayerID;
    iblExpressCheckout1.GetCheckoutDetails;
    Result := True;
  except
    Result := False; 
  end;
end;

function TdmJanuaPaypal.Payment: boolean;
begin
  SetParams;
  iblExpressCheckout1.Token := FToken;
  iblExpressCheckout1.PayerId := FPayerID;
  iblExpressCheckout1.CheckoutPayment;
  Result := True;
end;

procedure TdmJanuaPaypal.CheckoutDetails;
begin
  // riceve i dettagli ...
  SetParams;
  iblExpressCheckout1.GetCheckoutDetails;
end;

procedure TdmJanuaPaypal.SetBaseUrl(const Value: WideString);
begin
  FBaseUrl := Value;
end;

procedure TdmJanuaPaypal.SetBuyerEmail(const Value: String);
begin
  FBuyerEmail := Value;
end;

procedure TdmJanuaPaypal.SetCancelUrl(const Value: String);
begin
  FCancelUrl := Value;
end;

procedure TdmJanuaPaypal.SetCurrencyCode(const Value: String);
begin
  FCurrencyCode := Value;
end;

procedure TdmJanuaPaypal.SetOrderTotal(const Value: String);
begin
  FOrderTotal := Value;
end;

procedure TdmJanuaPaypal.SetParams;
begin
  iblExpressCheckout1.URL := FURL;
  iblExpressCheckout1.CurrencyCode := fCurrencyCode;
  iblExpressCheckout1.User := FUser;
  iblExpressCheckout1.Password := FPassword;
  iblExpressCheckout1.Signature := FSignature;
  iblExpressCheckout1.ReturnURL := FReturnURL;
  iblExpressCheckout1.CancelURL := FCancelURL;
  iblExpressCheckout1.PaymentAction := aSale;
  iblExpressCheckout1.OrderTotal := FOrderTotal;
  iblExpressCheckout1.BuyerEmail := FBuyerEmail;
end;

procedure TdmJanuaPaypal.SetPassword(const Value: String);
begin
  FPassword := Value;
end;

procedure TdmJanuaPaypal.SetPayerID(const Value: widestring);
begin
  FPayerID := Value;
  iblExpressCheckout1.PayerId := VAlue;
end;

procedure TdmJanuaPaypal.SetResponseToken(const Value: widestring);
begin
  FResponseToken := Value;
  iblExpressCheckout1.Token := Value;
end;

procedure TdmJanuaPaypal.SetReturnUrl(const Value: String);
begin
  FReturnUrl := Value;
end;

procedure TdmJanuaPaypal.SetSignature(const Value: String);
begin
  FSignature := Value;
end;

procedure TdmJanuaPaypal.SetToken(const Value: widestring);
begin
  FToken := Value;
  iblExpressCheckout1.Token := Value;
end;

procedure TdmJanuaPaypal.SetURL(const Value: String);
begin
  FURL := Value;
end;

procedure TdmJanuaPaypal.SetUser(const Value: String);
begin
  FUser := Value;
end;

procedure TdmJanuaPaypal.SetUserUrl(const Value: widestring);
begin
  FUserUrl := Value;
end;

end.
