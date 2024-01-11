unit JanuaVat;

interface

uses
  SysUtils, Classes, Janua.Core.Functions, Janua.Core.Classes;

type
   TVatType = (jvtStandard, jvtIncluded);

  TJanuaVatCalculation = (jvcHiveOff, jvcAdd, jvcNone);
  //*** this specifies the kind of calculation :
     // Hive Off means that price is vat included and vat has to be hived off item
     // Add means instead that vat is not include with price and has to be addes
     // None: this operation is out of Normal VAT calculation

  TJanuaVatCode = class (TComponent) {($M+)}
  private
    FVatCode: String;
    FisoCountry: TJanuaISOCountries;
    FSpecification: string;
    FisOK: boolean;
    FError: string;
  { Private declarations }
    procedure VerifyVat; virtual;
    procedure SetisoCountry(const Value: TJanuaISOCountries);
    procedure SetVatCode(const Value: String);
    procedure SetisOK(const Value: boolean);
    procedure SetSpecification(const Value: string);
    procedure SetError(const Value: string);
  protected
  { Protected declarations }
  public
  { Public declarations }
  published
    property VatCode: String read FVatCode write SetVatCode;
    property isoCountry: TJanuaISOCountries read FisoCountry write SetisoCountry;
    property Specification: string read FSpecification write SetSpecification;
    property isOK: boolean read FisOK write SetisOK;
    property Error: string read FError write SetError;
  end;

  TJanuaFiscalCode = class(TJanuaVatCode)  {($M+)}
  private
    FBirthDate: TDateTime;
    FTownName: String;
    FFiscalCodeName: String;
    FTownCode: String;
    FFiscalCodeSurname: String;
    procedure SetBirthDate(const Value: TDateTime);
    procedure SetFiscalCodeName(const Value: String);
    procedure SetFiscalCodeSurname(const Value: String);
    procedure SetTownCode(const Value: String);
    procedure SetTownName(const Value: String);
    procedure VerifyVat;override;
  { Private declarations }
  protected
  { Protected declarations }
  public
  { Public declarations }
  published
    property FiscalCodeName: String read FFiscalCodeName write SetFiscalCodeName;
    property FiscalCodeSurname: String read FFiscalCodeSurname write SetFiscalCodeSurname;
    property BirthDate: TDateTime read FBirthDate write SetBirthDate;
    property TownName: String read FTownName write SetTownName;
    property TownCode: String read FTownCode write SetTownCode;
  end;

type
  TJanuaVat = class(TComponent)
  private
    FNetAmount: Double;
    FVatPurcent: Double;
    FGrossAmount: Double;
    FBaseAmount: Double;
    FVatType: TVatType;
    FVatAmount: double;
    FRoundingDigits: integer;
    FVatCalculation: TJanuaVatCalculation;
    FVatHivePurcent: Single;
    procedure SetBaseAmount(const Value: Double);
    procedure SetGrossAmount(const Value: Double);
    procedure SetNetAmount(const Value: Double);
    procedure SetVatPurcent(const Value: Double);
    procedure SetVatType(const Value: TVatType);
    procedure SetVatAmount(const Value: double);
    procedure SetRoundingDigits(const Value: integer);
    procedure SetVatCalculation(const Value: TJanuaVatCalculation);
    procedure SetVatHivePurcent(const Value: Single);
    { Private declarations }
  protected
    { Protected declarations }
    procedure CalcAmount; 
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
    property VatAmount : double read FVatAmount write SetVatAmount;
    property RoundingDigits: integer read FRoundingDigits write SetRoundingDigits;
    property VatCalculation : TJanuaVatCalculation read FVatCalculation write SetVatCalculation;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Janua Accounting', [TJanuaVatCode]);
  RegisterComponents('Janua Accounting', [TJanuaFiscalCode]);
  RegisterComponents('Janua Accounting', [TJanuaVat]);
end;

{ TJanuaVat }

procedure TJanuaVat.CalcAmount;
begin
   if FVatType = jvtStandard then
   begin
      FGrossAmount := FRound(FBaseAmount * (100 + VatPurcent) /100, FRoundingDigits);
      FNetAmount := FBaseAmount;
   end
   else
   begin
      FNetAmount := FRound(FBaseAmount * 100 / (100 + VatPurcent), FRoundingDigits);
      FGrossAmount  := FBaseAmount;
   end;
   FVatAmount := FGrossAmount - FNetAmount;
   
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

procedure TJanuaVat.SetVatAmount(const Value: double);
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

{TJanuaVatCode}


procedure TJanuaVatCode.SetError(const Value: string);
begin
  FError := Value;
end;

procedure TJanuaVatCode.SetisoCountry(const Value: TJanuaISOCountries);
begin
  FisoCountry := Value;
end;

procedure TJanuaVatCode.SetisOK(const Value: boolean);
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
  if FIsoCountry in [jicItalia]  then VerifyVat; 
  
end;

procedure TJanuaVatCode.VerifyVat;
var
   i: integer;
   s: integer;
   c: integer;
   r: integer;
begin
// procedura per la verifica della partita iva ....


//function FPartitaIva (piva: string; var Ferror: string; var Fspecification: string): boolean;
if FisoCountry = jicItalia then
begin
   s := 0;
   Ferror := '';
   Fspecification := '';

   if length(trim(FVatCode)) <> 11 then
   begin
      FisOK:= false;
      Ferror := 'Attenzione inserita partita iva di lunghezza errata!';
      Fspecification := 'La partita iva italiana deve essere di 11 caratteri questa è invece di: '
                       + IntToStr (length(trim(FVatCode)));
   end
   else
   begin
   for i:=1 to 11 do
   begin
     if( copy(FVatCode,i,1) < '0') or (copy(FVatCode,i,1) > '9') then
     begin
        Ferror := 'La partita iva contiene caratteri non ammessi';
        Fspecification :=  'la parita iva deve essere di 11 caratteri numerici';
        FisOK := False;
        Exit;
     end;

     if i/2 = trunc(i/2) then
     begin
          c := StrToInt(copy(FVatCode,i,1))  * 2;
          if c > 9 then c := c - 9;
          s := s + c;
     end
     else
      if i < 11 then  s := s + StrToInt(copy(FVatCode,i,1));
   end;
   r:=s-10*trunc(s/10);
   if r = 0 then c := 0 else c := 10 - r;

   if copy(FVatCode,11,1) <> IntToStr(c) then begin
       Ferror :=  'La partita iva immessa non risulta compatibile';
       Fspecification := 'dalla verifica effettuata uno dei caratteri della partita iva è errato';
       FisOK := False;
   end
   else if FVatCode = '00000000000' then
   begin
       Ferror :=  'La partita iva immessa non risulta compatibile, è composta solo da 0';
       Fspecification := 'la partita iva 00000000000 non risulta essere esistente.....';
       FisOK := False;
   end
   else
     FisOK := True;
   end;
end;



end;

procedure TJanuaFiscalCode.SetBirthDate(const Value: TDateTime);
begin
  FBirthDate := Value;
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


end.
