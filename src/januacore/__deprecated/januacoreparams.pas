unit JanuaCoreParams;

{$IFDEF FPC}
{$mode objfpc}{$H+}
{$ENDIF}

interface

uses
  SysUtils, Classes  , idURI;

type
  TJanuaParamsReader = class(TComponent)
  private
    FParamText: TStrings;
    FParamList: TStrings;
    FCount: integer;
    FValueList: TStrings;
    FText: string;
    procedure SetParamText(const Value: TStrings);
    procedure SetText(const Value: string);
    procedure SetParamsText;
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    function ParamByName(parname: string): string; overload;
    function ParamByName(parname: string; default: integer): integer; overload;
    function ExistParam(parname: string): boolean;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure AssignParams(aList: TStrings);
    procedure DecodeURL(URL: string);
  published
    { Published declarations }
    property ParamList: TStrings read FParamList;
    property ValueList: TStrings read FValueList;
    property ParamText: TStrings read FParamText write SetParamText;
    property Text: string read FText write SetText;
    property Count: integer read FCount;

  end;

implementation

{ TJanuaParamsReader }

procedure TJanuaParamsReader.AssignParams(aList: TStrings);
begin
  FParamText.Delimiter := ',';
  FParamText.StrictDelimiter := True;
  FParamText.Assign(aList);
  self.SetParamsText;
end;

constructor TJanuaParamsReader.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FValueList := TStringList.Create;
  FParamList := TStringList.Create;
  FParamText := TStringList.Create;
end;

procedure TJanuaParamsReader.DecodeURL(URL: string);
var
  URI: TIdURI;
begin
  FParamText.Delimiter := '&';
  FParamText.StrictDelimiter := True;

  URI := TIdURI.Create(URL);
  try
    FParamText.DelimitedText := URI.Params;
  finally
    URI.Free;
  end;


  SetParamsText;

  {
    for i := 0 to Params.Count - 1 do
    begin
    Params.Strings[i] := StringReplace(Params.Strings[i], '+', ' ', [rfReplaceAll]);
    Params.Strings[i] := TIdURI.URLDecode(Params.Strings[i], enUtf8);
    end;
  }

  // use Params as needed...
end;

destructor TJanuaParamsReader.Destroy;
begin
  FValueList.Free;
  FParamList.Free;
  FParamText.Free;
  inherited;
end;

function TJanuaParamsReader.ExistParam(parname: string): boolean;
var
  i: integer;
begin
  // verifica esistenza di un parametro
  Result := False;
  if FParamList.Count > 0 then
    for i := 0 to FParamList.Count - 1 do
    begin
      if UpperCase(FParamList.Strings[i]) = UpperCase(parname) then
      begin
        Result := True;
        Exit;
      end;
    end;
end;

function TJanuaParamsReader.ParamByName(parname: string; default: integer): integer;
var
  i: integer;
begin
  Result := default;
  // verifica esistenza di un parametro
  if (FParamList.Count > 0) and self.ExistParam(parname) then
  begin
    for i := 0 to FParamList.Count - 1 do
    begin
      if UpperCase(FParamList.Strings[i]) = UpperCase(parname) then
      begin
        try
          Result :=  StrToInt( FValueList.Strings[i]);
        except
          Result := default;
        end;
        Exit;
      end;
    end
  end

end;

function TJanuaParamsReader.ParamByName(parname: string): string;
var
  i: integer;
begin
  // verifica esistenza di un parametro
  Result := '';
  if FParamList.Count > 0 then
    for i := 0 to FParamList.Count - 1 do
    begin
      if UpperCase(FParamList.Strings[i]) = UpperCase(parname) then
      begin
        Result := FValueList.Strings[i];
        Exit;
      end;
    end;
end;

procedure TJanuaParamsReader.SetParamText(const Value: TStrings);
begin
  FParamText.Assign(Value);
  SetParamsText;
end;

procedure TJanuaParamsReader.SetParamsText;
var
  pid: string;
  i: integer;
begin
  FValueList.Clear;
  FParamList.Clear;
  FCount := FParamText.Count;
  if FCount > 0 then
    for i := 0 to FParamText.Count - 1 do
    begin
      pid := FParamText.Names[i];
      FParamList.Add(pid);
      pid := FParamText.ValueFromIndex[i];
      FValueList.Add(pid);
    end;
end;

procedure TJanuaParamsReader.SetText(const Value: string);
begin
  FParamText.Text := Value;
  SetParamsText;
end;

end.
