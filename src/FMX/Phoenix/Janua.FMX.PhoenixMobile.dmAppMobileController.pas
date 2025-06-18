unit Janua.FMX.PhoenixMobile.dmAppMobileController;

interface

uses
  System.SysUtils, System.Classes, System.NetEncoding,
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
    procedure SetFullUrl(const Value: string);
    procedure SetStatiniLIst(const Value: TLSStatinoRoot);
    { Private declarations }
  protected
    FServer: string;
    FPort: smallint;
    FFullUrl: string;
  public
    { Public declarations }
    procedure OpenMap(const aAddress: string);
    procedure OpenDaily;
  public
    property FullUrl: string read FFullUrl write SetFullUrl;
    property StatiniLIst: TLSStatinoRoot read FStatiniLIst write SetStatiniLIst;
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
    var
    lConf := TLSStatinoRoot.Create;
    lConf.AsJson := sConf;
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

procedure TdmFMXPhoenixAppMobileController.SetFullUrl(const Value: string);
begin
  FFullUrl := Value;
end;

procedure TdmFMXPhoenixAppMobileController.SetStatiniLIst(const Value: TLSStatinoRoot);
begin
  FStatiniLIst := Value;
end;

procedure TdmFMXPhoenixAppMobileController.Timer1Timer(Sender: TObject);
begin
  TimerDaily.Enabled := False;
  OpenDaily;
end;

end.
