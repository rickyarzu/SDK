unit JanuaRigaDettaglio;

interface

uses
  SysUtils, Classes, Janua.Core.Functions;

type
  TJanuaRigaDettaglio = class(TComponent)
  private
    Fq: Double;
    FImponibileScorporato: Double;
    Fprezzo: Real;
    FaliquotaScorporto: Real;
    FscontoExtra: Real;
    FPrezzoImponibile: Double;
    FscontoCommerciale: Real;
    Faliquota: Real;
    FscontoFinanziario: Real;
    FImporto: Double;
    FImposta: Double;
    FImpTotNetto: Double;
    FAutoCalcOn: boolean;
    procedure Setq(const Value: Double);
    procedure Setaliquota(const Value: Real);
    procedure SetaliquotaScorporto(const Value: Real);
    procedure Setprezzo(const Value: Real);
    procedure SetscontoCommerciale(const Value: Real);
    procedure SetscontoExtra(const Value: Real);
    procedure SetscontoFinanziario(const Value: Real);
    procedure Calcola; Virtual;
    procedure SetAutoCalcOn(const Value: boolean);
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
  published
    { Published declarations }
    property AutoCalcOn: boolean read FAutoCalcOn write SetAutoCalcOn;
    property q: Double read Fq write Setq;
    property aliquota: Real read Faliquota write Setaliquota; //  = aliquota iva se presente (0 altrimenti).
    property prezzo: Real read Fprezzo write Setprezzo; // = prezzo base dell'articolo
    property aliquotaScorporto: Real read FaliquotaScorporto write SetaliquotaScorporto; // = aliquota su importi iva inclusa
    property Importo: Double read FImporto ;
    property Imposta: Double read FImposta ;
    property ImpTotNetto: Double read FImpTotNetto;
    property ImponibileScorporato: Double read FImponibileScorporato;
    property PrezzoImponibile: Double read FPrezzoImponibile ;
    property scontoCommerciale: Real read FscontoCommerciale write SetscontoCommerciale;
    property scontoExtra: Real read FscontoExtra write SetscontoExtra;
    property scontoFinanziario: Real read FscontoFinanziario write SetscontoFinanziario; // (sconto ordine o trattativa)
   // property ImpTotNetto : Double;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Januaproject', [TJanuaRigaDettaglio]);
end;

{ TJanuaRigaDettaglio }

procedure TJanuaRigaDettaglio.Calcola;
begin
// Importo

     FImporto := FRound( FPrezzo * FQ *
                ((100 - FscontoCommerciale) / 100)  *
                ((100 - FscontoExtra ) / 100)  *
                ((100 - FscontoFinanziario ) / 100)
                , 2);

// Imposta 
    FImposta := FRound( FImporto * Faliquota / 100, 2);

// ImpTotNetto 
   FImpTotNetto := FImporto + FImposta;

// ImponibileScorporato

       if FaliquotaScorporto  > 0 then
       begin
            FImponibileScorporato :=
            FImporto /((100 + FaliquotaScorporto  ) / 100);
            FImposta  := FImporto  - FImponibileScorporato;
       end
       else
       begin
           FImponibileScorporato := FImporto;
       end;

// PrezzoImponibile

       if FQ > 0 then
          FPrezzoImponibile := FImponibileScorporato / FQ;

end;

procedure TJanuaRigaDettaglio.Setaliquota(const Value: Real);
begin
  Faliquota := Value;
  if FAutoCalcOn then Calcola;
  
end;

procedure TJanuaRigaDettaglio.SetaliquotaScorporto(const Value: Real);
begin
  FaliquotaScorporto := Value;
  if FAutoCalcOn then Calcola;
end;

procedure TJanuaRigaDettaglio.SetAutoCalcOn(const Value: boolean);
begin
  FAutoCalcOn := Value;
  if FAutoCalcOn then Calcola;
end;



procedure TJanuaRigaDettaglio.Setprezzo(const Value: Real);
begin
  Fprezzo := Value;
    if FAutoCalcOn then Calcola;
end;


procedure TJanuaRigaDettaglio.Setq(const Value: Double);
begin
  Fq := Value;
    if FAutoCalcOn then Calcola;
end;

procedure TJanuaRigaDettaglio.SetscontoCommerciale(const Value: Real);
begin
  FscontoCommerciale := Value;
    if FAutoCalcOn then Calcola;
end;

procedure TJanuaRigaDettaglio.SetscontoExtra(const Value: Real);
begin
  FscontoExtra := Value;
    if FAutoCalcOn then Calcola;
end;

procedure TJanuaRigaDettaglio.SetscontoFinanziario(const Value: Real);
begin
  FscontoFinanziario := Value;
    if FAutoCalcOn then Calcola;
end;

end.
