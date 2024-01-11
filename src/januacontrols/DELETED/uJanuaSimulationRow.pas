unit uJanuaSimulationRow;

interface

uses
  SysUtils, Classes, functions;

type
///<persistent>
///  </persistent>
TJanuaSimulationRow = class(TComponent)
  private
    { Private declarations }
    FResaPercentuale:double;
    FResaLorda:double;
    FResaNetta:double;
    FResaPercentualeNetta:double;
    Fimportocliente:double;
    Fimplordocliente:double;
    Fimplordoeditore:double;
    Fimportoeditore:double;
    FNettoEditoreIvato:double;
    FPREZZO_CLIENTE:double;
    FPREZZO_EDITORE:double;
    FPREZZO_NETTO_CLIENTE:double;
    FPREZZO_NETTO_EDITORE:double;
    FQUANTITA:integer;
    FAliquota:Double;
  protected
    { Protected declarations }
  public
    { Public declarations }
  published
  private

  procedure CalcFields;
private
var

strict private
  function GetResaPercentuale : double;
  procedure SetResaPercentuale(val : double);
published
  property ResaPercentuale : double read GetResaPercentuale write SetResaPercentuale;
public
strict private
  function GetResaNetta : Double;
  procedure SetResaNetta(val : Double);
published
  property ResaNetta : Double read GetResaNetta write SetResaNetta;
strict private
  function GetResaPercentualeNetta : Double;
  procedure SetResaPercentualeNetta(val : Double);
published
  property ResaPercentualeNetta : Double read GetResaPercentualeNetta write SetResaPercentualeNetta;
strict private
  function Getimportocliente : Double;
  procedure Setimportocliente(val : Double);
published
  property importocliente : Double read Getimportocliente write Setimportocliente;
strict private
  function Getimplordocliente : Double;
  procedure Setimplordocliente(val : Double);
published
  property implordocliente : Double read Getimplordocliente write Setimplordocliente;
strict private
  function Getimplordoeditore : Double;
  procedure Setimplordoeditore(val : Double);
published
  property implordoeditore : Double read Getimplordoeditore write Setimplordoeditore;
strict private
  function Getimportoeditore : Double;
  procedure Setimportoeditore(val : Double);
published
  property importoeditore : Double read Getimportoeditore write Setimportoeditore;
strict private
  function GetNettoEditoreIvato : Double;
  procedure SetNettoEditoreIvato(val : Double);
published
  property NettoEditoreIvato : Double read GetNettoEditoreIvato write SetNettoEditoreIvato;
strict private
  function GetPREZZO_CLIENTE : Double;
  procedure SetPREZZO_CLIENTE(val : Double);
published
  property PREZZO_CLIENTE : Double read GetPREZZO_CLIENTE write SetPREZZO_CLIENTE;
strict private
  function GetPREZZO_EDITORE : Double;
  procedure SetPREZZO_EDITORE(val : Double);
published
  property PREZZO_EDITORE : Double read GetPREZZO_EDITORE write SetPREZZO_EDITORE;
strict private
  function GetALIQUOTA : Double;
  procedure SetALIQUOTA(val : Double);
published
  property ALIQUOTA : Double read GetALIQUOTA write SetALIQUOTA;
strict private
  function GetPREZZO_NETTO_CLIENTE : Double;
  procedure SetPREZZO_NETTO_CLIENTE(val : Double);
published
  property PREZZO_NETTO_CLIENTE : Double read GetPREZZO_NETTO_CLIENTE write SetPREZZO_NETTO_CLIENTE;
strict private
  function GetPREZZO_NETTO_EDITORE : Double;
  procedure SetPREZZO_NETTO_EDITORE(val : Double);
published
  property PREZZO_NETTO_EDITORE : Double read GetPREZZO_NETTO_EDITORE write SetPREZZO_NETTO_EDITORE;
strict private
  function GetQUANTITA : integer;
  procedure SetQUANTITA(val : integer);
published
  property QUANTITA : integer read GetQUANTITA write SetQUANTITA;
private
var
  FAutoCalc:boolean;
strict private
  function GetAutoCalc : boolean;
  procedure SetAutoCalc(val : boolean);
published
  property AutoCalc : boolean read GetAutoCalc write SetAutoCalc;
private
var
  FCommissione:Double; // commissione agente espressa in percentuale
private
  FNettoCommissione:Double;  // percentuale importo al netto di commissione
strict private
  function GetCommissione : Double;
  procedure SetCommissione(val : Double);
published
  property Commissione : Double read GetCommissione write SetCommissione;
strict private
  function GetResaLorda : Double;
  procedure SetResaLorda(val : Double);
published
  property ResaLorda : Double read GetResaLorda write SetResaLorda;
end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Januaproject', [TJanuaSimulationRow]);
end;

procedure TJanuaSimulationRow.CalcFields;
begin
  fimportoeditore := Fround(fPREZZO_netto_EDITORE * fQUANTITA, 2);
  fimportocliente := Fround(fPREZZO_netto_cliente * fQUANTITA, 2);
  fimplordoeditore := Fround(fPREZZO_EDITORE * fQUANTITA, 2);
  fimplordocliente := Fround(fPREZZO_cliente * fQUANTITA, 2);
  fResaLorda := FRound(fimplordocliente - fimplordoeditore, 2);
  fResaNetta := FRound(fimplordocliente - fimportoeditore, 2);
  if fimplordocliente = 0 then fimplordocliente := 1;
  if fimplordocliente = 0 then fimplordocliente := 1;
  fResaPercentuale := FRound( 100* fimplordoeditore / fimplordocliente, 2);
  fResaPercentualeNetta := FRound( 100 * fimportoeditore /fimplordocliente, 2);
  fNettoEditoreIvato :=  FRound(fimportoeditore* (100+fAliquota)/100,2);
end;

function TJanuaSimulationRow.GetAutoCalc: boolean;
begin
  Result := fAutoCalc;
end;

procedure TJanuaSimulationRow.SetAutoCalc(val : boolean);
begin
  if val and not fAutoCalc then CalcFields;
  fAutoCalc := val;  
end;

procedure TJanuaSimulationRow.SetCommissione(val : Double);
begin
  if fCommissione <> val then
  begin
    fCommissione := val;
    fNettoCommissione := ((100-fCommissione)/100);
    fprezzo_netto_cliente := FRound(fprezzo_cliente * fNettoCommissione, 2);
    fprezzo_netto_EDITORE := FRound(fprezzo_EDITORE * fNettoCommissione, 2);
  end;
end;

procedure TJanuaSimulationRow.SetPREZZO_CLIENTE(val : Double);
begin
   if val <> fPREZZO_CLIENTE then
   begin
     fPREZZO_CLIENTE := val;
     fprezzo_netto_cliente := FRound(fprezzo_cliente * fNettoCommissione, 2);
     if FAutoCalc then CalcFields;
   end;
end;

function TJanuaSimulationRow.GetPREZZO_EDITORE: Double;
begin
  Result := fPREZZO_EDITORE;
end;

procedure TJanuaSimulationRow.SetPREZZO_EDITORE(val : Double);
begin
   if val <> fPREZZO_EDITORE then
   begin
     fPREZZO_EDITORE := val;
     fprezzo_netto_EDITORE := FRound(fprezzo_EDITORE * fNettoCommissione, 2);
     if FAutoCalc then CalcFields;
   end;
end;

function TJanuaSimulationRow.GetALIQUOTA: Double;
begin
  Result := fALIQUOTA;
end;

procedure TJanuaSimulationRow.SetALIQUOTA(val : Double);
begin
   if val <> fALIQUOTA then
   begin
     fALIQUOTA := val;
     if FAutoCalc then CalcFields;
   end;
end;

function TJanuaSimulationRow.GetPREZZO_NETTO_CLIENTE: Double;
begin
  Result := fPREZZO_NETTO_CLIENTE;
end;

procedure TJanuaSimulationRow.SetPREZZO_NETTO_CLIENTE(val : Double);
begin
   if val <> fPREZZO_NETTO_CLIENTE then
   begin
     fPREZZO_NETTO_CLIENTE := val;
     
     if fNettoCommissione <> 0 then
        fprezzo_cliente := FRound(fprezzo_netto_cliente / fNettoCommissione, 2)
     else
        fprezzo_cliente := 0;

     if FAutoCalc then CalcFields;
   end;
end;

function TJanuaSimulationRow.GetPREZZO_NETTO_EDITORE: Double;
begin
  Result := fPREZZO_NETTO_EDITORE;
end;

procedure TJanuaSimulationRow.SetPREZZO_NETTO_EDITORE(val : Double);
begin
   if val <> fPREZZO_NETTO_EDITORE then
   begin
     fPREZZO_NETTO_EDITORE := val;
     if fNettoCommissione <> 0 then
         fprezzo_EDITORE := FRound(fprezzo_netto_EDITORE / fNettoCommissione, 2)
     else
        fprezzo_EDITORE := 0;
     if FAutoCalc then CalcFields;
   end;
end;

function TJanuaSimulationRow.GetQUANTITA: integer;
begin
  Result := fQUANTITA;
end;

procedure TJanuaSimulationRow.SetQUANTITA(val : integer);
begin
   if val <> fquantita then
   begin
     fquantita := val;
     if FAutoCalc then CalcFields;
   end;
end;



function TJanuaSimulationRow.GetResaPercentuale: double;
begin
  Result := fResaPercentuale;
end;

procedure TJanuaSimulationRow.SetResaPercentuale(val : double);
begin
  // campo calcolato
end;

function TJanuaSimulationRow.GetResaNetta: Double;
begin
  Result := fResaNetta;
end;

procedure TJanuaSimulationRow.SetResaNetta(val : Double);
begin
  // campo calcolato
end;

function TJanuaSimulationRow.GetResaPercentualeNetta: Double;
begin
    Result := fResaPercentualeNetta;
end;

procedure TJanuaSimulationRow.SetResaPercentualeNetta(val : Double);
begin
  // campo calcolato
end;

function TJanuaSimulationRow.Getimportocliente: Double;
begin
  Result := fimportocliente;
end;

procedure TJanuaSimulationRow.Setimportocliente(val : Double);
begin
  // campo calcolato
end;

function TJanuaSimulationRow.Getimplordocliente: Double;
begin
  Result := fimplordocliente;
end;

procedure TJanuaSimulationRow.Setimplordocliente(val : Double);
begin
  // campo calcolato
end;

function TJanuaSimulationRow.Getimplordoeditore: Double;
begin
  Result := fimplordoeditore;
end;

procedure TJanuaSimulationRow.Setimplordoeditore(val : Double);
begin
  // campo calcolato
end;

function TJanuaSimulationRow.Getimportoeditore: Double;
begin
  Result := fimportoeditore;
end;

procedure TJanuaSimulationRow.Setimportoeditore(val : Double);
begin
  // campo calcolato
end;

function TJanuaSimulationRow.GetNettoEditoreIvato: Double;
begin
  Result := fNettoEditoreIvato;
end;

procedure TJanuaSimulationRow.SetNettoEditoreIvato(val : Double);
begin
  // campo calcolato
end;

function TJanuaSimulationRow.GetPREZZO_CLIENTE: Double;
begin
  Result := fPREZZO_CLIENTE;
end;


function TJanuaSimulationRow.GetCommissione: Double;
begin
  Result := fCommissione
end;

function TJanuaSimulationRow.GetResaLorda: Double;
begin
  Result := fResaLorda
end;

procedure TJanuaSimulationRow.SetResaLorda(val : Double);
begin
   // campo calcolato
end;

end.
