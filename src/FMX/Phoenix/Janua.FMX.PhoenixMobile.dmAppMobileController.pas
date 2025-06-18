unit Janua.FMX.PhoenixMobile.dmAppMobileController;

interface

uses
  System.SysUtils, System.Classes, System.NetEncoding, System.Generics.Collections,
{$IFDEF ANDROID}
  Androidapi.JNI.Net,
  Androidapi.JNI.GraphicsContentViewText,
  Androidapi.JNI.App,
  Androidapi.Helpers,
  FMX.Helpers.Android,
{$ENDIF}
  Janua.Core.Classes, Janua.REST.Types, Janua.Core.Types, Janua.Http.Types, Janua.REST.Intf,
  Janua.Core.AsyncTask, Janua.Application.Framework, Janua.Core.JSON,
  Phoenix.JSON.Tecnici.DTO, Phoenix.JSON.Prodotti.DTO, Janua.REST.Client, DTO.Phoenix.ReportList,
  Phoenix.JSON.Config.DTO, Phoenix.JSON.Statini.DTO, FMX.Types;

type
  TdmFMXPhoenixAppMobileController = class(TDataModule)
    TimerDaily: TTimer;
    procedure DataModuleCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    FStatiniLIst: TLSStatinoRoot;
    FAfterStatiniLoad: TNotifyEvent;
    FStatino: TStatino;
    FConf: TConfRoot;
    FSelectedRow: TLSStatino;
    FDictContratti: TDictionary<integer, TContratti>;
    procedure SetFullUrl(const Value: string);
    procedure SetStatiniLIst(const Value: TLSStatinoRoot);
    procedure SetAfterStatiniLoad(const Value: TNotifyEvent);
    procedure SetStatino(const Value: TStatino);
    procedure SetConf(const Value: TConfRoot);
    procedure SetSelectedRow(const Value: TLSStatino);
    procedure SetDictContratti(const Value: TDictionary<integer, TContratti>);
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
    function FindContratto(const aContratto: integer; out oContratto: TContratti): Boolean;
  public
    property FullUrl: string read FFullUrl write SetFullUrl;
    property StatiniLIst: TLSStatinoRoot read FStatiniLIst write SetStatiniLIst;
    property AfterStatiniLoad: TNotifyEvent read FAfterStatiniLoad write SetAfterStatiniLoad;
    property Statino: TStatino read FStatino write SetStatino;
    property Conf: TConfRoot read FConf write SetConf;
    property SelectedRow: TLSStatino read FSelectedRow write SetSelectedRow;
    property DictContratti: TDictionary<integer, TContratti> read FDictContratti write SetDictContratti;
  end;

var
  dmFMXPhoenixAppMobileController: TdmFMXPhoenixAppMobileController;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}
{$R *.dfm}
{ TdmFMXPhoenixAppMobileController }

procedure TdmFMXPhoenixAppMobileController.DataModuleCreate(Sender: TObject);
begin
  FServer := 'http://asso.januaservers.com';
  FPort := 9513;
  FStatiniLIst := TLSStatinoRoot.Create;
  FStatino := TStatino.Create;
  FConf := TConfRoot.Create;
  FDictContratti := TDictionary<integer, TContratti>.Create;
end;

function TdmFMXPhoenixAppMobileController.FindContratto(const aContratto: integer;
  out oContratto: TContratti): Boolean;
begin
  Result := FDictContratti.TryGetValue(aContratto, oContratto);
end;

procedure TdmFMXPhoenixAppMobileController.OpenConf;
var
  lClient: IJanuaRESTClient;
  lContratto: TContratti;
begin
  // IJanuaRESTClient
  lClient := TJanuaRESTClient.Create;
  lClient.ServerURL := FServer;
  lClient.ServerPort := FPort;
  lClient.SetMimeType(jmtTextPlain);
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
    for lContratto in FConf.Contratti do
      FDictContratti.Add(lContratto.CHIAVE, lContratto);
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
  else
    ShowMessage('Nessuna app di mappe disponibile');
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

    var
    lConf := TStatino.Create;
    lConf.AsJson := sConf;
  end;

end;

procedure TdmFMXPhoenixAppMobileController.SetAfterStatiniLoad(const Value: TNotifyEvent);
begin
  FAfterStatiniLoad := Value;
end;

procedure TdmFMXPhoenixAppMobileController.SetConf(const Value: TConfRoot);
begin
  FConf := Value;
end;

procedure TdmFMXPhoenixAppMobileController.SetDictContratti(const Value: TDictionary<integer, TContratti>);
begin
  FDictContratti := Value;
end;

procedure TdmFMXPhoenixAppMobileController.SetFullUrl(const Value: string);
begin
  FFullUrl := Value;
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

procedure TdmFMXPhoenixAppMobileController.Timer1Timer(Sender: TObject);
begin
  TimerDaily.Enabled := False;
  try
    OpenDaily;
    if Assigned(FAfterStatiniLoad) then
      FAfterStatiniLoad(Self);

    OpenConf;
  except
    on e: exception do
    begin
      TimerDaily.Interval := 60000;
      TimerDaily.Enabled := True;
    end;
  end;
end;

end.
