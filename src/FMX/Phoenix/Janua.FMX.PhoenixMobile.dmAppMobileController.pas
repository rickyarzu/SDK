unit Janua.FMX.PhoenixMobile.dmAppMobileController;

interface

uses
  System.SysUtils, System.Classes, System.NetEncoding, System.Generics.Collections, System.DateUtils,
  System.StrUtils,
{$IFDEF ANDROID}
  Androidapi.JNI.Net,
  Androidapi.JNI.GraphicsContentViewText,
  Androidapi.JNI.App,
  Androidapi.Helpers,
  FMX.Helpers.Android,
{$ENDIF}
  FMX.Types,
  Janua.Core.Classes, Janua.REST.Types, Janua.Core.Types, Janua.Http.Types, Janua.REST.Intf,
  Janua.Core.AsyncTask, Janua.Application.Framework, Janua.Core.JSON,
  // DTO
  Phoenix.JSON.Tecnici.DTO, Phoenix.JSON.Prodotti.DTO, Janua.REST.Client, DTO.Phoenix.ReportList,
  Phoenix.JSON.Config.DTO, Phoenix.JSON.Statini.DTO, DTO.Phoenix.CatEstintori,
  Janua.Core.DB.Types, Janua.UniDac.Commons;

type
  TdmFMXPhoenixAppMobileController = class(TDataModule)
    TimerDaily: TTimer;
    procedure DataModuleCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    FStatiniLIst: TLSStatinoRoot;
    FAfterStatiniLoad: TNotifyEvent;
    FStatino: TStatino;
    FConf: TConfRoot;
    FSelectedRow: TLSStatino;
    FDictContratti: TDictionary<integer, TContratti>;
    FStatinoIndex: integer;
    FDictEstintori: TDictionary<integer, Tcatestintori>;
    FCatEstintori: TCatEstintoriRoot;
    FDictBocchelli: TDictionary<integer, TTIPOBOCCHELLI>;
    FMonths: TList<string>;
    procedure SetFullUrl(const Value: string);
    procedure SetStatiniLIst(const Value: TLSStatinoRoot);
    procedure SetAfterStatiniLoad(const Value: TNotifyEvent);
    procedure SetStatino(const Value: TStatino);
    procedure SetConf(const Value: TConfRoot);
    procedure SetSelectedRow(const Value: TLSStatino);
    procedure SetDictContratti(const Value: TDictionary<integer, TContratti>);
    procedure SetStatinoIndex(const Value: integer);
    procedure SetDictEstintori(const Value: TDictionary<integer, Tcatestintori>);
    procedure SetCatEstintori(const Value: TCatEstintoriRoot);
    procedure SetDictBocchelli(const Value: TDictionary<integer, TTIPOBOCCHELLI>);
    procedure SetMonths(const Value: TList<string>);
    { Private declarations }
  protected
    FServer: string;
    FPort: smallint;
    FFullUrl: string;
  public
    { Public declarations }
    procedure OpenMap(const aAddress: string);
    procedure OpenDaily;
    procedure OpenStatino(const aStatino: integer);
    procedure OpenConf;
    function FindBocchello(const aBocchello: integer; out oBocchello: TTIPOBOCCHELLI): Boolean;
    function FindContratto(const aContratto: integer; out oContratto: TContratti): Boolean;
    function FindCatEstintore(const aTipo: integer; out aCatEstintore: Tcatestintori): Boolean;
    function CreateClient: IJanuaRESTClient;
    function ProcessDateWithMonthCalculation(const AInputDate: string; const AMonthsToAdd: integer;
      out AOriginalYear, AOriginalMonth: Word; out ANewDate: TDateTime; out ANewMonthYear: string): Boolean;
    function JsonDateToDateTime(const aDateString: string): TDateTime;
  public
    property Months: TList<string> read FMonths write SetMonths;
    property FullUrl: string read FFullUrl write SetFullUrl;
    property StatiniLIst: TLSStatinoRoot read FStatiniLIst write SetStatiniLIst;
    property AfterStatiniLoad: TNotifyEvent read FAfterStatiniLoad write SetAfterStatiniLoad;
    property Statino: TStatino read FStatino write SetStatino;
    property Conf: TConfRoot read FConf write SetConf;
    property SelectedRow: TLSStatino read FSelectedRow write SetSelectedRow;
    property DictContratti: TDictionary<integer, TContratti> read FDictContratti write SetDictContratti;
    property DictEstintori: TDictionary<integer, Tcatestintori> read FDictEstintori write SetDictEstintori;
    property DictBocchelli: TDictionary<integer, TTIPOBOCCHELLI> read FDictBocchelli write SetDictBocchelli;
    property StatinoIndex: integer read FStatinoIndex write SetStatinoIndex;
    property CatEstintori: TCatEstintoriRoot read FCatEstintori write SetCatEstintori;

  end;

  (*
    SerializeFunc := function(aFormat: string): string
    begin
    Result := TUniDacExporter.ExportDataset(FDataset, aFormat)
    end;
    DeSerializeFunc := procedure(aFormat, aPayload: string)
    begin
    TUniDacExporter.ImportDataset(FDataset, aPayload, aFormat)
    end;
  *)

var
  dmFMXPhoenixAppMobileController: TdmFMXPhoenixAppMobileController;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}
{$R *.dfm}
{ TdmFMXPhoenixAppMobileController }

function TdmFMXPhoenixAppMobileController.CreateClient: IJanuaRESTClient;
begin
  Result := TJanuaRESTClient.Create;
  Result.ServerURL := FServer;
  Result.ServerPort := FPort;
  Result.SetMimeType(jmtTextPlain);
end;

procedure TdmFMXPhoenixAppMobileController.DataModuleCreate(Sender: TObject);
begin
  FServer := 'https://asso.januaservers.com';
  FPort := 0;

  FMonths := TList<string>.Create;

  // custom local Debug magari lo metto Ifdef ...

  (*
    FServer := 'http://asso.januaservers.com';
    FPort := 9513;
  *)

  FStatiniLIst := TLSStatinoRoot.Create;
  FStatino := TStatino.Create;
  FConf := TConfRoot.Create;
  FDictContratti := TDictionary<integer, TContratti>.Create;

  FDictEstintori := TDictionary<integer, Tcatestintori>.Create;
  FCatEstintori := TCatEstintoriRoot.Create;

  FMonths.Add('Gennaio');
  FMonths.Add('Febbraio');
  FMonths.Add('Marzo');
  FMonths.Add('Aprile');
  FMonths.Add('Maggio');
  FMonths.Add('Giugno');
  FMonths.Add('Luglio');
  FMonths.Add('Agosto');
  FMonths.Add('Settembre');
  FMonths.Add('Ottobre');
  FMonths.Add('Novembre');
  FMonths.Add('Dicembre');

end;

procedure TdmFMXPhoenixAppMobileController.DataModuleDestroy(Sender: TObject);
begin
  FMonths.Free;

  FStatiniLIst.Free;

  FStatino.Free;

  FConf.Free;

  FDictContratti.Free;

  FDictEstintori.Free;

  FCatEstintori.Free;
end;

function TdmFMXPhoenixAppMobileController.FindBocchello(const aBocchello: integer;
  out oBocchello: TTIPOBOCCHELLI): Boolean;
begin
  Result := FDictBocchelli.TryGetValue(aBocchello, oBocchello);
end;

function TdmFMXPhoenixAppMobileController.FindCatEstintore(const aTipo: integer;
  out aCatEstintore: Tcatestintori): Boolean;
begin
  Result := FDictEstintori.TryGetValue(aTipo, aCatEstintore);
end;

function TdmFMXPhoenixAppMobileController.FindContratto(const aContratto: integer;
  out oContratto: TContratti): Boolean;
begin
  Result := FDictContratti.TryGetValue(aContratto, oContratto);
end;

function TdmFMXPhoenixAppMobileController.JsonDateToDateTime(const aDateString: string): TDateTime;
begin
  Result := 0.0;

  try
    // Configura il formato per date ISO (YYYY-MM-DD)
    var
    LFormatSettings := TFormatSettings.Create;
    LFormatSettings.DateSeparator := '-';
    LFormatSettings.ShortDateFormat := 'yyyy-mm-dd';

    // Converte la stringa in TDateTime
    Result := StrToDate(aDateString, LFormatSettings);

  except
    on E: Exception do
    begin
      // In caso di errore, inizializza i valori out
      Result := 0.0;
    end;
  end;
end;

procedure TdmFMXPhoenixAppMobileController.OpenConf;
begin
  // IJanuaRESTClient
  var
  lClient := CreateClient;
  lClient.ApiUrl := 'api/conf';
  var
  lTestUrl := lClient.GetFullUrl;

  // function Execute(aMethod: TJanuaHttpMethod; aUrlParams: TStringArray = []): Boolean;
  if lClient.Execute(TJanuaHttpMethod.jhmGet) then
  begin
    var
    sConf := lClient.Content;
    FConf.AsJson := sConf;
    FDictContratti.Clear;
    for var lContratto in FConf.Contratti do
      FDictContratti.Add(lContratto.CHIAVE, lContratto);
  end;
  lClient := nil;
  // FDictEstintori := TDictionary<integer, Tcatestintori>.Create;
  // CatEstintori := TCatEstintoriRoot.Create;
  lClient := CreateClient;
  lClient.ApiUrl := 'api/catestintori';
  lTestUrl := lClient.GetFullUrl;

  // function Execute(aMethod: TJanuaHttpMethod; aUrlParams: TStringArray = []): Boolean;
  if lClient.Execute(TJanuaHttpMethod.jhmGet) then
  begin
    FCatEstintori.AsJson := lClient.Content;
    FDictEstintori.Clear;
    for var lEstintore in FCatEstintori.estintori do
      FDictEstintori.Add(lEstintore.CHIAVE, lEstintore);
  end;

end;

procedure TdmFMXPhoenixAppMobileController.OpenDaily;
var
  lClient: IJanuaRESTClient;
begin
  // [MVCPath('/reports/($user_id)')]
  lClient := TJanuaRESTClient.Create;
  lClient.ServerURL := FServer;
  lClient.ServerPort := FPort;
  lClient.SetMimeType(jmtTextPlain);
  lClient.ApiUrl := 'api/reports';
  FFullUrl := lClient.GetFullUrl;

  // function Execute(aMethod: TJanuaHttpMethod; aUrlParams: TStringArray = []): Boolean;
  if lClient.Execute(TJanuaHttpMethod.jhmGet, ['-1']) then
  begin
    var
    sConf := lClient.Content;
    FStatiniLIst.AsJson := sConf;
    {
      memReportListElaborated.Lines.Text := JsonPretty(lConf.AsJson);
      memLista.Lines.Text := lConf.Iterator.Text;
    }
  end;

end;

procedure TdmFMXPhoenixAppMobileController.OpenMap(const aAddress: string);
var
{$IFDEF ANDROID}
  Intent: JIntent;
  Uri: Jnet_Uri;
{$ENDIF}
  UriString: string;
begin
  // Crea l'URI per l'indirizzo
  UriString := 'geo:0,0?q=' + TNetEncoding.URL.Encode(aAddress);
{$IFDEF ANDROID}
  Uri := StrToJURI(UriString);

  // Crea l'Intent
  Intent := TJIntent.Create;
  Intent.setAction(TJIntent.JavaClass.ACTION_VIEW);
  Intent.setData(Uri);

  // Apri con l'app scelta dall'utente
  if Intent.resolveActivity(TAndroidHelper.Context.getPackageManager) <> nil then
    TAndroidHelper.Activity.startActivity(Intent)
    // else
    // ShowMessage('Nessuna app di mappe disponibile');
{$ENDIF}
{$IFDEF IOS}
{$ENDIF}
end;

procedure TdmFMXPhoenixAppMobileController.OpenStatino(const aStatino: integer);
var
  lClient: IJanuaRESTClient;
begin
  lClient := TJanuaRESTClient.Create;
  lClient.ServerURL := FServer;
  lClient.ServerPort := FPort;
  lClient.SetMimeType(jmtTextPlain);
  lClient.ApiUrl := 'api/report';
  var
  vTest := lClient.GetFullUrl;

  // function Execute(aMethod: TJanuaHttpMethod; aUrlParams: TStringArray = []): Boolean;
  if lClient.Execute(TJanuaHttpMethod.jhmGet, [aStatino.ToString]) then
  begin
    var
    sConf := lClient.Content;
    // Conf := StringReplace(sConf, '"idranti"', '"Idranti"', [rfReplaceAll]);
    FStatino.AsJson := sConf;
  end;

end;

function TdmFMXPhoenixAppMobileController.ProcessDateWithMonthCalculation(const AInputDate: string;
  const AMonthsToAdd: integer; out AOriginalYear, AOriginalMonth: Word; out ANewDate: TDateTime;
  out ANewMonthYear: string): Boolean;
var
  LOriginalDate: TDateTime;
  LFormatSettings: TFormatSettings;
begin
  Result := False;

  try
    // Configura il formato per date ISO (YYYY-MM-DD)
    LFormatSettings := TFormatSettings.Create;
    LFormatSettings.DateSeparator := '-';
    LFormatSettings.ShortDateFormat := 'yyyy-mm-dd';

    // Converte la stringa in TDateTime
    LOriginalDate := StrToDate(AInputDate, LFormatSettings);

    // Estrae anno e mese dalla data originale
    AOriginalYear := YearOf(LOriginalDate);
    AOriginalMonth := MonthOf(LOriginalDate);

    // Somma i mesi specificati alla data originale
    ANewDate := IncMonth(LOriginalDate, AMonthsToAdd);

    // Formatta la nuova data come MM/YYYY
    ANewMonthYear := FormatDateTime('mm/yyyy', ANewDate);

    Result := True;

  except
    on E: Exception do
    begin
      // In caso di errore, inizializza i valori out
      AOriginalYear := 0;
      AOriginalMonth := 0;
      ANewDate := 0;
      ANewMonthYear := '';
      Result := False;
    end;
  end;

end;

procedure TdmFMXPhoenixAppMobileController.SetAfterStatiniLoad(const Value: TNotifyEvent);
begin
  FAfterStatiniLoad := Value;
end;

procedure TdmFMXPhoenixAppMobileController.SetCatEstintori(const Value: TCatEstintoriRoot);
begin
  FCatEstintori := Value;
end;

procedure TdmFMXPhoenixAppMobileController.SetConf(const Value: TConfRoot);
begin
  FConf := Value;
end;

procedure TdmFMXPhoenixAppMobileController.SetDictBocchelli
  (const Value: TDictionary<integer, TTIPOBOCCHELLI>);
begin
  FDictBocchelli := Value;
end;

procedure TdmFMXPhoenixAppMobileController.SetDictContratti(const Value: TDictionary<integer, TContratti>);
begin
  FDictContratti := Value;
end;

procedure TdmFMXPhoenixAppMobileController.SetDictEstintori(const Value: TDictionary<integer, Tcatestintori>);
begin
  FDictEstintori := Value;
end;

procedure TdmFMXPhoenixAppMobileController.SetFullUrl(const Value: string);
begin
  FFullUrl := Value;
end;

procedure TdmFMXPhoenixAppMobileController.SetMonths(const Value: TList<string>);
begin
  FMonths := Value;
end;

procedure TdmFMXPhoenixAppMobileController.SetSelectedRow(const Value: TLSStatino);
begin
  FSelectedRow := Value;
end;

procedure TdmFMXPhoenixAppMobileController.SetStatiniLIst(const Value: TLSStatinoRoot);
begin
  FStatiniLIst := Value;
end;

procedure TdmFMXPhoenixAppMobileController.SetStatino(const Value: TStatino);
begin
  FStatino := Value;
end;

procedure TdmFMXPhoenixAppMobileController.SetStatinoIndex(const Value: integer);
begin
  FStatinoIndex := Value;
end;

procedure TdmFMXPhoenixAppMobileController.Timer1Timer(Sender: TObject);
begin
  TimerDaily.Enabled := False;
  try
    OpenDaily;
    if Assigned(FAfterStatiniLoad) then
      FAfterStatiniLoad(Self);

    OpenConf;
  except
    on E: Exception do
    begin
      TimerDaily.Interval := 60000;
      TimerDaily.Enabled := True;
    end;
  end;
end;

end.
