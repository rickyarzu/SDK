unit Janua.Core.DB.Types;

interface

uses
  System.Json, System.JSONConsts, System.Classes, System.SysUtils, System.Generics.Collections,
  // DB Libraries
  Data.DB, FireDAC.Comp.Client,
  // Json Xml Libraries
  Janua.Http.Types, Janua.Core.Types;

type
  TPostgresFieldType = (jptBigInteger, jptBigSerial, jptSmallInt, jptInteger);

const
  PostgresFieldTypes: array [TPostgresFieldType] of string = ('bigint', 'bigserial', 'smallint', 'integer');
  PostresFieldTypeDataset: array [TPostgresFieldType] of TFieldType = (ftLargeint, ftLargeint, ftSmallint,
    ftInteger);

type
  TRestFormat = (rfDefault, rfXml, rfJson, rfBinary, rfCSV, rfJsonMeta, rfJanuaRecord, rfJanuaMeta,
    rfJanuaRecordset, rfFDXml, rfUniXMl, rfFDJson, rfFDBin, rfUniBinary);

const
  CRestFormat: array [TRestFormat] of string = ('', 'xml', 'json', 'bin', 'csv', 'jsonm', 'jrc', 'jrm', 'jrs',
    'fd_xml', 'uni_xml', 'fd_json', 'fd_bin', 'uni_bin');
  CRestFormatMIME: array [TRestFormat] of string = ('', TJanuaMimeString.TEXT_XML,
    TJanuaMimeString.APPLICATION_JSON, TJanuaMimeString.TEXT_PLAIN, TJanuaMimeString.TEXT_CSV,
    TJanuaMimeString.APPLICATION_JSON, TJanuaMimeString.APPLICATION_JSON, TJanuaMimeString.APPLICATION_JSON,
    TJanuaMimeString.APPLICATION_JSON, TJanuaMimeString.TEXT_XML, TJanuaMimeString.TEXT_XML,
    TJanuaMimeString.APPLICATION_JSON, TJanuaMimeString.TEXT_PLAIN, TJanuaMimeString.TEXT_PLAIN);
  CRestMimeType: array [TRestFormat] of TJanuaMimeType = (jmtUnknown, jmtTextXml, jmtApplicationJson,
    jmtTextPlain, jmtTextCsv, jmtApplicationJson, jmtApplicationJson, jmtApplicationJson, jmtApplicationJson,
    jmtTextXml, jmtTextXml, jmtApplicationJson, jmtTextPlain, jmtTextPlain);

type
  TJanuaRestDBContext = class
  private
    class var FormatDictionary: TDictionary<string, TRestFormat>;
    class function GetStrMimeFormat(const aFormat: string): string; static;
  public
    class constructor Create;
    class destructor Destroy;
    class function GetFormat(const aFormat: string): TRestFormat; static;
    class function GetStringFormat(const aFormat: TRestFormat): string; static;
    class function GetMimeFormat(const aFormat: TRestFormat): string; static;
  public
    class property Format[const aFormat: string]: TRestFormat read GetFormat; default;
    class property StringFormat[const aFormat: TRestFormat]: string read GetStringFormat;
    class property MimeFormat[const aFormat: TRestFormat]: string read GetMimeFormat;
    class property StrMimeFormat[const aFormat: string]: string read GetStrMimeFormat;
  end;

  TJanuaSearchParam = record
  private
    FParamType: TJanuaFieldType;
    FName: string;
    FTitle: string;
    function GetParamType: TJanuaFieldType;
    function GetName: string;
    function GetTitle: string;
    procedure SetName(const Value: string);
    procedure SetParamType(const Value: TJanuaFieldType);
    procedure SetTitle(const Value: string);
  public
    property Name: string read GetName write SetName;
    property Title: string read GetTitle write SetTitle;
    property ParamType: TJanuaFieldType read GetParamType write SetParamType;
  end;

  TJanuaDBDatasetError = record
    DatasetType: TJanuaDatasetType;
    Name: string;
    Parent: string;
    DateTime: TDAteTime;
    Error: string;
  public
    constructor Create(aType: TJanuaDatasetType);
    function AsJsonObject: TJsonObject;
    function AsJson: String;
    function AsJsonPretty: String;
    procedure CreateDataset(aDataset: TFdMemTable);
    procedure SaveToDataset(aDataset: TDataset);
    procedure AppendToDataset(aDataset: TDataset);
    procedure Clear;
    function LogText: string;
  end;

type
  TJanuaDBDatasetErrors = record
    Framework: string;
    Items: array of TJanuaDBDatasetError;
    SelectedItem: Integer;
  public
    function Count: Integer;
    procedure Clear;
    procedure Add(aItem: TJanuaDBDatasetError);
    function AsJsonObject: TJsonObject;
    function AsJson: String;
    function AsJsonPretty: String;
  end;

  // TJanuaDBDatasetError
  // Declare an event type. It looks allot like a normal method declaration except
  // it suffixed by "of object". That "of object" tells Delphi the variable of this
  // type needs to be assigned a method of an object, not just any global function
  // with the correct signature.
  TJanuaDBDatasetErrorEvent = procedure(const Sender: TObject; const aLog: TJanuaDBDatasetError) of object;

implementation

uses Janua.Core.Functions, Janua.Core.Json;

{ TJanuaDBDatasetErrors }

procedure TJanuaDBDatasetErrors.Add(aItem: TJanuaDBDatasetError);
begin
  self.SelectedItem := self.Count;
  SetLength(self.Items, succ(self.SelectedItem));
  self.Items[self.SelectedItem] := aItem;
end;

function TJanuaDBDatasetErrors.AsJson: String;
begin
  Result := ToJsonFree(AsJsonObject)
end;

function TJanuaDBDatasetErrors.AsJsonObject: TJsonObject;
var
  aError: TJanuaDBDatasetError;
  aArray: TJsonArray;
begin
  Result := TJsonObject.Create;
  {
    Janua.Core.Json.JsonPair(Result, 'SecondLineChar', SecondLineChar);
    Janua.Core.Json.JsonPair(Result, 'TemplateHeader', TemplateHeader);
    Janua.Core.Json.JsonPair(Result, 'TemplateRow', TemplateRow);
  }
  Janua.Core.Json.JsonPair(Result, 'framework', Framework);
  Janua.Core.Json.JsonPair(Result, 'count', Count);
  aArray := TJsonArray.Create;
  for aError in self.Items do
    aArray.AddElement(aError.AsJsonObject);
  Janua.Core.Json.JsonPair(Result, 'items', aArray);

end;

function TJanuaDBDatasetErrors.AsJsonPretty: String;
begin
  Result := self.AsJson
end;

procedure TJanuaDBDatasetErrors.Clear;
begin
  self.SelectedItem := -1;
  SetLength(self.Items, 0);
end;

function TJanuaDBDatasetErrors.Count: Integer;
begin
  Result := Length(self.Items);
end;

{ TJanuaDBDatasetError }

procedure TJanuaDBDatasetError.AppendToDataset(aDataset: TDataset);
begin
  if Assigned(aDataset) then
  begin
    if (aDataset is TFdMemTable) and not aDataset.Active then
      self.CreateDataset(aDataset as TFdMemTable);
    aDataset.Append;
    self.SaveToDataset(aDataset);
  end;
end;

function TJanuaDBDatasetError.AsJson: String;
begin
  Result := ToJsonFree(AsJsonObject);
end;

function TJanuaDBDatasetError.AsJsonObject: TJsonObject;
begin
  Result := TJsonObject.Create;
  Janua.Core.Json.JsonPair(Result, 'type', JanuaDatasetType[DatasetType]);
  Janua.Core.Json.JsonPair(Result, 'name', self.Name);
  Janua.Core.Json.JsonPair(Result, 'parent', self.Parent);
  Janua.Core.Json.JsonPair(Result, 'datetime', self.DateTime);
  Janua.Core.Json.JsonPair(Result, 'error', self.Error);
end;

function TJanuaDBDatasetError.AsJsonPretty: String;
begin
  Result := Janua.Core.Json.JsonPretty(self.AsJson)
end;

procedure TJanuaDBDatasetError.Clear;
begin
  Name := '';
  Parent := '';
  DateTime := 0.0;
  Error := '';
end;

constructor TJanuaDBDatasetError.Create(aType: TJanuaDatasetType);
begin
  self.Name := '';
  self.Parent := '';
  self.DateTime := 0.0;

end;

procedure TJanuaDBDatasetError.CreateDataset(aDataset: TFdMemTable);
begin
  aDataset.Close;
  aDataset.FieldDefs.Clear;
  aDataset.FieldDefs.Add('DateTime', TFieldType.ftDateTime, 0, true);
  aDataset.FieldDefs.Add('Parent', TFieldType.ftWideString, 1024, true);
  aDataset.FieldDefs.Add('Name', TFieldType.ftWideString, 1024, False);
  aDataset.FieldDefs.Add('Type', TFieldType.ftWideString, 20, False);
  aDataset.FieldDefs.Add('Error', TFieldType.ftWideString, 8192, true);
  aDataset.Open;
end;

function TJanuaDBDatasetError.LogText: string;
begin

end;

procedure TJanuaDBDatasetError.SaveToDataset(aDataset: TDataset);
begin
  aDataset.Edit;
  Janua.Core.Functions.SetFieldValue(DateTime, aDataset, 'DateTime');
  Janua.Core.Functions.SetFieldValue(Parent, aDataset, 'Parent');
  Janua.Core.Functions.SetFieldValue(Name, aDataset, 'Name');
  Janua.Core.Functions.SetFieldValue(JanuaDatasetType[self.DatasetType], aDataset, 'Type');
  Janua.Core.Functions.SetFieldValue(Error, aDataset, 'Error');
  aDataset.Post;
end;

{ TJanuaSearchParam }

function TJanuaSearchParam.GetName: string;
begin
  Result := FName
end;

function TJanuaSearchParam.GetParamType: TJanuaFieldType;
begin
  Result := FParamType
end;

function TJanuaSearchParam.GetTitle: string;
begin
  Result := FTitle
end;

procedure TJanuaSearchParam.SetName(const Value: string);
begin
  FName := Value
end;

procedure TJanuaSearchParam.SetParamType(const Value: TJanuaFieldType);
begin
  FParamType := Value
end;

procedure TJanuaSearchParam.SetTitle(const Value: string);
begin
  FTitle := Value
end;

{ TJanuaRestDBContext }

class constructor TJanuaRestDBContext.Create;
begin
  FormatDictionary := TDictionary<string, TRestFormat>.Create;
  // rfXml, rfJson, rfBinary, rfCSV, rfJsonMeta, rfJanuaRecord, rfJanuaMeta
  for var rf := rfXml to rfJanuaRecordset do
    FormatDictionary.Add(CRestFormat[rf], rf);
end;

class destructor TJanuaRestDBContext.Destroy;
begin
  FormatDictionary.Free;
end;

class function TJanuaRestDBContext.GetFormat(const aFormat: string): TRestFormat;
begin
  if FormatDictionary.ContainsKey(aFormat.ToLower) then
    FormatDictionary.TryGetValue(aFormat.ToLower, Result)
  else
    Result := rfDefault;
end;

class function TJanuaRestDBContext.GetMimeFormat(const aFormat: TRestFormat): string;
begin
  Result := CRestFormatMIME[aFormat]
end;

class function TJanuaRestDBContext.GetStringFormat(const aFormat: TRestFormat): string;
begin
  Result := CRestFormat[aFormat]
end;

class function TJanuaRestDBContext.GetStrMimeFormat(const aFormat: string): string;
begin
  Result := CRestFormatMIME[GetFormat(aFormat)]
end;

end.
