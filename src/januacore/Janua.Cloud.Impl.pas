unit Janua.Cloud.Impl;

interface

uses System.SysUtils, System.Classes, Data.DB, System.Generics.Collections, Spring.Collections,
  // Janua Intf / Commons
  Janua.Core.Types, Janua.Cloud.Types, Janua.Orm.Intf, Janua.Core.Classes.Intf, Janua.Html.Intf,
  Janua.Cloud.Intf,
  // Janua Impl / Classes
  Janua.Core.System.Types, Janua.Core.Classes, Janua.Cloud.Conf;

type
  TCloudFactory = class
    class function GenerateImageLink(aImageID: Int64; aTitle, aExt, aAltText, aMaxWidth,
      aMaxHeight: string): string;
    class function GenerateImageResourceLink(aImage, aTitle, aAltText, aMaxWidth, aMaxHeight: string): string;
    class function GenerateImageResourceObject(aImage, aTitle, aAltText, aMaxWidth, aMaxHeight: string)
      : IJanuaHtmlObject;
    class function CreateImageLinkObject(aImageID: Int64; aTitle, aExt, aAlt, aMaxWidth, aMaxHeight: string)
      : IJanuaHtmlObject;
    /// <summary>
    /// This methods return an html link to the file url. It generates a file 'name' using id + ext
    /// </summary>
    /// <param name="aFileID">
    /// the unique id of the file record
    /// </param>
    /// <param name="aExt">
    /// the extensions associated with file id
    /// </param>
    /// <param name="aDescription">
    /// Description of linked file. Text to be clicked or alt text for imageimages.
    /// </param>
    /// <returns>
    /// a string contaning the url embedded in an html5 tag link
    /// </returns>
    class function GenerateFileLink(aFileID: Int64; aExt, aDescription: string): string;
    class function CreateFileLinkObject(aImageID: Int64; aTitle, aExt: string): IJanuaHtmlObject;
    class function GetImageResourceUrl(aImage: string): string;
    class function GetImageUrl(aImageID: Int64; aExt: string): string;
    /// <summary> This methods return an url to the resource. It does not provide any html or uri context
    /// </summary>
    /// <param name="aFileID"> the unique id of the file record </param>
    /// <param name="aExt"> the extensions associated with file id</param>
    /// <returns>a string contaning the url of the file resource on server</returns>
    class function GetFileUrl(aFileID: Int64; aExt: string): string;
  end;

  TJanuaCustomMessageBuilder = class(TJanuaInterfacedBindableObject, IJanuaMessageBuilder)
  private
    FTestingFileName: string;
    FDataset: TDataset;
    [weak]
    FJanuaRecord: IJanuaRecord;
    [weak]
    FJanuaRecordSet: IJanuaRecordSet;
    FSent: Boolean;
  strict protected
    FAfterMessageSent: TSendMessageEvent;
  protected
    FMsgText: TStrings;
    FErrorMessage: string;
    function GetAfterMessageSent: TSendMessageEvent;
    procedure SetAfterMessageSent(const Value: TSendMessageEvent);
    function GetJanuaRecordSet: IJanuaRecordSet;
    procedure SetJanuaRecordSet(const Value: IJanuaRecordSet);
    function GetJanuaRecord: IJanuaRecord;
    procedure SetJanuaRecord(const Value: IJanuaRecord);
    function GetDataset: TDataset;
    procedure SetDataset(const Value: TDataset);
    // Virtual and Abstract Methods//
    function GetMsgText: TStrings; virtual;
    function GetSettingLocation: TJanuaSettingLocation; virtual; abstract;
    procedure SetSettingLocation(const Value: TJanuaSettingLocation); virtual; abstract;
    procedure SetMsgText(const Value: TStrings); virtual; abstract;
    function GetsText: string; virtual; abstract;
    procedure SetsText(const Value: string); virtual;
    function GetSent: Boolean;
    function GetLogProc: TMessageLogProc;
    procedure SetLogProc(const Value: TMessageLogProc); override;
    function GetSettingKey: string; virtual; abstract;
    procedure SetSettingKey(const Value: string); virtual; abstract;
  public
    constructor Create; override;
    destructor Destroy; override;
    procedure LoadSettings; virtual; abstract;
    procedure NilDatasets;
  public
    property Sent: Boolean read GetSent;
    property sText: string read GetsText write SetsText;
    property MsgText: TStrings read GetMsgText write SetMsgText;
    property Dataset: TDataset read GetDataset write SetDataset;
    property JanuaRecord: IJanuaRecord read GetJanuaRecord write SetJanuaRecord;
    property JanuaRecordSet: IJanuaRecordSet read FJanuaRecordSet write SetJanuaRecordSet;
    property SettingLocation: TJanuaSettingLocation read GetSettingLocation write SetSettingLocation;
    property LogProc: TMessageLogProc read GetLogProc write SetLogProc;
    property SettingKey: string read GetSettingKey write SetSettingKey;
    property AfterMessageSent: TSendMessageEvent read GetAfterMessageSent write SetAfterMessageSent;
  end;

  TJanuaLandingMsgBuilder = class(TJanuaCustomMessageBuilder, IJanuaMessageBuilder,
    IJanuaLandingMessageBuilder)
  private
    FLandingMessage: TLandingMessage;
    procedure SetLandingMessage(const Value: TLandingMessage);
  protected
    FMessageConf: TLandingMessageConf;
    procedure SetMessageConf(const Value: TLandingMessageConf);
    function GetMessageConf: TLandingMessageConf;
    procedure SetTitle(const Value: string);
    function GetTitle: string;
    procedure SetUrl(const Value: string);
    function GetUrl: string;
    function GetMsgText: TStrings; override;
    function GetSettingLocation: TJanuaSettingLocation; override;
    procedure SetSettingLocation(const Value: TJanuaSettingLocation); override;
    procedure SetMsgText(const Value: TStrings); override;
    function GetsText: string; override;
    procedure SetsText(const Value: string); override;
    procedure CheckAll;
    function GetSettingKey: string; override;
    procedure SetSettingKey(const Value: string); override;
  public
    constructor Create; override;
    destructor Destroy; override;
    property Title: string read GetTitle write SetTitle;
    property Url: string read GetUrl write SetUrl;
    procedure LoadSettings; override;
    function GenerateLandingMessage: TLandingMessage; overload;
    function GenerateLandingMessage(const aRecord: IJanuaRecord): TLandingMessage; overload;
    function GenerateLandingMessage(const aDataset: TDataset): TLandingMessage; overload;
  public
    property MessageConf: TLandingMessageConf read GetMessageConf write SetMessageConf;
    property LandingMessage: TLandingMessage read FLandingMessage write SetLandingMessage;
  end;

var
  HtmlServerUrl: string;

implementation

uses Spring, Janua.Html.Impl, System.StrUtils, Janua.Html.Types, System.NetEncoding,
  Janua.Core.Json, Janua.Application.Framework;

{ TCloudFactory }

class function TCloudFactory.CreateFileLinkObject(aImageID: Int64; aTitle, aExt: string): IJanuaHtmlObject;
begin
  Result := TJanuaHtmlObject.Create(JanuaHtmlHelper, 'a', False);
  Result.NewLine := False;
  Result.AddParam('href', GetFileUrl(aImageID, aExt));
  Result.Text := aTitle;
  // Result.AddParam('src', self.GetImageUrl(aImageID, aExt));
end;

class function TCloudFactory.CreateImageLinkObject(aImageID: Int64;
  aTitle, aExt, aAlt, aMaxWidth, aMaxHeight: string): IJanuaHtmlObject;
begin
  // <img src="/?page=image&file=' + FHomeTeamId.AsString + '.jpg"  alt="' +
  // FHomeTeamName.AsString + '" style="width:32px; height:32px"> '
  //
  Result := TJanuaHtmlObject.Create(JanuaHtmlHelper, 'img', False);
  Result.NewLine := False;
  if aMaxWidth <> '' then
    Result.AddStyle(THtmlStyle.Width, aMaxWidth);
  if aMaxHeight <> '' then
    Result.AddStyle(THtmlStyle.Height, aMaxHeight);
  Result.AddParam('alt', aAlt);
  Result.Text := aTitle;
  Result.AddParam('src', self.GetImageUrl(aImageID, aExt));

end;

class function TCloudFactory.GenerateFileLink(aFileID: Int64; aExt, aDescription: string): string;
begin
  Result := self.CreateFileLinkObject(aFileID, aDescription, aExt).AsHtml;

end;

class function TCloudFactory.GenerateImageLink(aImageID: Int64;
  aTitle, aExt, aAltText, aMaxWidth, aMaxHeight: string): string;
begin
  Result := CreateImageLinkObject(aImageID, aTitle, aExt, aAltText, aMaxWidth, aMaxHeight).AsHtml;
end;

class function TCloudFactory.GenerateImageResourceLink(aImage, aTitle, aAltText, aMaxWidth,
  aMaxHeight: string): string;
begin
  Result := GenerateImageResourceObject(aImage, aTitle, aAltText, aMaxWidth, aMaxHeight).AsHtml;
end;

class function TCloudFactory.GenerateImageResourceObject(aImage, aTitle, aAltText, aMaxWidth,
  aMaxHeight: string): IJanuaHtmlObject;
begin
  Result := TJanuaHtmlObject.Create(JanuaHtmlHelper, 'img', False);
  Result.NewLine := False;
  if aMaxWidth <> '' then
    Result.AddStyle(THtmlStyle.Width, aMaxWidth);
  if aMaxHeight <> '' then
    Result.AddStyle(THtmlStyle.Height, aMaxHeight);
  Result.AddParam('alt', aAltText);
  Result.Text := aTitle;
  Result.AddParam('src', self.GetImageResourceUrl(aImage));
end;

class function TCloudFactory.GetFileUrl(aFileID: Int64; aExt: string): string;
begin
  Result := HtmlServerUrl + IfThen(aFileID > 0, '/?page=attach&file=' + aFileID.ToString + aExt.ToLower, '');
end;

class function TCloudFactory.GetImageResourceUrl(aImage: string): string;
begin
  Result := HtmlServerUrl + TNetEncoding.Url.EncodeQuery('/?page=resources&file=' + aImage.ToLower);
end;

class function TCloudFactory.GetImageUrl(aImageID: Int64; aExt: string): string;
begin
  Result := HtmlServerUrl + IfThen(aImageID > 0, '?page=image&file=' + aImageID.ToString + '.jpg', '');
end;

{ TJanuaCustomMessageBuilder }

constructor TJanuaCustomMessageBuilder.Create;
begin
  FMsgText := TStringList.Create;
end;

destructor TJanuaCustomMessageBuilder.Destroy;
begin
  try
    if Assigned(FMsgText) then
      FMsgText.Free;
  finally
    inherited;
  end;
end;

function TJanuaCustomMessageBuilder.GetAfterMessageSent: TSendMessageEvent;
begin
  Result := FAfterMessageSent
end;

function TJanuaCustomMessageBuilder.GetDataset: TDataset;
begin
  Result := FDataset;
end;

function TJanuaCustomMessageBuilder.GetJanuaRecord: IJanuaRecord;
begin
  Result := FJanuaRecord
end;

function TJanuaCustomMessageBuilder.GetJanuaRecordSet: IJanuaRecordSet;
begin
  Result := FJanuaRecordSet;
end;

function TJanuaCustomMessageBuilder.GetMsgText: TStrings;
begin
  // Specifiche 2017-0001, 2017-0005 Mail parts quando assegnato passa il suo valore a FMsgText.
  // nota: MsgText sostituisce il valore del campo FMsgText con il risultato della funzione getMsgText descritta sopra
  Result := FMsgText;
end;

function TJanuaCustomMessageBuilder.GetSent: Boolean;
begin
  Result := FSent
end;

procedure TJanuaCustomMessageBuilder.NilDatasets;
begin
  FDataset := nil;
  FJanuaRecord := nil;
  FJanuaRecordSet := nil;
end;

procedure TJanuaCustomMessageBuilder.SetAfterMessageSent(const Value: TSendMessageEvent);
begin
  FAfterMessageSent := Value
end;

procedure TJanuaCustomMessageBuilder.SetDataset(const Value: TDataset);
begin
  FDataset := Value;
end;

procedure TJanuaCustomMessageBuilder.SetJanuaRecord(const Value: IJanuaRecord);
begin
  FJanuaRecord := Value;
end;

procedure TJanuaCustomMessageBuilder.SetJanuaRecordSet(const Value: IJanuaRecordSet);
begin
  FJanuaRecordSet := Value;
end;

function TJanuaCustomMessageBuilder.GetLogProc: TMessageLogProc;
begin
  Result := FLogProc
end;

procedure TJanuaCustomMessageBuilder.SetLogProc(const Value: TMessageLogProc);
begin
  FLogProc := Value;
end;

procedure TJanuaCustomMessageBuilder.SetsText(const Value: string);
begin
  if Assigned(FMsgText) then
    FMsgText.Text := Value;
end;

{ TJanuaLandingMsgBuilder }

procedure TJanuaLandingMsgBuilder.CheckAll;
begin
  inherited;

end;

constructor TJanuaLandingMsgBuilder.Create;
begin
  inherited;
  FMessageConf := TLandingMessageConf.Create;
end;

destructor TJanuaLandingMsgBuilder.Destroy;
begin
  try
    FMessageConf.Free;
  finally
    inherited;
  end;
end;

function TJanuaLandingMsgBuilder.GenerateLandingMessage: TLandingMessage;
begin
  if Assigned(FLogProc) then
    FLogProc('GenerateLandingMessage', '{"level" : "INFO", "message" : "generate landing message"}', self);
  try
    if Assigned(Dataset) then
      FLandingMessage := FMessageConf.GenerateLandingMessage(Dataset, FLogProc)
    else if Assigned(JanuaRecord) then
      FLandingMessage := FMessageConf.GenerateLandingMessage(JanuaRecord, FLogProc)
    else if Assigned(JanuaRecordSet) then
      FLandingMessage := FMessageConf.GenerateLandingMessage(JanuaRecordSet.CurrentRecord, FLogProc)
    else
      FLandingMessage := FMessageConf.GenerateLandingMessageNoData(FLogProc);

    Result := FLandingMessage;
    if Assigned(FLogProc) then
    begin
      if FLandingMessage.Text = '' then
        FLogProc('GenerateLandingMessage', '{"level" : "ERROR", "message" : "landing message empty"}', self)
      else
        FLogProc('GenerateLandingMessage', '{"level" : "INFO", "message" : "' +
          StringToJsonString(FLandingMessage.Text) + '"}', self);
    end;
  except
    on e: exception do
    begin
      if Assigned(FLogProc) then
        FLogProc('GenerateLandingMessage', '{"level" : "ERROR", "message" : "' + StringToJsonString(e.message)
          + '"}', self);
      raise
    end;
  end;
end;

function TJanuaLandingMsgBuilder.GetTitle: string;
begin
  Result := FLandingMessage.Title;
end;

function TJanuaLandingMsgBuilder.GenerateLandingMessage(const aDataset: TDataset): TLandingMessage;
begin
  Dataset := aDataset;
  Result := GenerateLandingMessage
end;

function TJanuaLandingMsgBuilder.GenerateLandingMessage(const aRecord: IJanuaRecord): TLandingMessage;
begin
  JanuaRecord := aRecord;
  Result := GenerateLandingMessage
end;

function TJanuaLandingMsgBuilder.GetMessageConf: TLandingMessageConf;
begin
  Result := FMessageConf
end;

function TJanuaLandingMsgBuilder.GetMsgText: TStrings;
begin
  // Specifiche 2017-0001, 2017-0005 Mail parts quando assegnato passa il suo valore a FMsgText.
  // nota: MsgText sostituisce il valore del campo FMsgText con il risultato della funzione getMsgText descritta sopra
  if Assigned(FMsgText) then
  begin
    if (FLandingMessage.Text <> '') then
      FMsgText.Text := FLandingMessage.Text;
  end;
  Result := FMsgText;
end;

function TJanuaLandingMsgBuilder.GetSettingKey: string;
begin
  Result := FMessageConf.Key
end;

function TJanuaLandingMsgBuilder.GetSettingLocation: TJanuaSettingLocation;
begin
  Result := FMessageConf.SettingLocation;
end;

function TJanuaLandingMsgBuilder.GetsText: string;
begin
  Result := FLandingMessage.Text;
end;

function TJanuaLandingMsgBuilder.GetUrl: string;
begin
  Result := FLandingMessage.Url;
end;

procedure TJanuaLandingMsgBuilder.LoadSettings;
begin
  try
{$IFDEF DEBUG} Guard.CheckNotNull(FMessageConf, 'FLogProc'); {$ENDIF}
    if Assigned(FLogProc) then
      FLogProc('LoadSettings', '{"level" : "INFO", "message" : "loading message conf", "key" : "' +
        FMessageConf.Key + '" }', self);
    FMessageConf.LoadConfig;
    if Assigned(FLogProc) and (FMessageConf.Body = '') then
      FLogProc('LoadSettings', '{"level" : "ERROR", "message" : "message conf empty", "key" : "' +
        FMessageConf.Key + '"}', self);
  except
    on e: exception do
    begin
      if Assigned(FLogProc) then
        FLogProc('LoadSettings', '{"level" : "ERROR", "message" : ' + tjs(e.message) + ', "key" : "' +
          FMessageConf.Key + '"}', self);
      raise
    end;
  end;
end;

procedure TJanuaLandingMsgBuilder.SetLandingMessage(const Value: TLandingMessage);
begin
  FLandingMessage := Value;
end;

procedure TJanuaLandingMsgBuilder.SetMessageConf(const Value: TLandingMessageConf);
begin
  FMessageConf := Value;
end;

procedure TJanuaLandingMsgBuilder.SetMsgText(const Value: TStrings);
begin
  if Assigned(FMsgText) then
  begin
    if Assigned(Value) then
      FMsgText.Assign(Value)
    else
      FMsgText.Clear;
    FLandingMessage.SetText(FMsgText.Text);
  end
  else
  begin
    if Assigned(Value) then
      FLandingMessage.SetText(Value.Text)
    else
      FLandingMessage.SetText('');
  end;
end;

procedure TJanuaLandingMsgBuilder.SetSettingKey(const Value: string);
begin
  FMessageConf.Key := Value;
end;

procedure TJanuaLandingMsgBuilder.SetSettingLocation(const Value: TJanuaSettingLocation);
begin
  FMessageConf.SettingLocation := Value
end;

procedure TJanuaLandingMsgBuilder.SetsText(const Value: string);
begin
  inherited;
  FMsgText.Text := Value;
  FLandingMessage.SetText(FMsgText.Text);
end;

procedure TJanuaLandingMsgBuilder.SetTitle(const Value: string);
begin
  FLandingMessage.Title := Value;
end;

procedure TJanuaLandingMsgBuilder.SetUrl(const Value: string);
begin
  FLandingMessage.Url := Value;
end;

initialization

// TJanuaLandingMsgBuilder =  IJanuaLandingMessageBuilder)
try
  TJanuaApplicationFactory.RegisterClass(IJanuaLandingMessageBuilder, TJanuaLandingMsgBuilder);
except
  on e: exception do
    raise exception.Create('Janua Cloud Mail Initialization: ' + e.message);
end;

end.
