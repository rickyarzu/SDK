unit JanuaIBan;

interface

uses
  SysUtils, Classes, Janua.Core.Functions,   Janua.Core.Classes;

type
  TJanuaIBAN = class(TComponent)
  private
    { Private declarations }
  strict private
  const
    L_ABI: integer = 5;
    L_CAB:integer = 5;
    L_CONTO: integer = 12;
  var
    FIBAN:string;
    FAbi:string;
    FCab:string;
    FContoCorrente:string;
    FBBan:string;
    FCin:string;
    FCheckDigitIBAN:string;
    FisoCountry:TJanuaisoCountryCode;
    FNormalizzaCont:boolean;
    FEuroCountry:string;
    FIbanOK: boolean;
    FActive: boolean;

    function NormalizzaDati(codice : string ; lunghezza : Integer): string;
    function GetAbi :  string;
    procedure SetAbi(val :  string);
    function GetCAb : string;
    procedure SetCAb(val : string);
    function GetBBAN : string;
    procedure SetBBAN(val : string);
    function GetIban : string;
    procedure SetIban(val : string);
    function GetContoCorrente : string;
    procedure SetContoCorrente(val : string);
    function GetCheckDigitIBAN : string;
    procedure SetCheckDigitIBAN(val : string);
    function GetIsoCountry : TJanuaisoCountryCode;
    procedure SetIsoCountry(val : TJanuaisoCountryCode);
    function GetCin : string;
    procedure SetCin(val : string);
    function CalculateDigits(iban: string): Integer;
    function ChangeAlpha(input: string): string;
    function GetEuroCountry : string;
    procedure SetEuroCountry(val : string);
    function CheckIBAN(iban: string): Boolean;
    function GetActive :  boolean;
    procedure SetActive(val :  boolean);
  protected
    { Protected declarations }
  public
    Procedure CheckIBANOk;
    procedure Clear;
    { Public declarations }
  published
    property Abi :  string read GetAbi write SetAbi;
    property CAb : string read GetCAb write SetCAb;
    property Iban : string read GetIban write SetIban;
    property BBAN : string read GetBBAN write SetBBAN;
    property ContoCorrente : string read GetContoCorrente write SetContoCorrente;
    property CheckDigitIBAN : string read GetCheckDigitIBAN write SetCheckDigitIBAN;
    property IsoCountry : TJanuaisoCountryCode read getIsoCountry write setIsoCountry;
    property Cin : string read GetCin write SetCin;
    property EuroCountry : string read GetEuroCountry write SetEuroCountry;
    Property IBanOK: boolean read FIBanOK;
    property Active :  boolean read GetActive write SetActive;
  { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Januaproject', [TJanuaIBAN]);
end;

procedure TJanuaIBAN.CheckIBANOk;
begin
  FIbanOK := CheckIBAN(FIban);
end;

procedure TJanuaIBAN.Clear;
begin
  FIbanOK := False;
  FIban := '';
  FAbi := '';
  FCab := '';
  FContoCorrente := '';
  FBBan := '';
  FCin := '';
  FCheckDigitIBAN := '';
  FisoCountry := jicNone;
  FNormalizzaCont := False;
  FEuroCountry := '';
  FIbanOK := False;
end;


function TJanuaIBAN.ChangeAlpha(input: string): string;
var 
  a: Char; 
begin 
  Result := input; 
  for a := 'A' to 'Z' do 
  begin 
    Result := StringReplace(Result, a, IntToStr(Ord(a) - 55), [rfReplaceAll]); 
  end; 
end;

function TJanuaIBAN.CheckIBAN(iban: string): Boolean;
begin 
  iban := StringReplace(iban, ' ', '', [rfReplaceAll]); 
  if CalculateDigits(iban) = 1 then 
    Result := True
  else 
    Result := False;
end;

function TJanuaIBAN.NormalizzaDati(codice : string ; lunghezza : Integer): string;
begin
   codice := Trim(UpperCase(codice));
   codice :=  Lpad(codice, lunghezza, '0');
   Result := codice;
end;

function TJanuaIBAN.GetAbi:  string;
begin
  Result := FAbi;
end;

procedure TJanuaIBAN.SetAbi(val :  string);
begin
  FAbi := NormalizzaDati(val, L_ABI);
end;

function TJanuaIBAN.GetCAb: string;
begin
  result := FCab;
end;

procedure TJanuaIBAN.SetCAb(val : string);
begin
  FCab := NormalizzaDati(val, L_ABI);
end;

function TJanuaIBAN.GetIban: string;
begin
  Result := FIBan;
end;

procedure TJanuaIBAN.SetIban(val : string);
begin
  FIBan := val;
end;

function TJanuaIBAN.GetBBAN: string;
begin
  Result := FBBAN;
end;

procedure TJanuaIBAN.SetBBAN(val : string);
begin
  FBBAN := val;
end;

function TJanuaIBAN.GetContoCorrente: string;
begin
  Result := FContoCorrente;
end;

procedure TJanuaIBAN.SetContoCorrente(val : string);
begin
  FContoCorrente := NormalizzaDati(val, L_CONTO);
end;

function TJanuaIBAN.GetCheckDigitIBAN: string;
begin
  Result := FCheckDigitIBAN;
end;

procedure TJanuaIBAN.SetCheckDigitIBAN(val : string);
begin
  FCheckDigitIBAN := val;
end;

function TJanuaIBAN.GetIsoCountry: TJanuaisoCountryCode;
begin
  Result :=  FIsoCountry;
end;

procedure TJanuaIBAN.SetIsoCountry(val : TJanuaisoCountryCode);
begin
  FIsoCountry := val;
end;

function TJanuaIBAN.GetCin: string;
begin
end;

procedure TJanuaIBAN.SetCin(val : string);
begin
end;

function TJanuaIBAN.GetEuroCountry: string;
begin
end;

procedure TJanuaIBAN.SetEuroCountry(val : string);
begin
end;

function TJanuaIBAN.CalculateDigits(iban: string): Integer;
var
  v, l: Integer; 
  alpha: string;
  number: Longint; 
  rest: Integer; 
begin 
  iban := UpperCase(iban);

  if Pos('IBAN', iban) > 0 then
    Delete(iban, Pos('IBAN', iban), 4);
  iban := iban + Copy(iban, 1, 4);
  Delete(iban, 1, 4);
  iban := ChangeAlpha(iban);

  FEuroCountry := Copy(iban, 1, 2);

  if FEuroCountry = 'IT' then
  begin
    if length(iban) >= 10 then FAbi := Copy(iban, 6, 5);
    if length(iban) >= 15 then FCAb := Copy(iban, 11, 5);
    if length(iban) >= 5 then  FCin := Copy(iban, 5, 1);
    if length(iban) >= 4 then  FCheckDigitIBAN := Copy(iban, 3, 2);

  end
  else if FEuroCountry = 'DE' then
  begin

  end;


  v := 1;
  l := 9; 
  rest := 0; 
  alpha := ''; 
  try 
    while v <= Length(iban) do 
    begin 
      if l > Length(iban) then 
        l := Length(iban); 
      alpha := alpha + Copy(iban, v, l); 
      number := StrToInt(alpha); 
      rest := number mod 97; 
      v := v + l; 
      alpha := IntToStr(rest); 
      l := 9 - Length(alpha);
    end; 
  except 
    rest := 0; 
  end; 
  Result := rest;
end;

function TJanuaIBAN.GetActive:  boolean;
begin
  Result := FActive;
end;

procedure TJanuaIBAN.SetActive(val :  boolean);
begin
  if val and not FActive then CheckIBANOk;
  FActive := val;
end;

end.
