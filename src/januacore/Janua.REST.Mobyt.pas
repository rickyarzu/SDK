unit Janua.REST.Mobyt;

interface

uses System.Classes, System.JSON, System.Net.HttpClient, Janua.Cloud.SMS;

{ * The following code has been compiled and tested using the MONO project. }

type



  TMobytSMS = class
  public
    function SendMessage: IJanuaSMSSent;
    /// <summary>Authenticates the user given it's username and/password. Returns a couple (user_key, session_key)</summary>
    function authenticate(username, password: String): TStrings;
    /// <summary>Sends an SMS </summary>
    function sendSMS(auth: TStrings; sendSMS: IJanuaSMS): IJanuaSMSSent;  overload;
    function sendSMS: IJanuaSMSSent; overload;
    function CreateSms: IJanuaSms;
  protected
    FSMSResult: Boolean;
    FSMSSent: IJanuaSMSSent;
  private
    FSmsMessage: IJanuaSMS;
    procedure SetSmsMessage(const Value: IJanuaSMS);
  protected
    procedure SetSMSResult(const Value: Boolean);
    procedure SetSMSSent(const Value: IJanuaSMSSent);
  public
    property SMSResult: Boolean read FSMSResult write SetSMSResult;
    property SMSSent: IJanuaSMSSent read FSMSSent write SetSMSSent;
    property SmsMessage: IJanuaSMS read FSmsMessage write SetSmsMessage;
  end;

implementation

uses System.SysUtils, System.StrUtils, System.NetEncoding;

const

  BASEURL: String = 'https://app.mobyt.it/API/v1.0/REST/';
  MESSAGE_HIGH_QUALITY: String = 'N';
  MESSAGE_MEDIUM_QUALITY: String = 'L';
  MESSAGE_LOW_QUALITY: String = 'LL';

function TMobytSMS.CreateSms: IJanuaSms;
begin
  Result := TSendSMS.Create
end;

function TMobytSMS.SendMessage: IJanuaSMSSent;
var
  lAuth: TStrings;
  sendSMSRequest: IJanuaSMS;
begin
  lAuth := authenticate('MY_USERNAME', 'MY_PASSWORD');

  sendSMSRequest := TSendSMS.Create; //

  sendSMSRequest.SMSMessage := ' Hello World ! ';
  sendSMSRequest.SMSMessageType := MESSAGE_HIGH_QUALITY;
  sendSMSRequest.Recipients.Add('+39349123456789');

  // Send the SMS message at the given date (Optional)
  sendSMSRequest.scheduled_delivery_time := 0;

  Result := sendSMS(lAuth, sendSMSRequest);

  FSMSResult := Result.SMSResult.ToUpper = ('OK');
end;

function TMobytSMS.sendSMS: IJanuaSMSSent;
begin

end;

function TMobytSMS.authenticate(username, password: String): TStrings;
var
  LResponse: IHTTPResponse;
  aUrl: string;
  LHTTPClient: THTTPClient;
begin
  LHTTPClient := THTTPClient.Create;
  inherited;

  Result := TStringList.Create;
  try
    aUrl := TNetEncoding.Url.Encode('BASEURL');
    aUrl := TNetEncoding.Url.EncodeQuery(aUrl + 'login?username=' + username + '&password=' + password);
    LResponse := LHTTPClient.Get(aUrl);
    Result.Delimiter := ';';
    Result.Text := LResponse.ContentAsString(nil);
  finally
    LHTTPClient.Free;
    LHTTPClient := nil;
  end;
end;

function TMobytSMS.sendSMS(auth: TStrings; sendSMS: IJanuaSMS): IJanuaSMSSent;
var
  LResponse: IHTTPResponse;
  LHTTPClient: THTTPClient;
begin
  LHTTPClient := THTTPClient.Create;

  // Setting the encoding is required when sending UTF8 characters!
  // wb.Encoding = System.Text.Encoding.UTF8;

  // wb.Headers.Set(HttpRequestHeader.ContentType, ' application / json ');

  // wb.Headers.Add(' user_key ', auth[0]);

  // wb.Headers.Add(' Session_key ', auth[1]);

  // String json = JsonConvert.SerializeObject(sendSMS);

  // sentSMSBody = wb.UploadString(BASEURL + " sms ", " POST ", json);

  // TSMSSent sentSMSResponse = JsonConvert.DeserializeObject<TSMSSent>(sentSMSBody);

  // return sentSMSResponse;
end;

procedure TMobytSMS.SetSmsMessage(const Value: IJanuaSMS);
begin
  FSmsMessage := Value;
end;

procedure TMobytSMS.SetSMSResult(const Value: Boolean);
begin
  FSMSResult := Value;
end;

procedure TMobytSMS.SetSMSSent(const Value: IJanuaSMSSent);
begin
  FSMSSent := Value;
end;



end.
