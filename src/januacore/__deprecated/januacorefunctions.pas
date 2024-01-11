unit JanuaCoreFunctions;

{$IFDEF FPC}
{$mode objfpc}{$H+}
{$ENDIF}

interface

uses
  Classes, SysUtils, db, Math, strutils, Variants,   MemData

  {$IFNDEF FPC}
     , HTTPApp,  IOUtils,  DBClient
  {$ENDIF}

{$IFDEF MACOS}
    , MacApi.CoreFoundation, MacApi.ObjectiveC
{$IFNDEF IOS} , MacApi.AppKit, MacApi.CocoaTypes, MacApi.Foundation
{$ENDIF}
{$IFDEF IOS}
    , iOSapi.Foundation
{$ENDIF}
{$IFDEF POSIX}
    , Posix.Stdlib
{$ENDIF POSIX}
{$ENDIF}
{$IFDEF MSWINDOWS}
    {$IFNDEF FPC}
    , Winapi.Windows, ShellAPI, ShlObj, ActiveX, Soap.XSBuiltIns
    {$ENDIF}
   {$IFDEF FPC}
     , Windows
   {$ENDIF}
{$ENDIF}
    ;

const
  c_UnassignedDate = -693594;

{$ifdef FPC}

Const
{..............................................................................}
  cCR    = #13;
  cLF    = #10;
  cSpace = ' ';
  cTab   = ^I;

type
  TCharSet = set of char;

function  CharInset(const c: Char; const aSet: TCharSet): Boolean;

{$endif}

Type
{..............................................................................}
  TExpressionEvaluationException = Class(Exception);

  TExpressionEvaluator = Class
  private
    FLook: Char;
    FBuffer: String;
    FErrorMsg: String;

    Function  IsAlpha(Const c: Char): Boolean;
    Function  IsAddOp(Const c: Char): Boolean;
    Function  IsMulOp(Const c: Char): Boolean;
    Function  IsDigit(Const c: Char): Boolean;
    Function  IsWhiteSpace(Const c: Char): Boolean;
    Procedure Error(Const aErrorMsg: String);
    Function  Factor: Single;
    Function  Term: Single;
    Procedure Expected(s: String);
    Procedure Match(s: String);
    Procedure GetChar;
    Procedure SkipWhiteSpaces;
    Function  GetNumber: Single;
    Function  Expression: Single;
    Function  Equation: Single;
  public
    Function Evaluate(aExpression: String; Var aExpressionResult: Single): Boolean;
    Property ErrorMsg: String Read FErrorMsg;
  End;
{..............................................................................}
Function IsNumber(Const aValue: String): Boolean;
Function IsFormulaText(aText: String): Boolean;
{..............................................................................}


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
  TJanuaRegisterError = (jreNone, jreUserAlreadyRegistered, jreWrongUsername, jreWrongEmail,
    jreSystemError);

Type
  TJanuaApplication = (japHealth, japFootBall, japErgoMercator, japAttorneys, japCloud);

function FRound(number: Double; digits: integer): Double;
// funzione che esegue un arrotondamento esatto su un numero doppia precisione

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

{ ERP Accounting Related Functions **************************************************************** }
function FPartitaIva(piva: string; var Error: string; var specification: string): boolean;
// funzione che cerca e sostituisce un testo all'intero di un richEdit .........
function GenerateInternalBarcode(P_ID: integer; p_size: integer; p_color: integer): string;
// funzione che genera un barcode 'calcolato' per i dati interni macchina.......
function GenerateEAN13(p_barcode: string): string;
function generateAnagBarcode(p_barcode: string): string;
function generateIntAnagBarcode(p_barcode: integer): string;

{ Dataset Related Functions *********************************************************************** }
procedure CopyRecord(Dataset, dataclone: TDataset);
function GetFieldByName(Dataset: TDataset; fieldName: string): TField;
{$IFNDEF FPC}
procedure CloneDataset(fromDataset: TDataset; toDataset: TClientDataset); overload;
procedure CloneDataset(Dataset, dataclone: TCustomClientDataset); overload;
function CloneDatasetToStream(Dataset, dataclone: TCustomClientDataset): boolean;
{$ENDIF}
function StoreBlobToField(aField: TBlobField; aBlob: MemData.TBlob): boolean;
function StoreFieldToBlob(aFrom: TBlobField; aTo: MemData.TBlob): boolean;
function StoreBlobToBlob(aField: MemData.TBlob; aBlob: MemData.TBlob): boolean;

function HTMLEncode(const AStr: String): String;
function StripstringHtml(sHtml: UnicodeString): UnicodeString;
function ConvertFloatToString(const Value: Double; const digits: integer): string;
// funzione che legge un parametro e ne ritorna un default basandosi su un dataset
function ReadParam(parDataset: TDataset; const sKey: string; const sDefault: string): string;

{ String Related Functions *********************************************************************** }
procedure ReplaceStringPos(var text: TStringList; searchstr: string; newstr: string);
function CompareStringLists(List1, List2: TStringList): boolean;
procedure CompareStringListsDiff(List1, List2: TStringList; Missing1, Missing2: TStrings);
procedure SortTStrings(Strings: TStrings);
function StripString(const strStringa: string): string;
function StripStringWide(const strStringa: UnicodeString): UnicodeString;
function IsNumeric(pTestVar: string): boolean;
function IsMail(email: string): boolean;
function IsValidEmail(const Value: string): boolean;
// allinea testo a sinistra left pad
function Lpad(padString: string; strlength: integer; padChar: string): string;
// allinea numero a sinistra e lo trsforma in testo di conseguenza
function NLpad(padNum: int64; strlength: integer; padChar: string): string;
// allinea testo a sinistra left pad
function Rpad(padString: string; strlength: integer; padChar: string): string;

{ Operating System Related Functions ************************************************************** }
procedure Cls;
{$IFDEF IOS} function PNSStr(const AStr: String): PNSString; {$ENDIF}
procedure DebugMsg(const Msg: String);
function WriteLog(log: string; logfile: string): boolean;
function WriteCustomLog(log: string; logfile: string): boolean;

implementation

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

procedure DebugMsg(const Msg: String);
begin
{$IFDEF IOS}
  NSLog(PNSStr(AStr));
{$ENDIF}


{$IFDEF WINDOWS}
 {$IFNDEF FPC}
  OutputDebugString(PChar(Msg));
 {$ENDIF}

 {$IFDEF FPC}
  SetConsoleOutputCP(CP_UTF8);
 {$ENDIF}
{$ENDIF}

{$IFDEF FPC}
   writeln ('plain: ' + Msg);
  {Apparently we don't need UTF8ToConsole for this
   UTF8ToConsole did not do anything for me in fact.}
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
{$IFDEF POSIX}
  _system(PAnsiChar('clear'));
{$ENDIF POSIX}
end;


{$IFNDEF FPC}
function CloneDatasetToStream(Dataset, dataclone: TCustomClientDataset): boolean;
var
  aStream: TMemoryStream;
begin
  Result := True;
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
  Result := True;
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
  Result := True;
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
  aStream := TMemoryStream.Create;
  Result := True;
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
  I: integer;
begin
  List1.Sort;
  List2.Sort;
  I := 0;

  Result := List1.Count <> List2.Count;

  if Result then
  begin
    List1.Assign(List2);
  end
  else
  begin
    while (I < List1.Count) do
    begin
      if List1[I] <> List2[I] then
      begin
        List1.Assign(List2);
        Exit(True);
      end;
    end;
  end;

end;

procedure CompareStringListsDiff(List1, List2: TStringList; Missing1, Missing2: TStrings);
var
  I: integer;
  J: integer;
begin
  List1.Sort;
  List2.Sort;
  I := 0;
  J := 0;
  while (I < List1.Count) and (J < List2.Count) do
  begin
    if List1[I] < List2[J] then
    begin
      Missing2.Add(List1[I]);
      Inc(I);
    end
    else if List1[I] > List2[J] then
    begin
      Missing1.Add(List2[J]);
      Inc(J);
    end
    else
    begin
      Inc(I);
      Inc(J);
    end;
  end;
  for I := I to List1.Count - 1 do
    Missing2.Add(List1[I]);
  for J := J to List2.Count - 1 do
    Missing1.Add(List2[J]);
end;

function HTMLEncode(const AStr: String): String;
{ const
  Convert = ['&', '<', '>', '"'];
  var
  Sp, Rp: PChar; }
begin
  {
    SetLength(Result, Length(AStr) * 10);
    Sp := PChar(AStr);
    Rp := PChar(Result);
    // à agrave
    // è egrave
    // é eacute
    // ù ugrave
    // ì igrave

    while Sp^ <> #0 do
    begin
    case Sp^ of
    'à': begin
    FormatBuf(Rp^, 8, '&agrave;', 8, []);
    Inc(Rp,7);
    end;
    'è': begin
    FormatBuf(Rp^, 8, '&egrave;', 8, []);
    Inc(Rp,7);
    end;
    'ù': begin
    FormatBuf(Rp^, 8, '&ugrave;', 8, []);
    Inc(Rp,7);
    end;
    'ì': begin
    FormatBuf(Rp^, 8, '&uigrave;', 8, []);
    Inc(Rp,7);
    end;
    'ò': begin
    FormatBuf(Rp^, 8, '&ograve;', 8, []);
    Inc(Rp,7);
    end;
    '&': begin
    FormatBuf(Rp^, 5, '&amp;', 5, []);
    Inc(Rp,4);
    end;
    '<',
    '>': begin
    if Sp^ = '<' then
    FormatBuf(Rp^, 4, '&lt;', 4, [])
    else
    FormatBuf(Rp^, 4, '&gt;', 4, []);
    Inc(Rp,3);
    end;
    '"': begin
    FormatBuf(Rp^, 6, '&quot;', 6, []);
    Inc(Rp,5);
    end;
    else
    Rp^ := Sp^
    end;
    Inc(Rp);
    Inc(Sp);
    end;
    SetLength(Result, Rp - PChar(Result));
  }
  Result := AStr;
end;

function XMLDateDecode(aDate: System.OleVariant): TDateTime; // convert from WideString): TDateTime;
var
  day, month, year: word;
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
      day := StrToInt(sDay)
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

    year := StrToInt(sYear);
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

function GetFieldByName(Dataset: TDataset; fieldName: string): TField;
// var
// i : integer;
begin
  Result := Dataset.FindField(fieldName);
  {
    if Assigned(dataset.FindField(fieldName)) then
    begin
    if Dataset is TclientDataset then
    for I := 0 to dataset.FieldCount - 1 do
    if dataset.Fields[i].FieldName = fieldName then Exit(dataset.Fields[i])
    else
    Result := Dataset.FieldByName(fieldName);
    end
    else
    begin
    Result := nil;
    raise Exception.CreateFmt('Invalid Field Name: ''%s''', [fieldName]);
    end;
  }
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
  I: integer;
begin
  if dataclone.Active and Dataset.Active and (Dataset.RecordCount > 0) then
  begin
    dataclone.Edit;
    for I := 0 to Dataset.FieldCount - 1 do
      if Assigned(dataclone.FindField(Dataset.Fields[I].fieldName)) then
        dataclone.FieldByName(Dataset.Fields[I].fieldName).Value := Dataset.Fields[I].Value;
    dataclone.Post;
  end;
end;

{$IFNDEF FPC}
procedure CloneDataset(fromDataset: TDataset; toDataset: TClientDataset);
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
      toDataset.FieldByName(fromDataset.Fields[I].Name).Value := fromDataset.Fields[I].Value;
    end;
    toDataset.Post;
    fromDataset.Next;
  end;

end;

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

{$ENDIF}

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
    Result := True;
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
  {$ifndef FPC}
  Homedir := TPath.GetDocumentsPath + TPath.DirectorySeparatorChar + 'januaproject';
  LogDir := Homedir + TPath.DirectorySeparatorChar + 'log';
  {$ELSE}
  Homedir := GetAppConfigDir(False) + PathDelim + 'januaproject';
  LogDir := Homedir + PathDelim + 'log';
  {$ENDIF}
  text := DateTimeToStr(Now()) + sLineBreak;
  text := text + log + sLineBreak + sLineBreak;

  if not DirectoryExists(Homedir) then
    CreateDir(Homedir);
  if not DirectoryExists(LogDir) then
    CreateDir(LogDir);

  try
    {$ifndef FPC}
    Assignfile(ErrFile, LogDir + TPath.DirectorySeparatorChar + logfile);
    If FileExists(LogDir + TPath.DirectorySeparatorChar + logfile) then
      Append(ErrFile)
    else
      Rewrite(ErrFile);
    {$ELSE}
    Assignfile(ErrFile, LogDir + PathDelim + logfile);
    If FileExists(LogDir + PathDelim + logfile) then
      Append(ErrFile)
    else
      Rewrite(ErrFile);
    {$ENDIF}

    WriteLn(ErrFile, text);
    CloseFile(ErrFile);
    Result := True;
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
        checksum := checksum + StrToInt(Copy(Result, posizione, 1)) * 3
      else
        checksum := checksum + StrToInt(Copy(Result, posizione, 1));

    checksum := checksum mod 10;
    checksum := 10 - checksum;
    if checksum = 10 then
      checksum := 0;

    Result := Result + IntToStr(checksum);
  end
  else
    Result := ('0000000000000');
end;

function IsNumeric(pTestVar: string): boolean;
var
  I: integer;
begin
  Result := TryStrToInt(pTestVar, I);
end;

function GenerateInternalBarcode(P_ID: integer; p_size: integer; p_color: integer): string;
var
  posizione, checksum: integer;
begin
  Result := '';
  Result := Result + Copy('800000000', 1, (9 - length(IntToStr(P_ID)))) + IntToStr(P_ID) +
    Copy('0', 1, (1 - length(IntToStr(p_size)))) + IntToStr(p_size) +
    Copy('00', 1, (2 - length(IntToStr(p_color)))) + IntToStr(p_color);
  checksum := 0;
  for posizione := 1 to 12 do
    if posizione mod 2 = 0 then
      checksum := checksum + StrToInt(Copy(Result, posizione, 1)) * 3
    else
      checksum := checksum + StrToInt(Copy(Result, posizione, 1));

  checksum := checksum mod 10;
  checksum := 10 - checksum;
  if checksum = 10 then
    checksum := 0;

  Result := Result + IntToStr(checksum);
end;

function FPartitaIva(piva: string; var Error: string; var specification: string): boolean;
var
  I: integer;
  s: integer;
  c: integer;
  r: integer;
begin
  s := 0;
  Error := '';
  specification := '';

  if length(Trim(piva)) <> 11 then
  begin
    Result := False;
    Error := 'Attenzione inserita partita iva di lunghezza errata!';
    specification := 'La partita iva italiana deve essere di 11 caratteri questa è invece di: ' +
      IntToStr(length(Trim(piva)));
  end
  else
  begin
    for I := 1 to 11 do
    begin
      if (Copy(piva, I, 1) < '0') or (Copy(piva, I, 1) > '9') then
      begin
        Error := 'La partita iva contiene caratteri non ammessi';
        specification := 'la parita iva deve essere di 11 caratteri numerici';
        Result := False;
        Exit;
      end;

      if I / 2 = trunc(I / 2) then
      begin
        c := StrToInt(Copy(piva, I, 1)) * 2;
        if c > 9 then
          c := c - 9;
        s := s + c;
      end
      else if I < 11 then
        s := s + StrToInt(Copy(piva, I, 1));
    end;
    r := s - 10 * trunc(s / 10);
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
      Result := True;
  end;
end;

function ConvertFloatToString(const Value: Double; const digits: integer): string;
var
  intero, resto, I, molt: integer;
  amount: Extended;
  format: string;
begin
  format := '#,##0.';
  molt := 1;

  if digits > 0 then
    for I := 1 to digits do
    begin
      molt := molt * 10;
      format := format + '0';
    end;

  intero := trunc(Value);
  resto := trunc(molt * Value) - (molt * trunc(Value));
  amount := intero + resto / molt;
  Result := FormatFloat(format, amount);
end;

function FRound(number: Double; digits: integer): Double;
var
  I: integer;
  k: integer;
  left: int64;
  right: int64;
begin
  if (number = 0) or isnan(number) then
    Result := 0
  else
  begin

    k := 1;

    for I := 1 to digits do
      k := k * 10;

    left := trunc(number);
    right := Round(((number - left) + 0.0000001) * k);
    if k > 0 then
      Result := left + right / k
    else
    begin
      I := Round(number + 0.0000001);
      Result := I;
    end;
  end;
end;


// --------------------- funzione di verifica della correttezza di una mail -----

{$IFDEF FPC}

function  CharInset(const c: Char; const aSet: TCharSet): Boolean;
begin
  Result := c in aSet;
end;
{$ENDIF}

function IsValidEmail(const Value: string): boolean;

  function CheckAllowed(const s: string): boolean;
  var
    I: integer;
  begin
    for I := 1 to length(s) do
      // CharinSet(Edit1.Text[1],['S','?'])
      if not CharinSet(s[I], ['a' .. 'z', 'A' .. 'Z', '0' .. '9', '_', '-', '.']) then
        Exit(False);
    Result := True;
  end;

var
  I: integer;
  NamePart, ServerPart: string;
begin
  // vIsMail := (AnsiPos(p_username, '@') > 0) and (AnsiPos(p_username, '.') > 0);

  Result := False;
  I := AnsiPos('@', Value);
  if I = 0 then
    Exit;
  NamePart := Copy(Value, 1, I - 1);
  ServerPart := Copy(Value, I + 1, length(Value));
  if (length(NamePart) = 0) or ((length(ServerPart) = 0)) then
    Exit;
  I := AnsiPos('.', ServerPart);
  if (I = 0) or (I > (length(ServerPart) - 2)) then
    Exit;
  Result := CheckAllowed(NamePart) and CheckAllowed(ServerPart);
end;

// ------------------------------------------------------------------------------

function IsMail(email: string): boolean;
begin
  Result := not((email = '') or (AnsiPos('@', email) = 0) or (AnsiPos('.', email) = 0) or
    (AnsiPos(' ', email) > 0));

  if Result then
    Result := IsValidEmail(email);
end;

{$IFDEF FPC}
function HTMLDecode(const AStr: String): String;
var
  Sp, Rp, Cp, Tp: PChar;
  S: String;
  I, Code: Integer;
begin
  SetLength(Result, Length(AStr));
  Sp := PChar(AStr);
  Rp := PChar(Result);
  Cp := Sp;
  try
    while Sp^ <> #0 do
    begin
      case Sp^ of
        '&': begin
               Cp := Sp;
               Inc(Sp);
               case Sp^ of
                 'a': if AnsiStrPos(Sp, 'amp;') = Sp then  { do not localize }
                      begin
                        Inc(Sp, 3);
                        Rp^ := '&';
                      end;
                 'l',
                 'g': if (AnsiStrPos(Sp, 'lt;') = Sp) or (AnsiStrPos(Sp, 'gt;') = Sp) then { do not localize }
                      begin
                        Cp := Sp;
                        Inc(Sp, 2);
                        while (Sp^ <> ';') and (Sp^ <> #0) do
                          Inc(Sp);
                        if Cp^ = 'l' then
                          Rp^ := '<'
                        else
                          Rp^ := '>';
                      end;
                 'n': if AnsiStrPos(Sp, 'nbsp;') = Sp then  { do not localize }
                      begin
                        Inc(Sp, 4);
                        Rp^ := ' ';
                      end;
                 'q': if AnsiStrPos(Sp, 'quot;') = Sp then  { do not localize }
                      begin
                        Inc(Sp,4);
                        Rp^ := '"';
                      end;
                 '#': begin
                        Tp := Sp;
                        Inc(Tp);
                        while (Sp^ <> ';') and (Sp^ <> #0) do
                          Inc(Sp);
                        SetString(S, Tp, Sp - Tp);
                        Val(S, I, Code);
                        Rp^ := Chr((I));
                      end;
                 else
                   Exit;
               end;
           end
      else
        Rp^ := Sp^;
      end;
      Inc(Rp);
      Inc(Sp);
    end;
  except
  end;
  SetLength(Result, Rp - PChar(Result));
end;

{$ENDIF}

function StripstringHtml(sHtml: UnicodeString): UnicodeString;
var
  ReplaceString: string;
begin
  ReplaceString := sHtml;

  ReplaceString := StringReplace(ReplaceString, '<p>', '', [rfReplaceAll, rfIgnoreCase]);
  ReplaceString := StringReplace(ReplaceString, '</p>', ' ', [rfReplaceAll, rfIgnoreCase]);
  ReplaceString := StringReplace(ReplaceString, '<br />', ' ', [rfReplaceAll, rfIgnoreCase]);
  ReplaceString := StringReplace(ReplaceString, '&nbsp;', ' ', [rfReplaceAll, rfIgnoreCase]);
  ReplaceString := StringReplace(ReplaceString, '<strong>', ' ', [rfReplaceAll, rfIgnoreCase]);
  ReplaceString := StringReplace(ReplaceString, '</strong>', ' ', [rfReplaceAll, rfIgnoreCase]);
  ReplaceString := StringReplace(ReplaceString, '<div class="node">', ' ',
    [rfReplaceAll, rfIgnoreCase]);
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
  ReplaceString := StringReplace(ReplaceString, AnsiChar(#10), ' ', [rfReplaceAll, rfIgnoreCase]);
  ReplaceString := StringReplace(ReplaceString, AnsiChar(#13), ' ', [rfReplaceAll, rfIgnoreCase]);
  ReplaceString := StringReplace(ReplaceString, AnsiChar(#0), '', [rfReplaceAll, rfIgnoreCase]);

  try
      Result := HTMLDecode(ReplaceString);
  except
    Result := ReplaceString;
  end;

end;

function StripStringWide(const strStringa: UnicodeString): UnicodeString;
var
  strTemp: UnicodeString;
begin
  strTemp := strStringa;
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
  Result := strTemp;
end;

function StripString(const strStringa: string): string;
var
  strTemp: string;
begin
  strTemp := strStringa;
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
  Result := strTemp;
end;

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
  I: integer;
begin
  Result := '';
  if (not Dataset.Active) or (Dataset.IsEmpty) then
    Exit;
  Result := Result + '<' + Dataset.Name + '>';
  Dataset.First;
  while not Dataset.Eof do
  begin
    Result := Result + '<RECORD>';
    for I := 0 to Dataset.Fields.Count - 1 do
      Result := Result + MakeTag(Dataset.Fields[I].Name, Dataset.Fields[I].text);
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
    padString := Copy(padString, 1, strlength);
  While not(length(padString) >= strlength) do
    padString := padChar + padString;
  Result := padString;
end;

/// //////////////////////////////////////////////
// Rpad
// this function pads a string by adding
// n times a char (padChar)
function NLpad(padNum: int64; strlength: integer; padChar: string): string;
var
  padString: string;
begin
  padString := IntToStr(padNum);
  if length(padString) > strlength then
    padString := Copy(padString, 1, strlength);
  While not(length(padString) >= strlength) do
    padString := padChar + padString;
  Result := padString;
end;

/// //////////////////////////////////////////////
// Lpad
// this function pads a string by adding
// n times a char (padChar)
function Rpad(padString: string; strlength: integer; padChar: string): string;
begin
  if length(padString) > strlength then
    padString := Copy(padString, 1, strlength);
  While not(length(padString) >= strlength) do
    padString := padString + padChar;
  Result := padString;
end;

{..............................................................................}
Function  TExpressionEvaluator.IsAlpha(Const c: Char): Boolean;
Begin
  Result := CharInSet(c,['a'..'z','A'..'Z']);
End;
{..............................................................................}

{..............................................................................}
Function  TExpressionEvaluator.IsDigit(Const c: Char): Boolean;
Begin
  Result := CharInSet(c,['0'..'9']);
End;
{..............................................................................}

{..............................................................................}
Function  TExpressionEvaluator.IsAddOp(Const c: Char): Boolean;
Begin
  Result := CharInSet(c,['-','+']);
End;
{..............................................................................}

{..............................................................................}
Function  TExpressionEvaluator.IsMulOp(Const c: Char): Boolean;
Begin
  Result := CharInSet(c,['/','*']);
End;
{..............................................................................}

{..............................................................................}
Function  TExpressionEvaluator.IsWhiteSpace(Const c: Char): Boolean;
Begin
  Result := CharInSet(c,[cCR,cLF,cSpace,cTAB]);
End;
{..............................................................................}

{..............................................................................}
Procedure TExpressionEvaluator.Error(Const aErrorMsg: String);
Begin
  FErrorMsg := aErrorMsg;
  Raise TExpressionEvaluationException.Create(aErrorMsg);
End;
{..............................................................................}

{..............................................................................}
Procedure TExpressionEvaluator.Expected(s: String);
Begin
   Error(s + ' Expected');
End;
{..............................................................................}

{..............................................................................}
Procedure TExpressionEvaluator.Match(s: String);
Var
  i: Integer;
Begin
  For i := 1 To Length(s) Do Begin
    If FLook = s[i] Then
      GetChar
    Else
      Expected('''' + s + '''');
  End;
  SkipWhiteSpaces;
End;
{..............................................................................}

{..............................................................................}
Procedure TExpressionEvaluator.GetChar;
Begin
  If FBuffer = '' Then
    FLook := #0
  Else Begin
    FLook := FBuffer[1];
    Delete(FBuffer,1,1);
  End;
End;
{..............................................................................}

{..............................................................................}
Procedure TExpressionEvaluator.SkipWhiteSpaces;
Begin
  While IsWhiteSpace(FLook) Do
    GetChar;
End;
{..............................................................................}

{..............................................................................}
Function  TExpressionEvaluator.GetNumber: Single;
Var
  Number: String;
  Code: Integer;
Begin
  // number can start with a digit, or a '.' (implied '0' at beginning)
  If (FLook <> '.') And Not IsDigit(FLook) Then Error('Number Expected');
  Number := '';
  While IsDigit(FLook) Do Begin
    Number := Number + FLook;
    GetChar;
  End;
  If FLook = '.' Then Begin
    Number := Number + FLook;
    GetChar;
    If Not IsDigit(FLook) Then Error('Digits Expected after "."');
    While IsDigit(FLook) Do Begin
      Number := Number + FLook;
      GetChar;
    End;
  End;
  Val('0'+Number,Result,Code);
  If Code <> 0 Then Error('Illegal Number "'+Number+'"');

  SkipWhiteSpaces;
End;
{..............................................................................}

{..............................................................................}
Function  TExpressionEvaluator.Factor: Single;
Begin
  If FLook = '(' Then Begin
    Match('(');
    Result := Expression;
    Match(')');
  End
  Else
    Result := GetNumber;
End;
{..............................................................................}

{..............................................................................}
Function  TExpressionEvaluator.Term: Single;
Begin
  Result := Factor;
  While IsMulOp(FLook) Do Begin
    Case FLook of
      '*': Begin
        Match('*');
        Result := Result * Term;
      End;
      '/': Begin
        Match('/');
        Result := Result / Term;
      End;
    End;
  End;
End;
{..............................................................................}

{..............................................................................}
Function  TExpressionEvaluator.Expression: Single;
begin
  If IsAddOp(FLook) Then
    Result := 0
  Else
    Result := Term;

  While IsAddOp(FLook) Do Begin
    Case FLook of
      '+': Begin
        Match('+');
        Result := Result + Term;
      End;
      '-': Begin
        Match('-');
        Result := Result - Term;
      End;
    End;
  End;
End;
{..............................................................................}

{..............................................................................}
Function  TExpressionEvaluator.Equation: Single;
Begin
  If FLook = '=' Then Match('=');
  Result := Expression;
End;
{..............................................................................}

{..............................................................................}
Function  TExpressionEvaluator.Evaluate(aExpression: String; Var aExpressionResult: Single): Boolean;
Begin
  Result := True;

  FBuffer := aExpression;
  FErrorMsg := '';
  GetChar;
  Try
    aExpressionResult := Equation;
  Except
    Result := False;
  End;
End;
{..............................................................................}

{..............................................................................}
Function  IsNumber(Const aValue: String): Boolean;
Var
  ValueF: Single;
  Code: Integer;
Begin
  Val(aValue,ValueF,Code);
  Result := Code = 0;
End;
{..............................................................................}

{..............................................................................}
Function IsFormulaText(aText: String): Boolean;
Begin
  Result := Pos('=',aText) = 1;
End;
{..............................................................................}

{..............................................................................}



end.
