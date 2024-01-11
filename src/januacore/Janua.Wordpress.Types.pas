unit Janua.Wordpress.Types;

interface

uses System.Json, System.SysUtils;

Type
  TSearchArticlesParams = record

  end;

Type
  TSearchCategoriesParams = record

  end;

type
  TWPStatus = (wpPublish, wpPrivate, wpDraft, wpFuture, wpPending);

  // publish, future, draft, pending, private

const
  CWPStatus: array [TWPStatus] of string = ('publish', 'private', 'draft', 'future', 'pending');

Type
  TWPJsonWebToken = record
  strict private
    FBuilder: TStringBuilder;
    FUserEmail: string;
    Ftoken: string;
    FUserNiceName: string;
    FUserDisplayName: string;
    function GetStringBuilder: TStringBuilder;
    procedure SetStringBuilder(const Value: TStringBuilder);
  private
    FConnected: Boolean;
    procedure Settoken(const Value: string);
    procedure SetUserDisplayName(const Value: string);
    procedure SetUserEmail(const Value: string);
    procedure SetUserNiceName(const Value: string);
    procedure Log(const aDet, aValue: string); overload;
    procedure SetConnected(const Value: Boolean);
    property StringBuilder: TStringBuilder read GetStringBuilder write SetStringBuilder;
  public
    property Token: string read Ftoken write Settoken;
    property UserEmail: string read FUserEmail write SetUserEmail;
    property UserNiceName: string read FUserNiceName write SetUserNiceName;
    property UserDisplayName: string read FUserDisplayName write SetUserDisplayName;
    property Connected: Boolean read FConnected write SetConnected;
  public
    Constructor Create(aObject: TJsonObject); overload;
    Constructor Create(aJson: string); overload;
    Constructor Create(aConnected: Boolean); overload;
    function AsString: string;
  end;

type
  TWPRecord = record
  strict private
    FBuilder: TStringBuilder;
    FOTitle: TJsonObject;
  private
    FTest: string;
    FAuthor: Integer;
    FDate: TDateTime;
    FSlug: string;
    FTitle: string;
    FID: Int64;
    FFeatureMedia: Int64;
    FSticky: Boolean;
    FArticleType: string;
    FStatus: string;
    FContent: string;
    FGUID: string;
    FLink: string;
    FMainCategory: Integer;
    procedure SetArticleType(const Value: string);
    procedure SetAuthor(const Value: Integer);
    procedure SetDate(const Value: TDateTime);
    procedure SetFeatureMedia(const Value: Int64);
    procedure SetID(const Value: Int64);
    procedure SetOTitle(const Value: TJsonObject);
    procedure SetSlug(const Value: string);
    procedure SetStatus(const Value: string);
    procedure SetSticky(const Value: Boolean);
    procedure SetTest(const Value: string);
    procedure SetText(const Value: string);
    procedure SetTitle(const Value: string);
    procedure Log(const aDet, aValue: string); overload;
    procedure Log(const aDet: string; aValue: Integer); overload;
    procedure Log(const aDet: string; aValue: TDateTime); overload;
    procedure Log(const aDet: string; aValue: Int64); overload;
    procedure Log(const aDet: string; aValue: TJsonObject); overload;
    function GetStringBuilder: TStringBuilder;
    procedure SetStringBuilder(const Value: TStringBuilder);
    procedure SetGUID(const Value: string);
    procedure SetLink(const Value: string);
    procedure SetMainCategory(const Value: Integer);
  public
    property Content: string read FContent write SetText;
    property Status: string read FStatus write SetStatus;
    property ArticleType: string read FArticleType write SetArticleType;
    property Slug: string read FSlug write SetSlug;
    property Date: TDateTime read FDate write SetDate;
    property Author: Integer read FAuthor write SetAuthor;
    property FeatureMedia: Int64 read FFeatureMedia write SetFeatureMedia;
    property ID: Int64 read FID write SetID;
    property Title: string read FTitle write SetTitle;
    property Sticky: Boolean read FSticky write SetSticky;
    property Test: string read FTest write SetTest;
    property StringBuilder: TStringBuilder read GetStringBuilder write SetStringBuilder;
    property GUID: string read FGUID write SetGUID;
    property Link: string read FLink write SetLink;
    property MainCategory: Integer read FMainCategory write SetMainCategory;
  public
    Constructor Create(aObject: TJsonObject); overload;
    Constructor Create(aJson: string); overload;
    procedure Clear;
    function AsString: string;
    function AsJsonObject: TJsonObject;
  end;

  TWPRecordsArray = TArray<TWPRecord>;

  TWPRecords = record
    Items: TWPRecordsArray;
  private
    FSelectedItem: Integer;
    function GetCount: Integer;
    procedure SetSelectedItem(const Value: Integer);
  public
    function Add(aItem: TWPRecord): Integer; overload;
    function Add(aObject: TJsonObject): Integer; overload;
    function Add(aJson: string): Integer; overload;
    property SelectedaItem: Integer read FSelectedItem write SetSelectedItem;
    property Count: Integer read GetCount;
  public
    Constructor Create(aObject: TJsonObject); overload;
    Constructor Create(aJson: string); overload;
    function AsString: string;
  end;

implementation

uses Janua.Core.Functions, System.DateUtils, Janua.Core.Json, System.StrUtils;

{ TWPRecord }

constructor TWPRecord.Create(aObject: TJsonObject);
var
  tmp: string;
  LTmpJsonObject: TJsonObject;
begin
  Janua.Core.Json.JsonValue(aObject, 'id', FID);
  Janua.Core.Json.JsonValue(aObject, 'link', FLink);
  Janua.Core.Json.JsonValue(aObject, 'date', tmp);
  if tmp <> '' then
    FDate := System.DateUtils.ISO8601ToDate(tmp)
  else
    FDate := 0.0;

  //
  Janua.Core.Json.JsonValue(aObject, 'guid', LTmpJsonObject);
  Janua.Core.Json.JsonValue(LTmpJsonObject, 'rendered', FGUID);
  LTmpJsonObject.Free;

  Janua.Core.Json.JsonValue(aObject, 'type', FArticleType);
  Janua.Core.Json.JsonValue(aObject, 'status', FStatus);
  Janua.Core.Json.JsonValue(aObject, 'slug', FSlug);

  // Title
  Janua.Core.Json.JsonValue(aObject, 'title', LTmpJsonObject);
  Janua.Core.Json.JsonValue(LTmpJsonObject, 'rendered', FTitle);
  LTmpJsonObject.Free;

  Janua.Core.Json.JsonValue(aObject, 'featured_media', FFeatureMedia);
  // Content
  Janua.Core.Json.JsonValue(aObject, 'content', LTmpJsonObject);
  Janua.Core.Json.JsonValue(LTmpJsonObject, 'rendered', FContent);
  LTmpJsonObject.Free;

end;

procedure TWPRecord.Log(const aDet, aValue: string);
begin
  StringBuilder.AppendLine(aDet + IfThen(aDet <> '', ' = ', '') + aValue);
end;

procedure TWPRecord.Log(const aDet: string; aValue: Integer);
begin
  StringBuilder.AppendLine(aDet + ' = ' + aValue.ToString);
end;

procedure TWPRecord.Log(const aDet: string; aValue: TDateTime);
begin
  StringBuilder.AppendLine(aDet + ' = ' + FormatDateTime('dd/mm/yyyy hh:nn:ss', aValue));
end;

procedure TWPRecord.Log(const aDet: string; aValue: Int64);
begin
  StringBuilder.AppendLine(aDet + ' = ' + aValue.ToString);
end;

procedure TWPRecord.Log(const aDet: string; aValue: TJsonObject);
begin
  if Assigned(aValue) then
    StringBuilder.AppendLine(aDet + ' = ' + sLineBreak + Janua.Core.Json.JsonPretty(aValue.ToString));
end;

function TWPRecord.AsJsonObject: TJsonObject;
begin
  Result := TJsonObject.Create;
  Janua.Core.Json.JsonPair(Result, 'title', self.FTitle);
  Janua.Core.Json.JsonPair(Result, 'content', self.FContent);
  Janua.Core.Json.JsonPair(Result, 'status', self.FStatus);
  Janua.Core.Json.JsonPair(Result, 'categories', self.FMainCategory);
  // 'featured_media'
  Janua.Core.Json.JsonPair(Result, 'featured_media', self.FFeatureMedia);
end;

function TWPRecord.AsString: string;
begin
  Log('id', ID);
  Log('DecodedDateTime', self.Date);
  Log('Type', ArticleType);
  Log('status', Status);
  Log('slug', Slug);
  Log('Title', Title);
  Log('FeatureMedia', FeatureMedia);
  Log('GUID', FGUID);
  Log('link', FLink);
  Log('', '');
  Log('Content', '');
  Log('', self.FContent);
  Result := self.StringBuilder.ToString;
  FreeAndNil(FBuilder);
end;

procedure TWPRecord.Clear;
begin
  self.FID := 0;
  self.FDate := 0;
  self.FArticleType := '';
  self.FStatus := '';
  self.FSlug := '';
  self.FeatureMedia := 0;
  self.FGUID := '';
  self.FContent := '';
  self.FLink := '';
end;

constructor TWPRecord.Create(aJson: string);
begin
  self.Create(Janua.Core.Json.JsonParse(aJson));
end;

function TWPRecord.GetStringBuilder: TStringBuilder;
begin
  if not Assigned(self.FBuilder) then
    self.FBuilder := TStringBuilder.Create;
  Result := self.FBuilder
end;

procedure TWPRecord.SetArticleType(const Value: string);
begin
  FArticleType := Value;
end;

procedure TWPRecord.SetAuthor(const Value: Integer);
begin
  FAuthor := Value;
end;

procedure TWPRecord.SetDate(const Value: TDateTime);
begin
  FDate := Value;
end;

procedure TWPRecord.SetFeatureMedia(const Value: Int64);
begin
  FFeatureMedia := Value;
end;

procedure TWPRecord.SetGUID(const Value: string);
begin
  FGUID := Value;
end;

procedure TWPRecord.SetID(const Value: Int64);
begin
  FID := Value;
end;

procedure TWPRecord.SetLink(const Value: string);
begin
  FLink := Value;
end;

procedure TWPRecord.SetMainCategory(const Value: Integer);
begin
  FMainCategory := Value;
end;

procedure TWPRecord.SetOTitle(const Value: TJsonObject);
begin
  FOTitle := Value;
end;

procedure TWPRecord.SetSlug(const Value: string);
begin
  FSlug := Value;
end;

procedure TWPRecord.SetStatus(const Value: string);
begin
  FStatus := Value;
end;

procedure TWPRecord.SetSticky(const Value: Boolean);
begin
  FSticky := Value;
end;

procedure TWPRecord.SetStringBuilder(const Value: TStringBuilder);
begin
  self.FBuilder := Value
end;

procedure TWPRecord.SetTest(const Value: string);
begin
  FTest := Value;
end;

procedure TWPRecord.SetText(const Value: string);
begin
  FContent := Value;
end;

procedure TWPRecord.SetTitle(const Value: string);
begin
  FTitle := Value;
end;

{ TWPRecords }

function TWPRecords.Add(aItem: TWPRecord): Integer;
begin
  Result := self.Count;
  SetLength(self.Items, Succ(Result));
  self.FSelectedItem := Result;
  self.Items[Result] := aItem;
  FSelectedItem := Result;
end;

function TWPRecords.Add(aJson: string): Integer;
begin
  Result := self.Add(TWPRecord.Create(aJson))
end;

function TWPRecords.AsString: string;
var
  LRecord: TWPRecord;
begin
  for LRecord in self.Items do
    Result := Result + LRecord.AsString + sLineBreak;
end;

constructor TWPRecords.Create(aObject: TJsonObject);
var
  LOCat: TJsonArray;
  aValue: TJsonValue;
begin
  LOCat := nil;
  SetLength(Items, 0);
  Janua.Core.Json.JsonValue(aObject, 'articles', LOCat);
  if Assigned(LOCat) then
    for aValue in LOCat do
      self.Add(aValue as TJsonObject);
end;

constructor TWPRecords.Create(aJson: string);
begin
  aJson := '{"articles":' + aJson + '}';
  self.Create(Janua.Core.Json.JsonParse(aJson));
end;

function TWPRecords.Add(aObject: TJsonObject): Integer;
begin
  Result := self.Add(TWPRecord.Create(aObject))
end;

function TWPRecords.GetCount: Integer;
begin
  Result := Length(self.Items);
end;

procedure TWPRecords.SetSelectedItem(const Value: Integer);
begin
  FSelectedItem := Value;
end;

{ TWPJsonWebToken }

function TWPJsonWebToken.AsString: string;
begin
  Log('token', Ftoken);
  Log('UserEmail', self.UserEmail);
  Log('UserNiceName', FUserNiceName);
  Log('UserDisplayName', FUserDisplayName);
  Result := self.StringBuilder.ToString;
  FreeAndNil(FBuilder);
end;

constructor TWPJsonWebToken.Create(aObject: TJsonObject);
begin
  FBuilder := nil;
  Janua.Core.Json.JsonValue(aObject, 'token', self.Ftoken);
  Janua.Core.Json.JsonValue(aObject, 'user_email', self.FUserEmail);
  Janua.Core.Json.JsonValue(aObject, 'user_nicename', self.FUserNiceName);
  Janua.Core.Json.JsonValue(aObject, 'user_display_name', self.FUserDisplayName);
end;

constructor TWPJsonWebToken.Create(aJson: string);
var
  LObject: TJsonObject;
begin
  LObject := Janua.Core.Json.JsonParse(aJson);
  self.Create(LObject);
  LObject.Free;
end;

constructor TWPJsonWebToken.Create(aConnected: Boolean);
begin
  self.FConnected := False;
end;

function TWPJsonWebToken.GetStringBuilder: TStringBuilder;
begin
  if not Assigned(self.FBuilder) then
    self.FBuilder := TStringBuilder.Create;
  Result := self.FBuilder
end;

procedure TWPJsonWebToken.Log(const aDet, aValue: string);
begin
  StringBuilder.AppendLine(aDet + ' = ' + aValue);
end;

procedure TWPJsonWebToken.SetConnected(const Value: Boolean);
begin
  FConnected := Value;
end;

procedure TWPJsonWebToken.SetStringBuilder(const Value: TStringBuilder);
begin

end;

procedure TWPJsonWebToken.Settoken(const Value: string);
begin
  Ftoken := Value;
end;

procedure TWPJsonWebToken.SetUserDisplayName(const Value: string);
begin
  FUserDisplayName := Value;
end;

procedure TWPJsonWebToken.SetUserEmail(const Value: string);
begin
  FUserEmail := Value;
end;

procedure TWPJsonWebToken.SetUserNiceName(const Value: string);
begin
  FUserNiceName := Value;
end;

end.
