unit Janua.Cloud.TwilioClient;

interface

uses
  System.Classes,
  System.JSON,
  System.StrUtils,
  System.SysUtils,
  System.Net.HttpClient,
  System.Net.HttpClientComponent,
  System.Net.URLClient;

type
  TJanuaTwilioClientResponse = record
    Success: boolean;
    ResponseData: TJSONValue;
    HTTPResponse: IHTTPResponse;
  end;

  TJanuaTwilioClient = Class
  private
    FUserName: string;
    FPassword: string;
    FAccountSid: string;
    FHttpClient: TNetHttpClient;
    FRequest: TNetHTTPRequest;
    FParams: TStrings;
    FFrom: string;
    FMessageBody: string;
    FMessageID: string;
    FRecipient: string;
    FResponse: TJanuaTwilioClientResponse;
    FResponseString: string;
    FMessageSID: string;
    FResponseStatus: string;
    procedure SetFrom(const Value: string);
    procedure SetMessageBody(const Value: string);
    procedure SetMessageID(const Value: string);
    procedure SetParams(const Value: TStrings);
    procedure SetRecipient(const Value: string);
    procedure SetResponse(const Value: TJanuaTwilioClientResponse);

  protected
    procedure AuthEventHandler(const Sender: TObject; AnAuthTarget: TAuthTargetType;
      const ARealm, AURL: string; var AUserName, APassword: string; var AbortAuth: boolean;
      var Persistence: TAuthPersistenceType); virtual;

  public
    constructor Create(UserName: string; Password: string; AccountSid: string = ''); overload; virtual;

    destructor Destroy; override;

    function Post(aResource: string; aParams: TStrings; domain: string = 'api';
      aVersion: string = '2010-04-01'; aPrefix: string = '/Accounts/{sid}'): TJanuaTwilioClientResponse;

    function SendMessage: boolean;

  public
    property From: string read FFrom write SetFrom;
    property Recipient: string read FRecipient write SetRecipient;
    property MessageBody: string read FMessageBody write SetMessageBody;
    property MessageID: string read FMessageID write SetMessageID;
    property params: TStrings read FParams write SetParams;
    property Response: TJanuaTwilioClientResponse read FResponse write SetResponse;
    property MessageSID: string read FMessageSID;
    property Status: string read FResponseStatus;
    property ResponseString: string read FResponseString;

  end;

implementation

uses Janua.Core.JSON, Janua.Core.Functions;

constructor TJanuaTwilioClient.Create(UserName: string; Password: string; AccountSid: string = '');
begin
  FParams := TStringList.Create;
  FUserName := UserName;
  FPassword := Password;
  if AccountSid = '' then
    FAccountSid := UserName
  else
    FAccountSid := AccountSid;

  FHttpClient := TNetHttpClient.Create(nil);
  FHttpClient.OnAuthEvent := AuthEventHandler;

  FRequest := TNetHTTPRequest.Create(nil);
  FRequest.Client := FHttpClient;
end;

destructor TJanuaTwilioClient.Destroy;
begin
  inherited;
  FRequest.Free;
  FHttpClient.Free;
  FParams.Free;
  FParams := nil;
end;

function TJanuaTwilioClient.Post(aResource: string; aParams: TStrings; domain: string = 'api';
  aVersion: string = '2010-04-01'; aPrefix: string = '/Accounts/{sid}'): TJanuaTwilioClientResponse;
var
  url: String;
  Response: TJanuaTwilioClientResponse;
begin
  url := 'https://' + domain + '.twilio.com/' + aVersion + aPrefix + '/' + aResource + '.json';
  if ContainsText(url, '{sid}') then
    url := ReplaceText(url, '{sid}', FAccountSid);
  FResponseString := url;

  FResponseString := FResponseString + sLineBreak + params.Text;

  Response.HTTPResponse := FRequest.Post(url, params);
  Response.ResponseData := TJSONObject.ParseJSONValue(Response.HTTPResponse.ContentAsString(TEncoding.UTF8));

  Response.Success := (Response.HTTPResponse.StatusCode >= 200) and (Response.HTTPResponse.StatusCode <= 299)
    and (Response.ResponseData <> nil);

  Result := Response;
end;

function TJanuaTwilioClient.SendMessage: boolean;
var
  lParams: TStrings;
begin
  lParams := TStringList.Create;
  try
    // "ContentSid=HXXXXXXXXX"
    lParams.Add('ContentSid=' + MessageSID);

    lParams.Add('From=' + From);
    lParams.Add('To=' + Recipient);
    if MessageBody <> '' then
      lParams.Add('Body=' + MessageBody);

    // "ContentVariables=$CONTENT_VARIABLES_OBJ"
    if FParams.Count > 0 then
    begin
      var
      aObject := TJSONObject.Create;

      for var I := 0 to FParams.Count do
        Janua.Core.JSON.JsonPair(aObject, I.ToString, FParams[I]);

      var
      lContentVariables := aObject.ToJSON;

      lParams.Add('ContentVariables=' + lContentVariables);

    end;

    // POST to the Messages resource
    Response := Post('Messages', lParams);
    Result := Response.Success;
    if Result then
      FMessageSID := Response.ResponseData.GetValue<string>('sid')
    else if Response.ResponseData <> nil then
      FResponseString := FResponseString + 'HTTP status: ' + Response.HTTPResponse.StatusCode.ToString +
        sLineBreak + (Response.ResponseData.ToString) + sLineBreak + lParams.Text + sLineBreak
    else
      FResponseString := 'HTTP status: ' + Response.HTTPResponse.StatusCode.ToString + sLineBreak +
        lParams.Text;
  finally
    lParams.Free;
    lParams := nil;
  end;
end;

procedure TJanuaTwilioClient.SetFrom(const Value: string);
begin
  FFrom := Value;
end;

procedure TJanuaTwilioClient.SetMessageBody(const Value: string);
begin
  FMessageBody := Value;
end;

procedure TJanuaTwilioClient.SetMessageID(const Value: string);
begin
  FMessageID := Value;
end;

procedure TJanuaTwilioClient.SetParams(const Value: TStrings);
begin
  FParams := Value;
end;

procedure TJanuaTwilioClient.SetRecipient(const Value: string);
begin
  FRecipient := Value;
end;

procedure TJanuaTwilioClient.SetResponse(const Value: TJanuaTwilioClientResponse);
begin
  FResponse := Value;
end;

procedure TJanuaTwilioClient.AuthEventHandler(const Sender: TObject; AnAuthTarget: TAuthTargetType;
  const ARealm, AURL: string; var AUserName, APassword: string; var AbortAuth: boolean;
  var Persistence: TAuthPersistenceType);
begin
  if AnAuthTarget = TAuthTargetType.Server then
  begin
    FResponseString := FResponseString + sLineBreak + 'User: ' + FUserName + sLineBreak + 'Password: ' +
      FPassword;

    AUserName := FUserName;
    APassword := FPassword;
  end;
end;

end.
