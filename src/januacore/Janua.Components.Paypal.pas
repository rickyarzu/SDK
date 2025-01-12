unit Janua.Components.Paypal;

interface

uses System.Classes, System.NetEncoding, System.JSON, System.SysUtils,
  // Janua
  Janua.Core.Classes,
  // Indy
  IdHTTP,
  // NetHttp
  System.Net.HttpClient, System.Net.HttpClientComponent, System.Net.URLClient, System.NetConsts;

Type

  TPayPalPayoutItem = record
    email: string;
    amount: string;
    note: string;
  end;

  TJanuaCustomPaypalEngine = class abstract
  public
    function GetPayPalUserInfo(accessToken: string): TJSONObject; virtual; abstract;
    function GetPayPalAccessToken(const aClientId, aSecret: string): string; virtual; abstract;
    function CreatePayPalPayout(accessToken: string; payoutItems: TArray<TPayPalPayoutItem>): TJSONObject;
      virtual; abstract;
    function CreatePayPalOrder(accessToken: string; aPayLoad: TJSONObject): TJSONObject; virtual; abstract;
  end;

  TJanuaINdyPaypalEngine = class(TJanuaCustomPaypalEngine)
  public
    function GetPayPalUserInfo(accessToken: string): TJSONObject; override;
    function GetPayPalAccessToken(const aClientId, aSecret: string): string; override;
    function CreatePayPalPayout(accessToken: string; payoutItems: TArray<TPayPalPayoutItem>)
      : TJSONObject; override;
    function CreatePayPalOrder(accessToken: string; aPayLoad: TJSONObject): TJSONObject; override;
  end;

  TJanuaNetHttpPaypalEngine = class(TJanuaCustomPaypalEngine)
  public
    function GetPayPalUserInfo(accessToken: string): TJSONObject; override;
    function GetPayPalAccessToken(const aClientId, aSecret: string): string; override;
    function CreatePayPalPayout(accessToken: string; payoutItems: TArray<TPayPalPayoutItem>)
      : TJSONObject; override;
    function CreatePayPalOrder(accessToken: string; aPayLoad: TJSONObject): TJSONObject; override;
  end;

  TJanuaRESTPaypalEngine = class(TJanuaCustomPaypalEngine)
  public
    function GetPayPalUserInfo(accessToken: string): TJSONObject; override;
    function GetPayPalAccessToken(const aClientId, aSecret: string): string; override;
    function CreatePayPalPayout(accessToken: string; payoutItems: TArray<TPayPalPayoutItem>)
      : TJSONObject; override;
    function CreatePayPalOrder(accessToken: string; aPayLoad: TJSONObject): TJSONObject; override;
  end;

  TJanuaHttpEngine = (jheIndy, jheNetHttp);

  TJanuaPaypalComponent = class(TJanuaCoreComponent)
  private
    FClientID: string;
    FSecret: string;
    FToken: string;
    FEngine: TJanuaHttpEngine;
    Fintent: string;
    Famount: Double;
    Fdescription: string;
    Fcurrency: string;
    procedure SetClientID(const Value: string);
    procedure SetSecret(const Value: string);
    procedure SetToken(const Value: string);
    procedure SetEngine(const Value: TJanuaHttpEngine);
    procedure Setamount(const Value: Double);
    procedure Setcurrency(const Value: string);
    procedure Setdescription(const Value: string);
    procedure Setintent(const Value: string);
  protected
    FPaypalEngine: TJanuaCustomPaypalEngine;
    function GenerateJsonOrder: TJSONObject;
  public
    procedure GetPaypalToken(const aClientId: string = ''; const aSecret: string = '');
  public
    property Token: string read FToken write SetToken;
  published
    property ClientID: string read FClientID write SetClientID;
    property Secret: string read FSecret write SetSecret;
    property Engine: TJanuaHttpEngine read FEngine write SetEngine;
    property amount: Double read Famount write Setamount;
    property currency: string read Fcurrency write Setcurrency;
    property intent: string read Fintent write Setintent;
    property description: string read Fdescription write Setdescription;
  end;

implementation

uses RESTRequest4D, System.StrUtils;

{ TJanuaINdyPaypalEngine }

function TJanuaINdyPaypalEngine.CreatePayPalOrder(accessToken: string; aPayLoad: TJSONObject): TJSONObject;
(* Here is an example code in Delphi to create an order checkout on PayPal API using the
  https://api-m.sandbox.paypal.com/v2/checkout/orders endpoint: *)
var
  http: TIdHTTP;
  response: string;
begin
  http := TIdHTTP.Create;
  try
    http.Request.ContentType := 'application/json';
    http.Request.Accept := 'application/json';
    http.Request.CustomHeaders.AddValue('Authorization', 'Bearer ' + accessToken);

    response := http.Post('https://api-m.sandbox.paypal.com/v2/checkout/orders', aPayLoad.ToString);
    Result := TJSONObject.ParseJSONValue(response) as TJSONObject;
  finally
    aPayLoad.Free;
    http.Free;
  end;
end;

function TJanuaINdyPaypalEngine.CreatePayPalPayout(accessToken: string;
  payoutItems: TArray<TPayPalPayoutItem>): TJSONObject;
var
  http: TIdHTTP;
  response: string;
  parameters, tmp: TJSONObject;
  payoutItemsJson: TJSONArray;
  payoutItemJson: TJSONObject;
  i: Integer;
begin
  http := TIdHTTP.Create;
  parameters := TJSONObject.Create;
  payoutItemsJson := TJSONArray.Create;
  try
    http.Request.ContentType := 'application/json';
    http.Request.Accept := 'application/json';
    http.Request.CustomHeaders.AddValue('Authorization', 'Bearer ' + accessToken);

    tmp := TJSONObject.Create;
    tmp.AddPair(TJSONPair.Create('sender_batch_id', 'batch_' + IntToStr(Random(1000000))));
    tmp.AddPair(TJSONPair.Create('email_subject', 'You have a payment from PayPal'));
    parameters.AddPair('sender_batch_header', tmp);

    for i := Low(payoutItems) to High(payoutItems) do
    begin
      payoutItemJson := TJSONObject.Create;
      payoutItemJson.AddPair('recipient_type', 'EMAIL');
      tmp := TJSONObject.Create;
      tmp.AddPair(TJSONPair.Create('value', payoutItems[i].amount));
      tmp.AddPair(TJSONPair.Create('currency', 'USD'));
      payoutItemJson.AddPair('amount', tmp);
      payoutItemJson.AddPair('note', payoutItems[i].note);
      payoutItemJson.AddPair('receiver', payoutItems[i].email);
      payoutItemsJson.AddElement(payoutItemJson);
    end;

    parameters.AddPair('items', payoutItemsJson);

    response := http.Post('https://api-m.sandbox.paypal.com/v1/payments/payouts', parameters.ToString);
    Result := TJSONObject.ParseJSONValue(response) as TJSONObject;
  finally
    parameters.Free;
    payoutItemsJson.Free;
    http.Free;
  end;
end;

function TJanuaINdyPaypalEngine.GetPayPalAccessToken(const aClientId, aSecret: string): string;
var
  http: TIdHTTP;
  response: string;
  parameters: TStringList;
  encoder: TBase64Encoding;
begin
  http := TIdHTTP.Create;
  encoder := TBase64Encoding.Create;
  parameters := TStringList.Create;
  try
    http.Request.ContentType := 'application/x-www-form-urlencoded';
    http.Request.CustomHeaders.AddValue('Authorization',
      'Basic ' + encoder.Encode(aClientId + ':' + aSecret));

    parameters.Add('grant_type=client_credentials');
    response := http.Post('https://api-m.sandbox.paypal.com/v1/oauth2/token', parameters);

    Result := TJSONObject.ParseJSONValue(response).GetValue<string>('access_token');
  finally
    parameters.Free;
    encoder.Free;
    http.Free;
  end;
end;

function TJanuaINdyPaypalEngine.GetPayPalUserInfo(accessToken: string): TJSONObject;
var
  http: TIdHTTP;
  response: string;
begin
  (*
    Note: You will need to replace <<access_token>> with the actual access token retrieved from PayPal API.
    Also, this example code uses the sandbox environment (api-m.sandbox.paypal.com), you may need to change
    the endpoint to the production environment if you are ready to go live.
  *)
  http := TIdHTTP.Create;
  try
    http.Request.ContentType := 'application/json';
    http.Request.Accept := 'application/json';
    http.Request.CustomHeaders.AddValue('Authorization', 'Bearer ' + accessToken);

    response := http.Get('https://api-m.sandbox.paypal.com/v1/identity/openidconnect/userinfo?schema=openid');
    Result := TJSONObject.ParseJSONValue(response) as TJSONObject;
  finally
    http.Free;
  end;
end;

{ TJanuaPaypalComponent }

function TJanuaPaypalComponent.GenerateJsonOrder: TJSONObject;
var
  lpurchaseUnit: TJSONObject;
  lpurchaseList: TJSONArray;
  lapplicationContext: TJSONObject;
  lamount: TJSONObject;
begin
  lapplicationContext := TJSONObject.Create.AddPair(TJSONPair.Create('brand_name', 'My Company'))
    .AddPair(TJSONPair.Create('locale', 'en-US'))
    .AddPair(TJSONPair.Create('shipping_preference', 'SET_PROVIDED_ADDRESS'))
    .AddPair(TJSONPair.Create('user_action', 'PAY_NOW'));
  lamount := TJSONObject.Create.AddPair(TJSONPair.Create('currency_code', currency))
    .AddPair('value', TJsonNumber.Create(amount));

  lpurchaseUnit := TJSONObject.Create.AddPair('amount', amount).AddPair('description', description);
  lpurchaseList := TJSONArray.Create;
  lpurchaseList.AddElement(lpurchaseUnit);

  Result := TJSONObject.Create.AddPair('intent', intent).AddPair('application_context', lapplicationContext)
    .AddPair('purchase_units', lpurchaseList);
end;

procedure TJanuaPaypalComponent.GetPaypalToken(const aClientId, aSecret: string);
begin
  FClientID := IfThen(aClientId = '', FClientID, aClientId);
  FToken := IfThen(aSecret = '', FSecret, aSecret);
  FSecret := FPaypalEngine.GetPayPalAccessToken(FClientID, FToken);
end;

procedure TJanuaPaypalComponent.Setamount(const Value: Double);
begin
  Famount := Value;
end;

procedure TJanuaPaypalComponent.SetClientID(const Value: string);
begin
  FClientID := Value;
end;

procedure TJanuaPaypalComponent.Setcurrency(const Value: string);
begin
  Fcurrency := Value;
end;

procedure TJanuaPaypalComponent.Setdescription(const Value: string);
begin
  Fdescription := Value;
end;

procedure TJanuaPaypalComponent.SetEngine(const Value: TJanuaHttpEngine);
begin
  FEngine := Value;
end;

procedure TJanuaPaypalComponent.Setintent(const Value: string);
begin
  Fintent := Value;
end;

procedure TJanuaPaypalComponent.SetSecret(const Value: string);
begin
  FSecret := Value;
end;

procedure TJanuaPaypalComponent.SetToken(const Value: string);
begin
  FToken := Value;
end;

{ TJanuaNetHttpPaypalEngine }

function TJanuaNetHttpPaypalEngine.CreatePayPalOrder(accessToken: string; aPayLoad: TJSONObject): TJSONObject;
begin
  Result := TJSONObject.Create;
  { TODO : Add a Create PayPal Order }
  raise Exception.Create('CreatePayPalOrder not implemented yet');
end;

function TJanuaNetHttpPaypalEngine.CreatePayPalPayout(accessToken: string;
  payoutItems: TArray<TPayPalPayoutItem>): TJSONObject;
begin
  Result := TJSONObject.Create;
  { TODO : Add a Create Create PayPal Payout }
  raise Exception.Create('CreatePayPalPayout not implemented yet');
end;

function TJanuaNetHttpPaypalEngine.GetPayPalAccessToken(const aClientId, aSecret: string): string;
begin
  Result := '';
  { TODO : Add a Create GetPayPal Access Token }
  raise Exception.Create('GetPayPalAccessToken not implemented yet');
end;

function TJanuaNetHttpPaypalEngine.GetPayPalUserInfo(accessToken: string): TJSONObject;
begin
  Result := TJSONObject.Create;
  { TODO : Add a Create Create PayPal Payout }
  raise Exception.Create('Get PayPal User Info not implemented yet');
end;

{ TJanuaRESTPaypalEngine }

function TJanuaRESTPaypalEngine.CreatePayPalOrder(accessToken: string; aPayLoad: TJSONObject): TJSONObject;
begin

end;

function TJanuaRESTPaypalEngine.CreatePayPalPayout(accessToken: string;
  payoutItems: TArray<TPayPalPayoutItem>): TJSONObject;
begin

end;

function TJanuaRESTPaypalEngine.GetPayPalAccessToken(const aClientId, aSecret: string): string;
begin

end;

function TJanuaRESTPaypalEngine.GetPayPalUserInfo(accessToken: string): TJSONObject;
begin

end;

end.
