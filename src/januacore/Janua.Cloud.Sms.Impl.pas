unit Janua.Cloud.Sms.Impl;

interface

uses System.Classes, System.SysUtils, Data.DB, System.StrUtils,
  // Janua  Intf/Types
  Janua.Core.Types, Janua.Cloud.Types, Janua.Cloud.Intf, Janua.Cloud.Sms.Intf, Janua.Orm.Intf,
  Janua.Core.System.Types,
  // Janua cxClasses Implementation
  Janua.Cloud.Conf, Janua.Core.Classes, Janua.Cloud.Impl;

type
  TJanuaSMSBuilder = class(TJanuaCustomMessageBuilder, IJanuaSMSBuilder, IJanuaMessageBuilder)
  private
    FsTO: string;
    FsFrom: string;
    FsFromAddr: string;
    FSMSMessage: TSMSMessage;
    { FMailConf: TJanuaMailConf; }
    FLoaded: Boolean;
    FSMSSender: IJanuaSMSSender;
    function GetLogProc: TMessageLogProc;
  protected
    FMessageConf: TSMSMessageConf;
    function GetSettingKey: string; override;
    procedure SetSettingKey(const Value: string); override;
    procedure SetSMSSender(const Value: IJanuaSMSSender);
    function GetSMSSender: IJanuaSMSSender;
    procedure SetsTo(const Value: string);
    procedure SetsFrom(const Value: string);
    procedure SetsFromAddr(const Value: string);
    function GetsTo: string;
    function GetFrom: string;
    function GetFromAddr: string;
    function GetSMSMessage: TSMSMessage;
    procedure SetSMSMessage(const Value: TSMSMessage);
    procedure SetMessageConf(const Value: TSMSMessageConf);
    function GetMessageConf: TSMSMessageConf;
    function GetSettingLocation: TJanuaSettingLocation; override;
    procedure SetSettingLocation(const Value: TJanuaSettingLocation); override;
    procedure SetMsgText(const Value: TStrings); override;
    function GetsText: string; override;
    procedure SetsText(const Value: string); override;
    // Log Procedure
    procedure SetLogProc(const Value: TMessageLogProc); override;
  public
    constructor Create; override;
    destructor Destroy; override;
    procedure LoadSettings; override;
    function GenerateSMSMessage: TSMSMessage; overload;
    function GenerateSMSMessage(const aRecord: IJanuaRecord): TSMSMessage; overload;
    function GenerateSMSMessage(const aDataset: TDataset): TSMSMessage; overload;
    function GenerateSMSMessage(const aRecordSetSet: IJanuaRecordSet): TSMSMessage; overload;

    procedure SendSMS(const aRecord: IJanuaRecord; aUpdateProc: TUpdateProc; aErrorProc: TExceptionProc;
      aFinishProc: TProc); overload;
    procedure SendSMS(const aDataset: TDataset; aUpdateProc: TUpdateProc; aErrorProc: TExceptionProc;
      aFinishProc: TProc); overload;
    procedure SendSMS(const aRecordSet: IJanuaRecordSet; aUpdateProc: TUpdateProc; aErrorProc: TExceptionProc;
      aFinishProc: TProc); overload;
    procedure SendSMS(aUpdateProc: TUpdateProc; aErrorProc: TExceptionProc; aFinishProc: TProc); overload;

    procedure LoadConf;
    procedure SaveConf;

    property sFrom: string read GetFrom write SetsFrom;
    property sFromAddr: string read GetFromAddr write SetsFromAddr;
    property sTo: string read GetsTo write SetsTo;
    property SMSMessage: TSMSMessage read GetSMSMessage write SetSMSMessage;
    property SMSMessageConf: TSMSMessageConf read GetMessageConf write SetMessageConf;
    property SMSSender: IJanuaSMSSender read GetSMSSender write SetSMSSender;
    property LogProc: TMessageLogProc read GetLogProc write SetLogProc;
  end;

  TCustomSMSSender = class(TJanuaInterfacedObject, IJanuaSMSSender)
  private
    FRecipients: TStrings;
    FSenderConf: TSMSSenderConf;
    FSMSMessage: string;
    function GetLogProc: TMessageLogProc;
  protected
    FConfName: string;
    FLogProc: TMessageLogProc;
    FMessageType: TJanuaMessageType;
    function GetKey: string;
    function GetSecret: string;
    function GetRecipients: TStrings;
    function GetAppName: string;
    function GetSMSMessage: string;
    function GetAsJsonConf: string;
    procedure SetAppName(const Value: string);
    procedure SetKey(const Value: string);
    procedure SetRecipients(const Value: TStrings);
    procedure SetSecret(const Value: string);
    procedure SetSMSMessage(const Value: string);
    procedure SetAsJsonConf(const Value: string);
    procedure SetLogProc(const Value: TMessageLogProc); override;
    function GetMessageType: TJanuaMessageType;
    procedure SetMessageType(const Value: TJanuaMessageType);
  public
    property SMSMessage: string read GetSMSMessage write SetSMSMessage;
    property Recipients: TStrings read GetRecipients write SetRecipients;
    property AppName: string read GetAppName write SetAppName;
    property Key: string read GetKey write SetKey;
    property Secret: string read GetSecret write SetSecret;
    property AsJsonConf: string read GetAsJsonConf write SetAsJsonConf;
  public
    constructor Create; override;
    destructor Destroy; override;
    procedure AddRecipient(const aRecipient: string);
    procedure ClearConf;
    procedure LoadSystemConf;
    procedure SaveSystemConf;
    procedure SendSMS(aUpdateProc: TUpdateProc; aErrorProc: TExceptionProc; aFinishProc: TProc); overload;
      virtual; abstract;
    procedure SendSMS(aBuilder: IJanuaSMSBuilder; aUpdateProc: TUpdateProc; aErrorProc: TExceptionProc;
      aFinishProc: TProc); overload;
    procedure SendSMS(aMesage: TSMSMessage; aUpdateProc: TUpdateProc; aErrorProc: TExceptionProc;
      aFinishProc: TProc); overload;
    property LogProc: TMessageLogProc read GetLogProc write SetLogProc;
    property MessageType: TJanuaMessageType read GetMessageType write SetMessageType;
  end;

implementation

uses Janua.Core.Functions, Janua.Application.Framework;

{ TCustomSMSSender }

procedure TCustomSMSSender.AddRecipient(const aRecipient: string);
begin
  if IsNumericEquation(StringReplace(aRecipient, 'whatsapp:', '', [rfIgnoreCase])) and
    (Recipients.IndexOf(aRecipient) = -1) then
    Recipients.Add(aRecipient);
end;

procedure TCustomSMSSender.ClearConf;
begin
  { FSenderConf.Clear; }
end;

constructor TCustomSMSSender.Create;
begin
  inherited;
  FRecipients := TStringList.Create;
  FSenderConf := TSMSSenderConf.Create;
  FMessageType := jmtWhatsApp;
end;

destructor TCustomSMSSender.Destroy;
begin
  FRecipients.Free;
  inherited;
end;

function TCustomSMSSender.GetAppName: string;
begin
  case FMessageType of
    jmtSMS:
      begin
        Result := FSenderConf.RestAppName
      end;
    jmtTelegram:
      begin
        Result := FSenderConf.RestAppName
      end;
    jmtWhatsApp:
      begin
        Result := 'whatsapp:' + FSenderConf.RestAppName
      end;
  end;
end;

function TCustomSMSSender.GetAsJsonConf: string;
begin
  Result := FSenderConf.AsJson;
end;

function TCustomSMSSender.GetKey: string;
begin
  Result := FSenderConf.RestKey
end;

function TCustomSMSSender.GetLogProc: TMessageLogProc;
begin
  Result := FLogProc;
end;

function TCustomSMSSender.GetMessageType: TJanuaMessageType;
begin
  Result := FMessageType
end;

function TCustomSMSSender.GetRecipients: TStrings;
begin
  Result := FRecipients
end;

function TCustomSMSSender.GetSecret: string;
begin
  Result := FSenderConf.RestSecret
end;

function TCustomSMSSender.GetSMSMessage: string;
begin
  Result := FSMSMessage
end;

procedure TCustomSMSSender.LoadSystemConf;
begin
  FSenderConf.LoadConfig;
end;

procedure TCustomSMSSender.SaveSystemConf;
begin
  FSenderConf.SaveConfig;
end;

procedure TCustomSMSSender.SendSMS(aMesage: TSMSMessage; aUpdateProc: TUpdateProc; aErrorProc: TExceptionProc;
  aFinishProc: TProc);
begin
  FSMSMessage := aMesage.Text;
  AddRecipient(aMesage.MsgTo);
  SendSMS(aUpdateProc, aErrorProc, aFinishProc);
end;

procedure TCustomSMSSender.SendSMS(aBuilder: IJanuaSMSBuilder; aUpdateProc: TUpdateProc;
  aErrorProc: TExceptionProc; aFinishProc: TProc);
var
  aMesage: TSMSMessage;
begin
  aBuilder.LoadSettings;
  aMesage := aBuilder.GenerateSMSMessage;
  SendSMS(aMesage, aUpdateProc, aErrorProc, aFinishProc);
end;

procedure TCustomSMSSender.SetAppName(const Value: string);
begin
  FSenderConf.RestAppName := Value;
  // Notify('RestAppName');
end;

procedure TCustomSMSSender.SetAsJsonConf(const Value: string);
begin
  FSenderConf.AsJson := Value;
end;

procedure TCustomSMSSender.SetKey(const Value: string);
begin
  FSenderConf.RestKey := Value;
end;

procedure TCustomSMSSender.SetLogProc(const Value: TMessageLogProc);
begin
  inherited;
  FSenderConf.LogProc := FLogProc;
end;

procedure TCustomSMSSender.SetMessageType(const Value: TJanuaMessageType);
begin
  FMessageType := Value;
end;

procedure TCustomSMSSender.SetRecipients(const Value: TStrings);
begin
  FRecipients.Assign(Value);
end;

procedure TCustomSMSSender.SetSecret(const Value: string);
begin
  FSenderConf.RestSecret := Value;
end;

procedure TCustomSMSSender.SetSMSMessage(const Value: string);
begin
  FSMSMessage := Value;
end;

{ TJanuaSMSBuilder }

constructor TJanuaSMSBuilder.Create;
begin
  inherited;
  FLoaded := False;
  FMessageConf := TSMSMessageConf.Create;
end;

destructor TJanuaSMSBuilder.Destroy;
begin
  FMessageConf.Free;
  inherited;
end;

function TJanuaSMSBuilder.GenerateSMSMessage: TSMSMessage;
begin
  if FMessageConf.MsgTo = '' then
    LoadSettings;

  if Assigned(Dataset) then
    FSMSMessage := FMessageConf.GenerateSMSMessage(Dataset)
  else if Assigned(JanuaRecord) then
    FSMSMessage := FMessageConf.GenerateSMSMessage(JanuaRecord)
  else if Assigned(JanuaRecordSet) then
    FSMSMessage := FMessageConf.GenerateSMSMessage(JanuaRecordSet.CurrentRecord);

  if Assigned(FLogProc) then
  begin
    var
    lLevel := IfThen(FSMSMessage.MsgTo <> '', 'INFO', 'ERROR');
    FLogProc('GenerateSMSMessage', '{"level" : "' + lLevel + '", "to" : "' + FSMSMessage.MsgTo +
      '", "url" : "' + FSMSMessage.Url + '", "content" : "' + FSMSMessage.Text + '"}', self);
  end;

  Result := FSMSMessage;
end;

function TJanuaSMSBuilder.GenerateSMSMessage(const aRecord: IJanuaRecord): TSMSMessage;
begin
  JanuaRecord := aRecord;
  Result := GenerateSMSMessage;
end;

function TJanuaSMSBuilder.GenerateSMSMessage(const aDataset: TDataset): TSMSMessage;
begin
  Dataset := aDataset;
  Result := GenerateSMSMessage;
end;

function TJanuaSMSBuilder.GetFrom: string;
begin
  Result := FSMSMessage.MsgFromName;
end;

function TJanuaSMSBuilder.GetFromAddr: string;
begin
  Result := FSMSMessage.MsgFrom;
end;

function TJanuaSMSBuilder.GetLogProc: TMessageLogProc;
begin
  Result := FLogProc
end;

function TJanuaSMSBuilder.GetMessageConf: TSMSMessageConf;
begin
  Result := FMessageConf
end;

function TJanuaSMSBuilder.GetSettingKey: string;
begin
  Result := FMessageConf.Key
end;

function TJanuaSMSBuilder.GetSettingLocation: TJanuaSettingLocation;
begin
  Result := FMessageConf.SettingLocation
end;

function TJanuaSMSBuilder.GetSMSMessage: TSMSMessage;
begin
  Result := FSMSMessage
end;

function TJanuaSMSBuilder.GetSMSSender: IJanuaSMSSender;
begin
  Result := FSMSSender
end;

function TJanuaSMSBuilder.GetsText: string;
begin
  Result := FSMSMessage.Text
end;

function TJanuaSMSBuilder.GetsTo: string;
begin
  Result := FSMSMessage.MsgTo
end;

procedure TJanuaSMSBuilder.LoadConf;
begin
  LoadSettings;
end;

procedure TJanuaSMSBuilder.LoadSettings;
begin
  inherited;
  if Assigned(FLogProc) then
    FMessageConf.LogProc := FLogProc;
  FMessageConf.LoadConfig;
end;

procedure TJanuaSMSBuilder.SendSMS(const aRecord: IJanuaRecord; aUpdateProc: TUpdateProc;
  aErrorProc: TExceptionProc; aFinishProc: TProc);
begin
  GenerateSMSMessage(aRecord);
  SendSMS(aUpdateProc, aErrorProc, aFinishProc);
end;

procedure TJanuaSMSBuilder.SendSMS(const aDataset: TDataset; aUpdateProc: TUpdateProc;
  aErrorProc: TExceptionProc; aFinishProc: TProc);
begin
  GenerateSMSMessage(aDataset);
  SendSMS(aUpdateProc, aErrorProc, aFinishProc);
end;

procedure TJanuaSMSBuilder.SaveConf;
begin
  FMessageConf.SaveConfig
end;

procedure TJanuaSMSBuilder.SendSMS(const aRecordSet: IJanuaRecordSet; aUpdateProc: TUpdateProc;
  aErrorProc: TExceptionProc; aFinishProc: TProc);
begin
  GenerateSMSMessage(aRecordSet);
  SendSMS(aUpdateProc, aErrorProc, aFinishProc);
end;

procedure TJanuaSMSBuilder.SendSMS(aUpdateProc: TUpdateProc; aErrorProc: TExceptionProc; aFinishProc: TProc);
begin
  if Assigned(FLogProc) then
    FLogProc('SendSMS', '{"sending" : "' + FSMSMessage.MsgTo + ' "}', self);
  FSMSSender.LogProc := FLogProc;
  FSMSSender.LoadSystemConf;
  FSMSSender.SendSMS(FSMSMessage, aUpdateProc, aErrorProc, aFinishProc);
  if Assigned(FAfterMessageSent) then
    FAfterMessageSent(FSMSMessage.Text, FSMSMessage.GetAsJson);
end;

procedure TJanuaSMSBuilder.SetLogProc(const Value: TMessageLogProc);
begin
  inherited;
end;

procedure TJanuaSMSBuilder.SetMessageConf(const Value: TSMSMessageConf);
begin
  FMessageConf := Value
end;

procedure TJanuaSMSBuilder.SetMsgText(const Value: TStrings);
begin
  if Assigned(FMsgText) then
  begin
    if Assigned(Value) then
      FMsgText.Assign(Value)
    else
      FMsgText.Clear;
    FSMSMessage.SetText(FMsgText.Text);
  end
  else
  begin
    if Assigned(Value) then
      FSMSMessage.SetText(Value.Text)
    else
      FSMSMessage.SetText('');
  end;
end;

procedure TJanuaSMSBuilder.SetSettingKey(const Value: string);
begin
  FMessageConf.Key := Value;
end;

procedure TJanuaSMSBuilder.SetSettingLocation(const Value: TJanuaSettingLocation);
begin
  inherited;
  FMessageConf.SettingLocation := Value;
end;

procedure TJanuaSMSBuilder.SetsFrom(const Value: string);
begin
  FSMSMessage.MsgFromName := Value
end;

procedure TJanuaSMSBuilder.SetsFromAddr(const Value: string);
begin
  FSMSMessage.MsgFrom := Value
end;

procedure TJanuaSMSBuilder.SetSMSMessage(const Value: TSMSMessage);
begin
  FSMSMessage := Value;
end;

procedure TJanuaSMSBuilder.SetSMSSender(const Value: IJanuaSMSSender);
begin
  FSMSSender := Value;
end;

procedure TJanuaSMSBuilder.SetsText(const Value: string);
begin
  inherited;

end;

procedure TJanuaSMSBuilder.SetsTo(const Value: string);
begin
  FSMSMessage.MsgTo := Value
end;

function TJanuaSMSBuilder.GenerateSMSMessage(const aRecordSetSet: IJanuaRecordSet): TSMSMessage;
begin
  JanuaRecord := aRecordSetSet.CurrentRecord;
  Result := GenerateSMSMessage;
end;

initialization

end.
