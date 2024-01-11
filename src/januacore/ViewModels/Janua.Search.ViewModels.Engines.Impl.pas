unit Janua.Search.ViewModels.Engines.Impl;

interface

uses
  // Framework
  Janua.Orm.Intf, Janua.Orm.Impl, Janua.Orm.Types,
  // View Models
  Janua.Search.ViewModels.Engines.Intf, Janua.Search.ViewModels.Impl, Janua.Search.ViewModels.Intf,
  // ORMs
  JOrm.System.Intf, JOrm.Anagraph.Intf, JOrm.Items.Intf,
  JOrm.Logistic.Shipments.Intf, JOrm.Logistic.Locations.Intf, JOrm.Documents.Types.Intf,
  JOrm.Shipping.Intf;

type
  TJanuaSearchVMContainer = class(TJanuaSearchContainer, IJanuaSearchContainer, IJanuaSearchVMContainer)
  private
    FSearchViewModel: ISearchViewModel;
    function GetSearchViewModel: ISearchViewModel;
  strict protected
    /// <summary>This procedure must call the ViewModel Factory check that requirements are fulfilled</summary>
    function InternalActivate: Boolean; override;
  protected
    procedure SetSearchViewModel(const Value: ISearchViewModel);
  public
    destructor Destroy; override;
    /// <summary>The CallbackSearch Procedure where SearchContainer sets the Key and Value after a Search </summary>
    procedure ContainerCallBackSearch(aRecords: Integer);
    /// <summary>IJanuaSearchVMContainer.SearchViewModel Extends Containers for ViewModel Support </summary>
    /// type:ISearchViewModel
    property SearchViewModel: ISearchViewModel read GetSearchViewModel write SetSearchViewModel;
  end;

  TJanuaSearchVMContainerClass = class of TJanuaSearchVMContainer;

type
  TJanuaSearchAnagraphModel = class(TSearchModel, ISearchModelAnagraph, ISearchModel)
  private
    FAnagraph: IAnagraph;
  protected
    function InternalCreateRecord: IJanuaRecord; override;
    function GetAnagraph: IAnagraph;
    procedure SetAnagraph(const Value: IAnagraph);
  public
    constructor Create; override;
    property Anagraph: IAnagraph read GetAnagraph write SetAnagraph;
  end;


type
  TJanuaSearchVesselsModel = class(TSearchModel, ISearchModelVessels, ISearchModel)
  private
    FVessel: IVessel;
  protected
    function InternalCreateRecord: IJanuaRecord; override;
    function GetVessel: IVessel;
    procedure SetVessel(const Value: IVessel);
  public
    constructor Create; override;
    property Vessel: IVessel read GetVessel write SetVessel;
  end;


type
  TJanuaSearchSystemUsersModel = class(TSearchModel, ISearchModelUsers, ISearchModel)
  private
    FUserProfile: IUserProfile;
  protected
    function InternalCreateRecord: IJanuaRecord; override;
    function GetUserProfile: IUserProfile;
    procedure SetUserProfile(const Value: IUserProfile);
  public
    constructor Create; override;
    property UserProfile: IUserProfile read GetUserProfile write SetUserProfile;
  end;

type
  TJanuaSearchAnagraphViewModel = class(TSearchViewModel, ISearchViewModelAnagraph, ISearchViewModel)
  private
    FAnagraphModel: ISearchModelAnagraph;
    procedure SetAnagraphModel(const Value: ISearchModelAnagraph);
  strict protected
    property AnagraphModel: ISearchModelAnagraph read FAnagraphModel write SetAnagraphModel;
    function InternalCreateModel(const aGroupID: Integer): ISearchModel; override;
  protected
    function GetAnagraph: IAnagraph;
    procedure SetAnagraph(const Value: IAnagraph);
  public
    class function New(const aGroupID: Integer): ISearchViewModelAnagraph;
  public
    property Anagraph: IAnagraph read GetAnagraph write SetAnagraph;
  end;

  /// <summary>Container of ISearchViewModelAnagraph, can be connected to Record Fields or Filter Fields </summary>
  TJanuaSearchAnagraphContainer = class(TJanuaSearchVMContainer, IJanuaSearchContainer,
    IJanuaSearchAnagraphContainer)
  private
    FViewModelAnagraph: ISearchViewModelAnagraph;
  strict protected
    /// <summary>This procedure must call the ViewModel Factory check that requirements are fulfilled</summary>
    function InternalActivate: Boolean; override;
  public
    function GetSerchViewModelAnagraph: ISearchViewModelAnagraph;
    Constructor Create(const aGroupID: Integer; aFieldOwner: IJanuaField); override;
    destructor Destroy; override;
    /// <summary>   The final class shoudl call the search view model just on the Create Event. </summary>
    property SerchViewModelAnagraph: ISearchViewModelAnagraph read GetSerchViewModelAnagraph;
  end;

type
  TJanuaSearchItemsModel = class(TSearchModel, ISearchModelItem, ISearchModel)
  private
    FItemDefinition: IItemDefinition;
  protected
    function InternalCreateRecord: IJanuaRecord; override;
    function GetItem: IItemDefinition;
    procedure SetItem(const Value: IItemDefinition);
  public
    constructor Create; override;
    property ItemDefinition: IItemDefinition read GetItem write SetItem;
  end;

type
  TJanuaSearchItemsViewModel = class(TSearchViewModel, ISearchViewModelItem, ISearchViewModel)
  private
    FItemDefinitionModel: ISearchModelItem;
    procedure SetItemDefinitionModel(const Value: ISearchModelItem);
  strict protected
    property ItemDefinitionModel: ISearchModelItem read FItemDefinitionModel write SetItemDefinitionModel;
    function InternalCreateModel(const aGroupID: Integer): ISearchModel; override;
  protected
    function GetItem: IItemDefinition;
    procedure SetItem(const Value: IItemDefinition);
  public
    property ItemDefinition: IItemDefinition read GetItem write SetItem;
  end;

  // -------------- Search Locations Model & ViewModels

type
  TJanuaSearchLocationsModel = class(TSearchModel, ISearchModelLocation, ISearchModel)
  private
    FLogisticLocation: ILogisticLocation;
  protected
    function InternalCreateRecord: IJanuaRecord; override;
    function GetLocation: ILogisticLocation;
    procedure SetLocation(const Value: ILogisticLocation);
  public
    constructor Create; override;
    property Location: ILogisticLocation read GetLocation write SetLocation;
  end;

type
  TJanuaSearchLocationsViewModel = class(TSearchViewModel, ISearchViewModelLocation, ISearchViewModel)
  private
    FLogisticLocationModel: ISearchModelLocation;
    procedure SetItemDefinitionModel(const Value: ISearchModelLocation);
  strict protected
    property ItemDefinitionModel: ISearchModelLocation read FLogisticLocationModel
      write SetItemDefinitionModel;
    function InternalCreateModel(const aGroupID: Integer): ISearchModel; override;
  protected
    function GetLocation: ILogisticLocation;
    procedure SetLocation(const Value: ILogisticLocation);
  public
    property LogisticLocation: ILogisticLocation read GetLocation write SetLocation;
  end;

  TJanuaSearchLocationContainer = class(TJanuaSearchVMContainer, IJanuaSearchContainer,
    IJanuaSearchLocationContainer)
  private
    FViewModelLocation: ISearchViewModelLocation;
  strict protected
    /// <summary>This procedure must call the ViewModel Factory check that requirements are fulfilled</summary>
    function InternalActivate: Boolean; override;
  public
    function GetSerchViewModelLocation: ISearchViewModelLocation;
    Constructor Create(const aGroupID: Integer; aFieldOwner: IJanuaField); override;
    destructor Destroy; override;
    /// <summary>   The final class shoudl call the search view model just on the Create Event. </summary>
    property SerchViewModelLocation: ISearchViewModelLocation read GetSerchViewModelLocation;
  end;

  // Vessels Location Implementation ----------------------------------------------------------------------------

type
  TJanuaSearchVesselsViewModel = class(TSearchViewModel, ISearchViewModelVessel, ISearchViewModel)
  private
    FVesselModel: ISearchModelVessels;
    procedure SetVesselModel(const Value: ISearchModelVessels);
  strict protected
    property VesselModel: ISearchModelVessels read FVesselModel write SetVesselModel;
    function InternalCreateModel(const aGroupID: Integer): ISearchModel; override;
  protected
    function GetVessel: IVessel;
    procedure SetVessel(const Value: IVessel);
  public
    property Vessel: IVessel read GetVessel write SetVessel;
  end;

  TJanuaSearchVesselContainer = class(TJanuaSearchVMContainer, IJanuaSearchContainer,
    IJanuaSearchVesselContainer)
  private
    FViewModelVessel: ISearchViewModelVessel;
  strict protected
    /// <summary>This procedure must call the ViewModel Factory check that requirements are fulfilled</summary>
    function InternalActivate: Boolean; override;
  public
    function GetSerchViewModelVessel: ISearchViewModelVessel;
    Constructor Create(const aGroupID: Integer; aFieldOwner: IJanuaField); override;
    destructor Destroy; override;
    /// <summary>   The final class shoudl call the search view model just on the Create Event. </summary>
    property SerchViewModelVessel: ISearchViewModelVessel read GetSerchViewModelVessel;
  end;


  // End Vessel Location Implementation -------------------------------------------------------------------------

  // Vessels Shipments Implementation ----------------------------------------------------------------------------

type
  TJanuaSearchShipmentsModel = class(TSearchModel, ISearchModelShipments, ISearchModel)
  private
    FShipments: IShipmentView;
  protected
    function InternalCreateRecord: IJanuaRecord; override;
    function GetShipment: IShipmentView;
    procedure SetShipment(const Value: IShipmentView);
  public
    constructor Create; override;
    property Shipment: IShipmentView read GetShipment write SetShipment;
  end;

type
  TJanuaSearchShipmentsViewModel = class(TSearchViewModel, ISearchViewModelShipments, ISearchViewModel)
  private
    FShipmentsModel: ISearchModelShipments;
    procedure SetShipmentsModel(const Value: ISearchModelShipments);
  strict protected
    property ShipmentsModel: ISearchModelShipments read FShipmentsModel write SetShipmentsModel;
    function InternalCreateModel(const aGroupID: Integer): ISearchModel; override;
  protected
    function GetShipments: IShipmentView;
    procedure SetShipments(const Value: IShipmentView);
  public
    property Shipments: IShipmentView read GetShipments write SetShipments;
  end;

  TJanuaSearchShipmentsContainer = class(TJanuaSearchVMContainer, IJanuaSearchContainer,
    IJanuaSearchShipmentsContainer)
  private
    FViewModelShipments: ISearchViewModelShipments;
  strict protected
    /// <summary>This procedure must call the ViewModel Factory check that requirements are fulfilled</summary>
    function InternalActivate: Boolean; override;
  public
    function GetSerchViewModelShipments: ISearchViewModelShipments;
    Constructor Create(const aGroupID: Integer; aFieldOwner: IJanuaField); override;
    destructor Destroy; override;
    /// <summary>   The final class shoudl call the search view model just on the Create Event. </summary>
    property SerchViewModelShipments: ISearchViewModelShipments read GetSerchViewModelShipments;
  end;

  /// lookup ViewModels & Models ......................................................................

type
  TLookupModelDocumentTypes = class(TLookupModel, ILookupModelDocumentTypes)
  private
    FDocType: IDocType;
    FDocTypes: IDocTypes;
  strict protected
    function InternalCreateRecord: IJanuaRecord; override;
    function InternalCreateRecordSet: IJanuaRecord; override;
  protected
    function GetDocType: IDocType;
    function GetDocTypes: IDocTypes;
  public
    property DocType: IDocType read GetDocType;
    property DocTypes: IDocTypes read GetDocTypes;
  end;

implementation

uses System.Threading, System.Sysutils, Spring, Janua.application.Framework,
  Janua.ViewModels.application;

{ TJanuaSearchAnagraphModel }

constructor TJanuaSearchAnagraphModel.Create;
begin
  inherited;
  InternalCreateRecord;
end;

function TJanuaSearchAnagraphModel.GetAnagraph: IAnagraph;
begin
  Result := FAnagraph
end;

function TJanuaSearchAnagraphModel.InternalCreateRecord: IJanuaRecord;
begin
  if not TJanuaOrmFactory.TryGetRecordIntf(IAnagraph, FAnagraph, 'searchanagraph') then
    raise Exception.Create('TJanuaSearchAnagraphModel.Create  IAnagraph not set ');
  if not Supports(FAnagraph, IJanuaRecord, Result) then
    raise Exception.Create('TJanuaSearchAnagraphModel.Create  FAnagraph does not support IAnagraph');
end;

procedure TJanuaSearchAnagraphModel.SetAnagraph(const Value: IAnagraph);
begin
  FAnagraph := Value;
end;

{ TJanuaSearchAnagraphViewModel }

(*
  // FAnagraphModel: ISearchModelAnagraph;
  if not TJanuaApplicationFactory.TryGetInterface(ISearchModelAnagraph, FAnagraphModel) then
  raise Exception.Create('TJanuaSearchAnagraphViewModel.Create  ISearchModelAnagraph not set ');
*)

function TJanuaSearchAnagraphViewModel.GetAnagraph: IAnagraph;
begin
  Result := FAnagraphModel.Anagraph
end;

function TJanuaSearchAnagraphViewModel.InternalCreateModel(const aGroupID: Integer): ISearchModel;
begin
  // FAnagraphModel: ISearchModelAnagraph;
  if not TJanuaViewModelApplication.TryGetSearchModel(ISearchModelAnagraph, aGroupID, FAnagraphModel,
    FjdsSearch) then
    raise Exception.Create('TJanuaSearchAnagraphViewModel.InternalCreateModel ISearchModelAnagraph not set');
  if not Supports(FAnagraphModel, ISearchModel, Result) then
    raise Exception.Create
      ('TJanuaSearchAnagraphViewModel.InternalCreateModel FAnagraphModel does not support ISearchModel');
end;

class function TJanuaSearchAnagraphViewModel.New(const aGroupID: Integer): ISearchViewModelAnagraph;
begin
  Result := TJanuaSearchAnagraphViewModel.Create(aGroupID);
  Result.Activate;
end;

procedure TJanuaSearchAnagraphViewModel.SetAnagraph(const Value: IAnagraph);
begin
  FAnagraphModel.Anagraph := Value;
end;

procedure TJanuaSearchAnagraphViewModel.SetAnagraphModel(const Value: ISearchModelAnagraph);
begin
  FAnagraphModel := Value;
end;

{ TJanuaSearchItemsViewModel }

function TJanuaSearchItemsViewModel.GetItem: IItemDefinition;
begin
  Result := FItemDefinitionModel.Item
end;

function TJanuaSearchItemsViewModel.InternalCreateModel(const aGroupID: Integer): ISearchModel;
begin
  // FItemDefinitionModel: ISearchViewModelItem;
  if not TJanuaViewModelApplication.TryGetSearchModel(ISearchModelItem, aGroupID, FItemDefinitionModel,
    FjdsSearch) then
    raise Exception.Create('TJanuaSearchItemsViewModel.InternalCreateModel ISearchModelItem not set');
  if not Supports(FItemDefinitionModel, ISearchModel, Result) then
    raise Exception.Create
      ('TJanuaSearchItemsViewModel.InternalCreateModel FItemDefinitionModel does not support ISearchModel');
end;

procedure TJanuaSearchItemsViewModel.SetItem(const Value: IItemDefinition);
begin
  FItemDefinitionModel.Item := Value
end;

procedure TJanuaSearchItemsViewModel.SetItemDefinitionModel(const Value: ISearchModelItem);
begin
  FItemDefinitionModel := Value
end;

{ TJanuaSearchItemsModel }

constructor TJanuaSearchItemsModel.Create;
begin
  inherited;
end;

function TJanuaSearchItemsModel.GetItem: IItemDefinition;
begin
  Result := self.FItemDefinition
end;

function TJanuaSearchItemsModel.InternalCreateRecord: IJanuaRecord;
begin

end;

procedure TJanuaSearchItemsModel.SetItem(const Value: IItemDefinition);
begin

end;

{ TJanuaSearchLocationsModel }

constructor TJanuaSearchLocationsModel.Create;
begin
  inherited;
end;

function TJanuaSearchLocationsModel.GetLocation: ILogisticLocation;
begin
  Result := FLogisticLocation
end;

function TJanuaSearchLocationsModel.InternalCreateRecord: IJanuaRecord;
begin
  if not TJanuaOrmFactory.TryGetRecordIntf(ILogisticLocation, FLogisticLocation, 'location') then
    raise Exception.Create('TJanuaSearchLocationsModel.Create  ILogisticLocation not set ');
  if not Supports(FLogisticLocation, IJanuaRecord, Result) then
    raise Exception.Create
      ('TJanuaSearchLocationsModel.Create  FLogisticLocation does not support ILogisticLocation');
end;

procedure TJanuaSearchLocationsModel.SetLocation(const Value: ILogisticLocation);
begin
  FLogisticLocation := Value;
end;

{ TJanuaSearchLocationsViewModel }

function TJanuaSearchLocationsViewModel.GetLocation: ILogisticLocation;
begin
  Result := FLogisticLocationModel.Location
end;

function TJanuaSearchLocationsViewModel.InternalCreateModel(const aGroupID: Integer): ISearchModel;
begin
  // FAnagraphModel: ISearchModelAnagraph;
  if not TJanuaViewModelApplication.TryGetSearchModel(ISearchModelLocation, aGroupID, FLogisticLocationModel,
    FjdsSearch) then
    raise Exception.Create('TJanuaSearchLocationsViewModel.InternalCreateModel ISearchModelLocation not set');
  if not Supports(FLogisticLocationModel, ISearchModel, Result) then
    raise Exception.Create
      ('TJanuaSearchLocationsViewModel.InternalCreateModel FLogisticLocationModel does not support ISearchModel');
end;

procedure TJanuaSearchLocationsViewModel.SetItemDefinitionModel(const Value: ISearchModelLocation);
begin
  FLogisticLocationModel := Value
end;

procedure TJanuaSearchLocationsViewModel.SetLocation(const Value: ILogisticLocation);
begin
  FLogisticLocationModel.Location := Value
end;

{ TJanuaSearchSystemUsersModel }

constructor TJanuaSearchSystemUsersModel.Create;
begin
  inherited;

end;

function TJanuaSearchSystemUsersModel.GetUserProfile: IUserProfile;
begin
  Result := FUserProfile
end;

function TJanuaSearchSystemUsersModel.InternalCreateRecord: IJanuaRecord;
var
  tmpResult: IJanuaRecord;
begin
  TJanuaApplication.ExecProc(
    procedure
    begin
      if not TJanuaOrmFactory.TryGetRecordIntf(IUserProfile, FUserProfile, 'SearchSystemUsers') then
        raise Exception.Create('TJanuaSearchSystemUsersModel.Create  IUserProfile not set ');
      if not Supports(FUserProfile, IJanuaRecord, tmpResult) then
        raise Exception.Create('FUserProfile does not support IJanuaRecord');
    end, 'InternalCreateRecord', self);
  Result := tmpResult;
  tmpResult := nil;
end;

procedure TJanuaSearchSystemUsersModel.SetUserProfile(const Value: IUserProfile);
begin
  FUserProfile := Value
end;

{ TLookupModelDocumentTypes }

function TLookupModelDocumentTypes.GetDocType: IDocType;
begin
  Result := FDocType
end;

function TLookupModelDocumentTypes.GetDocTypes: IDocTypes;
begin
  Result := FDocTypes
end;

function TLookupModelDocumentTypes.InternalCreateRecord: IJanuaRecord;
var
  tmpResult: IJanuaRecord;
begin
  TJanuaApplication.ExecProc(
    procedure
    begin
      if not TJanuaOrmFactory.TryGetRecordIntf(IDocType, FDocType, 'DocType') then
        raise Exception.Create('IDocType not set ');
      if not Supports(FDocType, IJanuaRecord, tmpResult) then
        raise Exception.Create('FDocType does not support IJanuaRecord');
    end, 'InternalCreateRecord', self);
  Result := tmpResult
end;

function TLookupModelDocumentTypes.InternalCreateRecordSet: IJanuaRecord;
var
  tmpResult: IJanuaRecord;
begin
  TJanuaApplication.ExecProc(
    procedure
    begin
      if not TJanuaOrmFactory.TryGetRecordIntf(IDocTypes, FDocTypes, 'SearchSystemUsers') then
        raise Exception.Create('TJanuaSearchSystemUsersModel.Create  IUserProfile not set ');
      if not Supports(FDocTypes, IJanuaRecord, tmpResult) then
        raise Exception.Create
          ('TJanuaSearchSystemUsersModel.Create  IUserProfile does not support IAnagraph');
    end, 'InternalCreateRecordSet', self);
  Result := tmpResult;
end;

{ TJanuaSearchVMContainer }

procedure TJanuaSearchVMContainer.ContainerCallBackSearch(aRecords: Integer);
begin
  Assert(KeyField <> '', ClassName + 'CallBackSearch KeyField  not set');
  Assert(LookupField <> '', ClassName + 'CallBackSearch ValueField  not set');
  /// Sets FieldOwner Value using a Variant (just as a normal Dataset Field does);
  if aRecords > 0 then
  begin
    FieldOwner.AsVariant := FSearchViewModel.CurrentRecord.FieldByName(KeyField).AsVariant;
    SetLookUPValue(FSearchViewModel.CurrentRecord.FieldByName(LookupField).AsString);
    SetKeyValue(FSearchViewModel.CurrentRecord.FieldByName(KeyField).AsString);
    IF Assigned(FCallBackSearch) then
      FCallBackSearch(aRecords);
  end
  else
    FieldOwner.Default;

end;

destructor TJanuaSearchVMContainer.Destroy;
begin
  FSearchViewModel := nil;
  inherited;
end;

function TJanuaSearchVMContainer.GetSearchViewModel: ISearchViewModel;
begin
  Result := FSearchViewModel;
end;

function TJanuaSearchVMContainer.InternalActivate: Boolean;
begin
  Result := inherited;
end;

procedure TJanuaSearchVMContainer.SetSearchViewModel(const Value: ISearchViewModel);
begin
  FSearchViewModel := Value;
  if Assigned(FSearchViewModel) then
    FSearchViewModel.CallBackSearch := ContainerCallBackSearch
end;

{ TJanuaSearchAnagraphContainer }

constructor TJanuaSearchAnagraphContainer.Create(const aGroupID: Integer; aFieldOwner: IJanuaField);
begin
  inherited;
  SetEntityType(TJanuaEntity.AnagraphAnagraphs);
  SetContainerType(TSearchContainerType.jscSearchModel);
  SetKeyField('anagraph_id');
  SetValueField('an_last_name');
end;

destructor TJanuaSearchAnagraphContainer.Destroy;
begin
  FViewModelAnagraph := nil;
  inherited;
end;

function TJanuaSearchAnagraphContainer.GetSerchViewModelAnagraph: ISearchViewModelAnagraph;
begin
  Result := FViewModelAnagraph
end;

function TJanuaSearchAnagraphContainer.InternalActivate: Boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        if not TJanuaViewModelApplication.TryGetSearchViewModel(ISearchViewModelAnagraph, GroupID,
          FViewModelAnagraph) then
          raise Exception.Create('ISearchViewModelAnagraph not set');
        SetSearchViewModel(FViewModelAnagraph as ISearchViewModel);
      end;
    except
      on E: Exception do
        RaiseException('InternalActivate', E);
    end;
end;

{ TJanuaSearchLocationContainer }

constructor TJanuaSearchLocationContainer.Create(const aGroupID: Integer; aFieldOwner: IJanuaField);
begin
  inherited;
  SetEntityType(TJanuaEntity.LogLocations);
  SetContainerType(TSearchContainerType.jscSearchModel);
  SetKeyField('id');
  SetValueField('name');
end;

destructor TJanuaSearchLocationContainer.Destroy;
begin
  FViewModelLocation := nil;
  inherited;
end;

function TJanuaSearchLocationContainer.GetSerchViewModelLocation: ISearchViewModelLocation;
begin
  Result := FViewModelLocation
end;

function TJanuaSearchLocationContainer.InternalActivate: Boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        if not TJanuaViewModelApplication.TryGetSearchViewModel(ISearchViewModelLocation, GroupID,
          FViewModelLocation) then
          raise Exception.Create('ISearchViewModelLocation not set');
        SetSearchViewModel(FViewModelLocation as ISearchViewModel);
      end;
    except
      on E: Exception do
        RaiseException('InternalActivate', E);
    end;
end;

{ TJanuaSearchVesselsModel }

constructor TJanuaSearchVesselsModel.Create;
begin
  inherited;

end;

function TJanuaSearchVesselsModel.GetVessel: IVessel;
begin
  Result := FVessel
end;

function TJanuaSearchVesselsModel.InternalCreateRecord: IJanuaRecord;
begin
  if not TJanuaOrmFactory.TryGetRecordIntf(IVessel, FVessel, 'location') then
    raise Exception.Create('TJanuaSearchLocationsModel.Create  IVessel not set ');
  Guard.CheckNotNull(FVessel, 'FVessel');
  if not Supports(FVessel, IJanuaRecord, Result) then
    raise Exception.Create('TJanuaSearchLocationsModel.Create  FVessel does not support IVessel');
end;

procedure TJanuaSearchVesselsModel.SetVessel(const Value: IVessel);
begin
  FVessel := Value;
end;

{ TJanuaSearchVesselsViewModel }

function TJanuaSearchVesselsViewModel.GetVessel: IVessel;
begin
  Result := FVesselModel.Vessel
end;

function TJanuaSearchVesselsViewModel.InternalCreateModel(const aGroupID: Integer): ISearchModel;
begin
  // FAnagraphModel: ISearchModelAnagraph;
  if not TJanuaViewModelApplication.TryGetSearchModel(ISearchModelVessels, aGroupID, FVesselModel, FjdsSearch)
  then
    raise Exception.Create(ClassName + '.InternalCreateModel ISearchModelVessel not set');
  Guard.CheckNotNull(FVesselModel, 'FVesselModel');
  if not Supports(FVesselModel, ISearchModel, Result) then
    raise Exception.Create(ClassName + '.InternalCreateModel FVesselModel does not support ISearchModel');
  Guard.CheckNotNull(FVesselModel.Vessel, 'FVesselModel.Vessel');
end;

procedure TJanuaSearchVesselsViewModel.SetVessel(const Value: IVessel);
begin
  FVesselModel.Vessel := Value;
end;

procedure TJanuaSearchVesselsViewModel.SetVesselModel(const Value: ISearchModelVessels);
begin
  FVesselModel := Value
end;

{ TJanuaSearchVesselContainer }

constructor TJanuaSearchVesselContainer.Create(const aGroupID: Integer; aFieldOwner: IJanuaField);
begin
  inherited;

end;

destructor TJanuaSearchVesselContainer.Destroy;
begin
  FViewModelVessel := nil;
  inherited;
end;

function TJanuaSearchVesselContainer.GetSerchViewModelVessel: ISearchViewModelVessel;
begin
  Result := FViewModelVessel
end;

function TJanuaSearchVesselContainer.InternalActivate: Boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        if not TJanuaViewModelApplication.TryGetSearchViewModel(ISearchViewModelVessel, GroupID,
          FViewModelVessel) then
          raise Exception.Create('ISearchViewModelVessel not set');
        SetSearchViewModel(FViewModelVessel as ISearchViewModel);
      end;
    except
      on E: Exception do
        RaiseException('InternalActivate', E);
    end;
end;

{ TJanuaSearchShipmentsModel }

constructor TJanuaSearchShipmentsModel.Create;
begin
  inherited;

end;

function TJanuaSearchShipmentsModel.GetShipment: IShipmentView;
begin
  Result := FShipments
end;

function TJanuaSearchShipmentsModel.InternalCreateRecord: IJanuaRecord;
begin
  if not TJanuaOrmFactory.TryGetRecordIntf(IShipmentView, FShipments, 'searchanagraph') then
    raise Exception.Create('TJanuaSearchAnagraphModel.Create  IAnagraph not set ');
  if not Supports(FShipments, IJanuaRecord, Result) then
    raise Exception.Create('TJanuaSearchAnagraphModel.Create  FAnagraph does not support IAnagraph');
end;

procedure TJanuaSearchShipmentsModel.SetShipment(const Value: IShipmentView);
begin
  FShipments := Value;
end;

{ TJanuaSearchShipmentssViewModel }

function TJanuaSearchShipmentsViewModel.GetShipments: IShipmentView;
begin
  Result := FShipmentsModel.Shipment
end;

function TJanuaSearchShipmentsViewModel.InternalCreateModel(const aGroupID: Integer): ISearchModel;
begin
  try
    if not TJanuaViewModelApplication.TryGetSearchModel(ISearchModelShipments, aGroupID, FShipmentsModel,
      FjdsSearch) then
      raise Exception.Create('ISearchModelShipments not set');
    if not Supports(FShipmentsModel, ISearchModel, Result) then
      raise Exception.Create('ISearchModelShipments does not support ISearchModel');
  except
    on E: Exception do
      RaiseException('InternalCreateModel', E, self);
  end;
end;

procedure TJanuaSearchShipmentsViewModel.SetShipments(const Value: IShipmentView);
begin
  FShipmentsModel.Shipment := Value
end;

procedure TJanuaSearchShipmentsViewModel.SetShipmentsModel(const Value: ISearchModelShipments);
begin
  FShipmentsModel := Value
end;

{ TJanuaSearchShipmentsContainer }

constructor TJanuaSearchShipmentsContainer.Create(const aGroupID: Integer; aFieldOwner: IJanuaField);
begin
  inherited;
  SetEntityType(TJanuaEntity.LogShipments);
  SetContainerType(TSearchContainerType.jscSearchModel);
  SetKeyField('id');
  SetValueField('work_code');
end;

destructor TJanuaSearchShipmentsContainer.Destroy;
begin
  FViewModelShipments := nil;
  inherited;
end;

function TJanuaSearchShipmentsContainer.GetSerchViewModelShipments: ISearchViewModelShipments;
begin
  Result := FViewModelShipments
end;

function TJanuaSearchShipmentsContainer.InternalActivate: Boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        if not TJanuaViewModelApplication.TryGetSearchViewModel(ISearchViewModelShipments, GroupID,
          FViewModelShipments) then
          raise Exception.Create('ISearchViewModelAnagraph not set');
        SetSearchViewModel(FViewModelShipments as ISearchViewModel);
      end;
    except
      on E: Exception do
        RaiseException('InternalActivate', E);
    end;
end;


initialization



end.
