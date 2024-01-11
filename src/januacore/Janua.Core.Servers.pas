unit Janua.Core.Servers;

{$I JANUACORE.INC}

interface

uses
  // System Procedures ............................................................
  System.SysUtils, System.Classes, System.Types, System.Rtti,
  // System.Bindings.Expression, System.Bindings.Helper,
  System.TypInfo, System.Generics.Collections, System.JSON,
  // Indy
  IdURI,
  // http functions
  System.Net.HttpClient, System.Net.URLClient, System.Net.Mime, System.Net.HttpClientComponent,
  System.NetEncoding,
  // Janua
  Janua.Core.Types, Janua.Core.Classes, Janua.Core.Functions, Janua.Core.Cloud,
  Janua.Core.DB, Janua.Core.Entities, Janua.Core.DB.Types, Janua.Cloud.Types,
  Janua.Core.CustomControls, Janua.Core.Conf, Janua.Cloud.Mail.Intf, Janua.Core.DB.Intf,
  // DB Units
  Data.DB,
  // FireDac  MemTable Structure.
  FireDAC.Comp.Client,
  // DataModule Modello dei Server .....................................................................
  // udmJanuaCoreServer, 25-08-2019 Sostituito dalla nuova Interfaccia.
  Janua.Mocks.Helpers;

type
  // janua Server Object serve per crere oggetti Server Annidati composti di differenti
  // DataModule. Riprende alcune caratteristiche del Core Component Principale.
  TJanuaServerObject = class(TJanuaPersistent)
  private
    FKeepAlive: boolean;
    procedure SetKeepAlive(const Value: boolean);
  protected
    procedure CreateDataset; virtual; abstract;
    procedure DestroyDataset; virtual; abstract;
  public
  published
    property KeepAlive: boolean read FKeepAlive write SetKeepAlive;
  end;

type
  TJanuaCustomServer = class(TJanuaCoreComponent)
  public
    // ************************* Janua Global common properties ********************************************************
    class procedure SetGlobalServerConf(Value: TJanuaServerRecordConf);
    // Getter procedures for the Global system
    { class function GetGlobalTest: boolean; }
    class function GetServerUrl: string;
    class function GetServerUser: string;
    class function GetServerPassword: string;
    class function GetServerTCPPort: Word;
    class function GetServerSchema: string;
    class function GetUrl: string;
    class function getServerAddress: string;
    class function GetAppUrl: string;
    // Setter procedures for the Global system
    class procedure SetServerUrl(Value: string);
    class procedure SetServerUser(Value: string);
    class procedure SetServerPassword(Value: string);
    class procedure SetServerTCPPort(Value: Word);
    class procedure SetServerSchema(Value: string);
    class procedure SetUrl(Value: string);
    class procedure setServeAddress(Value: string);
    class procedure SetAppUrl(Value: string);
    // costruttore e distruttore .......................................................................................
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    class function GetServerConf: TJanuaServerRecordConf;
  private
    FOnChangeLanguage: TNotifyEvent;
    FKeepAlive: boolean;
    FActiveDatasets: boolean;
    FDisclaimer: TJanuaDisclaimer;
    // FCustomActionServer: TJanuaCustomActionServer;
    // FJanuaSchema: TJanuaSchema;
    FJanuaMailSender: IJanuaMailSender;
    FNetHTTPRequest: TNetHTTPRequest;
    FDatasetErrors: TJanuaDBDatasetErrors;
    FInTransaction: boolean;
    function GetKeepAlive: boolean;
    procedure SetJanuaServerSession(const Value: TJanuaServerSession);
    procedure SetKeepAlive(const Value: boolean);
    procedure SetOnChangeLanguage(const Value: TNotifyEvent);
    procedure SetActiveDatasets(const Value: boolean);
    procedure SetDisclaimer(const Value: TJanuaDisclaimer);
    // procedure SetCustomActionServer(const Value: TJanuaCustomActionServer);
    // procedure SetJanuaSchema(const Value: TJanuaSchema);
    function GetSessionKey: string;
    function getSessionID: Int64;
    procedure SetCoordinates(const Value: TJanuaCoordinates);
    procedure SetSearchAddress(const Value: string);
    procedure InternalGoogleGeoCoding(out Result: boolean; aAddress: string);
    procedure InternalOpenMapGeoCoding(out Result: boolean; aAddress: string);
    procedure SeTJanuaCustomMailSender(const Value: IJanuaMailSender);
    procedure SetNetHTTPRequest(const Value: TNetHTTPRequest);
    procedure SetDatasetErrors(const Value: TJanuaDBDatasetErrors);
    procedure SetIDM(const Value: IJanuaServerDataModule);
    procedure SetInTransaction(const Value: boolean);
    function GetJanuaMailSender: IJanuaMailSender;
  strict protected
    FIDM: IJanuaServerDataModule;
  protected
    property InTransaction: boolean read FInTransaction write SetInTransaction;
    property IDM: IJanuaServerDataModule read FIDM write SetIDM;
  strict protected
    // Variabile protected per la gestione dell'invio delle Mail.
    FMailMessage: TJanuaMailMessage;
    function SendMail(vMailMessage: TJanuaMailMessage): boolean; overload; virtual;
    function SendMail: boolean; overload; virtual;
    procedure SetConnected(const Value: boolean); virtual;
    procedure StartTransaction;
    procedure EndTransaction;
  protected
    FCoordinates: TJanuaCoordinates;
    FCheckPostalCode: boolean;
    FSearchAddress: string;
    FJanuaServerObjects: TObjectList<TJanuaServerObject>;
    FUserProfile: TJanuaRecordUserProfile;
    FTestMode: boolean;
    FJanuaServerSession: TJanuaServerSession;
    procedure SetSessionID(const Value: Int64); virtual;
    function InternalActivateDatasets: boolean; virtual;
    function InternalDeActivateDatasets: boolean; virtual;
    function CheckUp: boolean; virtual;
    procedure LoadProfile; virtual;
    procedure SetSessionKey(const Value: string); virtual;
    function AddFieldsLocally(aLocal, newCds: TFdMemTable): TFdMemTable;
    procedure AddInLocalData(aLocal, newCds: TFdMemTable);
    procedure CloneLocalData(aLocal, newCds: TFdMemTable); overload;
    procedure CloneLocalData(aLocal: TDataset; newCds: TFdMemTable); overload;
    procedure SetUserProfile(const Value: TJanuaRecordUserProfile); virtual;
    procedure SetTestMode(const Value: boolean); override;
  strict protected
    FConnected: boolean;
    // virtual abstract methods to be implemented on descendant classes ........................................
    function InternalCheckSessionKey: boolean; virtual; abstract;
    procedure SetUserSessionProfile; virtual; abstract;
    // 2017-0024 DestroyDataModule
    procedure DestroyDataModule(Force: boolean = false); virtual;
    procedure CreateDataModule; virtual; abstract;
    procedure AssignDatasets; virtual; abstract;
    function getIsPublic: boolean; Virtual;
    function GetJanuaServerSession: TJanuaServerSession; Virtual;
  public
    procedure ClearSession;
    function GeoCoding(const aAddress: string): boolean; virtual;
    function CheckSessionKey(aSessionKey: string): boolean; virtual;
    function ActivateDatasets: boolean;
    function SetSchema(Key: string): boolean; overload; virtual;
    function SetSchema: boolean; overload; virtual;
    function Disclaimer: boolean;
    function DisclaimerJson: TJsonObject;
    procedure CloseConnection;
    function SearchPostalCode(aCode: string): string; virtual;
    procedure StartPublicWebSession; virtual; abstract;
    // needs to be overridden by the descendandt classes
  public
    property DatasetErrors: TJanuaDBDatasetErrors read FDatasetErrors write SetDatasetErrors;
    property JanuaServerSession: TJanuaServerSession read GetJanuaServerSession write SetJanuaServerSession;
    { TODO : Create a Schema Property from a Schema Class Definition }
    // property Schema: TJanuaSchema read FJanuaSchema write SetJanuaSchema;
    property Coordinates: TJanuaCoordinates read FCoordinates write SetCoordinates;
    procedure TestDataModule; virtual;
    property JanuaMailSender: IJanuaMailSender read GetJanuaMailSender write SeTJanuaCustomMailSender;
  published // Server configuration properties, queste proprietà sono tutte Stored-False in quanto sono tutt Global
    property ServerUrl: string read GetServerUrl write SetServerUrl stored false;
    property AppUrl: string read GetAppUrl write SetAppUrl stored false;
    property ServerUser: string read GetServerUser write SetServerUser stored false;
    property ServerPassword: string read GetServerPassword write SetServerPassword stored false;
    property ServerTCPPort: Word read GetServerTCPPort write SetServerTCPPort stored false;
    property ServerSchema: string read GetServerSchema write SetServerSchema stored false;
    property Url: string read GetUrl write SetUrl stored false;
    property ServerAddress: string read getServerAddress write setServeAddress stored false;
    property Connected: boolean read FConnected write SetConnected;
  published
    /// <summary>
    /// This property Activates Datasets. If KeepAlive is True it can connect
    /// Datasets from Datamodule
    /// </summary>
    /// <value>
    /// True or False
    /// </value>
    /// <remarks>
    /// This is linked to an Abstract function
    /// </remarks>
    property SearchAddress: string read FSearchAddress write SetSearchAddress;
    property UserProfile: TJanuaRecordUserProfile read FUserProfile write SetUserProfile;
    property ActiveDatasets: boolean read FActiveDatasets write SetActiveDatasets default false;
    property KeepAlive: boolean read GetKeepAlive write SetKeepAlive;
    property SessionKey: string read GetSessionKey write SetSessionKey;
    property ActualDisclaimer: TJanuaDisclaimer read FDisclaimer write SetDisclaimer;
    property NetHTTPRequest: TNetHTTPRequest read FNetHTTPRequest write SetNetHTTPRequest;
    property SessionID: Int64 read getSessionID write SetSessionID;
    property TestMode: boolean read FTestMode write SetTestMode;
    // System properties (involve communicatin between model and representatin - controller).
    property isPublic: boolean read getIsPublic;
  published // events
    property OnChangeLanguage: TNotifyEvent read FOnChangeLanguage write SetOnChangeLanguage;
    // property ActionServer: TJanuaCustomActionServer read FCustomActionServer write SetCustomActionServer;

  end;

  TJanuaWebActionServer = class(TJanuaCoreComponent)
  private
    FRegisteredServers: TDictionary<string, TJanuaCustomServer>;
    // FPlugs: TDictionary<string, TJanuaSocket>;
    procedure setRegisteredServers(Value: TDictionary<string, TJanuaCustomServer>);
    // procedure setPlugs(Value: TDictionary<string, TJanuaSocket>);
  protected
    function InternalActivate: boolean; override;
  public
    procedure AddServer(const aServer: TJanuaCustomServer);
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure TestAllServers;
  published
    property RegisteredServers: TDictionary<string, TJanuaCustomServer> read FRegisteredServers
      write setRegisteredServers;
  end;

implementation

uses Janua.Application.Framework, FireDAC.Comp.Dataset;

var
  // variabile globale di classe FGLobalTest (permette di attivare o disattivare il test mode da
  // una class function caricata dal form o dal datamodule dove stanno i componenti.
  FServerInstances: TList<TJanuaCustomServer>; // Component Instances = TList TJanuaCustomComponent.

  { TJanuaServerObject }

procedure TJanuaServerObject.SetKeepAlive(const Value: boolean);
begin
  FKeepAlive := Value;
end;

{ TJanuaCustomServer }

function TJanuaCustomServer.GeoCoding(const aAddress: string): boolean;
begin
  self.FCoordinates.Clear;
  Result := false;
  if self.FTestMode then
  begin
    self.FCoordinates.latitude := 45.4655236;
    self.FCoordinates.longitude := 9.2080925;
    Result := true;
  end
  else
  begin
    Result := false;
    try
      InternalGoogleGeoCoding(Result, aAddress);
      if not Result then
        InternalOpenMapGeoCoding(Result, aAddress);
    except
      on e: Exception do
      begin
        if FTestMode then
        begin
          self.FCoordinates.latitude := 45.4655236;
          self.FCoordinates.longitude := 9.2080925;
          Result := true;
        end
        else
        begin
          self.FCoordinates.Clear;
          Result := true;
        end;
      end;

    end;
  end;

end;

class function TJanuaCustomServer.GetAppUrl: string;
begin
  Result := TJanuaApplication.AppName
end;

{ class function TJanuaCustomServer.GetGlobalTest: boolean;
  begin
  Result := FGlobalTestMode
  end;
}
function TJanuaCustomServer.getIsPublic: boolean;
begin
  Result := self.FUserProfile.User.isPublic
end;

function TJanuaCustomServer.GetJanuaMailSender: IJanuaMailSender;
begin
  Result := FJanuaMailSender;
end;

function TJanuaCustomServer.GetJanuaServerSession: TJanuaServerSession;
begin
  Result := self.FJanuaServerSession;
end;

function TJanuaCustomServer.GetKeepAlive: boolean;
begin
  Result := self.FKeepAlive;
end;

class function TJanuaCustomServer.GetServerConf: TJanuaServerRecordConf;
begin
  Result := TJanuaApplication.JanuaServerConf;
end;

class function TJanuaCustomServer.GetServerPassword: string;
begin
  Result := TJanuaApplication.JanuaServerConf.Password
end;

class function TJanuaCustomServer.GetServerSchema: string;
begin
  Result := TJanuaApplication.JanuaServerConf.Schema
end;

class function TJanuaCustomServer.GetServerTCPPort: Word;
begin
  Result := TJanuaApplication.JanuaServerConf.Port
end;

class function TJanuaCustomServer.GetServerUrl: string;
begin
  Result := TJanuaApplication.JanuaServerConf.Address
end;

class function TJanuaCustomServer.GetServerUser: string;
begin
  Result := TJanuaApplication.JanuaServerConf.Username
end;

procedure TJanuaCustomServer.LoadProfile;
begin
  // per ora non implementa nulla di nulla .........
  Exit;

end;

function TJanuaCustomServer.SearchPostalCode(aCode: string): string;
begin
  Result := aCode;
  self.FCheckPostalCode := ((aCode.Trim.Length) = 5) and Janua.Core.Functions.IsNumeric(aCode);
end;

function TJanuaCustomServer.SendMail(vMailMessage: TJanuaMailMessage): boolean;
begin
  self.FMailMessage := vMailMessage;
  Result := self.SendMail()

end;

function TJanuaCustomServer.SendMail: boolean;
var
  vError: string;
begin
  Result := false;
  if Assigned(self.FJanuaMailSender) then
  begin
    Result := self.FJanuaMailSender.SendMailMulti(FMailMessage, vError);
    if not Result then
    begin
      self.HasErrors := true;
      self.LastErrorMessage := vError;
      // raise Exception.Create('Error sending Email ' + vError);
    end;
  end;
end;

procedure TJanuaCustomServer.InternalGoogleGeoCoding(out Result: boolean; aAddress: string);
var
  JanuaGoogleGeoCoding: TJanuaCustomGeoCoding;
begin
  // ******* blocco di codice dipendente da Google Maps Locator ...............
  try
    { TJanuaGoogleGeoCoding.Create }
    JanuaGoogleGeoCoding := TJanuaCloudFactory.CreateJanuaGoogleGeoCoding(nil);
    try
      JanuaGoogleGeoCoding.NetHTTPRequest := FNetHTTPRequest;
      JanuaGoogleGeoCoding.Address := aAddress;
      if JanuaGoogleGeoCoding.GetCoordinates then
      begin
        FCoordinates := JanuaGoogleGeoCoding.Coordinates;
        Result := true;
      end
      else
      begin
        if self.FTestMode then
        begin
          self.FCoordinates.latitude := 45.4655236;
          self.FCoordinates.longitude := 9.2080925;
          Result := true;
        end
        else
        begin
          self.FCoordinates.latitude := 0;
          self.FCoordinates.longitude := 0;
          Result := false;
        end;
      end;
    finally
      JanuaGoogleGeoCoding.Free;
    end;
  except
    on e: Exception do
    begin
      self.FCoordinates.latitude := 0;
      self.FCoordinates.longitude := 0;
      Result := false;

    end;

  end;
end;

procedure TJanuaCustomServer.InternalOpenMapGeoCoding(out Result: boolean; aAddress: string);
var
  OpenMapGeoCoding: TJanuaMapComponent;
begin
  // ******* blocco di codice dipendente da Google Maps Locator ...............
  OpenMapGeoCoding := TJanuaCloudFactory.CreateJanuaStreetMap(nil); // TJanuaStreetMap.Create(nil);
  try
    OpenMapGeoCoding.Address := aAddress;
    if OpenMapGeoCoding.GetCoordinates then
    begin
      self.FCoordinates := OpenMapGeoCoding.Coordinates;
      Result := true;
    end
    else
    begin
      if self.FTestMode then
      begin
        self.FCoordinates.latitude := 45.4655236;
        self.FCoordinates.longitude := 9.2080925;
        Result := true;
      end
      else
      begin
        self.FCoordinates.latitude := 0;
        self.FCoordinates.longitude := 0;
        Result := false;
      end;
    end;
  finally
    OpenMapGeoCoding.Free;
  end;

end;

procedure TJanuaCustomServer.SetActiveDatasets(const Value: boolean);
begin
  if Value then
    self.InternalActivateDatasets
  else if self.FActiveDatasets and not Value then
    self.InternalDeActivateDatasets;
end;

class procedure TJanuaCustomServer.SetAppUrl(Value: string);
begin
  TJanuaApplication.AppName := Value;
end;

procedure TJanuaCustomServer.SetConnected(const Value: boolean);
begin
  if Value then
  begin
    self.CreateDataModule;
  end;
end;

procedure TJanuaCustomServer.SetCoordinates(const Value: TJanuaCoordinates);
begin
  FCoordinates := Value;
end;

procedure TJanuaCustomServer.SetDatasetErrors(const Value: TJanuaDBDatasetErrors);
begin
  FDatasetErrors := Value;
end;

procedure TJanuaCustomServer.SetDisclaimer(const Value: TJanuaDisclaimer);
begin
  FDisclaimer := Value;
end;

class procedure TJanuaCustomServer.SetGlobalServerConf(Value: TJanuaServerRecordConf);
begin
  TJanuaApplication.JanuaServerConf := Value;
end;

procedure TJanuaCustomServer.SetIDM(const Value: IJanuaServerDataModule);
begin
  FIDM := Value;
end;

procedure TJanuaCustomServer.SetInTransaction(const Value: boolean);
begin
  FInTransaction := Value;
end;

procedure TJanuaCustomServer.SetNetHTTPRequest(const Value: TNetHTTPRequest);
begin
  FNetHTTPRequest := Value;
end;

procedure TJanuaCustomServer.SeTJanuaCustomMailSender(const Value: IJanuaMailSender);
begin
  FJanuaMailSender := Value;
end;

(*
  procedure TJanuaCustomServer.SetJanuaSchema(const Value: TJanuaSchema);
  begin
  FJanuaSchema := Value;
  end; *)

procedure TJanuaCustomServer.SetJanuaServerSession(const Value: TJanuaServerSession);
begin
  FJanuaServerSession := Value;
end;

procedure TJanuaCustomServer.SetKeepAlive(const Value: boolean);
begin
  FKeepAlive := Value;
  if FKeepAlive and GetActive then
  begin
    self.WriteLog('TJanuaCustomServer.SetKeepAlive start');
    self.CreateDataModule;
    self.AssignDatasets;
    self.FActiveDatasets := true;
    self.WriteLog('TJanuaCustomServer.SetKeepAlive end');
  end;
end;

procedure TJanuaCustomServer.SetOnChangeLanguage(const Value: TNotifyEvent);
begin
  FOnChangeLanguage := Value;
end;

function TJanuaCustomServer.SetSchema(Key: string): boolean;
begin
  // This function has to be implemented by descendant classess
  Result := false;
end;

function TJanuaCustomServer.SetSchema: boolean;
begin
  // This function has to be implemented by descendant classess
  Result := false;
end;

procedure TJanuaCustomServer.SetSearchAddress(const Value: string);
begin
  FSearchAddress := Value;
end;

class procedure TJanuaCustomServer.setServeAddress(Value: string);
begin
  TJanuaApplication.ServerAddress := Value
end;

class procedure TJanuaCustomServer.SetServerPassword(Value: string);
begin
  TJanuaApplication.ServerPassword := Value
end;

class procedure TJanuaCustomServer.SetServerSchema(Value: string);
begin
  TJanuaApplication.ServerSchema := Value
end;

class procedure TJanuaCustomServer.SetServerTCPPort(Value: Word);
begin
  TJanuaApplication.ServerPort := Value
end;

class procedure TJanuaCustomServer.SetServerUrl(Value: string);
begin
  TJanuaApplication.ServerAddress := Value
end;

class procedure TJanuaCustomServer.SetServerUser(Value: string);
begin
  TJanuaApplication.ServerUserName := Value
end;

procedure TJanuaCustomServer.SetSessionID(const Value: Int64);
begin
  self.FJanuaServerSession.Session_id := Value
end;

procedure TJanuaCustomServer.SetSessionKey(const Value: string);
begin
  FJanuaServerSession.Key := Value;
  self.FJanuaServerSession.Key := Value;
  if self.Active then
    self.SetActive(not(Value = ''));
  { TODO : Aggiungere gestione salvataggio variabile su janua Core OS in Server system }
  { ); }
end;

procedure TJanuaCustomServer.SetTestMode(const Value: boolean);
begin
  inherited;
  FTestMode := Value;
end;

class procedure TJanuaCustomServer.SetUrl(Value: string);
begin
  TJanuaApplication.AppName := Value;
end;

procedure TJanuaCustomServer.SetUserProfile(const Value: TJanuaRecordUserProfile);
begin
  FUserProfile := Value;
end;

procedure TJanuaCustomServer.StartTransaction;
begin
  self.FInTransaction := true;
end;

procedure TJanuaCustomServer.TestDataModule;
begin
  self.CreateDataModule;
  FIDM.TestDataModule;
  self.DestroyDataModule;
end;

function TJanuaCustomServer.ActivateDatasets: boolean;
begin
  Result := self.InternalActivateDatasets;
end;

function TJanuaCustomServer.AddFieldsLocally(aLocal, newCds: TFdMemTable): TFdMemTable;
var
  i: integer;
  fieldDef: TFieldDef;
begin
  Result := nil;
  try
    (* aLocal provider is leading... *)
    // newCds.SetProvider(aLocal);
    newCds.FieldDefs.Update;
    (* Find the already existing fields and add them *)
    for i := 0 to Pred(newCds.FieldDefs.Count) do
    begin
      with newCds.FieldDefs[i].CreateField(newCds) do
      begin
        FieldName := aLocal.Fields[i].FieldName;
        Calculated := aLocal.Fields[i].Calculated;
        Required := aLocal.Fields[i].Required;
        Size := aLocal.Fields[i].Size;
        // TODO: Add checking here!
      end;
    end;
    (* Check for additional fields that exist remotely and add them *)
    for i := newCds.FieldDefs.Count to Pred(aLocal.FieldDefs.Count) do
    begin
      fieldDef := aLocal.FieldDefs.Items[i];
      if (fieldDef <> nil) then
      begin
        newCds.FieldDefs.Add(fieldDef.Name, fieldDef.DataType, fieldDef.Size, fieldDef.Required);
        newCds.FieldDefs[Pred(newCds.FieldDefs.Count)].CreateField(newCds);
      end;
    end;

    (* Finally, add the existing aLocal data to the newly created dataset *)
    // AddInLocalData(aLocal, newCds);
    newCds.CreateDataset;
    Result := newCds;
  except
    on e: Exception do
      self.WriteError('TJanuaCustomServer.AddFieldsLocally', e, true);
  end;

end;

procedure TJanuaCustomServer.AddInLocalData(aLocal, newCds: TFdMemTable);
begin
  try
    CopyRecord(aLocal, newCds);
  except
    on e: Exception do
    begin
      self.WriteError('TJanuaCustomServer.AddInLocalData', e, true);
    end;
  end;
end;

function TJanuaCustomServer.CheckSessionKey(aSessionKey: string): boolean;
begin
  Result := false;
  if (aSessionKey <> '') then
  begin
    if (aSessionKey <> FJanuaServerSession.Key) then
    begin
      self.CreateDataModule;
      try
        self.FJanuaServerSession.Key := aSessionKey;
        Result := InternalCheckSessionKey;
        if not Result then
          self.FJanuaServerSession.Clear
        else
          SetUserSessionProfile;
      finally
        self.DestroyDataModule(not self.FKeepAlive);
      end
    end
    else
    begin
      Result := true;
    end
  end
  else
  begin
    self.LastErrorMessage := 'Error session key not set';
    Result := false;
  end;
end;

function TJanuaCustomServer.CheckUp: boolean;
begin
  Result := true;
  self.WriteLog('TJanuaCustomServer.CheckUp Start Result=' + Result.ToString());

  if TJanuaApplication.Verbose then
    self.WriteLog('TJanuaServerJPublic.CheckUp: Check Up');

  self.WriteLog('TJanuaCustomServer.CheckUp End Result=' + Result.ToString());
end;

procedure TJanuaCustomServer.ClearSession;
begin
  self.FUserProfile.Clear;
  self.FJanuaServerSession.Clear;
end;

procedure TJanuaCustomServer.CloneLocalData(aLocal: TDataset; newCds: TFdMemTable);
begin
  // if Assigned(newCds) and Assigned(aLocal) and aLocal.Active and (aLocal.RecordCount > 0) then
  Janua.Core.Functions.CloneDataset(aLocal, newCds);
end;

procedure TJanuaCustomServer.CloseConnection;
begin
  DestroyDataModule(true);
  FCoordinates.Free;
end;

constructor TJanuaCustomServer.Create(AOwner: TComponent);
begin
  inherited;
  // self.FJanuaSchema := TJanuaSchema.Create;
  FJanuaServerObjects := TObjectList<TJanuaServerObject>.Create;
  FCoordinates:= TJanuaCoordinates.Create;
  // aggiungo il server appena creato alle istanze Globali
  FServerInstances.Add(self);
  // copio le impostazioni dalle istanze Globali del server.
end;

procedure TJanuaCustomServer.CloneLocalData(aLocal, newCds: TFdMemTable);
begin
  if Assigned(newCds) and Assigned(aLocal) and (aLocal.RecordCount > 0) then
    Janua.Core.Functions.CloneDataset(aLocal, newCds);
end;

destructor TJanuaCustomServer.Destroy;
begin
  (*
    if Assigned(self.FJanuaSchema) then
    begin
    FJanuaSchema.DisposeOf;
    FJanuaSchema := nil;
    end;
  *)

  FJanuaServerObjects.Free;
  FJanuaServerObjects := nil;

  // 2017-0024 DestroyDataModule
  self.DestroyDataModule(true);
  inherited;
end;

procedure TJanuaCustomServer.DestroyDataModule(Force: boolean);
begin
  if (Force or not self.KeepAlive) and Assigned(self.FIDM) then
    FIDM := nil;
end;

function TJanuaCustomServer.Disclaimer: boolean;
begin
  self.FDisclaimer.About := 'About goes Here';
  self.FDisclaimer.Privacy := 'Privacy goes Here';
  self.FDisclaimer.Terms := 'Terms go Here';
  Result := true;
end;

function TJanuaCustomServer.DisclaimerJson: TJsonObject;
begin
  Result := TJsonObject.Create;
  Result.AddPair('Result', 'True');
  if self.Disclaimer then
    Result.AddPair('Disclaimer', FDisclaimer.AsJsonObject);
end;

procedure TJanuaCustomServer.EndTransaction;
begin
  self.FInTransaction := false;
end;

class function TJanuaCustomServer.getServerAddress: string;
begin
  Result := TJanuaApplication.JanuaServerConf.Address
end;

function TJanuaCustomServer.getSessionID: Int64;
begin
  Result := self.FJanuaServerSession.Session_id;
end;

function TJanuaCustomServer.GetSessionKey: string;
begin
  Result := self.FJanuaServerSession.Key;
end;

class function TJanuaCustomServer.GetUrl: string;
begin
  Result := TJanuaApplication.AppName
end;

function TJanuaCustomServer.InternalActivateDatasets: boolean;
begin
  try
    self.WriteLog('TJanuaCustomServer.InternalActivateDatasets start');
    {
      if not KeepAlive then
      self.KeepAlive := true;
    }
    self.WriteLog('TJanuaCustomServer.InternalActivateDatasets CreateDataModule');
    self.CreateDataModule;
    self.WriteLog('TJanuaCustomServer.InternalActivateDatasets AssignDatasets');
    if not FActiveDatasets then
      AssignDatasets;
    self.FActiveDatasets := true;
    Result := self.FActiveDatasets;
    self.WriteLog('TJanuaCustomServer.InternalActivateDatasets end Result = ' + Result.ToString());
  except
    on e: Exception do
    begin
      self.FActiveDatasets := false;
      Result := false;
      self.WriteError('TJanuaCustomServer.InternalActivateDatasets', e, true);
    end;
  end;
end;

function TJanuaCustomServer.InternalDeActivateDatasets: boolean;
begin
  Result := false;
  try
    self.FActiveDatasets := false;
    // self.KeepAlive := false;
    // rimossa la Keep Alive altrimenti poi non 'gira' piu la grafica
    self.DestroyDataModule(true);
    Result := true;
  except
    on e: Exception do
    begin
      self.WriteError('TJanuaCustomServer.InternalDeActivateDatasets Errore', e,
        not(csDesigning in ComponentState));
    end;
  end;
end;

{ TJanuaWebActionServer }

procedure TJanuaWebActionServer.AddServer(const aServer: TJanuaCustomServer);
begin
  self.FRegisteredServers.Add(aServer.Name, aServer);
end;

constructor TJanuaWebActionServer.Create(AOwner: TComponent);
begin
  inherited;
  self.FRegisteredServers := TDictionary<string, TJanuaCustomServer>.Create;
end;

destructor TJanuaWebActionServer.Destroy;
begin
  if Assigned(FRegisteredServers) then
    FRegisteredServers.Free;
  inherited;
end;

function TJanuaWebActionServer.InternalActivate: boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited InternalActivate;
      if Result then
      begin
        { TODO -cCore.Servers : Implement WebActionServer Activate }
      end;
    except
      on e: Exception do
        RaiseException('InternalActivate', e, self);
    end;

end;

(*
  procedure TJanuaWebActionServer.setPlugs(Value: TDictionary<string, TJanuaSocket>);
  begin
  { TODO -cCore.Servers : Implement WebActionServer setPlugs }
  end;
*)

procedure TJanuaWebActionServer.setRegisteredServers(Value: TDictionary<string, TJanuaCustomServer>);
begin
  if Assigned(Value) then
    self.FRegisteredServers := Value;

end;

procedure TJanuaWebActionServer.TestAllServers;
var
  aServer: Janua.Core.Servers.TJanuaCustomServer;
begin
  for aServer in FRegisteredServers.Values do
    aServer.TestDataModule;
end;

initialization

try
  FServerInstances := TList<TJanuaCustomServer>.Create;
  // Component Instances = TList TJanuaCustomComponent.
except
  on e: Exception do
    RaiseException('Janua.Core.Servers.initialization', e);
end;

finalization

try
  if Assigned(FServerInstances) then
    FServerInstances.Free;
except
  on e: Exception do
    RaiseException('Janua.Core.Servers.finalization', e);
end;

end.
