unit Janua.Cloud.SMS;

interface

uses System.Classes, System.JSON, System.Net.HttpClient, Janua.Core.Classes, Janua.Core.Classes.Intf,
  Janua.Bindings.Intf;

type
  /// <summary>This class represents the API Response. It is automatically created starting
  /// from the JSON object returned by the server, using GSon</summary>
  IJanuaSMSSent = interface(IJanuaBindableObject)
    function Gettotal_sent: Integer;
    function Getremaining_credits: Integer;
    function GetSMSResult: String;
    function GetOrderID: String;
    procedure SetOrderID(const Value: String);
    procedure Setremaining_credits(const Value: Integer);
    procedure SetSMSResult(const Value: String);
    procedure Settotal_sent(const Value: Integer);
    /// <summary> The result of the SMS message sending </summary>
    property SMSResult: String read GetSMSResult write SetSMSResult;
    /// <summary> The order ID of the SMS message sending </summary>
    property OrderID: String read GetOrderID write SetOrderID;
    /// <summary> The actual number of sent SMS messages </summary>
    property total_sent: Integer read Gettotal_sent write Settotal_sent;
    /// <summary> The remaining credits </summary>
    property remaining_credits: Integer read Getremaining_credits write Setremaining_credits;
  end;

  IJanuaSMS = interface
    function Getscheduled_delivery_time: TDateTime;
    function GetreturnCredits: Boolean;
    function GetRecipients: TStrings;
    function GetSMSSender: String;
    function GetSMSMessageType: String;
    function GetSMSMessage: String;
    procedure SetRecipients(const Value: TStrings);
    procedure SetreturnCredits(const Value: Boolean);
    procedure Setscheduled_delivery_time(const Value: TDateTime);
    procedure SetSMSMessage(const Value: String);
    procedure SetSMSMessageType(const Value: String);
    procedure SetSMSSender(const Value: String);
    function GetAsJsonObject: TJsonObject;
    procedure SetAsJsonObject(const Value: TJsonObject);
    /// <summary> The message body </summary>
    property SMSMessage: String read GetSMSMessage write SetSMSMessage;
    /// <summary> The message type </summary>
    property SMSMessageType: String read GetSMSMessageType write SetSMSMessageType;
    /// <summary> The sender Alias (TPOA) </summary>
    property SMSSender: String read GetSMSSender write SetSMSSender;
    /// <summary> Postpone the SMS message sending to the specified date </summary>
    property scheduled_delivery_time: TDateTime read Getscheduled_delivery_time
      write Setscheduled_delivery_time;
    /// <summary> The list of recipients </summary>
    property Recipients: TStrings read GetRecipients write SetRecipients;
    /// <summary> Should the API return the remaining credits?  Default False</summary>
    property returnCredits: Boolean read GetreturnCredits write SetreturnCredits;
    /// <summary> JSON Object as Result  </summary>
    property AsJsonObject: TJsonObject read GetAsJsonObject write SetAsJsonObject;
  end;

type
  TCloudSMSMessage = record
    scheduled_delivery_time: TDateTime;
    returnCredits: Boolean;
    SMSSender: String;
    SMSMessageType: String;
    SMSMessage: String;
  end;

  /// <summary> This object is used to create an SMS message sending request.The JSon object is then
  /// automatically created starting from an instance of this class, using JSON.NET. </Summary>
  TSendSMS = class(TJanuaInterfacedObject, IJanuaSMS)
  public
    constructor Create(const aRecipients: TStrings; const FSMSSender: string); overload;
  strict private
    FRecipients: TStrings;
  strict protected
    FSMSMessageRecord: TCloudSMSMessage;
  protected
    function Getscheduled_delivery_time: TDateTime;
    function GetreturnCredits: Boolean;
    function GetRecipients: TStrings;
    function GetSMSSender: String;
    function GetSMSMessageType: String;
    function GetSMSMessage: String;
    procedure SetRecipients(const Value: TStrings);
    procedure SetreturnCredits(const Value: Boolean);
    procedure Setscheduled_delivery_time(const Value: TDateTime);
    procedure SetSMSMessage(const Value: String);
    procedure SetSMSMessageType(const Value: String);
    procedure SetSMSSender(const Value: String);
    function GetAsJsonObject: TJsonObject;
    procedure SetAsJsonObject(const Value: TJsonObject);
  public
    constructor Create; override;
    /// <summary> The message body </summary>
    property SMSMessage: String read FSMSMessageRecord.SMSMessage write SetSMSMessage;
    /// <summary> The message type </summary>
    property SMSMessageType: String read FSMSMessageRecord.SMSMessageType write SetSMSMessageType;
    /// <summary> The sender Alias (TPOA) </summary>
    property SMSSender: String read FSMSMessageRecord.SMSSender write SetSMSSender;
    /// <summary> Postpone the SMS message sending to the specified date </summary>
    property scheduled_delivery_time: TDateTime read FSMSMessageRecord.scheduled_delivery_time
      write Setscheduled_delivery_time;
    /// <summary> The list of recipients </summary>
    property Recipients: TStrings read FRecipients write SetRecipients;
    /// <summary> Should the API return the remaining credits?  Default False</summary>
    property returnCredits: Boolean read FSMSMessageRecord.returnCredits write SetreturnCredits;
    /// <summary> JSON Object as Result  </summary>
    property AsJsonObject: TJsonObject read GetAsJsonObject write SetAsJsonObject;
  end;

  /// <summary>This class represents the API Response. It is automatically created starting
  /// from the JSON object returned by the server, using GSon</summary>
  TSMSSent = class
  public
    constructor Create; overload;
  private
    Ftotal_sent: Integer;
    Fremaining_credits: Integer;
    FSMSResult: String;
    FOrderID: String;
  protected
    function Gettotal_sent: Integer;
    function Getremaining_credits: Integer;
    function GetSMSResult: String;
    function GetOrderID: String;
    procedure SetOrderID(const Value: String);
    procedure Setremaining_credits(const Value: Integer);
    procedure SetSMSResult(const Value: String);
    procedure Settotal_sent(const Value: Integer);
  public
    /// <summary> The result of the SMS message sending </summary>
    property SMSResult: String read GetSMSResult write SetSMSResult;
    /// <summary> The order ID of the SMS message sending </summary>
    property OrderID: String read GetOrderID write SetOrderID;
    /// <summary> The actual number of sent SMS messages </summary>
    property total_sent: Integer read Gettotal_sent write Settotal_sent;
    /// <summary> The remaining credits </summary>
    property remaining_credits: Integer read Getremaining_credits write Setremaining_credits;
  end;

implementation

uses Janua.Application.Framework, System.Rtti, Janua.Core.Json;

{ TSendSMS }

constructor TSendSMS.Create;
begin
  inherited;

end;

constructor TSendSMS.Create(const aRecipients: TStrings; const FSMSSender: string);
begin

end;

function TSendSMS.GetAsJsonObject: TJsonObject;
begin
  Result := TJsonObject(TJanuaJson.SerializeJson(TValue.From<TCloudSMSMessage>(FSMSMessageRecord)));
end;

function TSendSMS.GetRecipients: TStrings;
begin
  Result := Self.FRecipients
end;

function TSendSMS.GetreturnCredits: Boolean;
begin
  Result := FSMSMessageRecord.returnCredits
end;

function TSendSMS.Getscheduled_delivery_time: TDateTime;
begin
  Result := scheduled_delivery_time
end;

function TSendSMS.GetSMSMessage: String;
begin
  Result := FSMSMessageRecord.SMSMessage
end;

function TSendSMS.GetSMSMessageType: String;
begin
  Result := FSMSMessageRecord.SMSMessageType
end;

function TSendSMS.GetSMSSender: String;
begin
  Result := FSMSMessageRecord.SMSSender
end;

procedure TSendSMS.SetAsJsonObject(const Value: TJsonObject);
begin

end;

procedure TSendSMS.SetRecipients(const Value: TStrings);
begin
  FRecipients := Value;
end;

procedure TSendSMS.SetreturnCredits(const Value: Boolean);
begin
  FSMSMessageRecord.returnCredits := Value;
end;

procedure TSendSMS.Setscheduled_delivery_time(const Value: TDateTime);
begin
  FSMSMessageRecord.scheduled_delivery_time := Value;
end;

procedure TSendSMS.SetSMSMessage(const Value: String);
begin
  FSMSMessageRecord.SMSMessage := Value;
end;

procedure TSendSMS.SetSMSMessageType(const Value: String);
begin
  FSMSMessageRecord.SMSMessageType := Value;
end;

procedure TSendSMS.SetSMSSender(const Value: String);
begin
  FSMSMessageRecord.SMSSender := Value;
end;

{ TSMSSent }

constructor TSMSSent.Create;
begin
  inherited;

end;

function TSMSSent.GetOrderID: String;
begin
  Result := FOrderID
end;

function TSMSSent.Getremaining_credits: Integer;
begin
  Result := Fremaining_credits
end;

function TSMSSent.GetSMSResult: String;
begin
  Result := FSMSResult
end;

function TSMSSent.Gettotal_sent: Integer;
begin
  Result := Ftotal_sent
end;

procedure TSMSSent.SetOrderID(const Value: String);
begin
  FOrderID := Value;
end;

procedure TSMSSent.Setremaining_credits(const Value: Integer);
begin
  Fremaining_credits := Value;
end;

procedure TSMSSent.SetSMSResult(const Value: String);
begin
  FSMSResult := Value;
end;

procedure TSMSSent.Settotal_sent(const Value: Integer);
begin
  Ftotal_sent := Value;
end;

end.
