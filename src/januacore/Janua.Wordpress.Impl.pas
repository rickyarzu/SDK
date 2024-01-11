unit Janua.Wordpress.Impl;

interface

uses System.Json, Janua.Http.Types, Janua.Cloud.Http.Intf, Janua.Http.Intf, Janua.Wordpress.Types,
  Janua.Wordpress.Intf;

type
  TWordpressClass = class
  strict private
  class var
    FToken: TWPJsonWebToken;
    FConnected: boolean;
    FUrl: string; // Server Url needs to be set before any operation is triggered;
  public
    class property Connected: boolean read FConnected write FConnected;
    class property Token: TWPJsonWebToken read FToken write FToken;
    class property Url: string read FUrl write FUrl;
  public
    class function FactoryCloudUploader: ICloudUploader;
    /// <summary> Connect to Wordpress Website and uploads 20 or more articles from the articles table </summary>
    /// <param id="aCategory"> unique id for category to search articles, -1 means all categories</param>
    /// <param id="aLimit"> maximum number of articles to retrieve from the website</param>
    /// <param id="aSiteUrl"> url for the site resource. If not set uses the site Default config</param>
    class function LoadArticles(const aCategory: integer = -1; const aLimit: integer = 20;
      const aSiteUrl: string = ''): TWPRecords;
    /// <summary> Connect to Wordpress Website and uploads 20 or more articles from the articles table </summary>
    /// <param id="aUsername">Unique username to log in to the website</param>
    /// <param id="aPassword">Password for the user to log in </param>
    /// <param id="aMessage"> message from site if login fails</param>
    /// <result> True If login is ok. If Ok JWT string is set </param>
    class Function JWTLogin(const aUsername, aPassword: string; var aMessage: string): boolean;
    class Function UploadMedia(aFileName: string): boolean;
    class Function DelPost(var aText: string; const aRecord: TWPRecord): boolean;
    class function UpdatePost(var aText: string; var aRecord: TWPRecord): boolean;
    class function StatusPost(var aText: string; const aRecord: TWPRecord; const aStatus: TWPStatus): boolean;
    class function RestPost(var aText: string; var aRecord: TWPRecord): boolean; overload;
    class Function RestPost(const aObject: TJsonObject; var aText: string; var aRecord: TWPRecord)
      : boolean; overload;
  end;

implementation

uses System.SysUtils, System.DateUtils, System.StrUtils,
  // Janua Core
  Janua.Core.Json, Janua.Core.Functions, Janua.Core.Types,
  // Janua Http
  Janua.Http.Impl,
  // Janua Cloud
  Janua.Cloud.Files.Impl, Janua.Cloud.Http.Impl;

{ TWordpressClass }

class function TWordpressClass.DelPost(var aText: string; const aRecord: TWPRecord): boolean;
var
  aObject: TJsonObject;
  LREcord: TWPRecord;
begin
  // RestPost(const aObject: TJsonObject; var aText: string; var aRecord: TWPRecord)
  aObject := aRecord.AsJsonObject;
  LREcord := aRecord;
  Result := self.RestPost(aObject, aText, LREcord);
end;

class function TWordpressClass.FactoryCloudUploader: ICloudUploader;
var
  AAuth: TJanuaHttpAuth;
begin
  try
    Result := TCloudUploader.Create;
    Result.Url := self.Url + '/wp-json/wp/v2/posts/';
    Result.MimeType := TJanuaMimeType.jmtApplicationJson;
    AAuth.Create(TJanuaAuthType.Bearer, FToken.Token);
    Result.Authorization := AAuth;
  except
    on e: exception do
      raise exception.Create('TWordpressClass FactoryCloudUploader: ' + e.Message);

  end;
end;

class function TWordpressClass.JWTLogin(const aUsername, aPassword: string; var aMessage: string): boolean;
var
  LHttpParams: TJanuaHttpParams;
  LText: string;

  { "author": 1,
    "featured_media": 207,
    "comment_status": "open",
    "ping_status": "open",
    "sticky": false,
  }

begin
  try
    LHttpParams.Clear;
    LHttpParams.Add(TJanuaHttpParam.Create('username', aUsername { 'liguriadmin' } ));
    LHttpParams.Add(TJanuaHttpParam.Create('password', aPassword { 'T4nt0v4l4g4t' } ));
    LText := Janua.Http.Impl.TJanuaHttp.OpenUrlAsString(FUrl + '/wp-json/jwt-auth/v1/token', LHttpParams,
      TJanuaMimeType.jmtApplicationJson, TJanuaHttpMethod.jhmPost);
    // self.AdvMemo1.Lines.Text := Janua.Core.Json.JsonPretty(LText);
    if LText <> '' then
    begin
      FToken.Create(LText);
      aMessage := LText;
      Result := True;
      self.Connected := True;
    end
    else
    begin
      Result := False
    end;
    // self.AdvMemo2.Lines.Text := FToken.AsString;
  except
    on e: exception do
    begin
      Result := False;
      FToken.Create(False);
      aMessage := e.Message;
    end;
  end;
end;

class function TWordpressClass.LoadArticles(const aCategory: integer = -1; const aLimit: integer = 20;
  const aSiteUrl: string = ''): TWPRecords;
var
  LHttpParams: TJanuaHttpParams;
  LText: string;
  { "author": 1,
    "featured_media": 207,
    "comment_status": "open",
    "ping_status": "open",
    "sticky": false,
  }
begin
  // Riporto la procedura originale come Riferimento:
  (*
    LHttpParams.Clear;
    LHttpParams.Add(TJanuaHttpParam.Create('categories', aCatID));
    // per_page numero di post per pagina da tirare su ..... per lo slider invece ne useremmo 4-5
    LHttpParams.Add(TJanuaHttpParam.Create('per_page', 20));
    LText := Janua.Http.Impl.TJanuaHttp.OpenUrlAsString
    ('http://lnd.ergomercator.com/index.php/wp-json/wp/v2/posts/', LHttpParams);
    FRecords.Create(LText);
  *)
  try
    LHttpParams.Clear;

    // il chiamante delle funzione potrebbe impostare il SiteUrl.
    if aSiteUrl <> '' then
      self.Url := aSiteUrl;

    if aCategory > 0 then
      LHttpParams.Add(TJanuaHttpParam.Create('categories', aCategory));
    // per_page numero di post per pagina da tirare su ..... per lo slider invece ne useremmo 4-5
    if aLimit > 0 then
      LHttpParams.Add(TJanuaHttpParam.Create('per_page', aLimit));

    LText := Janua.Http.Impl.TJanuaHttp.OpenUrlAsString(self.Url + '/wp-json/wp/v2/posts/', LHttpParams);

    // self.AdvMemo1.Lines.Text := Janua.Core.Json.JsonPretty(LText);
    if (LText <> '') and LText.StartsWith('[') then
      Result.Create(LText);
    // in caso contrario non occorre un 'create' in quanto Result è un record
  except
    on e: exception do
      raise exception.Create('TWordpressClass.LoadArticles cat=' + aCategory.ToString + ' aUrl:  ' +
        self.Url);
  end;

end;

class function TWordpressClass.RestPost(var aText: string; var aRecord: TWPRecord): boolean;
begin
  Result := self.RestPost(aRecord.AsJsonObject, aText, aRecord);
end;

class function TWordpressClass.RestPost(const aObject: TJsonObject; var aText: string;
  var aRecord: TWPRecord): boolean;
var
  aCloudUploader: ICloudUploader;
begin
  Result := False;
  aCloudUploader := self.FactoryCloudUploader;
  if aCloudUploader.UpLoadJsonObject(aObject) then
  begin
    aText := aCloudUploader.ResponseText.Text;
    aRecord.Create(aText);
    Result := True;
  end;
end;

class function TWordpressClass.StatusPost(var aText: string; const aRecord: TWPRecord;
  const aStatus: TWPStatus): boolean;
var
  aCloudUploader: ICloudUploader;
  LObject: TJsonObject;
begin
  {
    A named status for the object.
    Context: view, edit

    One of: publish, future, draft, pending, private
  }
  Result := False;
  aCloudUploader := self.FactoryCloudUploader;
  LObject := TJsonObject.Create;
  aCloudUploader.Url := aCloudUploader.Url + '/' + aRecord.ID.ToString;
  Janua.Core.Json.JsonPair(LObject, 'status', CWPStatus[aStatus]);

  if aCloudUploader.UpLoadJsonObject(LObject) then
  begin
    aText := aCloudUploader.ResponseText.Text;
    aRecord.Create(aText);
    Result := True;
  end
  else
    raise exception.Create('Error Post: ' + aCloudUploader.Status.ToString);

end;

class function TWordpressClass.UpdatePost(var aText: string; var aRecord: TWPRecord): boolean;
var
  aCloudUploader: ICloudUploader;
begin
  Result := False;
  try
    aCloudUploader := self.FactoryCloudUploader;
    aCloudUploader.Url := aCloudUploader.Url + '/' + aRecord.ID.ToString;

    if aCloudUploader.UpLoadJsonObject(aRecord.AsJsonObject) then
    begin
      aText := aCloudUploader.ResponseText.Text;
      aRecord.Create(aText);
      Result := True;
    end
  except
    on e: exception do
      raise exception.Create(self.ClassName + '.UpdatePost ' + e.ClassName + sl + e.Message);

  end;

end;

class function TWordpressClass.UploadMedia(aFileName: string): boolean;
var
  aCloudUploader: ICloudUploader;
  AAuth: TJanuaHttpAuth;
  LREcord: TWPRecord;
begin
  // **************************************************************************************************
  // Questo test collauda il funzionamento della libreria Blob-File-Downloader.
  // al momento richiede un file da url (senza curarsi particolarmente del tipo di file)
  // e lo salva su Blob. Il file Viene salvato come TEST da un Blob.
  // Se indicato un percorso custom lo salva su quel percorso altrimenti
  // usa come destinazione la DocumentPath Directory + AppName (da Global Configuration)
  // **************************************************************************************************
  aCloudUploader := TCloudUploader.Create;
  aCloudUploader.Url := 'http://lnd.ergomercator.com/wp-json/wp/v2/media';
  aCloudUploader.MimeType := TJanuaMimeType.jmtApplicationPdf;
  AAuth.Create(TJanuaAuthType.Bearer, FToken.Token);
  aCloudUploader.Authorization := AAuth;
  Result := aCloudUploader.UploadFile(aFileName);
  if (aCloudUploader.ResponseText.Text <> '') then
    LREcord.Create(aCloudUploader.ResponseText.Text);
  { TODO : Verificare se e come impiegare LRecord }
  {
    if not aCloudUploader.UploadFile(OpenDialog1.FileName)  then
    ShowMessage('Errore di Caricamento pagina')
    else
    LRecord.Create(aCloudUploader.ResponseText.Text);
  }
  // self.AdvMemo1.Lines.Text := Janua.Core.Json.JsonPretty(aCloudUploader.ResponseText.Text);
  // self.AdvMemo2.Lines.Text := LRecord.AsString;

end;

end.
