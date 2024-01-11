unit Janua.Core.Json;

interface

uses
  System.NetEncoding, System.Classes, System.SysUtils, System.Math, System.Strutils, System.Variants,
  System.Types, System.Rtti,
  // Neon Serializers Support
  Neon.Core.Types, Neon.Core.Persistence, System.TypInfo {needed by Neon} ,
  // JsonSupport
  System.Json, Rest.Json, System.Json.Readers, System.Json.Types, System.Json.Writers, System.Json.BSON;

function EscapeString(const AValue: string): string;
function StringToJsonString(const aString: string): string; inline;
function tjs(const aString: string): string; inline;

type
  TNSType = (CustomNeon, CustomDemo);
  TNSSet = set of TNSType;

  TDMCJWT = record

    constructor Create(const aJsonJWT: string);
  end;

  TJanuaJson = class
    // Janaproject Serializer Configuration for NEON Serializer
  private
    class var FNeonJsonConfig: INeonConfiguration;
    class var FJsonJWT: string;
    class var FJWTRecord: TDMCJWT;
  public
    class function BuildSerializerConfig(ASerializers: TNSSet = [TNSType.CustomNeon]): INeonConfiguration;
    class function SerializeSimple<T>(const AValue: T): string;
    class function SerializeJson(const AValue: TValue): TJSONValue;
    class function SerializeJsonObject<T>(const AValue: T): TJSONValue;
    class function DeserializeSimple<T>(const AValue: string): T; overload;
    class function DeserializeSimple<T>(const AValue: TJSONValue): T; overload;
    class function ExtractJWT(const aJWT: string): string;
  public
    class property JsonJWT: string read FJsonJWT;
    class property JWTRecord: TDMCJWT read FJWTRecord;
  end;

function JsonPretty(aJson: string): string; overload;
function JsonPretty(aJson: TJSONValue): string; overload;

function ToJsonFree(aJson: TJsonObject): string; overload;
function TJsonFree(aJson: TJSONValue): string; overload;
function ToJsonPrettyFree(aJson: TJSONValue): string; overload;
function ToJsonPrettyFree(aJson: TJsonObject): string; overload;

// Function to pretty format JsonObjects or Json Strings.
function JsonPrettyOld(aJsonObject: TJsonObject; vEscape: boolean = true): string; overload; inline;
function JsonPrettyOld(aJsonString: string; vEscape: boolean = true): string; overload; inline;
function JsonPrettyRaw(aJsonObject: TJsonObject; vEscape: boolean = true): string; inline;

function JsonObjectError(aError: string): TJsonObject;
function JsonParse(aJson: string): TJsonObject;

function JsonLogString(aProc, aLog: string; aObject: TObject): string;

// Json Functions .............................................................................
function JsonReformat(const aJson: string; Indented: boolean = true): string;

/// This function converts a Float Number to a String to be exported in Xml Json English format
function JsonFloatToStr(const aFloat: Double; digits: integer): string;
function JsonStringToFloatLegacy(const aString: string): Double;
function JsonStringToFloat(const aString: string): Double;

function JsonError(aError: string): string;
// This procedure converts a Json String to Boolean Value and Back
function JanuaJsonBool(aBool: boolean): string;
function JanuaBoolJson(aBool: string): boolean;

// This procedure Encode and Decodes a Date - DateTime to String in Janua Std Format.
function JsonEncodeDate(aDate: TDateTime): string; overload;
function JsonEncodeDate(aDate: TDate): string; overload;
function JsonEncodeDateTime(aDateTime: TDateTime): string;
function JsonDecodeDate(const aDate: string): TDateTime;
function JsonDecodeDateStrict(const aDate: string): TDate;
// Json Object Management Strings
function JsonObjectToString(const aObject: TJsonObject): string;
function JsonObjectToJSON(const aObject: TJsonObject): string;
function JsonObjectToPretty(const aObject: TJsonObject): string;
function JsonObjectParse(var aObject: TJsonObject; const aJson: string): boolean;

// This function makes easy to add pairs to a Json Object
procedure JsonPair(aObject: TJsonObject; aParam: string; AValue: string); overload; inline;
procedure JsonPair(aObject: TJsonObject; aParam: string; AValue: TDateTime); overload; inline;
procedure JsonPair(aObject: TJsonObject; aParam: string; AValue: Int64); overload; inline;
procedure JsonPair(aObject: TJsonObject; aParam: string; AValue: Extended); overload; inline;
procedure JsonPair(aObject: TJsonObject; aParam: string; AValue: Double); overload; inline;
procedure JsonPair(aObject: TJsonObject; aParam: string; AValue: boolean); overload; inline;
procedure JsonPair(aObject: TJsonObject; aParam: string; AValue: TJsonArray); overload; inline;
procedure JsonPair(aObject: TJsonObject; aParam: string; AValue: TJsonObject); overload; inline;
procedure JsonPair(aObject: TJsonObject; aParam: string; AValue: System.TDate); overload; inline;
procedure JsonPair(aObject: TJsonObject; aParam: string; AValue: TJSONValue); overload; inline;
{$IFNDEF FPC}
function JsonPair(aParam: string; AValue: string): TJsonPair; overload; inline;
function JsonPair(aParam: string; AValue: TDateTime): TJsonPair; overload; inline;
function JsonPair(aParam: string; AValue: Int64): TJsonPair; overload; inline;
function JsonPair(aParam: string; AValue: Extended): TJsonPair; overload; inline;
function JsonPair(aParam: string; AValue: Double): TJsonPair; overload; inline;
function JsonPair(aParam: string; AValue: Currency): TJsonPair; overload; inline;
function JsonPair(aParam: string; AValue: boolean): TJsonPair; overload; inline;
function JsonPair(aParam: string; AValue: TJsonArray): TJsonPair; overload; inline;
function JsonPair(aParam: string; AValue: TJsonObject): TJsonPair; overload; inline;
function JsonPair(aParam: string; AValue: TJSONValue): TJsonPair; overload; inline;
function JsonPair(aParam: string; AValue: System.TDate): TJsonPair; overload; inline;
{$ENDIF FPC}
// This function Stores a Value into a Json Variable ......................................
procedure JsonValue(aObject: TJsonObject; const aParam: string; var AValue: string;
  const aDefault: string = ''; const aCheck: boolean = False); overload;
/// <summary>Extracts a Value with name aParam from a Json Object and convert it to String </summary>
procedure JsonExtract(aObject: TJsonObject; const aParam: string; var AValue: string);
{$IFNDEF DEBUG} inline; {$ENDIF}
procedure JsonValue(aObject: TJsonObject; const aParam: string; var AValue: TDateTime;
  vCheck: boolean = False); overload; {$IFNDEF DEBUG} inline; {$ENDIF}
procedure JsonValue(aObject: TJsonObject; const aParam: string; var AValue: TDate); overload;
{$IFNDEF DEBUG} inline; {$ENDIF}
procedure JsonValue(aObject: TJsonObject; const aParam: string; var AValue: Int64;
  const aDefault: Int64 = 0); overload;
{$IFNDEF DEBUG} inline; {$ENDIF}
procedure JsonValue(aObject: TJsonObject; const aParam: string; var AValue: Cardinal); overload;
{$IFNDEF DEBUG} inline; {$ENDIF}
procedure JsonValue(aObject: TJsonObject; const aParam: string; var AValue: integer); overload;
{$IFNDEF DEBUG} inline; {$ENDIF}
procedure JsonValue(aObject: TJsonObject; const aParam: string; var AValue: smallint); overload;
{$IFNDEF DEBUG} inline; {$ENDIF}
procedure JsonValue(aObject: TJsonObject; const aParam: string; var AValue: byte); overload;
{$IFNDEF DEBUG} inline; {$ENDIF}
procedure JsonValue(aObject: TJsonObject; const aParam: string; var AValue: word); overload;
{$IFNDEF DEBUG} inline; {$ENDIF}
procedure JsonValue(aObject: TJsonObject; const aParam: string; var AValue: Extended); overload;
{$IFNDEF DEBUG} inline; {$ENDIF}
procedure JsonValue(aObject: TJsonObject; const aParam: string; var AValue: Double); overload;
{$IFNDEF DEBUG} inline; {$ENDIF}
procedure JsonValue(aObject: TJsonObject; const aParam: string; var AValue: Currency); overload;
{$IFNDEF DEBUG} inline; {$ENDIF}
procedure JsonValueDouble(aObject: TJsonObject; const aParam: string; var AValue: Double);
{$IFNDEF DEBUG} inline; {$ENDIF}
/// <summary>Find a Value with name aParam from a Json Object and convert it to Currency </summary>
procedure JsonValueCurrency(aObject: TJsonObject; const aParam: string; var AValue: Currency);
{$IFNDEF DEBUG} inline; {$ENDIF}
/// <summary> Find a Value with name aParam from a Json Object and convert it to boolean </summary>
procedure JsonValue(aObject: TJsonObject; const aParam: string; var AValue: boolean); overload;
{$IFNDEF DEBUG} inline; {$ENDIF}
/// <summary> Find a Value with name aParam from a Json Object and convert it to TJsonArray </summary>
procedure JsonValue(aObject: TJsonObject; const aParam: string; var AValue: TJsonArray); overload;
{$IFNDEF DEBUG} inline; {$ENDIF}
/// <summary>Find a Value with name aParam from a Json Object and convert it to TJsonObject</summary>
procedure JsonValue(aObject: TJsonObject; const aParam: string; var AValue: TJsonObject); overload;
{$IFNDEF DEBUG} inline; {$ENDIF}
/// <summary>Find a Value with name aParam from a Json Object and convert it to TGUID</summary>
procedure JsonValue(aObject: TJsonObject; const aParam: string; var AValue: TGUID); overload;
{$IFNDEF DEBUG} inline; {$ENDIF}
{$IFNDEF FPC}
/// <summary>Extracts a Value with name aParam from a Json Object</summary>
procedure JsonValue(aObject: TJsonObject; const aParam: string; var AValue: TJSONValue); overload;
{$IFNDEF DEBUG} inline; {$ENDIF}
{$ENDIF FPC}
// This create a Json Object with Result Values
function JsonResultString(AValue: string): string; inline;
function JsonResult(AValue: string): TJsonObject; inline;
function JsonString(aTitle, AValue: String): TJsonObject; inline;
function JsonResultArray(aTitle: string; AValue: TJsonArray): TJsonObject; inline;
function JsonObject(aTitle: string; AValue: TJsonObject): TJsonObject; inline;

implementation

uses Soap.EncdDecd, System.DateUtils, Writers,
  // Neon Json Serializer
  Neon.Core.Persistence.Json, Neon.Core.Utils;

function EscapeString(const AValue: string): string;
const
  ESCAPE = '\';
  QUOTATION_MARK = '"';
  REVERSE_SOLIDUS = '\';
  SOLIDUS = '/';
  BACKSPACE = #8;
  FORM_FEED = #12;
  NEW_LINE = #10;
  CARRIAGE_RETURN = #13;
  HORIZONTAL_TAB = #9;
var
  AChar: Char;
begin
  Result := '';
  for AChar in AValue do
  begin
    case AChar of
      QUOTATION_MARK:
        Result := Result + ESCAPE + QUOTATION_MARK;
      REVERSE_SOLIDUS:
        Result := Result + ESCAPE + REVERSE_SOLIDUS;
      SOLIDUS:
        Result := Result + ESCAPE + SOLIDUS;
      BACKSPACE:
        Result := Result + ESCAPE + 'b';
      FORM_FEED:
        Result := Result + ESCAPE + 'f';
      NEW_LINE:
        Result := Result + ESCAPE + 'n';
      CARRIAGE_RETURN:
        Result := Result + ESCAPE + 'r';
      HORIZONTAL_TAB:
        Result := Result + ESCAPE + 't';
    else
      begin
        if (integer(AChar) < 32) or (integer(AChar) > 126) then
          Result := Result + ESCAPE + 'u' + IntToHex(integer(AChar), 4)
        else
          Result := Result + AChar;
      end;
    end;
  end;
end;

function StringToJsonString(const aString: string): string; inline;
begin
  Result := TJSONString.Create(aString).ToString;
end;

function tjs(const aString: string): string; inline;
begin
  Result := StringToJsonString(aString);
end;

function IsNumber(const AValue: string): boolean;
var
  iValue, iCode: integer;
begin
  val(AValue, iValue, iCode);
  Result := iCode = 0;
end;

function ToJsonFree(aJson: TJsonObject): string; overload;
begin
  try
    Result := aJson.ToJSON;
  finally
    aJson.Free
  end;
end;

function TJsonFree(aJson: TJSONValue): string; overload;
begin
  try
    Result := aJson.ToJSON
  finally
    aJson.Free
  end;
end;

function ToJsonPrettyFree(aJson: TJSONValue): string; overload;
begin
  try
    Result := aJson.Format(2);
  finally
    aJson.Free
  end;
end;

function ToJsonPrettyFree(aJson: TJsonObject): string; overload;
begin
  try
    Result := aJson.Format(2);
  finally
    aJson.Free
  end;
end;

function JsonPretty(aJson: TJSONValue): string;
begin
  // {$IFDEF DELPHIRIO}
  Result := aJson.Format; //
  (*
    {$ELSE}
    TJsonAncestor.Format(aJson);
    {$ENDIF DELPHIRIO}
  *)
end;

function JsonPretty(aJson: string): string;
begin
  Result := JsonPretty(TJsonObject.ParseJSONValue(BytesOf(UTF8String(aJson)), 0));
end;

{
  var
  FilterJSON: ISuperObject;
  begin
  Result := '';
  if aJson <> '' then
  begin
  FilterJSON := SO(aJson);
  Result := FilterJSON.AsJson(true);
  end
  end;
}

function JsonLogString(aProc, aLog: string; aObject: TObject): string;
var
  lClassName: string;
begin
  Result := '{ ' + sLineBreak;
  Result := Result + '"datetime" : "' + FormatDateTime('yyy-mm-dd hh:nn:ss', Now()) + '", ';

  if Assigned(aObject) then
  begin
    lClassName := aObject.ClassName;

    if (aObject is TComponent) and Assigned(TComponent(aObject).Owner) then
      Result := Result + '"owner" : "' + TComponent(aObject).Owner.Name + '", ';
  end;

  Result := Result + '"' + lClassName + IfThen(lClassName <> '', '.', '') + aProc + '" : ';

  if (aLog.IndexOf('{') > -1) and (aLog.IndexOf('}') > -1) then
    Result := Result + aLog
  else
    Result := Result + '"' + aLog + '"';

  Result := Result + sLineBreak + ' }';
end;

{$REGION 'Json'}
{$IFNDEF FPC}

procedure JsonValue(aObject: TJsonObject; const aParam: string; var AValue: TJSONValue); overload; inline;
begin
  AValue := nil;
  if Assigned(aObject) then
  begin
    try
      AValue := aObject.Get(aParam).JsonValue;
    except
      on e: Exception do
        AValue := nil;
    end;
  end
  else
    AValue := nil;
end;
{$ENDIF FPC}

procedure JsonValue(aObject: TJsonObject; const aParam: string; var AValue: TGUID);
var
{$IFNDEF FPC}
  LV: TJSONValue;
  LT: TJsonPair;
{$ENDIF FPC}
  tmp: string;
begin
{$IFNDEF FPC}
  (*
    LV := nil;
    LT := nil;
  *)
  if Assigned(aObject) then
  begin
    try
      LT := aObject.Get(aParam);
      if Assigned(LT) then
      begin
        LV := LT.JsonValue;
        if Assigned(LV) then
        begin
          tmp := LV.Value;
          AValue := System.SysUtils.StringToGUID(tmp);
        end
        else
          AValue := GUID_Null
      end
      else
        AValue := GUID_Null;

    except
      on e: Exception do
      begin
        AValue := GUID_Null;
      end;
    end;
  end
  else
    AValue := GUID_Null;
{$ENDIF FPC}
end;

procedure JsonValue(aObject: TJsonObject; const aParam: string; var AValue: string;
  const aDefault: string = ''; const aCheck: boolean = False);
{$IFNDEF FPC}
var
  LV: TJSONValue;
  LT: TJsonPair;
{$ENDIF FPC}
begin
{$IFNDEF FPC}
  LV := nil;
  LT := nil;
{$ENDIF FPC}
  AValue := '';
  if Assigned(aObject) then
  begin
{$IFNDEF FPC}
    try
      LT := aObject.Get(aParam);
      if Assigned(LT) then
      begin
        LV := LT.JsonValue;
        if Assigned(LV) then
          AValue := LV.Value
      end
      else
        AValue := '';
    except
      on e: Exception do
        AValue := '';
    end;
{$ENDIF FPC}
  end;
end;

procedure JsonExtract(aObject: TJsonObject; const aParam: string; var AValue: string);
{$IFNDEF FPC}
var
  LV: TJSONValue;
  LT: TJsonPair;
{$ENDIF FPC}
begin
{$IFNDEF FPC}
  LV := nil;
  LT := nil;
{$ENDIF FPC}
  AValue := '';
  if Assigned(aObject) then
  begin
{$IFNDEF FPC}
    try
      LT := aObject.RemovePair(aParam);
      if Assigned(LT) then
        LV := LT.JsonValue;
      if Assigned(LV) then
        AValue := LV.Value
      else
        AValue := '';
    except
      on e: Exception do
        AValue := '';
    end;
{$ENDIF FPC}
  end;
end;

procedure JsonValue(aObject: TJsonObject; const aParam: string; var AValue: TDateTime;
  vCheck: boolean = False);
{$IFNDEF FPC}
var
  V: TJSONValue;
{$ENDIF FPC}
begin
  AValue := 0.0;
  if Assigned(aObject) then
  begin
{$IFNDEF FPC}
    try
      V := nil;
      V := aObject.Get(aParam).JsonValue;
      // FindJSONValue();
      if V <> nil then
        AValue := JsonDecodeDate(V.Value)
      else

        AValue := 0.0;
    except
      on e: Exception do
      begin
        AValue := 0.0;
        if vCheck then
          raise e;
      end;
    end;
{$ENDIF FPC}
  end;
end;

procedure JsonValue(aObject: TJsonObject;

  const aParam: string;

  var AValue: TDate);
var
{$IFNDEF FPC}
  V: TJSONValue;
  p: TJsonPair;
{$ENDIF FPC}
  S: TJSONString;
begin
  if Assigned(aObject) then
  begin
{$IFNDEF FPC}
    V := nil;
    S := nil;
    p := nil;
    p := aObject.Get(aParam);
    if Assigned(p) then
    begin
      V := p.JsonValue;
      if Assigned(V) then
      begin
        S := V as TJSONString;
        AValue := JsonDecodeDate(S.Value)
      end
      else
        AValue := 0.0;
    end
    else
{$ENDIF FPC}
      AValue := 0.0;
  end
  else
    AValue := 0.0;

end;

procedure JsonValue(aObject: TJsonObject;

  const aParam: string;

  var AValue: Cardinal); overload;
var
{$IFNDEF FPC}
  p: TJsonPair;
  V: TJSONValue;
{$ENDIF FPC}
  S: TJsonNumber;
begin
  S := nil;
  if Assigned(aObject) then
  begin
{$IFNDEF FPC}
    p := nil;
    V := nil;
    p := aObject.Get(aParam);
    if Assigned(p) then
    begin
      V := p.JsonValue;
      if Assigned(V) then
      begin
        try
          S := V as TJsonNumber;
          AValue := System.SysUtils.StrToUIntDef(S.Value, 0);
          // S.Value.ToInt64
        except
          on e: Exception do
            AValue := 0;
        end;
      end
      else
        AValue := 0;
    end
    else
      AValue := 0;
{$ENDIF FPC}
  end
  else
    AValue := 0;

end;

procedure JsonValue(aObject: TJsonObject; const aParam: string; var AValue: Int64;
  const aDefault: Int64); overload;
var
{$IFNDEF FPC}
  p: TJsonPair;
  V: TJSONValue;
{$ENDIF FPC}
  S: TJsonNumber;
begin

  if Assigned(aObject) then
  begin
{$IFNDEF FPC}
    p := nil;
    V := nil;
    S := nil;
    p := aObject.Get(aParam);
    if Assigned(p) then
    begin
      V := p.JsonValue;
      if Assigned(V) then
      begin
        try
          S := V as TJsonNumber;
          AValue := StrToInt64Def(S.Value, 0);
          // S.Value.ToInt64
        except
          on e: Exception do
            AValue := 0;
        end;
      end
      else
        AValue := 0;
    end
    else
      AValue := 0;
{$ENDIF FPC}
  end
  else
    AValue := 0;

end;

procedure JsonValue(aObject: TJsonObject;

  const aParam: string;

  var AValue: integer);
var
{$IFNDEF FPC}
  p: TJsonPair;
  V: TJSONValue;
{$ENDIF FPC}
  S: TJsonNumber;
begin

  if Assigned(aObject) then
  begin
{$IFNDEF FPC}
    p := nil;
    V := nil;
    S := nil;
    p := aObject.Get(aParam);
    if Assigned(p) then
    begin
      V := p.JsonValue;
      if Assigned(V) then
      begin
        S := aObject.Get(aParam).JsonValue as TJsonNumber;
        AValue := StrToIntDef(S.Value, 0);
        // S.Value.ToInteger
      end
      else
        AValue := 0;
    end
    else
      AValue := 0;
{$ENDIF FPC}
  end
  else
    AValue := 0;
end;

procedure JsonValue(aObject: TJsonObject; const aParam: string; var AValue: byte); overload;
var
{$IFNDEF FPC}
  p: TJsonPair;
  V: TJSONValue;
{$ENDIF FPC}
  S: TJsonNumber;
begin
  if Assigned(aObject) then
  begin
{$IFNDEF FPC}
    p := nil;
    V := nil;
    S := nil;
    p := aObject.Get(aParam);
    if Assigned(p) then
    begin
      V := p.JsonValue;
      if Assigned(V) then
      begin
        S := aObject.Get(aParam).JsonValue as TJsonNumber;
        AValue := System.SysUtils.StrToUIntDef(S.Value, 0);
        // S.Value.ToInteger
      end
      else
        AValue := 0;
    end
    else
      AValue := 0;
{$ENDIF FPC}
  end
  else
    AValue := 0;
end;

procedure JsonValue(aObject: TJsonObject; const aParam: string; var AValue: word); overload;
var
{$IFNDEF FPC}
  p: TJsonPair;
  V: TJSONValue;
{$ENDIF FPC}
  S: TJsonNumber;
begin
  AValue := 0;
  if Assigned(aObject) then
  begin
{$IFNDEF FPC}
    p := aObject.Get(aParam);
    if Assigned(p) then
    begin
      V := p.JsonValue;
      if Assigned(V) then
      begin
        S := aObject.Get(aParam).JsonValue as TJsonNumber;
        AValue := StrToUIntDef(S.Value, 0);
        // S.Value.ToInteger
      end
    end
{$ENDIF FPC}
  end;
end;

procedure JsonValue(aObject: TJsonObject; const aParam: string; var AValue: smallint);
var
{$IFNDEF FPC}
  p: TJsonPair;
  V: TJSONValue;
{$ENDIF FPC}
  S: TJsonNumber;
begin
  if Assigned(aObject) then
  begin
{$IFNDEF FPC}
    p := aObject.Get(aParam);
    if Assigned(p) then
    begin
      V := p.JsonValue;
      if Assigned(V) then
      begin
        S := aObject.Get(aParam).JsonValue as TJsonNumber;
        AValue := StrToInt64Def(S.Value, 0);
        // S.Value.ToInteger
      end
      else
        AValue := 0;
    end
    else
      AValue := 0;
{$ENDIF FPC}
  end;
end;

procedure JsonValue(aObject: TJsonObject; const aParam: string; var AValue: Extended);
var
{$IFNDEF FPC}
  V: TJSONValue;
{$ENDIF FPC}
  S: TJsonNumber;
begin
  if Assigned(aObject) then
  begin
{$IFNDEF FPC}
    V := aObject.Get(aParam).JsonValue;
    if Assigned(V) then
    begin
      S := aObject.Get(aParam).JsonValue as TJsonNumber;
      AValue := StrToFloatDef(S.Value, 0.0);
    end
    else
      AValue := 0.0;
{$ENDIF FPC}
  end;
end;

procedure JsonValueCurrency(aObject: TJsonObject; const aParam: string; var AValue: Currency); inline;
var
{$IFNDEF FPC}
  V: TJSONValue;
{$ENDIF FPC}
  S: TJsonNumber;
begin
  if Assigned(aObject) then
  begin
{$IFNDEF FPC}
    V := aObject.Get(aParam).JsonValue;
    if Assigned(V) then
    begin
      S := aObject.Get(aParam).JsonValue as TJsonNumber;
      AValue := StrToCurrDef(S.Value, 0.0);
      // aValue := S.Value.ToDouble()
    end
    else
      AValue := 0.0;
{$ENDIF FPC}
  end;

end;

procedure JsonValueDouble(aObject: TJsonObject; const aParam: string; var AValue: Double);
var
{$IFNDEF FPC}
  V: TJSONValue;
{$ENDIF FPC}
  S: TJsonNumber;
begin
  if Assigned(aObject) then
  begin
{$IFNDEF FPC}
    V := aObject.Get(aParam).JsonValue;
    if Assigned(V) then
    begin
      S := aObject.Get(aParam).JsonValue as TJsonNumber;
      AValue := StrToFloatDef(S.Value, 0.0);
      // aValue := S.Value.ToDouble()
    end
    else
      AValue := 0.0;
{$ENDIF FPC}
  end;

end;

procedure JsonValue(aObject: TJsonObject; const aParam: string; var AValue: Currency);
var
{$IFNDEF FPC}
  V: TJSONValue;
{$ENDIF FPC}
  S: TJsonNumber;
  // formatSettings: TFormatSettings;
begin
  if Assigned(aObject) then
  begin
{$IFNDEF FPC}
    V := aObject.Get(aParam).JsonValue;
    if Assigned(V) then
    begin
      S := aObject.Get(aParam).JsonValue as TJsonNumber;
      AValue := StrToCurrDef(S.Value, 0.0);
      // aValue := S.Value.ToDouble()
    end
    else
      AValue := 0.0;
{$ENDIF FPC}
  end;

end;

procedure JsonValue(aObject: TJsonObject; const aParam: string; var AValue: Double);
var
{$IFNDEF FPC}
  V: TJSONValue;
{$ENDIF FPC}
  S: TJsonNumber;
begin
  if Assigned(aObject) then
  begin
{$IFNDEF FPC}
    V := aObject.Get(aParam).JsonValue;
    if Assigned(V) then
    begin
      S := aObject.Get(aParam).JsonValue as TJsonNumber;
      AValue := StrToFloatDef(S.Value, 0.0);
      // aValue := S.Value.ToDouble()
    end
    else
      AValue := 0.0;
{$ENDIF FPC}
  end;

end;

procedure JsonValue(aObject: TJsonObject; const aParam: string; var AValue: boolean);
{$IFNDEF FPC}
var
  S: TJsonBool;
  aPair: TJsonPair;
{$ENDIF FPC}
begin
  AValue := False;
{$IFNDEF FPC}
  aPair := aObject.Get(aParam);
  if Assigned(aPair) then
  begin
    S := (aPair.JsonValue as TJsonBool);
    AValue := S.Value.ToBoolean;
  end
  else
    AValue := False;
{$ENDIF FPC}
  {
    S := aObject.Get(aParam).JsonValue as ;
    aValue := S.Value.ToBoolean
  }
end;

procedure JsonValue(aObject: TJsonObject; const aParam: string; var AValue: TJsonArray);
{$IFNDEF FPC}
var
  aPair: TJsonPair;
{$ENDIF FPC}
begin
{$IFNDEF FPC}
  aPair := aObject.Get(aParam);
  if Assigned(aPair) then
    AValue := (aPair.JsonValue as TJsonArray)
{$ENDIF FPC}
end;

procedure JsonValue(aObject: TJsonObject; const aParam: string; var AValue: TJsonObject);
{$IFNDEF FPC}
var
  aPair: TJsonPair;
{$ENDIF FPC}
begin
{$IFNDEF FPC}
  aPair := aObject.Get(aParam);
  if Assigned(aPair) then
    AValue := (aPair.JsonValue as TJsonObject)
  else
    AValue := nil;
{$ENDIF FPC}
end;
{$IFNDEF FPC}

function JsonPair(aParam: string; AValue: string): TJsonPair; overload;
begin
  Result := TJsonPair.Create(TJSONString.Create(aParam.ToLower), TJSONString.Create(AValue))
end;

function JsonPair(aParam: string; AValue: TDateTime): TJsonPair; overload;
begin
  Result := TJsonPair.Create(TJSONString.Create(aParam.ToLower), TJSONString.Create(DateToISO8601(AValue)))
end;

function JsonPair(aParam: string; AValue: Int64): TJsonPair; overload;
begin
  Result := TJsonPair.Create(TJSONString.Create(aParam.ToLower), TJsonNumber.Create(AValue))
end;

function JsonPair(aParam: string; AValue: Extended): TJsonPair; overload;
begin
  Result := TJsonPair.Create(TJSONString.Create(aParam.ToLower), TJsonNumber.Create(AValue))
end;

function JsonPair(aParam: string; AValue: Double): TJsonPair; overload;
begin
  Result := TJsonPair.Create(TJSONString.Create(aParam.ToLower), TJsonNumber.Create(AValue))
end;

function JsonPair(aParam: string; AValue: Currency): TJsonPair; overload; inline;
begin
  Result := TJsonPair.Create(TJSONString.Create(aParam.ToLower), TJsonNumber.Create(AValue))
end;

function JsonPair(aParam: string; AValue: boolean): TJsonPair; overload;
begin
  Result := TJsonPair.Create(TJSONString.Create(aParam.ToLower), TJsonBool.Create(AValue))
end;

function JsonPair(aParam: string; AValue: TJsonArray): TJsonPair; overload;
begin
  Result := TJsonPair.Create(TJSONString.Create(aParam.ToLower), AValue)
end;

function JsonPair(aParam: string; AValue: TJsonObject): TJsonPair; overload;
begin
  Result := TJsonPair.Create(TJSONString.Create(aParam.ToLower), AValue)
end;

function JsonPair(aParam: string; AValue: TJSONValue): TJsonPair; overload;
begin
  Result := TJsonPair.Create(TJSONString.Create(aParam.ToLower), AValue)
end;

function JsonPair(aParam: string; AValue: System.TDate): TJsonPair; overload;
begin
  Result := TJsonPair.Create(TJSONString.Create(aParam.ToLower), TJSONString.Create(DateToISO8601(AValue)))
end;
{$ENDIF FPC}

procedure JsonPair(aObject: TJsonObject; aParam: string; AValue: string);
begin
{$IFNDEF FPC}
  aObject.AddPair(TJsonPair.Create(TJSONString.Create(aParam.ToLower), TJSONString.Create(AValue)));
{$ENDIF FPC}
end;

procedure JsonPair(aObject: TJsonObject; aParam: string; AValue: TDateTime);
begin
{$IFNDEF FPC}
  aObject.AddPair(TJsonPair.Create(TJSONString.Create(aParam.ToLower),
    TJSONString.Create(JsonEncodeDate(AValue))))
{$ENDIF FPC}
end;

procedure JsonPair(aObject: TJsonObject; aParam: string; AValue: System.TDate);
begin
{$IFNDEF FPC}
  aObject.AddPair(TJsonPair.Create(TJSONString.Create(aParam.ToLower),
    TJSONString.Create(JsonEncodeDate(AValue))))
{$ENDIF FPC}
end;

procedure JsonPair(aObject: TJsonObject; aParam: string; AValue: Int64);
begin
{$IFNDEF FPC}
  aObject.AddPair(TJsonPair.Create(TJSONString.Create(aParam.ToLower), TJsonNumber.Create(AValue)))
{$ENDIF FPC}
end;

procedure JsonPair(aObject: TJsonObject; aParam: string; AValue: Double);
begin
{$IFNDEF FPC}
  aObject.AddPair(TJsonPair.Create(TJSONString.Create(aParam.ToLower), TJsonNumber.Create(AValue)))
{$ENDIF FPC}
end;

procedure JsonPair(aObject: TJsonObject; aParam: string; AValue: Extended);
begin
{$IFNDEF FPC}
  aObject.AddPair(TJsonPair.Create(TJSONString.Create(aParam.ToLower), TJsonNumber.Create(AValue)))
{$ENDIF FPC}
end;

procedure JsonPair(aObject: TJsonObject; aParam: string; AValue: boolean);
begin
{$IFNDEF FPC}
  aObject.AddPair(TJsonPair.Create(TJSONString.Create(aParam), TJsonBool.Create(AValue)))
{$ENDIF FPC}
end;

procedure JsonPair(aObject: TJsonObject; aParam: string; AValue: TJsonArray); overload;
begin
{$IFNDEF FPC}
  aObject.AddPair(aParam, AValue);
{$ENDIF FPC}
end;

procedure JsonPair(aObject: TJsonObject; aParam: string; AValue: TJsonObject); overload;
begin
{$IFNDEF FPC}
  aObject.AddPair(TJsonPair.Create(aParam, AValue));
{$ENDIF FPC}
end;

{$IFNDEF FPC}

procedure JsonPair(aObject: TJsonObject; aParam: string; AValue: TJSONValue); overload;
begin
  aObject.AddPair(TJsonPair.Create(aParam, AValue));
end;
{$ENDIF FPC}

function JsonString(aTitle, AValue: String): TJsonObject;
begin
  Result := TJsonObject.Create;
{$IFNDEF FPC}
  Result.AddPair(aTitle, AValue);
{$ENDIF FPC}
end;

function JsonResultString(AValue: string): string;
var
  vResponse: TJsonObject;
begin
  vResponse := TJsonObject.Create;
{$IFNDEF FPC} vResponse.AddPair('Result', AValue); {$ENDIF FPC}
  Result := vResponse.ToString;
  vResponse.Free;
end;

{$ENDREGION 'Json'}

function JsonReformat(const aJson: string; Indented: boolean = true): string;
{$IFNDEF FPC}
var
  JsonWriter: TJsonStringWriter;
  JsonReader: TJsonStringReader;
begin
  JsonReader := TJsonStringReader.Create(aJson);
  JsonWriter := TJsonStringWriter.Create;

  if Indented then
    JsonWriter.Formatting := TJsonFormatting.Indented;

  try
    JsonWriter.WriteToken(JsonReader);
    Result := JsonWriter.ToString;
  finally
    JsonWriter.Free;
    JsonReader.Free;
  end;
{$ELSE}

begin
  Result := '{}';
{$ENDIF FPC}
end;

function JsonPrettyOld(aJsonObject: TJsonObject; vEscape: boolean = true): string;
var
{$IFNDEF FPC} vJSONScenario: TJSONValue; {$ENDIF FPC}
  sJson: string;
begin
{$IFNDEF FPC}
  sJson := aJsonObject.ToJSON;
  vJSONScenario := TJsonObject.ParseJSONValue(sJson, False);
  if vJSONScenario <> nil then
    try
      Result := JsonPrettyOld(sJson, vEscape);
    finally
      vJSONScenario.Free
    end
  else
    Result := sJson;
{$ENDIF  FPC}
  begin
  end;
end;

function JsonPrettyRaw(aJsonObject: TJsonObject; vEscape: boolean = true): string;
begin
  Result := JsonPrettyOld(aJsonObject.ToString, vEscape);
end;

function JsonPrettyOld(aJsonString: string; vEscape: boolean = true): string;
{$IFNDEF FPC}
var
  vJSONScenario: TJSONValue;
begin
  vJSONScenario := TJsonObject.ParseJSONValue(aJsonString, False);
  if vJSONScenario <> nil then
    try
      JsonReformat(aJsonString, true)
    finally
      vJSONScenario.Free;
    end
  else
    Result := aJsonString;
{$ELSE}
// Result := aJsonString;
begin
  Result := aJsonString;
{$ENDIF FPC}
end;

function JsonObject(aTitle: string; AValue: TJsonObject): TJsonObject;
{$IFNDEF FPC}
var
  aPair: TJsonPair;
begin
  aPair := AValue.Get(aTitle);
  if Assigned(aPair) then
    Result := (aPair.JsonValue as TJsonObject)
  else
    Result := nil;
{$ELSE}
// Result := aJsonString;
begin
  Result := nil;
{$ENDIF FPC}
end;

function JsonResultArray(aTitle: string; AValue: TJsonArray): TJsonObject;
begin
  Result := TJsonObject.Create;
{$IFNDEF FPC} Result.AddPair(IfThen(aTitle = '', 'Result', aTitle), AValue); {$ENDIF FPC}
end;

function JsonResult(AValue: string): TJsonObject;
begin
  Result := TJsonObject.Create;
{$IFNDEF FPC} Result.AddPair('Result', AValue); {$ENDIF FPC}
end;

function JsonDecodeDateStrict(const aDate: string): TDate;
var
  Year, Month, Day: word;
begin
  // yyyy-mm-dd
  // 1234567890
  Year := strtoint(Copy(aDate, 1, 4));
  Month := strtoint(Copy(aDate, 6, 2));
  Day := strtoint(Copy(aDate, 9, 2));
  Result := EncodeDate(Year, Month, Day);
end;

function JsonDecodeDate(const aDate: string): TDateTime;
var
  Year, Month, Day: word;
begin
  // yyyy-mm-dd
  // 1234567890
  Year := strtoint(Copy(aDate, 1, 4));
  Month := strtoint(Copy(aDate, 6, 2));
  Day := strtoint(Copy(aDate, 9, 2));
  Result := EncodeDate(Year, Month, Day);
end;

function JsonFloatToStr(const aFloat: Double; digits: integer): string;
var
  FS_ENUS: TFormatSettings;
begin
{$IFNDEF FPC} FS_ENUS := TFormatSettings.Create('en-US'); {$ENDIF FPC}
  Result := System.Math.RoundTo(aFloat, digits).ToString(FS_ENUS);
  Result := StringReplace(Result, ',', '.', [rfReplaceAll, rfIgnoreCase]);
end;

function JsonStringToFloatLegacy(const aString: string): Double;
var
  Position, l, S: integer;
  r: Double;
  sLeft, sRight: string;
begin

  if IsNumber(aString) then
    Result := aString.ToDouble
  else
  begin

    Position := Pos('.', aString);

    if Position <= 0 then
      Position := Pos(',', aString);

    if Position > 1 then
    begin
      sLeft := Copy(aString, 1, Position - 1);
      l := sLeft.ToInteger;

      if (Position > 1) and (Length(aString) > Position) then
      begin
        sRight := Copy(aString, Position + 1, Length(aString) - Position);
        // - 1
      end
      else
        sRight := '0';
      S := Length(sRight);
      r := sRight.ToInteger / (10 * S);

      Result := l + r;
    end
    else
    begin
      Result := StrToFloat(StringReplace(aString, '.', ',', []));
    end;
  end;
end;

function JsonStringToFloat(const aString: string): Double;
const
  Komma: TFormatSettings = (DecimalSeparator: ',');
  Dot: TFormatSettings = (DecimalSeparator: '.');
begin
  if not TryStrToFloat(aString, Result, Dot) then
    Result := StrToFloat(aString, Komma);
end;

function JsonEncodeDate(aDate: TDateTime): string;
begin
  Result := FormatDateTime('yyyy-mm-dd', aDate);
end;

function JsonEncodeDate(aDate: TDate): string;
begin
  Result := FormatDateTime('yyyy-mm-dd', aDate)
end;

function JsonEncodeDateTime(aDateTime: TDateTime): string;
begin
  Result := FormatDateTime('yyyy-mm-dd hh:mm', aDateTime);
end;

function JanuaBoolJson(aBool: string): boolean;
begin
  if LowerCase(aBool) = 'true' then
    Result := true
  else
    Result := False;

end;

// Json Object Management Strings
function JsonObjectToString(const aObject: TJsonObject): string;
begin
{$IFDEF delphixe} Result := aObject.ToString {$ENDIF}
{$IFDEF fpc} Result := aObject.AsString {$ENDIF}
end;

function JsonObjectToJSON(const aObject: TJsonObject): string;
begin
  Result := aObject.ToJSON
end;

function JsonObjectToPretty(const aObject: TJsonObject): string;
begin

end;

function JsonObjectParse(var aObject: TJsonObject; const aJson: string): boolean;
var
  tmpValue: TJSONValue;
begin
  Result := False;
  if Assigned(aObject) then
    aObject := TJsonObject.Create;
{$IFDEF delphixe}
  tmpValue := TJsonObject.ParseJSONValue(BytesOf(UTF8String(aJson)), 0);
  Result := tmpValue is TJsonObject;
  if Result then
    tmpValue := as TJsonObject;
{$ENDIF}
{$IFDEF fpc}
  aObject := GetJSON(aJson) as TJsonObject;
{$ENDIF}
end;

function JanuaJsonBool(aBool: boolean): string;
begin
  if aBool then
    Result := 'True'
  else
    Result := 'False';

end;

function JsonObjectError(aError: string): TJsonObject;
begin
  Result := TJsonObject.Create;
  JsonPair(Result, 'Result', False);
{$IFDEF FPC}
{$ELSE}
  Result.AddPair('Message', 'Procedure or Server Error');
  Result.AddPair('Error', aError);
{$ENDIF FPC}
end;

function JsonError(aError: string): string;
begin
{$IFDEF FPC}
  Result := JsonObjectError(aError).AsString;
{$ELSE}
  Result := JsonPretty(JsonObjectError(aError).ToJSON);
{$ENDIF FPC}
end;

function JsonParse(aJson: string): TJsonObject;
// Specifiche 2018-0001 JsonParse sostituito il Parser con parser soprastante per test UTF8
{$IFNDEF fpc}
var
  tmp: TJSONValue;
{$ENDIF fpc}
begin
  Result := nil;
{$IFDEF fpc}
  Result := GetJSON(aJson) as TJsonObject;
{$ELSE}
  if aJson <> '' then
  begin
    { convert String to JSON }
    tmp := TJsonObject.ParseJSONValue(BytesOf(UTF8String(aJson)), 0);
    // Specifiche 2018-0001 JsonParse sostituito il Parser con parser soprastante per test UTF8
    Assert(tmp is TJsonObject, 'JsonParse text is not a Json Object ');
    Result := TJsonObject(tmp);
  end
  else
    Result := TJsonObject.Create;
{$ENDIF}
end;

{ TJanuaJson }

class function TJanuaJson.BuildSerializerConfig(ASerializers: TNSSet): INeonConfiguration;
var
  LVis: TNeonVisibility;
  LMembers: TNeonMembersSet;
begin
  if Assigned(FNeonJsonConfig) then
    Result := FNeonJsonConfig
  else
  begin
    LVis := [];
    LMembers := [TNeonMembers.Standard];
    Result := TNeonConfiguration.Default;

    // Case settings
    Result.SetMemberCustomCase(nil);
    {
      // Different Suported Cases
      Result.SetMemberCase(TNeonCase.CamelCase);
      Result.SetMemberCase(TNeonCase.SnakeCase);
      Result.SetMemberCase(TNeonCase.UpperCase);
    }
    Result.SetMemberCase(TNeonCase.LowerCase);

    {
      // Custom Case Sample
      Result
      .SetMemberCase(TNeonCase.CustomCase)
      .SetMemberCustomCase(FCustomCaseAlgo);
    }

    // Member type settings (EXclude Fields but Include Properties)
    // LMembers := LMembers + [TNeonMembers.Fields];
    LMembers := LMembers + [TNeonMembers.Properties];
    Result.SetMembers(LMembers);

    // F Prefix setting (Not Set because I do not Serialize Fields)
    // Result.SetIgnoreFieldPrefix(chkIgnorePrefix.Checked);

    // Use UTC Date (I Use UTC Date);
    Result.SetUseUTCDate(true);

    // Pretty Printing (On Debug I use Pretty Printing but on Production Save space and Time)
    Result.SetPrettyPrint({$IFDEF DEBUG}true{$ELSE}False {$ENDIF});

    // Visibility settings (Only Private and Protected)
    // LVis := LVis + [mvPrivate];
    // LVis := LVis + [mvProtected];
    LVis := LVis + [mvPublic];
    LVis := LVis + [mvPublished];
    Result.SetVisibility(LVis);

    // Custom Serializers
    {
      if TSerializersType.CustomNeon in ASerializers then
      RegisterNeonSerializers(Result.GetSerializers);

      if TSerializersType.CustomDemo in ASerializers then
      RegisterDemoSerializers(Result.GetSerializers);
    }
  end;
end;

class function TJanuaJson.DeserializeSimple<T>(const AValue: string): T;
var
  LJSON: TJSONValue;
begin
  LJSON := TJsonObject.ParseJSONValue(AValue);
  if not Assigned(LJSON) then
    raise Exception.Create('Error parsing JSON string');
  try
    Result := DeserializeSimple<T>(LJSON);
  finally
    LJSON.Free;
  end;
end;

class function TJanuaJson.DeserializeSimple<T>(const AValue: TJSONValue): T;
var
  LValue: TValue;
  LReader: TNeonDeserializerJSON;
  LWriter: TNeonSerializerJSON;
begin
{$IFDEF DEBUG}
  var
  tmp := AValue.ToJSON;
{$ENDIF}
  LReader := TNeonDeserializerJSON.Create(BuildSerializerConfig);
  try
    LValue := LReader.JSONToTValue(AValue, TRttiUtils.Context.GetType(TypeInfo(T)));
    Result := LValue.AsType<T>;
  finally
    LReader.Free;
  end;
end;

class function TJanuaJson.ExtractJWT(const aJWT: string): string;
var
  aObject: TJsonObject;
  aJWTStrings: TStringDynArray;
  sTmp: string;
begin
  aObject := JsonParse(aJWT);
  try
    JsonValue(aObject, 'token', sTmp);
  finally
    aObject.Free;
  end;
  Result := sTmp;
  aJWTStrings := SplitString(sTmp, '.');
  FJsonJWT := System.NetEncoding.TNetEncoding.Base64URL.Decode(aJWTStrings[1]);
end;

class function TJanuaJson.SerializeJsonObject<T>(const AValue: T): TJSONValue;
var
  LWriter: TNeonSerializerJSON;
begin
  LWriter := TNeonSerializerJSON.Create(BuildSerializerConfig);
  try
    Result := LWriter.ValueToJSON(TValue.From<T>(AValue));
  finally
    LWriter.Free;
  end;
end;

class function TJanuaJson.SerializeJson(const AValue: TValue): TJSONValue;
var
  LWriter: TNeonSerializerJSON;
begin
  LWriter := TNeonSerializerJSON.Create(BuildSerializerConfig);
  try
    Result := LWriter.ValueToJSON(AValue);
  finally
    LWriter.Free;
  end;

end;

class function TJanuaJson.SerializeSimple<T>(const AValue: T): string;
var
  LJSON: TJSONValue;
begin
  LJSON := SerializeJson(TValue.From<T>(AValue));
  try
    Result := TNeon.Print(LJSON, BuildSerializerConfig.GetPrettyPrint);
  finally
    LJSON.Free;
  end;
end;

{ TDMCJWT }

constructor TDMCJWT.Create(const aJsonJWT: string);
begin

end;

end.
