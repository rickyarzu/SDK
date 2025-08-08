unit Janua.REST.Client;

interface

uses System.SysUtils, System.StrUtils, RESTRequest4D, System.Json,
  // Janua Types
  Janua.REST.Types, Janua.Core.Types, Janua.Http.Types, Janua.Core.DB.Types,
  // Janua Interfaces
  Janua.Bindings.Intf, Janua.Core.Classes.Intf, Janua.REST.Intf, Janua.Orm.Intf,
  Janua.Core.Classes, Janua.Core.Json;

type
  TApiUrl = string;
  TResources = TArray<string>;

  TJanuaRESTClient = class(TJanuaInterfacedBindableObject, IJanuaRESTClient, IJanuaBindable)
  public
    class function New: IJanuaRESTClient;
    constructor Create; override;
  private
    FServerPort: Word;
    FServerURL: string;
    FAfterExecute: TRESTClientEvent;
    FMimeType: TJanuaMimeType;
    FAuthenticationType: TAuthenticationType;
    FContent: string;
    FResponseCode: integer;
    FPasswordParam: string;
    FUserParam: string;
  strict protected
    FAPIUrl: string;
    FBody: string;
    procedure SetMimeType(const Value: TJanuaMimeType);
    function GetMimeType: TJanuaMimeType;
    function GetServerPort: Word;
    function GetServerURL: string;
    function GetAfterExecute: TRESTClientEvent;
    procedure SetServerPort(const Value: Word);
    procedure SetServerURL(const Value: string);
    procedure SetAfterExecute(const Value: TRESTClientEvent);
    procedure SetAPIUrl(const Value: string);
    function GetAPIUrl: string;
    function GetResponseCode: integer;
    procedure SetAuthenticationType(const Value: TAuthenticationType);
    function GetAuthenticationType: TAuthenticationType;
    function GetContent: string;
    procedure SetContent(const Value: string);
    function GetPasswordParam: string;
    procedure SetPasswordParam(const Value: string);
    function GetUserParam: string;
    procedure SetUserParam(const Value: string);
  protected
    function Execute(aMethod: TJanuaHttpMethod; aUrlParams: TStringArray = []): Boolean;
    function GetResourcesUrl(const aResources: TResources = []): string;
    function GetTestResourcesUrl: string; virtual;
    procedure SetAuthentication(aRequest: IRequest); virtual;
    function GetRequest(const aResources: TResources = []): IRequest; virtual;
    function GenerateRequest(const aMethod: TJanuaHttpMethod = jhmGet): IRequest; virtual;
  public
    // Function and Procedures
    function GetBaseUrl: string; virtual;
    function GetFullUrl: string;
    // Properties
    property UserParam: string read GetUserParam write SetUserParam;
    property PasswordParam: string read GetPasswordParam write SetPasswordParam;
    property Content: string read GetContent write SetContent;
    property ResponseCode: integer Read GetResponseCode;
    property ServerURL: string read GetServerURL write SetServerURL;
    property ServerPort: Word read GetServerPort write SetServerPort;
    property AfterExecute: TRESTClientEvent read GetAfterExecute write SetAfterExecute;
    property MimeType: TJanuaMimeType read GetMimeType write SetMimeType;
    property ApiUrl: string read GetAPIUrl write SetAPIUrl;
    property AuthenticationType: TAuthenticationType read GetAuthenticationType write SetAuthenticationType;
  end;

  TRESTProcClient = class(TJanuaRESTClient, IRESTProcClient, IJanuaBindable)
  private
    FJanuaParams: IJanuaParams;
    function GetJanuaParams: IJanuaParams;
    procedure SetJanuaParams(const Value: IJanuaParams);
  protected
    function GenerateRequest(const aMethod: TJanuaHttpMethod = jhmGet): IRequest; virtual;
  public
    // Function and Procedures
    function Execute: Boolean; overload;
    function GetMeta: Boolean;
  public
    property JanuaParams: IJanuaParams read GetJanuaParams write SetJanuaParams;
  end;

  TRESTClientCustomAuthLogin = class(TJanuaRESTClient)
  public
    constructor Create; override;
  private
    FLoginResult: string;
    FPassword: string;
    FUsername: string;
    FHttpMethod: TJanuaHttpMethod;
  private
    function GetLoginResult: string;
    procedure SetPassword(const Value: string);
    procedure SetUsername(const Value: string);
    function GetHttpMethod: TJanuaHttpMethod;
    procedure SetHttpMethod(const Value: TJanuaHttpMethod);
  protected
    FResponseContent: string;
    FHttpStatus: HTTP_STATUS;
    Fsc: integer;
    FToken: string;
    FExtractTokenProc: TProc;
    function GetPassword: string; virtual;
    function GetUsername: string; virtual;
  public
    function GetBaseUrl: string; override;
    function Login: Boolean; overload; virtual;
    function Login(aUsername, aPassword: string): Boolean; overload;
    property LoginResult: string read GetLoginResult;
    property Username: string read GetUsername write SetUsername;
    property Password: string read GetPassword write SetPassword;
    property HttpMethod: TJanuaHttpMethod read GetHttpMethod write SetHttpMethod;
  end;

  TRESTClientAuth = class(TRESTClientCustomAuthLogin)
  public
    constructor Create; override;
  end;

  TRESTClientLogin = class(TRESTClientCustomAuthLogin, IRESTLoginClient)
  public
    constructor Create; override;
  protected const
    CLoginApiURL = '/login';
  strict protected
    procedure SetAuthentication(aRequest: IRequest); override;
    function GetRequest(const aResources: TResources = []): IRequest; override;
  protected
    function GetPassword: string; override;
    function GetUsername: string; override;
    function GenerateRequest(const aMethod: TJanuaHttpMethod = jhmGet): IRequest; virtual;
  public
    function GetBaseUrl: string; override;
    function Login: Boolean; overload; override;
  end;

  TRESTRecordClient = class(TJanuaRESTClient, IRESTRecordClient)
  public
    constructor Create; override;
  private
    FJanuaRecord: IJanuaRecord;
    FGUID: TGUID;
    FRecordUrl: string;
    procedure SetJanuaRecord(const Value: IJanuaRecord);
    function GetJanuaRecord: IJanuaRecord;
    procedure SetRecordUrl(const Value: string);
    function GetRecordUrl: string;
    procedure SetGUID(const Value: TGUID);
    function GetGUID: TGUID;
  protected
    function GenerateRequest(const aMethod: TJanuaHttpMethod = jhmGet): IRequest; override;
  protected const
    { Dataset Url is the 'default' url or just the 'index' URL }
    CRecordURL = '/record';
  public
    /// <summary> Stores current record to the Server creating a new Record with new GUID </summary>
    function CreateRecord: Boolean;
    /// <summary> Updates current record to the Server using GUID as unique ID Parameter </summary>
    function Update: Boolean;
    /// <summary> Deletes a Record from the Server using a GUID as parameter </summary>
    function Delete(const aGUID: TGUID): Boolean; overload;
    /// <summary> Deletes current Record from the Server using its GUID as parameter </summary>
    function Delete: Boolean; overload;
    /// <summary> Retrieves a Record in Json Format from the Server and Stores it into Record Field </summary>
    function Retrieve(const aGUID: TGUID): Boolean;
  public
    property JanuaRecord: IJanuaRecord read GetJanuaRecord write SetJanuaRecord;
    property RecordUrl: string read GetRecordUrl write SetRecordUrl;
    property GUID: TGUID read GetGUID write SetGUID;
  end;

  TRESTDBClient = class(TJanuaRESTClient, IRESTDBClient, IRemoteDatasetClient)
  private
    FJanuaDataset: IJanuaDBDataset;
    FDatasetURL: string;
    FDataFormat: TRestFormat;
  protected const
    { Dataset Url is the 'default' url or just the 'index' URL }
    CDatasetURL = '';
  private
    procedure SetJanuaDataset(const Value: IJanuaDBDataset);
    function GetJanuaDataset: IJanuaDBDataset;
    procedure SetDatasetURL(const Value: string);
    function GetDatasetURL: string;
    function GetDataFormat: TRestFormat;
    procedure SetDataFormat(const Value: TRestFormat);
    function GetFormatAPI: string;
  protected
    function GenerateRequest(const aMethod: TJanuaHttpMethod = jhmGet): IRequest; override;
  public
    function GetBaseUrl: string; override;
    property JanuaDataset: IJanuaDBDataset read GetJanuaDataset write SetJanuaDataset;
    property DatasetURL: string read GetDatasetURL write SetDatasetURL;
    property DataFormat: TRestFormat read GetDataFormat write SetDataFormat;
  public
    function LoadData: Boolean;
    procedure LoadDataThreaded(aProc: TProc);
    function DeleteRecord: Boolean;
    function UpdateRecord: Boolean;
    function AppendRecord: Boolean;
    function GetMeta: Boolean;
  end;

const
  sl = sLineBreak;

implementation

uses Spring, Janua.Core.Functions, Janua.Application.Framework;

{ TRESTClient }
constructor TJanuaRESTClient.Create;
begin
  inherited;
  FAfterExecute := nil;
  FAuthenticationType := TJanuaApplication.RestClientConf.AuthenticationType;
  FMimeType := TJanuaMimeType.jmtApplicationJson;
  ServerPort := TJanuaApplication.RestClientConf.Port;
  ServerURL := TJanuaApplication.RestClientConf.Server;
  FUserParam := 'username';
  FPasswordParam := 'password';
end;

function TJanuaRESTClient.Execute(aMethod: TJanuaHttpMethod; aUrlParams: TStringArray = []): Boolean;
var
  LResponse: IResponse;
  lRequest: IRequest;
  lHttpStatus: HTTP_STATUS;
begin
  Result := False;
  lRequest := GetRequest(aUrlParams);
  case aMethod of
    TJanuaHttpMethod.jhmGet:
      LResponse := lRequest.Get;
    TJanuaHttpMethod.jhmPut:
      LResponse := lRequest.Put;
    TJanuaHttpMethod.jhmDelete:
      LResponse := lRequest.Delete;
    TJanuaHttpMethod.jhmPost:
      LResponse := lRequest.Post;
  end;
  FResponseCode := LResponse.StatusCode;
  FContent := LResponse.Content;
  Result := FResponseCode = 200;
  if Assigned(FLogProc) then
    FLogProc('Execute', IfThen(Result, 'OK ', lHttpStatus.Status[FResponseCode] + ' ' + lHttpStatus.Levels
      [FResponseCode]), self);
  if not Result then
    WriteLocalLog('Execute Failed', lHttpStatus.Status[FResponseCode] + ' ' + lHttpStatus.Levels
      [FResponseCode] + sl + LResponse.Content);
end;

function TJanuaRESTClient.GenerateRequest(const aMethod: TJanuaHttpMethod): IRequest;
begin
  Result := GetRequest([]);
end;

function TJanuaRESTClient.GetAfterExecute: TRESTClientEvent;
begin
  Result := FAfterExecute
end;

function TJanuaRESTClient.GetAPIUrl: string;
begin
  Result := FAPIUrl
end;

function TJanuaRESTClient.GetAuthenticationType: TAuthenticationType;
begin
  Result := FAuthenticationType;
end;

function TJanuaRESTClient.GetBaseUrl: string;
begin
  Result := ServerURL;
  if not(ServerPort in [0, 80]) then
    Result := Result + ':' + IntToStr(ServerPort);
  if not FAPIUrl.IsEmpty then
    Result := ConcatUrl(Result, FAPIUrl);
end;

function TJanuaRESTClient.GetContent: string;
begin
  Result := FContent;
end;

function TJanuaRESTClient.GetFullUrl: string;
begin
  Result := GenerateRequest.FullRequestURL(True);
end;

function TJanuaRESTClient.GetMimeType: TJanuaMimeType;
begin
  Result := FMimeType
end;

function TJanuaRESTClient.GetPasswordParam: string;
begin
  Result := FPasswordParam
end;

function TJanuaRESTClient.GetRequest(const aResources: TResources): IRequest;
begin
  var
  sTmp := ConcatUrl(GetBaseUrl, GetResourcesUrl(aResources));
  Result := TRequest.New.BaseURL(sTmp)
  // Accepts the Mime Type specified in the MimeType Enum property
    .Accept(JanuaMimeString[FMimeType])
  // Just 2 minuts Timeout
    .Timeout(120 * 1000)
  // Sets The 'default' Schema Header (the Requested Schema for DB).
    .AddHeader('default_schema', TJanuaApplication.DBSchemaID.ToString);
  // Login Gets the Token
  SetAuthentication(Result);
end;

function TJanuaRESTClient.GetResponseCode: integer;
begin
  Result := FResponseCode;
end;

function TJanuaRESTClient.GetResourcesUrl(const aResources: TResources = []): string;
var
  lTmpResource: string;
begin
  if Length(aResources) > 0 then
    for lTmpResource in aResources do
      Result := ConcatUrl(Result, lTmpResource);
end;

function TJanuaRESTClient.GetServerPort: Word;
begin
  Result := FServerPort
end;

function TJanuaRESTClient.GetServerURL: string;
begin
  Result := FServerURL
end;

function TJanuaRESTClient.GetTestResourcesUrl: string;
begin
  Result := '';
end;

function TJanuaRESTClient.GetUserParam: string;
begin
  Result := FUserParam
end;

class function TJanuaRESTClient.New: IJanuaRESTClient;
begin
  Result := TJanuaRESTClient.Create;
end;

procedure TJanuaRESTClient.SetAfterExecute(const Value: TRESTClientEvent);
begin
  FAfterExecute := Value;
end;

procedure TJanuaRESTClient.SetAPIUrl(const Value: string);
begin
  FAPIUrl := Value;
end;

procedure TJanuaRESTClient.SetAuthentication(aRequest: IRequest);
var
  sU, sP: string;
begin
  Guard.CheckNotNull(aRequest, 'aRequest is nil');
  case FAuthenticationType of
    jatBasic:
      begin
        sU := TJanuaApplication.RestClientConf.Username;
        sP := TJanuaApplication.RestClientConf.Password;
        if (sU <> '') and (sP <> '') then
          aRequest.BasicAuthentication(sU, sP);
      end;
    jatJWT:
      begin
        aRequest.TokenBearer(TJanuaApplication.RestClientConf.JWT);
      end;
    jatGetParams:
      begin
        aRequest.AddParam(FUserParam, TJanuaApplication.RestClientConf.Username);
        aRequest.AddParam(FPasswordParam, TJanuaApplication.RestClientConf.Password);
      end;
  end;
end;

procedure TJanuaRESTClient.SetAuthenticationType(const Value: TAuthenticationType);
begin
  FAuthenticationType := Value;
end;

procedure TJanuaRESTClient.SetContent(const Value: string);
begin
  FContent := Value;
end;

procedure TJanuaRESTClient.SetMimeType(const Value: TJanuaMimeType);
begin
  FMimeType := Value;
end;

procedure TJanuaRESTClient.SetPasswordParam(const Value: string);
begin
  FPasswordParam := Value
end;

procedure TJanuaRESTClient.SetServerPort(const Value: Word);
begin
  FServerPort := Value;
end;

procedure TJanuaRESTClient.SetServerURL(const Value: string);
begin
  FServerURL := Value;
end;

procedure TJanuaRESTClient.SetUserParam(const Value: string);
begin
  FUserParam := Value
end;

{ TRESTDBClient }
function TRESTDBClient.AppendRecord: Boolean;
begin
end;

function TRESTDBClient.DeleteRecord: Boolean;
begin
end;

function TRESTDBClient.GenerateRequest(const aMethod: TJanuaHttpMethod): IRequest;
begin
  Result := GetRequest([GetFormatAPI, FJanuaDataset.Params.AsBase64Url]);
end;

function TRESTDBClient.GetBaseUrl: string;
begin
  Result := inherited;
  Result := Result + IfThen(FDatasetURL.IsEmpty, CDatasetURL, FDatasetURL);
end;

function TRESTDBClient.GetDataFormat: TRestFormat;
begin
  Result := FDataFormat
end;

function TRESTDBClient.GetDatasetURL: string;
begin
  Result := FDatasetURL;
end;

function TRESTDBClient.GetFormatAPI: string;
begin
  Result := CRestFormat[FDataFormat];
  if not(FJanuaDataset.SerializeFormat in [rfDefault, FDataFormat]) then
    Result := CRestFormat[FJanuaDataset.SerializeFormat];
end;

function TRESTDBClient.GetJanuaDataset: IJanuaDBDataset;
begin
  Result := FJanuaDataset
end;

function TRESTDBClient.GetMeta: Boolean;
begin
end;

function TRESTDBClient.LoadData: Boolean;
var
  LResponse: IResponse;
  lHttpStatus: HTTP_STATUS;
  sc: integer;
{$IFDEF DEBUG}
  aRequest: IRequest;
  aUrl: string;
{$ENDIF}
begin
  Result := False;
{$IFDEF DEBUG}
  Guard.CheckNotNull(FJanuaDataset, 'TRESTDBClient.LoadData JanuaDataset is nil ');
{$ENDIF}
  if Assigned(FJanuaDataset) then
  begin
{$IFDEF DEBUG}
    aRequest := GenerateRequest;
    aUrl := aRequest.FullRequestURL;
    LResponse := aRequest.Get;
{$ELSE}
    LResponse := GenerateRequest.Get;
{$ENDIF}
    sc := LResponse.StatusCode;
    Result := sc = 200;

    if Assigned(FLogProc) then
      FLogProc('LoadDataset', IfThen(Result, 'OK ', lHttpStatus.Status[sc] + ' ' + lHttpStatus.Levels
        [sc]), self);

    if Result then
    begin
      FJanuaDataset.DeSerialize(GetFormatAPI, LResponse.Content)
    end
    else
    begin
      WriteLocalLog('LoadData', lHttpStatus.Status[sc] + ' ' + lHttpStatus.Levels[sc] + sl +
{$IFDEF DEBUG} aUrl + sl + {$ENDIF} LResponse.Content);
    end;
  end
  else
  begin
    WriteLocalLog('LoadData', 'Dataset not Assigned');
  end;
end;

procedure TRESTDBClient.LoadDataThreaded(aProc: TProc);
begin
end;

procedure TRESTDBClient.SetDataFormat(const Value: TRestFormat);
begin
  FDataFormat := Value
end;

procedure TRESTDBClient.SetDatasetURL(const Value: string);
begin
  FDatasetURL := Value;
end;

procedure TRESTDBClient.SetJanuaDataset(const Value: IJanuaDBDataset);
begin
  FJanuaDataset := Value;
end;

function TRESTDBClient.UpdateRecord: Boolean;
begin
end;

{ TRESTClientCustomAuthLogin }
constructor TRESTClientCustomAuthLogin.Create;
begin
  inherited;
  AuthenticationType := jatBasic;
  FHttpMethod := TJanuaHttpMethod.jhmGet;
end;

function TRESTClientCustomAuthLogin.GetBaseUrl: string;
begin
  Result := inherited;
end;

function TRESTClientCustomAuthLogin.GetHttpMethod: TJanuaHttpMethod;
begin
  Result := FHttpMethod
end;

function TRESTClientCustomAuthLogin.GetLoginResult: string;
begin
  Result := FLoginResult
end;

function TRESTClientCustomAuthLogin.GetPassword: string;
begin
  Result := FPassword
end;

function TRESTClientCustomAuthLogin.GetUsername: string;
begin
  Result := FUsername
end;

procedure TRESTClientCustomAuthLogin.SetHttpMethod(const Value: TJanuaHttpMethod);
begin
  FHttpMethod := Value;
end;

procedure TRESTClientCustomAuthLogin.SetPassword(const Value: string);
begin
  FPassword := Value
end;

procedure TRESTClientCustomAuthLogin.SetUsername(const Value: string);
begin
  FUsername := Value;
end;

function TRESTClientCustomAuthLogin.Login(aUsername, aPassword: string): Boolean;
begin
  Username := aUsername;
  Password := aPassword;
  Result := Login;
end;

function TRESTClientCustomAuthLogin.Login: Boolean;
var
  LResponse: IResponse;
  lRequest: IRequest;
begin
  Result := False;
  Fsc := -1;
  if (Username <> '') and (Password <> '') then
  begin
    LResponse := GenerateRequest.Get;
    Fsc := LResponse.StatusCode;
    Result := Fsc = 200;
    FResponseContent := LResponse.Content;
    FLoginResult := LResponse.StatusCode.ToString + ' ' + LResponse.StatusText + sl + LResponse.Content;
    if Assigned(AfterExecute) then
      AfterExecute(FResponseContent);
    if Assigned(FLogProc) then
      FLogProc('Login', FLoginResult, self);
    if Result and Assigned(FExtractTokenProc) then
      FExtractTokenProc;
  end
  else
  begin
    var
    sError := IfThen(Username = '', 'Username not Set, ', '') + IfThen(Password = '', 'Password not Set', '');
    WriteLocalLog('Login', sError);
    raise Exception.Create('TRESTClientLogin.Login : ' + sError);
  end;
end;

{ TRESTClientLogin }
constructor TRESTClientLogin.Create;
begin
  inherited;
  FAPIUrl := CLoginApiURL;
  FExtractTokenProc := procedure
    begin
      FToken := TJanuaJson.ExtractJWT(FResponseContent)
    end
end;

function TRESTClientLogin.GenerateRequest(const aMethod: TJanuaHttpMethod): IRequest;
begin
  Result := GetRequest([]);
end;

function TRESTClientLogin.GetBaseUrl: string;
begin
  Result := inherited;
end;

function TRESTClientLogin.GetPassword: string;
begin
  Result := inherited;
  Result := IfThen(Result = '', TJanuaApplication.RestClientConf.Password, Result);
end;

function TRESTClientLogin.GetRequest(const aResources: TResources = []): IRequest;
begin
  Result := inherited;
  // Test Basic Authentication
  { if (FUsername <> '') and (FPassword <> '') then    Result.BasicAuthentication(FUsername, FPassword); }
end;

function TRESTClientLogin.GetUsername: string;
begin
  Result := inherited;
  Result := IfThen(Result = '', TJanuaApplication.RestClientConf.Username, Result);
end;

function TRESTClientLogin.Login: Boolean;
begin
  Result := inherited;
  if Result then
    TJanuaApplication.RestClientConf.JWT := FToken
  else
  begin
    WriteLocalLog('Login', FHttpStatus.Status[Fsc] + ' ' + FHttpStatus.Levels[Fsc] + sl + FResponseContent);
    TJanuaApplication.RestClientConf.JWT := '';
  end;
end;

procedure TRESTClientLogin.SetAuthentication(aRequest: IRequest);
begin
  inherited;
  if (FUsername <> '') and (FPassword <> '') then
    aRequest.BasicAuthentication(FUsername, FPassword);
end;

{ TRESTRecordClient }
constructor TRESTRecordClient.Create;
begin
  inherited;
  FGUID := TGUID.Empty;
  FAPIUrl := CRecordURL;
end;

function TRESTRecordClient.CreateRecord: Boolean;
var
  LResponse: IResponse;
begin
  Result := False;
  if Assigned(FJanuaRecord) then
  begin
    FJanuaRecord.Post;
    LResponse := GetRequest([]).AddBody(FJanuaRecord.asJson).Post;
    Result := LResponse.StatusCode = 200;
    if Result then
      FJanuaRecord.asJson := LResponse.Content;
  end;
end;

function TRESTRecordClient.Delete(const aGUID: TGUID): Boolean;
var
  LResponse: IResponse;
begin
  if FJanuaRecord.GUID <> aGUID then
    FJanuaRecord.Clear;
  LResponse := GetRequest([URLEncode64(aGUID.ToString)]).Delete;
  Result := LResponse.StatusCode = 200;
end;

function TRESTRecordClient.Delete: Boolean;
var
  LResponse: IResponse;
begin
  if FJanuaRecord.GUID <> TGUID.Empty then
  begin
    LResponse := GetRequest([URLEncode64(FJanuaRecord.GUIDString)]).Delete;
    Result := LResponse.StatusCode = 200;
    if Result then
      FJanuaRecord.Clear;
  end;
end;

function TRESTRecordClient.GenerateRequest(const aMethod: TJanuaHttpMethod): IRequest;
begin
  case aMethod of
    jhmGet, jhmDelete:
      Result := GetRequest([URLEncode64(FGUID.ToString)]);
    jhmPost, jhmPut:
      Result := GetRequest([URLEncode64(FGUID.ToString)]);
  else
    Result := GetRequest([URLEncode64(FGUID.ToString)])
  end;

end;

function TRESTRecordClient.GetGUID: TGUID;
begin
  Result := FGUID
end;

function TRESTRecordClient.GetJanuaRecord: IJanuaRecord;
begin
  Result := FJanuaRecord;
end;

function TRESTRecordClient.GetRecordUrl: string;
begin
  Result := FRecordUrl
end;

function TRESTRecordClient.Retrieve(const aGUID: TGUID): Boolean;
var
  LResponse: IResponse;
{$IFDEF DEBUG}
  lRequest: IRequest;
{$ENDIF}
begin
  Result := False;
  if Assigned(FJanuaRecord) then
  begin
    if FJanuaRecord.GUID <> aGUID then
      FJanuaRecord.Clear;
    FGUID := aGUID;
{$IFDEF DEBUG}
    lRequest := GenerateRequest;
    var
    lUrl := lRequest.FullRequestURL(True);
    LResponse := lRequest.Get;
{$ELSE}
    LResponse := GenerateRequest.Get;
{$ENDIF}
    Result := LResponse.StatusCode = 200;
    if Result then
    begin
      var
      lJson := LResponse.Content;
      FJanuaRecord.asJson := lJson;
      FJanuaRecord.Post;
    end;
  end;
end;

procedure TRESTRecordClient.SetGUID(const Value: TGUID);
begin
  FGUID := Value;
end;

procedure TRESTRecordClient.SetJanuaRecord(const Value: IJanuaRecord);
begin
  FJanuaRecord := Value;
end;

procedure TRESTRecordClient.SetRecordUrl(const Value: string);
begin
  FRecordUrl := Value;
end;

function TRESTRecordClient.Update: Boolean;
var
  LResponse: IResponse;
begin
  Result := False;
  if Assigned(FJanuaRecord) then
  begin
    FJanuaRecord.Post;
    LResponse := GetRequest([]).AddBody(FJanuaRecord.asJson).Put;
    Result := LResponse.StatusCode = 200;
    if Result then
      FJanuaRecord.asJson := LResponse.Content;
  end;
end;

{ TRESTProcClient }
function TRESTProcClient.Execute: Boolean;
var
  LResponse: IResponse;
  lHttpStatus: HTTP_STATUS;
  sc: integer;
begin
  Result := False;
  // Login at /api/login
  LResponse := GenerateRequest.Post;
  sc := LResponse.StatusCode;
  Result := sc = 200;
  if Assigned(AfterExecute) then
    AfterExecute(LResponse.Content);
  if Assigned(FLogProc) then
    FLogProc('Execute', lHttpStatus.Status[sc] + ' ' + lHttpStatus.Levels[sc], self);
  if Result then
  begin
    FJanuaParams.AssignValues(LResponse.Content);
  end
  else
  begin
    WriteLocalLog('Login', lHttpStatus.Status[sc] + ' ' + lHttpStatus.Levels[sc] + sl + LResponse.Content);
    TJanuaApplication.RestClientConf.JWT := '';
  end;
end;

function TRESTProcClient.GenerateRequest(const aMethod: TJanuaHttpMethod): IRequest;
begin
  Result := GetRequest([FJanuaParams.AsBase64Url]);
end;

function TRESTProcClient.GetJanuaParams: IJanuaParams;
begin
  Result := FJanuaParams
end;

function TRESTProcClient.GetMeta: Boolean;
var
  LResponse: IResponse;
  lRequest: IRequest;
  lHttpStatus: HTTP_STATUS;
  sc: integer;
begin
  Result := False;
  lRequest := GetRequest([]);
  LResponse := lRequest.Get;
  sc := LResponse.StatusCode;
  Result := sc = 200;
  if Assigned(AfterExecute) then
    AfterExecute(LResponse.Content);
  if Assigned(FLogProc) then
    FLogProc('Execute', lHttpStatus.Status[sc] + ' ' + lHttpStatus.Levels[sc], self);
  if Result then
  begin
    // If Get Succeed then
    FJanuaParams.Assign(LResponse.Content);
  end
  else
  begin
    WriteLocalLog('GetMeta', lHttpStatus.Status[sc] + ' ' + lHttpStatus.Levels[sc] + sl + LResponse.Content);
  end;
end;

procedure TRESTProcClient.SetJanuaParams(const Value: IJanuaParams);
begin
end;

{ TRESTClientAuth }

constructor TRESTClientAuth.Create;
begin
  inherited;

end;

initialization

try
  // TRESTClient = IRESTClient, IJanuaBindable
  TJanuaApplicationFactory.RegisterClass(IJanuaRESTClient, TJanuaRESTClient);
  // TRESTClientLogin =  IRESTLoginClient
  TJanuaApplicationFactory.RegisterClass(IRESTLoginClient, TRESTClientLogin);
  // TRESTDBClient =  IRESTDBClient
  TJanuaApplicationFactory.RegisterClass(IRESTDBClient, TRESTDBClient);
  // TRESTRecordClient = IRESTRecordClient
  TJanuaApplicationFactory.RegisterClass(IRESTRecordClient, TRESTRecordClient);
  // TRESTProcClient = IRESTProcClient
  TJanuaApplicationFactory.RegisterClass(IRESTProcClient, TRESTProcClient);
except
  on e: Exception do
    raise Exception.Create('Janua.Rest.Client.Initializtion ' + e.Message);
end;

end.
