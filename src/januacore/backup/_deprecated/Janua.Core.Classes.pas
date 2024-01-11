unit Janua.Core.Classes;

{$IFDEF FPC}
{$mode DELPHI}{$H+}
{$ENDIF}

interface

uses
{$IFNDEF FPC}
  // System Libraries Delphi .............................................................................
  System.NetEncoding, System.JSON, System.JSONConsts, Datasnap.Provider, Datasnap.DBClient,
  Classes, SysUtils, System.Math, System.Strutils, System.Variants, IOUtils, Soap.EncdDecd, System.Rtti,
  // Custom Libraries ........................................................
  Writers, Delphi.Mocks.Helpers,
  // Json Components .........................................................
  System.JSON.Readers, System.JSON.Types, System.JSON.Writers, System.JSON.BSON,
  // Indy Delphi only

  // Data Access Components
  Data.DB,
{$ELSE}
  // System Libraries Lazarus .............................................................................
  Classes, SysUtils, Math, Strutils, Variants, Typinfo, DB, fpjson, jsonparser, base64,
{$ENDIF FPC}
  // INdy Components
  IdBaseComponent, IdComponent, IdRawBase, IdRawClient, IdIcmpClient, IdURI, IdGlobal, IdCoderMIME,
  /// Devart units (both fpc and Delphi compatible ................
  MemData, MemDS, VirtualTable,

{$IFDEF MSWINDOWS}
  Winapi.Windows, ShellAPI, ShlObj, ActiveX, Soap.XSBuiltIns, Web.HTTPApp,
{$ENDIF MSWINDOWS}
{$IFDEF MACOS}
  MacApi.CoreFoundation, MacApi.ObjectiveC,
{$IFNDEF IOS}
  MacApi.AppKit, MacApi.CocoaTypes, MacApi.Foundation,
{$ENDIF IOS}
{$IFDEF IOS}
  iOSapi.Foundation,
{$ENDIF}
{$IFDEF POSIX}
  Posix.Stdlib,
{$ENDIF POSIX}
{$ENDIF MACOS}
  // janua common Libraries ....................................................
  Janua.Core.Roundings;

Type
  TJanuaPlatform = (josWindows, josWin64, josAndroid, josIOS32, josiOS64, josWin32);

  TJanuaBarcodeType = (jbtEAN13, jbtEAN8, jbtOther);

var
  JanuaPlatforms: set of TJanuaPlatform;

const
  c_UnassignedDate = -693594;

type
  TJanuaServerLog = Record
    EMessage: UnicodeString;
    Application: UnicodeString;
    Form: UnicodeString;
    ProcedureName: UnicodeString;
    ETime: TDateTime;
  End;

type
  TJanuaLoginError = (jleWrongPassword, jleWrongUsername, JleWrongEmail, jleSystemError);

type
  TJanuaRegisterError = (jreNone, jreUserAlreadyRegistered, jreWrongUsername, jreWrongEmail, jreSystemError);

Type
  TJanuaApplication = (japHealth, japFootBall, japErgoMercator, japAttorneys, japCloud);

procedure JanuaFreeAndNil(Obj: TObject);

// Code64 Encoding 64 Functions.

function Encode64(const S: string; const ByteEncoding: IIdTextEncoding = nil): string;
function Decode64(const S: string; const ByteEncoding: IIdTextEncoding = nil): string;
function Encode64UTF8(const S: string): string;
function Decode64UTF8(const S: string): string;
function DecodeString64(const Input: string): string;
function EncodeString64(const Input: string): string;

/// Math Functions
///
{ JanuaProject Rounding Functions **************************************************************** }
function FRound(number: Double; digits: integer): Double; overload;
function FRound(number: Single; digits: integer): Double; overload;
function FRound(number: Extended; digits: integer): Double; overload;

/// String check and Code functions
///
{ ERP Accounting Related Functions **************************************************************** }
function FPartitaIva(piva: string; var Error: string; var specification: string): boolean;
// funzione che cerca e sostituisce un testo all'intero di un richEdit .........
function GenerateInternalBarcode(P_ID: integer; p_size: integer; p_color: integer): string;
// funzione che genera un barcode 'calcolato' per i dati interni macchina.......
function GenerateEAN13(p_barcode: string): string;
function generateAnagBarcode(p_barcode: string): string;
function generateIntAnagBarcode(p_barcode: integer): string;
function CheckDigitBarcode(var aBarcode: string; aBarcodeType: TJanuaBarcodeType): boolean;

{ Test TValue *********************************************************************** }
{$IFNDEF FPC}
function ValueTestInteger(aValue: TValue): boolean;
function ValueTestString(aValue: TValue): boolean;
function ValueTestDateTime(aValue: TValue): boolean;
{ Dataset Related Functions *********************************************************************** }
procedure CopyRecord(Dataset, dataclone: TDataset);
procedure CloneDataset(fromDataset: TDataset; toDataset: TClientDataset); overload;
procedure CloneDataset(Dataset, dataclone: TCustomClientDataset); overload;
function CloneDatasetToStream(Dataset, dataclone: TCustomClientDataset): boolean;
function GetParamByName(const aName: string; aDataset: TClientDataset): TParam;
{$ENDIF FPC}
procedure CloneDataset(Dataset: MemDS.TMemDataSet; dataclone: VirtualTable.TVirtualTable); overload;
function ExportDatasetToStream(Dataset: MemDS.TMemDataSet; aStream: TStream): boolean;
function ExportDatasetToXMLMemo(aDataset: MemDS.TMemDataSet; aList: TStrings): boolean;
function GetFieldByName(Dataset: TDataset; fieldName: string; const CheckFields: boolean = False): TField;
function ExistFieldByName(Dataset: TDataset; fieldName: string): boolean;
function StoreBlobToField(aField: TBlobField; aBlob: MemData.TBlob): boolean;
function StoreFieldToBlob(aFrom: TBlobField; aTo: MemData.TBlob): boolean;
function StoreBlobToBlob(aField: MemData.TBlob; aBlob: MemData.TBlob): boolean;
function StoreStreamToBlob(aStream: TStream; aBlob: MemData.TBlob): boolean;


// funzioni a monte di GetFieldValue

function GetFieldAsString(aDataset: TDataset; aFieldName: string): string;
function GetFieldAsDate(aDataset: TDataset; aFieldName: string): TDateTime;
function GetFieldAsInteger(aDataset: TDataset; aFieldName: string): integer;
function GetFieldAsLargeInt(aDataset: TDataset; aFieldName: string): Int64;
function GetFieldAsBoolean(aDataset: TDataset; aFieldName: string): boolean;

procedure GetFieldValue(var aValue: string; aDataset: TDataset; aFieldName: string;
  const CheckFields: boolean = False); overload;
procedure GetFieldValue(var aValue: Int64; aDataset: TDataset; aFieldName: string;
  const CheckFields: boolean = False); overload;
procedure GetFieldValue(var aValue: integer; aDataset: TDataset; aFieldName: string;
  const CheckFields: boolean = False); overload;
procedure GetFieldValue(var aValue: boolean; aDataset: TDataset; aFieldName: string;
  const CheckFields: boolean = False); overload;
procedure GetFieldValue(var aValue: TDate; aDataset: TDataset; aFieldName: string;
  const CheckFields: boolean = False); overload;
procedure GetFieldValue(var aValue: TDateTime; aDataset: TDataset; aFieldName: string;
  const CheckFields: boolean = False); overload;
procedure GetFieldValue(var aValue: Extended; aDataset: TDataset; aFieldName: string;
  const CheckFields: boolean = False); overload;
procedure GetFieldValue(var aValue: Double; aDataset: TDataset; aFieldName: string;
  const CheckFields: boolean = False); overload;
procedure GetFieldValue(var aValue: Real; aDataset: TDataset; aFieldName: string;
  const CheckFields: boolean = False); overload;
// funzione che legge un parametro e ne ritorna un default basandosi su un dataset
function ReadParam(parDataset: TDataset; const sKey: string; const sDefault: string): string;

/// Web and Http string functions ...........................................................

// Web Json and Html Function ...............................................................
function EncodeURIComponent(const ASrc: string): UTF8String;
procedure HtmlReplace(var aTemplate: string; aParam: string; aValue: string); overload;
procedure HtmlReplace(var aTemplate: string; aParam: string; aValue: integer); overload;
procedure HtmlReplace(var aTemplate: string; aParam: string; aValue: Extended); overload;
procedure HtmlReplace(var aTemplate: string; aParam: string; aValue: TDateTime); overload;

procedure JavascriptReplace(var aTemplate: string; aParam: string; aValue: Extended); overload;
procedure JavascriptReplace(var aTemplate: string; aParam: string; aValue: boolean); overload;

{$IFNDEF FPC}
// Json Functions .............................................................................
function JsonReformat(const AJson: string; Indented: boolean): string;

/// This function converts a Float Number to a String to be exported in Xml Json English format
function JsonFloatToStr(const aFloat: Double; digits: integer): string;
function JsonStringToFloat(const aString: string): Double;

function JsonError(aError: string): string;
// This procedure converts a Json String to Boolean Value and Back
function JanuaJsonBool(aBool: boolean): string;
function JanuaBoolJson(aBool: string): boolean;

// This procedure Encode and Decodes a Date - DateTime to String in Janua Std Format.
function JsonEncodeDate(aDate: TDateTime): string;
function JsonEncodeDateTime(aDateTime: TDateTime): string;
function JsonDecodeDate(const aDate: string): TDateTime;
{$ENDIF FPC}
function Ping(const aServer: string): boolean;

function URLEncode(const AStr: String): String;
function URLParamEncode(const aParam: String): String;
function StripstringHtml(sHtml: UnicodeString): UnicodeString;



// This function makes easy to add pairs to a Json Object
{$IFNDEF FPC}
function JsonObjectError(aError: string): TJsonObject;

procedure JsonPair(aObject: TJsonObject; aParam: string; aValue: string); overload;
procedure JsonPair(aObject: TJsonObject; aParam: string; aValue: TDateTime); overload;
procedure JsonPair(aObject: TJsonObject; aParam: string; aValue: Int64); overload;
procedure JsonPair(aObject: TJsonObject; aParam: string; aValue: Extended); overload;
procedure JsonPair(aObject: TJsonObject; aParam: string; aValue: Double); overload;
procedure JsonPair(aObject: TJsonObject; aParam: string; aValue: boolean); overload;
procedure JsonPair(aObject: TJsonObject; aParam: string; aValue: TJsonArray); overload;
procedure JsonPair(aObject: TJsonObject; aParam: string; aValue: TJsonObject); overload;

// This function Stores a Value into a Json Variable ......................................
procedure JsonValue(aObject: TJsonObject; aParam: string; aValue: string); overload;
procedure JsonValue(aObject: TJsonObject; aParam: string; aValue: TDateTime); overload;
procedure JsonValue(aObject: TJsonObject; aParam: string; aValue: Int64); overload;
procedure JsonValue(aObject: TJsonObject; aParam: string; aValue: Extended); overload;
procedure JsonValue(aObject: TJsonObject; aParam: string; aValue: Double); overload;
procedure JsonValue(aObject: TJsonObject; aParam: string; aValue: boolean); overload;
procedure JsonValue(aObject: TJsonObject; aParam: string; aValue: TJsonArray); overload;
procedure JsonValue(aObject: TJsonObject; aParam: string; aValue: TJsonObject); overload;

// This create a Json Object with Result Values
function JsonResultString(aValue: string): string;
function JsonResult(aValue: string): TJsonObject;
function JsonString(aTitle, aValue: String): TJsonObject;
function JsonResultArray(aTitle: string; aValue: TJsonArray): TJsonObject;
function JsonObject(aTitle: string; aValue: TJsonObject): TJsonObject;

// Function to pretty format JsonObjects or Json Strings.
function JsonPretty(aJsonObject: TJsonObject; vEscape: boolean = true): string; overload;
function JsonPretty(aJsonString: string; vEscape: boolean = true): string; overload;
function JsonPrettyRaw(aJsonObject: TJsonObject; vEscape: boolean = true): string;
{$ENDIF FPC}
// Standard StringList Functions
function GetListInteger(aList: TStrings; aParam: string): integer; overload;
function GetListInt64(aList: TStrings; aParam: string): Int64; overload;
function GetListExtended(aList: TStrings; aParam: string): Double; overload;
function GetListString(aList: TStrings; aParam: string): string; overload;
function GetListDate(aList: TStrings; aParam: string): TDateTime; overload;
function GetListBoolean(aList: TStrings; aParam: string): boolean; overload;

{$IFDEF MSWINDOWS}
// WebBroker Public functions
function AddCookie(var aResponse: TWebResponse; const iValid: integer; const sKey, sValue: string): TDateTime;
function HttpGetParamValue(aRequest: TWebRequest; aParam: string): string; overload;
function HttpGetParamInteger(aRequest: TWebRequest; aParam: string): integer;
function HttpGetCookieInteger(aRequest: TWebRequest; aParam: string): integer;
function HttpGetCookie(aRequest: TWebRequest; aParam: string): string;
function HttpGetParamLargeInt(aRequest: TWebRequest; aParam: string): Int64;
function HttpGetParamDate(aRequest: TWebRequest; aParam: string): TDateTime;
function HttpGetParamDouble(aRequest: TWebRequest; aParam: string): Double;
function HttpGetParamBoolean(aRequest: TWebRequest; aParam: string): boolean;
{$ENDIF}
function HttpParseNumber(sNumber: string): Double;
{ X/Html  Related Functions *********************************************************************** }
/// <summary>
/// realizza un tag Xml o Html da una string con un TagName
/// </summary>
/// <param name="TagName">
/// Nome del tag XHtml
/// </param>
/// <param name="Value">
/// Stringa da Includere ed incodare
/// </param>
function MakeTag(TagName, Value: String): string;
function XMLDateDecode(aDate: System.OleVariant): TDateTime;
// converte i campi di un dataset in  xml creation functions for dataset streams......
function MakeXML(Dataset: TDataset): string;

// String Manipulation functions

{ String Related Functions *********************************************************************** }
procedure ReplaceStringPos(var text: TStringList; searchstr: string; newstr: string);
function ConvertFloatToString(const Value: Double; const digits: integer): string;
function CompareStringLists(List1, List2: TStringList): boolean;
procedure CompareStringListsDiff(List1, List2: TStringList; Missing1, Missing2: TStrings);
procedure SortTStrings(Strings: TStrings);
function StripString(const strStringa: string): string;
function StripStringWide(const strStringa: UnicodeString): UnicodeString;
function IsNumeric(pTestVar: string): boolean;
function Valctrl(resto: integer): string;
function ValPari(carattere: char): integer;
function ValDispari(carattere: char): integer;
function IsMail(email: string): boolean;
function VerifyFiscalCode(const Codfiscale: String; var strErrore: string): boolean;

procedure StringListAssign(ToList: TStrings; FromList: TStrings; const CheckLength: boolean); overload;

procedure StringListAssignBack(ToList: TStrings; FromList: TStrings; const CheckLength: boolean); overload;

procedure StringListAssign(ToList: TStrings; FromList: string; const CheckLength: boolean); overload;
procedure StringAssign(var ToList: string; FromList: string; const CheckLength: boolean); overload;
procedure StringAssign(var ToList: string; FromList: TStrings; const CheckLength: boolean); overload;

{$IFDEF ANDROID}
function IsValidEmail(email: string): boolean;
{$ELSE}
function IsValidEmail(const Value: string): boolean;
{$ENDIF}
// allinea testo a sinistra left pad
function Lpad(padString: string; strlength: integer; padChar: string): string; overload;
// allinea numero a sinistra e lo trsforma in testo di conseguenza
function Lpad(padNum: Int64; strlength: integer; padChar: string): string; overload;
// allinea numero a sinistra e lo trsforma in testo di conseguenza
function Lpad(padNum: integer; strlength: integer; padChar: string): string; overload;
// allinea testo a sinistra left pad
function Rpad(padString: string; strlength: integer; padChar: string): string; overload;
// allinea testo a destra right pad overlod input numerico
function Rpad(padNum: Int64; strlength: integer; padChar: string): string; overload;

// funzione indentazione

/// <summary>
/// This function indents
/// </summary>
/// <param name="length">
/// length of every indent in spaces
/// </param>
/// <param name="level">
/// level of indenting
/// </param>
function Indent(length, level: smallint): string;

{ Operating System Related Functions ************************************************************** }
procedure Cls;
{$IFDEF IOS} function PNSStr(const AStr: String): PNSString; {$ENDIF}
procedure DebugMsg(const Msg: String);
function WriteLog(log: string; logfile: string): boolean;
function WriteCustomLog(log: string; logfile: string): boolean;
function ElapsedTime(const et, st: TDateTime): string;
function OpenFolderAndSelectFile(const FileName: string): boolean;

{$IFDEF MSWINDOWS}

const
  OFASI_EDIT = $0001;
  OFASI_OPENDESKTOP = $0002;

{$IFDEF UNICODE}
function ILCreateFromPath(pszPath: PChar): PItemIDList stdcall; external shell32 name 'ILCreateFromPathW';
{$ELSE}
function ILCreateFromPath(pszPath: PChar): PItemIDList stdcall; external shell32 name 'ILCreateFromPathA';
{$ENDIF}
procedure ILFree(pidl: PItemIDList)stdcall; external shell32;
function SHOpenFolderAndSelectItems(pidlFolder: PItemIDList; cidl: Cardinal; apidl: pointer; dwFlags: DWORD)
  : HRESULT; stdcall; external shell32;
{$ENDIF}

implementation

/// ******* base64 Encoding - Decoding functions

function Encode64(const S: string; const ByteEncoding: IIdTextEncoding = nil): string;
begin
  // needs  ..., IdGlobal, IdCoderMIME;
  Result := TIdEncoderMIME.EncodeString(S, ByteEncoding);
end;

function Decode64(const S: string; const ByteEncoding: IIdTextEncoding = nil): string;
begin
  // needs  ..., IdGlobal, IdCoderMIME;
  Result := TIdDecoderMIME.DecodeString(S, ByteEncoding);
end;

function Encode64UTF8(const S: string): string;
begin
  Result := Encode64(S, IndyTextEncoding_UTF8);
end;

function Decode64UTF8(const S: string): string;
begin
  Result := Decode64(S, IndyTextEncoding_UTF8);
end;

function DecodeString64(const Input: string): string;
{$IFNDEF FPC}
var
  InStr, OutStr: TStringStream;
begin
  InStr := TStringStream.Create(Input);
  try
    OutStr := TStringStream.Create('', TEncoding.UTF8);
    try
      DecodeStream(InStr, OutStr);
      Result := OutStr.DataString;
    finally
      OutStr.Free;
    end;
  finally
    InStr.Free;
  end;
{$ELSE}

begin
  Result := DecodeStringBase64(Input);
{$ENDIF FPC}
end;

function EncodeString64(const Input: string): string;
{$IFNDEF FPC}
var
  InStr, OutStr: TStringStream;
begin
  // requires Soap.EncdDecd
  InStr := TStringStream.Create(Input, TEncoding.UTF8);
  try
    OutStr := TStringStream.Create('');
    try
      EncodeStream(InStr, OutStr);
      Result := OutStr.DataString;
    finally
      OutStr.Free;
    end;
  finally
    InStr.Free;
  end;
{$ELSE}

begin
  Result := EncodeStringBase64(Input);
{$ENDIF FPC}
end;

{ :Converts Unicode string to Ansi string using specified code page.
  @param   ws       Unicode string.
  @param   codePage Code page to be used in conversion.
  @returns Converted ansi string.
}

{$IFDEF IOS}

function PNSStr(const AStr: String): PNSString;
begin
  Result := (NSStr(AStr) as ILocalObject).GetObjectID
end;
{$ENDIF}

function ElapsedTime(const et, st: TDateTime): string;
var
  Hour, Min, Sec, MSec: Word;
begin
  DecodeTime(et - st, Hour, Min, Sec, MSec);
  Result := Format('%.2d:%.2d:%.2d', [Hour, Min, Sec]);
end;

{$IFNDEF FPC}

function ValueTestInteger(aValue: TValue): boolean;
begin

end;

function ValueTestString(aValue: TValue): boolean;
begin

end;

function ValueTestDateTime(aValue: TValue): boolean;
begin

end;
{$ENDIF}

function CheckDigitBarcode(var aBarcode: string; aBarcodeType: TJanuaBarcodeType): boolean;
var
  numero, totale_pari, totale_dispari, totale, multiplo: integer;
  check_digit, stringa: string;
begin
  Case aBarcodeType of

    TJanuaBarcodeType.jbtEAN8:
      begin
        stringa := copy(aBarcode, 1, 7);

        totale_pari := 0;
        numero := strtoint(aBarcode[2]);
        totale_pari := totale_pari + numero;
        numero := strtoint(aBarcode[4]);
        totale_pari := totale_pari + numero;
        numero := strtoint(aBarcode[6]);
        totale_pari := totale_pari + numero;
        // totale_pari := totale_pari * 3;

        totale_dispari := 0;
        numero := strtoint(aBarcode[1]);
        totale_dispari := totale_dispari + numero;
        numero := strtoint(aBarcode[3]);
        totale_dispari := totale_dispari + numero;
        numero := strtoint(aBarcode[5]);
        totale_dispari := totale_dispari + numero;
        numero := strtoint(aBarcode[7]);
        totale_dispari := totale_dispari + numero;
        totale_dispari := totale_dispari * 3;

        totale := totale_pari + totale_dispari;
        multiplo := trunc(totale / 10);
        multiplo := multiplo * 10 + 10;
        multiplo := multiplo - totale;
        if multiplo > 9 then
        begin
          multiplo := multiplo - 10;
        end;
        check_digit := inttostr(multiplo);

        if length(aBarcode) = 8 then
        begin
          Result := copy(aBarcode, 8, 1) = check_digit;
        end
        else
        begin
          Result := true;
          aBarcode := stringa + check_digit;
        end;
      end;
    TJanuaBarcodeType.jbtEAN13:
      begin
        stringa := copy(aBarcode, 1, 12);
        totale_pari := 0;
        numero := strtoint(aBarcode[2]);
        totale_pari := totale_pari + numero;
        numero := strtoint(aBarcode[4]);
        totale_pari := totale_pari + numero;
        numero := strtoint(aBarcode[6]);
        totale_pari := totale_pari + numero;
        numero := strtoint(aBarcode[8]);
        totale_pari := totale_pari + numero;
        numero := strtoint(aBarcode[10]);
        totale_pari := totale_pari + numero;
        numero := strtoint(aBarcode[12]);
        totale_pari := totale_pari + numero;
        totale_pari := totale_pari * 3;

        totale_dispari := 0;
        numero := strtoint(aBarcode[1]);
        totale_dispari := totale_dispari + numero;
        numero := strtoint(aBarcode[3]);
        totale_dispari := totale_dispari + numero;
        numero := strtoint(aBarcode[5]);
        totale_dispari := totale_dispari + numero;
        numero := strtoint(aBarcode[7]);
        totale_dispari := totale_dispari + numero;
        numero := strtoint(aBarcode[9]);
        totale_dispari := totale_dispari + numero;
        numero := strtoint(aBarcode[11]);
        totale_dispari := totale_dispari + numero;

        totale := totale_pari + totale_dispari;
        multiplo := trunc(totale / 10);
        multiplo := multiplo * 10 + 10;
        multiplo := multiplo - totale;
        if multiplo > 9 then
        begin
          multiplo := multiplo - 10;
        end;
        check_digit := inttostr(multiplo);
        if length(aBarcode) = 13 then
        begin
          Result := copy(aBarcode, 13, 1) = check_digit;
        end
        else
        begin
          Result := true;
          aBarcode := stringa + check_digit;
        end;

      end;
    TJanuaBarcodeType.jbtOther:
      Result := true;
  end;

end;

function HttpParseNumber(sNumber: string): Double;
var
  l, r, pl, pr, p, e: integer;
begin
  p := pos('.', sNumber);

  if p <= 0 then
    Result := sNumber.ToDouble
  else
  begin

    pl := p - 1;

    e := pos('e', LowerCase(sNumber));

    // i an e is present I try to detach it

    if e > 0 then
      pr := length(sNumber) - p - e
    else
      pr := length(sNumber) - p;

    if p > 0 then
    begin
      l := copy(sNumber, 0, pl).ToInteger;
      r := copy(sNumber, p + 1, pr).ToInteger;
      Result := l + r / Power(10, pr);
    end;
  end;
end;

{$IFNDEF FPC}

procedure JsonValue(aObject: TJsonObject; aParam: string; aValue: string);
var
  S: TJSONString;
begin
  S := aObject.Get(aParam).JsonValue as TJSONString;
  aValue := S.Value
end;

procedure JsonValue(aObject: TJsonObject; aParam: string; aValue: TDateTime);
var
  S: TJSONString;
begin
  S := aObject.Get(aParam).JsonValue as TJSONString;
  aValue := JsonDecodeDate(S.Value)
end;

procedure JsonValue(aObject: TJsonObject; aParam: string; aValue: Int64);
var
  S: TJsonNumber;
begin
  S := aObject.Get(aParam).JsonValue as TJsonNumber;
  aValue := S.Value.ToInt64
end;

procedure JsonValue(aObject: TJsonObject; aParam: string; aValue: Extended);
var
  S: TJsonNumber;
begin
  S := aObject.Get(aParam).JsonValue as TJsonNumber;
  aValue := S.Value.ToExtended()

end;

procedure JsonValue(aObject: TJsonObject; aParam: string; aValue: Double);
var
  S: TJsonNumber;
begin
  S := aObject.Get(aParam).JsonValue as TJsonNumber;
  aValue := S.Value.ToDouble()

end;

procedure JsonValue(aObject: TJsonObject; aParam: string; aValue: boolean);
var
  S: TJsonBool;
begin
  S := aObject.Get(aParam).JsonValue as TJsonBool;
  aValue := S.Value.ToBoolean
end;

procedure JsonValue(aObject: TJsonObject; aParam: string; aValue: TJsonArray);
var
  S: TJsonValue;
  aPair: TJSONPair;
begin
  aPair := aObject.Get(aParam);
  if Assigned(aPair) then
    aValue := (aPair.JsonValue as TJsonArray)
end;

procedure JsonValue(aObject: TJsonObject; aParam: string; aValue: TJsonObject);
var
  aPair: TJSONPair;
begin
  aPair := aObject.Get(aParam);
  if Assigned(aPair) then
    aValue := (aPair.JsonValue as TJsonObject)
  else
    aValue := nil;
end;

procedure JsonPair(aObject: TJsonObject; aParam: string; aValue: string);
begin
  aObject.AddPair(TJSONPair.Create(TJSONString.Create(aParam), TJSONString.Create(aValue)))
end;

procedure JsonPair(aObject: TJsonObject; aParam: string; aValue: TDateTime);
begin
  aObject.AddPair(TJSONPair.Create(TJSONString.Create(aParam), TJSONString.Create(JsonEncodeDate(aValue))))
end;

procedure JsonPair(aObject: TJsonObject; aParam: string; aValue: Int64);
begin
  aObject.AddPair(TJSONPair.Create(TJSONString.Create(aParam), TJsonNumber.Create(aValue)))
end;

procedure JsonPair(aObject: TJsonObject; aParam: string; aValue: Double);
begin
  aObject.AddPair(TJSONPair.Create(TJSONString.Create(aParam), TJsonNumber.Create(aValue)))
end;

procedure JsonPair(aObject: TJsonObject; aParam: string; aValue: Extended);
begin
  aObject.AddPair(TJSONPair.Create(TJSONString.Create(aParam), TJsonNumber.Create(aValue)))
end;

procedure JsonPair(aObject: TJsonObject; aParam: string; aValue: boolean);
begin
  aObject.AddPair(TJSONPair.Create(TJSONString.Create(aParam), TJsonBool.Create(aValue)))
end;

procedure JsonPair(aObject: TJsonObject; aParam: string; aValue: TJsonArray); overload;
begin
  aObject.AddPair(aParam, aValue);
end;

procedure JsonPair(aObject: TJsonObject; aParam: string; aValue: TJsonObject); overload;
begin
  aObject.AddPair(aParam, aValue);
end;

function JsonString(aTitle, aValue: String): TJsonObject;
begin
  Result := TJsonObject.Create;
  Result.AddPair(aTitle, aValue);
end;

function JsonResultString(aValue: string): string;
var
  vResponse: TJsonObject;
begin
  vResponse := TJsonObject.Create;
  vResponse.AddPair('Result', aValue);
  Result := vResponse.ToString;
  vResponse.Free;
end;

{$ENDIF FPC}
{$IFDEF MSWINDOWS}

function AddCookie(var aResponse: TWebResponse; const iValid: integer; const sKey, sValue: string): TDateTime;
var
  aCookie: TCookie;
  i: integer;
  Found: boolean;
begin
  Result := Now + 7;
  Found := False;

  if aResponse.Cookies.Count > 0 then
  begin
    for i := 0 to aResponse.Cookies.Count - 1 do
      if aResponse.Cookies[i].Name.ToLower = sKey.ToLower then
      begin
        aResponse.Cookies[i].Value := sValue;
        aResponse.Cookies[i].Expires := Result;
        aResponse.Cookies[i].Path := '/';
        Found := true;
        Exit
      end;

  end;

  if not Found then
  begin
    aCookie := aResponse.Cookies.Add;
    aCookie.Name := sKey;
    aCookie.Value := sValue;
    // aCookie.Domain := 'localhost:';
    aCookie.Path := '/';
    aCookie.Expires := Result;
  end;

end;

function HttpGetCookie(aRequest: TWebRequest; aParam: string): string;
begin
  Result := aRequest.CookieFields.Values['aParam'];
end;

function HttpGetCookieInteger(aRequest: TWebRequest; aParam: string): integer;
var
  S: string;
begin
  S := aRequest.CookieFields.Values['aParam'];
  if (S > '') and IsNumeric(S) then
    Result := S.ToInteger()
  else
    Result := 0;
end;

function HttpGetParamInteger(aRequest: TWebRequest; aParam: string): integer;
var
  S: string;
begin
  S := HttpGetParamValue(aRequest, aParam);
  if (S > '') and IsNumeric(S) then
    Result := S.ToInteger()
  else
    Result := 0;
end;

function HttpGetParamLargeInt(aRequest: TWebRequest; aParam: string): Int64;
var
  S: string;
begin
  S := HttpGetParamValue(aRequest, aParam);
  if (S > '') and IsNumeric(S) then
    Result := S.ToInt64()
  else
    Result := 0;
end;

function HttpGetParamDate(aRequest: TWebRequest; aParam: string): TDateTime;
var
  S: string;
begin
  S := HttpGetParamValue(aRequest, aParam);
  if S > '' then
    try
      Result := JsonDecodeDate(S);
    except
      on e: exception do
        Result := 0.0;
    end;

end;

function HttpGetParamDouble(aRequest: TWebRequest; aParam: string): Double;
var
  S: string;
begin
  S := HttpGetParamValue(aRequest, aParam);
  if S <> '' then
    Result := HttpParseNumber(S)
  else
    Result := 0.0;
end;

function HttpGetParamBoolean(aRequest: TWebRequest; aParam: string): boolean;
var
  S: string;
begin
  S := HttpGetParamValue(aRequest, aParam);
  if S <> '' then
    Result := JanuaBoolJson(S)
  else
    Result := False;
end;

function HttpGetParamValue(aRequest: TWebRequest; aParam: string): string;
var
  i: integer;
begin
  Result := (aRequest.QueryFields.Values[aParam]);
  if Result = '' then
    Result := (aRequest.ContentFields.Values[aParam]);

  if (Result = '') and (aRequest.ContentFields.Count > 0) and
    (pos('------WebKitFormBoundary', aRequest.ContentFields[0]) > 0) then
  begin
    for i := 0 to aRequest.ContentFields.Count - 1 do
    begin
      if pos(aParam, aRequest.ContentFields[i]) > 0 then
        Result := aRequest.ContentFields[i + 1];
    end;
    if (pos('------WebKitFormBoundary', Result) > 0) or (pos('=', Result) > 0) then
      Result := '';
  end;

  if Result = '' then
    Result := aRequest.CookieFields.Values[aParam];

end;
{$ENDIF}

// Standard StringList Functions
function GetListInteger(aList: TStrings; aParam: string): integer; overload;
begin
  Result := 0;
end;

function GetListInt64(aList: TStrings; aParam: string): Int64; overload;
begin
  Result := 0;
end;

function GetListExtended(aList: TStrings; aParam: string): Double; overload;
begin
  Result := 0.0;
end;

function GetListString(aList: TStrings; aParam: string): string; overload;
begin
  Result := '';
end;

function GetListDate(aList: TStrings; aParam: string): TDateTime; overload;
begin
  Result := 0.0;
end;

function GetListBoolean(aList: TStrings; aParam: string): boolean; overload;
begin
  Result := False;
end;

{$IFNDEF FPC}

function JsonReformat(const AJson: string; Indented: boolean): string;
var
  JsonWriter: TJsonStringWriter;
  JsonReader: TJsonStringReader;
begin
  JsonReader := TJsonStringReader.Create(AJson);
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
end;

function JsonPretty(aJsonObject: TJsonObject; vEscape: boolean = true): string;
var
  vJSONScenario: TJsonValue;
  sJson: string;
begin
  sJson := aJsonObject.ToJSON;
  vJSONScenario := TJsonObject.ParseJSONValue(sJson, False);
  if vJSONScenario <> nil then
    try
      Result := JsonPretty(sJson, vEscape);
    finally
      vJSONScenario.Free
    end
  else
    Result := sJson;
end;

function JsonPrettyRaw(aJsonObject: TJsonObject; vEscape: boolean = true): string;
begin
  Result := JsonPretty(aJsonObject.ToString, vEscape);
end;

function JsonPretty(aJsonString: string; vEscape: boolean = true): string;
var
  vJSONScenario: TJsonValue;
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
  // Result := aJsonString;
  Result := aJsonString;
end;

function JsonObject(aTitle: string; aValue: TJsonObject): TJsonObject;
var
  aPair: TJSONPair;
  aObject: TJsonObject;
begin

  aPair := aValue.Get(aTitle);
  if Assigned(aPair) then
    Result := (aPair.JsonValue as TJsonObject)
  else
    Result := nil;

end;

function JsonResultArray(aTitle: string; aValue: TJsonArray): TJsonObject;
begin
  Result := TJsonObject.Create;
  Result.AddPair('Result', aValue);
end;

function JsonResult(aValue: string): TJsonObject;
begin
  Result := TJsonObject.Create;
  Result.AddPair('Result', aValue);
end;

function JsonDecodeDate(const aDate: string): TDateTime;
var
  year, month, day: Word;
begin
  // yyyy-mm-dd
  // 1234567890
  year := strtoint(copy(aDate, 1, 4));
  month := strtoint(copy(aDate, 6, 2));
  day := strtoint(copy(aDate, 9, 2));
  Result := EncodeDate(year, month, day);
end;

function JsonFloatToStr(const aFloat: Double; digits: integer): string;
var
  FS_ENUS: TFormatSettings;
begin
  FS_ENUS := TFormatSettings.Create('en-US');
  Result := FRound(aFloat, digits).ToString(FS_ENUS);
  Result := StringReplace(Result, ',', '.', [rfReplaceAll, rfIgnoreCase]);
end;

function JsonStringToFloat(const aString: string): Double;
var
  Position: integer;
  sLeft, sRight: string;
begin
  Position := pos(aString, '.');

  if Position <= 0 then
    Position := pos(aString, ',');

  if Position > 1 then
  begin
    sLeft := copy(aString, 1, Position - 1);
    Result := sLeft.ToInteger;

    if (Position > 1) and (length(aString) > Position) then
    begin
      sRight := copy(aString, Position + 1, length(aString) - Position - 1);
    end
    else
      sRight := '0';

    Result := Result + sRight.ToInteger / (10 * length(sRight));
  end
  else
  begin
    Result := StringReplace(aString, '.', ',', []).ToDouble;
  end;

end;

function JsonEncodeDate(aDate: TDateTime): string;
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
  Result.AddPair('Result', 'False');
  Result.AddPair('Message', 'Procedure or Server Error');
  Result.AddPair('Error', aError);
end;

function JsonError(aError: string): string;
begin
  Result := JsonPretty(JsonObjectError(aError).ToJSON);
end;

{$ENDIF FPC}

procedure DebugMsg(const Msg: String);
begin
{$IFDEF IOS}
  NSLog(PNSStr(Msg));
{$ENDIF}
{$IFDEF WINDOWS}
  OutputDebugString(PChar(Msg));
{$ENDIF}
end;

procedure Cls;
{$IFDEF MSWINDOWS}
var
  hStdOut: HWND;
  ScreenBufInfo: TConsoleScreenBufferInfo;
  Coord1: TCoord;
  z: integer;
{$ENDIF}
begin
{$IFDEF MSWINDOWS}
  hStdOut := GetStdHandle(STD_OUTPUT_HANDLE);
  GetConsoleScreenBufferInfo(hStdOut, ScreenBufInfo);
  for z := 1 to ScreenBufInfo.dwSize.Y do
    WriteLn('');
  Coord1.X := 0;
  Coord1.Y := 0;
  SetConsoleCursorPosition(hStdOut, Coord1);
{$ENDIF}
{$IFDEF IOS}
  // _system(PNSStr('clear'));
{$ENDIF}
{$IFDEF MACOS}
  // _system(PNSStr('clear'));
{$ENDIF MACOS}
end;

function OpenFolderAndSelectFile(const FileName: string): boolean;
{$IFDEF MSWINDOWS}
var
  IIDL: PItemIDList;
{$ENDIF}
begin
{$IFDEF MSWINDOWS}
  Result := False;
  IIDL := ILCreateFromPath(PChar(FileName));
  if IIDL <> nil then
    try
      Result := SHOpenFolderAndSelectItems(IIDL, 0, nil, 0) = S_OK;
    finally
      ILFree(IIDL);
    end;
{$ENDIF}
end;

{$IFNDEF fpc}

function CloneDatasetToStream(Dataset, dataclone: TCustomClientDataset): boolean;
var
  aStream: TMemoryStream;
begin
  Result := true;
  aStream := TMemoryStream.Create;
  try
    aStream.Position := 0;
    Dataset.SaveToStream(aStream, dfBinary);
    aStream.Position := 0;
    // if not Assigned(self.FBlob)  then self.FBlob := TBlob.Create(False);
    dataclone.LoadFromStream(aStream);
  finally
    aStream.Free;
  end;
end;
{$ENDIF}

function StoreBlobToField(aField: TBlobField; aBlob: MemData.TBlob): boolean;
var
  aStream: TMemoryStream;
begin
  Result := true;
  aStream := TMemoryStream.Create;
  try
    aStream.Position := 0;
    aBlob.SaveToStream(aStream);
    aStream.Position := 0;
    // if not Assigned(self.FBlob)  then self.FBlob := TBlob.Create(False);
    aField.LoadFromStream(aStream);
  finally
    aStream.Free;
  end;
end;

function StoreFieldToBlob(aFrom: TBlobField; aTo: MemData.TBlob): boolean;
var
  aStream: TMemoryStream;
begin
  aStream := TMemoryStream.Create;
  Result := true;
  try
    aStream.Position := 0;
    aFrom.SaveToStream(aStream);
    aStream.Position := 0;
    // if not Assigned(self.FBlob)  then self.FBlob := TBlob.Create(False);
    aTo.LoadFromStream(aStream);
  finally
    aStream.Free;
  end;
end;

function StoreBlobToBlob(aField: MemData.TBlob; aBlob: MemData.TBlob): boolean;
var
  aStream: TMemoryStream;
begin
  if aField.Size = 0 Then
    Exit(False);
  aStream := TMemoryStream.Create;
  Result := true;
  try
    aStream.Position := 0;
    aField.SaveToStream(aStream);
    aStream.Position := 0;
    // if not Assigned(self.FBlob)  then self.FBlob := TBlob.Create(False);
    aBlob.LoadFromStream(aStream);
  finally
    aStream.Free;
  end;
end;

function StoreStreamToBlob(aStream: TStream; aBlob: MemData.TBlob): boolean;
begin
  if aStream.Size = 0 then
    Exit(False);

  Result := true;
  try
    aStream.Position := 0;
    // if not Assigned(self.FBlob)  then self.FBlob := TBlob.Create(False);
    aBlob.LoadFromStream(aStream);
  except
    on e: exception do
    begin
      Result := False;
      raise;
    end;
  end;

end;

procedure SortTStrings(Strings: TStrings);
var
  tmp: TStringList;
begin
  if Strings is TStringList then
  begin
    TStringList(Strings).Sort;
  end
  else
  begin
    tmp := TStringList.Create;
    try
      // make a copy
      tmp.Assign(Strings);
      // sort the copy
      tmp.Sort;
      //
      Strings.Assign(tmp);
    finally
      tmp.Free;
    end;
  end;
end;

function CompareStringLists(List1, List2: TStringList): boolean;
var
  i: integer;
begin
  List1.Sort;
  List2.Sort;
  i := 0;

  Result := List1.Count <> List2.Count;

  if Result then
  begin
    List1.Assign(List2);
  end
  else
  begin
    while (i < List1.Count) do
    begin
      if List1[i] <> List2[i] then
      begin
        List1.Assign(List2);
        Exit(true);
      end;
    end;
  end;

end;

procedure CompareStringListsDiff(List1, List2: TStringList; Missing1, Missing2: TStrings);
var
  i: integer;
  J: integer;
begin
  List1.Sort;
  List2.Sort;
  i := 0;
  J := 0;
  while (i < List1.Count) and (J < List2.Count) do
  begin
    if List1[i] < List2[J] then
    begin
      Missing2.Add(List1[i]);
      Inc(i);
    end
    else if List1[i] > List2[J] then
    begin
      Missing1.Add(List2[J]);
      Inc(J);
    end
    else
    begin
      Inc(i);
      Inc(J);
    end;
  end;
  for i := i to List1.Count - 1 do
    Missing2.Add(List1[i]);
  for J := J to List2.Count - 1 do
    Missing1.Add(List2[J]);
end;

function URLParamEncode(const aParam: String): String;
var
  aUri: TIdURI;
begin
  aUri := IdURI.TIdURI.Create();
  try
    Result := aUri.ParamsEncode(aParam);
  finally
    aUri.Free;
  end;

end;

function URLEncode(const AStr: String): String;
var
  aUri: TIdURI;
begin
  aUri := IdURI.TIdURI.Create();
  try
    Result := aUri.URLEncode(AStr);
  finally
    aUri.Free;
  end;

end;

{

  try
  I.Host:= IPAddr;
  I.Ping();

  finally
  I.Free;
  end;
}
function Ping(const aServer: string): boolean;
var
  ICMP: TIdIcmpClient;
  Rec: integer;
begin

  Result := False;
  try
    ICMP := TIdIcmpClient.Create(nil);
    try
      ICMP.Host := aServer;
      ICMP.Ping();
      Sleep(2000);
      Rec := ICMP.ReplyStatus.BytesReceived;
      if Rec > 0 then
        Result := true
      else
        Result := False;
    finally
      ICMP.Free;
    end;
  except
    Result := False;
  end;

end;

function XMLDateDecode(aDate: System.OleVariant): TDateTime;
// convert from WideString): TDateTime;
var
  day, month, year: Word;
  sDay, sMonth, sYear: string;
  sDate: string;
begin
  try
    { c
      1234567890123456
    }

    sDate := VarToStr(aDate);
    sDay := (copy(sDate, 6, 2));
    if copy(sDay, 2, 1) = ' ' then
    begin
      sDay := copy(sDay, 1, 1);
      sMonth := copy(aDate, 8, 3);
      sYear := copy(aDate, 12, 4);
    end
    else
    begin
      sMonth := copy(aDate, 9, 3);
      sYear := copy(aDate, 13, 4);
    end;
    if IsNumeric(Trim(sDay)) then
      day := strtoint(sDay)
    else
      day := 1;

    if sMonth = 'Jan' then
      month := 1
    else if sMonth = 'Feb' then
      month := 2
    else if sMonth = 'Mar' then
      month := 3
    else if sMonth = 'Apr' then
      month := 4
    else if sMonth = 'May' then
      month := 5
    else if sMonth = 'Jun' then
      month := 6
    else if sMonth = 'Jul' then
      month := 7
    else if sMonth = 'Aug' then
      month := 8
    else if sMonth = 'Sep' then
      month := 9
    else if sMonth = 'Oct' then
      month := 10
    else if sMonth = 'Nov' then
      month := 11
    else if sMonth = 'Dec' then
      month := 12
    else
      month := 1;

    year := strtoint(sYear);
    Result := EncodeDate(year, month, day);

    {
      try
      //a.XSToNative(aDate); // convert from WideString
      a.XSToNative(VarToStr(aDate));
      Result := a.AsDateTime; // convert to TDateTime
      finally
      a.Free;
      end;
    }
  except
    Result := Now();
  end;
end;

function ExistFieldByName(Dataset: TDataset; fieldName: string): boolean;
var
  aField: TField;
begin
  aField := Dataset.FindField(fieldName);
  Result := aField <> nil;
  {
    for i := 0 to Dataset.FieldCount - 1 do
    if LowerCase(Dataset.Fields[i].fieldName) = LowerCase(fieldName) then
    Exit(true)
    else
    Result := False;
  }
end;

function GetFieldAsString(aDataset: TDataset; aFieldName: string): string;
begin
  GetFieldValue(Result, aDataset, aFieldName);
end;

function GetFieldAsInteger(aDataset: TDataset; aFieldName: string): integer;
begin
  GetFieldValue(Result, aDataset, aFieldName);
end;

function GetFieldAsDate(aDataset: TDataset; aFieldName: string): TDateTime;
begin
  GetFieldValue(Result, aDataset, aFieldName);
end;

function GetFieldAsLargeInt(aDataset: TDataset; aFieldName: string): Int64;
begin
  GetFieldValue(Result, aDataset, aFieldName);
end;

function GetFieldAsBoolean(aDataset: TDataset; aFieldName: string): boolean;
begin
  GetFieldValue(Result, aDataset, aFieldName);
end;

procedure GetFieldValue(var aValue: string; aDataset: TDataset; aFieldName: string;
  const CheckFields: boolean = False); overload;
var
  aField: TField;
begin
  aField := GetFieldByName(aDataset, aFieldName, CheckFields);
  if aField <> nil then
  begin
    aValue := aField.AsString
  end;

end;

procedure GetFieldValue(var aValue: Int64; aDataset: TDataset; aFieldName: string;
  const CheckFields: boolean = False); overload;
var
  aField: TField;
begin
  aField := GetFieldByName(aDataset, aFieldName, CheckFields);
  if aField <> nil then
  begin
    aValue := aField.AsLargeInt
  end;

end;

procedure GetFieldValue(var aValue: integer; aDataset: TDataset; aFieldName: string;
  const CheckFields: boolean = False); overload;
var
  aField: TField;
begin
  aField := GetFieldByName(aDataset, aFieldName, CheckFields);
  if aField <> nil then
  begin
    aValue := aField.AsInteger
  end;

end;

procedure GetFieldValue(var aValue: boolean; aDataset: TDataset; aFieldName: string;
  const CheckFields: boolean = False); overload;
var
  aField: TField;
begin
  aField := GetFieldByName(aDataset, aFieldName, CheckFields);
  if aField <> nil then
  begin
    aValue := aField.AsBoolean
  end
  else
  begin
    aValue := False;
  end;

end;

procedure GetFieldValue(var aValue: TDate; aDataset: TDataset; aFieldName: string;
  const CheckFields: boolean = False); overload;
var
  aField: TField;
begin

  aField := GetFieldByName(aDataset, aFieldName, CheckFields);
  if aField <> nil then
  begin
    aValue := aField.AsDateTime
  end
  else
  begin
    aValue := 0.0;
  end;

end;

procedure GetFieldValue(var aValue: TDateTime; aDataset: TDataset; aFieldName: string;
  const CheckFields: boolean = False); overload;
var
  aField: TField;
begin
  aField := GetFieldByName(aDataset, aFieldName, CheckFields);
  if aField <> nil then
  begin
    aValue := aField.AsDateTime
  end
  else
  begin
    aValue := 0.0;
  end;

end;

procedure GetFieldValue(var aValue: Extended; aDataset: TDataset; aFieldName: string;
  const CheckFields: boolean = False); overload;
var
  aField: TField;
begin
  aField := GetFieldByName(aDataset, aFieldName, CheckFields);
  if aField <> nil then
  begin

    aValue := {$IFNDEF FPC} aField.AsExtended; {$ELSE} aField.AsFloat; {$ENDIF}
  end;

end;

procedure GetFieldValue(var aValue: Double; aDataset: TDataset; aFieldName: string;
  const CheckFields: boolean = False); overload;
var
  aField: TField;
begin
  aField := GetFieldByName(aDataset, aFieldName, CheckFields);
  if aField <> nil then
  begin
    aValue := aField.AsFloat
  end;

end;

procedure GetFieldValue(var aValue: Real; aDataset: TDataset; aFieldName: string;
  const CheckFields: boolean = False); overload;
var
  aField: TField;
begin
  aField := GetFieldByName(aDataset, aFieldName, CheckFields);
  if aField <> nil then
  begin
    aValue := aField.AsFloat
  end;

end;

function GetFieldByName(Dataset: TDataset; fieldName: string; const CheckFields: boolean = False): TField;
// var
// i : integer;
begin
  // set the debug Trace Command on (CheckFields = True) non inserire o mettere False per disattivare il TraceON
  // Specifiche 2017-0013
  Result := Dataset.FindField(fieldName);
  if CheckFields and (Result = nil) then
    raise exception.Create('Error Dataset ' + Dataset.Name + ', Form: ' + IfThen(Dataset.Owner <> nil,
      Dataset.Owner.Name, 'nil') + ', Field not found: ' + fieldName);

end;

procedure ReplaceStringPos(var text: TStringList; searchstr: string; newstr: string);
var
  locazione: integer;
begin
  locazione := text.IndexOf(searchstr);
  // ShowMessage(InttoStr(Memo1.Lines.IndexOf('<NOME>')));
  if locazione > 0 then
  begin
    text.Delete(locazione);
    text.Insert(locazione, newstr);
  end; // end if locazione
end;

procedure CopyRecord(Dataset, dataclone: TDataset);
var
  i: integer;
begin
  if dataclone.Active and Dataset.Active and (Dataset.RecordCount > 0) then
  begin
    dataclone.Edit;
    for i := 0 to Dataset.FieldCount - 1 do
      if Assigned(dataclone.FindField(Dataset.Fields[i].fieldName)) then
        dataclone.FieldByName(Dataset.Fields[i].fieldName).Value := Dataset.Fields[i].Value;
    dataclone.Post;
  end;
end;

{$IFNDEF FPC}

procedure CloneDataset(fromDataset: TDataset; toDataset: TClientDataset);
var
  TempProvider: TDataSetProvider;
begin
  TempProvider := TDataSetProvider.Create(nil);
  try
    TempProvider.Dataset := fromDataset;
    toDataset.Data := TempProvider.Data;
  finally
    TempProvider.Free;
  end;

end;

{
  var
  I: integer;
  begin
  if toDataset.FieldCount = 0 then
  begin
  toDataset.SetProvider(fromDataset);
  toDataset.FieldDefs.Update;
  toDataset.SetProvider(nil);
  end;

  if not toDataset.Active then
  toDataset.CreateDataSet;

  fromDataset.First;
  while not fromDataset.Eof do
  begin
  toDataset.Append;
  for I := 0 to fromDataset.FieldCount - 1 do
  begin
  toDataset.FieldByName(fromDataset.Fields[I].Name).Value :=
  fromDataset.Fields[I].Value;
  end;
  toDataset.Post;
  fromDataset.Next;
  end;

  end;
}

procedure CloneDataset(Dataset, dataclone: TCustomClientDataset);

begin
  if dataclone.Active then
    dataclone.Close;

  if not dataclone.Active then
    dataclone.CreateDataSet;

  if Dataset.RecordCount > 0 then
  begin
    Dataset.Last;
    Dataset.First;
    while not Dataset.Eof do
    begin
      dataclone.Append;
      CopyRecord(Dataset, dataclone);
      Dataset.Next;
    end;
  end;

end;

{$ENDIF FPC}

function ExportDatasetToXMLMemo(aDataset: MemDS.TMemDataSet; aList: TStrings): boolean;
var
  aStream: TMemoryStream;
begin
  Result := False;
  if Assigned(aDataset) and Assigned(aList) and aDataset.Active then
  begin
    aStream := TMemoryStream.Create;
    try
{$IFNDEF FPC} aDataset.SaveToXML(aStream); {$ENDIF FPC}
      aStream.Position := 0;
      aList.LoadFromStream(aStream);
      Result := true;
    finally
      aStream.Free;
    end;
  end;
end;

procedure CloneDataset(Dataset: MemDS.TMemDataSet; dataclone: VirtualTable.TVirtualTable); overload;
var
  aStream: TMemoryStream;
begin
  if Assigned(Dataset) and Assigned(dataclone) and Dataset.Active then
  begin
    aStream := TMemoryStream.Create;
    try
{$IFNDEF FPC} Dataset.SaveToXML(aStream); {$ENDIF FPC}
      aStream.Position := 0;
      dataclone.LoadFromStream(aStream);
      if not dataclone.Active then
        dataclone.Open;

    finally
      aStream.Free;
    end;
  end;
end;

function ExportDatasetToStream(Dataset: MemDS.TMemDataSet; aStream: TStream): boolean;
begin
  aStream.Position := 0;
{$IFNDEF FPC} Dataset.SaveToXML(aStream); {$ENDIF FPC}
end;

function generateIntAnagBarcode(p_barcode: integer): string;
begin
  Result := generateAnagBarcode(inttostr(p_barcode));
end;

function WriteCustomLog(log: string; logfile: string): boolean;
var
  ErrFile: TextFile;
  text: string;
begin
  // Homedir := TPath.GetDocumentsPath + TPath.DirectorySeparatorChar + 'januaproject';
  // LogDir := Homedir + TPath.DirectorySeparatorChar + 'log';
  text := DateTimeToStr(Now()) + sLineBreak;
  text := text + log + sLineBreak + sLineBreak;

  try
    Assignfile(ErrFile, logfile);
    If FileExists(logfile) then
      Append(ErrFile)
    else
      Rewrite(ErrFile);
    WriteLn(ErrFile, text);
    CloseFile(ErrFile);
    Result := true;
  except
    on e: exception do
      Result := False;

  end;
end;

function WriteLog(log: string; logfile: string): boolean;
var
  ErrFile: TextFile;
  Homedir, LogDir, text: string;
begin

{$IFNDEF FPC}
  Homedir := TPath.GetDocumentsPath + TPath.DirectorySeparatorChar + 'januaproject';
  LogDir := Homedir + TPath.DirectorySeparatorChar + 'log';
{$ELSE}
  Homedir := expandfilename('~/') + 'januaproject';
  LogDir := Homedir + '/' + 'log';
{$ENDIF FPC}
  text := DateTimeToStr(Now()) + sLineBreak;
  text := text + log + sLineBreak + sLineBreak;

  if not DirectoryExists(Homedir) then
    CreateDir(Homedir);
  if not DirectoryExists(LogDir) then
    CreateDir(LogDir);

  try
{$IFNDEF FPC}
    Assignfile(ErrFile, LogDir + TPath.DirectorySeparatorChar + logfile);
    If FileExists(LogDir + TPath.DirectorySeparatorChar + logfile) then
{$ELSE}
    Assignfile(ErrFile, LogDir + '/' + logfile);
    If FileExists(LogDir + '/' + logfile) then
{$ENDIF FPC}
      Append(ErrFile)
    else
      Rewrite(ErrFile);
    WriteLn(ErrFile, text);
    CloseFile(ErrFile);
    Result := true;
  except
    on e: exception do
      Result := False;

  end;
end;

function generateAnagBarcode(p_barcode: string): string;
var
  barcode: string;
begin
  barcode := '';
  if IsNumeric(p_barcode) then
  begin
    barcode := Lpad(p_barcode, 12, '0');
    barcode := GenerateEAN13(barcode);
  end;
  Result := barcode;
end;

function GenerateEAN13(p_barcode: string): string;
var
  v_barcode: string;
  posizione, checksum: integer;
begin
  if length(p_barcode) < 12 then
    v_barcode := Lpad(p_barcode, 12, '0')
  else
    v_barcode := p_barcode;

  if length(v_barcode) = 12 then
  begin
    checksum := 0;
    Result := v_barcode;
    for posizione := 1 to 12 do
      if posizione mod 2 = 0 then
        checksum := checksum + strtoint(copy(Result, posizione, 1)) * 3
      else
        checksum := checksum + strtoint(copy(Result, posizione, 1));

    checksum := checksum mod 10;
    checksum := 10 - checksum;
    if checksum = 10 then
      checksum := 0;

    Result := Result + inttostr(checksum);
  end
  else
    Result := ('0000000000000');
end;

function TryStrToFloat(const S: string; out Value: Double): boolean;
begin
  Result := true;
  try
    Value := StrToFloat(S);
  except
    on e: exception do
    begin
      Result := False;
      Value := 0;
    end;
  end;
end;

function IsNumeric(pTestVar: string): boolean;
var
  i: integer;
  f: Double;
  t: integer;
begin
  t := length(pTestVar);
  Result := not(t = 0);

  if Result then
    For i := 1 to t do
    begin
      if Result then
        Result := ((pTestVar[i] >= '0') and (pTestVar[i] <= '9'))
      else
        Exit;
    end;

  // Result := TryStrToInt(pTestVar, i) or TryStrToFloat(pTestVar, f);
end;

function GenerateInternalBarcode(P_ID: integer; p_size: integer; p_color: integer): string;
var
  posizione, checksum: integer;
begin
  Result := '';
  Result := Result + copy('800000000', 1, (9 - length(inttostr(P_ID)))) + inttostr(P_ID) +
    copy('0', 1, (1 - length(inttostr(p_size)))) + inttostr(p_size) +
    copy('00', 1, (2 - length(inttostr(p_color)))) + inttostr(p_color);
  checksum := 0;
  for posizione := 1 to 12 do
    if posizione mod 2 = 0 then
      checksum := checksum + strtoint(copy(Result, posizione, 1)) * 3
    else
      checksum := checksum + strtoint(copy(Result, posizione, 1));

  checksum := checksum mod 10;
  checksum := 10 - checksum;
  if checksum = 10 then
    checksum := 0;

  Result := Result + inttostr(checksum);
end;

function FPartitaIva(piva: string; var Error: string; var specification: string): boolean;
var
  i: integer;
  S: integer;
  c: integer;
  r: integer;
begin
  S := 0;
  Error := '';
  specification := '';

  if length(Trim(piva)) <> 11 then
  begin
    Result := False;
    Error := 'Attenzione inserita partita iva di lunghezza errata!';
    specification := 'La partita iva italiana deve essere di 11 caratteri questa è invece di: ' +
      inttostr(length(Trim(piva)));
  end
  else
  begin
    for i := 1 to 11 do
    begin
      if (copy(piva, i, 1) < '0') or (copy(piva, i, 1) > '9') then
      begin
        Error := 'La partita iva contiene caratteri non ammessi';
        specification := 'la parita iva deve essere di 11 caratteri numerici';
        Result := False;
        Exit;
      end;

      if i / 2 = trunc(i / 2) then
      begin
        c := strtoint(copy(piva, i, 1)) * 2;
        if c > 9 then
          c := c - 9;
        S := S + c;
      end
      else if i < 11 then
        S := S + strtoint(copy(piva, i, 1));
    end;
    r := S - 10 * trunc(S / 10);
    if r = 0 then
      c := 0
    else
      c := 10 - r;

    if copy(piva, 11, 1) <> inttostr(c) then
    begin
      Error := 'La partita iva immessa non risulta compatibile';
      specification := 'dalla verifica effettuata uno dei caratteri della partita iva è errato';
      Result := False;
    end
    else if piva = '00000000000' then
    begin
      Error := 'La partita iva immessa non risulta compatibile, è composta solo da 0';
      specification := 'la partita iva 00000000000 non risulta essere esistente.....';
      Result := False;
    end
    else
      Result := true;
  end;
end;

function ConvertFloatToString(const Value: Double; const digits: integer): string;
var
  intero, resto, i, molt: integer;
  amount: Extended;
  Format: string;
begin
  Format := '#,##0.';
  molt := 1;

  if digits > 0 then
    for i := 1 to digits do
    begin
      molt := molt * 10;
      Format := Format + '0';
    end;

  intero := trunc(Value);
  resto := trunc(molt * Value) - (molt * trunc(Value));
  amount := intero + resto / molt;
  Result := FormatFloat(Format, amount);
end;

procedure JanuaFreeAndNil(Obj: TObject);
begin
  if Assigned(Obj) then
  begin
    FreeAndNil(Obj);
  end;
end;

function FRound(number: Double; digits: integer): Double;
var
  i: integer;
  k: integer;
  left: Int64;
  right: Int64;
begin
  if (number = 0) or Janua.Core.Roundings.IsNAN(number) then
    Result := 0
  else if number = trunc(number) then
    Result := number
  else
  begin
    k := 1;
    for i := 1 to digits do
      k := k * 10;
    left := trunc(number);
    right := Round(((number - left) + 0.0000001) * k);
    if k > 0 then
      Result := left + right / k
    else
    begin
      i := Round(number + 0.0000001);
      Result := i;
    end;
  end;
end;

function FRound(number: Single; digits: integer): Double;
var
  i: integer;
  k: integer;
  left: Int64;
  right: Int64;
begin
  if (number = 0) or Janua.Core.Roundings.IsNAN(number) then
    Result := 0
  else if number = trunc(number) then
    Result := number
  else
  begin
    k := 1;
    for i := 1 to digits do
      k := k * 10;
    left := trunc(number);
    right := Round(((number - left) + 0.0000001) * k);
    if k > 0 then
      Result := left + right / k
    else
    begin
      i := Round(number + 0.0000001);
      Result := i;
    end;
  end;
end;

function FRound(number: Extended; digits: integer): Double;
var
  i: integer;
  k: integer;
  left: Int64;
  right: Int64;
begin
  if (number = 0) or Janua.Core.Roundings.IsNAN(number) then
    Result := 0
  else if number = trunc(number) then
    Result := number
  else
  begin
    k := 1;
    for i := 1 to digits do
      k := k * 10;
    left := trunc(number);
    right := Round(((number - left) + 0.0000001) * k);
    if k > 0 then
      Result := left + right / k
    else
    begin
      i := Round(number + 0.0000001);
      Result := i;
    end;
  end;
end;



// --------------------- verifica mail su Android --------------------------------

{$IFDEF ANDROID}

function IsValidEmail(email: string): boolean;
// Returns True if the email address is valid
// Author: Ernesto D'Spirito
const

  // Valid characters in an "atom"

  atom_chars = [#33 .. #255] - ['(', ')', '<', '>', '@', ',', ';', ':', '\', '/', '"', '.', '[', ']', #127];

  // Valid characters in a "quoted-string"
  quoted_string_chars = [#0 .. #255] - ['"', #13, '\'];

  // Valid characters in a subdomain
  letters = ['A' .. 'Z', 'a' .. 'z'];
  letters_digits = ['0' .. '9', 'A' .. 'Z', 'a' .. 'z'];
  subdomain_chars = ['-', '0' .. '9', 'A' .. 'Z', 'a' .. 'z'];
type
  States = (STATE_BEGIN, STATE_ATOM, STATE_QTEXT, STATE_QCHAR, STATE_QUOTE, STATE_LOCAL_PERIOD,
    STATE_EXPECTING_SUBDOMAIN, STATE_SUBDOMAIN, STATE_HYPHEN);
var
  State: States;
  i, n, subdomains: integer;
  c: char;
begin

  State := STATE_BEGIN;
  n := length(email);

  i := 0;

  subdomains := 1;

  while (i <= n - 1) do
  begin

    c := email[i];

    case State of

      STATE_BEGIN:

        if c in atom_chars then

          State := STATE_ATOM

        else if c = '"' then

          State := STATE_QTEXT

        else

          break;

      STATE_ATOM:

        if c = '@' then

          State := STATE_EXPECTING_SUBDOMAIN

        else if c = '.' then

          State := STATE_LOCAL_PERIOD

        else if not(c in atom_chars) then

          break;

      STATE_QTEXT:

        if c = '\' then

          State := STATE_QCHAR

        else if c = '"' then

          State := STATE_QUOTE

        else if not(c in quoted_string_chars) then

          break;

      STATE_QCHAR:

        State := STATE_QTEXT;

      STATE_QUOTE:

        if c = '@' then

          State := STATE_EXPECTING_SUBDOMAIN

        else if c = '.' then

          State := STATE_LOCAL_PERIOD

        else

          break;

      STATE_LOCAL_PERIOD:

        if c in atom_chars then

          State := STATE_ATOM

        else if c = '"' then

          State := STATE_QTEXT

        else

          break;

      STATE_EXPECTING_SUBDOMAIN:

        if c in letters then

          State := STATE_SUBDOMAIN

        else

          break;

      STATE_SUBDOMAIN:

        if c = '.' then
        begin

          Inc(subdomains);

          State := STATE_EXPECTING_SUBDOMAIN

        end
        else if c = '-' then

          State := STATE_HYPHEN

        else if not(c in letters_digits) then

          break;

      STATE_HYPHEN:

        if c in letters_digits then

          State := STATE_SUBDOMAIN

        else if c <> '-' then

          break;

    end;

    Inc(i);

  end;

  if i < n - 1 then

    Result := False

  else

    Result := (State = STATE_SUBDOMAIN) and (subdomains >= 2);

end;

{$ELSE}
// --------------------- funzione di verifica della correttezza di una mail -----

function IsValidEmail(const Value: string): boolean;

  function CheckAllowed(const S: string): boolean;
  var
    i: integer;
  begin
    for i := 1 to length(S) do
      // CharinSet(Edit1.Text[1],['S','?'])
      if not CharinSet(S[i], ['a' .. 'z', 'A' .. 'Z', '0' .. '9', '_', '-', '.']) then
        Exit(False);
    Result := true;
  end;

var
  i: integer;
  NamePart, ServerPart: string;
begin
  // vIsMail := (AnsiPos(p_username, '@') > 0) and (AnsiPos(p_username, '.') > 0);

  Result := False;
  i := pos('@', Value);
  if i = 0 then
    Exit;
  NamePart := copy(Value, 1, i - 1);
  ServerPart := copy(Value, i + 1, length(Value));
  if (length(NamePart) = 0) or ((length(ServerPart) = 0)) then
    Exit;
  i := pos('.', ServerPart);
  if (i = 0) or (i > (length(ServerPart) - 2)) then
    Exit;
  Result := CheckAllowed(NamePart) and CheckAllowed(ServerPart);
end;
{$ENDIF}
// ------------------------------------------------------------------------------

procedure StringListAssign(ToList: TStrings; FromList: TStrings; const CheckLength: boolean);
begin
  if Assigned(FromList) and Assigned(ToList) then
  begin
    if (FromList.Count > 0) or not CheckLength then
      ToList.Assign(FromList);
  end;
end;

procedure StringListAssignBack(ToList: TStrings; FromList: TStrings; const CheckLength: boolean);
begin
  if Assigned(FromList) and Assigned(ToList) then
  begin
    if (ToList.Count > 0) or not CheckLength then
      FromList.Assign(ToList);
  end;
end;

procedure StringListAssign(ToList: TStrings; FromList: string; const CheckLength: boolean);
begin
  if Assigned(ToList) then
    if (FromList.length > 0) or not CheckLength then
      ToList.text := FromList;
end;

procedure StringAssign(var ToList: string; FromList: string; const CheckLength: boolean);
begin
  if (FromList.length > 0) or not CheckLength then
    ToList := FromList;
end;

procedure StringAssign(var ToList: string; FromList: TStrings; const CheckLength: boolean);
begin
  if Assigned(FromList) then
    if (FromList.Count > 0) or not CheckLength then
      ToList := FromList.text;
end;

function IsMail(email: string): boolean;
begin
  Result := not((email = '') or (AnsiPos('@', email) = 0) or (AnsiPos('.', email) = 0) or
    (AnsiPos(' ', email) > 0));

  if Result then
    Result := IsValidEmail(email);
end;

// ------------------- funzioni di verifica codice fiscale italiano -------------

// ------------------------------------------------------------
function Valctrl(resto: integer): string;
begin
  case (resto) of
    0:
      Valctrl := ('A');
    1:
      Valctrl := ('B');
    2:
      Valctrl := ('C');
    3:
      Valctrl := ('D');
    4:
      Valctrl := ('E');
    5:
      Valctrl := ('F');
    6:
      Valctrl := ('G');
    7:
      Valctrl := ('H');
    8:
      Valctrl := ('I');
    9:
      Valctrl := ('J');
    10:
      Valctrl := ('K');
    11:
      Valctrl := ('L');
    12:
      Valctrl := ('M');
    13:
      Valctrl := ('N');
    14:
      Valctrl := ('O');
    15:
      Valctrl := ('P');
    16:
      Valctrl := ('Q');
    17:
      Valctrl := ('R');
    18:
      Valctrl := ('S');
    19:
      Valctrl := ('T');
    20:
      Valctrl := ('U');
    21:
      Valctrl := ('V');
    22:
      Valctrl := ('W');
    23:
      Valctrl := ('X');
    24:
      Valctrl := ('Y');
    25:
      Valctrl := ('Z');
  else
    Valctrl := ('-1');
  end;
end;

function ValPari(carattere: char): integer;
// var
// a: integer;
begin
  // a := ord((carattere));

  case carattere of
    'A':
      ValPari := (0);
    'B':
      ValPari := (1);
    'C':
      ValPari := (2);
    'D':
      ValPari := (3);
    'E':
      ValPari := (4);
    'F':
      ValPari := (5);
    'G':
      ValPari := (6);
    'H':
      ValPari := (7);
    'I':
      ValPari := (8);
    'J':
      ValPari := (9);
    'K':
      ValPari := (10);
    'L':
      ValPari := (11);
    'M':
      ValPari := (12);
    'N':
      ValPari := (13);
    'O':
      ValPari := (14);
    'P':
      ValPari := (15);
    'Q':
      ValPari := (16);
    'R':
      ValPari := (17);
    'S':
      ValPari := (18);
    'T':
      ValPari := (19);
    'U':
      ValPari := (20);
    'V':
      ValPari := (21);
    'W':
      ValPari := (22);
    'X':
      ValPari := (23);
    'Y':
      ValPari := (24);
    'Z':
      ValPari := (25);

    '0':
      ValPari := (0);
    '1':
      ValPari := (1);
    '2':
      ValPari := (2);
    '3':
      ValPari := (3);
    '4':
      ValPari := (4);
    '5':
      ValPari := (5);
    '6':
      ValPari := (6);
    '7':
      ValPari := (7);
    '8':
      ValPari := (8);
    '9':
      ValPari := (9);
  else
    ValPari := (-1);
  end;

end;

function ValDispari(carattere: char): integer;
begin
  case (carattere) of

    'A':
      ValDispari := (1);
    'B':
      ValDispari := (0);
    'C':
      ValDispari := (5);
    'D':
      ValDispari := (7);
    'E':
      ValDispari := (9);
    'F':
      ValDispari := (13);
    'G':
      ValDispari := (15);
    'H':
      ValDispari := (17);
    'I':
      ValDispari := (19);
    'J':
      ValDispari := (21);
    'K':
      ValDispari := (2);
    'L':
      ValDispari := (4);
    'M':
      ValDispari := (18);
    'N':
      ValDispari := (20);
    'O':
      ValDispari := (11);
    'P':
      ValDispari := (3);
    'Q':
      ValDispari := (6);
    'R':
      ValDispari := (8);
    'S':
      ValDispari := (12);
    'T':
      ValDispari := (14);
    'U':
      ValDispari := (16);
    'V':
      ValDispari := (10);
    'W':
      ValDispari := (22);
    'X':
      ValDispari := (25);
    'Y':
      ValDispari := (24);
    'Z':
      ValDispari := (23);

    '0':
      ValDispari := (1);
    '1':
      ValDispari := (0);
    '2':
      ValDispari := (5);
    '3':
      ValDispari := (7);
    '4':
      ValDispari := (9);
    '5':
      ValDispari := (13);
    '6':
      ValDispari := (15);
    '7':
      ValDispari := (17);
    '8':
      ValDispari := (19);
    '9':
      ValDispari := (21);
  else
    ValDispari := (-1);
  end;
end;

function VerifyFiscalCode(const Codfiscale: String; var strErrore: string): boolean;
var
  somma, i, resto: integer;
begin
  strErrore := '';

  somma := 0;
  if length(Codfiscale) = 16 then
  begin // esegue la verifica del codice fiscale solo se questo è
    // lungo 16
    for i := 1 to 15 do
    begin
      resto := (i mod 2);

      if resto = 0 then
        somma := somma + ValPari(Codfiscale[i])
      else
        somma := somma + ValDispari(Codfiscale[i]);
    end;
    resto := (somma mod 26);
    if (Valctrl(resto) = Codfiscale[16]) then
      Result := true
    else
    begin
      Result := False;
      strErrore := ('Attenzione Codice fiscale formalmente errato');
    end;
  end
  else
  begin
    Result := False;
    strErrore := ('Attenzione Errata lunghezza del codice fiscale.');
  end;
end;

function EncodeURIComponent(const ASrc: string): UTF8String;
const
  HexMap: UTF8String = '0123456789ABCDEF';

  function IsSafeChar(ch: integer): boolean;
  begin
    if (ch >= 48) and (ch <= 57) then
      Result := true // 0-9
    else if (ch >= 65) and (ch <= 90) then
      Result := true // A-Z
    else if (ch >= 97) and (ch <= 122) then
      Result := true // a-z
    else if (ch = 33) then
      Result := true // !
    else if (ch >= 39) and (ch <= 42) then
      Result := true // '()*
    else if (ch >= 45) and (ch <= 46) then
      Result := true // -.
    else if (ch = 95) then
      Result := true // _
    else if (ch = 126) then
      Result := true // ~
    else
      Result := False;
  end;

var
  i, J: integer;
  ASrcUTF8: UTF8String;
begin
  Result := ''; { Do not Localize }

  ASrcUTF8 := UTF8Encode(ASrc);
  // UTF8Encode call not strictly necessary but
  // prevents implicit conversion warning

  i := 1;
  J := 1;
  SetLength(Result, length(ASrcUTF8) * 3); // space to %xx encode every byte
  while i <= length(ASrcUTF8) do
  begin
    if IsSafeChar(Ord(ASrcUTF8[i])) then
    begin
      Result[J] := ASrcUTF8[i];
      Inc(J);
    end
    else if ASrcUTF8[i] = ' ' then
    begin
      Result[J] := '+';
      Inc(J);
    end
    else
    begin
      Result[J] := '%';
      Result[J + 1] := HexMap[(Ord(ASrcUTF8[i]) shr 4) + 1];
      Result[J + 2] := HexMap[(Ord(ASrcUTF8[i]) and 15) + 1];
      Inc(J, 3);
    end;
    Inc(i);
  end;

  SetLength(Result, J - 1);
end;

procedure HtmlReplace(var aTemplate: string; aParam: string; aValue: string);
begin
  aTemplate := StringReplace(aTemplate, '$' + aParam + '$', aValue, [rfIgnoreCase, rfReplaceAll]);
end;

procedure HtmlReplace(var aTemplate: string; aParam: string; aValue: integer);
begin
  aTemplate := StringReplace(aTemplate, '$' + aParam + '$', aValue.ToString, [rfIgnoreCase, rfReplaceAll]);
end;

procedure HtmlReplace(var aTemplate: string; aParam: string; aValue: Extended);
begin
  aTemplate := StringReplace(aTemplate, '$' + aParam + '$', aValue.ToString, [rfIgnoreCase, rfReplaceAll]);
end;

procedure JavascriptReplace(var aTemplate: string; aParam: string; aValue: Extended);
begin
{$IFNDEF FPC}
  aTemplate := StringReplace(aTemplate, '$' + aParam + '$', JsonFloatToStr(aValue, 7),
    [rfIgnoreCase, rfReplaceAll]);
{$ENDIF FPC}
end;

procedure JavascriptReplace(var aTemplate: string; aParam: string; aValue: boolean);
begin
  if aValue then
    HtmlReplace(aTemplate, aParam, 'true')
  else
    HtmlReplace(aTemplate, aParam, 'false');

end;

procedure HtmlReplace(var aTemplate: string; aParam: string; aValue: TDateTime);
begin
  aTemplate := StringReplace(aTemplate, '$' + aParam + '$', DateTimeToStr(aValue),
    [rfIgnoreCase, rfReplaceAll]);
end;

function StripstringHtml(sHtml: UnicodeString): UnicodeString;
var
  ReplaceString: UnicodeString;
begin
  ReplaceString := sHtml;

  ReplaceString := StringReplace(ReplaceString, '<p>', '', [rfReplaceAll, rfIgnoreCase]);
  ReplaceString := StringReplace(ReplaceString, '</p>', ' ', [rfReplaceAll, rfIgnoreCase]);
  ReplaceString := StringReplace(ReplaceString, '<br />', ' ', [rfReplaceAll, rfIgnoreCase]);
  ReplaceString := StringReplace(ReplaceString, '&nbsp;', ' ', [rfReplaceAll, rfIgnoreCase]);
  ReplaceString := StringReplace(ReplaceString, '<strong>', ' ', [rfReplaceAll, rfIgnoreCase]);
  ReplaceString := StringReplace(ReplaceString, '</strong>', ' ', [rfReplaceAll, rfIgnoreCase]);
  ReplaceString := StringReplace(ReplaceString, '<div class="node">', ' ', [rfReplaceAll, rfIgnoreCase]);
  ReplaceString := StringReplace(ReplaceString, '<em>', '', [rfReplaceAll, rfIgnoreCase]);
  ReplaceString := StringReplace(ReplaceString, '</em>', '', [rfReplaceAll, rfIgnoreCase]);
  ReplaceString := StringReplace(ReplaceString, '¿', '''', [rfReplaceAll, rfIgnoreCase]);
  ReplaceString := StringReplace(ReplaceString, '</div>', '', [rfReplaceAll, rfIgnoreCase]);
  ReplaceString := StringReplace(ReplaceString, '<b>', '', [rfReplaceAll, rfIgnoreCase]);
  ReplaceString := StringReplace(ReplaceString, '</b>', '', [rfReplaceAll, rfIgnoreCase]);
  ReplaceString := StringReplace(ReplaceString, '<li>', '', [rfReplaceAll, rfIgnoreCase]);
  ReplaceString := StringReplace(ReplaceString, '</li>', '', [rfReplaceAll, rfIgnoreCase]);
  ReplaceString := StringReplace(ReplaceString, '<ul>', '', [rfReplaceAll, rfIgnoreCase]);
  ReplaceString := StringReplace(ReplaceString, '</ul>', '', [rfReplaceAll, rfIgnoreCase]);
  ReplaceString := StringReplace(ReplaceString, '[&#8230;]', '...', [rfReplaceAll, rfIgnoreCase]);
  ReplaceString := StringReplace(ReplaceString, '&#8217;', '''', [rfReplaceAll, rfIgnoreCase]);
  ReplaceString := StringReplace(ReplaceString, '&#8217;', '''', [rfReplaceAll, rfIgnoreCase]);
  ReplaceString := StringReplace(ReplaceString, '&#8203;', '', [rfReplaceAll, rfIgnoreCase]);
  ReplaceString := StringReplace(ReplaceString, '&rsquo;', '''', [rfReplaceAll, rfIgnoreCase]);
  ReplaceString := StringReplace(ReplaceString, '&#160;', ' ', [rfReplaceAll, rfIgnoreCase]);
  ReplaceString := StringReplace(ReplaceString, '&egrave;', 'è', [rfReplaceAll, rfIgnoreCase]);
  ReplaceString := StringReplace(ReplaceString, '&ugrave;', 'ù', [rfReplaceAll, rfIgnoreCase]);
  ReplaceString := StringReplace(ReplaceString, '&ugrave;', 'ù', [rfReplaceAll, rfIgnoreCase]);
  ReplaceString := StringReplace(ReplaceString, '&agrave;', 'à', [rfReplaceAll, rfIgnoreCase]);
  ReplaceString := StringReplace(ReplaceString, '&igrave;', 'ì', [rfReplaceAll, rfIgnoreCase]);
{$IFDEF MSWINDOWS}
  ReplaceString := StringReplace(ReplaceString, AnsiChar(#10), ' ', [rfReplaceAll, rfIgnoreCase]);
  ReplaceString := StringReplace(ReplaceString, AnsiChar(#13), ' ', [rfReplaceAll, rfIgnoreCase]);
  ReplaceString := StringReplace(ReplaceString, AnsiChar(#0), '', [rfReplaceAll, rfIgnoreCase]);
{$ENDIF}
  try
{$IFNDEF FPC}
    Result := TNetEncoding.HTML.Decode(ReplaceString);
{$ELSE}
    Result := ReplaceString;
{$ENDIF FPC}
  except
    Result := ReplaceString;
  end;

end;

function StripStringWide(const strStringa: UnicodeString): UnicodeString;
var
  strTemp: UnicodeString;
begin
  strTemp := UpperCase(strStringa);
  strTemp := StringReplace(strTemp, '<', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, '>', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, '.', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, ' ', '%', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, ',', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, '-', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, '/', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, '\', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, '@', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, '*', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, ':', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, '&', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, '(', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, ')', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, '=', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, '€', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, '[', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, ']', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, '{', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, '}', '', [rfReplaceAll, rfIgnoreCase]);
  Result := strTemp;
end;

function StripString(const strStringa: string): string;
var
  strTemp: string;
begin
  strTemp := UpperCase(strStringa);
  strTemp := StringReplace(strTemp, '<', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, '>', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, '.', '', [rfReplaceAll, rfIgnoreCase]);
  // VERY IMPORTANT SPACE IS REPLACED BY JOLLY SEARCH SIGN %
  strTemp := StringReplace(strTemp, ' ', '%', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, ',', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, '-', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, '/', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, '\', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, '@', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, '*', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, ':', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, '&', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, '(', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, ')', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, '=', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, '€', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, '[', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, ']', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, '{', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, '}', '', [rfReplaceAll, rfIgnoreCase]);
  Result := strTemp;
end;

{$IFNDEF FPC}

function GetParamByName(const aName: string; aDataset: TClientDataset): TParam;
var
  i: integer;
begin
  Result := nil;
  if aDataset.Params.Count > 0 then
  begin
    for i := 0 to Pred(aDataset.Params.Count) do
      if LowerCase(aDataset.Params[i].Name) = LowerCase(aName) then
        Result := aDataset.Params[i];
  end;
end;
{$ENDIF FPC}

function ReadParam(parDataset: TDataset; const sKey: string; const sDefault: string): string;
var
  valore: string;
begin
  // ******* Specifiche 2008-0002 lettura parametro locale *******************
  // ******************** funzione di scrittura impostazioni su db  *************
  // questa funzione legge una stringa dal registro nell'area del programma
  // la string aè collegata ad un terminale tramite un codice ufficio
  // campo office_id
  // ******************************************************************************
  if not parDataset.Active then
    parDataset.Open;

  if parDataset.Locate('OFF_KEY', sKey, []) then
    valore := parDataset.FieldByName('OFF_VALUE').Value
  else
  begin
    valore := sDefault;
    // WriteString(chiave, Stringa,  valore,  False);
    // NOTA: quando possibile verrà registrato un valore di default su db
    // cosa ora non possibile..
  end;

  Result := valore;
end;

function MakeTag(TagName, Value: String): string;
begin
  // ******** questa funzione genera un tag xml da una string tag+value ******
  Result := '<' + TagName + '>' + Value + '</' + TagName + '>';
end;

function MakeXML(Dataset: TDataset): string;
var
  i: integer;
begin
  Result := '';
  if (not Dataset.Active) or (Dataset.IsEmpty) then
    Exit;
  Result := Result + '<' + Dataset.Name + '>';
  Dataset.First;
  while not Dataset.Eof do
  begin
    Result := Result + '<RECORD>';
    for i := 0 to Dataset.Fields.Count - 1 do
      Result := Result + MakeTag(Dataset.Fields[i].Name, Dataset.Fields[i].text);
    Result := Result + '</RECORD>';
    Dataset.Next;
  end;
  Result := Result + '</' + Dataset.Name + '>';
end;

// ------------------------------------------------------------------------------

/// //////////////////////////////////////////////
// Lpad
// this function pads a string by adding
// n times a char (padChar)
function Lpad(padString: string; strlength: integer; padChar: string): string;
begin
  if length(padString) > strlength then
    padString := copy(padString, 1, strlength);
  While not(length(padString) >= strlength) do
    padString := padChar + padString;
  Result := padString;
end;

function Indent(length, level: smallint): string;
begin
  Result := Lpad(' ', length * level, ' ');
end;

/// //////////////////////////////////////////////
// lpad
// this function pads a string by adding
// n times a char (padChar) and converting an integer to a string.
function Lpad(padNum: Int64; strlength: integer; padChar: string): string;
var
  padString: string;
begin
  padString := inttostr(padNum);
  if length(padString) > strlength then
    padString := copy(padString, 1, strlength);
  While not(length(padString) >= strlength) do
    padString := padChar + padString;
  Result := padString;
end;

/// //////////////////////////////////////////////
// lpad
// this function pads a string by adding
// n times a char (padChar) and converting an integer to a string.
function Lpad(padNum: integer; strlength: integer; padChar: string): string;
var
  padString: string;
begin
  padString := inttostr(padNum);
  if length(padString) > strlength then
    padString := copy(padString, 1, strlength);
  While not(length(padString) >= strlength) do
    padString := padChar + padString;
  Result := padString;
end;

/// //////////////////////////////////////////////
// Rpad
// this function pads a string by adding
// n times a char (padChar)
function Rpad(padString: string; strlength: integer; padChar: string): string;
begin
  if length(padString) > strlength then
    padString := copy(padString, 1, strlength);
  While not(length(padString) >= strlength) do
    padString := padString + padChar;
  Result := padString;
end;

/// //////////////////////////////////////////////
// Rpad
// this function pads a string by adding
// n times a char (padChar)
function Rpad(padNum: Int64; strlength: integer; padChar: string): string;
var
  padString: string;
begin
  padString := inttostr(padNum);
  if length(padString) > strlength then
    padString := copy(padString, 1, strlength);
  While not(length(padString) >= strlength) do
    padString := padString + padChar;
  Result := padString;
end;


// ****************************************************************************************

initialization

// Initialize the unit
JanuaPlatforms := [];
{$IFDEF WINDOWS}
JanuaPlatforms := JanuaPlatforms + [TJanuaPlatform.josWindows];
{$ENDIF WINDOWS}
{$IFDEF ANDROID}
JanuaPlatforms := JanuaPlatforms + [TJanuaPlatform.josAndroid];
{$ENDIF ANDROID}

finalization

// Free resources etc. You can olny have a finalization if you have an initialization.

end.
