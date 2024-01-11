unit JanuaService;

interface

uses
  SysUtils, Classes, functions;

type
  TJanuaServiceTrattativa = class(TComponent)
  private
    FLordoEditore: Double;
    FNettoEditore: Double;
    FPercentualeAgente: Double;
    FScontoEditore: Double;
    FNettoCliente: Double;
    FAliquotaIva: Double;
    FResaBase: Double;
    FCommissioneAgente: Double;
    FResaFinale: Double;
    FPercentualeLogistica: Double;
    FCostoLogistica: double;
    FCostoTotale: double;
    FPercentualeCostoAgente: Double;
    FPercentualeCostoLogistica: Double;
    procedure SetLordoEditore(const Value: Double);
    procedure SetNettoEditore(const Value: Double);
    procedure SetPercentualeAgente(const Value: Double);
    procedure SetScontoEditore(const Value: Double);
    procedure SetNettoCliente(const Value: Double);
    procedure SetAliquotaIva(const Value: Double);
    procedure CalcolaResa;
    procedure CalcolaCommissioneAgente;
    procedure CalcolaCostoLogistica;
    procedure SetPercentualeLogistica(const Value: Double);
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    procedure Execute;
  published
    { Published declarations }
    property LordoEditore: Double read FLordoEditore write SetLordoEditore;
    property NettoEditore: Double read FNettoEditore write SetNettoEditore;
    property PercentualeAgente: Double read FPercentualeAgente write SetPercentualeAgente;
    property ScontoEditore: Double read FScontoEditore write SetScontoEditore;
    property NettoCliente: Double read FNettoCliente write SetNettoCliente;
    property AliquotaIva: Double read FAliquotaIva write SetAliquotaIva;
    property ResaBase: Double read FResaBase;
    property CommissioneAgente: Double read FCommissioneAgente;
    property ResaFinale: Double read FResaFinale;
    property PercentualeLogistica: Double read FPercentualeLogistica write SetPercentualeLogistica;
    property CostoLogistica: double read FCostoLogistica;
    property CostoTotale: double read FCostoTotale;
    property PercentualeCostoAgente: double read FPercentualeCostoAgente;
    property PercentualeCostoLogistica: double read FPercentualeCostoLogistica;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Januaproject', [TJanuaServiceTrattativa]);
end;

{ TJanuaServiceTrattativa }

procedure TJanuaServiceTrattativa.CalcolaCommissioneAgente;
begin
  FCommissioneAgente := FRound( FNettoEditore * FPercentualeAgente / 100, 2);
end;

procedure TJanuaServiceTrattativa.CalcolaCostoLogistica;
begin
  FCostoLogistica := FRound( FNettoEditore * FPercentualeLogistica / 100, 2);
end;

procedure TJanuaServiceTrattativa.CalcolaResa;
begin
    CalcolaCommissioneAgente;
    CalcolaCostoLogistica;
    FCostoTotale := FNettoEditore + FCommissioneAgente + FCostoLogistica;
   // FLordoEditore: Double;
   //  FNettoEditore: Double;
   // FPercentualeAgente: Double;
   // FScontoEditore: Double;
  //  FNettoCliente: Double;
   // FAliquotaIva: Double;
   if FNettoCliente > 0  then
   begin
    FResaBase :=  FRound(FNettoEditore / FNettoCliente , 4);
    FResaFinale := FRound((FCostoTotale) / FNettoCliente, 4);
    FPercentualeCostoAgente := FRound(FCommissioneAgente / FNettoCliente, 4);
    FPercentualeCostoLogistica := FRound(FCostoLogistica / FNettoCliente, 4);
   end
   else
   begin
     // fino a quanto netto cliente non è valrizzato non ha senso calcolare resa
     FResaBase := 0;
     FResaFinale := 0;
   end;
end;

procedure TJanuaServiceTrattativa.Execute;
begin
   CalcolaResa
end;

procedure TJanuaServiceTrattativa.SetAliquotaIva(const Value: Double);
begin
  if FAliquotaIva <> Value then
  begin
    FAliquotaIva := Value;
  end;

end;





procedure TJanuaServiceTrattativa.SetLordoEditore(const Value: Double);
begin
  FLordoEditore := Value;
  FNettoEditore := FRound(FLordoEditore * (100 - FScontoEditore) / 100,2);
  CalcolaResa
end;

procedure TJanuaServiceTrattativa.SetNettoCliente(const Value: Double);
begin
  FNettoCliente := Value;
  CalcolaResa
end;

procedure TJanuaServiceTrattativa.SetNettoEditore(const Value: Double);
begin
  FNettoEditore := Value;
  if FScontoEditore <> 100 then
  begin
  FLordoEditore := FRound(FNettoEditore / ((100 - FScontoEditore) /100),2);
  // guarda che sto facnedo un controllo diverso
  // SE PER ERRORE un utente mette uno sconto editor = 100% errore acc. memoria
  // 100% di per se non ci andrebbe ma sai com'è......
  end
  else
  begin
     FLordoEditore := 0;
  end;
  CalcolaResa//no, qui non va messo, l'editore può non farmi lo sconto
end;

procedure TJanuaServiceTrattativa.SetPercentualeAgente(const Value: Double);
begin
  if  FPercentualeAgente <> Value then
  begin
    FPercentualeAgente := Value
  end;
  CalcolaResa
end;



procedure TJanuaServiceTrattativa.SetPercentualeLogistica(const Value: Double);
begin
  if Value <> FPercentualeLogistica then
  begin
    FPercentualeLogistica := Value;
    CalcolaResa;
  end;
end;

procedure TJanuaServiceTrattativa.SetScontoEditore(const Value: Double);
begin
  FScontoEditore := Value;
  if FScontoEditore <> 100 then
  begin
    FLordoEditore := FRound(FNettoEditore / ((100 - FScontoEditore) /100),2);
    CalcolaResa
  end
  else
  begin
      //prima hai scritto <>0 ora <>100 è giusto <> 100 errato <> 0
      // infatti 100-0 = 100 va bene
      // ma 100-100 = 0 genera un errore di calcolo
      FLordoEditore := FNettoEditore; // se sconto = 100 allor ragiono come se 0
      // in realtà se FScontoEditore = 100 dovremmo generare un messaggio
      // del tipo: lo sconto editore non può essere 100! ma ora come sappiamo
      // lo sconto editore è ancora gestito solo DA NOI  a monte....
      // ed è fisso = 15 poi quando lo andremo a chiedere all'utente
      // bloccheremo il codice dando prima un messaggio ....
      CalcolaResa
  end;
end;

end.
