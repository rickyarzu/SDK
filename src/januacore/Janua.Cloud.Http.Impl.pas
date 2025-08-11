unit Janua.Cloud.Http.Impl;

interface

{$I JANUACORE.INC}

uses System.Classes, Janua.Cloud.Http.Intf, Janua.Core.Classes, Janua.Core.Types, Janua.Http.Intf,
  Janua.Http.Impl, Janua.Http.Types, System.Json;

type
  TJanuaCloudWebSession = class(TJanuaCustomWebSession, IWebSession)
  public
    /// <summary>
    /// La procedura Create Registra sul manager tutti i metodi (Actions) dei servizi web Cloud image/files.
    /// La registrazione avviere usando un URL o Percorso per la risorsa o un parametro (nome risorsa)
    /// </summary>
    /// <param name="aWebManager">The IWebManager of the project. Must be unique between Sessions </param>
    constructor Create(aWebManager: IWebManager); override;
  end;

type
  TDownloadThreadDataEvent = procedure(const Sender: TObject; ThreadNo, ASpeed: Integer; AContentLength: Int64;
    AReadCount: Int64; var Abort: boolean) of object;

  TDownloadThread = class(TThread)
  private
    FOnThreadData: TDownloadThreadDataEvent;

  protected
    FURL, FFileName: string;
    FStartPoint, FEndPoint: Int64;
    FThreadNo: Integer;
    FTimeStart: Cardinal;

    procedure ReceiveDataEvent(const Sender: TObject; AContentLength: Int64; AReadCount: Int64; var Abort: boolean);
  public
    constructor Create(const URL, FileName: string; ThreadNo: Integer; StartPoint, EndPoint: Int64);
    destructor Destroy; override;
    procedure Execute; override;

    property OnThreadData: TDownloadThreadDataEvent write FOnThreadData;
  end;

type
  TCloudObject = class(TInterfacedObject, ICloudObject)
  private
    FFileName: string;
    FURL: string;
    FCustomPath: string;
    NumThreads: Integer;
    FBlob: TJanuaBlob;
    FResponseText: TStrings;
    FAccept: TJanuaMime;
    FProtocol: TJanuaProtocol;
    FMethod: TJanuaHttpMethod;
    // deprecated (component)
    // FISOCountry: TJanuaISOCountry;
    // deprecated (component)
    // FIsoLanguage: TJanuaISOLanguages;
{$IFDEF MSWINDOWS}
    FResponseString: UTF8String;
{$ELSE}
    FResponseString: string;
{$ENDIF}
    function GetResponseText: TStrings;
  strict protected
    FMimeType: TJanuaMimeType;
    FAuthorization: TJanuaHttpAuth;
  protected
    procedure SetResponseText(const Value: TStrings);
    function GetAuthorization: TJanuaHttpAuth;
    procedure SetAuthorization(const Value: TJanuaHttpAuth);
    function GeTJanuaBlob: TJanuaBlob;
    procedure SeTJanuaBlob(const Value: TJanuaBlob);
    function GetCustomPath: string;
    procedure SetCustomPath(const Value: string);
    function GetFileName: string;
    function GetURL: string;
    procedure SetFileName(const Value: string);
    procedure SetUrl(const Value: string);
{$IFDEF MSWINDOWS}
    function GetResponseString: UTF8String;
{$ELSE}
    function GetResponseString: string;
{$ENDIF}
{$IFDEF MSWINDOWS}
    procedure SetResponseString(const Value: UTF8String);
{$ELSE}
    procedure SetResponseString(const Value: string);
{$ENDIF}
    // MimeType  used to Accept content from server or set content to send to server (image, text, json ...)
    function GetMimeType: TJanuaMimeType;
    procedure SetMimeType(const Value: TJanuaMimeType);
  public
    constructor Create; overload; virtual;
    destructor Destroy; override;
    // Status
  private
    FStatus: Integer;
    function GetStatus: Integer;
    procedure SetStatus(const Value: Integer);
  public
    property Status: Integer read GetStatus write SetStatus;
    // Response Text
  end;

type
  TCloudUploader = class(TCloudObject, ICloudUploader, ICloudObject)
  public
    function UploadFile(aFileName: string): boolean; overload;
    function UploadStream(aStream: TStream): boolean; overload;
    function UpLoadBlob: boolean;
    function UpLoadJsonObject(aObject: TJsonObject): boolean;
    function UpLoadText(aText: string): boolean;
    function UploadTextFile(aFileName: string): boolean;
    function UploadStrings(aStrings: TStrings): boolean;
  end;

type
  TIndyCloudUploader = class(TCloudObject, ICloudUploader, ICloudObject)
    function UploadFile(aFileName: string): boolean; overload;
    function UploadStream(aStream: TStream): boolean; overload;
    function UpLoadBlob: boolean;
    function UpLoadText(aText: string): boolean;
    function UploadTextFile(aFileName: string): boolean;
    function UploadStrings(aStrings: TStrings): boolean;
    function UpLoadJsonObject(aObject: TJsonObject): boolean;
  end;

  TCloudDownloader = class(TCloudObject, ICloudDownloader, ICloudObject)
  public
    function DownloadFile(aFileName: string): boolean; overload;
    function DownloadFile: boolean; overload;
    function DownloadBlob: boolean;
    function GetUrlTextResponse: boolean;
    function GetAnyTextResponse: boolean;
    function SaveTextToFile(aFileName: string): boolean;
    function SaveTextToStream(aStream: TStream): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  protected
    function OpenUrl: string;
  end;

implementation

uses System.Net.HttpClient, System.SysUtils, System.IOUtils, System.StrUtils, Janua.Core.Functions,
  System.Net.URLClient, Spring,
  // Cloud WebBroker
  Janua.Application.Framework, Janua.Cloud.Images.WebBroker, Janua.Cloud.Files.WebBroker;

{ TDownloadThread }

constructor TDownloadThread.Create(const URL, FileName: string; ThreadNo: Integer; StartPoint, EndPoint: Int64);
begin
  inherited Create(True);
  FURL := URL;
  FFileName := FileName;
  FThreadNo := ThreadNo;
  FStartPoint := StartPoint;
  FEndPoint := EndPoint;
end;

destructor TDownloadThread.Destroy;
begin
  inherited;
end;

procedure TDownloadThread.Execute;
var
  LResponse: IHTTPResponse;
  LStream: TFileStream;
  LHttpClient: THTTPClient;
begin
  inherited;
  LHttpClient := THTTPClient.Create;
  try
    LHttpClient.OnReceiveData := ReceiveDataEvent;
    LStream := TFileStream.Create(FFileName, fmOpenWrite or fmShareDenyNone);
    try
      FTimeStart := GetTickCount;
      LStream.Seek(FStartPoint, TSeekOrigin.soBeginning);
      LResponse := LHttpClient.GetRange(FURL, FStartPoint, FEndPoint, LStream);
    finally
      LStream.Free;
    end;
  finally
    LHttpClient.Free;
  end;
end;

procedure TDownloadThread.ReceiveDataEvent(const Sender: TObject; AContentLength, AReadCount: Int64;
  var Abort: boolean);
var
  LTime: Cardinal;
  LSpeed: Integer;
begin
  if Assigned(FOnThreadData) then
  begin
    LTime := GetTickCount - FTimeStart;
    if AReadCount = 0 then
      LSpeed := 0
    else
      LSpeed := (AReadCount * 1000) div LTime;

    FOnThreadData(Sender, FThreadNo, LSpeed, AContentLength, AReadCount, Abort);
  end;
end;

{ TCloudDownloader }

constructor TCloudDownloader.Create;
begin
  inherited;
  NumThreads := 4;

end;

destructor TCloudDownloader.Destroy;
begin

  inherited;
end;

function TCloudDownloader.DownloadBlob: boolean;
var
  LClient: THTTPClient;
  URL: string;
  LResponse: IHTTPResponse;
  LFileName: string;
  LStart, LEnd, LSize, LFragSize: Int64;
  I: Integer;
  LDownloadThreads: array of TDownloadThread;
  LFinished: boolean;
  LStartTime, LEndTime: Cardinal;
  vTest: boolean;
begin
  LClient := THTTPClient.Create;
  LResponse := LClient.Head(FURL);
  // Get space for the file that is going to be dowloaded
  LSize := LResponse.ContentLength;
  Result := (LSize > 0) and (LResponse.StatusCode = HTTP_STATUS.OK);

  LStart := 0;
  if Result then
    TThread.Synchronize(nil,
      procedure
      var
        LResponse: IHTTPResponse;
        LStream: TMemoryStream;
        LHttpClient: THTTPClient;
      begin
        inherited;
        LHttpClient := THTTPClient.Create;
        try
          // LHttpClient.OnReceiveData := ReceiveDataEvent;
          LStream := TMemoryStream.Create;
          try
            // LStream.Seek(FStartPoint, TSeekOrigin.soBeginning);
            LResponse := LHttpClient.GetRange(FURL, LStart, LEnd, LStream);
          finally
            LStream.Free;
          end;
        finally
          LHttpClient.Free;
        end;
      end);
end;

function TCloudDownloader.DownloadFile: boolean;
var
  LClient: THTTPClient;
  URL: string;
  LResponse: IHTTPResponse;
  StFile: TFileStream;
  LFileName: string;
  LStart, LEnd, LSize, LFragSize: Int64;
  I: Integer;
  LDownloadThreads: array of TDownloadThread;
  LFinished: boolean;
  LStartTime, LEndTime: Cardinal;
  vTest: boolean;
begin
  Result := False;
  LClient := THTTPClient.Create;
  LFileName := IfThen(FCustomPath = '', TPath.Combine(TPath.GetDocumentsPath, FFileName),
    TPath.Combine(FCustomPath, FFileName));

  (*
    TThread.Synchronize(nil, procedure
    begin
    Memo1.Lines.Add('File location = ' + LFileName);
    Memo1.Lines.Add('Downloading ' + URL + ' ...');
    Application.ProcessMessages;
    end);
  *)

  try
    URL := self.FURL;
    vTest := LClient.CheckDownloadResume(URL);

    // se non permette il download in multi-part allora mi attrezzo con un unico thred :)
    if not(vTest) then
    begin
      NumThreads := 1;
      vTest := True;
    end;

    if vTest then
    begin
      LResponse := LClient.Head(URL);
      // Get space for the file that is going to be dowloaded
      LSize := LResponse.ContentLength;
      Result := (LSize > 0) and (LResponse.StatusCode = HTTP_STATUS.OK);
      if Result then
      begin
        StFile := TFileStream.Create(LFileName, fmCreate);
        try
          StFile.Size := LSize;
        finally
          StFile.Free;
        end;
        // Split the file in four blocks
        LFragSize := LSize div NumThreads;
        LStart := 0;
        LEnd := LStart + LFragSize;
        SetLength(LDownloadThreads, NumThreads);
        for I := 0 to NumThreads - 1 do
        begin
          // Create the Thread
          LDownloadThreads[I] := TDownloadThread.Create(URL, LFileName, I, LStart, LEnd);
          (* LDownloadThreads[I].OnThreadData := ReceiveThreadDataEvent;

            TThread.Synchronize(nil,
            procedure
            begin
            // Adjust the ProgressBar Max Value
            if LEnd >= LSize then
            begin
            ProgressBarArray[I].Max := LFragSize - (LEnd - LSize);
            LEnd := LSize;
            end
            else
            ProgressBarArray[I].Max := LFragSize;
            ProgressBarArray[I].Min := 0;
            ProgressBarArray[I].Value := 0;

            ButtonCancelArray[I].Enabled := True;
            LabelProgressArray[I].Text := '0 KB/s';
            end);

          *)
          // Update Start and End Values
          LStart := LStart + LFragSize;
          LEnd := LStart + LFragSize;
        end;
        // Start the download process
        LStartTime := TThread.GetTickCount;
        for I := 0 to NumThreads - 1 do
          LDownloadThreads[I].Start;
        // Wait until all threads finish
        LFinished := False;
        while not LFinished do // and not FClosingForm do
        begin
          LFinished := True;
          for I := 0 to NumThreads - 1 do
            LFinished := LFinished and LDownloadThreads[I].Finished;
        end;
        LEndTime := TThread.GetTickCount - LStartTime;
        (*
          TThread.Synchronize(nil,
          procedure
          begin
          LabelGlobalSpeed.Text := Format('Global Speed: %d KB/s', [((LSize * 1000) div LEndTime) div 1024]);
          end);
        *)
        // Cleanup Threads
        for I := 0 to NumThreads - 1 do
          LDownloadThreads[I].Free;
      end;
    end
    else
    begin
      TThread.Synchronize(nil,
        procedure
        begin
          (* Memo1.Lines.Add('Server has NOT resume download feature'); *)
        end);
    end;
  finally
    LClient.Free;
    (*
      TThread.Synchronize(nil,
      procedure
      begin
      BStartDownload.Enabled := True;
      end);
      FAllowFormClose := True;
    *)

  end;
end;

function TCloudDownloader.GetAnyTextResponse: boolean;
begin
  self.FAccept.MimeType := TJanuaMimeType.jmtUnknown;
  Result := self.GetUrlTextResponse;
end;

function TCloudDownloader.GetUrlTextResponse: boolean;
begin
  try
    FResponseText.Clear;
{$IFNDEF FPC}
    FResponseString := System.UTF8String(OpenUrl);
    FResponseText.Text := System.UTF8ToString(FResponseString);
{$ELSE}
    FResponseText.Text := Janua.Core.Sockets.OpenUrlIndy(FURL, self.FMethod);
{$ENDIF FPC}
    Result := FResponseText.Text <> '';
  except
    on e: exception do
    begin
      RaiseException('OpenUrlAsString ' + GetURL + ' - Mime: ' + JanuaMimeString[FAccept.MimeType] + ' - Method: ' +
        JanuaHttpMethodString[self.FMethod], e, self);
      raise
    end;
  end;
end;

function TCloudDownloader.OpenUrl: string;
var
  LResponse: IHTTPResponse;
  LClient: THTTPClient;
begin
  LClient := THTTPClient.Create;

  if self.FAuthorization.AuthType <> TJanuaAuthType.None then
    LClient.CustomHeaders['Authentication'] := FAuthorization.AuthString;

  // LClient.Accept := self.FAccept.MimeString;
  if FAccept.MimeType <> TJanuaMimeType.jmtUnknown then
    LResponse := LClient.Get(self.FURL, nil, [TNameValuePair.Create('accept', FAccept.MimeString)])
  else
    LResponse := LClient.Get(self.FURL, nil, []);

  // [TNameValuePair.Create('accept', 'application/json')]);
{$IFDEF MSWINDOWS}
  Result := LResponse.ContentAsString(TEncoding.UTF8);
{$ELSE}
  Result := LResponse.ContentAsString();
{$ENDIF MSWINDOWS}
end;

function TCloudDownloader.DownloadFile(aFileName: string): boolean;
begin
  self.FFileName := aFileName;
  Result := self.DownloadFile;
end;

function TCloudDownloader.SaveTextToFile(aFileName: string): boolean;
begin
  Guard.CheckNotNull(FResponseText, 'TCloudDownloader.SaveTextToStream FResponseText is null');
  self.FResponseText.SaveToFile(aFileName);
  Result := True;
end;

function TCloudDownloader.SaveTextToStream(aStream: TStream): boolean;
begin
  Guard.CheckNotNull(aStream, 'TCloudDownloader.SaveTextToStream aStream is null');
  Guard.CheckNotNull(FResponseText, 'TCloudDownloader.SaveTextToStream FResponseText is null');
  self.FResponseText.SaveToStream(aStream);
  Result := True;
end;

{ TCloudObject }

function TCloudObject.GeTJanuaBlob: TJanuaBlob;
begin
  Result := self.FBlob
end;

constructor TCloudObject.Create;
begin
  FBlob := TJanuaBlob.Create(False);
  self.FResponseText := TStringList.Create;
  FAccept := TJanuaMime.Create;
  FAuthorization := TJanuaHttpAuth.Create(TJanuaAuthType.None);
  // FISOCountry := TJanuaISOCountry.Create(self, TJanuaIsoCountries.jicItalia);
  // FIsoLanguage := TJanuaISOLanguages.Create(self, TJanuaLanguage.jlaItalian);
end;

destructor TCloudObject.Destroy;
begin
  self.FResponseText.Free;
  inherited;
end;

function TCloudObject.GetAuthorization: TJanuaHttpAuth;
begin
  Result := self.FAuthorization
end;

function TCloudObject.GetCustomPath: string;
begin
  Result := self.FCustomPath
end;

function TCloudObject.GetFileName: string;
begin
  Result := self.FFileName
end;

{$IFDEF MSWINDOWS}

function TCloudObject.GetMimeType: TJanuaMimeType;
begin
  Result := FMimeType
end;

function TCloudObject.GetResponseString: UTF8String;
begin
  Result := self.FResponseString
end;
{$ELSE}

function TCloudObject.GetMimeType: TJanuaMimeType;
begin
  Result := self.FMimeType
end;

function TCloudObject.GetResponseString: String;
begin
  Result := self.FResponseString
end;
{$ENDIF MSWINDOWS}

function TCloudObject.GetResponseText: TStrings;
begin
  Result := self.FResponseText
end;

function TCloudObject.GetURL: string;
begin
  Result := FURL;
end;

procedure TCloudObject.SeTJanuaBlob(const Value: TJanuaBlob);
begin
  FBlob := Value;
end;

procedure TCloudObject.SetAuthorization(const Value: TJanuaHttpAuth);
begin
  FAuthorization := Value;
end;

procedure TCloudObject.SetCustomPath(const Value: string);
begin
  FCustomPath := Value;
end;

procedure TCloudObject.SetFileName(const Value: string);
begin
  FFileName := Value;
end;

procedure TCloudObject.SetMimeType(const Value: TJanuaMimeType);
begin
  self.FMimeType := Value;
end;

{$IFDEF MSWINDOWS}

procedure TCloudObject.SetResponseString(const Value: UTF8String);
begin
  self.FResponseString := Value
end;
{$ELSE}

procedure TCloudObject.SetResponseString(const Value: string);
begin
  self.FResponseString := Value
end;
{$ENDIF}

procedure TCloudObject.SetResponseText(const Value: TStrings);
begin
  FResponseText := Value;
end;

procedure TCloudObject.SetUrl(const Value: string);
begin
  FURL := Value;
end;

{ TJanuaCloudWebSession }

constructor TJanuaCloudWebSession.Create(aWebManager: IWebManager);
begin
  inherited;
{$IF Defined(WEBBROKER)}
  FWebManager.AddWebAction('image', 'ActionImages', '/images', TCloudImageManager.ImageManager, True);
  // FWebManager.AddWebAction('files', 'ActionFiles', '/files', TCloudFileManager.FileManager, True);
  FWebManager.AddWebAction('resources', 'ActionResources', '/resources', TCloudFileManager.ResourceManager, True);
  // else if (aPage.ToLower = 'files') or (aPage.ToLower = 'attach') then
  // TCloudFileManager.FileManager(Sender, Request, Response, Handled)
  FWebManager.AddWebAction('attach', 'ActionFiles', '/attach', TCloudFileManager.FileManager, True);
{$ENDIF}
  FWebManager.AddSession(self as IWebSession);
end;

{ TCloudUploader }

function TCloudObject.GetStatus: Integer;
begin
  Result := self.FStatus
end;

procedure TCloudObject.SetStatus(const Value: Integer);
begin
  FStatus := Value;
end;

function TCloudUploader.UpLoadBlob: boolean;
begin
  Result := False
  { TODO -cIndy : TIndyCloudUploader.UpLoadBlob(aFileName: string) }
end;

function TCloudUploader.UploadFile(aFileName: string): boolean;
var
  LResponse: IHTTPResponse;
  LClient: THTTPClient;
  LTmp: string;
begin
  LClient := THTTPClient.Create;

  if FAuthorization.AuthType <> TJanuaAuthType.None then
    LClient.CustomHeaders['Authorization'] := FAuthorization.AuthString;

  FAccept.Extension := ExtractFileExt(aFileName);

  // Content-Disposition: attachment; filename="acme.png
  LTmp := 'attachment; filename="' + ExtractFileName(aFileName) + '"';
  LClient.CustomHeaders['Content-Disposition'] := LTmp;

  if FAccept.MimeType <> TJanuaMimeType.jmtUnknown then
    LResponse := LClient.Post(FURL, aFileName, nil,
      [TNameValuePair.Create('content-type', JanuaMimeString[FMimeType])]);

  Result := LResponse.StatusCode = 200;
{$IFDEF MSWINDOWS}
  self.FResponseText.Text := LResponse.ContentAsString(TEncoding.UTF8);
{$ELSE}
  self.FResponseText.Text := LResponse.ContentAsString();
{$ENDIF MSWINDOWS}
end;

function TCloudUploader.UpLoadJsonObject(aObject: TJsonObject): boolean;
var
  LResponse: IHTTPResponse;
  LClient: THTTPClient;
  // LTmp: string;
  JsonToSend: TStringStream;
  LMime: string;
begin
  // per prima cosa Creo Http Client (che poi andrebbe distrutto ...)
  LClient := THTTPClient.Create;
  try
    if self.FAuthorization.AuthType <> TJanuaAuthType.None then
      LClient.CustomHeaders['Authorization'] := FAuthorization.AuthString;
    // imposto come accpt in risposta Application/Json
    FAccept.MimeType := TJanuaMimeType.jmtApplicationJson;
    // imposto come content-Type sempre Json
    FMimeType := TJanuaMimeType.jmtApplicationJson;
    // Content-Disposition: attachment; filename="acme.png
    // LTmp := 'attachment; filename="' + ExtractFileName(aFileName) + '"';
    // LClient.CustomHeaders['Content-Disposition'] := LTmp;
    LMime := JanuaMimeString[FMimeType];
    JsonToSend := TStringStream.Create(aObject.ToJSON);
    { function THTTPClient.Post(const AURL: string; const ASource, AResponseContent: TStream;
      const AHeaders: TNetHeaders): IHTTPResponse; }
    try
      if FAccept.MimeType <> TJanuaMimeType.jmtUnknown then
        LResponse := LClient.Post(FURL, JsonToSend, nil, [TNameValuePair.Create('content-type', LMime)]);
      self.FStatus := LResponse.StatusCode;
    finally
      JsonToSend.Free;
    end;
  finally
    LClient.Free
  end;

  Result := (LResponse.StatusCode >= 200) and (LResponse.StatusCode <= 299);
{$IFDEF MSWINDOWS}
  self.FResponseText.Text := LResponse.ContentAsString(TEncoding.UTF8);
{$ELSE}
  self.FResponseText.Text := LResponse.ContentAsString();
{$ENDIF MSWINDOWS}
end;

function TCloudUploader.UploadStream(aStream: TStream): boolean;
begin
  Result := False
  { TODO -cIndy : TCloudUploader.UploadStream(aFileName: string) }
end;

function TCloudUploader.UploadStrings(aStrings: TStrings): boolean;
begin
  Result := False
  { TODO -cIndy : TCloudUploader.UploadStrings(aFileName: string) }
end;

function TCloudUploader.UpLoadText(aText: string): boolean;
begin
  Result := False
  { TODO -cIndy : TIndyCloudUploader.UpLoadText(aFileName: string) }
end;

function TCloudUploader.UploadTextFile(aFileName: string): boolean;
begin
  Result := False
  { TODO -cIndy : TIndyCloudUploader.UploadTextFile(aFileName: string) }
end;

{ TIndyCloudUploader }

function TIndyCloudUploader.UpLoadBlob: boolean;
begin
  Result := False
  { TODO -cIndy : TIndyCloudUploader.UpLoadBlob(aFileName: string) }
end;

function TIndyCloudUploader.UploadFile(aFileName: string): boolean;
begin
  Result := False
  { TODO -cIndy : TIndyCloudUploader.UploadFile(aFileName: string) }
end;

function TIndyCloudUploader.UpLoadJsonObject(aObject: TJsonObject): boolean;
begin
  Result := False
  { TODO -cIndy : TIndyCloudUploader.UpLoadJsonObject(aFileName: string) }
end;

function TIndyCloudUploader.UploadStream(aStream: TStream): boolean;
begin
  Result := False
  { TODO -cIndy : TIndyCloudUploader.UploadStream(aFileName: string) }
end;

function TIndyCloudUploader.UploadStrings(aStrings: TStrings): boolean;
begin
  Result := False
  { TODO -cIndy : TIndyCloudUploader.UploadStrings(aFileName: string) }
end;

function TIndyCloudUploader.UpLoadText(aText: string): boolean;
begin
  Result := False
  { TODO -cIndy : TIndyCloudUploader.UpLoadText(aFileName: string) }
end;

function TIndyCloudUploader.UploadTextFile(aFileName: string): boolean;
begin
  Result := False
  { TODO -cIndy : TIndyCloudUploader.UploadTextFile(aFileName: string) }
end;

end.
