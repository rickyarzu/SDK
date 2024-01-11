unit januapaypal;

interface

uses
  SysUtils, Classes, udmJanuaPaypal,  iniFiles, januacorefunctions;

  //iblcore, iblexpresscheckout,

type
  TJanuaPaypal = class(TComponent)
  private
    { Private declarations }
    FdmPaypal: TdmJanuaPaypal;
    FUserUrl: widestring;
    FToken: widestring;
    FPaymentOK: boolean;
    FAck: widestring;
    FPayeID: String;
   // FExpressChechout: TiblExpressCheckOut;
    FSignature: widestring;
    FPassword: widestring;
    FURL: wideString;
    FOrderTotal: Double;
    FUser: widestring;
    FCurrencyCode: String;
    FCancelURL: widestring;
    FReturnURL: widestring;
    FPayerEmail: widestring;
    FOrderText: String;
    FDecimal: integer;
    FLoadIni: boolean;
    FIniFile: String;
    FIniDir: String;
    FBaseURL: widestring;
    procedure DMSetParams; 
    procedure SetUserUrl(const Value: widestring);
    procedure SetToken(const Value: widestring);
    procedure SetAck(const Value: widestring);
    procedure SetPaymentOK(const Value: boolean);
    procedure SetPayeID(const Value: String);
    procedure SetOrderTotal(const Value: Double);
    procedure SetPassword(const Value: widestring);
    procedure SetSignature(const Value: widestring);
    procedure SetURL(const Value: wideString);
    procedure SetUser(const Value: widestring);
    procedure SetCurrencyCode(const Value: String);
    procedure SetCancelURL(const Value: widestring);
    procedure SetPayerEmail(const Value: widestring);
    procedure SetReturnURL(const Value: widestring);
    procedure SetOrderText(const Value: String);
    procedure SetDecimal(const Value: integer);
    procedure SetIniFile(const Value: String);
    procedure SetLoadIni(const Value: boolean);
    procedure LoadIniFile;
    procedure SetIniDir(const Value: String);
    procedure SetBaseURL(const Value: widestring);
  protected
    { Protected declarations }
  public
    { Public declarations }
    function Execute: boolean;
    function GetDetails: Boolean;
    function Payment: Boolean;
    constructor Create(AOwner: TComponent) ; override;
    procedure InitIni; 
  published
    { Published declarations }
    property UserUrl: widestring read FUserUrl;
    property Token: widestring read FToken write SetToken;
    property Ack: widestring read FAck write SetAck;
    property PaymentOK: boolean read FPaymentOK write SetPaymentOK default False;
    property PayeID: String read FPayeID write SetPayeID;
    property User: widestring read FUser write SetUser;
    property Password: widestring read FPassword write SetPassword;
    property Signature: widestring read FSignature write SetSignature ;
    property OrderTotal: Double read FOrderTotal write SetOrderTotal;
    property OrderText: String read FOrderText;
    property Decimal: integer read FDecimal write SetDecimal default 2;
    property PayerEmail: widestring read FPayerEmail write SetPayerEmail;
    property ReturnURL: widestring read FReturnURL write SetReturnURL;// our url
    property CancelURL: widestring read FCancelURL write SetCancelURL;// our url
    property URL: wideString read FURL write SetURL;  // url web service paypal
    property BaseURL: widestring read FBaseURL write SetBaseURL; // url dove inviare l'utete con token
    property CurrencyCode: String read FCurrencyCode write SetCurrencyCode;
    property IniFile: String read FIniFile write SetIniFile;
    property LoadIni: boolean read FLoadIni write SetLoadIni default False;
    property IniDir: String read FIniDir write SetIniDir ;
  end;

procedure Register;

implementation



procedure Register;
begin
  RegisterComponents('Januaproject', [TJanuaPaypal]);
end;

{ TJanuaPaypal }

constructor TJanuaPaypal.Create(AOwner: TComponent);
begin
  inherited;
  { Test Area ******************************************************************
  //FURL := 'https://api-3t.sandbox.paypal.com/nvp';
  //FUser := 'tttlin_1290011067_biz_api1.januaproject.it';
  //FPassword := 'LFJ4ZJWG9UKKB75H';
  //FSignature := 'AFcWxV21C7fd0v3bYYYRCpSSRl31ACl9c865BrbFoKS5A.1lbgPje8T6';
  //FReturnURL := 'http://booking.januaproject.it/scripts/paypal.dll';
  //FCancelURL := 'http://booking.januaproject.it/scripts/paypal.dll';
  //FPayerEmail := 'riccar_1290074667_per@januaproject.it';
  }
  FCurrencyCode := 'EUR';
  FOrderTotal := 00.00;
  FOrderText := '00.00';
  FLoadIni := False;
  FIniFile := 'Paypal.ini';
  FIniDir := 'C:\Januaproject\ini\';
  FBaseURL := 'https://www.sandbox.paypal.com/cgi-bin/webscr?cmd=_express-checkout&token=';
  FDecimal := 2;
end;

procedure TJanuaPaypal.DMSetParams;
begin
    FdmPaypal.URL := FURL;
    FdmPaypal.CurrencyCode := fCurrencyCode;
    FdmPaypal.User := FUser;
    FdmPaypal.Password := FPassword;
    FdmPaypal.Signature := FSignature;
    FdmPaypal.ReturnURL := FReturnURL;
    FdmPaypal.CancelURL := FCancelURL;
    FdmPaypal.OrderTotal := FOrderText;
    FdmPaypal.BuyerEmail := FPayerEmail;
    FdmPaypal.BaseURL := FBaseURL;
end;

function TJanuaPaypal.Execute: boolean;
begin
  try
    FdmPaypal := TdmJanuaPaypal.Create(nil);
    DMSetParams;
    Result := FdmPaypal.ExpressCheckOut;
    if Result  then begin
       FUserUrl := FdmPaypal.UserUrl;
       FToken := FdmPaypal.ResponseToken;
    end;
  finally
    FdmPaypal.Free;
    FdmPaypal := nil;
  end;

end;

function TJanuaPaypal.GetDetails: Boolean;
begin

  try
    FdmPaypal := TdmJanuaPaypal.Create(nil);
    DMSetParams;
    FdmPaypal.Token := FToken;
    FdmPaypal.PayerId := FPayeID;
    Result := FdmPaypal.GetDetails;
    if Result  then begin
       FUserUrl := FdmPaypal.UserUrl;
       FToken := FdmPaypal.ResponseToken;
    end;
  finally
    FdmPaypal.Free;
    FdmPaypal := nil;
  end;
end;

procedure TJanuaPaypal.InitIni;
begin
   LoadIniFile;
   FLoadIni := True;
end;

procedure TJanuaPaypal.LoadIniFile;
var
  i: TIniFile;
  e: boolean;
  vchar: string;
begin
   if not DirectoryExists(FIniDir) then CreateDir(FIniDir);
   if copy(FIniDir, length(FiniDir), 1) = '\'  then vchar := '' else vchar := '\';
   e :=  FileExists(FIniDir +  vchar + FIniFile);
   try
     i := TIniFile.Create(FIniDir +  vchar + FIniFile);
     if e  then
     begin
       // Site Init
       FUrl := i.ReadString('PayPalUrl', 'URL', FUrl );
       FCurrencyCode := i.ReadString('PayPalUrl', 'CurrencyCode', FCurrencyCode );
       FReturnURL := i.ReadString('PayPalUrl', 'ReturnURL', FReturnURL );
       FCancelURL := i.ReadString('PayPalUrl', 'CancelURL', FCancelURL );
       FBaseURL := i.ReadString('PayPalUrl', 'BaseURL', FBaseURL );
       // User Init
       FUser := i.ReadString('PayPalUser', 'User', FUser);
       FPassword := i.ReadString('PayPalUser', 'Password', FPassword );
       FSignature := i.ReadString('PayPalUser', 'Signature', FSignature );
     end
     else
     begin
       // Site Init
       i.WriteString('PayPalUrl', 'URL', FUrl );
       i.WriteString('PayPalUrl', 'CurrencyCode', FCurrencyCode );
       i.WriteString('PayPalUrl', 'ReturnURL', FReturnURL );
       i.WriteString('PayPalUrl', 'CancelURL', FCancelURL );
       i.WriteString('PayPalUrl', 'BaseURL', FBaseURL );
       // User Init
       i.WriteString('PayPalUser', 'User', FUser);
       i.WriteString('PayPalUser', 'Password', FPassword );
       i.WriteString('PayPalUser', 'Signature', FSignature );

     end;
   finally
     FreeAndNil(i);
   end;
end;

function TJanuaPaypal.Payment: Boolean;
begin
//*************************** temporaneamente in attesa situazione *******
{
  try
  FExpressChechout := TiblExpressCheckOut.Create(self);
  FExpressChechout.URL := FUrl;
  FExpressChechout.CurrencyCode := FCurrencyCode;
  FExpressChechout.User := FUser;
  FExpressChechout.Password := FPassword;
  FExpressChechout.Signature := FSignature;
  FExpressChechout.ReturnURL := FReturnURL;
  FExpressChechout.CancelURL := FCancelURL;
  FExpressChechout.OrderTotal := FOrderText;
  FExpressChechout.PayerEmail := PayerEmail;
  FExpressChechout.Token := FToken;
  FExpressChechout.PayerId := FPayeID;
  try
    FExpressChechout.CheckoutPayment;
    Result := UpperCase(FExpressChechout.PaymentStatus) = 'COMPLETED' ;
  except
    Result := False;
  end;
  finally
    FExpressChechout.Free;
    FExpressChechout := nil;
  end;
  }
end;

procedure TJanuaPaypal.SetAck(const Value: widestring);
begin
  FAck := Value;
end;

procedure TJanuaPaypal.SetBaseURL(const Value: widestring);
begin
  FBaseURL := Value;
end;

procedure TJanuaPaypal.SetCancelURL(const Value: widestring);
begin
  FCancelURL := Value;
end;

procedure TJanuaPaypal.SetCurrencyCode(const Value: String);
begin
  FCurrencyCode := Value;
end;

procedure TJanuaPaypal.SetDecimal(const Value: integer);
begin
  FDecimal := Value;
end;

procedure TJanuaPaypal.SetIniDir(const Value: String);
begin
  FIniDir := Value;
  if FLoadIni then LoadIniFile;   
end;

procedure TJanuaPaypal.SetIniFile(const Value: String);
begin
  FIniFile := Value;
  if FLoadIni then LoadIniFile;
end;

procedure TJanuaPaypal.SetLoadIni(const Value: boolean);
begin
  FLoadIni := Value;
  if FLoadIni then LoadIniFile;  
end;

procedure TJanuaPaypal.SetOrderText(const Value: String);
begin
  FOrderText := Value;
end;

procedure TJanuaPaypal.SetOrderTotal(const Value: Double);
begin
  FOrderTotal := Value;
  FOrderText := FormatFloat('0.00', FRound(ForderTotal,2));
  FOrderText := StringReplace(FOrderText, ',', '.', [rfReplaceAll, rfIgnoreCase]);
  // ConvertFloatToString(FOrderTotal, FDecimal);
end;

procedure TJanuaPaypal.SetPassword(const Value: widestring);
begin
  FPassword := Value;
end;

procedure TJanuaPaypal.SetPayeID(const Value: String);
begin
  FPayeID := Value;
end;

procedure TJanuaPaypal.SetPayerEmail(const Value: widestring);
begin
  FPayerEmail := Value;
end;

procedure TJanuaPaypal.SetPaymentOK(const Value: boolean);
begin
  FPaymentOK := Value;
end;

procedure TJanuaPaypal.SetReturnURL(const Value: widestring);
begin
  FReturnURL := Value;
end;

procedure TJanuaPaypal.SetSignature(const Value: widestring);
begin
  FSignature := Value;
end;

procedure TJanuaPaypal.SetToken(const Value: widestring);
begin
  FToken := Value;
end;

procedure TJanuaPaypal.SetURL(const Value: wideString);
begin
  FURL := Value;
end;

procedure TJanuaPaypal.SetUser(const Value: widestring);
begin
  FUser := Value;
end;

procedure TJanuaPaypal.SetUserUrl(const Value: widestring);
begin
  FUserUrl := Value;
end;

end.
