unit Janua.Core.Locale;

interface

{$I JANUACORE.INC}

uses
{$IFDEF fpc}
  LResources, Classes, SysUtils, IOUtils, DB,
{$ELSE}
  System.SysUtils, System.IOUtils, Data.DB,
  System.Variants, System.Classes, System.JSON, System.JSONConsts, Web.HTTPApp,
{$ENDIF}
  Janua.Core.Servers, Janua.Core.Classes;

implementation

uses Janua.Core.Functions, Janua.Core.JSON;

type
  TJanuait_ITTownCountryCode = record
    code: string;
    location: string;

  public
    function ToString: string;
    function AsJsonObject: TJsonObject;
    function AsJson: string;
    function FullName: string;
    function AsHtml(aTemplate: string): string;
    function AHtmlTableRow: string;
    function AsHtmlSelect: string;
    function AsHtmlList: string;
    procedure SaveToDataset(dsTownCountriesCodes: TDataset);
    procedure LoadFromDataset(dsTownCountriesCodes: TDataset);
    procedure LoadFromHttpParams(aRequest: TWebRequest);
    procedure Clear;

  end;

type
  TJanuait_ITTownCountriesCodes = record
    TownCountriesCodes: array of TJanuait_ITTownCountryCode;
    Template: string;
    RowTemplate: string;
  public
    function Count: integer;
    function AsJsonObject: TJsonObject;
    function AsJson: string;
    function FullName: string;
    function AsHtml(aTemplate, aRowTemplate: string): string;
    function AHtmlTableRow: string;
    function AsHtmlSelect: string;
    function AsHtmlList: string;
    procedure SaveToDataset(dsTownCountriesCodes: TDataset);
    procedure LoadFromDataset(dsTownCountriesCodes: TDataset);
    procedure LoadFromHttpParams(aRequest: TWebRequest);
    procedure Clear;

  end;

  { TJanuait_ITTownCountriesCodes }

function TJanuait_ITTownCountryCode.AsHtml(aTemplate: string): string;
begin

end;

function TJanuait_ITTownCountryCode.AsHtmlList: string;
begin

end;

function TJanuait_ITTownCountryCode.AsHtmlSelect: string;
begin
  Result := '<option value="' + self.code + '">' + self.location + '</option>';
end;

function TJanuait_ITTownCountryCode.AsJson: string;
begin
  Result := self.AsJsonObject.ToJSON
end;

function TJanuait_ITTownCountryCode.AsJsonObject: TJsonObject;
begin
  Result := TJsonObject.Create;
  Janua.Core.JSON.JsonPair(Result, 'code', self.code);
  Janua.Core.JSON.JsonPair(Result, 'location', self.location);
end;

function TJanuait_ITTownCountryCode.AHtmlTableRow: string;
var
  aList: TStrings;
begin
  aList := TStringlist.Create;
  try
    aList.Add('<tr>');
    aList.Add('<td>' + self.code + '</td>');
    aList.Add('<td>' + self.location + '</td>');
    aList.Add('</tr>');
    Result := aList.Text;
  finally
    aList.Free;
  end;

end;

procedure TJanuait_ITTownCountryCode.Clear;
begin

end;

function TJanuait_ITTownCountryCode.FullName: string;
begin

end;

procedure TJanuait_ITTownCountryCode.LoadFromDataset(dsTownCountriesCodes: TDataset);
begin
  self.code := dsTownCountriesCodes.FieldByName('code').AsWideString;
  self.location := dsTownCountriesCodes.FieldByName('location').AsWideString;
end;

procedure TJanuait_ITTownCountryCode.LoadFromHttpParams(aRequest: TWebRequest);
begin

end;

procedure TJanuait_ITTownCountryCode.SaveToDataset(dsTownCountriesCodes: TDataset);
begin

end;

function TJanuait_ITTownCountryCode.ToString: string;
begin

end;

{ TJanuait_ITTownCountriesCodes }

function TJanuait_ITTownCountriesCodes.AHtmlTableRow: string;
begin

end;

function TJanuait_ITTownCountriesCodes.AsHtml(aTemplate, aRowTemplate: string): string;
var
  aList: TStrings;
  aRow: TJanuait_ITTownCountryCode;
begin
  Result := aTemplate;
  aList := TStringlist.Create;
  try
    for aRow in self.TownCountriesCodes do
      aList.Add(aRow.AsHtml(aRowTemplate));
    Janua.Core.Functions.HtmlReplace(Result, 'rows', aList.Text);
  finally
    aList.Free;
  end;
end;

function TJanuait_ITTownCountriesCodes.AsHtmlList: string;
begin

end;

function TJanuait_ITTownCountriesCodes.AsHtmlSelect: string;
begin

end;

function TJanuait_ITTownCountriesCodes.AsJson: string;
begin

end;

function TJanuait_ITTownCountriesCodes.AsJsonObject: TJsonObject;
var
  aArray: TJsonArray;
  aRow: TJanuait_ITTownCountryCode;
begin
  Result := TJsonObject.Create;
  aArray := TJsonArray.Create;
  for aRow in self.TownCountriesCodes do
    aArray.Add(aRow.AsJsonObject);
  Janua.Core.JSON.JsonPair(Result, 'codes', aArray);
end;

procedure TJanuait_ITTownCountriesCodes.Clear;
begin

end;

function TJanuait_ITTownCountriesCodes.Count: integer;
begin
  Result := Length(self.TownCountriesCodes);
end;

function TJanuait_ITTownCountriesCodes.FullName: string;
begin

end;

procedure TJanuait_ITTownCountriesCodes.LoadFromDataset(dsTownCountriesCodes: TDataset);
begin

end;

procedure TJanuait_ITTownCountriesCodes.LoadFromHttpParams(aRequest: TWebRequest);
begin

end;

procedure TJanuait_ITTownCountriesCodes.SaveToDataset(dsTownCountriesCodes: TDataset);
begin

end;

end.
