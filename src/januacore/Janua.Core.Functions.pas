unit Janua.Core.Functions;

{$I JANUACORE.INC}

interface

uses
{$IFDEF delphixe}
  // System Libraries Delphi .............................................................................
  System.JSON, System.JSONConsts, System.DateUtils, System.Classes, System.SysUtils, System.Math,
  System.Strutils, System.Variants, System.IOUtils, Soap.EncdDecd, System.Rtti,
  // Custom Libraries ........................................................
  Writers, Delphi.Mocks.Helpers, Spring,
  // Data Access Components
  Data.DB,
  /// Firedac units (both fpc and Delphi compatible ................
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Stan.Intf,

{$IFDEF MSWINDOWS}
  Winapi.Windows, Winapi.ShellAPI, Winapi.ShlObj, Winapi.ActiveX, Winapi.WinSock, Winapi.WinInet,
  System.Ansistrings,
{$ENDIF MSWINDOWS}
  // ----------- WebBroker Posix
{$IF Defined(WEBBROKER)}
  Web.HTTPApp,
{$ENDIF WEBBROKER}
  // ----------- MacOS Posix
{$IFDEF MACOS}
  MacApi.CoreFoundation, MacApi.ObjectiveC,
{$IFNDEF IOS}
  MacApi.AppKit, MacApi.CocoaTypes, MacApi.Foundation, MacApi.Helpers,
{$ELSE}
  FMX.Helpers.iOS, iOSapi.Foundation,
{$ENDIF}
{$IFDEF POSIX}
  Posix.Stdlib,
{$ENDIF POSIX}
{$ENDIF MACOS}
  // ----------- Android Delphi
{$IF Defined(ANDROID)}
  Androidapi.JNI.GraphicsContentViewText,
  Androidapi.JNI.Net,
  Androidapi.JNI.App,
  Androidapi.Helpers,
{$ENDIF ANDROID}
{$ENDIF delphixe}
{$IFDEF fpc}
  // System Libraries Lazarus .............................................................................
  Classes, SysUtils, Math, Strutils, Variants, Typinfo, DB, fpjson, jsonparser, base64, VirtualTable,
{$ENDIF FPC}
  // INdy Components Delphi - FPC
  IdCoder, IdBaseComponent, IdComponent, IdRawBase, IdRawClient, IdIcmpClient, {IdURI,} IdGlobal, IdCoderMIME,
  // janua common Libraries ....................................................
  Janua.Core.Types, Janua.Core.Roundings;

// REST OpenStreetMaps GMaps functions
function NormalizeOpenStreetAddress(const aAddress: string; convertcommas: boolean = true): string; inline;

// System and Utils
function JSupports(aIntfName: string; aIntf: IInterface; aGUID: TGUID; out oIntf;
  aRaise: boolean = true): boolean;
procedure JanuaFree(Obj: TObject);

// JanuaProject GUI Dialogs Functions........................................................................
procedure JShowMessage(smessage: string; sExtra: string = ''; sHelp: string = ''); inline;
procedure JShowWarning(smessage: string; sExtra: string = ''; sHelp: string = ''); inline;
procedure JShowError(smessage: string; sExtra: string = ''; sHelp: string = ''); inline;
function SelectMultiString(const Caption: string; const a: array of string; const b: array of integer)
  : integer; overload;
function SelectMultiString(const Caption: string; const a: array of string): integer; overload;
function JMessageDlg(smessage: string; sExtra: string = ''; sHelp: string = ''): boolean; inline;
function JanuainputText(const sTitle, sCaption: string; const sDefault: string = ''): string; inline;
function InputInteger(const InputText: string; const aDefault: integer = 0): integer; inline;
function InputBox(const sTitle, sCaption: string; sDefault: string): string; inline;
function JanuaInputDate(const sTitle, sCaption: string; var aDate: TDateTime): boolean; inline;
function JanuaInputDateTime(const sTitle, sCaption: string; var aDate: TDateTime): boolean; inline;
function OpenFolderLowLevel(var aFolder: string; const aTitle, aButtonCaption: string): boolean;
function JanuaOpenFolder(var aFolder: string; const aTitle, aButtonCaption: string): boolean;

// Xml Conversion Routines ..................................................................................
function XMLBool(aInput: string): boolean;
function XMLDateTime(aInput: string): TDateTime;
function XMLDouble(aInput: string): Double;
function XMLBoolString(aInput: boolean): string;
function XMLDateTimeString(aInput: TDateTime): string;
function XMLDoubleString(aInput: Double): string;

// Impiegata per la registrazione da UniGUI?.................................................................
function PwdComplexity(aPwd: string): boolean;

// Abbreviazioini
function tpl(aValue: string): string;

// Straming Management Functions .............................................................................
procedure StreamBytes(Stream: TStream; const Bytes: TBytes); inline;
procedure StreamBytes2(Stream: TStream; const Bytes: TBytes); inline;
procedure StreamUTF8Str(Stream: TStream; const S: UTF8String); inline;
procedure StreamUTF8Str2(Stream: TStream; const S: UTF8String); inline;
procedure StreamDoubles(Stream: TStream; const Data: array of Double);
procedure Int64ToBytes(Value: Int64; var Bytes: TBytes); inline;
function BytesToInt64(const Bytes: TBytes): Int64; inline;


// File and Steam Procedures and Functions

function FileContainsBOM(fileName: string): boolean; stdcall;
function FileRemoveBOM(fileIn, fileOut: string): string; stdcall;

// Code64 Encoding 64 Functions.
function Encode64(const S: string; const ByteEncoding: IIdTextEncoding = nil): string; overload;
function Decode64(const S: string; const ByteEncoding: IIdTextEncoding = nil): string; overload;
function Encode64UTF8(const S: string): string;
function Decode64UTF8(const S: string): string;
function DecodeString64(const Input: string): string;
function EncodeString64(const Input: string): string;
function Encode64(aStream: TStream): string; overload;
function Encode64(aBlob: TJanuaBlob): string; overload;
function Decode64(const aString: string; aStream: TStream): string; overload;
function Decode64(const aString: string; aBlob: TJanuaBlob): string; overload;
function URLEncode64(const aString: string): string;
function URLDecode64(const aString: string): string;
function Sha256(const aString: string): string;
function Sha256DEC(const aString: string): string;

// Encrypt / Decrypt Simple Strings

/// <summary>  Encrypts a string and outputs a Encrypted Encoded64 string </summary>
/// <param name="AStr"> The string to be Encrypted </param>
/// <remarks> Encrypt Des3 in Janua Ouputs an Encoded64 String According to PassPhrase
/// and SALT defined in Application Unit </remarks>
function EncryptDES3(const AStr: string): string;
function DecryptDES3(const AStr: string): string;

// GUID
function GenerateGUID: TGUID;
function GenerateGUIDString: string;
function StringToGUID(aString: string): TGUID;

/// Math Functions
///
{ JanuaProject Rounding Functions **************************************************************** }
function FRound(number: Double; digits: integer): Double; overload;
function FRound(number: Single; digits: integer): Double; overload;
function FRound(number: Extended; digits: integer): Double; overload;
function DistanceBetweenLonLat(const Lat1, Lon1, Lat2, Lon2: Extended): Extended;

/// String check and Code functions
///
{ ERP Accounting Related Functions **************************************************************** }
function FPartitaIva(piva: string; var Error: string; var specification: string): boolean; inline;
// funzione che cerca e sostituisce un testo all'intero di un richEdit .........
function GenerateInternalBarcode(P_ID: integer; p_size: integer; p_color: integer): string;
// funzione che genera un barcode 'calcolato' per i dati interni macchina.......
function GenerateEAN13(p_barcode: string): string; inline;
function generateAnagBarcode(p_barcode: string): string; inline;
function generateIntAnagBarcode(p_barcode: integer): string; inline;

{ Test TValue *********************************************************************** }
procedure PostDataset(aDataset: TDataset);
{$IFDEF delphixe}
{ Dataset Related Functions *********************************************************************** }
// FDMemTable Procedures
procedure CloneDataset(DataSet: TDataset; dataclone: TFdMemTable; bStructure: boolean = true);
  overload; inline;
procedure CloneDatasetStruct(DataSet: TDataset; dataclone: TFdMemTable); overload; inline;
function ExportDatasetToBase64String(DataSet: TFdMemTable; var aString: string): boolean; overload;
function ImportDatasetFromXMLMemo(aDataset: TFdMemTable; aList: TStrings): boolean; overload; inline;
function ImportDatasetFromXMLString(aDataset: TFdMemTable; aString: string): boolean; overload; inline;

function ExportDatasetToBase64String(DataSet: TDataset; var aString: string): boolean; overload;
function ExportDatasetToXMLStream(DataSet: TDataset; aStream: TStream): boolean;
function ExportDatasetToXMLMemo(aDataset: TDataset; aList: TStrings): boolean;
{$ENDIF delphixe}
{$IFDEF fpc}
procedure CloneDataset(DataSet: TDataset; dataclone: TVirtualTable); overload; inline;
procedure CloneDatasetStruct(DataSet: TDataset; dataclone: TVirtualTable); overload;
function ExportDatasetToBase64String(DataSet: TVirtualTable; var aString: string): boolean; overload;
function ImportDatasetFromXMLMemo(aDataset: TVirtualTable; aList: TStrings): boolean; overload;
function ImportDatasetFromXMLString(aDataset: TVirtualTable; aString: string): boolean; overload;
function ExportDatasetToBase64String(DataSet: TDataset; var aString: string): boolean; overload;
function ExportDatasetToXMLStream(DataSet: TDataset; aStream: TStream): boolean;
function ExportDatasetToXMLMemo(aDataset: TDataset; aList: TStrings): boolean;
{$ENDIF fpc}
procedure CopyRecord(DataSet, dataclone: TDataset);
procedure CloneDataset(DataSet, dataclone: TDataset); overload; inline;
function ExportDatasetToBase64Stream(DataSet: TDataset; aStream: TStream): boolean;
function ExportDatasetToBase64Memo(aDataset: TDataset; aList: TStrings): boolean;
function ExportDatasetToXMLString(aDataset: TDataset; var aString: string): boolean;
function ImportDatasetFromXMLMemo(aDataset: TDataset; aList: TStrings): boolean; overload; inline;
function ImportDatasetFromXMLString(aDataset: TDataset; aString: string): boolean; overload; inline;

function GetFieldByName(DataSet: TDataset; fieldName: string; const CheckFields: boolean = False): TField;
  overload; inline;
function ExistFieldByName(DataSet: TDataset; fieldName: string): boolean; inline;
function GetFieldByName(DataSet: TDataset; const fieldName: string; out aField: TField): boolean;
  overload; inline;
function StoreBlobToField(aField: TBlobField; aBlob: TJanuaBlob): boolean; inline;
function StoreFieldToBlob(aFrom: TBlobField; aTo: TJanuaBlob): boolean; inline;
function StoreBlobToBlob(aField: TJanuaBlob; aBlob: TJanuaBlob): boolean; inline;
function StoreStreamToBlob(aStream: TStream; aBlob: TJanuaBlob): boolean; inline;
function StoreBlobToStream(aStream: TStream; aBlob: TJanuaBlob): boolean; inline;
function IsIdenticalStreams(Source, Destination: TStream): boolean; inline;
function StoreBlobToBase64Stream(aBlob: TJanuaBlob; aStream: TStream): boolean; inline;
function GetBlobFromBase64Stream(aBlob: TJanuaBlob; aStream: TStream): boolean; inline;
function StoreBlobToBase64String(aBlob: TJanuaBlob; out aString: string): boolean; inline;
function GetBlobFromBase64String(aBlob: TJanuaBlob; const aString: string): boolean; inline;
function StreamToString(const aStream: TStream): string; inline;

// funzioni a monte di GetFieldValue

function GetFieldAsString(aDataset: TDataset; aFieldName: string): string;
function GetFieldAsDate(aDataset: TDataset; aFieldName: string): TDateTime;
function GetFieldAsInteger(aDataset: TDataset; aFieldName: string): integer;
function GetFieldAsLargeInt(aDataset: TDataset; aFieldName: string): Int64;
function GetFieldAsBoolean(aDataset: TDataset; aFieldName: string): boolean;

procedure SetFieldValue(const aValue: string; aDataset: TDataset; aFieldName: string;
  const CheckFields: boolean = False); overload;
procedure SetFieldValue(const aValue: smallint; aDataset: TDataset; aFieldName: string;
  const CheckFields: boolean = False); overload;
procedure SetFieldValue(const aValue: Int64; aDataset: TDataset; aFieldName: string;
  const CheckFields: boolean = False); overload;
procedure SetFieldValue(const aValue: integer; aDataset: TDataset; aFieldName: string;
  const CheckFields: boolean = False); overload;
procedure SetFieldValue(const aValue: boolean; aDataset: TDataset; aFieldName: string;
  const CheckFields: boolean = False); overload;
procedure SetFieldValue(const aValue: TDate; aDataset: TDataset; aFieldName: string;
  const CheckFields: boolean = False); overload;
procedure SetFieldValue(const aValue: TDateTime; aDataset: TDataset; aFieldName: string;
  const CheckFields: boolean = False); overload;
procedure SetFieldValue(const aValue: Extended; aDataset: TDataset; aFieldName: string;
  const CheckFields: boolean = False); overload;
procedure SetFieldValue(const aValue: Double; aDataset: TDataset; aFieldName: string;
  const CheckFields: boolean = False); overload;
procedure SetFieldValue(const aValue: Real; aDataset: TDataset; aFieldName: string;
  const CheckFields: boolean = False); overload;

procedure GetFieldValue(var aValue: string; aDataset: TDataset; aFieldName: string;
  const CheckFields: boolean = False); overload;

procedure DatasetFieldValue(aDataset: TDataset; aFieldName: string; var aValue: string;
  const CheckFields: boolean = False); overload;

procedure GetFieldValue(var aValue: integer; aDataset: TDataset; aFieldName: string;
  const CheckFields: boolean = False); overload;

procedure DatasetFieldValue(aDataset: TDataset; aFieldName: string; var aValue: integer;
  const CheckFields: boolean = False); overload;

procedure GetFieldValue(var aValue: Int64; aDataset: TDataset; aFieldName: string;
  const CheckFields: boolean = False); overload;

procedure DatasetFieldValue(aDataset: TDataset; aFieldName: string; var aValue: Int64;
  const CheckFields: boolean = False); overload;

procedure GetFieldValue(var aValue: smallint; aDataset: TDataset; aFieldName: string;
  const CheckFields: boolean = False); overload;

procedure DatasetFieldValue(aDataset: TDataset; aFieldName: string; var aValue: smallint;
  const CheckFields: boolean = False); overload;

{ procedure GetFieldValue(var aValue: integer; aDataset: TDataset; aFieldName: string;
  const CheckFields: boolean = False); overload; }

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
function EncodeURIComponentIOS(Source: string): string;
function EncodeURIComponent(const ASrc: string): UTF8String;
procedure HtmlReplace(var aTemplate: string; aParam: string; aValue: string); overload; inline;
procedure HtmlReplace(var aTemplate: string; aParam: string; aValue: integer); overload; inline;
procedure HtmlReplace(var aTemplate: string; aParam: string; aValue: Extended); overload; inline;
procedure HtmlReplace(var aTemplate: string; aParam: string; aValue: TDateTime); overload; inline;
function TryHtmlReplace(var aTemplate: string; aParam: string; aValue: string): boolean; overload; inline;
function TryHtmlReplace(var aTemplate: string; aParam: string; aValue: integer): boolean; overload; inline;
function TryHtmlReplace(var aTemplate: string; aParam: string; aValue: Extended): boolean; overload; inline;
function TryHtmlReplace(var aTemplate: string; aParam: string; aValue: TDateTime): boolean; overload; inline;

procedure JavascriptReplace(var aTemplate: string; aParam: string; aValue: Extended); overload;
procedure JavascriptReplace(var aTemplate: string; aParam: string; aValue: boolean); overload;

function Ping(const aServer: string): boolean; inline;
function GetIPFromHost(const HostName: String): string;
function URLEncode(const AStr: String): String; inline;
function URLParamEncode(const aParam: String): String;
function StripstringHtml(sHtml: UnicodeString): UnicodeString;

// Standard StringList Functions
function GetListInteger(aList: TStrings; aParam: string): integer; overload;
function GetListInt64(aList: TStrings; aParam: string): Int64; overload;
function GetListExtended(aList: TStrings; aParam: string): Double; overload;
function GetListString(aList: TStrings; aParam: string): string; overload;
function GetListDate(aList: TStrings; aParam: string): TDateTime; overload;
function GetListBoolean(aList: TStrings; aParam: string): boolean; overload;

// Date Functions

function DateYear(const aDate: TDateTime): Word; inline;
function DateYearToStr(const aDate: TDateTime; const aDigits: Byte = 4): string; inline;
function DateMonth(const aDate: TDateTime): Word; inline;
function DateDay(const aDate: TDateTime): Word; inline;
function DateFile(const aDate: TDateTime): string; inline;
function SumDateTime(const aDate: TDate; aTime: TDateTime): TDateTime;

{$IFDEF WEBBROKER}
// WebBroker Public functions
function AddCookie(var aResponse: TWebResponse; const iValid: integer; const sKey, sValue: string): TDateTime;
function HttpGetParamValue(aRequest: TWebRequest; aParam: string): string; overload;
function HttpGetQueryValue(aRequest: TWebRequest; aParam: string): string;
function HttpGetParamInteger(aRequest: TWebRequest; aParam: string): integer; inline;
function HttpGetCookieInteger(aRequest: TWebRequest; aParam: string): integer; inline;
function HttpGetCookie(aRequest: TWebRequest; aParam: string): string; inline;
function HttpGetParamLargeInt(aRequest: TWebRequest; aParam: string): Int64; inline;
function HttpGetParamDate(aRequest: TWebRequest; aParam: string): TDateTime; inline;
function HttpGetParamDouble(aRequest: TWebRequest; aParam: string): Double; inline;
function HttpGetParamBoolean(aRequest: TWebRequest; aParam: string): boolean; inline;
{$ENDIF}
function HttpParseNumber(sNumber: string): Double; inline;
function HttpParseDate(sDate: string): TDateTime; inline;
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
function MakeXML(DataSet: TDataset): string;

// String Manipulation functions

{ String Related Functions *********************************************************************** }
function Capitalize(AStr: string): string; inline;
function CamelCase(const AStr: string): string; inline;
procedure ReplaceStringPos(var text: TStringList; searchstr: string; newstr: string); inline;
function ConvertFloatToString(const Value: Double; const digits: integer): string; inline;
function CompareStringLists(List1, List2: TStringList): boolean; inline;
procedure CompareStringListsDiff(List1, List2: TStringList; Missing1, Missing2: TStrings);
procedure JSortTStrings(Strings: TStrings); inline;
function StripStringSearchIndex(const strStringa: string): string; inline;
function StripString(const strStringa: string; const spacereplace: string): string; overload; inline;
function StripString(const strStringa: string): string; overload; inline;
function StripStringWide(const strStringa: UnicodeString): UnicodeString; inline;
function IsNumeric(const pTestVar: string): boolean; inline;
function IsNumericEquation(const pTestVar: string): boolean;
function IsHex(const aHex: string): boolean; inline;
Function ControllaCF(const cf: String; var Error: string): boolean;
function Valctrl(const resto: integer): string; inline;
function ValPari(const carattere: char): integer; inline;
function ValDispari(const carattere: char): integer; inline;
function IsMail(const email: string): boolean; inline;
function VerifyFiscalCode(const Codfiscale: String; var strErrore: string): boolean; inline;
procedure StringListAssign(ToList: TStrings; FromList: TStrings; const CheckLength: boolean); overload;
procedure StringListAssignBack(ToList: TStrings; FromList: TStrings; const CheckLength: boolean); overload;
procedure StringListAssign(ToList: TStrings; FromList: string; const CheckLength: boolean); overload;
procedure StringAssign(var ToList: string; FromList: string; const CheckLength: boolean); overload;
procedure StringAssign(var ToList: string; FromList: TStrings; const CheckLength: boolean); overload;

function IsValidEmailUTF(email: string): boolean; inline;
function IsValidEmailANSI(Value: AnsiString): boolean; inline;
function IsValidEmail(Value: string): boolean; overload; inline;
function IsValidEmail(Value: AnsiString): boolean; overload; inline;
function StringLength(const S: string): integer;

function JIfThen(aValue: boolean; const ATrue: char; AFalse: char): char;

function IncludeTrailingURLDelimiter(const AURL: string): string;
function RemoveSuffixURLDelimiter(const AURL: string): string;
function ConcatUrl(const AURL, aDir: string): string;

/// AnsiString WideString Conversion
/// <summary> Converts an unicode string to an Ansistring according to CodePage, defaults to DefaultSystemCodePage
/// </summary>
{$IFNDEF NEXTGEN}
{$IFDEF POSIX}
function StringToAnsiString(const Source: UnicodeString; CodePage: integer = 0): AnsiString;
{$ELSE}
function StringToAnsiString(const Source: UnicodeString; CodePage: UINT = 0): AnsiString;
{$ENDIF}
function AnsiStringToString(const Source: RawByteString): UnicodeString; overload;
function AnsiStringToString(const Source: AnsiString): UnicodeString; overload;
{$ENDIF NEXTGEN}
// allinea testo a sinistra left pad
function Lpad(padString: string; strlength: integer; padChar: string = '0'): string; overload; inline;
// allinea numero a sinistra e lo trsforma in testo di conseguenza
function Lpad(padNum: Int64; strlength: integer; padChar: string = '0'): string; overload; inline;
// allinea numero a sinistra e lo trsforma in testo di conseguenza
function Lpad(padNum: integer; strlength: integer; padChar: string = '0'): string; overload; inline;
// allinea testo a sinistra left pad
function Rpad(padString: string; strlength: integer; padChar: string = '0'): string; overload; inline;
// allinea testo a destra right pad overlod input numerico
function Rpad(padNum: Int64; strlength: integer; padChar: string = '0'): string; overload; inline;
function CountSpaces(const str: string): integer;
/// <summary> </summary>
function FloatToStrComma(const aNumber: Double): string;
/// <summary> </summary>
function FloatToStrDotted(const aNumber: Double): string;
/// <summary> </summary>
function IsPasswordComplex(const password: string): boolean;
/// <summary> </summary>
function StrToFloatAny(const S: string): Extended;

/// <summary>
/// This function indents
/// </summary>
/// <param name="length">
/// length of every indent in spaces
/// </param>
/// <param name="level">
/// level of indenting
/// </param>
function Indent(Length, level: integer): string; inline;

{ Operating System Related Functions ************************************************************** }
procedure Cls;
{$IFDEF IOS} function PNSStr(const AStr: String): PNSString; {$ENDIF}
procedure DebugMsg(const Msg: String);
function WriteLog(log: string; logfile: string): boolean;
function WriteCustomLog(log: string; logfile: string): boolean;
function ElapsedTime(const et, st: TDateTime): string; inline;
function OpenFolderAndSelectFile(const fileName: string): boolean;
function ConvertDocToPDF(const aFile: TFileName): TFileName;
function CheckWordInstaled: boolean;
{$IFNDEF FPC}
procedure ExecProc(aProc: TProc; aProcName: string; aClass: TObject = nil);
procedure ExecFunc(aFunc: TFunc<integer>; aFuncName: string; aClass: TObject = nil); overload;
procedure ExecFunc(aFunc: TFunc<boolean>; aFuncName: string; aClass: TObject = nil); overload;
{$ENDIF}
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
{$IFDEF FPC}
// Specific functions for Free Pascal
function DateToISO8601(const aDate: TDateTime; AInputIsUTC: boolean = true): string;
{$ENDIF}
/// ****************************************** Code Type Definitions **************************************************

const
  NUMBERS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
  HEXADECIMALS = NUMBERS + ['A', 'B', 'C', 'F'];
  FLOAT = NUMBERS + ['.'];

const
  wdExportFormatPDF = 17; // WinWord Code for PDF format.

implementation

uses
  IdHash, IdHashSHA, System.Hash,
{$IFDEF DELPHIXE}
  System.NetEncoding, Soap.XSBuiltIns, Data.FmtBcd, System.Types, System.Character
{$IFDEF MSWINDOWS}, System.Win.ComObJ, System.Win.Registry {$ENDIF},
{$ELSE}
  FileUtil, Types, DateUtils,
{$ENDIF DELPHIXE}
  // Encrypt DECCipher Algoritms
  Janua.Core.Crypt,
  // Janua Core Libraries and Application Framework
  Janua.Core.JSON, Janua.Controls.Dialogs.Intf, Janua.Application.Framework;

const
  Komma: TFormatSettings = (DecimalSeparator: ',');
  Dot: TFormatSettings = (DecimalSeparator: '.');

  // Valid characters in an "atom"
  atom_chars = [#33 .. #255] - ['(', ')', '<', '>', '@', ',', ';', ':', '\', '/', '"', '.', '[', ']', #127];

  // Valid characters in a "quoted-string"
  quoted_string_chars = [#0 .. #255] - ['"', #13, '\'];

  // Valid characters in a subdomain
  letters = ['A' .. 'Z', 'a' .. 'z'];
  letters_digits = ['0' .. '9', 'A' .. 'Z', 'a' .. 'z'];
  subdomain_chars = ['-', '0' .. '9', 'A' .. 'Z', 'a' .. 'z'];
  digits = ['0' .. '9'];
  upper_letters = ['A' .. 'Z'];
  lower_letters = ['a' .. 'z'];
  extra_chars = ['(', ')', '<', '>', '@', ',', ';', ':', '.', '[', ']', '?', '!', '$', '€', '%', '£', '^',
    '°', '*', '+', '-', '°', '§'];

function StreamToString(const aStream: TStream): string;
var
  SS: TStringStream;
begin
  if aStream <> nil then
  begin
    SS := TStringStream.Create('');
    try
      SS.CopyFrom(aStream, 0); // Exception: TStream.Seek not implemented
      Result := SS.DataString;
    finally
      SS.Free;
    end;
  end
  else
  begin
    Result := '';
  end;
end;

function FloatToStrDotted(const aNumber: Double): string;
begin
  Result := FloatToStr(aNumber, Dot);
end;

function FloatToStrComma(const aNumber: Double): string;
begin
  Result := FloatToStr(aNumber, Komma);
end;

function StrToFloatAny(const S: string): Extended;
begin
  if not TryStrToFloat(S, Result, Komma) then
    Result := StrToFloat(S, Dot);
end;

function IsPasswordComplex(const password: string): boolean;
var
  hasUppercase: boolean;
  hasLowercase: boolean;
  hasDigit: boolean;
  hasSpecialChar: boolean;
  i: integer;
  ch: char;
begin
  // Initialize flags
  hasUppercase := False;
  hasLowercase := False;
  hasDigit := False;
  hasSpecialChar := False;

  {
    digits = ['0' .. '9'];
    upper_letters = ['A' .. 'Z'];
    lower_letters = ['a' .. 'z'];
    extra_chars = ['(', ')', '<', '>', '@', ',', ';', ':', '.', '[', ']', '?', '!', '$', '€', '%', '£', '^',
    '°', '*', '+', '-', '°', '§'];
  }

  // Check each character in the password
  for ch in password do
  begin
    if CharInSet(ch, upper_letters) then
      hasUppercase := true
    else if CharInSet(ch, lower_letters) then
      hasLowercase := true
    else if CharInSet(ch, digits) then
      hasDigit := true
    else if CharInSet(ch, digits) then
      hasSpecialChar := true;
  end;

  // Check complexity requirements
  Result := (Length(password) >= 8) and hasUppercase and hasLowercase and hasDigit and hasSpecialChar;
end;

function CountSpaces(const str: string): integer;
var
  ch: char;
begin
  Result := 0;
  for ch in str do
  begin
    if ch = ' ' then
      Inc(Result);
  end;
end;

function OpenFolderLowLevel(var aFolder: string; const aTitle, aButtonCaption: string): boolean;
var
  LCheck: boolean;
{$IFDEF MSWINDOWS}
  procedure WinVistaSelectFolder;
  var
    FileDialog: IFileDialog;
    hr: HRESULT;
    IResult: IShellItem;
    fileName: PWideChar;
    Settings: Cardinal;
    Title: String;
  begin
    hr := CoCreateInstance(CLSID_FileOpenDialog, nil, CLSCTX_INPROC_SERVER, IFileDialog, FileDialog);
    if hr = S_OK then
    begin
      FileDialog.GetOptions(Settings);
      Settings := Settings or FOS_PICKFOLDERS or FOS_FORCEFILESYSTEM;
      FileDialog.SetOptions(Settings);
      FileDialog.SetOkButtonLabel(PWideChar(aButtonCaption));
      Title := aTitle;
      FileDialog.SetTitle(PWideChar(Title));
      hr := FileDialog.Show(0);
      if hr = S_OK then
      begin
        hr := FileDialog.GetResult(IResult);
        if hr = S_OK then
        begin
          Result := true;
          IResult.GetDisplayName(SIGDN_FILESYSPATH, fileName);
          aFolder := fileName;
        end;
      end;
    end;
  end;
{$ENDIF}
{$IFDEF MSWINDOWS}
  procedure WinXPSelectFolder;
  var
    BrowseInfo: TBrowseInfo;
    ItemIDList: PItemIDList;
    ItemSelected: PItemIDList;
    NameBuffer: array [0 .. MAX_PATH] of char;
  begin
    // Should be doing some error handling here. Omitted for clarity, but
    // obviously should raise some sort of exception if anything fails instead
    // of just returning an empty string.
    ItemIDList := nil;
    FillChar(BrowseInfo, SizeOf(BrowseInfo), 0);
    BrowseInfo.hwndOwner := 0;
    BrowseInfo.pidlRoot := ItemIDList;
    BrowseInfo.pszDisplayName := NameBuffer;
    BrowseInfo.lpszTitle := PWideChar(aTitle);
    BrowseInfo.ulFlags := BIF_RETURNONLYFSDIRS;
    ItemSelected := SHBrowseForFolder(BrowseInfo);
    if ItemSelected <> nil then
    begin
      SHGetPathFromIDList(ItemSelected, NameBuffer);
      aFolder := NameBuffer;
      Result := true;
    end;
    CoTaskMemFree(BrowseInfo.pidlRoot);
  end;
{$ENDIF}
{$IFDEF MACOS}
  procedure MacSelectDirectory(const aTitle: string; var aDir: string); //
{$IFNDEF IOS}
  var
    LOpenDir: NSOpenPanel;
    LInitialDir: NSURL;
    LDlgResult: NSInteger;
{$ENDIF}
  begin
    Result := False;
{$IFNDEF IOS}
    LOpenDir := TNSOpenPanel.Wrap(TNSOpenPanel.OCClass.openPanel);
    LOpenDir.setAllowsMultipleSelection(False);
    LOpenDir.setCanChooseFiles(False);
    LOpenDir.setCanChooseDirectories(true);
    if aDir <> '' then
    begin
      LInitialDir := TNSURL.Create;
      LInitialDir.initFileURLWithPath(StrToNSSTR(aFolder));
      LOpenDir.setDirectoryURL(LInitialDir);
    end;
    if aTitle <> '' then
      LOpenDir.SetTitle(NSSTR(aTitle));
    LOpenDir.retain;
    try
      LDlgResult := LOpenDir.runModal;
      if LDlgResult = NSOKButton then
      begin
        aFolder := string(TNSURL.Wrap(LOpenDir.URLs.objectAtIndex(0)).relativePath.UTF8String);
        Result := true;
      end;
    finally
      LOpenDir.Release;
    end;
{$ENDIF}
  end;
{$ENDIF}

begin
  Result := False;
{$IFDEF MSWINDOWS}
  if TOSVersion.Check(6) then
    WinVistaSelectFolder
  else
    WinXPSelectFolder;
{$ENDIF}
{$IFDEF MACOS}
  MacSelectDirectory(aTitle, aFolder); //
{$ENDIF}
end;

function JanuaOpenFolder(var aFolder: string; const aTitle, aButtonCaption: string): boolean;
var
  aDialog: IJanuaOpenFileDialog;
  lFolder: string;
begin
  Result := False;
  if TJanuaApplicationFactory.TryGetInterface(IJanuaOpenFileDialog, aDialog, False) then
  begin
    lFolder := aFolder;
    aFolder := aDialog.OpenDirectory(lFolder);
    Result := aFolder <> '';
  end
  else
    Result := OpenFolderLowLevel(aFolder, aTitle, aButtonCaption);
end;

function DECGOSTEncrypt(const AStr: string): string;
begin
  Result := TJanuaCriptEncode.DECGOSTEncrypt(AStr)
end;

function DECGOSTDecrypt(const AStr: string): string;
begin
  Result := TJanuaCriptEncode.DECGOSTDecrypt(AStr)
end;

function NormalizeOpenStreetAddress(const aAddress: string; convertcommas: boolean = true): string; inline;
begin
  Result := StringReplace(aAddress, '/', '', [rfReplaceAll]);
  Result := StringReplace(Result, '-', '', [rfReplaceAll]);
  Result := StringReplace(Result, '%', '', [rfReplaceAll]);
  Result := StringReplace(Result, '?', '', [rfReplaceAll]);
  Result := StringReplace(Result, '&', '', [rfReplaceAll]);
  Result := StringReplace(Result, ';', '', [rfReplaceAll]);
  Result := StringReplace(Result, ':', '', [rfReplaceAll]);
  Result := StringReplace(Result, '#', '', [rfReplaceAll]);
  Result := StringReplace(Result, '[', '', [rfReplaceAll]);
  Result := StringReplace(Result, ']', '', [rfReplaceAll]);
  // per il search Address si potrebbe anche usare un normale 'URL ENCODING?'.....
  if convertcommas then
    Result := StringReplace(Result, ',', '', [rfReplaceAll]);
  Result := StringReplace(Result, ' ', '%20', [rfReplaceAll]);
end;


// JanuaProject GUI Dialogs Functions

procedure JShowMessage(smessage: string; sExtra: string = ''; sHelp: string = '');
begin
  TJanuaApplication.Dialogs.JShowMessage(smessage, sExtra, sHelp);
end;

procedure JShowWarning(smessage: string; sExtra: string = ''; sHelp: string = '');
begin
  TJanuaApplication.Dialogs.JShowWarning(smessage, sExtra, sHelp);
end;

procedure JShowError(smessage: string; sExtra: string = ''; sHelp: string = '');
begin
  TJanuaApplication.Dialogs.JShowError(smessage, sExtra, sHelp);
end;

function SelectMultiString(const Caption: string; const a: array of string;
  const b: array of integer): integer;
begin
  Result := TJanuaApplication.Dialogs.SelectMultiString(Caption, a, b);
end;

function SelectMultiString(const Caption: string; const a: array of string): integer; overload;
var
  lArr: array of integer;
begin
  SetLength(lArr, Length(a));
  for var i := 0 to Pred(Length(a)) do
    lArr[i] := i;
  Result := SelectMultiString(Caption, a, lArr);
end;

function JMessageDlg(smessage: string; sExtra: string = ''; sHelp: string = ''): boolean;
begin
  try
    Result := TJanuaApplication.Dialogs.JMessageDlg(smessage) // , sExtra, sHelp)
  except
    on e: exception do
      raise exception.Create('JMessageDlg Error: ' + e.Message);
  end;
end;

function JanuainputText(const sTitle, sCaption: string; const sDefault: string): string;
begin
  Result := TJanuaApplication.DialogText.InputText(sTitle, sCaption, sDefault);
end;

function InputInteger(const InputText: string; const aDefault: integer): integer;
begin
  Result := TJanuaApplication.DialogInteger.InputInteger(InputText, aDefault);
end;

function InputBox(const sTitle, sCaption: string; sDefault: string): string;
begin
  // Result := TJanuaApplication.DialogText.InputText(sTitle, sCaption, sDefault);
  Result := TJanuaApplication.DialogText.InputText(sTitle, sCaption, sDefault);
end;

function JanuaInputDate(const sTitle, sCaption: string; var aDate: TDateTime): boolean; inline;
var
  a: IJanuaDialogDate;
begin
  Result := False;
  if TJanuaApplicationFactory.TryGetInterface(IJanuaDialogDate, a) then
  begin
    a.DisplayText := sCaption;
    // 'Data della Richiesta di Rimborso';
    a.Caption := sTitle; // 'Inserimento Data';
    a.Date := aDate; // a.Date := FRefundDate;
    if a.Execute then
    begin
      Result := true; // a.Date;
      aDate := a.Date; // SetRefundDate(a.Date);
    end;
  end;
end;

function JanuaInputDateTime(const sTitle, sCaption: string; var aDate: TDateTime): boolean; inline;
var
  a: IJanuaDialogDate;
begin
  Result := False;
  if TJanuaApplicationFactory.TryGetInterface(IJanuaDialogDateTime, a) then
  begin
    a.DisplayText := sCaption;
    // 'Data della Richiesta di Rimborso';
    a.Caption := sTitle; // 'Inserimento Data';
    a.Date := aDate; // a.Date := FRefundDate;
    if a.Execute then
    begin
      Result := true; // a.Date;
      aDate := a.Date; // SetRefundDate(a.Date);
    end;
  end;
end;

{$IFDEF FPC}

function DateToISO8601(const aDate: TDateTime; AInputIsUTC: boolean = true): string;
const
  FmtUTC: string = 'yyyy''-''mm''-''dd''T''hh'':''nn'':''ss''.''zzz''Z''';
  FmtOffset: string = '%.02d:%.02d';
  Sign: array [boolean] of char = ('+', '-');
var
  Offset: integer;
begin
  Result := FormatDateTime(FmtUTC, aDate);
  if not AInputIsUTC then
  begin
    Offset := GetLocalTimeOffset;
    if Offset <> 0 then
    begin
      Result[Length(Result)] := Sign[Offset > 0];
      Offset := Abs(Offset);
      Result := Format(FmtOffset, [Offset div MinsPerHour, Offset mod MinsPerHour]);
    end;
  end;
end;
{$ENDIF}
{$IFNDEF FPC}

procedure ExecFunc(aFunc: TFunc<integer>; aFuncName: string; aClass: TObject = nil); overload;
begin
  try
    aFunc;
  except
    on e: exception do
      raise exception.Create(ErrorMessage(aFuncName, e, aClass));
  end;
end;

procedure ExecFunc(aFunc: TFunc<boolean>; aFuncName: string; aClass: TObject = nil); overload;
begin
  try
    aFunc;
  except
    on e: exception do
    begin
      raise exception.Create(ErrorMessage(aFuncName, e, aClass));
    end;
  end;
end;

procedure ExecProc(aProc: TProc; aProcName: string; aClass: TObject = nil);
begin
  try
    try
      aProc;
    finally
      aProc := nil;
    end;
  except
    on e: exception do
      raise exception.Create(ErrorMessage(aProcName, e, aClass));
  end;
end;
{$ENDIF}

function CheckWordInstaled: boolean;
var
{$IFDEF MSWINDOWS}Reg: TRegistry; {$ENDIF}
  S: string;
begin
  Result := False;
{$IFDEF MSWINDOWS}
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CLASSES_ROOT;
    Result := Reg.KeyExists('Word.Application');
  finally
    Reg.Free;
  end;
{$ENDIF}
end;

function ConvertDocToPDF(const aFile: TFileName): TFileName;
var
{$IFDEF MSWINDOWS} Word, Doc, SaveChanges, OpenReadOnly, AskConversions: OleVariant; {$ENDIF}
  tmp: TFileName;
begin
  Result := aFile;
{$IFNDEF FPC}
  if CheckWordInstaled then
    try
      tmp := TPath.Combine(TPath.GetHomePath, TPath.GetFileNameWithoutExtension(aFile) + '.pdf');
{$IFDEF MSWINDOWS}
      Word := CreateOLEObject('Word.Application');
      OpenReadOnly := true;
      AskConversions := False;
      Doc := Word.Documents.Open(aFile, AskConversions, OpenReadOnly);
      Doc.ExportAsFixedFormat(tmp, wdExportFormatPDF);
      // Test .................................................
      // Doc.Close;
      SaveChanges := 0;
      // Chiudo il documento usando le A.P.I.~
      Doc.Close(SaveChanges);
      // word.ActiveWindow.Close(SaveChanges, EmptyParam);
      Result := tmp;
{$ELSE}
      raise exception.Create('Sistema non supportato');
{$ENDIF}
    except
      on e: exception do
      begin
        raise exception.Create('Impossibile convertire il File');
        // self.JanuaDialog1.JShowError('Attenzione non è possibile convertire il file', '', '');
        Result := aFile;
      end;
    end;
{$ENDIF}
end;

// XML-SOAP Utilities -----------------------------------------------------------------------

function XMLBool(aInput: string): boolean;
{$IFNDEF FPC}
var
  Converter: TXSBoolean;
begin
  Converter := TXSBoolean.Create;
  try
    Converter.XSToNative(aInput);
    Result := Converter.AsBoolean;
  finally
    Converter.Free;
  end;
{$ELSE}

begin
  Result := False;
{$ENDIF}
end;

function XMLDateTime(aInput: string): TDateTime;
{$IFDEF FPC}
var
  DateOnly: String;
  TPos: integer;
begin
  TPos := Pos('T', aInput);
  if TPos <> 0 then
    DateOnly := Copy(aInput, 1, TPos - 1)
  else
    DateOnly := aInput;
  Result := ScanDateTime('yyyy-mm-dd', DateOnly);
{$ELSE}
var
  Converter: TXSDateTime;
begin
  Converter := TXSDateTime.Create;
  try
    Converter.XSToNative(aInput);
    Result := Converter.AsUTCDateTime;
  finally
    Converter.Free;
  end;
{$ENDIF}
end;

function XMLBoolString(aInput: boolean): string;
{$IFNDEF FPC}
var
  Converter: TXSBoolean;
begin
  Converter := TXSBoolean.Create;
  try
    Converter.AsBoolean := aInput;
    Result := Converter.NativeToXS;
  finally
    Converter.Free;
  end;
{$ELSE}

begin
{$ENDIF}
end;

function XMLDateTimeString(aInput: TDateTime): string;
{$IFNDEF FPC}
var
  Converter: TXSDateTime;
begin
  Converter := TXSDateTime.Create;
  try
    Converter.AsDateTime := aInput;
    Result := Converter.NativeToXS;
  finally
    Converter.Free;
  end;
{$ELSE}

begin
{$ENDIF}
end;

function XMLDoubleString(aInput: Double): string;
{$IFNDEF FPC}
var
  Converter: TXSDecimal;
begin
  Converter := TXSDecimal.Create;
  try
    Converter.AsBcd := aInput;
    Result := Converter.NativeToXS;
  finally
    Converter.Free;
  end;
{$ELSE}

begin
{$ENDIF}
end;

function XMLDouble(aInput: string): Double;
{$IFDEF FPC}
begin
  Result := 0.0;
{$ELSE}
var
  Converter: TXSDecimal;
begin
  Converter := TXSDecimal.Create;
  try
    Converter.XSToNative(aInput);
    Result := Data.FmtBcd.BcdToDouble(Converter.AsBcd);
  finally
    Converter.Free;
  end;
{$ENDIF}
end;


// Password ---------------------------------------------------------------------------------

function PwdComplexity(aPwd: string): boolean;
var
  a, b, c, d: boolean;
  ca: char;
  // ca, cb, cc: set of char;
  i: integer;
begin
  a := False;
  b := False;
  c := False;
  d := False;

  for ca in aPwd do
{$IFDEF FPC}
    if CharInSet(ca, ['a' .. 'z']) then
      a := true
    else if CharInSet(ca, ['A' .. 'Z']) then
      b := true
    else if CharInSet(ca, ['0' .. '9']) then
      c := true;

{$ELSE FPC}
    begin
      c := c or ca.IsDigit;
      a := a or ca.IsLower;
      b := b or ca.IsUpper;
      d := d or not(ca.IsDigit or ca.IsLower or ca.IsUpper);
    end;
{$ENDIF FPC}
  Result := a and b and c and d;
end;

// ******** abbreviazioni ********************

function tpl(aValue: string): string;
begin
  Result := IncludeTrailingPathDelimiter(aValue);
end;

/// ******* Streaming Management

{ If you pass a string or dynamic array, you should pass the first element, not the string or array directly.
  Alternatively, you can cast to the corresponding pointer type and dereference; while the resulting code is a bit uglier,
  it removes the need to check the string or array isnt empty:

  Rolliston, Chris. Delphi XE2 Foundations - Part 2 (Kindle Locations 4865-4867).  . Kindle Edition.
}

procedure StreamBytes(Stream: TStream; const Bytes: TBytes);
begin
  if Length(Bytes) <> 0 then // or if Bytes < > nil then
    Stream.Write(Bytes[0], Length(Bytes));
end;

procedure StreamBytes2(Stream: TStream; const Bytes: TBytes);
begin
  Stream.Write(PByte(Bytes)^, Length(Bytes));
end;

procedure StreamUTF8Str(Stream: TStream; const S: UTF8String);
begin
  if Length(S) <> 0 then
    Stream.Write(S[1], Length(S));
end;

procedure StreamUTF8Str2(Stream: TStream; const S: UTF8String);
begin
{$IFNDEF NEXTGEN}
  Stream.Write(PAnsiChar(S)^, Length(S));
{$ELSE}
  if Length(S) <> 0 then
    Stream.Write(S[1], Length(S));
{$ENDIF}
end;

procedure Int64ToBytes(Value: Int64; var Bytes: TBytes);
begin
  SetLength(Bytes, SizeOf(Int64));
  Move(Value, Bytes[0], SizeOf(Int64));
end;

function BytesToInt64(const Bytes: TBytes): Int64;
begin
  if Length(Bytes) <> SizeOf(Int64) then
    raise exception.Create('Invalid byte array size');
  Move(Bytes[0], Result, SizeOf(Int64));
end;

{ Another thing to keep in mind is that the Count parameter of Read and friends is in terms of bytes.
  This may imply doing some simple arithmetic to convert from and to the number of elements:

  Rolliston, Chris. Delphi XE2 Foundations - Part 2 (Kindle Locations 4893-4894).  . Kindle Edition. }

procedure StreamDoubles(Stream: TStream;

  const Data: array of Double);
begin
  Stream.Write(Data[0], Length(Data) * SizeOf(Double));
end;

/// ******** File Stream and Memory file Stream Functions

function StreamContainsBom(aStrem: TStream): boolean; stdcall;
type
  TThreeBytes = array [0 .. 2] of Byte;
const
  sBOM: TThreeBytes = ($EF, $BB, $BF);
var
  buf: TThreeBytes;
begin
  aStrem.ReadBuffer(buf, SizeOf(buf));
  if CompareMem(@buf, @sBOM, SizeOf(sBOM)) then
    Result := true
  else
    Result := False;
end;

function FileContainsBOM(fileName: string): boolean; stdcall;

var
  ms: TMemoryStream;
  fs: TFileStream;

begin
  fs := TFileStream.Create(fileName, fmOpenReadWrite);
  try
    Result := StreamContainsBom(fs);
  finally
    fs.Free;
  end;
end;

function FileRemoveBOM(fileIn, fileOut: string): string; stdcall;
type
  TThreeBytes = array [0 .. 2] of Byte;
var
  ms: TMemoryStream;
  fs: TFileStream;
  buf: TThreeBytes;
const
  sBOM: TThreeBytes = ($EF, $BB, $BF);
begin
{$IFDEF MSWINDOWS}
  if fileIn <> fileOut then
    CopyFile(PChar(fileIn), PChar(fileOut), False);
{$ENDIF}
  fileIn := fileOut;
  fs := TFileStream.Create(fileIn, fmOpenReadWrite);
  try
    fs.ReadBuffer(buf, SizeOf(buf));
    if CompareMem(@buf, @sBOM, SizeOf(sBOM)) then
    begin
      ms := TMemoryStream.Create;
      try
        ms.CopyFrom(fs, fs.Size - SizeOf(sBOM));
        fs.Position := 0;
        fs.CopyFrom(ms, 0);
        fs.Size := ms.Size;
      finally
        ms.Free;
      end;
    end;
  finally
    fs.Free;
  end;
end;

/// ******* base64 Encoding - Decoding functions

function Encode64(aStream: TStream): string; overload;
var
  LOutputStream: TStringStream;
begin
  Result := '';
  aStream.Position := 0;
  LOutputStream := TStringStream.Create('');
  try
{$IFDEF FPC}
    TIdEncoderMIME.EncodeStream(aStream, LOutputStream);
{$ELSE}
    TNetEncoding.base64.Encode(aStream, LOutputStream);
{$ENDIF}
    Result := LOutputStream.DataString;
  finally
    LOutputStream.Free;
  end;
end;

function Encode64(aBlob: TJanuaBlob): string; overload;
var
  LInputStream: TBytesStream;
begin
  Result := aBlob.Encoded64
end;

function Decode64(const aString: string; aStream: TStream): string; overload;
var
  LInputStream: TStringStream;
begin
  LInputStream := TStringStream.Create(aString);
  try
    LInputStream.Position := 0;
{$IFDEF FPC}
    // TIdEncoderMIME.DecodeStream(LInputStream, aStream);
{$ELSE}
    TNetEncoding.base64.Decode(LInputStream, aStream);
{$ENDIF}
    aStream.Position := 0;
  finally
    LInputStream.Free;
  end;
end;

function Decode64(const aString: string; aBlob: TJanuaBlob): string; overload;
var
  LOutputStream: TBytesStream;
begin
{$IFNDEF FPC} Guard.CheckNotNull(aBlob, 'Janua.Core.Functions.Decode64 aBlob is nil '); {$ENDIF}
  LOutputStream := TBytesStream.Create;
  try
    Decode64(aString, LOutputStream);
    aBlob.LoadFromStream(LOutputStream);
  finally
    LOutputStream.Free;
  end;
end;

function Sha256DEC(const aString: string): string;
begin
  Result := TJanuaCriptEncode.Sha256DEC(aString)
end;

function Sha256(const aString: string): string;
begin
  Result := System.Hash.THashSHA2.GetHashString(aString, THashSHA2.TSHA2Version.Sha256);
end;

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
begin
  Result := TJanuaCriptEncode.DecodeString64(Input)
end;

function EncodeString64(const Input: string): string;
begin
  Result := TJanuaCriptEncode.EncodeString64(Input)
end;

function URLEncode64(const aString: string): string;
begin
  Result := System.NetEncoding.TNetEncoding.Base64URL.Encode(aString)
  // JOSE.Encoding.base64.TBase64.URLEncode(aString);
end;

function URLDecode64(const aString: string): string;
begin
  Result := System.NetEncoding.TNetEncoding.Base64URL.Decode(aString)
  // JOSE.Encoding.base64.TBase64.URLDecode(aString);
end;


// ********************************************** Encrypt Decrypt Functions ***********************************

function EncryptDES3(const AStr: string): string;
begin
  Result := TJanuaCriptEncode.EncryptDES3(AStr);
end;

function DecryptDES3(const AStr: string): string;
begin
  Result := TJanuaCriptEncode.DecryptDES3(AStr);
end;

// GUID
function GenerateGUID: TGUID;
// FGUID: TGUID;
begin
  if CreateGUID(Result) <> 0 then
    raise exception.Create('GenerateGUID GUID Failed');
end;

function GenerateGUIDString: string;
begin
  Result := GenerateGUID.ToString;
end;

function StringToGUID(aString: string): TGUID;
begin
  Result :=
{$IFNDEF FPC}System.SysUtils.{$ENDIF FPC}StringToGUID(aString);
end;

{ :Converts Unicode string to Ansi string using specified code page.
  @param   ws       Unicode string.
  @param   codePage Code page to be used in conversion.
  @returns Converted ansi string.
}

{$IFDEF IOS}

function PNSStr(const AStr: String): PNSString;
begin
  Result := (NSSTR(AStr) as ILocalObject).GetObjectID
end;
{$ENDIF}

function ElapsedTime(

  const et, st: TDateTime): string;
var
  Hour, Min, Sec, MSec: Word;
begin
  DecodeTime(et - st, Hour, Min, Sec, MSec);
  Result := Format('%.2d:%.2d:%.2d', [Hour, Min, Sec]);
end;

function HttpParseDate(sDate: string): TDateTime;
var
  Year, Month, Day: Word;
begin
  // 2018-01-01
  // 1234567890
  Year := strtoint(Copy(sDate, 1, 4));
  Month := strtoint(Copy(sDate, 6, 2));
  Day := strtoint(Copy(sDate, 9, 2));

  Result := EncodeDate(Year, Month, Day);
end;

function HttpParseNumber(sNumber: string): Double;
var
  l, r, pl, pr, p, e: integer;
begin
  Result := 0.0;
  p := Pos('.', sNumber);
  if p <= 0 then
    Result := sNumber.ToDouble
  else
  begin
    pl := p - 1;
    e := Pos('e', LowerCase(sNumber));
    // i an e is present I try to detach it
    if e > 0 then
      pr := Length(sNumber) - p - e
    else
      pr := Length(sNumber) - p;
    if p > 0 then
    begin
      l := strtoint(Copy(sNumber, 0, pl));
      r := strtoint(Copy(sNumber, p + 1, pr));
      Result := l + r / Power(10, pr);
    end;
  end;
end;

{$IFDEF WEBBROKER}

function AddCookie(var aResponse: TWebResponse;

  const iValid: integer;

  const sKey, sValue: string): TDateTime;
var
  aCookie: TCookie;
  i: integer;
  Found: boolean;
begin
  Result := Now + 7;
  Found := False;

  if aResponse.Cookies.Count > 0 then
  begin
    i := 0;
    while not((i = aResponse.Cookies.Count) or Found) do
    begin
      if aResponse.Cookies[i].Name.ToLower = sKey.ToLower then
      begin
        aResponse.Cookies[i].Value := sValue;
        aResponse.Cookies[i].Expires := Result;
        aResponse.Cookies[i].Path := '/';
        Found := true;
      end;
      Inc(i)
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
  if (S > '') then
    // and IsNumeric(S) then
    Result := StrToIntDef(S, 0)
    // S.ToInteger()
  else
    Result := 0;
end;

function HttpGetParamInteger(aRequest: TWebRequest; aParam: string): integer;
var
  S: string;
begin
  S := HttpGetParamValue(aRequest, aParam);
  if (S > '') then
    // and IsNumeric(S) then
    Result := StrToIntDef(S, 0)
    // S.ToInteger()
  else
    Result := 0;
end;

function HttpGetParamLargeInt(aRequest: TWebRequest; aParam: string): Int64;
var
  S: string;
begin
  S := HttpGetParamValue(aRequest, aParam);
  if (S > '') then
    // and IsNumeric(S) then
    Result := StrToInt64Def(S, 0)
    // S.ToInt64()
  else
    Result := 0;
end;

function HttpGetParamDate(aRequest: TWebRequest; aParam: string): TDateTime;
var
  S: string;
begin
  Result := 0.0;

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

function HttpGetQueryValue(aRequest: TWebRequest; aParam: string): string;
begin
  Result := (aRequest.QueryFields.Values[aParam]);
  if Result = '' then
    Result := (aRequest.ContentFields.Values[aParam]);
end;

function HttpGetParamValue(aRequest: TWebRequest; aParam: string): string;
var
  i: integer;
begin
  Guard.CheckNotNull(aRequest, 'HttpGetParamValue aRequest is nil');
  if aParam <> '' then
  begin
    Result := (aRequest.QueryFields.Values[aParam]);
    if Result = '' then
      Result := (aRequest.ContentFields.Values[aParam]);

    if (Result = '') and (aRequest.ContentFields.Count > 0) and
      (Pos('------WebKitFormBoundary', aRequest.ContentFields[0]) > 0) then
    begin
      for i := 0 to aRequest.ContentFields.Count - 1 do
      begin
        if Pos(aParam, aRequest.ContentFields[i]) > 0 then
          Result := aRequest.ContentFields[i + 1];
      end;
      if (Pos('------WebKitFormBoundary', Result) > 0) or (Pos('=', Result) > 0) then
        Result := '';
    end;

    if (Result = '') and (aRequest.CookieFields.Count > 0) then
      Result := aRequest.CookieFields.Values[aParam];
  end;

end;
{$ENDIF}

// Date functions Procedures
function DateYear(const aDate: TDateTime): Word; inline;
var
  Y, M, d: Word;
begin
  DecodeDate(aDate, Y, M, d);
  Result := Y
end;

function DateYearToStr(const aDate: TDateTime; const aDigits: Byte = 4): string; inline;
var
  Y: Word;
begin
  Y := DateYear(aDate);
  Result := IntToStr(Y);
  if aDigits < 4 then
    Result := Copy(Result, Length(Result) - aDigits
{$IFDEF ANDROID} - 1{$ENDIF}, aDigits);
end;

function DateFile(const aDate: TDateTime): string; inline;
begin
  Result := Lpad(DateYear(aDate).ToString, 4, '0') + Lpad(DateMonth(aDate).ToString, 2, '0') +
    Lpad(DateDay(aDate).ToString, 2, '0');
end;

function DateMonth(const aDate: TDateTime): Word; inline;
var
  Y, M, d: Word;
begin
  DecodeDate(aDate, Y, M, d);
  Result := M
end;

function DateDay(const aDate: TDateTime): Word; inline;
var
  Y, M, d: Word;
begin
  DecodeDate(aDate, Y, M, d);
  Result := d

end;

function SumDateTime(const aDate: TDate; aTime: TDateTime): TDateTime;
var
  Hour, Min, Sec, MSec: Word;
  Year, Month, Day: Word;
begin
  DecodeTime(aTime, Hour, Min, Sec, MSec);
  DecodeDate(aDate, Year, Month, Day);
  Result := EncodeDateTime(Year, Month, Day, Hour, Min, Sec, MSec);
end;

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

function OpenFolderAndSelectFile(

  const fileName: string): boolean;
{$IFDEF MSWINDOWS}
var
  IIDL: PItemIDList;
{$ENDIF}
begin
  Result := False;
{$IFDEF MSWINDOWS}
  IIDL := ILCreateFromPath(PChar(fileName));
  if IIDL <> nil then
    try
      Result := SHOpenFolderAndSelectItems(IIDL, 0, nil, 0) = S_OK;
    finally
      ILFree(IIDL);
    end;
{$ENDIF}
end;

{$IFNDEF fpc}
(*
  function CloneDatasetToStream(DataSet, dataclone: TCustomClientDataset): boolean;
  var
  aStream: TMemoryStream;
  begin
  Guard.CheckNotNull(DataSet, 'StoreFieldToBlob aFrom is null');
  Guard.CheckNotNull(dataclone, 'StoreFieldToBlob aTo is null');
  Result := true;
  aStream := TMemoryStream.Create;
  try
  aStream.Position := 0;
  DataSet.SaveToStream(aStream, dfBinary);
  aStream.Position := 0;
  // if not Assigned(self.FBlob)  then self.FBlob := TBlob.Create(False);
  dataclone.LoadFromStream(aStream);
  finally
  aStream.Free;
  end;
  end;
*)
{$ENDIF}

function StoreBlobToField(aField: TBlobField; aBlob: TJanuaBlob): boolean;
var
  aStream: TMemoryStream;
begin
  Guard.CheckNotNull(aField, 'StoreFieldToBlob aField is null');
{$IFNDEF fpc} Guard.CheckNotNull(aBlob, 'StoreFieldToBlob aBlob is null'); {$ENDIF}
  Result := true;
  // if aFrom.Size = 0 then
  // Exit(False);
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

function StoreFieldToBlob(aFrom: TBlobField; aTo: TJanuaBlob): boolean;
var
  aStream: TMemoryStream;
begin
{$IFNDEF fpc}
  Guard.CheckNotNull(aFrom, 'StoreFieldToBlob aFrom is null');
  Guard.CheckNotNull(aTo, 'StoreFieldToBlob aTo is null');
{$ENDIF}
  // if aFrom.Size = 0 then
  // Exit(False);
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

function StoreBlobToBlob(aField: TJanuaBlob; aBlob: TJanuaBlob): boolean;
var
  aStream: TMemoryStream;
begin
{$IFNDEF fpc}
  Guard.CheckNotNull(aField, 'StoreFieldToBlob aFrom is null');
  Guard.CheckNotNull(aBlob, 'StoreFieldToBlob aTo is null');
{$ENDIF}
  // if aFrom.Size = 0 then
  // Exit(False);
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

function StoreBlobToStream(aStream: TStream; aBlob: TJanuaBlob): boolean;
begin
  Guard.CheckNotNull(aStream, 'StoreFieldToBlob aStream is null');
{$IFNDEF fpc} Guard.CheckNotNull(aBlob, 'StoreFieldToBlob aTo is null'); {$ENDIF}
  // if aFrom.Size = 0 then
  // Exit(False);
  Result := true;
{$IFNDEF fpc} try {$ENDIF}
    aStream.Position := 0;
    // if not Assigned(self.FBlob)  then self.FBlob := TBlob.Create(False);
    aBlob.SaveToStream(aStream);
{$IFNDEF fpc}
  except
    on e: exception do
    begin
      Result := False;
    end;
  end;
{$ENDIF}
end;

function IsIdenticalStreams(Source, Destination: TStream): boolean;
const
  Block_Size = 4096;

var
  Buffer_1: array [0 .. Block_Size - 1] of Byte;
  Buffer_2: array [0 .. Block_Size - 1] of Byte;
  Buffer_Length: integer;

begin
  Result := False;

  if Source.Size <> Destination.Size then
    Exit;

  while Source.Position < Source.Size do
  begin
    Buffer_Length := Source.Read(Buffer_1, Block_Size);
    Destination.Read(Buffer_2, Block_Size);

    if not CompareMem(@Buffer_1, @Buffer_2, Buffer_Length) then
      Exit;
  end;

  Result := true;
end;

function StoreBlobToBase64Stream(aBlob: TJanuaBlob; aStream: TStream): boolean;
var
  LStream: TMemoryStream;
  aCoder: TIdEncoder;
begin
  Result := Assigned(aStream);
  if Result then
{$IFNDEF fpc} try {$ENDIF}
      LStream := TMemoryStream.Create;
      try
        aCoder := IdCoder.TIdEncoder.Create(nil);
        try
          aBlob.SaveToStream(LStream);
          // ExportDatasetToXMLStream(aBlob, LStream);
          LStream.Position := 0;
          aCoder.Encode(LStream, aStream);
        finally
          aCoder.Free;
        end;
      finally
        LStream.Free;
      end;
{$IFNDEF fpc}
    except
      on e: exception do
        Result := False;
    end
{$ENDIF}
end;

function GetBlobFromBase64Stream(aBlob: TJanuaBlob; aStream: TStream): boolean;
begin
  Result := False;
  { TODO -cFunctions : GetBlobFromBase64Stream Implementation }
end;

function StoreBlobToBase64String(aBlob: TJanuaBlob; out aString: string): boolean;
var
  sTemp: string;
  LStream: TMemoryStream;
  lStringSteam: TStringStream;
begin
  // Spec. 2017-0018 Encodign a aBlob to a base64 AnsiString.
  Result := False;
  LStream := TMemoryStream.Create;
  try
    aBlob.SaveToStream(LStream);
    LStream.Position := 0;
    lStringSteam := TStringStream.Create{$IFDEF fpc}(''){$ENDIF};
    try
      lStringSteam.Position := 0;
{$IFNDEF fpc} TNetEncoding.base64.Encode(LStream, lStringSteam); {$ENDIF}
    finally
      lStringSteam.Free;
    end;
  finally
    LStream.Free;
  end;
end;

function GetBlobFromBase64String(aBlob: TJanuaBlob; const aString: string): boolean;
begin
  { TODO -cFunctions : GetBlobFromBase64String Implementation }
  Result := False;
end;

function StoreStreamToBlob(aStream: TStream; aBlob: TJanuaBlob): boolean;
begin
  if aStream.Size = 0 then
    Exit(False);
  Result := true;
  try
    aStream.Position := 0;
    // if not Assigned(self.FBlob)  then self.FBlob := TBlob.Create(False);
    aBlob.LoadFromStream(aStream);
  except
{$IFNDEF fpc}
    on e: exception do
    begin
      Result := False;
    end;
{$ENDIF fpc}
  end;

end;

procedure JSortTStrings(Strings: TStrings);
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
begin
  TNetEncoding.URL.EncodeQuery(aParam);
  // Deprectaed: aUri :=  IdURI.TIdURI.Create(); ->  ParamsEncode(AStr)
end;

function URLEncode(const AStr: String): String;
begin
  TNetEncoding.URL.Encode(AStr);
  // Deprecated: aUri := IdURI.TIdURI.Create(); ->  aUri.URLEncode(AStr)
end;

function Ping(const aServer: string): boolean;
var
  ICMP: TIdIcmpClient;
  Rec: integer;
begin
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

{$IFDEF MSWINDOWS}
{ ************************************** }

// Function to get the IP Address from a Host

function GetIPFromHost(const HostName: String): string;
type
  TaPInAddr = array [0 .. 10] of PInAddr;
  PaPInAddr = ^TaPInAddr;
var
  phe: PHostEnt;
  pptr: PaPInAddr;
  i: integer;
  GInitData: TWSAData;
begin
  WSAStartup($101, GInitData);
  Result := '';
  phe := GetHostByName(PAnsiChar(AnsiString(HostName)));
  if phe = nil then
    Exit('0.0.0.0');
  pptr := PaPInAddr(phe^.h_addr_list);
  i := 0;
  while pptr^[i] <> nil do
  begin
    Result := String(inet_ntoa(pptr^[i]^));
    Inc(i);
  end;
  WSACleanup;
end;
{$ELSE}

function GetIPFromHost(const HostName: string): string;
begin
  Result := '0.0.0.0';
end;
{$ENDIF}

function XMLDateDecode(aDate: System.OleVariant): TDateTime;
// convert from WideString): TDateTime;
var
  Day, Month, Year: Word;
  sDay, sMonth, sYear: string;
  sDate: string;
begin
  try
    { c
      1234567890123456
    }

    sDate := VarToStr(aDate);
    sDay := (Copy(sDate, 6, 2));
    if Copy(sDay, 2, 1) = ' ' then
    begin
      sDay := Copy(sDay, 1, 1);
      sMonth := Copy(aDate, 8, 3);
      sYear := Copy(aDate, 12, 4);
    end
    else
    begin
      sMonth := Copy(aDate, 9, 3);
      sYear := Copy(aDate, 13, 4);
    end;
    if IsNumeric(Trim(sDay)) then
      Day := strtoint(sDay)
    else
      Day := 1;

    if sMonth = 'Jan' then
      Month := 1
    else if sMonth = 'Feb' then
      Month := 2
    else if sMonth = 'Mar' then
      Month := 3
    else if sMonth = 'Apr' then
      Month := 4
    else if sMonth = 'May' then
      Month := 5
    else if sMonth = 'Jun' then
      Month := 6
    else if sMonth = 'Jul' then
      Month := 7
    else if sMonth = 'Aug' then
      Month := 8
    else if sMonth = 'Sep' then
      Month := 9
    else if sMonth = 'Oct' then
      Month := 10
    else if sMonth = 'Nov' then
      Month := 11
    else if sMonth = 'Dec' then
      Month := 12
    else
      Month := 1;

    Year := strtoint(sYear);
    Result := EncodeDate(Year, Month, Day);

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

function GetFieldByName(DataSet: TDataset; const fieldName: string; out aField: TField): boolean;
var
  // aField: TField;
  i, J: integer;
begin
  // aField := Dataset.FindField(fieldName);
  // Result := aField <> nil;
  Result := False;
  i := 0;
  J := DataSet.FieldCount;
  while (i < J) and not Result do
  begin
    Result := LowerCase(DataSet.Fields[i].fieldName) = LowerCase(fieldName);
    if Result then
      aField := DataSet.Fields[i];
    Inc(i)
  end;
end;

function ExistFieldByName(DataSet: TDataset; fieldName: string): boolean;
var
  // aField: TField;
  i, J: integer;
begin
  // aField := Dataset.FindField(fieldName);
  // Result := aField <> nil;
  Result := False;
  i := 0;
  J := DataSet.FieldCount;
  while (i < J) and not Result do
  begin
    Result := LowerCase(DataSet.Fields[i].fieldName) = LowerCase(fieldName);
    Inc(i)
  end;
end;

function GetFieldAsString(aDataset: TDataset; aFieldName: string): string;
begin
  Result := '';
  if ExistFieldByName(aDataset, aFieldName) then
    GetFieldValue(Result, aDataset, aFieldName);
end;

function GetFieldAsInteger(aDataset: TDataset; aFieldName: string): integer;
begin
  Result := 0;
  if ExistFieldByName(aDataset, aFieldName) then
    GetFieldValue(Result, aDataset, aFieldName);
end;

function GetFieldAsDate(aDataset: TDataset; aFieldName: string): TDateTime;
begin
  Result := 0.0;
  if ExistFieldByName(aDataset, aFieldName) then
    GetFieldValue(Result, aDataset, aFieldName);
end;

function GetFieldAsLargeInt(aDataset: TDataset; aFieldName: string): Int64;
begin
  Result := 0;
  if ExistFieldByName(aDataset, aFieldName) then
    GetFieldValue(Result, aDataset, aFieldName);
end;

function GetFieldAsBoolean(aDataset: TDataset; aFieldName: string): boolean;
begin
  Result := False;
  if ExistFieldByName(aDataset, aFieldName) then
    GetFieldValue(Result, aDataset, aFieldName);
end;

procedure SetFieldValue(const aValue: string; aDataset: TDataset; aFieldName: string;
  const CheckFields: boolean = False); overload;
var
  aField: TField;
begin
  aField := GetFieldByName(aDataset, aFieldName, CheckFields);
  if aField <> nil then
  begin
    aField.AsString := aValue
  end;
end;

procedure SetFieldValue(const aValue: smallint; aDataset: TDataset; aFieldName: string;
  const CheckFields: boolean = False); overload;
var
  aField: TField;
begin
  aField := GetFieldByName(aDataset, aFieldName, CheckFields);
  if aField <> nil then
  begin
    aField.AsInteger := aValue
  end;

end;

procedure SetFieldValue(const aValue: Int64; aDataset: TDataset; aFieldName: string;
  const CheckFields: boolean = False); overload;
var
  aField: TField;
begin
  aField := GetFieldByName(aDataset, aFieldName, CheckFields);
  if aField <> nil then
  begin
    aField.AsLargeInt := aValue
  end;
end;

procedure SetFieldValue(const aValue: integer; aDataset: TDataset; aFieldName: string;
  const CheckFields: boolean = False); overload;
var
  aField: TField;
begin
  aField := GetFieldByName(aDataset, aFieldName, CheckFields);
  if aField <> nil then
  begin
    aField.AsInteger := aValue
  end;

end;

procedure SetFieldValue(const aValue: boolean; aDataset: TDataset; aFieldName: string;
  const CheckFields: boolean = False); overload;
var
  aField: TField;
begin
  aField := GetFieldByName(aDataset, aFieldName, CheckFields);
  if aField <> nil then
  begin
    aField.AsBoolean := aValue
  end;

end;

procedure SetFieldValue(const aValue: TDate; aDataset: TDataset; aFieldName: string;
  const CheckFields: boolean = False); overload;
var
  aField: TField;
begin
  aField := GetFieldByName(aDataset, aFieldName, CheckFields);
  if aField <> nil then
  begin
    aField.AsDateTime := aValue
  end;

end;

procedure SetFieldValue(const aValue: TDateTime; aDataset: TDataset; aFieldName: string;
  const CheckFields: boolean = False); overload;
var
  aField: TField;
begin
  aField := GetFieldByName(aDataset, aFieldName, CheckFields);
  if aField <> nil then
  begin
    aField.AsDateTime := aValue
  end;

end;

procedure SetFieldValue(const aValue: Extended; aDataset: TDataset; aFieldName: string;
  const CheckFields: boolean = False); overload;
var
  aField: TField;
begin
  aField := GetFieldByName(aDataset, aFieldName, CheckFields);
  if aField <> nil then
  begin
{$IFDEF fpc}aField.AsFloat{$ELSE}aField.AsExtended{$ENDIF} := aValue
  end;

end;

procedure SetFieldValue(const aValue: Double; aDataset: TDataset; aFieldName: string;
  const CheckFields: boolean = False); overload;
var
  aField: TField;
begin
  aField := GetFieldByName(aDataset, aFieldName, CheckFields);
  if aField <> nil then
  begin
    aField.AsFloat := aValue
  end;

end;

procedure SetFieldValue(const aValue: Real; aDataset: TDataset; aFieldName: string;
  const CheckFields: boolean = False); overload;
var
  aField: TField;
begin
  aField := GetFieldByName(aDataset, aFieldName, CheckFields);
  if aField <> nil then
  begin
    aField.AsFloat := aValue
  end;

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

procedure DatasetFieldValue(aDataset: TDataset; aFieldName: string;

  var aValue: string;

  const CheckFields: boolean = False); overload;
begin
  GetFieldValue(aValue, aDataset, aFieldName, CheckFields)
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

procedure DatasetFieldValue(aDataset: TDataset; aFieldName: string; var aValue: Int64;
  const CheckFields: boolean = False); overload;
begin
  GetFieldValue(aValue, aDataset, aFieldName, CheckFields)
end;

procedure GetFieldValue(var aValue: smallint; aDataset: TDataset; aFieldName: string;
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

procedure DatasetFieldValue(aDataset: TDataset; aFieldName: string; var aValue: smallint;
  const CheckFields: boolean = False); overload;
begin
  GetFieldValue(aValue, aDataset, aFieldName, CheckFields)
end;

procedure DatasetFieldValue(aDataset: TDataset; aFieldName: string;

  var aValue: integer;

  const CheckFields: boolean = False); overload;
begin
  GetFieldValue(aValue, aDataset, aFieldName, CheckFields)
end;

procedure GetFieldValue(

  var aValue: integer; aDataset: TDataset; aFieldName: string;

  const CheckFields: boolean = False); overload;
var
  aField: TField;
begin
  aValue := 0;
  aField := GetFieldByName(aDataset, aFieldName, CheckFields);
  if aField <> nil then
  begin
    aValue := aField.AsInteger
  end;

end;

procedure GetFieldValue(

  var aValue: boolean; aDataset: TDataset; aFieldName: string;

  const CheckFields: boolean = False); overload;
var
  aField: TField;
begin
  aValue := False;
  aField := GetFieldByName(aDataset, aFieldName, CheckFields);
  if aField <> nil then
  begin
    aValue := aField.AsBoolean
  end
end;

procedure GetFieldValue(

  var aValue: TDate; aDataset: TDataset; aFieldName: string;

  const CheckFields: boolean = False); overload;
var
  aField: TField;
begin
  aValue := 0.0;
  aField := GetFieldByName(aDataset, aFieldName, CheckFields);
  if aField <> nil then
  begin
    aValue := aField.AsDateTime
  end
end;

procedure GetFieldValue(

  var aValue: TDateTime; aDataset: TDataset; aFieldName: string;

  const CheckFields: boolean = False); overload;
var
  aField: TField;
begin
  aValue := 0.0;
  aField := GetFieldByName(aDataset, aFieldName, CheckFields);
  if aField <> nil then
  begin
    aValue := aField.AsDateTime
  end

end;

procedure GetFieldValue(var aValue: Extended; aDataset: TDataset; aFieldName: string;

  const CheckFields: boolean = False); overload;
var
  aField: TField;
begin
  aField := GetFieldByName(aDataset, aFieldName, CheckFields);
  if aField <> nil then
  begin
    aValue :=
{$IFNDEF FPC} aField.AsExtended;
{$ELSE} aField.AsFloat; {$ENDIF}
  end;

end;

procedure GetFieldValue(

  var aValue: Double; aDataset: TDataset; aFieldName: string;

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

procedure GetFieldValue(

  var aValue: Real; aDataset: TDataset; aFieldName: string;

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

function GetFieldByName(DataSet: TDataset; fieldName: string;

  const CheckFields: boolean = False): TField;
// var
// i : integer;
begin
  // set the debug Trace Command on (CheckFields = True) non inserire o mettere False per disattivare il TraceON
  // Specifiche 2017-0013
  Result := DataSet.FindField(fieldName);
  if CheckFields and (Result = nil) then
    raise exception.Create('Error Dataset ' + DataSet.Name + ', Parent: ' + ifThen(DataSet.Owner <> nil,
      DataSet.Owner.Name, 'nil') + ', Field not found: ' + fieldName);

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
  end;
  // end if locazione
end;

function Capitalize(AStr: string): string;
var
  S: char;
begin
  Result := AStr;
  if Result <> '' then
  begin
    S := Result[1];
    S := UpCase(S);
    Result[1] := UpCase(S);
  end;
end;

function CamelCase(const AStr: string): string;
var
  i: integer;
begin
  Result := Capitalize(AStr); // Class Name for Dataset.
  i := Pos('_', Result); // check if underscore separator is in dataset name string.
  while i > 0 do
  begin
    Result := Copy(Result, 1, i - 1) + Capitalize(Copy(Result, i + 1, Length(Result) - i + 1));
    i := Pos('_', Result);
  end;
end;

procedure CopyRecord(DataSet, dataclone: TDataset);
var
  i: integer;
begin
  for i := 0 to Pred(dataclone.FieldCount) do
  begin
    dataclone.Fields[i].ReadOnly := False;
  end;

  if dataclone.Active and DataSet.Active and (DataSet.RecordCount > 0) then
  begin
    dataclone.Edit;
    for i := 0 to DataSet.FieldCount - 1 do
      if Assigned(dataclone.FindField(DataSet.Fields[i].fieldName)) then
        dataclone.FieldByName(DataSet.Fields[i].fieldName).Value := DataSet.Fields[i].Value;
    dataclone.Post;
  end;
end;

procedure PostDataset(aDataset: TDataset);
begin
  try
    if aDataset.State in [TDataSetState.dsInsert, TDataSetState.dsEdit] then
      aDataset.Post;
  except
{$IFNDEF fpc}
    on e: exception do
      raise exception.Create('PostDataset ' + aDataset.Name + sLineBreak + e.Message);
{$ENDIF fpc}
  end;

end;

procedure CloneDataset(DataSet, dataclone: TDataset); overload; inline;
begin
  if not DataSet.Active then
    DataSet.Open;
  begin
    if dataclone.Active then
      dataclone.Close;

    if not dataclone.Active then
      dataclone.Open;

    if DataSet.RecordCount > 0 then
    begin
      DataSet.Last;
      DataSet.First;
      while not DataSet.Eof do
      begin
        dataclone.Append;
        CopyRecord(DataSet, dataclone);
        DataSet.Next;
      end;
    end;
  end;

end;

{$IFDEF delphixe}

procedure CloneDataset(DataSet: TDataset; dataclone: TFdMemTable; bStructure: boolean = true);
begin
  if not DataSet.Active then
    DataSet.Open;
  if bStructure then
    dataclone.CopyDataSet(DataSet, [coStructure, coRestart, coAppend])
  else
  begin
    if dataclone.Active then
      dataclone.Close;

    if not dataclone.Active then
      dataclone.Open;

    if DataSet.RecordCount > 0 then
    begin
      DataSet.Last;
      DataSet.First;
      while not DataSet.Eof do
      begin
        dataclone.Append;
        CopyRecord(DataSet, dataclone);
        DataSet.Next;
      end;
    end;
  end;
end;

(*
  procedure CloneDataset(DataSet, dataclone: TCustomClientDataset);
  begin
  if dataclone.Active then
  dataclone.Close;

  if not dataclone.Active then
  dataclone.CreateDataSet;

  if DataSet.RecordCount > 0 then
  begin
  DataSet.Last;
  DataSet.First;
  while not DataSet.Eof do
  begin
  dataclone.Append;
  CopyRecord(DataSet, dataclone);
  DataSet.Next;
  end;
  end;

  end;
*)

function ImportDatasetFromXMLMemo(aDataset: TFdMemTable; aList: TStrings): boolean; overload;
var
  aStream: TMemoryStream;
begin
  Result := False;
  if Assigned(aDataset) and Assigned(aList) then
  begin
    aStream := TMemoryStream.Create;
    try
      aList.SaveToStream(aStream);
      aStream.Position := 0;
      aDataset.LoadFromStream(aStream, sfXml);
      Result := true;
    finally
      aStream.Free;
    end;
  end;
end;

function ImportDatasetFromXMLString(aDataset: TFdMemTable; aString: string): boolean;
var
  vStrings: TStrings;
begin
  vStrings := TStringList.Create;
  try
    Result := ImportDatasetFromXMLMemo(aDataset, vStrings);
  finally
    vStrings.Free;
  end;
end;

function ExportDatasetToXMLMemo(aDataset: TDataset; aList: TStrings): boolean;
var
  aStream: TStream;
  LMemTable: TFdMemTable;
begin
  Result := False;
  if Assigned(aDataset) and Assigned(aList) and aDataset.Active then
  begin
    LMemTable := TFdMemTable.Create(nil);
    try
      LMemTable.CopyDataSet(aDataset, [coStructure, coRestart, coAppend]);
      aStream := LMemTable.CreateXmlStream;
      try
        aStream.Position := 0;
        aList.LoadFromStream(aStream);
        Result := true;
      finally
        aStream.Free;
      end;
    finally
      LMemTable.Free;
    end;
  end;
end;

procedure CloneDatasetStruct(DataSet: TDataset; dataclone: TFdMemTable);
begin
  dataclone.CopyDataSet(DataSet, [coStructure, coRestart]);
end;

function ExportDatasetToBase64String(DataSet: TDataset;

  var aString: string): boolean;
var
  LDataset: TFdMemTable;
begin
  // Spec. 2017-0018 Encodign a Dataset to a base64 AnsiString.
  Result := False;
  if Assigned(DataSet) and DataSet.Active then
  begin
    LDataset := TFdMemTable.Create(nil);
    try
      LDataset.CopyDataSet(DataSet, [coStructure, coRestart, coAppend]);
      Result := ExportDatasetToBase64String(LDataset, aString);
    finally
      LDataset.Free;
    end;
  end;
end;

function ExportDatasetToBase64String(DataSet: TFdMemTable;

  var aString: string): boolean; overload;
var
  aStream: TMemoryStream;
begin
  // Spec. 2018-0018 Encodign a Dataset to a base64 AnsiString.
  Result := False;
  if Assigned(DataSet) and DataSet.Active then
  begin
    aStream := TMemoryStream.Create;
    try
      DataSet.SaveToStream(aStream);
      aStream.Position := 0;
      aString := String(EncodeBase64(aStream.Memory, aStream.Size));
      Result := true;
    finally
      aStream.Free;
    end;
  end;
end;

function ExportDatasetToXMLStream(DataSet: TDataset; aStream: TStream): boolean;
var
  tmp: TFdMemTable;
begin
  Result := Assigned(DataSet) and Assigned(aStream);
  if Result then
    try
      aStream.Position := 0;
      tmp := TFdMemTable.Create(nil);
      try
        tmp.CopyDataSet(DataSet, [coStructure, coRestart, coAppend]);
        tmp.SaveToStream(aStream, sfXml);
        // {$IFNDEF FPC} DataSet.SaveToXML(aStream); {$ENDIF FPC}
      finally
        tmp.Free;
      end;
    except
      on e: exception do
        Result := False;
    end;
end;
{$ENDIF delphixe}
{$IFDEF fpc}

procedure CloneDataset(DataSet: TDataset; dataclone: TVirtualTable); overload;
begin
end;

procedure CloneDatasetStruct(DataSet: TDataset; dataclone: TVirtualTable); overload;
begin

end;

function ExportDatasetToBase64String(DataSet: TVirtualTable; var aString: string): boolean; overload;
begin

end;

function ImportDatasetFromXMLMemo(aDataset: TVirtualTable; aList: TStrings): boolean; overload;
begin

end;

function ImportDatasetFromXMLString(aDataset: TVirtualTable; aString: string): boolean; overload;
begin

end;

function ExportDatasetToBase64String(DataSet: TDataset; var aString: string): boolean; overload;
begin

end;

function ExportDatasetToXMLStream(DataSet: TDataset; aStream: TStream): boolean;
begin

end;

function ExportDatasetToXMLMemo(aDataset: TDataset; aList: TStrings): boolean;
begin

end;
{$ENDIF fpc}

function ImportDatasetFromXMLMemo(aDataset: TDataset; aList: TStrings): boolean;
begin
  { TODO -cFunctions : ImportDatasetFromXMLMemo Implementation }
  Result := False;
end;

function ImportDatasetFromXMLString(aDataset: TDataset; aString: string): boolean;
begin
  { TODO -cFunctions : ImportDatasetFromXMLString Implementation }
  Result := False;
end;

function ExportDatasetToXMLString(aDataset: TDataset;

  var aString: string): boolean;
var
  vStrings: TStrings;
begin
  // Spec. 2017-0017 Dataset To XML String Transformation ......................................
  // This procedure transforms a Dataset into an XML string according to OS format (UTF8, UTF16 or ANSI)
  Result := False;
  if Assigned(aDataset) and aDataset.Active then
  begin
    vStrings := TStringList.Create;
    try
{$IFNDEF FPC} Result := ExportDatasetToXMLMemo(aDataset, vStrings); {$ENDIF FPC}
      aString := ifThen(Result, vStrings.text, '');
    finally
      vStrings.Free;
    end;
  end;
end;

function ExportDatasetToBase64Stream(DataSet: TDataset; aStream: TStream): boolean;
var
  LStream: TMemoryStream;
  aCoder: IdCoder.TIdEncoder;
begin
  Result := Assigned(DataSet) and Assigned(aStream);
  if Result then
    try
      LStream := TMemoryStream.Create;
      try
        aCoder := IdCoder.TIdEncoder.Create(nil);
        if Assigned(aStream) and Assigned(DataSet) then
          try
{$IFNDEF FPC} ExportDatasetToXMLStream(DataSet, LStream); {$ENDIF FPC}
            LStream.Position := 0;
            aCoder.Encode(LStream, aStream);
          finally
            aCoder.Free;
          end;
      finally
        LStream.Free;
      end;
    except
{$IFNDEF fpc}
      on e: exception do
        Result := False;
{$ENDIF fpc}
    end;
end;

function ExportDatasetToBase64Memo(aDataset: TDataset; aList: TStrings): boolean;
var
  sTemp: string;
begin
  Result := False;
  if Assigned(aList) and Assigned(aDataset) and aDataset.Active then
  begin
    Result := ExportDatasetToXMLString(aDataset, sTemp);
    aList.text := ifThen(Result, sTemp, '');
  end;

end;

function generateIntAnagBarcode(p_barcode: integer): string;
begin
  Result := generateAnagBarcode(IntToStr(p_barcode));
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
{$IFNDEF FPC}
    on e: exception do
{$ENDIF FPC}
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
{$IFNDEF fpc}
    on e: exception do
{$ENDIF fpc}
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
  if Length(p_barcode) < 12 then
    v_barcode := Lpad(p_barcode, 12, '0')
  else
    v_barcode := p_barcode;

  if Length(v_barcode) = 12 then
  begin
    checksum := 0;
    Result := v_barcode;
    for posizione := 1 to 12 do
      if posizione mod 2 = 0 then
        checksum := checksum + strtoint(Copy(Result, posizione, 1)) * 3
      else
        checksum := checksum + strtoint(Copy(Result, posizione, 1));

    checksum := checksum mod 10;
    checksum := 10 - checksum;
    if checksum = 10 then
      checksum := 0;

    Result := Result + IntToStr(checksum);
  end
  else
    Result := ('0000000000000');
end;

function TryStrToFloat(const S: string; var Value: Double): boolean;
begin
  Result := true;
  try
    Value := StrToFloat(S);
  except
{$IFNDEF fpc}
    on e: exception do
    begin
      Result := False;
      Value := 0;
    end;
{$ENDIF fpc}
  end;
end;

function IsHex(const aHex: string): boolean;
var
  c: char;
begin
  Result := true;
  for c in aHex do
    Result := Result and { c.IsInArray(HEXADECIMALS); } CharInSet(c, HEXADECIMALS);

end;

function IsNumeric(const pTestVar: string): boolean;
var
  T: smallint;
  a: char;
begin
  T := StringLength(pTestVar);
  Result := T <> 0;
  if Result then
    For a in pTestVar do
{$IFNDEF fpc}
      Result := Result and (a.IsDigit or a.IsInArray(['.', ',']));
{$ELSE fpc}
      Result := Result and CharInSet(a, ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '.', ',']);
{$ENDIF fpc}
end;

function IsNumericEquation(const pTestVar: string): boolean;
var
  T: smallint;
  a: char;
begin
  T := StringLength(pTestVar);
  Result := T <> 0;
  if Result then
    For a in pTestVar do
{$IFNDEF fpc}
      Result := Result and (a.IsDigit or a.IsInArray(['.', ',', '+', '/', '-', '=', '*']));
{$ELSE fpc}
      Result := Result and CharInSet(a, ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '.', ',', '+', '/',
        '-', '=', '*']);
{$ENDIF fpc}
end;

function GenerateInternalBarcode(P_ID: integer; p_size: integer; p_color: integer): string;
var
  posizione, checksum: integer;
begin
  Result := '';
  Result := Result + Copy('800000000', 1, (9 - Length(IntToStr(P_ID)))) + IntToStr(P_ID) +
    Copy('0', 1, (1 - Length(IntToStr(p_size)))) + IntToStr(p_size) +
    Copy('00', 1, (2 - Length(IntToStr(p_color)))) + IntToStr(p_color);
  checksum := 0;
  for posizione := 1 to 12 do
    if posizione mod 2 = 0 then
      checksum := checksum + strtoint(Copy(Result, posizione, 1)) * 3
    else
      checksum := checksum + strtoint(Copy(Result, posizione, 1));

  checksum := checksum mod 10;
  checksum := 10 - checksum;
  if checksum = 10 then
    checksum := 0;

  Result := Result + IntToStr(checksum);
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

  if Length(Trim(piva)) <> 11 then
  begin
    Result := False;
    Error := 'Attenzione inserita partita iva di lunghezza errata!';
    specification := 'La partita iva italiana deve essere di 11 caratteri questa è invece di: ' +
      IntToStr(Length(Trim(piva)));
  end
  else
  begin
    for i := 1 to 11 do
    begin
      if (Copy(piva, i, 1) < '0') or (Copy(piva, i, 1) > '9') then
      begin
        Error := 'La partita iva contiene caratteri non ammessi';
        specification := 'la parita iva deve essere di 11 caratteri numerici';
        Result := False;
        Exit;
      end;

      if i / 2 = trunc(i / 2) then
      begin
        c := strtoint(Copy(piva, i, 1)) * 2;
        if c > 9 then
          c := c - 9;
        S := S + c;
      end
      else if i < 11 then
        S := S + strtoint(Copy(piva, i, 1));
    end;
    r := S - 10 * trunc(S / 10);
    if r = 0 then
      c := 0
    else
      c := 10 - r;

    if Copy(piva, 11, 1) <> IntToStr(c) then
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

function ConvertFloatToString(const Value: Double;

  const digits: integer): string;
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

procedure JanuaFree(Obj: TObject);
begin
  if Assigned(Obj) then
  begin
    FreeAndNil(Obj);
  end;
end;

function JSupports(aIntfName: string; aIntf: IInterface; aGUID: TGUID; out oIntf;
  aRaise: boolean = true): boolean;
begin
  Result := Supports(aIntf, aGUID, oIntf);
  if not Result and aRaise then
    raise exception.Create(aIntfName + ' Interface not supported');
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

function DistanceBetweenLonLat(

  const Lat1, Lon1, Lat2, Lon2: Extended): Extended;
begin
  Result := RadToDeg(ArcCos(Sin(DegToRad(Lat1)) * Sin(DegToRad(Lat2)) + Cos(DegToRad(Lat1)) *
    Cos(DegToRad(Lat2)) * Cos(DegToRad(Lon1 - Lon2)))) * 69.09;
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



// --------------------- verifica mail UTF8 and NewCompiler Compliant --------------------------------

function IsValidEmailUTF(email: string): boolean;
// Returns True if the email address is valid
// Author: Ernesto D'Spirito

type
  States = (STATE_BEGIN, STATE_ATOM, STATE_QTEXT, STATE_QCHAR, STATE_QUOTE, STATE_LOCAL_PERIOD,
    STATE_EXPECTING_SUBDOMAIN, STATE_SUBDOMAIN, STATE_HYPHEN);
var
  State: States;
  i, n, subdomains: integer;
  c: char;
const
  // Valid characters in a "quoted-string"
  quoted_string_chars = [#0 .. #255] - ['"', #13, '\'];

  // Valid characters in a subdomain
  letters = ['A' .. 'Z', 'a' .. 'z'];
  letters_digits = ['0' .. '9', 'A' .. 'Z', 'a' .. 'z'];
  subdomain_chars = ['-', '0' .. '9', 'A' .. 'Z', 'a' .. 'z'];
begin

  State := STATE_BEGIN;
  email := Trim(email);
  n := Length(email);
  i := 0;
  subdomains := 1;

  for c in email do
  begin
    case State of
      STATE_BEGIN:
        if CharInSet(c, atom_chars) then
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
        else if not CharInSet(c, atom_chars) then
          break;

      STATE_QTEXT:

        if c = '\' then
          State := STATE_QCHAR
        else if c = '"' then
          State := STATE_QUOTE
        else if not CharInSet(c, quoted_string_chars) then
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
        if CharInSet(c, atom_chars) then
          State := STATE_ATOM
        else if c = '"' then
          State := STATE_QTEXT
        else
          break;

      STATE_EXPECTING_SUBDOMAIN:

        if CharInSet(c, letters) then
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
        else if not CharInSet(c, letters_digits) then
          break;

      STATE_HYPHEN:

        if CharInSet(c, letters_digits) then
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

// --------------------- funzione di verifica della correttezza di una mail -----

function IsValidEmailANSI(Value: AnsiString): boolean;

  function CheckAllowed(const S: AnsiString): boolean; inline;
  var
    c: AnsiChar;
  begin
    for c in S do
      if not CharInSet(c, ['a' .. 'z', 'A' .. 'Z', '0' .. '9', '_', '-', '.']) then
        Exit(False);
    Result := true;
  end;

  function FirstTest(const email: AnsiString): boolean; inline;
  var
    lMail: string;
  begin
    lMail := String(email);
    Result := not((lMail = '') or (AnsiPos('@', lMail) = 0) or (AnsiPos('.', lMail) = 0) or
      (AnsiPos(' ', lMail) > 0));
  end;

var
  NamePart, ServerPart: AnsiString;
  i, J: integer;
  c: AnsiChar;
  lString: String;
begin
  Result := False;
  J := 0;
  i := 1;
  for c in Value do
  begin
    Inc(J);
    if c = '@' then
      i := J;
  end;

  if not FirstTest(Value) then
    Exit;
  NamePart := Copy(Value, 1, i - 1);
  ServerPart := Copy(Value, i + 1, Length(Value));
  if (Length(NamePart) = 0) or ((Length(ServerPart) = 0)) then
    Exit;
  lString := String(ServerPart);
  i := AnsiPos('.', lString);
  if (i = 0) or (i > (Length(lString) - 2)) then
    Exit;
  Result := CheckAllowed(NamePart) and CheckAllowed(ServerPart);
end;

function IsValidEmail(Value: string): boolean; overload; inline;
begin
  Result := IsValidEmailUTF(Value);
end;

function IsValidEmail(Value: AnsiString): boolean; overload; inline;
begin
  Result := IsValidEmailANSI(Value);
end;

function StringLength(const S: string): integer;
var
  c: char;
begin
  Result := 0;
  for c in S do
    Inc(Result);
end;

// --------------------- URL Management Functions --------------------------------

function IncludeTrailingURLDelimiter(const AURL: string): string;
begin
  Result := AURL;
  if (AURL <> '') and (AURL[High(AURL)] <> '/') then
    Result := Result + '/';
end;

function RemoveSuffixURLDelimiter(const AURL: string): string;
begin
  Result := AURL;
  if (AURL <> '') and (AURL[Low(AURL)] = '/') then
    Result := Copy(AURL, Low(AURL) + 1, High(AURL));
end;

function ConcatUrl(const AURL, aDir: string): string;
begin
  Result := IncludeTrailingURLDelimiter(AURL) + RemoveSuffixURLDelimiter(aDir)
end;

function JIfThen(aValue: boolean; const ATrue: char; AFalse: char): char;
begin
  if aValue then
    Result := ATrue
  else
    Result := AFalse;
end;

// ------------------------------------------------------------------------------

procedure StringListAssign(ToList: TStrings; FromList: TStrings;

  const CheckLength: boolean);
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

procedure StringListAssign(ToList: TStrings; FromList: string;

  const CheckLength: boolean);
begin
  if Assigned(ToList) then
    if (FromList.Length > 0) or not CheckLength then
      ToList.text := FromList;
end;

procedure StringAssign(

  var ToList: string; FromList: string;

  const CheckLength: boolean);
begin
  if (FromList.Length > 0) or not CheckLength then
    ToList := FromList;
end;

procedure StringAssign(

  var ToList: string; FromList: TStrings;

  const CheckLength: boolean);
begin
  if Assigned(FromList) then
    if (FromList.Count > 0) or not CheckLength then
      ToList := FromList.text;
end;

function IsMail(

  const email: string): boolean; inline;
begin
  Result := not((email = '') or (Pos('@', email) = 0) or (Pos('.', email) = 0) or (Pos(' ', email) > 0));

  if Result then
    Result := IsValidEmail(email);
end;

// ------------------- funzioni di verifica codice fiscale italiano -------------

Function ControllaCF(

  const cf: String;

  var Error: string): boolean;
Const
  SetDisp: Array [0 .. 25] of integer = (1, 0, 5, 7, 9, 13, 15, 17, 19, 21, 2, 4, 18, 20, 11, 3, 6, 8, 12, 14,
    16, 10, 22, 25, 24, 23);
Var
  i, n, S: integer;
  cf2: String;
Begin
  Result := true;
  if StringLength(cf) = 0 Then
    Exit;
  if StringLength(cf) <> 16 Then
  Begin
    Result := False;
    Error := 'La lunghezza del codice fiscale non è corretta: il codice ' +
      'fiscale dovrebbe essere lungo esattamente 16 caratteri.';
    Exit;
  End;

  cf2 := UpperCase(cf);

  For i := 0 to 15 do
    If Not(((cf2[i] >= '0') And (cf2[i] <= '9')) or ((cf2[i] >= 'A') And (cf2[i] <= 'Z'))) Then
    Begin
      Result := False;
      Error := 'Il codice fiscale contiene dei caratteri non validi: ' +
        'i soli caratteri validi sono le lettere e le cifre.';
      Exit;
    End;

  S := 0;
  For i := 0 to 14 do
    If Not Odd(i) Then
    Begin
      n := Ord(cf2[i]);
      If ((cf2[i] >= '0') And (cf2[i] <= '9')) Then
        S := S + n - Ord('0')
      Else
        S := S + n - Ord('A');
    End;

  For i := 0 to 14 do
    If Odd(i) Then
    Begin
      n := Ord(cf2[i]);
      If ((cf2[i] >= '0') And (cf2[i] <= '9')) Then
        n := n - Ord('0') + Ord('A');
      S := S + SetDisp[n - Ord('A')];
    End;

  n := (S Mod 26) + Ord('A');

  If Chr(n) <> cf2[15] Then
  begin
    Result := False;
    Error := 'Il codice fiscale non è corretto: ' + 'il codice di controllo non corrisponde.';
  end
  else
  begin
    Error := '';
    Result := true;
  end;
End;

// ------------------------------------------------------------
function Valctrl(const resto: integer): string; inline;
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

function ValPari(const carattere: char): integer; inline;
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

function ValDispari(const carattere: char): integer; inline;
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
  vCodFiscale: array [1 .. 16] of char;
  aChar: char;
begin
  strErrore := '';
  somma := 0;
  if StringLength(Codfiscale) = 16 then
  begin
    // esegue la verifica del codice fiscale solo se questo è
    // lungo 16
    i := 1;
    for aChar in Codfiscale.ToUpper do
    begin
      vCodFiscale[i] := aChar;
      Inc(i);
    end;

    for i := 1 to 15 do
    begin
      resto := (i mod 2);

      if resto = 0 then
        somma := somma + ValPari(vCodFiscale[i])
      else
        somma := somma + ValDispari(vCodFiscale[i]);
    end;
    resto := (somma mod 26);
    if (Valctrl(resto) = vCodFiscale[16]) then
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

function EncodeURIComponentIOS(Source: string): string;
var
  i: integer;
  LC: char;
begin
  Result := '';
  for LC in Source do
    if not CharInSet(LC, ['A' .. 'Z', 'a' .. 'z', '0', '1' .. '9', '-', '_', '~', '.', '*', '!']) then
      Result := Result + '%' + inttohex(Ord(LC), 2)
    else
      Result := Result + LC;
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
  SetLength(Result, Length(ASrcUTF8) * 3); // space to %xx encode every byte
  while i <= Length(ASrcUTF8) do
  begin
    if IsSafeChar(Ord(ASrcUTF8[i])) then
    begin
      Result[J] := ASrcUTF8[i];
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

procedure HtmlReplace(var aTemplate: string; aParam: string; aValue: TDateTime);
begin
  aTemplate := StringReplace(aTemplate, '$' + aParam + '$', DateTimeToStr(aValue),
    [rfIgnoreCase, rfReplaceAll]);
end;

function TryHtmlReplace(var aTemplate: string; aParam: string; aValue: string): boolean;
begin
  aParam := '$' + aParam + '$';
  Result := Pos(aParam, aTemplate) > 0;
  if Result then
    aTemplate := StringReplace(aTemplate, aParam, aValue, [rfIgnoreCase, rfReplaceAll]);
end;

function TryHtmlReplace(var aTemplate: string; aParam: string; aValue: integer): boolean;
begin
  aParam := '$' + aParam + '$';
  Result := Pos(aParam, aTemplate) > 0;
  if Result then
    aTemplate := StringReplace(aTemplate, '$' + aParam + '$', aValue.ToString, [rfIgnoreCase, rfReplaceAll]);
end;

function TryHtmlReplace(var aTemplate: string; aParam: string; aValue: Extended): boolean;
begin
  aParam := '$' + aParam + '$';
  Result := Pos(aParam, aTemplate) > 0;
  if Result then
    aTemplate := StringReplace(aTemplate, '$' + aParam + '$', aValue.ToString, [rfIgnoreCase, rfReplaceAll]);
end;

function TryHtmlReplace(var aTemplate: string; aParam: string; aValue: TDateTime): boolean;
begin
  aParam := '$' + aParam + '$';
  Result := Pos(aParam, aTemplate) > 0;
  if Result then
    aTemplate := StringReplace(aTemplate, '$' + aParam + '$', DateTimeToStr(aValue),
      [rfIgnoreCase, rfReplaceAll]);
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
  strTemp := StringReplace(strTemp, '', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, '[', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, ']', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, '{', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, '}', '', [rfReplaceAll, rfIgnoreCase]);
  Result := strTemp;
end;

function StripString(const strStringa: string): string; overload;
begin
  Result := StripString(strStringa, '%');
end;

function StripStringSearchIndex(const strStringa: string): string; inline;
begin
  Result := Trim(LowerCase(StripString(strStringa, ' ')));
  // excludearray := TArray<string>.Create(, 'dell''', 'all''', 'un''');
  Result := StringReplace(Result, 'l''', '', [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, 'nell''', '', [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, 'dell''', '', [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, 'all''', '', [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, 'un''', '', [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '1', '', [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '2', '', [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '3', '', [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '4', '', [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '5', '', [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '6', '', [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '7', '', [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '8', '', [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '9', '', [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '0', '', [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, 'nell', '', [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, 'dell', '', [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, 'all', '', [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, 'un', '', [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '  ', ' ', [rfReplaceAll, rfIgnoreCase]);
end;

function StripString(const strStringa: string; const spacereplace: string): string;
var
  strTemp: string;
begin
  strTemp := UpperCase(strStringa);
  strTemp := StringReplace(strTemp, '_', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, '+', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, '', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, '', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, '"', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, ';', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, '<', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, '>', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, '.', '', [rfReplaceAll, rfIgnoreCase]);
  // VERY IMPORTANT SPACE IS REPLACED BY JOLLY SEARCH SIGN %
  strTemp := StringReplace(strTemp, ' ', spacereplace, [rfReplaceAll, rfIgnoreCase]);
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
  strTemp := StringReplace(strTemp, '', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, '[', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, ']', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, '{', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, '}', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, '}', '', [rfReplaceAll, rfIgnoreCase]);
  Result := strTemp;
end;

{$IFNDEF FPC}
(*
  function GetParamByName(aName: string; aDataset: TClientDataset): TParam;
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
*)
{$ENDIF FPC}

function ReadParam(parDataset: TDataset;

  const sKey: string;

  const sDefault: string): string;
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

function MakeXML(DataSet: TDataset): string;
var
  i: integer;
begin
  Result := '';
  if (not DataSet.Active) or (DataSet.IsEmpty) then
    Exit;
  Result := Result + '<' + DataSet.Name + '>';
  DataSet.First;
  while not DataSet.Eof do
  begin
    Result := Result + '<RECORD>';
    for i := 0 to DataSet.Fields.Count - 1 do
      Result := Result + MakeTag(DataSet.Fields[i].Name, DataSet.Fields[i].text);
    Result := Result + '</RECORD>';
    DataSet.Next;
  end;
  Result := Result + '</' + DataSet.Name + '>';
end;

// -------------- string functions ----------------------------------------------------------------------------
{$IFNDEF NEXTGEN}
{$IFDEF POSIX}

function StringToAnsiString(const Source: UnicodeString; CodePage: integer = 0): AnsiString;
{$ELSE}

function StringToAnsiString(const Source: UnicodeString; CodePage: UINT = 0): AnsiString;
{$ENDIF}
var
  strLen: integer;
begin
  if CodePage = 0 then
    CodePage := DefaultSystemCodePage;
{$IFNDEF FPC}
  strLen := LocaleCharsFromUnicode(CodePage, 0, PWideChar(Source), Length(Source), nil, 0, nil, nil);
  if strLen > 0 then
  begin
    SetLength(Result, strLen);
    LocaleCharsFromUnicode(CodePage, 0, PWideChar(Source), Length(Source), PAnsiChar(Result), strLen,
      nil, nil);
    SetCodePage(PRawByteString(@Result)^, CodePage, False);
  end;
{$ENDIF FPC}
end;

function AnsiStringToString(const Source: RawByteString): UnicodeString; overload;
begin
  Result := UnicodeString(Source);
end;

function AnsiStringToString(const Source: AnsiString): UnicodeString; overload;
begin
  Result := UnicodeString(Source);
end;
{$ENDIF NEXTGEN}
// ------------------------------------------------------------------------------

/// //////////////////////////////////////////////
// Lpad
// this function pads a string by adding
// n times a char (padChar)
function Lpad(padString: string; strlength: integer; padChar: string = '0'): string;
begin
  if Length(padString) > strlength then
    padString := Copy(padString, 1, strlength);
  While not(Length(padString) >= strlength) do
    padString := padChar + padString;
  Result := padString;
end;

function Indent(Length, level: integer): string;
begin
  try
    if Length = 0 then
      Length := 3;
    Result := Lpad(' ', Length * level, ' ');
  except
{$IFNDEF fpc}
    on e: exception do
    begin
      Result := '';
    end;
{$ENDIF fpc}
  end;
end;

/// //////////////////////////////////////////////
// lpad
// this function pads a string by adding
// n times a char (padChar) and converting an integer to a string.
function Lpad(padNum: Int64; strlength: integer; padChar: string): string;
var
  padString: string;
begin
  padString := IntToStr(padNum);
  if Length(padString) > strlength then
    padString := Copy(padString, 1, strlength);
  While not(Length(padString) >= strlength) do
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
  padString := IntToStr(padNum);
  if Length(padString) > strlength then
    padString := Copy(padString, 1, strlength);
  While not(Length(padString) >= strlength) do
    padString := padChar + padString;
  Result := padString;
end;

/// //////////////////////////////////////////////
// Rpad
// this function pads a string by adding
// n times a char (padChar)
function Rpad(padString: string; strlength: integer; padChar: string): string;
begin
  if Length(padString) > strlength then
    padString := Copy(padString, 1, strlength);
  While not(Length(padString) >= strlength) do
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
  padString := IntToStr(padNum);
  if Length(padString) > strlength then
    padString := Copy(padString, 1, strlength);
  While not(Length(padString) >= strlength) do
    padString := padString + padChar;
  Result := padString;
end;

// Free resources etc. You can olny have a finalization if you have an initialization.

end.
