unit Janua.Core.Components;

interface

uses System.SysUtils, System.Classes, System.Rtti, System.UITypes,
  // DB
  Data.DB,
  /// Firedac units (both fpc and Delphi compatible ................
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Stan.Intf,
  // Janua
  Janua.Core.Classes, Janua.Orm.Types, Janua.Core.Entities, Janua.Core.Types;

type
  TVatType = (jvtStandard, jvtIncluded);

  TJanuaVatCalculation = (jvcHiveOff, jvcAdd, jvcNone);
  // *** this specifies the kind of calculation :
  // Hive Off means that price is vat included and vat has to be hived off item
  // Add means instead that vat is not include with price and has to be addes
  // None: this operation is out of Normal VAT calculation

type
  TJanuaDatasetClone = class(TJanuaCoreComponent)
  strict private
    FToDataset: TDataSet;
    FFromDataset: TDataSet;
    FStructureClone: Boolean;
  private
    procedure SetFromDataset(const Value: TDataSet);
    procedure SetStructureClone(const Value: Boolean);
    procedure SetToDataset(const Value: TDataSet);
  protected
    function InternalActivate: Boolean; override;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  published
    property FromDataset: TDataSet read FFromDataset write SetFromDataset;
    property ToDataset: TDataSet read FToDataset write SetToDataset;
    property StructureClone: Boolean read FStructureClone write SetStructureClone;
  end;

type
  TJanuaBarcode = class(TJanuaCoreComponent)
  private
    FAutoCalc: Boolean;
    FBarcode: string;
    FBarcodeType: TJanuaBarcodeType;
    FCheckDigit: string;
    FCode: string;
    FCountryCode: string;
    FFirstDigit: string;
    FisValid: Boolean;
    procedure SetAutoCalc(const aValue: Boolean);
    procedure SetBarcode(const aValue: string);
    procedure SetBarcodeType(const aValue: TJanuaBarcodeType);
    procedure SetFirstDigit(const aValue: string);
    procedure SetCode(const aValue: string);
    procedure SetCountryCode(const aValue: string);
    { Private declarations }
  protected
    { Protected declarations }
    function checkBarcode: Boolean;
  public
    { Public declarations }
    function AddBarcode(aBarcode: string; aBarcodeType: TJanuaBarcodeType = jbtEAN13): Boolean;
  published
    { Published declarations }
    property BarcodeType: TJanuaBarcodeType read FBarcodeType write SetBarcodeType;
    property AutoCalc: Boolean read FAutoCalc write SetAutoCalc;
    property Code: string read FCode write SetCode;
    property Barcode: string read FBarcode write SetBarcode;
    property CheckDigit: string read FCheckDigit;
    property isValid: Boolean read FisValid;
    property FirstDigit: string read FFirstDigit write SetFirstDigit;
    property CountryCode: string read FCountryCode write SetCountryCode;
  end;

type

  TJanuaDocument = class(TJanuaCoreComponent)
  private
    FBarcode: TJanuaBarcode;
    FDate: TDateTime;
    FDocumentID: integer;
    FFirstName: string;
    FFullName: string;
    FSecondName: string;
    procedure SetBarcode(const aValue: TJanuaBarcode);
    procedure SetDate(const aValue: TDateTime);
    procedure SetDocumentID(const aValue: integer);
    procedure SetFirstName(const aValue: string);
    procedure SetFullName(const aValue: string);
    procedure SetSecondName(const aValue: string);
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property Barcode: TJanuaBarcode read FBarcode write SetBarcode;
  published
    { Published declarations }
    property Date: TDateTime read FDate write SetDate;
    property FirstName: string read FFirstName write SetFirstName;
    property SecondName: string read FSecondName write SetSecondName;
    property FullName: string read FFullName write SetFullName;
    property DocumentID: integer read FDocumentID write SetDocumentID;
  end;

type
  TJanuaVat = class(TJanuaCoreComponent)
  private
    FNetAmount: Double;
    FVatPurcent: Double;
    FGrossAmount: Double;
    FBaseAmount: Double;
    FVatType: TVatType;
    FVatAmount: Double;
    FRoundingDigits: integer;
    FVatCalculation: TJanuaVatCalculation;
    FVatHivePurcent: Single;
    procedure SetBaseAmount(const Value: Double);
    procedure SetGrossAmount(const Value: Double);
    procedure SetNetAmount(const Value: Double);
    procedure SetVatPurcent(const Value: Double);
    procedure SetVatType(const Value: TVatType);
    procedure SetVatAmount(const Value: Double);
    procedure SetRoundingDigits(const Value: integer);
    procedure SetVatCalculation(const Value: TJanuaVatCalculation);
    procedure SetVatHivePurcent(const Value: Single);
    { Private declarations }
  protected
    { Protected declarations }
    procedure CalcAmount;
    function InternalActivate: Boolean; override;
  public
    { Public declarations }
  published
    { Published declarations }
    property VatPurcent: Double read FVatPurcent write SetVatPurcent;
    property VatHivePurcent: Single read FVatHivePurcent write SetVatHivePurcent;
    property VatType: TVatType read FVatType write SetVatType;
    property BaseAmount: Double read FBaseAmount write SetBaseAmount;
    property NetAmount: Double read FNetAmount write SetNetAmount;
    property GrossAmount: Double read FGrossAmount write SetGrossAmount;
    property VatAmount: Double read FVatAmount write SetVatAmount;
    property RoundingDigits: integer read FRoundingDigits write SetRoundingDigits;
    property VatCalculation: TJanuaVatCalculation read FVatCalculation write SetVatCalculation;
  end;

type
  TJanuaIBAN = class(TJanuaCoreComponent)
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
    FNormalizzaCont: Boolean;
    FEuroCountry: string;
    FIbanOK: Boolean;
    function NormalizzaDati(codice: string; lunghezza: integer): string;
    procedure SetAbi(val: string);
    procedure SetCAb(val: string);
    procedure SetBBAN(val: string);
    procedure SetIban(val: string);
    procedure SetContoCorrente(val: string);
    function GetCheckDigitIBAN: string;
    procedure SetCheckDigitIBAN(val: string);
    function GetIsoCountry: TJanuaisoCountryCode;
    procedure SetisoCountry(val: TJanuaisoCountryCode);
    function CalculateDigits(iban: string): integer;
    function ChangeAlpha(input: string): string;
    function CheckIBAN(iban: string): Boolean;
  protected
    function InternalActivate: Boolean; override;
  public
    Procedure CheckIBANOk;
    procedure Clear;
    { Public declarations }
  published
    property Abi: string read FAbi write SetAbi;
    property CAb: string read FCab write SetCAb;
    property iban: string read FIBAN write SetIban;
    property BBAN: string read FBBan write SetBBAN;
    property ContoCorrente: string read FContoCorrente write SetContoCorrente;
    property CheckDigitIBAN: string read GetCheckDigitIBAN write SetCheckDigitIBAN;
    property isoCountry: TJanuaisoCountryCode read GetIsoCountry write SetisoCountry;
    property Cin: string read FCin;
    property EuroCountry: string read FEuroCountry;
    Property IBanOK: Boolean read FIbanOK;
    { Published declarations }
  end;

type
  TJanuaVatCode = class(TJanuaCoreComponent)
  private
    FVatCode: String;
    FisoCountry: TJanuaISOCountries;
    FSpecification: string;
    FisOK: Boolean;
    FError: string;
    { Private declarations }
    procedure VerifyVat; virtual;
    procedure SetisoCountry(const Value: TJanuaISOCountries);
    procedure SetVatCode(const Value: String);
    procedure SetisOK(const Value: Boolean);
    procedure SetSpecification(const Value: string);
    procedure SetError(const Value: string);
  protected
    { Protected declarations }
    function InternalActivate: Boolean; override;
  public
    { Public declarations }
  published
    property VatCode: String read FVatCode write SetVatCode;
    property isoCountry: TJanuaISOCountries read FisoCountry write SetisoCountry;
    property Specification: string read FSpecification write SetSpecification;
    property isOK: Boolean read FisOK write SetisOK;
    property Error: string read FError write SetError;
  end;

  TJanuaFiscalCode = class(TJanuaVatCode)
  private
    FBirthDate: TDateTime;
    FTownName: String;
    FFiscalCodeName: String;
    FTownCode: String;
    FFiscalCodeSurname: String;
    FFiscalCode: string;
    procedure SetBirthDate(const Value: TDateTime);
    procedure SetFiscalCodeName(const Value: String);
    procedure SetFiscalCodeSurname(const Value: String);
    procedure SetTownCode(const Value: String);
    procedure SetTownName(const Value: String);
    procedure VerifyVat; override;
    procedure SetFiscalCode(const Value: string);
    { Private declarations }
  protected
    { Protected declarations }
    function InternalActivate: Boolean; override;
  public
    { Public declarations }
  published
    property FiscalCodeName: String read FFiscalCodeName write SetFiscalCodeName;
    property FiscalCodeSurname: String read FFiscalCodeSurname write SetFiscalCodeSurname;
    property BirthDate: TDateTime read FBirthDate write SetBirthDate;
    property TownName: String read FTownName write SetTownName;
    property TownCode: String read FTownCode write SetTownCode;
    property FiscalCode: string read FFiscalCode write SetFiscalCode;
  end;

implementation

USES {Janua.Bindings.Impl,} Janua.Application.Framework, Janua.Core.Functions, Janua.Core.JSON;

{ TJanuaDocument }

procedure TJanuaDocument.SetDate(const aValue: TDateTime);
begin
  if FDate = aValue then
    Exit;
  FDate := aValue;
end;

constructor TJanuaDocument.Create(AOwner: TComponent);
begin
  inherited;
  FBarcode := TJanuaBarcode.Create(self);
end;

destructor TJanuaDocument.Destroy;
begin
  FBarcode.Free;
  inherited;
end;

procedure TJanuaDocument.SetBarcode(const aValue: TJanuaBarcode);
begin
  if FBarcode = aValue then
    Exit;
  FBarcode := aValue;
end;

procedure TJanuaDocument.SetDocumentID(const aValue: integer);
begin
  if FDocumentID = aValue then
    Exit;
  FDocumentID := aValue;
end;

procedure TJanuaDocument.SetFirstName(const aValue: string);
begin
  if FFirstName = aValue then
    Exit;
  FFirstName := aValue;
end;

procedure TJanuaDocument.SetFullName(const aValue: string);
begin
  if FFullName = aValue then
    Exit;
  FFullName := aValue;
end;

procedure TJanuaDocument.SetSecondName(const aValue: string);
begin
  if FSecondName = aValue then
    Exit;
  FSecondName := aValue;
end;

{ TJanuaVat }

procedure TJanuaVat.CalcAmount;
begin
  if FVatType = jvtStandard then
  begin
    FGrossAmount := FRound(FBaseAmount * (100 + VatPurcent) / 100, FRoundingDigits);
    FNetAmount := FBaseAmount;
  end
  else
  begin
    FNetAmount := FRound(FBaseAmount * 100 / (100 + VatPurcent), FRoundingDigits);
    FGrossAmount := FBaseAmount;
  end;
  FVatAmount := FGrossAmount - FNetAmount;

end;

function TJanuaVat.InternalActivate: Boolean;
begin
  // gestione dellaprocedura internal Activate
  Result := inherited
end;

procedure TJanuaVat.SetBaseAmount(const Value: Double);
begin
  FBaseAmount := Value;
end;

procedure TJanuaVat.SetGrossAmount(const Value: Double);
begin
  FGrossAmount := Value;
end;

procedure TJanuaVat.SetNetAmount(const Value: Double);
begin
  FNetAmount := Value;
end;

procedure TJanuaVat.SetRoundingDigits(const Value: integer);
begin
  FRoundingDigits := Value;
end;

procedure TJanuaVat.SetVatAmount(const Value: Double);
begin
  FVatAmount := Value;
end;

procedure TJanuaVat.SetVatCalculation(const Value: TJanuaVatCalculation);
begin
  FVatCalculation := Value;
end;

procedure TJanuaVat.SetVatHivePurcent(const Value: Single);
begin
  FVatHivePurcent := Value;
end;

procedure TJanuaVat.SetVatPurcent(const Value: Double);
begin
  FVatPurcent := Value;
end;

procedure TJanuaVat.SetVatType(const Value: TVatType);
begin
  FVatType := Value;
end;

procedure TJanuaBarcode.SetBarcodeType(const aValue: TJanuaBarcodeType);
begin
  if FBarcodeType = aValue then
    Exit;
  FBarcodeType := aValue;
end;

function TJanuaBarcode.AddBarcode(aBarcode: string; aBarcodeType: TJanuaBarcodeType): Boolean;
var
  test: smallint;
begin
  test := Length(aBarcode);
  case test of
    7 .. 8:
      aBarcodeType := jbtEAN8;
    12 .. 13:
      aBarcodeType := jbtEAN13;
  else
    aBarcodeType := jbtOther;
  end;

  self.FBarcodeType := aBarcodeType;
  self.FBarcode := aBarcode;
  Result := self.checkBarcode;
end;

function TJanuaBarcode.checkBarcode: Boolean;
var
  test: smallint;
begin
  test := Length(self.FBarcode);
  case test of
    7 .. 8:
      self.FBarcodeType := jbtEAN8;
    12 .. 13:
      self.FBarcodeType := jbtEAN13;
  else
    self.FBarcodeType := jbtOther;
  end;

  Result := CheckDigitBarcode(FBarcode, FBarcodeType);
end;

procedure TJanuaBarcode.SetAutoCalc(const aValue: Boolean);
begin
  if FAutoCalc = aValue then
    Exit;
  FAutoCalc := aValue;
end;

procedure TJanuaBarcode.SetBarcode(const aValue: string);
begin
  if FBarcode <> aValue then
  begin
    FBarcode := aValue;
    if BindManager.BindCount > 0 then
      BindManager.Notify('Barcode');
  end;
end;

procedure TJanuaBarcode.SetCode(const aValue: string);
begin
  if FCode = aValue then
    Exit;
  FCode := aValue;
end;

procedure TJanuaBarcode.SetCountryCode(const aValue: string);
begin
  if FCountryCode = aValue then
    Exit;
  FCountryCode := aValue;
end;

procedure TJanuaBarcode.SetFirstDigit(const aValue: string);
begin
  if FFirstDigit = aValue then
    Exit;
  FFirstDigit := aValue;
end;

function TJanuaVatCode.InternalActivate: Boolean;
begin
  Result := inherited;
end;

procedure TJanuaVatCode.SetError(const Value: string);
begin
  FError := Value;
end;

procedure TJanuaVatCode.SetisoCountry(const Value: TJanuaISOCountries);
begin
  FisoCountry := Value;
end;

procedure TJanuaVatCode.SetisOK(const Value: Boolean);
begin
  FisOK := Value;
end;

procedure TJanuaVatCode.SetSpecification(const Value: string);
begin
  FSpecification := Value;
end;

procedure TJanuaVatCode.SetVatCode(const Value: String);
begin
  FVatCode := Value;
  if FisoCountry in [jicItalia] then
    VerifyVat;

end;

procedure TJanuaVatCode.VerifyVat;
var
  i: integer;
  s: integer;
  c: integer;
  r: integer;
begin
  // procedura per la verifica della partita iva ....

  // function FPartitaIva (piva: string; var Ferror: string; var Fspecification: string): boolean;
  if FisoCountry = jicItalia then
  begin
    s := 0;
    FError := '';
    FSpecification := '';

    if Length(Trim(FVatCode)) <> 11 then
    begin
      FisOK := false;
      FError := 'Attenzione inserita partita iva di lunghezza errata!';
      FSpecification := 'La partita iva italiana deve essere di 11 caratteri questa ? invece di: ' +
        IntToStr(Length(Trim(FVatCode)));
    end
    else
    begin
      for i := 1 to 11 do
      begin
        if (copy(FVatCode, i, 1) < '0') or (copy(FVatCode, i, 1) > '9') then
        begin
          FError := 'La partita iva contiene caratteri non ammessi';
          FSpecification := 'la parita iva deve essere di 11 caratteri numerici';
          FisOK := false;
          Exit;
        end;

        if i / 2 = trunc(i / 2) then
        begin
          c := StrToInt(copy(FVatCode, i, 1)) * 2;
          if c > 9 then
            c := c - 9;
          s := s + c;
        end
        else if i < 11 then
          s := s + StrToInt(copy(FVatCode, i, 1));
      end;
      r := s - 10 * trunc(s / 10);
      if r = 0 then
        c := 0
      else
        c := 10 - r;

      if copy(FVatCode, 11, 1) <> IntToStr(c) then
      begin
        FError := 'La partita iva immessa non risulta compatibile';
        FSpecification := 'dalla verifica effettuata uno dei caratteri della partita iva ? errato';
        FisOK := false;
        self.WriteLog(self.FError + sLineBreak + self.FSpecification, true);
      end
      else if FVatCode = '00000000000' then
      begin
        FError := 'La partita iva immessa non risulta compatibile, ? composta solo da 0';
        FSpecification := 'la partita iva 00000000000 non risulta essere esistente.....';
        FisOK := false;
        self.WriteLog(self.FError + sLineBreak + self.FSpecification, true);
      end
      else
        FisOK := true;
    end;
  end;

end;

function TJanuaFiscalCode.InternalActivate: Boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        Self.VerifyVat
      end;
    except
      on E: Exception do
        RaiseLocalException('InternalActivate', E);
    end;
end;

procedure TJanuaFiscalCode.SetBirthDate(const Value: TDateTime);
begin
  FBirthDate := Value;
end;

procedure TJanuaFiscalCode.SetFiscalCode(const Value: string);
begin
  FFiscalCode := Value;
  isOK := Janua.Core.Functions.VerifyFiscalCode(FFiscalCode, FError);
  if not FisOK then
  begin
    WriteMessage(FError);
    HasErrors := true;
  end;
end;

procedure TJanuaFiscalCode.SetFiscalCodeName(const Value: String);
begin
  FFiscalCodeName := Value;
end;

procedure TJanuaFiscalCode.SetFiscalCodeSurname(const Value: String);
begin
  FFiscalCodeSurname := Value;
end;

procedure TJanuaFiscalCode.SetTownCode(const Value: String);
begin
  FTownCode := Value;
end;

procedure TJanuaFiscalCode.SetTownName(const Value: String);
begin
  FTownName := Value;
end;

procedure TJanuaFiscalCode.VerifyVat;
begin
  inherited VerifyVat;
end;

procedure TJanuaIBAN.CheckIBANOk;
begin
  FIbanOK := CheckIBAN(FIBAN);
end;

procedure TJanuaIBAN.Clear;
begin
  FIbanOK := false;
  FIBAN := '';
  FAbi := '';
  FCab := '';
  FContoCorrente := '';
  FBBan := '';
  FCin := '';
  FCheckDigitIBAN := '';
  FisoCountry := jicNNN;
  FNormalizzaCont := false;
  FEuroCountry := '';
  FIbanOK := false;
end;

function TJanuaIBAN.ChangeAlpha(input: string): string;
var
  a: char;
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
    Result := true
  else
    Result := false;
end;

function TJanuaIBAN.NormalizzaDati(codice: string; lunghezza: integer): string;
begin
  codice := Trim(UpperCase(codice));
  codice := Lpad(codice, lunghezza, '0');
  Result := codice;
end;

procedure TJanuaIBAN.SetAbi(val: string);
begin
  FAbi := NormalizzaDati(val, L_ABI);
end;

procedure TJanuaIBAN.SetCAb(val: string);
begin
  FCab := NormalizzaDati(val, L_ABI);
end;

procedure TJanuaIBAN.SetIban(val: string);
begin
  FIBAN := val;
end;

procedure TJanuaIBAN.SetBBAN(val: string);
begin
  FBBan := val;
end;

procedure TJanuaIBAN.SetContoCorrente(val: string);
begin
  FContoCorrente := NormalizzaDati(val, L_CONTO);
end;

function TJanuaIBAN.GetCheckDigitIBAN: string;
begin
  Result := FCheckDigitIBAN;
end;

procedure TJanuaIBAN.SetCheckDigitIBAN(val: string);
begin
  FCheckDigitIBAN := val;
end;

function TJanuaIBAN.GetIsoCountry: TJanuaisoCountryCode;
begin
  Result := FisoCountry;
end;

function TJanuaIBAN.InternalActivate: Boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        Result := false;
        CheckIBANOk;
        Result := true;
      end;
    except
      on E: Exception do
        RaiseLocalException('TJanuaCloudComponent.InternalActivate', E);
    end;
end;

procedure TJanuaIBAN.SetisoCountry(val: TJanuaisoCountryCode);
begin
  FisoCountry := val;
end;

function TJanuaIBAN.CalculateDigits(iban: string): integer;
var
  v, l: integer;
  alpha: string;
  Number: Longint;
  rest: integer;
begin
  iban := UpperCase(iban);

  if Pos('IBAN', iban) > 0 then
    delete(iban, Pos('IBAN', iban), 4);
  iban := iban + copy(iban, 1, 4);
  delete(iban, 1, 4);
  iban := ChangeAlpha(iban);

  FEuroCountry := copy(iban, 1, 2);

  if FEuroCountry = 'IT' then
  begin
    if Length(iban) >= 10 then
      FAbi := copy(iban, 6, 5);
    if Length(iban) >= 15 then
      FCab := copy(iban, 11, 5);
    if Length(iban) >= 5 then
      FCin := copy(iban, 5, 1);
    if Length(iban) >= 4 then
      FCheckDigitIBAN := copy(iban, 3, 2);
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
      alpha := alpha + copy(iban, v, l);
      Number := StrToInt(alpha);
      rest := Number mod 97;
      v := v + l;
      alpha := IntToStr(rest);
      l := 9 - Length(alpha);
    end;
  except
    rest := 0;
  end;
  Result := rest;
end;

{ TJanuaDatasetClone }

constructor TJanuaDatasetClone.Create(AOwner: TComponent);
begin
  inherited;
  FStructureClone := false;
end;

function TJanuaDatasetClone.InternalActivate: Boolean;
begin
  Result := Active;
  if not Result then
  begin
    Result := inherited and Assigned(FFromDataset) and Assigned(FToDataset);
    if Result and (FToDataset is TFDMemTable) then
      CloneDataset(FFromDataset, FToDataset as TFDMemTable, FStructureClone);
  end;
end;

procedure TJanuaDatasetClone.SetFromDataset(const Value: TDataSet);
begin
  FFromDataset := Value;
end;

procedure TJanuaDatasetClone.SetStructureClone(const Value: Boolean);
begin
  FStructureClone := Value;
end;

procedure TJanuaDatasetClone.SetToDataset(const Value: TDataSet);
begin
  FToDataset := Value;
end;

end.
