unit Janua.ViewModels.Settings.Impl;

interface

uses Spring.Collections, System.SysUtils, Spring, Janua.Anagraph.ViewModel.Intf,
  Janua.Core.Classes, Janua.ViewModels.Settings.Intf, JOrm.Anagraph.Group.Intf, Janua.Core.Types;

type
  TJanuaAnagraphModelsContainer = class(TJanuaInterfacedObject, IJanuaAnagraphModelsContainer)
  private
    FAnagraphModels: IDictionary<Integer, IJanuaDBAnagraphModel>;
    [weak]
    FSettings: IJanuaViewModelSettings;
  public
    constructor Create; override;
    constructor Create(const aSettings: IJanuaViewModelSettings); overload;
    procedure PrepareAllModels(aCallbackProc: TProc; const Async: boolean = True);
    function AddSearchModel(const aGroupID: Integer): IJanuaDBAnagraphModel;
    function TryGetModel(const aGroupID: Integer; out aModel: IJanuaDBAnagraphModel): boolean;
  end;

  TJanuaViewModelSettings = class(TJanuaInterfacedObject, IJanuaViewModelSettings)
  private
    FAnagGroups: IAnagGroups;
    FAnagModelContainer: IJanuaAnagraphModelsContainer;
  protected
    function GetAnagGroups: IAnagGroups;
    procedure SetAnagGroups(const Value: IAnagGroups);
    function GetAnagraphModelsContainer: IJanuaAnagraphModelsContainer;
    procedure SetAnagraphModelsContainer(const Value: IJanuaAnagraphModelsContainer);
  strict protected
    function InternalActivate: boolean; override;
  public
    constructor Create; override;
    destructor Destroy; override;
  public
    property AnagraphModelsContainer: IJanuaAnagraphModelsContainer read GetAnagraphModelsContainer
      write SetAnagraphModelsContainer;
    /// <summary>Anag Groups is used to Create a Custom Anagraph Application Menu </summary>
    property AnagGroups: IAnagGroups read GetAnagGroups write SetAnagGroups;
  end;

implementation

uses Janua.Orm.Intf, Janua.Core.AsyncTask, JOrm.Anagraph.Group.Impl, Janua.Anagraph.Model.Impl,
  Janua.Application.Framework, Janua.Orm.Impl;

{ TJanuaViewModelSettings }

constructor TJanuaViewModelSettings.Create;
begin
  inherited;
  // IAnagGroup
  FAnagGroups := TAnagGroupFactory.CreateRecordset('anagGroups', nil, nil);
  { if not TJanuaOrmFactory.TryGetRecordSetIntf(IAnagGroups, 'anagGroups', nil, nil, FAnagGroups) then
    raise Exception.Create('TJanuaViewModelSettings.Create IAnagGroups  not set'); }
end;

destructor TJanuaViewModelSettings.Destroy;
begin
  FAnagGroups := nil;
  inherited;
end;

function TJanuaViewModelSettings.GetAnagGroups: IAnagGroups;
begin
  Result := FAnagGroups
end;

function TJanuaViewModelSettings.GetAnagraphModelsContainer: IJanuaAnagraphModelsContainer;
begin
  if not Assigned(FAnagModelContainer) then
    FAnagModelContainer := TJanuaAnagraphModelsContainer.Create(self as IJanuaViewModelSettings);

  Result := FAnagModelContainer
end;

function TJanuaViewModelSettings.InternalActivate: boolean;
var
  aAnagStorage: IJanuaDBAnagraphModel;
  // vTest: SmallInt;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        if not TJanuaApplicationFactory.TryGetInterface(IJanuaDBAnagraphModel, aAnagStorage) then
          raise Exception.Create('TJanuaViewModelSettings.Initialize IJanuaAnagraphDataModule not set');
        aAnagStorage.Activate;
        aAnagStorage.OpenAllGroups;
        FAnagGroups.DirectLoadFromDataset(aAnagStorage.jdsGroups, True { Remove Dataset if Mapped } );
        aAnagStorage := nil;
      end;
    except
      on E: Exception do
        RaiseException('InternalActivate', E, self);
    end;

end;

procedure TJanuaViewModelSettings.SetAnagGroups(const Value: IAnagGroups);
begin
  FAnagGroups := Value
end;

procedure TJanuaViewModelSettings.SetAnagraphModelsContainer(const Value: IJanuaAnagraphModelsContainer);
begin

end;

{ TJanuaAnagraphModelsContainer }

function TJanuaAnagraphModelsContainer.AddSearchModel(const aGroupID: Integer): IJanuaDBAnagraphModel;
begin
end;

constructor TJanuaAnagraphModelsContainer.Create;
begin
  inherited;
  FAnagraphModels := TCollections.CreateDictionary<Integer, IJanuaDBAnagraphModel>
end;

constructor TJanuaAnagraphModelsContainer.Create(const aSettings: IJanuaViewModelSettings);
begin
  Create;
  Guard.CheckNotNull(aSettings, 'Create(const aSettings: IJanuaViewModelSettings');
  FSettings := aSettings;
end;

procedure TJanuaAnagraphModelsContainer.PrepareAllModels(aCallbackProc: TProc; const Async: boolean);
begin
  if not TJanuaApplication.UnitTesting and (FAnagraphModels.Count = 0) then
    Janua.Core.AsyncTask.Async.Run<Integer>(
      function: Integer
      var
        lAnagGroup: IJanuaRecord;
        lGroupID: Integer;
      begin
        // This is the "background" anonymous method. Runs in the
        // background thread, and its result is passed
        // to the "success" callback.
        // In this case the result is a String.
        Result := 0;
        for lAnagGroup in FSettings.AnagGroups do
        begin
          lGroupID := (lAnagGroup as IAnagGroup).AnGroupId.AsInteger;
          Inc(Result);
          if not FAnagraphModels.ContainsKey(lGroupID) then
            FAnagraphModels.Add(lGroupID, TJanuaDBAnagraphModel.New(lGroupID));
        end;
      end,
      procedure(const aValue: Integer)
      begin
        // This is the "success" callback. Runs in the UI thread and
        // gets the result of the "background" anonymous method.
        if Assigned(aCallbackProc) then
          aCallbackProc
      end,
      procedure(const Ex: Exception)
      begin
        // This is the "error" callback.
        // Runs in the UI thread and is called only if the
        // "background" anonymous method raises an exception.
      end);
end;

function TJanuaAnagraphModelsContainer.TryGetModel(const aGroupID: Integer;
out aModel: IJanuaDBAnagraphModel): boolean;
begin
  Result := FAnagraphModels.ContainsKey(aGroupID);
  if Result then
    FAnagraphModels.TryGetValue(aGroupID, aModel);
end;

initialization

TJanuaApplicationFactory.RegisterClass(IJanuaViewModelSettings, TJanuaViewModelSettings);

end.
