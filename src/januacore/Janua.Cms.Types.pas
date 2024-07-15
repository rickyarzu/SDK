unit Janua.Cms.Types;

interface

uses
  System.Classes, IdHTTP, System.JSON;

{
  id bigint NOT NULL,
  newsdate date NOT NULL,
  image bytea,
  content character varying(2048) COLLATE pg_catalog."default",
  title character varying(256) COLLATE pg_catalog."default" NOT NULL,
  webpage character varying(1024) COLLATE pg_catalog."default",
}
type
  TJanuaNewsRecord = record
    id: Int64;
    newsdate: TDateTime;
    Image: string;
    content: string;
    title: string;
    webpage: string;
  public
    function AsJsonObject: TJsonObject;
    procedure LoadFromJsonObject(aObject: TJsonObject);
    procedure LoadFromJson(aJson: string);
  end;

  TJanuaNewsArray = TArray<TJanuaNewsRecord>;

Type
  TJanuaNews = record
    Items: TJanuaNewsArray;
    SelectedItem: TJanuaNewsRecord;
  public
    procedure Clear;
    function count: integer;
    function AsJsonObject: TJsonObject;
    function AsJsonPretty: string;
    function Asjson: string;
    procedure LoadFromJsonObject(aJson: TJsonObject);
    procedure LoadFromJson(aJson: string);
    procedure Add(const aRecord: TJanuaNewsRecord); overload;
    // procedure Add(aAnagraph: TJanuaAnagraphRecord); overload;
    procedure Add(aObject: TJsonObject); overload;
  end;

type
  TSpecification = record
    id: integer;
    index: smallint;
    indent: string;
    title: unicodestring;
  public
    function ToString(full: Boolean = true): String;
  end;

type
  TSubArgument = record
    id: integer;
    index: smallint;
    indent: string;
    title: unicodestring;
    Specifications: array of TSpecification;
  public
    function ToString(full: Boolean = true): String;
    function GetSpecificationbyID(aID: integer): TSpecification;
    function GetSpecificationByName(aName: String): TSpecification;
    function ListSpecifications: TStringList;
    function GetSpecificationByIndex(aIndex: integer): TSpecification;
  end;

type
  TArgument = record
    id: integer;
    index: smallint;
    indent: string;
    title: unicodestring;
    SelectedSubArgumnet: TSubArgument;
    SubArguments: array of TSubArgument;
  public
    function ToString(full: Boolean = true): String;
    function GetSubArgumentbyID(aID: integer): TSubArgument;
    function GetSubArgumentByName(aName: String): TSubArgument;
    function ListSubArguments: TStringList;
    function GetSubArgumentByIndex(aIndex: integer): TSubArgument;
  end;

type
  TMainArgument = record
    id: integer;
    index: smallint;
    indent: string;
    title: unicodestring;
    Arguments: array of TArgument;
  public
    function ToString(full: Boolean = true): String;
    function GetArgumentbyID(aID: integer): TArgument;
    function GetArgumentByName(aName: String): TArgument;
    function ListArguments: TStringList;
    function GetArgumentByIndex(aIndex: integer): TArgument;
  end;

type
  TArticleRecord = record
{$IFDEF MSWINDOWS} title, Text, TextAbstract: unicodestring;
{$ELSE} title, Text, TextAbstract: string;
{$ENDIF}
    Likes: integer;
    CommentCount: integer;
    IdHTTP1: TIdHTTP;
    YuLike: Boolean;
    id: Int64;
    index: integer;
    isOK: Boolean;
    OwnerID: Int64;
    ArticleDate: TDateTime;
    Link: string;
    ImageUrl: string;
    MainArgument: TMainArgument;
    Argument: TArgument;
    SubArgument: TSubArgument;
    Specification: TSpecification;
    Date: TDateTime;
  public
    procedure Reset;
    function ToString: string;
    function AsJsonPretty: string;
    function AsJsonObject: TJsonObject;
  end;

type
  TPage = record
    title: unicodestring;
    id: Int64;
    ParentID: Int64;
    Text: unicodestring;
  end;

type
  TCms = record
    Arguments: array of TMainArgument;
    SelectedArticle: TArticleRecord;
    Articles: array of TArticleRecord;
  end;

type
  TCmsArguments = record
    Arguments: array of TMainArgument;
  end;

implementation

uses
  System.SysUtils, Janua.Core.Functions, Janua.Core.JSON;

{ TMainArgument }

function TMainArgument.GetArgumentbyID(aID: integer): TArgument;
var
  aRecord: TArgument;
begin
  for aRecord in self.Arguments do
    if aRecord.id = aID then
    begin
      Result := aRecord;
      Exit;
    end;
end;

function TMainArgument.GetArgumentByIndex(aIndex: integer): TArgument;
var
  aRecord: TArgument;
begin
  for aRecord in self.Arguments do
    if aRecord.index = aIndex then
    begin
      Result := aRecord;
      Exit;
    end;
end;

function TMainArgument.GetArgumentByName(aName: String): TArgument;
var
  aRecord: TArgument;
begin
  for aRecord in self.Arguments do
    if UpperCase(aRecord.title) = UpperCase(aName) then
    begin
      Result := aRecord;
      Exit;
    end;
end;

function TMainArgument.ListArguments: TStringList;
var
  i: integer;
  aRecord: TArgument;

begin
  Result := TStringList.Create;

  for aRecord in self.Arguments do
    Result.Add(aRecord.title);
  Result.Sort;
  for i := 0 to SizeOf(Arguments) - 1 do
    Arguments[i].index := Result.IndexOf(Arguments[i].title);

end;

function TMainArgument.ToString(full: Boolean): String;
var
  i: integer;
begin
  Result := self.indent + 'id: ' + IntToStr(self.id) + sLineBreak + self.indent + 'Title: ' + self.title + sLineBreak +
    self.indent + 'index: ' + self.index.ToString + sLineBreak;

  if full then
    for i := 0 to Length(self.Arguments) - 1 do
    begin
      self.Arguments[i].indent := self.indent + '   ';
      Result := Result + sLineBreak + self.Arguments[i].ToString;
    end;
end;

{ TArgument }

function TArgument.GetSubArgumentbyID(aID: integer): TSubArgument;
var
  aRecord: TSubArgument;
begin
  for aRecord in self.SubArguments do
    if aRecord.id = aID then
    begin
      Result := aRecord;
      Exit;
    end;
end;

function TArgument.GetSubArgumentByIndex(aIndex: integer): TSubArgument;
var
  aRecord: TSubArgument;
begin
  for aRecord in self.SubArguments do
    if aRecord.index = aIndex then
    begin
      Result := aRecord;
      Exit;
    end;
end;

function TArgument.GetSubArgumentByName(aName: String): TSubArgument;
var
  aRecord: TSubArgument;
begin
  for aRecord in self.SubArguments do
    if aRecord.title = aName then
    begin
      Result := aRecord;
      Exit;
    end;
end;

function TArgument.ListSubArguments: TStringList;
var
  i: integer;
  aRecord: TSubArgument;
begin
  Result := TStringList.Create;
  for aRecord in self.SubArguments do
    Result.Add(aRecord.title);
  Result.Sort;
  for i := 0 to SizeOf(SubArguments) - 1 do
    SubArguments[i].index := Result.IndexOf(SubArguments[i].title);
end;

function TArgument.ToString(full: Boolean): String;
var
  i: integer;
begin
  Result := self.indent + 'id: ' + IntToStr(self.id) + sLineBreak + self.indent + 'Title: ' + self.title + sLineBreak +
    self.indent + 'index: ' + self.index.ToString + sLineBreak;

  if full then
    for i := 0 to Length(self.SubArguments) - 1 do
    begin
      self.SubArguments[i].indent := self.indent + '   ';
      Result := Result + sLineBreak + self.SubArguments[i].ToString;
    end;
end;

{ TSubArgument }

function TSubArgument.GetSpecificationbyID(aID: integer): TSpecification;
var
  aRecord: TSpecification;
begin
  for aRecord in self.Specifications do
    if aRecord.id = aID then
    begin
      Result := aRecord;
      Exit;
    end;
end;

function TSubArgument.GetSpecificationByIndex(aIndex: integer): TSpecification;
var
  aRecord: TSpecification;
begin
  for aRecord in self.Specifications do
    if aRecord.index = aIndex then
    begin
      Result := aRecord;
      Exit;
    end;
end;

function TSubArgument.GetSpecificationByName(aName: String): TSpecification;
var
  aRecord: TSpecification;
begin
  for aRecord in self.Specifications do
    if aRecord.title = aName then
    begin
      Result := aRecord;
      Exit;
    end;
end;

function TSubArgument.ListSpecifications: TStringList;
var
  i: integer;
  aRecord: TSpecification;
begin
  Result := TStringList.Create;

  for aRecord in self.Specifications do
    Result.Add(aRecord.title);
  Result.Sort;
  for i := 0 to SizeOf(Specifications) - 1 do
    Specifications[i].index := Result.IndexOf(Specifications[i].title);

end;

function TSubArgument.ToString(full: Boolean): String;
var
  i: integer;
begin
  Result := self.indent + 'id: ' + IntToStr(self.id) + sLineBreak + self.indent + 'Title: ' + self.title + sLineBreak +
    self.indent + 'index: ' + self.index.ToString + sLineBreak;

  if full then
    for i := 0 to Length(self.Specifications) - 1 do
    begin
      self.Specifications[i].indent := self.indent + '   ';
      Result := Result + sLineBreak + self.Specifications[i].ToString;
    end;
end;

{ TSpecification }

function TSpecification.ToString(full: Boolean): String;
begin
  Result := self.indent + 'id: ' + IntToStr(self.id) + sLineBreak + self.indent + 'Title: ' + self.title + sLineBreak +
    self.indent + 'index: ' + self.index.ToString + sLineBreak;
end;

{ TArticleRecord }

procedure TArticleRecord.Reset;
begin
  self.title := '';
  self.Text := '';
  self.TextAbstract := '';
  self.ArticleDate := -693594;
  self.id := 0;
  self.index := -1;
end;

function TArticleRecord.AsJsonObject: TJsonObject;
begin
  Result := TJsonObject.Create;
  Janua.Core.JSON.JsonPair(Result, 'Title', self.title);
  Janua.Core.JSON.JsonPair(Result, 'Text', self.Text);
  Janua.Core.JSON.JsonPair(Result, 'TextAbstract', self.TextAbstract);
  Janua.Core.JSON.JsonPair(Result, 'Likes', self.Likes);
  Janua.Core.JSON.JsonPair(Result, 'Comments', self.CommentCount);
  Janua.Core.JSON.JsonPair(Result, 'title', self.title);
end;

function TArticleRecord.AsJsonPretty: string;
begin
  { TODO : Implementare trasfromazione di un articolo in formato Json }
  Result := Janua.Core.JSON.JsonPretty(self.AsJsonObject);

end;

function TArticleRecord.ToString: string;
begin
  Result := self.title + sLineBreak + DateTimeToStr(self.ArticleDate) + sLineBreak + self.TextAbstract + sLineBreak +
    self.Text + sLineBreak + self.Link;
end;

{ TJanuaNews }

procedure TJanuaNews.Add(const aRecord: TJanuaNewsRecord);
begin
  SetLength(self.Items, self.count + 1);
  self.Items[self.count - 1] := aRecord;
  self.SelectedItem := self.Items[self.count - 1];
end;

procedure TJanuaNews.Add(aObject: TJsonObject);
var
  aNews: TJanuaNewsRecord;
begin
  aNews.LoadFromJsonObject(aObject);
  self.Add(aNews);
  aObject.Free;
end;

function TJanuaNews.Asjson: string;
begin
  Result := self.AsJsonObject.ToJSON;
end;

function TJanuaNews.AsJsonObject: TJsonObject;
var
  aItem: TJanuaNewsRecord;
  aArray: TJsonArray;
begin
  Result := TJsonObject.Create;
  {
    Janua.Core.Json.JsonPair(Result, 'SecondLineChar', SecondLineChar);
    Janua.Core.Json.JsonPair(Result, 'TemplateHeader', TemplateHeader);
    Janua.Core.Json.JsonPair(Result, 'TemplateRow', TemplateRow);
  }
  Janua.Core.JSON.JsonPair(Result, 'count', self.count);
  aArray := TJsonArray.Create;
  for aItem in self.Items do
    aArray.AddElement(aItem.AsJsonObject);
  Janua.Core.JSON.JsonPair(Result, 'items', aArray);

end;

function TJanuaNews.AsJsonPretty: string;
begin
  Result := Janua.Core.JSON.JsonPretty(self.AsJsonObject.ToJSON);
end;

procedure TJanuaNews.Clear;
begin
  SetLength(self.Items, 0);

end;

function TJanuaNews.count: integer;
begin
  Result := Length(self.Items);
end;

procedure TJanuaNews.LoadFromJson(aJson: string);
var
  LJSONObject: TJsonObject;
  vParsed: integer;

begin
  LJSONObject := nil;

  try
    LJSONObject := TJsonObject.Create;
    { convert String to JSON }
    vParsed := LJSONObject.Parse(BytesOf(aJson), 0);

    if vParsed > 0 then
    begin
      self.LoadFromJsonObject(LJSONObject);
    end
    else
    begin
      raise Exception.Create('TJanuaNews Error in Json Parse, not a json text');
    end;

  finally
    LJSONObject.Free;
  end;

end;

procedure TJanuaNews.LoadFromJsonObject(aJson: TJsonObject);
var
  aValue: TJsonValue;
  aPair: TJsonPair;
  aObject: TJsonObject;
  aTest: integer;
begin
  self.Clear;
  // temporaneamente movimento solo l'array di items ma non le righe di template
  {
    self.SecondLineChar := aJson.GetValue('SecondLineChar').Value;
    self.TemplateHeader := aJson.GetValue('TemplateHeader').Value;
    self.TemplateRow := aJson.GetValue('TemplateRow').Value;
  }
  Janua.Core.JSON.JsonValue(aJson, 'count', aTest);
  if aTest > 0 then
  begin
    aPair := aJson.Get('items');
    if Assigned(aPair) then
      for aValue in (aPair.JsonValue as TJsonArray) do
      begin
        aObject := (aValue as TJsonObject);
        self.Add(aObject);
      end;
  end;

end;

{ TJanuaNewsRecord }

function TJanuaNewsRecord.AsJsonObject: TJsonObject;
begin
  Result := TJsonObject.Create;
  Janua.Core.JSON.JsonPair(Result, 'id', self.id);
  Janua.Core.JSON.JsonPair(Result, 'newsdate', self.newsdate);
  Janua.Core.JSON.JsonPair(Result, 'Image', '');
  Janua.Core.JSON.JsonPair(Result, 'content', self.content);
  Janua.Core.JSON.JsonPair(Result, 'title', self.title);
  Janua.Core.JSON.JsonPair(Result, 'webpage', self.webpage);
end;

procedure TJanuaNewsRecord.LoadFromJson(aJson: string);
begin

end;

procedure TJanuaNewsRecord.LoadFromJsonObject(aObject: TJsonObject);
begin
  Janua.Core.JSON.JsonValue(aObject, 'id', self.id);
  Janua.Core.JSON.JsonValue(aObject, 'newsdate', self.newsdate);
  // Janua.Core.Json.JsonValue(aObject, 'Image', self.Image);
  Janua.Core.JSON.JsonValue(aObject, 'content', self.content);
  Janua.Core.JSON.JsonValue(aObject, 'title', self.title);
  Janua.Core.JSON.JsonValue(aObject, 'webpage', self.webpage);
end;

end.




