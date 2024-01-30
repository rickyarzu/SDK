unit Janua.Orm.Dataset.Impl;

interface

uses System.Classes, Spring.Collections, Data.DB, {FireDAC.Comp.Client,}
  // Janua
  Janua.Orm.Dataset.Intf, Janua.Orm.Intf, Janua.Orm.Impl, Janua.Orm.Types, Janua.Server.Intf,
  Janua.Core.Classes;

type
  TJanuaDatasetSerialization = class(TJanuaInterfacedBindableObject, IJanuaDatasetSerialization)
  private
    [weak]
    FRecordSet: IJanuaRecordSet;
    FDataSet: IJanuaVirtualDBDataset;
    FDataSource: TDataSource;
    FObservers: IList<IJanuaDatasetSerialization>;
    [weak]
    FMaster: IJanuaDatasetSerialization;
    FOnBeforeScroll: TNotifyEvent;
    FFetchingRecord: boolean;
    FUpdating: boolean;
    procedure AssignDatasetEvents;
  private
    function GetRecordset: IJanuaRecordSet;
    procedure SetRecordSet(const Value: IJanuaRecordSet);
    function GetDataset: IJanuaVirtualDBDataset;
    procedure SetDataset(const Value: IJanuaVirtualDBDataset);
    function GetDataSource: TDataSource;
    procedure SetDataSource(const Value: TDataSource);
    function SyncBookmark: boolean;

    /// <summary>  Master-Detail Management </summary>
    function GetMaster: IJanuaDatasetSerialization;
    procedure SetMaster(const Value: IJanuaDatasetSerialization);
    // Notify Events
    function GetOnBeforeScroll: TNotifyEvent;
    procedure setOnBeforeScroll(const Value: TNotifyEvent);
    procedure CheckNotNull;
  strict private // GUID Record Management procedures
    FGUIDField: TField;
    FLocalGUID: TGUID;
    function LocateGUID: boolean;
    procedure SyncRecordGUID;
  strict protected
    /// <summary> Creates the Memory Dataset connected to the Recordset </summary>
    function InternalActivate: boolean; override;
  public
    constructor Create; override;
    /// <summary> Creates the IJanuaDBDataset and immediately activates the Dataset </summary>
    constructor Create(aRecorset: IJanuaRecordSet); overload;
    destructor Destroy; override;
  public
    /// <summary> Master-Detail Observers On Scroll Va collegata all'omonimo evento su RecordSet quando
    /// viene impostata la proprieta sul SET o su Create (che deve quindi chiamare 'Set') </summary>
    procedure OnRecordSetScroll(Sender: TObject);
    procedure RegisterObserver(Observer: IJanuaDatasetSerialization);
    procedure UnregisterObserver(Observer: IJanuaDatasetSerialization);
  protected
    /// <summary>Notifies  the Observers where receiving an update from the datasetCRUD</summary>
    procedure UpdateObservers;
  public
    procedure OnPostRecord(aRecord: IJanuaRecord);
    procedure OnDelRecord(aRecord: IJanuaRecord);
    // <summary>Synchronize IJanuaRecord with TDataset After a Scroll Event</summary>
    // <param name="Dataset"> (IJanuaDBDataset) Dataset that trigger After Scroll Event</param>
    procedure AfterScroll(Dataset: IJanuaDBDataset);
    procedure BeforeScroll(Dataset: IJanuaDBDataset);
    // <summary>Before Canceling a Record in DBDataset checks if Record existi in OrmDataset then Deletes it</summary>
    // <param name="Dataset"> (IJanuaDBDataset) Dataset that trigger After Scroll Event</param>
    procedure BeforeCancel(Dataset: IJanuaDBDataset);
    procedure CalcFields(Dataset: IJanuaDBDataset);
    procedure BeforeInsert(Dataset: IJanuaDBDataset);
    procedure BeforeDelete(Dataset: IJanuaDBDataset);
    procedure BeforePost(Dataset: IJanuaDBDataset);
    procedure UpdateData(Sender: TObject);
    procedure NewRecord(Dataset: IJanuaDBDataset);
    // <summary>Synchronizes Dataset Mapped Field Value with IJanuaField </summary>
    // <param name="Sender"> (TObject) The Field's Dataset </param>
    // <param name="Field"> (TField)  The Field connected to change event </param>
    procedure DataChange(Sender: TObject; Field: TField);
    // procedures
    /// <summary> When a new Dataset is set and is not null and is a Virtual Table this
    /// procedure prepare the Field Definitions for The Dataset. </summary>
    /// <exception> Assigned(FRecordset) </exception>
    procedure SetupDataset;
    /// <summary> This procedure 'Fetches' the Current Record from the Underling Dataset. RecordSet must have an Active
    /// Record (at Least). if Dataset Record is not in Insert or Edit or CalcField Mode the Edit-Post Mode is enabled
    /// during the Fetching procedure. </summary>
    procedure FetchRecord;
    procedure SaveRecord;
    procedure FetchRecordSet;
    procedure SaveRecordSet;
    procedure RefreshRecordSet;
    procedure ClearDataSet;
    procedure MasterChange;
    function RecordGUID: TGUID;
  public
    // properties
    property RecordSet: IJanuaRecordSet read GetRecordset write SetRecordSet;
    property Dataset: IJanuaVirtualDBDataset read GetDataset Write SetDataset;
    property DataSource: TDataSource read GetDataSource write SetDataSource;
    property Master: IJanuaDatasetSerialization read GetMaster write SetMaster;
    // Notify Events Manager .......................................................
    property OnBeforeScroll: TNotifyEvent read GetOnBeforeScroll write setOnBeforeScroll;
  end;

  TOrmDatasetFactory = class
  private
    class var FDBDatasetClass: TJanuaDBDatasetClass;
  public
    class function CreateDatasetSerialization(aRecordSet: IJanuaRecordSet): IJanuaDatasetSerialization;
    class function CreateVirtualDataset(aRecordSet: IJanuaRecordSet): IJanuaVirtualDBDataset;
      overload; static;
    class function CreateVirtualDataset(const aEntities: TJanuaEntities): IJanuaVirtualDBDataset;
      overload; static;
    /// <summary> in an Application Janua Vt Dataset can be 'any' Type FDMemTable or Virtual Dataset </summary>
    class procedure SetDBDatasetClass(Value: TJanuaDBDatasetClass); static;
  end;

implementation

uses System.Variants, System.Types, System.SysUtils, System.Math, Spring, Janua.Core.Functions,
  Janua.Core.Types, Janua.Application.Framework;

{ TOrmDatasetFactory }

class function TOrmDatasetFactory.CreateDatasetSerialization(aRecordSet: IJanuaRecordSet)
  : IJanuaDatasetSerialization;
begin
  try
    Guard.CheckNotNull(aRecordSet, 'aRecordSet');
    Result := TJanuaDatasetSerialization.Create(aRecordSet);
  except
    on e: Exception do
      RaiseException('TOrmDatasetFactory.CreateDatasetSerialization', e, nil);
  end;
end;

class function TOrmDatasetFactory.CreateVirtualDataset(aRecordSet: IJanuaRecordSet): IJanuaVirtualDBDataset;
var
  aDataset: TJanuaDBDataset;
begin
  if Assigned(FDBDatasetClass) then
  begin
    aDataset := FDBDatasetClass.CreateWithEntities([aRecordSet.CurrentRecord.Entity]);
    if not Supports(aDataset, IJanuaVirtualDBDataset, Result) then
      raise Exception.Create('TOrmDatasetFactory.CreateVirtualDataset IJanuaVirtualDBDataset not supported');
  end
  else
    raise Exception.Create('TOrmDatasetFactory.CreateVirtualDataset FDBDatasetClass not set');
end;

class function TOrmDatasetFactory.CreateVirtualDataset(const aEntities: TJanuaEntities)
  : IJanuaVirtualDBDataset;
var
  aDataset: TJanuaDBDataset;
begin
  if Assigned(FDBDatasetClass) then
  begin
    aDataset := FDBDatasetClass.CreateWithEntities(aEntities);
    if not Supports(aDataset, IJanuaVirtualDBDataset, Result) then
      raise Exception.Create('TOrmDatasetFactory.CreateVirtualDataset IJanuaVirtualDBDataset not supported');
  end
  else
    raise Exception.Create('TOrmDatasetFactory.CreateVirtualDataset FDBDatasetClass not set');
end;

class procedure TOrmDatasetFactory.SetDBDatasetClass(Value: TJanuaDBDatasetClass);
begin
  FDBDatasetClass := Value;
end;

{ TJanuaDatasetSerialization }

procedure TJanuaDatasetSerialization.AfterScroll(Dataset: IJanuaDBDataset);
begin
  try
    // Checks that IJanuaRecordset is not currently Fetching a Record from dataset or vice-versa
    if Assigned(FDataSet) and not FFetchingRecord then
    begin
      // At first must store the record row GUID
      FLocalGUID := RecordGUID;
      // if Record is empty or null (GUID = NULL) or not already mapped to Dataset then fetches record
      if not SyncBookmark then
        FetchRecord;
    end;
  except
    on e: Exception do
      RaiseException('AfterScroll', e, Self);
  end;
end;

procedure TJanuaDatasetSerialization.BeforeCancel(Dataset: IJanuaDBDataset);
begin
  if (Dataset.State = TDatasetState.dsInsert) and SyncBookmark then
    // se viene cancellato il record che si stava inserendo allora elimino il record attuale.
    FRecordSet.Delete;
end;

procedure TJanuaDatasetSerialization.BeforeDelete(Dataset: IJanuaDBDataset);
begin
  if SyncBookmark then
    FRecordSet.Delete;
end;

procedure TJanuaDatasetSerialization.BeforeInsert(Dataset: IJanuaDBDataset);
begin
  // Before Insert è stato Sostituito da New Record che è piu corretto
end;

procedure TJanuaDatasetSerialization.BeforePost(Dataset: IJanuaDBDataset);
begin
  if not Self.FFetchingRecord then
  begin
    SyncBookmark;
    Self.SaveRecord;
  end;
end;

procedure TJanuaDatasetSerialization.BeforeScroll(Dataset: IJanuaDBDataset);
begin
  // per il momento mi limito a chiamare un Notify-Event
  // esclusivamente nel caso in cui ci siano modifiche al Record SottoStante:

end;

procedure TJanuaDatasetSerialization.CalcFields(Dataset: IJanuaDBDataset);
begin
  // individuare se il Record ha o meno dei campi calcolati e se si aggiornando i valori del record
  // aggiornare anche i valori dei campi calcolati ................................................

end;

procedure TJanuaDatasetSerialization.ClearDataSet;
begin
  if Assigned(FDataSet) and (FDataSet.RecordCount > 0) then
  begin
    FDataSet.EmptyDataSet;
    FLocalGUID := GUID_NULL;
    Guard.CheckTrue(FDataSet.RecordCount = 0, Self.ClassName + '.ClearDataSet ' + sLineBreak + FDataSet.Name +
      ' not clear: ' + FDataSet.RecordCount.ToString);
  end;
end;

constructor TJanuaDatasetSerialization.Create;
begin
  FDataSource := TDataSource.Create(nil);
end;

constructor TJanuaDatasetSerialization.Create(aRecorset: IJanuaRecordSet);
begin
  Create;
  FObservers := TCollections.CreateList<IJanuaDatasetSerialization>;
  FFetchingRecord := False;
  SetRecordSet(aRecorset);
  Activate;
end;

function TJanuaDatasetSerialization.SyncBookmark: boolean;
var
  aGUID: TGUID;
begin
  aGUID := RecordGUID;
  Result := (aGUID <> System.Types.GUID_NULL) and FRecordSet.SearchByGUID(aGUID);
  {
    if FRecordSet.ItemIndex <> GetRecordID then
    self.FRecordSet.ItemIndex := GetRecordID;
  }
end;

procedure TJanuaDatasetSerialization.SyncRecordGUID;
begin
  try
    if Assigned(FDataSet) and (FLocalGUID <> GUID_NULL) and Assigned(FGUIDField) then
      if not LocateGUID then
      begin
        FDataSet.Append;
        FetchRecord;
      end;
  except
    on e: Exception do
      RaiseException('SyncRecordGUID', e, Self);
  end;
end;

procedure TJanuaDatasetSerialization.DataChange(Sender: TObject; Field: TField);
var
  aField: IJanuaField;
begin
  aField := FRecordSet.CurrentRecord.FieldByName(Field.FieldName);
  if aField.AsVariant <> Field.Value then
    aField.AsVariant := Field.Value;
end;

destructor TJanuaDatasetSerialization.Destroy;
begin
  if Assigned(FRecordSet) then
    try
      // 2018-0053 Orm Master-Detail Master Detail Scroll Refresh in ORM
      { FRecordSet.OnScroll := nil;
        FRecordSet.OnRecordPost := nil;
        FRecordSet.OnClearDataset := nil; }
      FRecordSet := nil;
    except
      on e: Exception do
        LogException('Destroy', e, Self);
    end;

  FreeAndNIl(FDataSource);
  inherited;
end;

procedure TJanuaDatasetSerialization.FetchRecord;
var
  i: integer;
  lField: TField;
begin
  try

    Guard.CheckNotNull(FRecordSet, 'TJanuaDatasetSerialization.FetchRecord Recorset is null');
    Guard.CheckNotNull(FDataSet, 'TJanuaDatasetSerialization.FetchRecord FDataSet is null');
    // in primis come FetchRecord Aggiorno il campo GUID.

    lField := nil;
    try
      FFetchingRecord := True;

      if not(FDataSet.State in dsEditModes) then
        FDataSet.Edit;

      FGUIDField.Value := FRecordSet.CurrentRecord.GUID.ToString;

      for i := 0 to Pred(FRecordSet.CurrentRecord.FieldCount) do
        if FDataSet.GetFieldByName(FRecordSet.CurrentRecord.Fields[i].DBField, lField) then
          lField.Value := FRecordSet.CurrentRecord.Fields[i].GetAsVariant;

      FDataSet.Post;
    finally
      FFetchingRecord := False;
    end;
  except
    on e: Exception do
      RaiseException('FetchRecord', e, Self);
  end;
end;

procedure TJanuaDatasetSerialization.FetchRecordSet;
var
  i, j: integer;
begin
  try
    CheckNotNull;
    try
      FFetchingRecord := True;
      ClearDataSet;
      Guard.CheckTrue(FDataSet.RecordCount = 0, ClassName + '.FetchRecordSet FDataSet not Cleared');
      if FRecordSet.RecordCount > 0 then
        try
          FUpdating := True;
          FRecordSet.First;
          while not Self.FRecordSet.Eof do
          begin
            FDataSet.Append;
            FetchRecord;
            FRecordSet.Next
          end;
        finally
          FUpdating := False;
        end;
    finally
      FFetchingRecord := False;
    end;

    i := FRecordSet.RecordCount;
    j := FDataSet.RecordCount;

    Guard.CheckTrue(i = j, Format('%s.FetchRecordSet Record Count Differs: %d/%d ', [ClassName, i, j]));
  except
    on e: Exception do
      RaiseException('FetchRecordSet', e, Self);
  end;
end;

function TJanuaDatasetSerialization.GetDataSource: TDataSource;
begin
  Result := Self.FDataSource
end;

function TJanuaDatasetSerialization.GetMaster: IJanuaDatasetSerialization;
begin
  Result := Self.FMaster
end;

function TJanuaDatasetSerialization.GetOnBeforeScroll: TNotifyEvent;
begin
  Result := FOnBeforeScroll
end;

function TJanuaDatasetSerialization.GetRecordset: IJanuaRecordSet;
begin
  Result := Self.FRecordSet
end;

function TJanuaDatasetSerialization.InternalActivate: boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        // Initialization Requires a Recordset to use as a Model
        Assert(Assigned(FRecordSet), 'TJanuaDatasetSerialization.InternalActivate FRecordSet is nil');
        // Dataset can be 'externally connected' or created internally if no Dataset is passed.
        if not Assigned(FDataSet) then
          SetDataset(TOrmDatasetFactory.CreateVirtualDataset(FRecordSet));
        // When the work is done initialization can Fetch the Recordset.
        FetchRecordSet;
        AssignDatasetEvents;
        Result := True;
      end;
    except
      on e: Exception do
        RaiseException('Initialize', e, Self);
    end;
end;

function TJanuaDatasetSerialization.LocateGUID: boolean;
var
  lGUID: string;
begin
  Result := False;
  try
    Result := (FGUIDField.AsGuid = FLocalGUID);
    if not Result then
    begin
      lGUID := FLocalGUID.ToString;
      Result := FDataSet.Locate('jguid', lGUID, []);
    end;
  except
    on e: Exception do
      RaiseException('LocateGUID', e, Self);
  end;
end;

procedure TJanuaDatasetSerialization.MasterChange;
begin
  Self.RefreshRecordSet;
end;

procedure TJanuaDatasetSerialization.NewRecord(Dataset: IJanuaDBDataset);
begin
  try
    if not FFetchingRecord then
    begin
      // per pria cosa in 'parallelo' a New Record faccio un Append del nuovo Record anche su RecordSet
      FRecordSet.Append;
      // dopodichò avvio una operazione di Fetching del Record creato verso il Dataset per avere i Default
      FFetchingRecord := True;
      Self.FetchRecord;
      FFetchingRecord := False;
    end;
  except
    on e: Exception do
      RaiseException('NewRecord', e, Self);
  end
end;

procedure TJanuaDatasetSerialization.OnDelRecord(aRecord: IJanuaRecord);
begin

end;

procedure TJanuaDatasetSerialization.OnPostRecord(aRecord: IJanuaRecord);
begin
  if Assigned(Self) and Assigned(FDataSet) and Assigned(aRecord) then
    try
      FUpdating := True;
      try
        FFetchingRecord := True;
        FDataSet.BeginScroll(False);
        try
          FLocalGUID := aRecord.GUID;
          if LocateGUID then
            FDataSet.Edit
          else
            FDataSet.Append;
          FetchRecord;
        finally
          FFetchingRecord := False;
        end;
      finally
        FUpdating := False;
        FDataSet.EndScroll;
      end;
    except
      on e: Exception do
        RaiseException('OnPostRecord', e, Self);
    end;
end;

procedure TJanuaDatasetSerialization.OnRecordSetScroll(Sender: TObject);
begin
  if Assigned(Self) and Assigned(FRecordSet) then
    try
      if FLocalGUID <> FRecordSet.CurrentRecord.GUID then
      begin
        FLocalGUID := FRecordSet.CurrentRecord.GUID;
        if not FUpdating then
          SyncRecordGUID;
        UpdateObservers;
      end;
    except
      on e: Exception do
        RaiseException('OnRecordSetScroll', e, Self);
    end
end;

function TJanuaDatasetSerialization.GetDataset: IJanuaVirtualDBDataset;
begin
  Result := FDataSet
end;

function TJanuaDatasetSerialization.RecordGUID: TGUID;
begin
  if Assigned(FGUIDField) then
    Result := FGUIDField.AsGuid
  else
    Result := System.Types.GUID_NULL;
  {
    FDataSet.FieldByName('jguid').AsString <> '' then
    Result := System.SysUtils.StringToGUID(FDataSet.FieldByName('jguid').AsString)
    else
    Result := System.Types.GUID_NULL
  }
end;

procedure TJanuaDatasetSerialization.AssignDatasetEvents;
begin
  {
    procedure UpdateData(Sender: TObject);
    procedure DataChange(Sender: TObject; Field: TField);
    procedure NewRecord(Dataset: TDataset);
  }
  // 2018-0054 Setup Dataset Procedura che collega gli eventi del Dataset al RecordSet
  FDataSet.OnCalcFields := CalcFields;
  FDataSet.AfterScroll := AfterScroll;
  FDataSet.BeforeCancel := BeforeCancel;
  FDataSet.BeforeInsert := BeforeInsert;
  FDataSet.BeforePost := BeforePost;
  FDataSet.BeforeDelete := BeforeDelete;
  FDataSet.OnNewRecord := NewRecord;
end;

procedure TJanuaDatasetSerialization.CheckNotNull;
begin
  Guard.CheckNotNull(FRecordSet, 'TJanuaDatasetSerialization.FetchRecordSet, FRecordSet is null');
  Guard.CheckNotNull(FDataSet, 'TJanuaDatasetSerialization.FetchRecordSet, FDataSet is null');
end;

procedure TJanuaDatasetSerialization.RefreshRecordSet;
begin
  Guard.CheckNotNull(Self.FRecordSet, 'TJanuaDatasetSerialization.RefreshRecordSet Recordset is Null');
  Guard.CheckNotNull(Self.FDataSet, 'TJanuaDatasetSerialization.RefreshRecordSet FDataSet is Null');
  FetchRecordSet;

end;

procedure TJanuaDatasetSerialization.RegisterObserver(Observer: IJanuaDatasetSerialization);
begin
  Self.FObservers.Add(Observer)
end;

procedure TJanuaDatasetSerialization.SaveRecord;
var
  i: integer;
  aField: TField;
  r: IJanuaRecord;
begin
  try
    Guard.CheckNotNull(Self.FRecordSet, 'TJanuaDatasetSerialization.SaveRecord Recorset is null');
    Guard.CheckNotNull(Self.FDataSet, 'TJanuaDatasetSerialization.SaveRecord FDataSet is null');
    SyncBookmark;
    r := RecordSet.CurrentRecord;

    for i := 0 to Pred(r.FieldCount) do
      if FDataSet.GetFieldByName(r.Fields[i].DBField, aField) then
        if aField.AsVariant <> r.Fields[i].AsVariant then
          r.Fields[i].AsVariant := aField.AsVariant;
  except
    on e: Exception do
      RaiseException('SaveRecord', e, Self);
  end
end;

procedure TJanuaDatasetSerialization.SaveRecordSet;
begin
  try
    FDataSet.First;
    while not Self.FDataSet.Eof do
      SaveRecord; // contiene anche un syncDataset
  except
    on e: Exception do
      RaiseException('SaveRecordSet', e, Self);
  end
end;

procedure TJanuaDatasetSerialization.SetDataSource(const Value: TDataSource);
begin
  Self.FDataSource := Value;
  Self.FDataSource.Dataset := FDataSet.Dataset
end;

procedure TJanuaDatasetSerialization.SetMaster(const Value: IJanuaDatasetSerialization);
begin
  if Value <> Self.FMaster then
  begin
    if Assigned(Self.FMaster) then
      FMaster.UnregisterObserver(Self);

    if Assigned(Value) then
      Value.RegisterObserver(Self);

    Self.FMaster := Value;
  end;

end;

procedure TJanuaDatasetSerialization.setOnBeforeScroll(const Value: TNotifyEvent);
begin
  FOnBeforeScroll := Value;
end;

procedure TJanuaDatasetSerialization.SetRecordSet(const Value: IJanuaRecordSet);
begin
  try
    FRecordSet := Value;
    if Assigned(FRecordSet) then
    begin
      // 2018-0053 Orm Master-Detail Master Detail Scroll Refresh in ORM
      FRecordSet.OnScroll := OnRecordSetScroll;
      FRecordSet.OnRecordPost := OnPostRecord;
      FRecordSet.OnClearDataset := ClearDataSet;
    end;
  except
    on e: Exception do
      RaiseException('SetRecordSet', e, Self);
  end
end;

procedure TJanuaDatasetSerialization.SetDataset(const Value: IJanuaVirtualDBDataset);
begin
  try
    if FDataSet <> Value then
    begin
      FDataSet := Value;
      if Assigned(FDataSet) then
        SetupDataset;
      FDataSource.Dataset := FDataSet.Dataset;
    end;
  except
    on e: Exception do
      RaiseException('SetDataset', e, Self);
  end;
end;

procedure TJanuaDatasetSerialization.SetupDataset;
begin
  try
    Guard.CheckNotNull(Self.FRecordSet, 'TJanuaDatasetSerialization.SetupDataset Recorset is null');
    Guard.CheckNotNull(Self.FDataSet, 'TJanuaDatasetSerialization.SetupDataset FDataSet is null');
    FDataSet.ClearDetails;
    if FDataSet.FieldCount = 0 then
      FDataSet.CreateFields(FRecordSet.CurrentRecord);
    FDataSet.Open;
    FGUIDField := FDataSet.GUIDField;
  except
    on e: Exception do
      RaiseException('SetupDataset', e, Self);
  end;
end;

procedure TJanuaDatasetSerialization.UnregisterObserver(Observer: IJanuaDatasetSerialization);
begin

end;

procedure TJanuaDatasetSerialization.UpdateData(Sender: TObject);
// Event from TDataSource ......................................
begin

end;

procedure TJanuaDatasetSerialization.UpdateObservers;
var
  i: integer;
begin
  if Self.FObservers.Count > 0 then
    for i := 0 to Pred(FObservers.Count) do
      FObservers[i].MasterChange;
end;

{ TOrmDatasetFactory }
(*
  class function TOrmDatasetFactory.CreateDatasetSerialization(aRecordSet: IJanuaRecordSet)
  : IJanuaDatasetSerialization;
  begin
  try
  Guard.CheckNotNull(aRecordSet, 'aRecordSet');
  Result := TJanuaDatasetSerialization.Create(aRecordSet);
  except
  on e: Exception do
  RaiseException('TOrmDatasetFactory.CreateDatasetSerialization', e, nil);
  end;
  end;
*)

(*
  class function TOrmDatasetFactory.CreateVirtualDataset(aRecordSet: IJanuaRecordSet): IJanuaVirtualDBDataset;
  var
  aDataset: TJanuaDBDataset;
  begin
  if Assigned(FDBDatasetClass) then
  begin
  aDataset := FDBDatasetClass.CreateWithEntities([aRecordSet.CurrentRecord.Entity]);
  if not Supports(aDataset, IJanuaVirtualDBDataset, Result) then
  raise Exception.Create('TOrmDatasetFactory.CreateVirtualDataset IJanuaVirtualDBDataset not supported');
  end
  else
  raise Exception.Create('TOrmDatasetFactory.CreateVirtualDataset FDBDatasetClass not set');
  end;

  class procedure TOrmDatasetFactory.SetDBDatasetClass(Value: TJanuaDBDatasetClass);
  begin
  FDBDatasetClass := Value;
  end;
*)

end.
