unit uJanuaSimulationRow;

interface

uses
  Classes;

type
  /// <persistent>
  /// </persistent>
  TJanuaSimulationRow = class(TComponent)
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
  published
  private
  var
    FResaPercentuale: double;
  private
    FResaLorda: double;
  private
    FResaNetta: double;
  private
    FResaPercentualeNetta: double;
    Fimportocliente: double;
    Fimplordocliente: double;
    Fimplordoeditore: double;
    Fimportoeditore: double;
    FNettoEditoreIvato: double;
    FPREZZO_CLIENTE: double;
    FPREZZO_EDITORE: double;
    FPREZZO_NETTO_CLIENTE: double;
    FPREZZO_NETTO_EDITORE: double;
    FQUANTITA: integer;
    procedure CalcFields;
  private
  var
    FAliquota: double;
  strict private
    function GetResaPercentuale: double;
    procedure SetResaPercentuale(val: double);
  published
    property ResaPercentuale: double read GetResaPercentuale write SetResaPercentuale;
  public
  strict private
    function GetResaNetta: double;
    procedure SetResaNetta(val: double);
  published
    property ResaNetta: double read GetResaNetta write SetResaNetta;
  strict private
    function GetResaPercentualeNetta: double;
    procedure SetResaPercentualeNetta(val: double);
  published
    property ResaPercentualeNetta: double read GetResaPercentualeNetta write SetResaPercentualeNetta;
  strict private
    function Getimportocliente: double;
    procedure Setimportocliente(val: double);
  published
    property importocliente: double read Getimportocliente write Setimportocliente;
  strict private
    function Getimplordocliente: double;
    procedure Setimplordocliente(val: double);
  published
    property implordocliente: double read Getimplordocliente write Setimplordocliente;
  strict private
    function Getimplordoeditore: double;
    procedure Setimplordoeditore(val: double);
  published
    property implordoeditore: double read Getimplordoeditore write Setimplordoeditore;
  strict private
    function Getimportoeditore: double;
    procedure Setimportoeditore(val: double);
  published
    property importoeditore: double read Getimportoeditore write Setimportoeditore;
  strict private
    function GetNettoEditoreIvato: double;
    procedure SetNettoEditoreIvato(val: double);
  published
    property NettoEditoreIvato: double read GetNettoEditoreIvato write SetNettoEditoreIvato;
  strict private
    function GetPREZZO_CLIENTE: double;
    procedure SetPREZZO_CLIENTE(val: double);
  published
    property PREZZO_CLIENTE: double read GetPREZZO_CLIENTE write SetPREZZO_CLIENTE;
  strict private
    function GetPREZZO_EDITORE: double;
    procedure SetPREZZO_EDITORE(val: double);
  published
    property PREZZO_EDITORE: double read GetPREZZO_EDITORE write SetPREZZO_EDITORE;
  strict private
    function GetALIQUOTA: double;
    procedure SetALIQUOTA(val: double);
  published
    property ALIQUOTA: double read GetALIQUOTA write SetALIQUOTA;
  strict private
    function GetPREZZO_NETTO_CLIENTE: double;
    procedure SetPREZZO_NETTO_CLIENTE(val: double);
  published
    property PREZZO_NETTO_CLIENTE: double read GetPREZZO_NETTO_CLIENTE write SetPREZZO_NETTO_CLIENTE;
  strict private
    function GetPREZZO_NETTO_EDITORE: double;
    procedure SetPREZZO_NETTO_EDITORE(val: double);
  published
    property PREZZO_NETTO_EDITORE: double read GetPREZZO_NETTO_EDITORE write SetPREZZO_NETTO_EDITORE;
  strict private
    function GetQUANTITA: integer;
    procedure SetQUANTITA(val: integer);
  published
    property QUANTITA: integer read GetQUANTITA write SetQUANTITA;
  private
  var
    FAutoCalc: boolean;
  strict private
    function GetAutoCalc: boolean;
    procedure SetAutoCalc(val: boolean);
  published
    property AutoCalc: boolean read GetAutoCalc write SetAutoCalc;
  private
  var
    FCommissione: double; // commissione agente espressa in percentuale
  private
    FNettoCommissione: double; // percentuale importo al netto di commissione
  strict private
    function GetCommissione: double;
    procedure SetCommissione(val: double);
  published
    property Commissione: double read GetCommissione write SetCommissione;
  strict private
    function GetResaLorda: double;
    procedure SetResaLorda(val: double);
  published
    property ResaLorda: double read GetResaLorda write SetResaLorda;
  end;

implementation

uses Janua.Core.Functions;

procedure TJanuaSimulationRow.CalcFields;
begin
  Fimportoeditore := Fround(FPREZZO_NETTO_EDITORE * FQUANTITA, 2);
  Fimportocliente := Fround(FPREZZO_NETTO_CLIENTE * FQUANTITA, 2);
  Fimplordoeditore := Fround(FPREZZO_EDITORE * FQUANTITA, 2);
  Fimplordocliente := Fround(FPREZZO_CLIENTE * FQUANTITA, 2);
  FResaLorda := Fround(Fimplordocliente - Fimplordoeditore, 2);
  FResaNetta := Fround(Fimplordocliente - Fimportoeditore, 2);
  if Fimplordocliente = 0 then
    Fimplordocliente := 1;
  if Fimplordocliente = 0 then
    Fimplordocliente := 1;
  FResaPercentuale := Fround(100 * Fimplordoeditore / Fimplordocliente, 2);
  FResaPercentualeNetta := Fround(100 * Fimportoeditore / Fimplordocliente, 2);
  FNettoEditoreIvato := Fround(Fimportoeditore * (100 + FAliquota) / 100, 2);
end;

function TJanuaSimulationRow.GetAutoCalc: boolean;
begin
  Result := FAutoCalc;
end;

procedure TJanuaSimulationRow.SetAutoCalc(val: boolean);
begin
  if val and not FAutoCalc then
    CalcFields;
  FAutoCalc := val;
end;

procedure TJanuaSimulationRow.SetCommissione(val: double);
begin
  if FCommissione <> val then
  begin
    FCommissione := val;
    FNettoCommissione := ((100 - FCommissione) / 100);
    FPREZZO_NETTO_CLIENTE := Fround(FPREZZO_CLIENTE * FNettoCommissione, 2);
    FPREZZO_NETTO_EDITORE := Fround(FPREZZO_EDITORE * FNettoCommissione, 2);
  end;
end;

procedure TJanuaSimulationRow.SetPREZZO_CLIENTE(val: double);
begin
  if val <> FPREZZO_CLIENTE then
  begin
    FPREZZO_CLIENTE := val;
    FPREZZO_NETTO_CLIENTE := Fround(FPREZZO_CLIENTE * FNettoCommissione, 2);
    if FAutoCalc then
      CalcFields;
  end;
end;

function TJanuaSimulationRow.GetPREZZO_EDITORE: double;
begin
  Result := FPREZZO_EDITORE;
end;

procedure TJanuaSimulationRow.SetPREZZO_EDITORE(val: double);
begin
  if val <> FPREZZO_EDITORE then
  begin
    FPREZZO_EDITORE := val;
    FPREZZO_NETTO_EDITORE := Fround(FPREZZO_EDITORE * FNettoCommissione, 2);
    if FAutoCalc then
      CalcFields;
  end;
end;

function TJanuaSimulationRow.GetALIQUOTA: double;
begin
  Result := FAliquota;
end;

procedure TJanuaSimulationRow.SetALIQUOTA(val: double);
begin
  if val <> FAliquota then
  begin
    FAliquota := val;
    if FAutoCalc then
      CalcFields;
  end;
end;

function TJanuaSimulationRow.GetPREZZO_NETTO_CLIENTE: double;
begin
  Result := FPREZZO_NETTO_CLIENTE;
end;

procedure TJanuaSimulationRow.SetPREZZO_NETTO_CLIENTE(val: double);
begin
  if val <> FPREZZO_NETTO_CLIENTE then
  begin
    FPREZZO_NETTO_CLIENTE := val;

    if FNettoCommissione <> 0 then
      FPREZZO_CLIENTE := Fround(FPREZZO_NETTO_CLIENTE / FNettoCommissione, 2)
    else
      FPREZZO_CLIENTE := 0;

    if FAutoCalc then
      CalcFields;
  end;
end;

function TJanuaSimulationRow.GetPREZZO_NETTO_EDITORE: double;
begin
  Result := FPREZZO_NETTO_EDITORE;
end;

procedure TJanuaSimulationRow.SetPREZZO_NETTO_EDITORE(val: double);
begin
  if val <> FPREZZO_NETTO_EDITORE then
  begin
    FPREZZO_NETTO_EDITORE := val;
    if FNettoCommissione <> 0 then
      FPREZZO_EDITORE := Fround(FPREZZO_NETTO_EDITORE / FNettoCommissione, 2)
    else
      FPREZZO_EDITORE := 0;
    if FAutoCalc then
      CalcFields;
  end;
end;

function TJanuaSimulationRow.GetQUANTITA: integer;
begin
  Result := FQUANTITA;
end;

procedure TJanuaSimulationRow.SetQUANTITA(val: integer);
begin
  if val <> FQUANTITA then
  begin
    FQUANTITA := val;
    if FAutoCalc then
      CalcFields;
  end;
end;

function TJanuaSimulationRow.GetResaPercentuale: double;
begin
  Result := FResaPercentuale;
end;

procedure TJanuaSimulationRow.SetResaPercentuale(val: double);
begin
  // campo calcolato
end;

function TJanuaSimulationRow.GetResaNetta: double;
begin
  Result := FResaNetta;
end;

procedure TJanuaSimulationRow.SetResaNetta(val: double);
begin
  // campo calcolato
end;

function TJanuaSimulationRow.GetResaPercentualeNetta: double;
begin
  Result := FResaPercentualeNetta;
end;

procedure TJanuaSimulationRow.SetResaPercentualeNetta(val: double);
begin
  // campo calcolato
end;

function TJanuaSimulationRow.Getimportocliente: double;
begin
  Result := Fimportocliente;
end;

procedure TJanuaSimulationRow.Setimportocliente(val: double);
begin
  // campo calcolato
end;

function TJanuaSimulationRow.Getimplordocliente: double;
begin
  Result := Fimplordocliente;
end;

procedure TJanuaSimulationRow.Setimplordocliente(val: double);
begin
  // campo calcolato
end;

function TJanuaSimulationRow.Getimplordoeditore: double;
begin
  Result := Fimplordoeditore;
end;

procedure TJanuaSimulationRow.Setimplordoeditore(val: double);
begin
  // campo calcolato
end;

function TJanuaSimulationRow.Getimportoeditore: double;
begin
  Result := Fimportoeditore;
end;

procedure TJanuaSimulationRow.Setimportoeditore(val: double);
begin
  // campo calcolato
end;

function TJanuaSimulationRow.GetNettoEditoreIvato: double;
begin
  Result := FNettoEditoreIvato;
end;

procedure TJanuaSimulationRow.SetNettoEditoreIvato(val: double);
begin
  // campo calcolato
end;

function TJanuaSimulationRow.GetPREZZO_CLIENTE: double;
begin
  Result := FPREZZO_CLIENTE;
end;

function TJanuaSimulationRow.GetCommissione: double;
begin
  Result := FCommissione
end;

function TJanuaSimulationRow.GetResaLorda: double;
begin
  Result := FResaLorda
end;

procedure TJanuaSimulationRow.SetResaLorda(val: double);
begin
  // campo calcolato
end;

end.
