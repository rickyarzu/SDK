unit Janua.TMS.SMS;

interface

uses System.Classes, System.SysUtils, System.JSON, CloudBase, CloudSMS, Janua.Cloud.SMS.Intf,
  Janua.Cloud.SMS.Impl, Janua.Cloud.Types, Janua.Core.JSON;

type

  [ComponentPlatformsAttribute(pidWin32 or pidWin64)]
  TJanuaAdvTwilio = class(TCloudBaseSMS)
  private
    FContentSid: string;
    FContentVariables: TStrings;
    FResponse: string;
    FMessageSid: string;
    FMessageBody: string;
    procedure SetContentSid(const Value: string);
    procedure SetContentVariables(const Value: TStrings);
    procedure SetResponse(const Value: string);
    procedure SetMessageBody(const Value: string);
    procedure SetMessageSid(const Value: string);
    // function ReceiveSMS: boolean;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  public
    property ContentSid: string read FContentSid write SetContentSid;
    property ContentVariables: TStrings read FContentVariables write SetContentVariables;
    property Response: string read FResponse write SetResponse;
    property MessageSid: string read FMessageSid write SetMessageSid;
    property MessageBody: string read FMessageBody write SetMessageBody;
  public
    function SendSMS(PhoneNr, Body: string): boolean; override;
  end;

type
  TSMSTwilioSender = class(TCustomSMSSender, IJanuaSMSSender, IJanuaSMSTwilio)
  public
    procedure SendSMS(aUpdateProc: TUpdateProc; aErrorProc: TExceptionProc; aFinishProc: TProc); override;
  private
    FResponse: string;
    procedure SetResponse(const Value: string);
  public
    constructor Create; override;
    destructor Destroy; override;
    property Response: string read FResponse write SetResponse;
  end;

implementation

uses {Janua.Core.Types,} Janua.Application.Framework;

{ TSMSTwilioSender }

constructor TSMSTwilioSender.Create;
begin
  inherited;
  // At Least Conf Name must be set to properly Run Configuration
  Key := 'AC221a150df22723daef8d097a7f76cfcf';
  Secret := 'f3c90112efdccd931b81dea46f74f1da';
  AppName := '+393513535778' { '+15302036772' };
  FMessageType := jmtWhatsApp;
  LoadSystemConf;

  {
    AC221a150df22723daef8d097a7f76cfcf
    MGa44a619c3b765b376c2f42eb691e4033
    +19498326448
  }
end;

destructor TSMSTwilioSender.Destroy;
begin
  inherited;
end;

procedure TSMSTwilioSender.SendSMS(aUpdateProc: TUpdateProc; aErrorProc: TExceptionProc; aFinishProc: TProc);
var
  AdvTwilio: TAdvTwilio;
begin
  AdvTwilio := TAdvTwilio.Create(nil);
  try
    var
    lLogProc := Assigned(FLogProc);

    AdvTwilio.App.Key := GetKey;
    // 'AC221a150df22723daef8d097a7f76cfcf';
    AdvTwilio.App.Secret := GetSecret;
    // 'f3c90112efdccd931b81dea46f74f1da';
    AdvTwilio.App.Name := GetAppName;
    // '+15302036772';
    var
    lSMS := GetSMSMessage;

    if GetRecipients.Count = 0 then
      if lLogProc then
        FLogProc('SendSMS', '{"level" : "ERROR", "message" : "no recipients for Message ' + lSMS + '"', self);

    for var I := 0 to Pred(GetRecipients.Count) do
      try
        var
        lRecipient := Recipients[I];
        if FMessageType = jmtWhatsApp then
          lRecipient := 'whatsapp:' + lRecipient;

        if AdvTwilio.SendSMS(lRecipient, lSMS) then
        begin
          if Assigned(aUpdateProc) then
            aUpdateProc(I, Recipients[I]);
          if lLogProc then
            FLogProc('SendSMS', '{"level" : "INFO", "phone" : "' + Recipients[I] + '", "message" : "' + lSMS +
              '"', self);
        end
        else
        begin
          if lLogProc then
            FLogProc('SendSMS', '{"level" : "ERROR", "phone" : "' + Recipients[I] + '", "message" : "' + lSMS
              + '", "log" : ' + AdvTwilio.LastError, self);
          raise Exception.Create('Error sending Message' + sLineBreak + AdvTwilio.LastError);
        end;
      except
        on e: Exception do
        begin
          if Assigned(aErrorProc) then
            aErrorProc(e, Recipients[I])
          else
            raise
        end;
      end;

    if Assigned(aFinishProc) then
      aFinishProc;
    // '+393479392209'
  finally
    AdvTwilio.Free;
  end;
end;

procedure TSMSTwilioSender.SetResponse(const Value: string);
begin
  FResponse := Value;
end;

{ TJanuaAdvTwilio }

constructor TJanuaAdvTwilio.Create(AOwner: TComponent);
begin
  inherited;
  FContentVariables := TStringList.Create;
end;

destructor TJanuaAdvTwilio.Destroy;
begin
  FContentVariables.Free;
  inherited;
end;

function TJanuaAdvTwilio.SendSMS(PhoneNr, Body: string): boolean;
var
  url: string;
  postdata, res: ansistring;
  headers: TCoreCloudHeaders;
  I: integer;
begin
  (*
    curl -X POST "https://api.twilio.com/2010-04-01/Accounts/$TWILIO_ACCOUNT_SID/Messages.json" \
    --data-urlencode "ContentSid=HXXXXXXXXX" \
    --data-urlencode "To=whatsapp:+18551234567" \
    --data-urlencode "From=whatsapp:+15005550006" \
    --data-urlencode "ContentVariables=$CONTENT_VARIABLES_OBJ" \
    --data-urlencode "MessagingServiceSid=MGXXXXXXXX" \
    -u $TWILIO_ACCOUNT_SID:$TWILIO_AUTH_TOKEN
  *)

  Result := False;

  url := 'https://api.twilio.com/2010-04-01/Accounts/' + App.Key + '/Messages.json';

  AddHeader(headers, 'Content-Type', 'application/x-www-form-urlencoded');

  RequestParams.Clear;
  RequestParams.Values['To'] := PhoneNr;
  RequestParams.Values['From'] := App.Name;
  if Body <> '' then
    RequestParams.Values['Body'] := string(TMSUTF8Encode(Body));
  if FContentSid <> '' then
    RequestParams.Values['ContentSid'] := FContentSid;
  if FContentVariables.Count > 0 then
  begin
    var
    aObject := TJSONObject.Create;

    for var J := 1 to FContentVariables.Count do
      Janua.Core.JSON.JsonPair(aObject, J.ToString, FContentVariables[J - 1]);

    var
    lContentVariables := aObject.ToJSON;

    RequestParams.Values['ContentVariables'] := lContentVariables;
  end;

  postdata := ansistring(EncodeParams(RequestParams, '&', False));

  I := HttpsPost(Extractserver(url), Removeserver(url), App.Key, App.Secret, headers, postdata, res);

  FLastError := 'HTTP result ' + inttostr(I) + ':' + string(res);
  FResponse := string(res);
  Result := I in [200, 201];

  if Result and (res <> '') then
  begin
    var
    aObject := JsonParse(res);
    JsonValue(aObject, 'body', FMessageBody);
    JsonValue(aObject, 'sid', FMessageSid);
    aObject.Free;
  end;

end;

procedure TJanuaAdvTwilio.SetContentSid(const Value: string);
begin
  FContentSid := Value;
end;

procedure TJanuaAdvTwilio.SetContentVariables(const Value: TStrings);
begin
  FContentVariables := Value;
end;

procedure TJanuaAdvTwilio.SetMessageBody(const Value: string);
begin
  FMessageBody := Value;
end;

procedure TJanuaAdvTwilio.SetMessageSid(const Value: string);
begin
  FMessageSid := Value;
end;

procedure TJanuaAdvTwilio.SetResponse(const Value: string);
begin
  FResponse := Value;
end;

initialization

try
  // TSMSTwilioSender = class(TCustomSMSSender, IJanuaSMSSender, IJanuaSMSTwilio)
  TJanuaApplicationFactory.RegisterClass(IJanuaSMSTwilio, TSMSTwilioSender);
  TJanuaApplicationFactory.RegisterClass(IJanuaSMSSender, TSMSTwilioSender);
except
  on e: Exception do
    raise Exception.Create('TMS.SMS.Initialization ' + e.Message);
end;

end.
