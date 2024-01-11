unit Janua.Legacy.IBan;

interface

uses
  System.Classes,
  // Januaproject
  Janua.Core.Classes, Janua.Core.Types;

type
  TJanuaLegacyIBAN = class(TComponent)
  private
    { Private declarations }
  strict private
  const
    L_ABI: integer = 5;
    L_CAB: integer = 5;
    L_CONTO: integer = 12;

  var
    FIBAN: string;
    FAbi: string;
    FCab: string;
    FContoCorrente: string;
    FBBan: string;
    FCin: string;
    FCheckDigitIBAN: string;
    FisoCountry: TJanuaisoCountryCode;
    FNormalizzaCont: boolean;
    FEuroCountry: string;
    FIbanOK: boolean;
    FActive: boolean;

    function NormalizzaDati(codice: string; lunghezza: integer): string;
    function GetAbi: string;
    procedure SetAbi(val: string);
    function GetCAb: string;
    procedure SetCAb(val: string);
    function GetBBAN: string;
    procedure SetBBAN(val: string);
    function GetIban: string;
    procedure SetIban(val: string);
    function GetContoCorrente: string;
    procedure SetContoCorrente(val: string);
    function GetCheckDigitIBAN: string;
    procedure SetCheckDigitIBAN(val: string);
    function GetIsoCountry: TJanuaisoCountryCode;
    procedure SetIsoCountry(val: TJanuaisoCountryCode);
    function GetCin: string;
    procedure SetCin(val: string);
    function CalculateDigits(IBan: string): integer;
    function ChangeAlpha(input: string): string;
    function GetEuroCountry: string;
    procedure SetEuroCountry(val: string);
    function CheckIBAN(IBan: string): boolean;
    function GetActive: boolean;
    procedure SetActive(val: boolean);
  protected
    { Protected declarations }
  public
    Procedure CheckIBANOk;
    procedure Clear;
    { Public declarations }
  published
    property Abi: string read GetAbi write SetAbi;
    property CAb: string read GetCAb write SetCAb;
    property IBan: string read GetIban write SetIban;
    property BBAN: string read GetBBAN write SetBBAN;
    property ContoCorrente: string read GetContoCorrente write SetContoCorrente;
    property CheckDigitIBAN: string read GetCheckDigitIBAN write SetCheckDigitIBAN;
    property IsoCountry: TJanuaisoCountryCode read GetIsoCountry write SetIsoCountry;
    property Cin: string read GetCin write SetCin;
    property EuroCountry: string read GetEuroCountry write SetEuroCountry;
    Property IBanOK: boolean read FIbanOK;
    property Active: boolean read GetActive write SetActive;
    { Published declarations }
  end;

implementation

uses System.SysUtils, Janua.Core.Functions;

procedure TJanuaLegacyIBAN.CheckIBANOk;
begin
  FIbanOK := CheckIBAN(FIBAN);
end;

procedure TJanuaLegacyIBAN.Clear;
begin
  FIbanOK := False;
  FIBAN := '';
  FAbi := '';
  FCab := '';
  FContoCorrente := '';
  FBBan := '';
  FCin := '';
  FCheckDigitIBAN := '';
  FisoCountry := TJanuaisoCountryCode.jicITA;
  FNormalizzaCont := False;
  FEuroCountry := '';
  FIbanOK := False;
end;

function TJanuaLegacyIBAN.ChangeAlpha(input: string): string;
var
  a: Char;
begin
  Result := input;
  for a := 'A' to 'Z' do
  begin
    Result := StringReplace(Result, a, IntToStr(Ord(a) - 55), [rfReplaceAll]);
  end;
end;

function TJanuaLegacyIBAN.CheckIBAN(IBan: string): boolean;
begin
  IBan := StringReplace(IBan, ' ', '', [rfReplaceAll]);
  if CalculateDigits(IBan) = 1 then
    Result := True
  else
    Result := False;
end;

function TJanuaLegacyIBAN.NormalizzaDati(codice: string; lunghezza: integer): string;
var
  k: integer;
begin
  codice := Trim(UpperCase(codice));
  codice := Lpad(codice, lunghezza, '0');
  Result := codice;
end;

function TJanuaLegacyIBAN.GetAbi: string;
begin
  Result := FAbi;
end;

procedure TJanuaLegacyIBAN.SetAbi(val: string);
begin
  FAbi := NormalizzaDati(val, L_ABI);
end;

function TJanuaLegacyIBAN.GetCAb: string;
begin
  Result := FCab;
end;

procedure TJanuaLegacyIBAN.SetCAb(val: string);
begin
  FCab := NormalizzaDati(val, L_ABI);
end;

function TJanuaLegacyIBAN.GetIban: string;
begin
  Result := FIBAN;
end;

procedure TJanuaLegacyIBAN.SetIban(val: string);
begin
  FIBAN := val;
end;

function TJanuaLegacyIBAN.GetBBAN: string;
begin
  Result := FBBan;
end;

procedure TJanuaLegacyIBAN.SetBBAN(val: string);
begin
  FBBan := val;
end;

function TJanuaLegacyIBAN.GetContoCorrente: string;
begin
  Result := FContoCorrente;
end;

procedure TJanuaLegacyIBAN.SetContoCorrente(val: string);
begin
  FContoCorrente := NormalizzaDati(val, L_CONTO);
end;

function TJanuaLegacyIBAN.GetCheckDigitIBAN: string;
begin
  Result := FCheckDigitIBAN;
end;

procedure TJanuaLegacyIBAN.SetCheckDigitIBAN(val: string);
begin
  FCheckDigitIBAN := val;
end;

function TJanuaLegacyIBAN.GetIsoCountry: TJanuaisoCountryCode;
begin
  Result := FisoCountry;
end;

procedure TJanuaLegacyIBAN.SetIsoCountry(val: TJanuaisoCountryCode);
begin
  FisoCountry := val;
end;

function TJanuaLegacyIBAN.GetCin: string;
begin
end;

procedure TJanuaLegacyIBAN.SetCin(val: string);
begin
end;

function TJanuaLegacyIBAN.GetEuroCountry: string;
begin
end;

procedure TJanuaLegacyIBAN.SetEuroCountry(val: string);
begin
end;

function TJanuaLegacyIBAN.CalculateDigits(IBan: string): integer;
var
  v, l: integer;
  alpha: string;
  number: Longint;
  rest: integer;
begin
  IBan := UpperCase(IBan);

  if Pos('IBAN', IBan) > 0 then
    Delete(IBan, Pos('IBAN', IBan), 4);
  IBan := IBan + Copy(IBan, 1, 4);
  Delete(IBan, 1, 4);
  IBan := ChangeAlpha(IBan);

  FEuroCountry := Copy(IBan, 1, 2);

  if FEuroCountry = 'IT' then
  begin
    if length(IBan) >= 10 then
      FAbi := Copy(IBan, 6, 5);
    if length(IBan) >= 15 then
      FCab := Copy(IBan, 11, 5);
    if length(IBan) >= 5 then
      FCin := Copy(IBan, 5, 1);
    if length(IBan) >= 4 then
      FCheckDigitIBAN := Copy(IBan, 3, 2);

  end
  else if FEuroCountry = 'DE' then
  begin

  end;

  v := 1;
  l := 9;
  rest := 0;
  alpha := '';
  try
    while v <= length(IBan) do
    begin
      if l > length(IBan) then
        l := length(IBan);
      alpha := alpha + Copy(IBan, v, l);
      number := StrToInt(alpha);
      rest := number mod 97;
      v := v + l;
      alpha := IntToStr(rest);
      l := 9 - length(alpha);
    end;
  except
    rest := 0;
  end;
  Result := rest;
end;

function TJanuaLegacyIBAN.GetActive: boolean;
begin
  Result := FActive;
end;

procedure TJanuaLegacyIBAN.SetActive(val: boolean);
begin
  if val and not FActive then
    CheckIBANOk;
  FActive := val;
end;

end.
