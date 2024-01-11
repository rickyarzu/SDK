unit Janua.Core.DB;

interface

{$I JANUACORE.INC}

uses
  // System Libraries ..............................................
  System.IOUtils, System.SysUtils, Generics.Collections, System.Math, System.Classes,
  // DB Libraries
  Data.DB, FireDAC.Comp.Client,
  // JanuaProject
  Janua.Core.Classes, Janua.Core.Functions, Janua.Core.Json, Janua.Core.DB.Intf, Janua.Core.DB.Types,
  Janua.Core.Types, Janua.Core.Conf, Janua.Core.Export.Intf, Janua.Core.Entities, Janua.Orm.Intf,
  // Json Xml Libraries
  System.Json, System.JSONConsts;

type
  TJanuaCustomSessionSource = class(TInterfacedObject)
  public
    function GetDate: TDAteTime; virtual;
    function GetTime: TDAteTime; virtual;
  end;

  TJanuaCustomDatasetFunctions = class(TJanuaInterfacedObject, IJanuaDatasetFunctions)
  private
    FOwner: TComponent;
  protected
    HasErrors: boolean;
    FActive: boolean;
    function GetOwner: TComponent;
    procedure SetOwner(const Value: TComponent); virtual;
    procedure WriteLog(const aLog: string);
    procedure WriteError(const aError: string; e: Exception);
  public
    procedure StoreRecordToProcedure(const aRecord: IJanuaRecord; const aProcObject: TDataset;
      const aRefreshRecord: boolean); virtual; abstract;
    procedure PostDataset(const aDataset: TDataset); virtual; abstract;
    function DatasetToXml(const aDataset: TDataset): string; virtual; abstract;
    procedure OpenDataset(const aDataset: TDataset; DoRaise: boolean = true); virtual; abstract;
    procedure ReOpenDataset(const aDataset: TDataset); virtual; abstract;
    procedure TestDatasets; overload; virtual; abstract;
    procedure TestDatasets(aParent: TComponent); overload; virtual; abstract;
    procedure PrepareDataset(const aDataset: TDataset); virtual; abstract;
    procedure ExecuteProcedure(aProcedure: TDataset); virtual; abstract;
    procedure OpenThreadedDataset(aDataset: TDataset; aDatasource: TDataSource = nil;
      aDoRaise: boolean = true; aCallBackProc: TProc = nil); virtual; abstract;
    procedure CloseAllDatasets(aParent: TComponent); overload;
    procedure CloseAllDatasets; overload;
    function Activate(const aOwner: TComponent): boolean; overload;
  public
    constructor Create; override;
  end;
  (*
    TJanuaDBCustomServerFunctions = class(TJanuaCustomDatasetFunctions, IJanuaServerFunctions)
    public
    procedure SetUserProfile(aQuery: TDataset; var aUser: TJanuaRecordUserProfile); virtual; abstract;
    function CheckUser(var Count: Integer; p_username, p_email: string; spUserTest: TDataset = nil): boolean;
    virtual; abstract;
    function CheckUserSocial(p_social_id, p_social_kind: string; spUserTest: TDataset = nil): boolean;
    virtual; abstract;
    function GetCountryByName(cName: string; qryCountries: TDataset): Integer; virtual; abstract;
    function GetCountryByCode(cCode: string; qryCountries: TDataset): Integer; virtual; abstract;
    function GetCountryByID(cID: Integer; qryCountries: TDataset): boolean; virtual; abstract;
    procedure ClearCountriesParams(qryCountries: TDataset); virtual; abstract;
    end;
  *)

  TJanuaServerFunctions = class(TJanuaCoreComponent)
  private
    FServerFunction: IJanuaServerFunctions;
  protected
    function GetServerFunction: IJanuaServerFunctions;
  public
    constructor Create(aOwner: TComponent); override;
    property ServerFunctions: IJanuaServerFunctions read GetServerFunction;
  end;

type
  TJanuaCustomDBConnection = class(TInterfacedObject, IJanuaDBConnection)
  private
    FLastErrorMessage: string;
    function GetServerConf: TJanuaServerRecordConf;
    procedure SetServerConf(const Value: TJanuaServerRecordConf);
    function GetLastErrorMessage: string;
  public
    // the Test Connection Function needs to be implemented in the inherited class regarding the DB Type Connection....
    function TestConnection: boolean;
    property ServerConf: TJanuaServerRecordConf read GetServerConf write SetServerConf;
  end;

type
  TJanuaDBNavController = class(TJanuaCoreComponent)
  private
    procedure SetDetailDataset(const Value: TDataset);
    procedure SetMasterDataset(const Value: TDataset);
  protected
    FDetailDataset: TDataset;
    FMasterDataset: TDataset;
    // basic procedures for the Dataset management .....................................................................
    function InternalCheck: boolean; Virtual;
    procedure InternalNext; Virtual;
    procedure InternalPrev; Virtual;
    procedure InternalFirst; Virtual;
    procedure InernalLast; Virtual;
  public
    procedure Next(Sender: TObject);
    procedure Prev(Sender: TObject);
    procedure First(Sender: TObject);
    procedure Last(Sender: TObject);
  public
    procedure FlexcelExport; virtual; abstract;
  published
    property MasterDataset: TDataset read FMasterDataset write SetMasterDataset;
    property DetailDataset: TDataset read FDetailDataset write SetDetailDataset;
  end;

  TCustomOpenThread = class(TThread)
  private
    FException: Exception;
    FaDatasource: TDataSource;
    FCallBackProc: TProc;
    FDoRaise: boolean;
    procedure DoHandleException;
    procedure SetaDataset(const Value: TDataset);
    procedure SetaDatasource(const Value: TDataSource);
    procedure SetaCallBackProc(const Value: TProc);
    procedure SetDoRaise(const Value: boolean);
  strict protected
    FaDataset: TDataset;
    procedure OpenThreaded; virtual; abstract;
  protected
    procedure HandleException; virtual;
    procedure Execute; override;
  public
    constructor Create(Suspended: boolean; vDataset: TDataset; vDatasource: TDataSource;
      aCallBackProc: TProc = nil); overload; virtual;
    property aDataset: TDataset read FaDataset write SetaDataset;
    property aDatasource: TDataSource read FaDatasource write SetaDatasource;
    property CallBackProc: TProc read FCallBackProc write SetaCallBackProc;
    property DoRaise: boolean read FDoRaise write SetDoRaise;
  end;

type
  TJanuaSearchParam = class(TInterfacedObject, IJanuaSearchParam)
  private
    FParamType: TJanuaFieldType;
    FName: string;
    FTitle: string;
    function GetParamType: TJanuaFieldType;
    function GetName: string;
    function GetTitle: string;
    procedure SetName(const Value: string);
    procedure SetParamType(const Value: TJanuaFieldType);
    procedure SetTitle(const Value: string);
  public
    property Name: string read GetName write SetName;
    property Title: string read GetTitle write SetTitle;
    property ParamType: TJanuaFieldType read GetParamType write SetParamType;
  end;

type
  TRecDatasetExport = record
  private
    FDataset: TDataset;
    FFieldList: TRecFieldDefList;
    procedure SetDataset(const Value: TDataset);
    procedure SetFieldList(const Value: TRecFieldDefList);
  public
    constructor Create(aList: TRecFieldDefList; aDataset: TDataset = nil);
  public
    property Dataset: TDataset read FDataset write SetDataset;
    property FieldList: TRecFieldDefList read FFieldList write SetFieldList;
    function Generate(aEngine: IJanuaDatasetExportEngine): string;
  end;

  TDatasetStringWriter = record
    class function ElaborateRecord(const aDataset: TDataset; const aTemplate: string;
      aLogProc: TMessageLogProc = nil): string; static;
    class function ElaborateDataset(const aDataset: TDataset; const aTemplate: string;
      aLogProc: TMessageLogProc = nil): TStringArray; static;
  end;

  TDBOpenThread = class(TCustomOpenThread)
  protected
    procedure OpenThreaded; override;
  end;

procedure OpenDBThreadedDataset(aDataset: TDataset; aDatasource: TDataSource = nil; aDoRaise: boolean = true;
  aCallBackProc: TProc = nil);

var
  DBConnection: TJanuaCustomDBConnection;

implementation

uses Janua.Application.Framework, Spring, System.StrUtils;

procedure OpenDBThreadedDataset(aDataset: TDataset; aDatasource: TDataSource; aDoRaise: boolean;
  aCallBackProc: TProc);
begin
  // Create an instance of the TMyThread
  with TDBOpenThread.Create(true, aDataset, aDatasource, aCallBackProc) do
  begin
    DoRaise := aDoRaise;
    FreeOnTerminate := true;
    Start;
  end;
end;

{ TJanuaCustomServerFunctions }

constructor TJanuaServerFunctions.Create(aOwner: TComponent);
begin
  if TJanuaApplicationFactory.TryGetInterface(IJanuaServerFunctions, FServerFunction) then
    try
      FServerFunction.Owner := aOwner
    except
      on e: Exception do
      begin
        WriteError('TJanuaCustomServerFunctions.Create Errore: ', e);
      end;
    end;
end;

{ TJanuaDBNavController }

procedure TJanuaDBNavController.First(Sender: TObject);
begin
  InternalFirst
end;

procedure TJanuaDBNavController.InernalLast;
begin

end;

function TJanuaDBNavController.InternalCheck: boolean;
begin
  if not Assigned(self.FMasterDataset) then
  begin
    JShowError
      ('Attenzione barra non utilizzabile, manca collegamento dati. Segnalate questo errore all''assistenza');
    Result := False
  end
  else
    Result := true;
end;

procedure TJanuaDBNavController.InternalFirst;
begin
  if self.InternalCheck then
    self.FMasterDataset.First;
end;

procedure TJanuaDBNavController.InternalNext;
begin

end;

procedure TJanuaDBNavController.InternalPrev;
begin

end;

procedure TJanuaDBNavController.Last(Sender: TObject);
begin

end;

procedure TJanuaDBNavController.Next(Sender: TObject);
begin

end;

procedure TJanuaDBNavController.Prev(Sender: TObject);
begin

end;

procedure TJanuaDBNavController.SetDetailDataset(const Value: TDataset);
begin
  FDetailDataset := Value;
end;

procedure TJanuaDBNavController.SetMasterDataset(const Value: TDataset);
begin
  FMasterDataset := Value;
end;

{ TJanuaCustomDBConnection }

function TJanuaCustomDBConnection.GetLastErrorMessage: string;
begin
  Result := self.FLastErrorMessage;
end;

function TJanuaCustomDBConnection.GetServerConf: TJanuaServerRecordConf;
begin
  Result := TJanuaApplication.JanuaServerConf;
end;

procedure TJanuaCustomDBConnection.SetServerConf(const Value: TJanuaServerRecordConf);
begin
  TJanuaApplication.JanuaServerConf := Value;
end;

function TJanuaCustomDBConnection.TestConnection: boolean;
var
  LDataModule: IDmJanuaCoreDBConnections;
begin
  Result := False;
  if TJanuaApplicationFactory.TryGetDataModule(IDmJanuaCoreDBConnections, nil, LDataModule) then
    try
      Result := LDataModule.TestConnection;
      FLastErrorMessage := LDataModule.LastErrorMessage;
      if not Result then
        CreateException('TestConnection', LDataModule.LastErrorMessage, self);
    finally
      LDataModule.Component.Free;
    end
  else
    FLastErrorMessage := 'IDmJanuaCoreDBConnections not found';
end;

{ TJanuaCustomSessionSource }

function TJanuaCustomSessionSource.GetDate: TDAteTime;
begin
  Result := Date();
end;

function TJanuaCustomSessionSource.GetTime: TDAteTime;
begin
  Result := Now();
end;

{ TOpenThread }

procedure TDBOpenThread.OpenThreaded;
begin
  try
    TMonitor.Enter(FaDataset);
    try
      FaDataset.Close;
      FaDataset.Open;
    finally
      TMonitor.Exit(FaDataset);
    end;
  except
    on e: Exception do
      raise Exception.Create(ClassName + '.OpenProcedure Dataset: ' + FaDataset.Name + 'Error: ' + e.ClassName
        + sLineBreak + e.Message);
  end
end;

{ TCustomOpenThread }

constructor TCustomOpenThread.Create(Suspended: boolean; vDataset: TDataset; vDatasource: TDataSource;
  aCallBackProc: TProc);
begin
  inherited Create(Suspended);
  FCallBackProc := aCallBackProc;
  self.FDoRaise := true;
  self.FaDataset := vDataset;
  self.FaDatasource := vDatasource;
end;

procedure TCustomOpenThread.DoHandleException;
begin
  // Cancel the mouse capture    // VCL method .......................
  // if GetCapture <> 0 then SendMessage(GetCapture, WM_CANCELMODE, 0, 0);
  // Now actually show the exception
  // if FException is Exception then
  // Application.ShowException(FException)
  // else
  System.SysUtils.ShowException(FException, nil);
  if self.FaDatasource <> nil then
    self.FaDatasource.Enabled := true;
end;

procedure TCustomOpenThread.Execute;
begin
  inherited;
  FException := nil;
  try
    Guard.CheckNotNull(aDataset, self.ClassName + '.Execute FaDataset is nil');
    // Guard.CheckTrue(Assigned(FOpenProcedure), self.ClassName + '.Execute Open Procedure is nil');
    Synchronize(
      procedure
      begin
        MonitorEnter(aDataset);
        try
          if FaDatasource <> nil then
            FaDatasource.Enabled := False;
          // Esegue la procedura Open Procedure indicata dal Descendat
          OpenThreaded;
          // se ? assegnata una procedura di CallBack la esegue sempre all'interno di Synchronize
          if Assigned(FCallBackProc) then
            FCallBackProc;
          if self.FaDatasource <> nil then
            self.FaDatasource.Enabled := true;
        finally
          MonitorExit(aDataset);
        end;
      end);
  except
    HandleException;
  end;
end;

procedure TCustomOpenThread.HandleException;
begin
  // This function is virtual so you can override it
  // and add your own functionality.
  FException := Exception(ExceptObject);
  try
    // Don't show EAbort messages
    if not(FException is EAbort) then
      Synchronize(DoHandleException);
  finally
    FException := nil;
  end;
end;

procedure TCustomOpenThread.SetaCallBackProc(const Value: TProc);
begin
  FCallBackProc := Value;
end;

procedure TCustomOpenThread.SetaDataset(const Value: TDataset);
begin
  FaDataset := Value;
end;

procedure TCustomOpenThread.SetaDatasource(const Value: TDataSource);
begin
  FaDatasource := Value;
end;

procedure TCustomOpenThread.SetDoRaise(const Value: boolean);
begin
  FDoRaise := Value;
end;

{ TRecDatasetExport }

constructor TRecDatasetExport.Create(aList: TRecFieldDefList; aDataset: TDataset);
begin
  self.FFieldList := aList;
  self.FDataset := aDataset;
end;

function TRecDatasetExport.Generate(aEngine: IJanuaDatasetExportEngine): string;
begin

end;

procedure TRecDatasetExport.SetDataset(const Value: TDataset);
begin
  FDataset := Value;
end;

procedure TRecDatasetExport.SetFieldList(const Value: TRecFieldDefList);
begin
  FFieldList := Value;
end;

function TJanuaServerFunctions.GetServerFunction: IJanuaServerFunctions;
begin
  Result := FServerFunction;
end;

{ TJanuaCustomDatasetFunctions }

function TJanuaCustomDatasetFunctions.Activate(const aOwner: TComponent): boolean;
begin
  SetOwner(aOwner);
  Result := Activate;
end;

procedure TJanuaCustomDatasetFunctions.CloseAllDatasets;
var
  i: Integer;
begin
  if Assigned(FOwner) then
  begin
    for i := 0 to FOwner.ComponentCount - 1 do
      if FOwner.Components[i] is TDataset then
        (FOwner.Components[i] as TDataset).Close;
  end;

end;

constructor TJanuaCustomDatasetFunctions.Create;
begin
  inherited;
  FActive := False;
end;

procedure TJanuaCustomDatasetFunctions.CloseAllDatasets(aParent: TComponent);
begin
  self.FOwner := aParent;
  CloseAllDatasets;
end;

function TJanuaCustomDatasetFunctions.GetOwner: TComponent;
begin
  Result := self.FOwner
end;

procedure TJanuaCustomDatasetFunctions.SetOwner(const Value: TComponent);
begin
  FOwner := Value;
end;

procedure TJanuaCustomDatasetFunctions.WriteError(const aError: string; e: Exception);
begin
  TJanuaLogger.LogError('Log', aError, self, e);
end;

procedure TJanuaCustomDatasetFunctions.WriteLog(const aLog: string);
begin
  TJanuaLogger.LogRecord('Log', aLog, self);
end;

{ TJanuaSearchParam }

function TJanuaSearchParam.GetName: string;
begin
  Result := FName
end;

function TJanuaSearchParam.GetParamType: TJanuaFieldType;
begin
  Result := self.FParamType
end;

function TJanuaSearchParam.GetTitle: string;
begin
  Result := self.FTitle
end;

procedure TJanuaSearchParam.SetName(const Value: string);
begin
  FName := Value;
end;

procedure TJanuaSearchParam.SetParamType(const Value: TJanuaFieldType);
begin
  FParamType := Value;
end;

procedure TJanuaSearchParam.SetTitle(const Value: string);
begin
  FTitle := Value;
end;

{ TDatasetStringWriter }

class function TDatasetStringWriter.ElaborateDataset(const aDataset: TDataset; const aTemplate: string;
aLogProc: TMessageLogProc): TStringArray;
begin
  if Assigned(aDataset) and aDataset.Active and (aDataset.RecordCount > 0) then
  begin
    var
    i := -1;
    aDataset.First;
    while not aDataset.Eof do
    begin
      Inc(i);
      SetLength(Result, i + 1);
      Result[i] := ElaborateRecord(aDataset, aTemplate, aLogProc);
      aDataset.Next;
    end;
  end;
end;

class function TDatasetStringWriter.ElaborateRecord(const aDataset: TDataset; const aTemplate: string;
aLogProc: TMessageLogProc): string;
var
  lField: TField;
  lProc: boolean;
begin
  Result := aTemplate;
  var
  lLog := Assigned(aLogProc);

  if lLog then
    aLogProc('ElaborateRecord', aDataset.Name, nil);

  for lField in aDataset.Fields do
  begin
    var
    lFieldTag := '$$' + lField.FieldName.ToLower + '$$';
    var
    lPos := Pos(lFieldTag, Result) > 0;
    if lPos then
    begin
      var
      lFieldValue := lField.AsString;
      Result := StringReplace(Result, lFieldTag, lFieldValue, [rfIgnoreCase, rfReplaceAll]);
    end;

    if lLog then
      aLogProc('ElaborateRecord', lFieldTag + IfThen(lPos, ' : found', ' : not found'), nil);

  end;
end;

end.
