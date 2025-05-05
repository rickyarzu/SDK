unit Janua.Core.Crypt;

interface

uses System.SysUtils, System.NetEncoding, System.Classes;

{$I JANUACORE.INC}

type
  TJanuaCipherSettings = record
  private
    FSALT: RawByteString;
    FCipherKey: RawByteString;
    procedure SetCipherKey(const Value: RawByteString);
    procedure SetSALT(const Value: RawByteString);
  public
    constructor Create(aCipherKey: RawByteString);
  public
    property SALT: RawByteString read FSALT write SetSALT;
    property CipherKey: RawByteString read FCipherKey write SetCipherKey;
  end;

  TJanuaCriptEncode = class
  public
    class constructor Create;
  private
    class var FKey: string;
    class var FSettings: TJanuaCipherSettings;
  public
    class function DecryptDES3(const AStr: string): string;
    class function EncryptDES3(const AStr: string): string;
    class function DECGOSTEncrypt(const AStr: string): string;
    class function DECGOSTDecrypt(const AStr: string): string;
    class function DecodeString64(const Input: string): string;
    class function EncodeString64(const Input: string): string;
    class function Sha256DEC(const aString: string): string;
  end;

{$IFDEF MSWINDOWS}

function Decrypt(const S: AnsiString; Key: Word): AnsiString;
function Encrypt(const S: AnsiString; Key: Word): AnsiString;
{$ENDIF}

implementation

uses
  // Encrypt DECCipher Algoritms
  DECCipherBase, DECCipherModes, DECCipherFormats, DECCiphers, DECBaseClass,
  DECHashInterface, DECHashBase, DECFormatBase, DECHash;

const
  C1 = 52845;
  C2 = 22719;

{$IFDEF MSWINDOWS}

function Decode(const S: AnsiString): AnsiString;
const
  Map: array [AnsiChar] of Byte = (0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 62, 0, 0, 0, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60,
    61, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22,
    23, 24, 25, 0, 0, 0, 0, 0, 0, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44,
    45, 46, 47, 48, 49, 50, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0);
var
  I: LongInt;
begin
  case Length(S) of
    2:
      begin
        I := Map[S[1]] + (Map[S[2]] shl 6);
        SetLength(Result, 1);
        Move(I, Result[1], Length(Result))
      end;
    3:
      begin
        I := Map[S[1]] + (Map[S[2]] shl 6) + (Map[S[3]] shl 12);
        SetLength(Result, 2);
        Move(I, Result[1], Length(Result))
      end;
    4:
      begin
        I := Map[S[1]] + (Map[S[2]] shl 6) + (Map[S[3]] shl 12) + (Map[S[4]] shl 18);
        SetLength(Result, 3);
        Move(I, Result[1], Length(Result))
      end
  end
end;

function PreProcess(const S: AnsiString): AnsiString;
var
  SS: AnsiString;
begin
  SS := S;
  Result := '';
  while SS <> '' do
  begin
    Result := Result + Decode(Copy(SS, 1, 4));
    Delete(SS, 1, 4)
  end
end;

function InternalDecrypt(const S: AnsiString; Key: Word): AnsiString;
var
  I: Word;
  Seed: Word;
begin
  Result := S;
  Seed := Key;
  for I := 1 to Length(Result) do
  begin
    Result[I] := AnsiChar(Byte(Result[I]) xor (Seed shr 8));
    Seed := (Byte(S[I]) + Seed) * Word(C1) + Word(C2)
  end
end;

function Decrypt(const S: AnsiString; Key: Word): AnsiString;
begin
  Result := InternalDecrypt(PreProcess(S), Key)
end;

function Encode(const S: AnsiString): AnsiString;
const
  Map: array [0 .. 63] of AnsiChar = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ' + 'abcdefghijklmnopqrstuvwxyz0123456789+/';
var
  I: LongInt;
begin
  I := 0;
  Move(S[1], I, Length(S));
  case Length(S) of
    1:
      Result := Map[I mod 64] + Map[(I shr 6) mod 64];
    2:
      Result := Map[I mod 64] + Map[(I shr 6) mod 64] + Map[(I shr 12) mod 64];
    3:
      Result := Map[I mod 64] + Map[(I shr 6) mod 64] + Map[(I shr 12) mod 64] + Map[(I shr 18) mod 64]
  end
end;

function PostProcess(const S: AnsiString): AnsiString;
var
  SS: AnsiString;
begin
  SS := S;
  Result := '';
  while SS <> '' do
  begin
    Result := Result + Encode(Copy(SS, 1, 3));
    Delete(SS, 1, 3)
  end
end;

function InternalEncrypt(const S: AnsiString; Key: Word): AnsiString;
var
  I: Word;
  Seed: Word;
begin
  Result := S;
  Seed := Key;
  for I := 1 to Length(Result) do
  begin
    Result[I] := AnsiChar(Byte(Result[I]) xor (Seed shr 8));
    Seed := (Byte(Result[I]) + Seed) * Word(C1) + Word(C2)
  end
end;

function Encrypt(const S: AnsiString; Key: Word): AnsiString;
begin
  Result := PostProcess(InternalEncrypt(S, Key))
end;

{$ENDIF}
{ TJanuaCriptEncode }

class constructor TJanuaCriptEncode.Create;
begin
  FSettings.Create('T4nt0v4l4g4t.');
end;

class function TJanuaCriptEncode.DECGOSTDecrypt(const AStr: string): string;
begin
  Result := AStr;
  with TCipher_Gost.Create do
    try
      // Init(THash_SHA1.KDFx('Encryption Key', '', Context.KeySize));
      Result := DecodeString64(Result);
    finally
      Free;
    end;
end;

class function TJanuaCriptEncode.DECGOSTEncrypt(const AStr: string): string;
begin
  Result := AStr;
  with TCipher_Gost.Create do
    try
      // Init(THash_SHA1.KDFx(AStr, '', Context.KeySize));
      Result := EncodeString64(Result);
    finally
      Free;
    end;
end;

class function TJanuaCriptEncode.DecodeString64(const Input: string): string;
{$IFNDEF FPC}
var
  InStr, OutStr: TStringStream;
begin
  InStr := TStringStream.Create(Input);
  try
    OutStr := TStringStream.Create('', TEncoding.UTF8);
    try
      TNetEncoding.base64.Decode(InStr, OutStr);
      Result := OutStr.DataString;
    finally
      OutStr.Free;
    end;
  finally
    InStr.Free;
  end;
{$ELSE}

begin
  Result := Decode64UTF8(Input);
{$ENDIF FPC}
end;

class function TJanuaCriptEncode.DecryptDES3(const AStr: string): string;
var
  Cipher: TCipher_3DES;
  CipherKey: RawByteString;
  IV: RawByteString;
  Input, Output: TBytes;
begin
  if AStr <> '' then
  begin
    Cipher := TCipher_3DES.Create;
    try
      CipherKey := FSettings.CipherKey;
      IV := #0#0#0#0#0#0#0#0;
      Cipher.Init(CipherKey, IV, 0);
      Cipher.Mode := cmCBCx;
      Input := System.SysUtils.BytesOf(AStr);
      Output := Cipher.EncodeBytes(Input);
      Result := TNetEncoding.base64.EncodeBytesToString(Output);
    finally
      Cipher.Free
    end;
  end;
end;

class function TJanuaCriptEncode.EncodeString64(const Input: string): string;
{$IFNDEF FPC}
var
  InStr, OutStr: TStringStream;
begin
  // requires Soap.EncdDecd
  InStr := TStringStream.Create(Input, TEncoding.UTF8);
  try
    OutStr := TStringStream.Create('');
    try
      TNetEncoding.base64.Encode(InStr, OutStr);
      Result := OutStr.DataString;
    finally
      OutStr.Free;
    end;
  finally
    InStr.Free;
  end;
{$ELSE}

begin
  Result := Encode64UTF8(Input);
{$ENDIF FPC}

end;

class function TJanuaCriptEncode.EncryptDES3(const AStr: string): string;
var
  Cipher: TCipher_3DES;
  CipherKey: RawByteString;
  IV: RawByteString;
  Input, Output: TBytes;
begin
  if AStr <> '' then
  begin
    Cipher := TCipher_3DES.Create;
    try
      CipherKey := FSettings.CipherKey;
      IV := #0#0#0#0#0#0#0#0;
      Cipher.Init(CipherKey, IV, 0);
      Cipher.Mode := cmCBCx;
      Input := System.SysUtils.BytesOf(AStr);
      Output := Cipher.EncodeBytes(Input);
      Result := TNetEncoding.base64.EncodeBytesToString(Output);
    finally
      Cipher.Free
    end;
  end;
end;

class function TJanuaCriptEncode.Sha256DEC(const aString: string): string;
var
  Hash: TDECHash;
  HashClass: TDECHashClass;
  InputFormatting: TDECFormatClass;
  OutputFormatting: TDECFormatClass;
  SaltFormatting: TDECFormatClass;
  InputBuffer: TBytes;
  OutputBuffer: TBytes;
begin
  InputFormatting := TDECFormat.ClassByName('THash_SHA_256');
end;

{ TJanuaCipherSettings }

constructor TJanuaCipherSettings.Create(aCipherKey: RawByteString);
begin
  FCipherKey := aCipherKey;
  FSALT := #0#0#0#0#0#0#0#0;
end;

procedure TJanuaCipherSettings.SetCipherKey(const Value: RawByteString);
begin
  FCipherKey := Value;
end;

procedure TJanuaCipherSettings.SetSALT(const Value: RawByteString);
begin
  FSALT := Value;
end;

end.
