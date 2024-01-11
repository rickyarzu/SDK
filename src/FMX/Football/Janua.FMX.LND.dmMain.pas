unit Janua.FMX.LND.dmMain;

interface

{$DEFINE DIRECT_URL}
{$DEFINE PRIVATE_PATH }

uses
  System.SysUtils, System.Classes, System.ImageList,
  FMX.ImgList,
  System.Net.URLClient, System.Net.HttpClient,
  System.Net.HttpClientComponent, Jorm.Cms.MainArguments.Intf,
  Jorm.Cms.Articles.Intf, Janua.Orm.Intf, Janua.Http.Intf,
  Janua.Server.Intf, Janua.Cloud.Http.Intf;

type
  TLNDMainDataModule = class(TDataModule)
    NetHTTPClient1: TNetHTTPClient;
    NetHTTPRequest1: TNetHTTPRequest;
    ImageList1: TImageList;
    ImageList2: TImageList;
    ImageList3: TImageList;
    procedure DataModuleCreate(Sender: TObject);
  private
    FArguments: IMainArguments;
    FServerUrl: string;
    FArticles: IArticles;
    FArticle: IArticle;
    FMainArgumentID: Word;
    FArticleID: Int64;
    FArgumentID: Word;
    FWarnings: IArticles;
    FNews: IArticles;
    procedure SetArguments(const Value: IMainArguments);
    procedure SetServerUrl(const Value: string);
    procedure SetArticles(const Value: IArticles);
    procedure SetArticle(const Value: IArticle);
    procedure SetArgumentID(const Value: Word);
    procedure SetArticleID(const Value: Int64);
    procedure SetMainArgumentID(const Value: Word);
    procedure SetWarnings(const Value: IArticles);
    procedure SetNews(const Value: IArticles);
    { Private declarations }
  public
    { Public declarations }
    function CreateArticleParams: IJanuaParams;
    // function CreateVoidParams: IJanuaParams;
    function CreateArgumentArticlesParams: IJanuaParams;
    procedure LoadMainArguments;
    procedure LoadArgumentArticlesList;
    procedure LoadWarnings;
    procedure LoadNews;
    procedure LoadArticle(aID: Int64);
    procedure OpenPreviewPdf(aID: Int64);
    procedure OpenPDFFile(const aFileName, aDestFile: string);
    procedure OpenMainAttachID;
    procedure OpenAttachFile(aID: Int64);
    procedure CheckPermissions;
    procedure OpenFileUrl(aUrl: string; aForceInternal: boolean = False);
  public
    property ServerUrl: string read FServerUrl write SetServerUrl;
    property MainArguments: IMainArguments read FArguments write SetArguments;
    property Articles: IArticles read FArticles write SetArticles;
    property Warnings: IArticles read FWarnings write SetWarnings;
    property News: IArticles read FNews write SetNews;
    property Article: IArticle read FArticle write SetArticle;
    property ArticleID: Int64 read FArticleID write SetArticleID;
    property ArgumentID: Word read FArgumentID write SetArgumentID;
    property MainArgumentID: Word read FMainArgumentID write SetMainArgumentID;
  end;

  // procedure OpenPDFFile(const aFileName: string);

var
  LNDMainDataModule: TLNDMainDataModule;
  UseFile: boolean; // if True Downloads a File instead try to reach the file 'url'.

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

Uses
{$IFDEF ANDROID}
  (*
    Androidapi.JNI.GraphicsContentViewText,
    Androidapi.Helpers,
    Androidapi.JNI.JavaTypes,
    Androidapi.JNI.Net,
  *)
  Androidapi.JNI.GraphicsContentViewText, FMX.Helpers.Android,
  Androidapi.Helpers,
  AndroidSDK.Toast,
  Androidapi.JNI.Net,
  Androidapi.JNI.App,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.OS,
  System.Permissions,
{$ENDIF}
  System.Json, Spring, System.Rtti, System.IOUtils, Janua.FMX.Functions,
  Jorm.Cms.MainArguments.Impl, Janua.Orm.Impl,
  Janua.Orm.Types, Janua.Cloud.Http.Impl,
  Janua.Http.Impl, Janua.Core.Types, Janua.Http.Types, Janua.Cms.Server.Impl,
  Janua.Server.Impl, Jorm.Cms.Articles.Impl, Janua.Application.Framework,
  Janua.FMX.frmBrowser;

{%CLASSGROUP 'FMX.Controls.TControl'}
{$R *.dfm}
{ TLNDMainDataModule }

procedure TLNDMainDataModule.CheckPermissions;
begin
{$IFDEF ANDROID}
  PermissionsService.RequestPermissions
    ([JStringToString(TJManifest_permission.JavaClass.READ_EXTERNAL_STORAGE),
    JStringToString(TJManifest_permission.JavaClass.WRITE_EXTERNAL_STORAGE)],
    procedure(const APermissions: TArray<string>; const AGrantResults: TArray<TPermissionStatus>)
    begin
      if (Length(AGrantResults) = 1) and (AGrantResults[0] = TPermissionStatus.Granted) then
      begin
        // al momento non faccio un tubero ...................................
      end
      else
      begin
        ShowToast('Attenzione Accesso ai file non attivato');
      end;
    end)
{$ENDIF}
end;

function TLNDMainDataModule.CreateArgumentArticlesParams: IJanuaParams;
begin
  // (aMainArgumentID, aArgumentID, aLimit, aPage: Word; aIsVideo: Boolean = False)
  Result := TJanuaParams.Create;
  Result.AddParam('article_id', TJanuaFieldType.jptLargeInt, TValue(0));
  Result.AddParam('argument_id', TJanuaFieldType.jptInteger, TValue(self.ArgumentID));
  Result.AddParam('main_id', TJanuaFieldType.jptInteger, TValue(self.MainArgumentID));
  Result.AddParam('isvideo', TJanuaFieldType.jptBoolean, TValue(False));
end;

(*
  function TLNDMainDataModule.CreateVoidParams: IJanuaParams;
  begin
  Result := TJanuaParams.Create;
  Result.AddParam('void', TJanuaFieldType.jptInteger, TValue(0));
  end;
*)

function TLNDMainDataModule.CreateArticleParams: IJanuaParams;
begin
  Result := TJanuaParams.Create;
  Result.AddParam('article_id', TJanuaFieldType.jptLargeInt, TValue(FArticleID));
end;

procedure TLNDMainDataModule.DataModuleCreate(Sender: TObject);
begin
  self.FServerUrl := 'http://liguria.lnd.it';
  FArguments := TMainArguments.Create;
  self.FArticles := Jorm.Cms.Articles.Impl.TArticles.Create;
  self.FWarnings := Jorm.Cms.Articles.Impl.TArticles.Create;
  self.FNews := Jorm.Cms.Articles.Impl.TArticles.Create;
  FArticle := Jorm.Cms.Articles.Impl.TArticle.Create;
end;

procedure TLNDMainDataModule.LoadArgumentArticlesList;
var
  LParams: IJanuaParams;
  LResult: IJanuaFuncResult;
  LHttpParams: TJanuaHttpParams;
  tmp: string;
  test: integer;
begin
  // per creare i parametri uso la funzione del Server Cms
  LParams := self.CreateArgumentArticlesParams;
  LHttpParams.Clear;
  LHttpParams.Add(TJanuaHttpParam.Create('page', 'function'));
  LHttpParams.Add(TJanuaHttpParam.Create('function', 'argarticles'));
  LHttpParams.Add(TJanuaHttpParam.Create('schema', 'cms'));
  LHttpParams.Add(TJanuaHttpParam.Create('params', LParams.AsJsonObject.ToJSON));

  tmp := TJanuaHttp.OpenUrlAsString( { Url } FServerUrl,
  { HttpParams } LHttpParams,
  { MimeType } jmtApplicationJson);

  // Testo la f() sul server passandole i parametri
  LResult := TJanuaFuncResult.Create(tmp);
  // Faccio un test per verificare il numero di Record
  test := LResult.RecResult.RecordSets[0].RecordCount;
  // bArticle viene creato assegnandogli il primo Record di Rec Result.
  self.FArticles.Assign(LResult.RecResult.RecordSets[0]);
  // Verifico che bArticle sia uguale ad aArticle

end;

procedure TLNDMainDataModule.LoadArticle(aID: Int64);
var
  LParams: IJanuaParams;
  LResult: IJanuaFuncResult;
  LHttpParams: TJanuaHttpParams;
  tmp: string;
const
  I: Int64 = 0;
begin
  // per creare i parametri uso la funzione del Server Cms
  self.FArticleID := aID;
  LParams := self.CreateArticleParams;
  LHttpParams.Clear;
  LHttpParams.Add(TJanuaHttpParam.Create('page', 'function'));
  LHttpParams.Add(TJanuaHttpParam.Create('function', 'article'));
  LHttpParams.Add(TJanuaHttpParam.Create('schema', 'cms'));
  LHttpParams.Add(TJanuaHttpParam.Create('params', LParams.AsJsonObject.ToJSON));

  tmp := TJanuaHttp.OpenUrlAsString( { Url } FServerUrl,
  { HttpParams } LHttpParams,
  { MimeType } jmtApplicationJson);

  // Testo la f() sul server passandole i parametri
  LResult := TJanuaFuncResult.Create(tmp);
  // Check LResult Fasle
  Guard.CheckFalse(LResult.HasErrors, LResult.ErrorMessage);
  // bArticle viene creato assegnandogli il primo Record di Rec Result.
  self.FArticle.Assign(LResult.RecResult.Records[0]);
  // Verifico allegato
  if self.FArticle.MainAttachId.AsLargeInt > 0 then
    CheckPermissions;
  // Verifico che bArticle sia uguale ad aArticle
  if self.FArticle.Attachments.RecordCount > 0 then
  begin
    FArticle.Attachments.First;
    while not FArticle.Attachments.Eof do
    begin
      Guard.CheckTrue(FArticle.Attachments.FileId.AsInteger <> I, 'FArticle.Attachments.FileId = 0');
      FArticle.Attachments.Next;
    end;
  end;

end;

procedure TLNDMainDataModule.LoadMainArguments;
var
  LResult: IJanuaFuncResult;
begin
  (*
    // per creare i parametri uso la funzione del Server Cms
    LParams := self.CreateVoidParams;
    aHttpParams.Clear;
    aHttpParams.Add(TJanuaHttpParam.Create('page', 'function'));
    aHttpParams.Add(TJanuaHttpParam.Create('function', 'arguments'));
    aHttpParams.Add(TJanuaHttpParam.Create('schema', 'cms'));
    aHttpParams.Add(TJanuaHttpParam.Create('params', LParams.AsJsonObject.ToJSON));

    tmp := TJanuaHttp.OpenUrlAsString(  {aUrl}  FServerUrl,
    { HttpParams } aHttpParams,
    { MimeType } jmtApplicationJson);

    // Testo la f() sul server passandole i parametri
    LResult := TJanuaFuncResult.Create(tmp);
    // bArticle viene creato assegnandogli il primo Record di Rec Result.
    FArguments.Assign(LResult.RecResult.RecordSets[0]);
    // Verifico che bArticle sia uguale ad aArticle
  *)
  LResult := TJanuaHttp.GetRestFunction( { aSchema } 'cms', { aFunction } 'arguments',
  { aParams } TJanuaHttp.CreateVoidParams);
  Guard.CheckTrue(LResult.RecResult.RecordSetCount > 0, 'LoadMainArguments: RecordSetCount = 0');
  FArguments.Assign(LResult.RecResult.RecordSets[0]);
end;

procedure TLNDMainDataModule.LoadNews;
var
  LResult: IJanuaFuncResult;
begin
  LResult := TJanuaHttp.GetRestFunction( { aSchema } 'cms', { aFunction } 'news',
  { aParams } TJanuaHttp.CreateVoidParams);
  Guard.CheckNotNull(LResult, 'LoadMainArguments: LResult is nil');
  Guard.CheckNotNull(LResult.RecResult, 'LoadMainArguments: RecResult is nil');
  Guard.CheckTrue(LResult.RecResult.RecordSetCount > 0, 'LoadMainArguments: RecordSetCount = 0');
  self.FNews.Assign(LResult.RecResult.RecordSets[0]);
end;

procedure TLNDMainDataModule.LoadWarnings;
var
  LResult: IJanuaFuncResult;
begin
  (*
    // per creare i parametri uso la funzione del Server Cms
    LParams := TJanuaHttp.CreateVoidParams;
    LHttpParams.Clear;
    LHttpParams.Add(TJanuaHttpParam.Create('page', 'function'));
    LHttpParams.Add(TJanuaHttpParam.Create('function', 'warnings'));
    LHttpParams.Add(TJanuaHttpParam.Create('schema', 'cms'));
    LHttpParams.Add(TJanuaHttpParam.Create('params', LParams.AsJsonObject.ToJSON));

    tmp := TJanuaHttp.OpenUrlAsString( { Url } FServerUrl,
    { HttpParams } LHttpParams,
    { MimeType } jmtApplicationJson);

    // Testo la f() sul server passandole i parametri
    LResult := TJanuaFuncResult.Create(tmp);
    // bArticle viene creato assegnandogli il primo Record di Rec Result.
    self.FWarnings.Assign(LResult.RecResult.RecordSets[0]);
    // Verifico che bArticle sia uguale ad aArticle
  *)
  LResult := TJanuaHttp.GetRestFunction( { aSchema } 'cms', { aFunction } 'warnings',
  { aParams } TJanuaHttp.CreateVoidParams);
  Guard.CheckTrue(LResult.RecResult.RecordSetCount > 0, 'LoadWarnings: RecordSetCount = 0');
  FWarnings.Assign(LResult.RecResult.RecordSets[0]);
end;

procedure TLNDMainDataModule.OpenAttachFile(aID: Int64);
begin

end;

procedure TLNDMainDataModule.OpenFileUrl(aUrl: string; aForceInternal: boolean);
{$IFDEF ANDROID}
var
  Intent: JIntent;
  URI: Jnet_Uri;
  JavaFile: JFile;
{$ENDIF}
begin
{$IFDEF ANDROID}
  if aForceInternal then
  begin
    fmLndBrowser := TfmLndBrowser.Create(nil);
    fmLndBrowser.WebBrowser1.Navigate(aUrl);
    fmLndBrowser.Show;
  end
  else
  begin
    CheckPermissions;
    Intent := TJIntent.Create;
    Intent.setAction(TJIntent.JavaClass.ACTION_VIEW);

    // Aggiunto da istruzioni Android.
    Intent.setData(StrToJURI('googlechrome://navigate?url=' + aUrl));

    // Intent.setDataAndType(StrToJURI(aUrl), StringToJString('application/pdf'));
    try
      TAndroidHelper.Activity.startActivity(Intent);
    except
      on E: Exception do
        ShowToast('Cannot open PDF' + sLineBreak + Format('[%s] %s', [E.ClassName, E.Message]),
          TToastDuration.Long, TToastPosition.Center);
    end;
  end;
{$ELSE}
  fmLndBrowser := TfmLndBrowser.Create(nil);
  fmLndBrowser.WebBrowser1.Navigate(aUrl);
  fmLndBrowser.Show;
{$ENDIF}
end;

procedure TLNDMainDataModule.OpenMainAttachID;
begin
  self.OpenPreviewPdf(LNDMainDataModule.Article.MainAttachId.AsLargeInt)
end;

procedure TLNDMainDataModule.OpenPDFFile(const aFileName, aDestFile: string);
{$IFDEF ANDROID}
var
  Intent: JIntent;
  URI: Jnet_Uri;
  JavaFile: JFile;
{$ENDIF}
begin
  // aFileName ? la locazione di Download del File su Android. Si tratta della cartella interna alla
  // sandbox del programm.
  //
  (*
    {$IFDEF ANDROID}
    URI := TJnet_Uri.JavaClass.parse(StringToJString('file:///' + fName));
    intent := TJIntent.Create;
    intent.setAction(TJIntent.JavaClass.ACTION_VIEW);
    intent.setDataAndType(URI,StringToJString('application/pdf'));
    SharedActivity.startActivity(intent);
    {$ENDIF}
  *)
{$IFDEF ANDROID}
  CheckPermissions;
  Intent := TJIntent.Create;
  Intent.setAction(TJIntent.JavaClass.ACTION_VIEW);
  // URI := TJnet_Uri.JavaClass.parse(StringToJString('file://' + aFileName));
  // Intent.setDataAndType(URI, StringToJString('application/pdf'));
  // SharedActivity.startActivity(Intent);

  // Intent.setDataAndType(StrToJURI('file://' + aFileName),
  // StringToJString('application/pdf'));
  // ******* WorkAround ********************************************************

  // Content sostituisce 'file' per compatibilit? con API >= 26
  URI := StrToJURI('file://' + aDestFile);
  // URI := StrToJURI('content://' + aDestFile);

  if (aDestFile <> aFileName) and not TFile.Exists(aDestFile) then
    TFile.Copy(aFileName, aDestFile);
  Intent.setDataAndType(URI, StringToJString('application/pdf'));
  try
    TAndroidHelper.Activity.startActivity(Intent);
  except
    on E: Exception do
      ShowToast('Cannot open PDF' + sLineBreak + Format('[%s] %s', [E.ClassName, E.Message]),
        TToastDuration.Long, TToastPosition.Center);
  end;
{$ENDIF}
{$IFNDEF ANDROID}
  fmLndBrowser := TfmLndBrowser.Create(nil);
  fmLndBrowser.WebBrowser1.Navigate('file://' + aFileName);
  fmLndBrowser.Show;
{$ENDIF}
end;

procedure TLNDMainDataModule.OpenPreviewPdf(aID: Int64);
var
  aCloudDownloader: ICloudDownloader;
  vFileName, vFileNamePath, vFileNameSharedPath: string;
  aStream: TMemoryStream;
  aUrl, aShortFileName: string;
  vCheck: boolean;
begin
  // http://app.januaservers.com/?page=attach&file=801.pdf
  // **************************************************************************************************
  // Questo test collauda il funzionamento della libreria Blob-File-Downloader.
  // al momento richiede un file da url (senza curarsi particolarmente del tipo di file)
  // e lo salva su Blob. Il file Viene salvato come TEST da un Blob.
  // Se indicato un percorso custom lo salva su quel percorso altrimenti
  // usa come destinazione la DocumentPath Directory + AppName (da Global Configuration)
  // **************************************************************************************************
  // aShortFileName := LNDDMMobileDB.qryArticlemain_attach_id.AsString + '.pdf';  // LNDMainDataModule
  aShortFileName := aID.ToString + '.pdf'; // LNDMainDataModule
  aUrl := TJanuaApplication.WebServer + '/?page=attach&file=' + aShortFileName;
{$IFDEF DIRECT_URL}
  OpenFileUrl(aUrl);
{$ELSE}
  { FilePath := TPath.Combine(TPath.GetDocumentsPath, APDFFileName);
    SharedFilePath := TPath.Combine(TPath.GetSharedDocumentsPath,
    APDFFileName);
    if TFile.Exists(SharedFilePath) then TFile.Delete(SharedFilePath);
    TFile.Copy(FilePath, SharedFilePath);
  }
{$IFDEF ANDROID}
{$ELSE}
{$ENDIF}
  // PROVO IN UN PRIMO TEMPO USANDO GetDownloadsPath ........................................................
  vFileNamePath := TPath.Combine(System.IOUtils.TPath.GetDownloadsPath, aShortFileName);
  vFileNameSharedPath := TPath.Combine(System.IOUtils.TPath.GetSharedDownloadsPath, aShortFileName);

  if FileExists(vFileNamePath) then
{$IFDEF ANDROID}
    OpenPDFFile(vFileNamePath, vFileNameSharedPath)
{$ELSE}
    OpenPDFFile(vFileNamePath, vFileNamePath)
{$ENDIF}
  else
  begin
    aCloudDownloader := TCloudDownloader.Create;
    aCloudDownloader.URL := aUrl;
    // aCloudDownloader.CustomPath := TPath.GetDocumentsPath;
    // vFileName := FormatDateTime('yymmddhhnnss', Now());
    // TPath.GetSharedDownloadsPath
    aCloudDownloader.CustomPath := System.IOUtils.TPath.GetSharedDownloadsPath;
    self.CheckPermissions;
    aCloudDownloader.DownloadFile(aShortFileName);
    vCheck := FileExists(vFileNamePath);
    if vCheck then
      OpenPDFFile(vFileNamePath)
  end;
{$ENDIF}
end;

procedure TLNDMainDataModule.SetArgumentID(const Value: Word);
begin
  FArgumentID := Value;
end;

procedure TLNDMainDataModule.SetArguments(const Value: IMainArguments);
begin
  FArguments := Value;
end;

procedure TLNDMainDataModule.SetArticle(const Value: IArticle);
begin
  FArticle := Value;
end;

procedure TLNDMainDataModule.SetArticleID(const Value: Int64);
begin
  FArticleID := Value;
end;

procedure TLNDMainDataModule.SetArticles(const Value: IArticles);
begin
  FArticles := Value;
end;

procedure TLNDMainDataModule.SetMainArgumentID(const Value: Word);
begin
  FMainArgumentID := Value;
end;

procedure TLNDMainDataModule.SetNews(const Value: IArticles);
begin
  FNews := Value;
end;

procedure TLNDMainDataModule.SetServerUrl(const Value: string);
begin
  FServerUrl := Value;
end;

procedure TLNDMainDataModule.SetWarnings(const Value: IArticles);
begin
  FWarnings := Value;
end;

initialization

UseFile := False; // per ora lo impoto a 'False' e navigo direttamente sul file Url.

end.
