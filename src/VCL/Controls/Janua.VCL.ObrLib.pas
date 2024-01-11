// ---------------------------------------------------------------------
//
// OBR Library
//
// Copyright (c) 2015-2021 WINSOFT
//
// ---------------------------------------------------------------------

//{$define TRIAL} // trial version, comment this line for full version

{$WARN SYMBOL_PLATFORM OFF}

unit Janua.VCL.ObrLib;

interface

uses SysUtils, ActiveX, Graphics;

type
  TBarcodeFormat = (bfUnknown, bfAztec, bfCodabar, bfCode39, bfCode93,
    bfCode128, bfDataMatrix, bfEan8, bfEan13, bfItf, bfMaxicode, bfPdf417,
    bfQrCode, bfRss14, bfRssExpanded, bfUpcA, bfUpcE, bfUpcEanExtension,
    bfMsi, bfPlessey, bfImb, bfPharmacode, bf1D);
  TBarcodeFormats = set of TBarcodeFormat;

  TDecodePoint = record
    X, Y: Single;
  end;
    
  TDecodeResult = record
    Text: WideString;
    Format: TBarcodeFormat;
    FormatName: string;
    Points: array of TDecodePoint;
  end;
  TDecodeResults = array of TDecodeResult;

  EBarcodeError = class(Exception);

  _Reader = interface;
  
  TBarcodeDecoder = class
  private
    FReader: _Reader;
    function GetAssumeCode39CheckDigit: Boolean;
    function GetAssumeGS1: Boolean;
    function GetAssumeMSICheckDigit: Boolean;
    function GetAutoRotate: Boolean;
    function GetBarcodeFormats: TBarcodeFormats;
    function GetCharacterSet: WideString;
    function GetDecodeMultiple: Boolean;
    function GetPureBarcode: Boolean;
    function GetReturnCodabarStartEnd: Boolean;
    function GetTryHarder: Boolean;
    function GetTryInverted: Boolean;
    function GetUseCode39ExtendedMode: Boolean;
    function GetUseCode39RelaxedExtendedMode: Boolean;
    procedure SetAssumeCode39CheckDigit(Value: Boolean);
    procedure SetAssumeGS1(Value: Boolean);
    procedure SetAssumeMSICheckDigit(Value: Boolean);
    procedure SetAutoRotate(Value: Boolean);
    procedure SetBarcodeFormats(Value: TBarcodeFormats);
    procedure SetCharacterSet(Value: WideString);
    procedure SetDecodeMultiple(Value: Boolean);
    procedure SetPureBarcode(Value: Boolean);
    procedure SetReturnCodabarStartEnd(Value: Boolean);
    procedure SetTryHarder(Value: Boolean);
    procedure SetTryInverted(Value: Boolean);
    procedure SetUseCode39ExtendedMode(Value: Boolean);
    procedure SetUseCode39RelaxedExtendedMode(Value: Boolean);
  public
    constructor Create;
    function Decode(Graphic: TGraphic): TDecodeResults;

    property AssumeCode39CheckDigit: Boolean read GetAssumeCode39CheckDigit write SetAssumeCode39CheckDigit;
    property AssumeGS1: Boolean read GetAssumeGS1 write SetAssumeGS1;
    property AssumeMSICheckDigit: Boolean read GetAssumeMSICheckDigit write SetAssumeMSICheckDigit;
    property AutoRotate: Boolean read GetAutoRotate write SetAutoRotate;
    property BarcodeFormats: TBarcodeFormats read GetBarcodeFormats write SetBarcodeFormats;
    property CharacterSet: WideString read GetCharacterSet write SetCharacterSet;
    property DecodeMultiple: Boolean read GetDecodeMultiple write SetDecodeMultiple;
    property PureBarcode: Boolean read GetPureBarcode write SetPureBarcode;
    property ReturnCodabarStartEnd: Boolean read GetReturnCodabarStartEnd write SetReturnCodabarStartEnd;
    property TryHarder: Boolean read GetTryHarder write SetTryHarder;
    property TryInverted: Boolean read GetTryInverted write SetTryInverted;
    property UseCode39ExtendedMode: Boolean read GetUseCode39ExtendedMode write SetUseCode39ExtendedMode;
    property UseCode39RelaxedExtendedMode: Boolean read GetUseCode39RelaxedExtendedMode write SetUseCode39RelaxedExtendedMode;
  end;

  // ZXing.NET
  
  BarcodeFormat = TOleEnum;
  BitmapFormat = TOleEnum;

  _Type = interface(IDispatch)
  end;
  
  _DecodeResultPoint = interface(IDispatch)
    ['{086C7C6B-96DE-383F-A2C9-47CAD0D81AFD}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_X: Single; safecall;
    function Get_Y: Single; safecall;
    property ToString: WideString read Get_ToString;
    property X: Single read Get_X;
    property Y: Single read Get_Y;
  end;

  _DecodeResult = interface(IDispatch)
    ['{816D8663-4ED5-3177-BEBF-82C064D7141F}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_Text: WideString; safecall;
    function Get_format: BarcodeFormat; safecall;
    function Get_Data: PSafeArray; safecall;
    function Get_ValidDataBits: Integer; safecall;
    function Get_ResultPointCount: Integer; safecall;
    function GetResultPoint(index: Integer): _DecodeResultPoint; safecall;
    property ToString: WideString read Get_ToString;
    property Text: WideString read Get_Text;
    property format: BarcodeFormat read Get_format;
    property Data: PSafeArray read Get_Data;
    property ValidDataBits: Integer read Get_ValidDataBits;
    property ResultPointCount: Integer read Get_ResultPointCount;
  end;

  _DecodeResults = interface(IDispatch)
    ['{9F271550-E818-3A83-90BF-7C62F855B35F}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_Error: WordBool; safecall;
    function Get_ErrorMessage: WideString; safecall;
    function Get_ResultCount: Integer; safecall;
    function GetResult(index: Integer): _DecodeResult; safecall;
    property ToString: WideString read Get_ToString;
    property Error: WordBool read Get_Error;
    property ErrorMessage: WideString read Get_ErrorMessage;
    property ResultCount: Integer read Get_ResultCount;
  end;

  _Reader = interface(IDispatch)
    ['{69F670D8-80D1-3F01-9E13-4FDC4435F2A1}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_AllowedEANExtensions: PSafeArray; safecall;
    procedure Set_AllowedEANExtensions(pRetVal: PSafeArray); safecall;
    function Get_AllowedLengths: PSafeArray; safecall;
    procedure Set_AllowedLengths(pRetVal: PSafeArray); safecall;
    function Get_AssumeCode39CheckDigit: WordBool; safecall;
    procedure Set_AssumeCode39CheckDigit(pRetVal: WordBool); safecall;
    function Get_AssumeGS1: WordBool; safecall;
    procedure Set_AssumeGS1(pRetVal: WordBool); safecall;
    function Get_AssumeMSICheckDigit: WordBool; safecall;
    procedure Set_AssumeMSICheckDigit(pRetVal: WordBool); safecall;
    function Get_AutoRotate: WordBool; safecall;
    procedure Set_AutoRotate(pRetVal: WordBool); safecall;
    function Get_BarcodeFormats: Integer; safecall;
    procedure Set_BarcodeFormats(pRetVal: Integer); safecall;
    function Get_CharacterSet: WideString; safecall;
    procedure Set_CharacterSet(const pRetVal: WideString); safecall;
    function Get_DecodeMultiple: WordBool; safecall;
    procedure Set_DecodeMultiple(pRetVal: WordBool); safecall;
    function Get_PureBarcode: WordBool; safecall;
    procedure Set_PureBarcode(pRetVal: WordBool); safecall;
    function Get_ReturnCodabarStartEnd: WordBool; safecall;
    procedure Set_ReturnCodabarStartEnd(pRetVal: WordBool); safecall;
    function Get_TryHarder: WordBool; safecall;
    procedure Set_TryHarder(pRetVal: WordBool); safecall;
    function Get_TryInverted: WordBool; safecall;
    procedure Set_TryInverted(pRetVal: WordBool); safecall;
    function Get_UseCode39ExtendedMode: WordBool; safecall;
    procedure Set_UseCode39ExtendedMode(pRetVal: WordBool); safecall;
    function Get_UseCode39RelaxedExtendedMode: WordBool; safecall;
    procedure Set_UseCode39RelaxedExtendedMode(pRetVal: WordBool); safecall;
    function Decode(rawRGB: PSafeArray; width: Integer; height: Integer; format: BitmapFormat): _DecodeResults; safecall;
    property ToString: WideString read Get_ToString;
    property AllowedEANExtensions: PSafeArray read Get_AllowedEANExtensions write Set_AllowedEANExtensions;
    property AllowedLengths: PSafeArray read Get_AllowedLengths write Set_AllowedLengths;
    property AssumeCode39CheckDigit: WordBool read Get_AssumeCode39CheckDigit write Set_AssumeCode39CheckDigit;
    property AssumeGS1: WordBool read Get_AssumeGS1 write Set_AssumeGS1;
    property AssumeMSICheckDigit: WordBool read Get_AssumeMSICheckDigit write Set_AssumeMSICheckDigit;
    property AutoRotate: WordBool read Get_AutoRotate write Set_AutoRotate;
    property BarcodeFormats: Integer read Get_BarcodeFormats write Set_BarcodeFormats;
    property CharacterSet: WideString read Get_CharacterSet write Set_CharacterSet;
    property DecodeMultiple: WordBool read Get_DecodeMultiple write Set_DecodeMultiple;
    property PureBarcode: WordBool read Get_PureBarcode write Set_PureBarcode;
    property ReturnCodabarStartEnd: WordBool read Get_ReturnCodabarStartEnd write Set_ReturnCodabarStartEnd;
    property TryHarder: WordBool read Get_TryHarder write Set_TryHarder;
    property TryInverted: WordBool read Get_TryInverted write Set_TryInverted;
    property UseCode39ExtendedMode: WordBool read Get_UseCode39ExtendedMode write Set_UseCode39ExtendedMode;
    property UseCode39RelaxedExtendedMode: WordBool read Get_UseCode39RelaxedExtendedMode write Set_UseCode39RelaxedExtendedMode;
  end;

implementation

uses {$ifdef TRIAL} Windows, {$endif TRIAL} ComObj;

// ZXing.NET

const
  BarcodeFormat_AZTEC = $00000001;
  BarcodeFormat_CODABAR = $00000002;
  BarcodeFormat_CODE_39 = $00000004;
  BarcodeFormat_CODE_93 = $00000008;
  BarcodeFormat_CODE_128 = $00000010;
  BarcodeFormat_DATA_MATRIX = $00000020;
  BarcodeFormat_EAN_8 = $00000040;
  BarcodeFormat_EAN_13 = $00000080;
  BarcodeFormat_ITF = $00000100;
  BarcodeFormat_MAXICODE = $00000200;
  BarcodeFormat_PDF_417 = $00000400;
  BarcodeFormat_QR_CODE = $00000800;
  BarcodeFormat_RSS_14 = $00001000;
  BarcodeFormat_RSS_EXPANDED = $00002000;
  BarcodeFormat_UPC_A = $00004000;
  BarcodeFormat_UPC_E = $00008000;
  BarcodeFormat_UPC_EAN_EXTENSION = $00010000;
  BarcodeFormat_MSI = $00020000;
  BarcodeFormat_PLESSEY = $00040000;
  BarcodeFormat_IMB = $00080000;
  BarcodeFormat_PHARMA_CODE = $00100000;
  BarcodeFormat_All_1D = $0000F1DE;

  BitmapFormat_Unknown = $00000000;
  BitmapFormat_Gray8 = $00000001;
  BitmapFormat_Gray16 = $00000002;
  BitmapFormat_RGB24 = $00000003;
  BitmapFormat_RGB32 = $00000004;
  BitmapFormat_ARGB32 = $00000005;
  BitmapFormat_BGR24 = $00000006;
  BitmapFormat_BGR32 = $00000007;
  BitmapFormat_BGRA32 = $00000008;
  BitmapFormat_RGB565 = $00000009;
  BitmapFormat_RGBA32 = $0000000A;
  BitmapFormat_UYVY = $0000000B;
  BitmapFormat_YUYV = $0000000C;
  
{$ifdef TRIAL}
var WasTrial: Boolean;

procedure ShowTrial;
begin
  if not WasTrial then
  begin
    WasTrial := True;
    MessageBox(0,
      'A trial version of OBR Library started.' + #13#13 +
      'Please note that trial version is supposed to be used for evaluation only. ' +
      'If you wish to distribute OBR Library as part of your application, ' +
      'you must register from website at https://www.winsoft.sk.' + #13#13 +
      'Thank you for trialing OBR Library.',
      'OBR Library 2.6, Copyright (c) 2015-2021 WINSOFT', MB_OK or MB_ICONINFORMATION);
  end;
end;
{$endif TRIAL}

type
  TArithmeticMask = record
    Fpu: Word;
    Sse: Word;
  end;

function SetArithmeticMask: TArithmeticMask;
var ControlWord: Word;
begin
  ControlWord := Get8087CW;
  Result.Fpu := ControlWord and $3F;
  Set8087CW(ControlWord or $3F);

{$ifdef FPC}
  ControlWord := GetSSECSR;
  Result.Sse := ControlWord and $1F80;
  SetSSECSR(ControlWord or $1F80);
{$else}
  {$ifdef CPUX64}
  ControlWord := GetMXCSR;
  Result.Sse := ControlWord and $1F80;
  SetMXCSR(ControlWord or $1F80);
  {$endif CPUX64}
{$endif FPC}
end;

procedure RestoreArithmeticMask(Mask: TArithmeticMask);
var ControlWord: Word;
begin
  ControlWord := Get8087CW;
  Set8087CW((ControlWord and (not $3F)) or Mask.Fpu);

{$ifdef FPC}
  ControlWord := GetSSECSR;
  SetSSECSR((ControlWord and (not $1F80)) or Mask.Sse);
{$else}
  {$ifdef CPUX64}
  ControlWord := GetMXCSR;
  SetMXCSR((ControlWord and (not $1F80)) or Mask.Sse);
  {$endif CPUX64}
{$endif FPC}
end;

function DecodeBarcodeFormats(Value: Integer): TBarcodeFormats;
begin
  Result := [];
  if (Value and BarcodeFormat_AZTEC) <> 0 then
    Result := Result + [bfAztec];
  if (Value and BarcodeFormat_CODABAR) <> 0 then
    Result := Result + [bfCodabar];
  if (Value and BarcodeFormat_CODE_39) <> 0 then
    Result := Result + [bfCode39];
  if (Value and BarcodeFormat_CODE_93) <> 0 then
    Result := Result + [bfCode93];
  if (Value and BarcodeFormat_CODE_128) <> 0 then
    Result := Result + [bfCode128];
  if (Value and BarcodeFormat_DATA_MATRIX) <> 0 then
    Result := Result + [bfDataMatrix];
  if (Value and BarcodeFormat_EAN_8) <> 0 then
    Result := Result + [bfEan8];
  if (Value and BarcodeFormat_EAN_13) <> 0 then
    Result := Result + [bfEan13];
  if (Value and BarcodeFormat_ITF) <> 0 then
    Result := Result + [bfItf];
  if (Value and BarcodeFormat_MAXICODE) <> 0 then
    Result := Result + [bfMaxicode];
  if (Value and BarcodeFormat_PDF_417) <> 0 then
    Result := Result + [bfPdf417];
  if (Value and BarcodeFormat_QR_CODE) <> 0 then
    Result := Result + [bfQrCode];
  if (Value and BarcodeFormat_RSS_14) <> 0 then
    Result := Result + [bfRss14];
  if (Value and BarcodeFormat_RSS_EXPANDED) <> 0 then
    Result := Result + [bfRssExpanded];
  if (Value and BarcodeFormat_UPC_A) <> 0 then
    Result := Result + [bfUpcA];
  if (Value and BarcodeFormat_UPC_E) <> 0 then
    Result := Result + [bfUpcE];
  if (Value and BarcodeFormat_UPC_EAN_EXTENSION) <> 0 then
    Result := Result + [bfUpcEanExtension];
  if (Value and BarcodeFormat_MSI) <> 0 then
    Result := Result + [bfMsi];
  if (Value and BarcodeFormat_PLESSEY) <> 0 then
    Result := Result + [bfPlessey];
  if (Value and BarcodeFormat_IMB) <> 0 then
    Result := Result + [bfImb];
  if (Value and BarcodeFormat_PHARMA_CODE) <> 0 then
    Result := Result + [bfPharmacode];
end;

function EncodeBarcodeFormats(BarcodeFormats: TBarcodeFormats): Integer;
begin
  Result := 0;
  if bfAztec in BarcodeFormats then
    Result := Result or BarcodeFormat_AZTEC;
  if bfCodabar in BarcodeFormats then
    Result := Result or BarcodeFormat_CODABAR;
  if bfCode39 in BarcodeFormats then
    Result := Result or BarcodeFormat_CODE_39;
  if bfCode93 in BarcodeFormats then
    Result := Result or BarcodeFormat_CODE_93;
  if bfCode128 in BarcodeFormats then
    Result := Result or BarcodeFormat_CODE_128;
  if bfDataMatrix in BarcodeFormats then
    Result := Result or BarcodeFormat_DATA_MATRIX;
  if bfEan8 in BarcodeFormats then
    Result := Result or BarcodeFormat_EAN_8;
  if bfEan13 in BarcodeFormats then
    Result := Result or BarcodeFormat_EAN_13;
  if bfItf in BarcodeFormats then
    Result := Result or BarcodeFormat_ITF;
  if bfMaxicode in BarcodeFormats then
    Result := Result or BarcodeFormat_MAXICODE;
  if bfPdf417 in BarcodeFormats then
    Result := Result or BarcodeFormat_PDF_417;
  if bfQrCode in BarcodeFormats then
    Result := Result or BarcodeFormat_QR_CODE;
  if bfRss14 in BarcodeFormats then
    Result := Result or BarcodeFormat_RSS_14;
  if bfRssExpanded in BarcodeFormats then
    Result := Result or BarcodeFormat_RSS_EXPANDED;
  if bfUpcA in BarcodeFormats then
    Result := Result or BarcodeFormat_UPC_A;
  if bfUpcE in BarcodeFormats then
    Result := Result or BarcodeFormat_UPC_E;
  if bfUpcEanExtension in BarcodeFormats then
    Result := Result or BarcodeFormat_UPC_EAN_EXTENSION;
  if bfMsi in BarcodeFormats then
    Result := Result or BarcodeFormat_MSI;
  if bfPlessey in BarcodeFormats then
    Result := Result or BarcodeFormat_PLESSEY;
  if bfImb in BarcodeFormats then
    Result := Result or BarcodeFormat_IMB;
  if bfPharmacode in BarcodeFormats then
    Result := Result or BarcodeFormat_PHARMA_CODE;
  if bf1D in BarcodeFormats then
    Result := Result or BarcodeFormat_All_1D;
end;

function DecodeBarcodeFormat(Value: Integer): TBarcodeFormat;
begin
  case Value of
    BarcodeFormat_AZTEC: Result := bfAztec;
    BarcodeFormat_CODABAR: Result := bfCodabar;
    BarcodeFormat_CODE_39: Result := bfCode39;
    BarcodeFormat_CODE_93: Result := bfCode93;
    BarcodeFormat_CODE_128: Result := bfCode128;
    BarcodeFormat_DATA_MATRIX: Result := bfDataMatrix;
    BarcodeFormat_EAN_8: Result := bfEan8;
    BarcodeFormat_EAN_13: Result := bfEan13;
    BarcodeFormat_ITF: Result := bfItf;
    BarcodeFormat_MAXICODE: Result := bfMaxicode;
    BarcodeFormat_PDF_417: Result := bfPdf417;
    BarcodeFormat_QR_CODE: Result := bfQrCode;
    BarcodeFormat_RSS_14: Result := bfRss14;
    BarcodeFormat_RSS_EXPANDED: Result := bfRssExpanded;
    BarcodeFormat_UPC_A: Result := bfUpcA;
    BarcodeFormat_UPC_E: Result := bfUpcE;
    BarcodeFormat_UPC_EAN_EXTENSION: Result := bfUpcEanExtension;
    BarcodeFormat_MSI: Result := bfMsi;
    BarcodeFormat_PLESSEY: Result := bfPlessey;
    BarcodeFormat_IMB: Result := bfImb;
    BarcodeFormat_PHARMA_CODE: Result := bfPharmacode;
    else Result := bfUnknown;
  end;
end;

function BarcodeName(Format: TBarcodeFormat): string;
const Names: array [TBarcodeFormat] of string =
  (
   'Unknown',
   'Aztec',
   'CODABAR',
   'Code 39',
   'Code 93',
   'Code 128',
   'Data Matrix',
   'EAN-8',
   'EAN-13',
   'ITF (Interleaved Two of Five)',
   'MaxiCode',
   'PDF417',
   'QR Code',
   'RSS 14',
   'RSS EXPANDED',
   'UPC-A',
   'UPC-E',
   'UPC/EAN extension',
   'MSI',
   'Plessey',
   'Intelligent Mail',
   'Pharmacode',
   ''
  );
begin
  Result := Names[Format];
end;

function PictureData(Graphic: TGraphic; var Width, Height: Integer): PSafeArray;
type
  TColors = array [0..0] of TColor;
var
  Bitmap: Graphics.TBitmap;
  Data: System.Pointer;
  SafeArray: PSafeArray;
  Y, WidthBytes: Integer;
  ScanLine: ^TColors;
  ResultAvailable: Boolean;
begin
  ResultAvailable := False;
  Result := nil;

  Bitmap := Graphics.TBitmap.Create;
  try
    Bitmap.Assign(Graphic);
    Bitmap.PixelFormat := pf32Bit;

    Width := Bitmap.Width;
    Height := Bitmap.Height;

    SafeArray := SafeArrayCreateVector(varByte, 0, 4 * Width * Height);
    if SafeArray <> nil then
    try
      if Succeeded(SafeArrayLock(SafeArray)) then
      try
        if Succeeded(SafeArrayAccessData(SafeArray, Data)) then
        try
          WidthBytes := 4 * Width;
          for Y := 0 to Height - 1 do
          begin
            ScanLine := Bitmap.ScanLine[Y];
            Move(ScanLine^, Data^, WidthBytes);
            Inc(PByte(Data), WidthBytes);
          end;
          ResultAvailable := True;
        finally
          SafeArrayUnaccessData(SafeArray);
        end;
      finally
        SafeArrayUnlock(SafeArray);
      end;
    finally
      if ResultAvailable then
        Result := SafeArray
      else
        SafeArrayDestroy(SafeArray)
    end;
  finally
    Bitmap.Free;
  end
end;

// TBarcodeDecoder

constructor TBarcodeDecoder.Create;
const CLASS_Reader: TGUID = '{FD0A5C9F-9CC5-37FF-9195-A7D68F7BEF50}';
begin
  inherited;
  FReader := CreateComObject(CLASS_Reader) as _Reader;
end;

function TBarcodeDecoder.GetAssumeCode39CheckDigit: Boolean;
begin
  Result := FReader.AssumeCode39CheckDigit;
end;

procedure TBarcodeDecoder.SetAssumeCode39CheckDigit(Value: Boolean);
begin
  FReader.AssumeCode39CheckDigit := Value;
end;

function TBarcodeDecoder.GetAssumeGS1: Boolean;
begin
  Result := FReader.AssumeGS1;
end;

procedure TBarcodeDecoder.SetAssumeGS1(Value: Boolean);
begin
  FReader.AssumeGS1 := Value;
end;

function TBarcodeDecoder.GetAssumeMSICheckDigit: Boolean;
begin
  Result := FReader.AssumeMSICheckDigit;
end;

procedure TBarcodeDecoder.SetAssumeMSICheckDigit(Value: Boolean);
begin
  FReader.AssumeMSICheckDigit := Value;
end;

function TBarcodeDecoder.GetAutoRotate: Boolean;
begin
  Result := FReader.AutoRotate;
end;

procedure TBarcodeDecoder.SetAutoRotate(Value: Boolean);
begin
  FReader.AutoRotate := Value;
end;

function TBarcodeDecoder.GetBarcodeFormats: TBarcodeFormats;
begin
  Result := DecodeBarcodeFormats(FReader.BarcodeFormats);
end;

procedure TBarcodeDecoder.SetBarcodeFormats(Value: TBarcodeFormats);
begin
  FReader.BarcodeFormats := EncodeBarcodeFormats(Value);
end;

function TBarcodeDecoder.GetCharacterSet: WideString;
begin
  Result := FReader.CharacterSet;
end;

procedure TBarcodeDecoder.SetCharacterSet(Value: WideString);
begin
  FReader.CharacterSet := Value;
end;

function TBarcodeDecoder.GetDecodeMultiple: Boolean;
begin
  Result := FReader.DecodeMultiple;
end;

procedure TBarcodeDecoder.SetDecodeMultiple(Value: Boolean);
begin
  FReader.DecodeMultiple := Value;
end;

function TBarcodeDecoder.GetPureBarcode: Boolean;
begin
  Result := FReader.PureBarcode;
end;

procedure TBarcodeDecoder.SetPureBarcode(Value: Boolean);
begin
  FReader.PureBarcode := Value;
end;

function TBarcodeDecoder.GetReturnCodabarStartEnd: Boolean;
begin
  Result := FReader.ReturnCodabarStartEnd;
end;

procedure TBarcodeDecoder.SetReturnCodabarStartEnd(Value: Boolean);
begin
  FReader.ReturnCodabarStartEnd := Value;
end;

function TBarcodeDecoder.GetTryHarder: Boolean;
begin
  Result := FReader.TryHarder;
end;

procedure TBarcodeDecoder.SetTryHarder(Value: Boolean);
begin
  FReader.TryHarder := Value;
end;

function TBarcodeDecoder.GetTryInverted: Boolean;
begin
  Result := FReader.TryInverted;
end;

procedure TBarcodeDecoder.SetTryInverted(Value: Boolean);
begin
  FReader.TryInverted := Value;
end;

function TBarcodeDecoder.GetUseCode39ExtendedMode: Boolean;
begin
  Result := FReader.UseCode39ExtendedMode;
end;

procedure TBarcodeDecoder.SetUseCode39ExtendedMode(Value: Boolean);
begin
  FReader.UseCode39ExtendedMode := Value;
end;

function TBarcodeDecoder.GetUseCode39RelaxedExtendedMode: Boolean;
begin
  Result := FReader.UseCode39RelaxedExtendedMode;
end;

procedure TBarcodeDecoder.SetUseCode39RelaxedExtendedMode(Value: Boolean);
begin
  FReader.UseCode39RelaxedExtendedMode := Value;
end;

function TBarcodeDecoder.Decode(Graphic: TGraphic): TDecodeResults;
var
  ArithmeticMask: TArithmeticMask;
  Data: PSafeArray;
  Width, Height: Integer;
  DecodeResults: _DecodeResults;
  DecodeResult: _DecodeResult;
  DecodeResultPoint: _DecodeResultPoint;
  I, J: Integer;
begin
{$ifdef TRIAL}
  ShowTrial;
{$endif TRIAL}

  ArithmeticMask := SetArithmeticMask;
  try
    Data := PictureData(Graphic, Width, Height);
    if Data <> nil then
    try
      DecodeResults := FReader.Decode(Data, Width, Height, BitmapFormat_RGB32);
      if DecodeResults.Error then
        raise EBarcodeError.Create(DecodeResults.ErrorMessage);
      SetLength(Result, DecodeResults.ResultCount);
      for I := 0 to Length(Result) - 1 do
      begin
        DecodeResult := DecodeResults.GetResult(I);
        Result[I].Text := DecodeResult.text;
        Result[I].Format := DecodeBarcodeFormat(DecodeResult.Format);
        Result[I].FormatName := BarcodeName(Result[I].Format);
        SetLength(Result[I].Points, DecodeResult.ResultPointCount);
        for J := 0 to Length(Result[I].Points) - 1 do
        begin
          DecodeResultPoint := DecodeResult.GetResultPoint(J);
          Result[I].Points[J].x := DecodeResultPoint.X;
          Result[I].Points[J].y := DecodeResultPoint.Y;
        end;
      end;
    finally
      SafeArrayDestroy(Data);
    end;
  finally
    RestoreArithmeticMask(ArithmeticMask);
  end;
end;

end.