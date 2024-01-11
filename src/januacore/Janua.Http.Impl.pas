unit Janua.Http.Impl;

{$I JANUACORE.INC}

interface

uses
  // RTL Spring
  System.Net.URLClient, System.DateUtils, System.Generics.Collections, System.Json, System.StrUtils,
  System.SysUtils, System.Net.Mime, System.Net.HttpClient, System.Classes,
  // Spring
  Spring, Spring.Collections,

{$IF Defined(WEBBROKER)}
  Web.HttpApp,
{$ENDIF}
  Janua.Orm.Intf, Janua.Core.Types, Janua.Http.Types, Janua.Http.Intf,
  Janua.Server.Intf;

type
  /// <summary>
  /// Web Manager connects with WebModule and Actions all the Framework Elements.
  /// Such as Model Server, Model Storage and Web Session.
  /// <summary>
  TWebManager = class(TInterfacedObject, IWebManager)
  protected
    FWebActions: IDictionary<string, TWebAction>;
    FServers: IDictionary<string, IJanuaServer>;
    FWebFunctions: IDictionary<string, TFunction>;
    FWebSessions: IList<IWebSession>;
  public
{$IF Defined(WEBBROKER)}
    // AddAction.
    procedure AddWebAction(aAlias, aName, aPathInfo: string; aAction: THTTPMethodEvent;
      aActive: boolean = True);
    // All'avvio della Applicazione va Eseguito Register Web Module.
    procedure RegisterWebModule(aModule: TWebModule);
    // Responder è l'action di Default e corrisponde a '/' del WebModule
    procedure Responder(Sender: TObject; Request: TWebRequest; Response: TWebResponse; var Handled: boolean);
{$ENDIF}
    procedure AddServer(const aServer: IJanuaServer);
    //
    function FuncResponder(aServer, aFunction, aParams: string): string;
    // Costruttore
    constructor Create; overload;
    // Add Session
    procedure AddSession(aSession: IWebSession);
  end;

Type
  /// <summary>
  /// Class to Manage Web Sessions uses the webbroker technology.
  /// But can be extended to other technologies too like TMS or delphi MVC
  /// <summary>
  TJanuaCustomWebSession = class(TInterfacedObject)
  protected
    FWebManager: IWebManager;
{$IF Defined(WEBBROKER)}
    function InternalAction404(aController: IWebController; Request: TWebRequest;
      Response: TWebResponse): boolean;
{$ENDIF}
  public
{$IF Defined(WEBBROKER)}
    procedure RegisterWebModule(aModule: TWebModule);
{$ENDIF}
    constructor Create(aWebManager: IWebManager); overload; virtual;
  end;

  { httpClient.DefaultRequestHeaders.Authorization =
    new AuthenticationHeaderValue("Bearer", "Your Oauth token"); }
type
  TJanuaHttp = class
    class function PostUrl(const AURL: string; aHttpParams: TJanuaHttpParams; aStrings: TStrings;
      aToken: string = ''): string;
    class function CreateVoidParams: IJanuaParams;
    /// <summary>
    /// Rest Function connect to rest server asking for schema.function and passing it
    /// a list of parameters as Json object (IJanuaParams) obtaining and translating
    /// Json Result as IJanuaFuncResult.
    /// </summary>
    /// <param name="aSchema">
    /// the name of the schema that contains the function
    /// </param>
    /// <param name="aFunction">
    /// the name of the function to call
    /// </param>
    /// <param name="aParams">
    /// a list of params managed by interface IJanuaParams structure
    /// </param>
    /// <returns>
    /// a structured result managed by interface IJanuaFuncResult
    /// </returns>
    class function GetRestFunction(const aSchema, aFunction: string; aParams: IJanuaParams): IJanuaFuncResult;
    class function GetUrl(const Value: string; const Params: TJanuaHttpParams): UTF8String; overload;
    class function GetUrlUTF8(const Value: UTF8String; const Params: TJanuaHttpParams): UTF8String; overload;
    class function OpenUrlAsString(const AURL: string; aHttpParams: TJanuaHttpParams;
      aMime: TJanuaMimeType = TJanuaMimeType.jmtUnknown; aMethod: TJanuaHttpMethod = TJanuaHttpMethod.jhmGet;
      aPostParamsAsUrl: boolean = True; aToken: string = ''; aBody: TStrings = nil): string;
    class function OpenUrlToStream(const AURL: string; aHttpParams: TJanuaHttpParams; var aStream: TStream;
      aMime: TJanuaMimeType = TJanuaMimeType.jmtUnknown;
      aMethod: TJanuaHttpMethod = TJanuaHttpMethod.jhmGet): boolean;
  end;

implementation

uses
  // Janua
  Janua.Application.Framework, Janua.Core.Classes, Janua.Orm.Types, Janua.Server.Impl, Janua.Orm.Impl,
  Janua.Core.Functions, Janua.Core.Json;

{ TJanuaCustomWebSession }

constructor TJanuaCustomWebSession.Create(aWebManager: IWebManager);
begin
  self.Create;
  Guard.CheckNotNull(aWebManager, self.ClassName + '.Create aWebManager is nil');
  self.FWebManager := aWebManager;
end;

{$IF Defined(WEBBROKER)}

function TJanuaCustomWebSession.InternalAction404(aController: IWebController; Request: TWebRequest;
  Response: TWebResponse): boolean;
begin
  Result := False
  { TODO -cIndy : Custom WebSession Internal Action 404 Make Abstract or implement }
end;

procedure TJanuaCustomWebSession.RegisterWebModule(aModule: TWebModule);
begin
  self.FWebManager.RegisterWebModule(aModule);
end;
{$ENDIF}
{ TWebManager }

procedure TWebManager.AddSession(aSession: IWebSession);
var
  aPair: System.Generics.Collections.TPair<string, TFunction>;
  tmp: string;
begin
  if not(FWebSessions.IndexOf(aSession) > -1) then
  begin
    self.FWebSessions.Add(aSession);
  end;
end;

{$IF Defined(WEBBROKER)}

procedure TWebManager.AddWebAction(aAlias, aName, aPathInfo: string; aAction: THTTPMethodEvent;
  aActive: boolean);
begin
  self.FWebActions.Add(LowerCase(aAlias), TWebAction.Create(aName, aPathInfo, aAction, aActive));
end;
{$ENDIF}

procedure TWebManager.AddServer(const aServer: IJanuaServer);
var
  aPair: TPair<string, TFunction>;
  tmp: string;
begin
  Guard.CheckNotNull(aServer, self.ClassName + '.AddServer aServer is nil');
  Guard.CheckFalse(aServer.Name.IsEmpty, self.ClassName + '.AddServer aServer.Name.IsEmpty');
  if not FServers.ContainsKey(aServer.Name.ToLower) then
  begin
    self.FServers.Add(aServer.Name.ToLower, aServer);
    if aServer.Functions.Count > 0 then
      for aPair in aServer.Functions do
      begin
        tmp := aServer.Name.ToLower + '.' + aPair.Key.ToLower;
        Guard.CheckTrue(Assigned(aPair.Value), self.ClassName + 'AddServer key(' + aPair.Key +
          ') function = nil');
        self.FWebFunctions.Add(tmp, aPair.Value);
      end;
  end;
end;

constructor TWebManager.Create;
begin
  inherited;
  FWebActions := Spring.Collections.TCollections.CreateDictionary<string, TWebAction>;
  FServers := Spring.Collections.TCollections.CreateDictionary<string, IJanuaServer>;
  FWebFunctions := Spring.Collections.TCollections.CreateDictionary<string, TFunction>;
  FWebSessions := Spring.Collections.TCollections.CreateList<IWebSession>;
end;

function TWebManager.FuncResponder(aServer, aFunction, aParams: string): string;
var
  LFunction: TFunction;
  LFuncResult: IJanuaFuncResult;
  LParams: IJanuaParams;
  LLocation: string;

  function GenerateError(aMessage: string): string;
  begin
    LFuncResult := TJanuaFuncResult.Create;
    LFuncResult.HasErrors := True;
    LFuncResult.ErrorMessage := aMessage;
    Result := ToJsonFree(LFuncResult.AsJsonObject);
  end;

  function ExecFunction: string;
  var
    LObject: TJsonObject;
  begin
    if aParams <> '' then
    begin
      LObject := Janua.Core.Json.JsonParse(aParams);
      LParams := TJanuaParams.Create(LObject);
      LObject := nil;
      LFuncResult := LFunction(LParams);
      LObject := LFuncResult.AsJsonObject;
      Result := ToJsonFree(LObject);
    end;
  end;

begin
  try
    LLocation := aServer.ToLower + '.' + aFunction.ToLower;
    if FWebFunctions.TryGetValue(LLocation, LFunction) then
    begin
      if not Assigned(LFunction) then
        Result := GenerateError(self.ClassName + '.WebFunctions.TryGetValue(' + LLocation + ') nil')
      else
        Result := ExecFunction
    end
    else
    begin
      Result := GenerateError('Procedure Not Found: ' + aServer + '.' + aFunction);
    end;
  except
    on e: exception do
    begin
      Result := GenerateError(e.Message);
    end;
  end;
end;

{$IF Defined(WEBBROKER)}

procedure TWebManager.RegisterWebModule(aModule: TWebModule);
var
  LAction: TProc<TPair<string, TWebAction>>;
  // Spring.TAction<TPair<string, TWebAction>>;
  LItem: TPair<string, TWebAction>;
  LWebAction: TWebActionItem;
  procedure AddAction(aName, aPathInfo: string; aAction: THTTPMethodEvent; aEnabled: boolean = False;
    aDefault: boolean = False);
  begin
    Guard.CheckTrue(Assigned(aAction), self.ClassName + '.RegisterWebModule aAction nil: ' + aName +
      aPathInfo);
    LWebAction := aModule.Actions.Add;
    // imposto tutte le azioni non come Default ..........................
    LWebAction.Default := aDefault;
    LWebAction.Enabled := aEnabled;
    LWebAction.MethodType := TMethodType.mtAny;
    LWebAction.Name := aName;
    LWebAction.PathInfo := aPathInfo;
    LWebAction.OnAction := aAction;
  end;

begin
  (*
    LAction := (
    procedure(aPair: TPair<string, TWebAction>)
    var
    LWebAction: TWebActionItem;
    begin
    LWebAction := aModule.Actions.Add;
    // imposto tutte le azioni non come Default ..........................
    LWebAction.Default := False;
    LWebAction.Enabled := aPair.Value.Active;
    LWebAction.MethodType := TMethodType.mtAny;
    LWebAction.Name := aPair.Value.Name;
    LWebAction.PathInfo := aPair.Value.PathInfo;
    LWebAction.OnAction := aPair.Value.Action;
    end);
  *)
  // self.FWebActions.ForEach(LAction);

  for LItem in FWebActions do
    AddAction(LItem.Value.Name, LItem.Value.PathInfo, LItem.Value.Action, LItem.Value.Active);

  AddAction('ActionResponder', '/', self.Responder, True, True);
end;

procedure TWebManager.Responder(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
  var Handled: boolean);
var
  aPage: string;
  LFind: boolean;
  LAction: TWebAction;
  sPath, sServer, sFunction, sParams: string;
  function ExtractServerString(aString: string): string;
  var
    tmp: Integer;
  begin
    tmp := Pos('/', aString);
    if tmp <> 0 then
      Result := Copy(aString, 1, tmp - 1);
  end;

begin
  LFind := False;

  if (Request.InternalPathInfo = '') or (Request.InternalPathInfo = '/') then
  begin
    aPage := Janua.Core.Functions.HttpGetParamValue(Request, 'page').ToLower;

    if aPage = 'function' then
    begin
      sServer := Janua.Core.Functions.HttpGetParamValue(Request, 'schema');
      sFunction := Janua.Core.Functions.HttpGetParamValue(Request, 'function');
      sParams := Janua.Core.Functions.HttpGetParamValue(Request, 'params');
      Response.Content := FuncResponder(sServer, sFunction, sParams);
      Response.ContentType := Janua.Http.Types.JanuaMimeString[TJanuaMimeType.jmtApplicationJson];
      Handled := True;
    end
    else
    begin
      if (aPage = '') then
        LFind := FWebActions.TryGetValue('/', LAction)
      else
        LFind := FWebActions.TryGetValue(aPage, LAction);

      if LFind then
        LAction.Action(Sender, Request, Response, Handled);

      if not LFind then
      begin
        LFind := FWebActions.TryGetValue('404', LAction);
      end;

      if not LFind then
        raise exception.Create('TWebManager.Responder No Default Action Set');
    end;
  end
  else if Request.InternalPathInfo.ToLower.StartsWith('/function') or
    Request.InternalPathInfo.ToLower.StartsWith('function') then
  begin
    sPath := StringReplace(Request.InternalPathInfo.ToLower, '/function/', '', []);
    sPath := StringReplace(Request.InternalPathInfo.ToLower, 'function/', '', []);
    sServer := ExtractServerString(sPath);
    sFunction := StringReplace(Request.InternalPathInfo.ToLower, 'sServer' + '/', '', []);
    sParams := Janua.Core.Functions.HttpGetParamValue(Request, 'params');
    Response.Content := self.FuncResponder(sServer, sFunction, sParams);
    Response.ContentType := Janua.Http.Types.JanuaMimeString[TJanuaMimeType.jmtApplicationJson];
    Handled := True;
  end;
end;
{$ENDIF}
{ TJanuaHttp }

class function TJanuaHttp.CreateVoidParams: IJanuaParams;
begin
  Result := TJanuaParams.Create;
  Result.AddParam('void', TJanuaFieldType.jptInteger, TValue(0));
end;

class function TJanuaHttp.GetRestFunction(const aSchema, aFunction: string; aParams: IJanuaParams)
  : IJanuaFuncResult;
var
  LHttpParams: TJanuaHttpParams;
  tmp: string;
begin
  // per creare i parametri uso la funzione del Server Cms
{$IFDEF JANUA_TEST}
  TJanuaLogger.LogRecord('TJanuaHttp.GetRestFunction', '__Start ', nil);
{$ENDIF}
  LHttpParams.Clear;
  LHttpParams.Add(TJanuaHttpParam.Create('page', 'function'));
  LHttpParams.Add(TJanuaHttpParam.Create('function', aFunction));
  LHttpParams.Add(TJanuaHttpParam.Create('schema', aSchema));
  LHttpParams.Add(TJanuaHttpParam.Create('params', ToJsonFree(aParams.AsJsonObject)));

{$IFDEF JANUA_TEST}
  TJanuaLogger.LogRecord('TJanuaHttp.GetRestFunction', '__Params', nil);
{$ENDIF}
  tmp := OpenUrlAsString(
    { Url } TJanuaApplication.RestServer,
    { HttpParams } LHttpParams,
    { MimeType } jmtApplicationJson);

{$IFDEF JANUA_TEST}
  TJanuaLogger.LogRecord('TJanuaHttp.GetRestFunction', '__OpenUrl', nil);
{$ENDIF}
  // Testo la f() sul server passandole i parametri
  Result := TJanuaFuncResult.Create(tmp);

{$IFDEF JANUA_TEST}
  TJanuaLogger.LogRecord('TJanuaHttp.GetRestFunction', '__End (TJanuaFuncResult.Create(tmp))', nil);
{$ENDIF}
end;

class function TJanuaHttp.GetUrlUTF8(const Value: UTF8String; const Params: TJanuaHttpParams): UTF8String;
begin
  Result := Value + System.UTF8Encode('?') + Params.AsEncoded;
end;

class function TJanuaHttp.GetUrl(const Value: string; const Params: TJanuaHttpParams): UTF8String;
begin
  Result := System.UTF8Encode(Value + '?') + Params.AsEncoded;
end;

class function TJanuaHttp.OpenUrlAsString(const AURL: string; aHttpParams: TJanuaHttpParams;
  aMime: TJanuaMimeType; aMethod: TJanuaHttpMethod; aPostParamsAsUrl: boolean; aToken: string;
  aBody: TStrings): string;
var
  LResponse: IHTTPResponse;
  FHTTPClient: THTTPClient;
  LUrl: UTF8String;
  aStrings: TStrings;
  vError: string;
  vData: TMultipartFormData;
  LStrings: TStrings;
const
  sl: string = sLineBreak;
begin
  try
    FHTTPClient := THTTPClient.Create;
    try
      if aMethod = TJanuaHttpMethod.jhmNone then
        aMethod := jhmGet;
      Guard.CheckTrue(AURL <> '', 'aUrl is Empty');

      if aPostParamsAsUrl or (aMethod = jhmGet) then
        LUrl := GetUrl( { UTF8ToString(LUrl) } AURL, aHttpParams)
      else
        LUrl := System.UTF8Encode(AURL);

      { if aToken <> '' then
        FHTTPClient.DefaultRequestHeaders.Authorization =
        new AuthenticationHeaderValue("Bearer", "Your Oauth token"); }

      case aMethod of
        jhmGet:
          try
            if aMime <> TJanuaMimeType.jmtUnknown then
              LResponse := FHTTPClient.Get(UTF8ToString(LUrl), nil,
                [TNameValuePair.Create('accept', JanuaMimeString[aMime])])
            else
              LResponse := FHTTPClient.Get(System.UTF8ToString(LUrl), nil, []);
          except
            on e: exception do
              raise exception.Create('TJanuaHttp.OpenUrlAsString.Get Url:' + AURL + ' ' +
                e.ClassType.ClassName + ': ' + e.Message);
          end;
        // da Studiarsi un po ...............................
        jhmPost:
          begin
            LStrings := TStringList.Create;
            try
              try
                if aPostParamsAsUrl then
                  LResponse := FHTTPClient.Post(System.UTF8ToString(LUrl), LStrings);
              except
                on e: exception do
                  RaiseException('TJanuaHttp.OpenUrlAsString.Post', e, nil, string(LUrl));
              end;
            finally
              LStrings.Free
            end;
          end;
      else
        raise exception.Create('OpenUrlDelphi Method not allowed: ' + JanuaHttpMethodString[aMethod]);
      end;
      if LResponse.StatusCode = HTTP_STATUS.OK then
        Result := LResponse.ContentAsString(TEncoding.UTF8)
      else
      begin
        case LResponse.StatusCode of
          HTTP_STATUS.BadRequest:
            vError := 'Bad Request';
          HTTP_STATUS.Unauthorized:
            vError := 'Unhautorized';
          HTTP_STATUS.PaymentRequired:
            vError := 'Payment Required';
          HTTP_STATUS.Forbidden:
            vError := 'Forbidden';
          HTTP_STATUS.NotFound:
            vError := 'Not Found';
        else
          vError := 'Communication Error: ' + LResponse.StatusCode.ToString;
        end;
      end;
    finally
      FHTTPClient.Free;
    end;
  except
    on e: exception do
      raise exception.Create('TJanuaHttp.OpenUrlAsString: ' + e.ClassName + '.' + e.Message);
  end;

end;

class function TJanuaHttp.OpenUrlToStream(const AURL: string; aHttpParams: TJanuaHttpParams;
  var aStream: TStream; aMime: TJanuaMimeType; aMethod: TJanuaHttpMethod): boolean;
begin
  Guard.CheckNotNull(aStream, 'TJanuaHttp.OpenUrlToStream aSteam is nil');
  { TODO -oRiccardo -cHttp : Implement Open Url to Stream }
  Result := False;
end;

class function TJanuaHttp.PostUrl(const AURL: string; aHttpParams: TJanuaHttpParams; aStrings: TStrings;
  aToken: string): string;
begin
  // Post Url with Raw text Content
end;

end.
