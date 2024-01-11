unit Janua.Logistic.Shipments.Model.Impl;

interface

uses
  // cxClasses
  Data.DB, Janua.Core.Classes, Janua.Models.Templates,
  // JOrm
  Janua.Orm.Intf, JOrm.Items.Intf, JOrm.Logistic.Locations.Intf, JOrm.Anagraph.Intf,
  JOrm.Logistic.AWBs.Intf, JOrm.Logistic.Shipments.Intf, JOrm.Shipping.Intf,
  // JanuaDataModule
  Janua.ViewModels.Intf, Janua.Logistic.Shipments.ViewModel.Intf, Janua.Workflows.ViewModel.Intf,
  Janua.Core.Classes.Intf, Janua.Workflows.Model.Impl;

type
  TJanuaLogisticShipmentsDataModule = class(TJanuaWorkflowsDataModule, IJanuaShipmentsDataModule,
    IJanuaWorkFlowsDataModule)
  private
    FjdsConditions: IJanuaDBDataset;
    FjdsAttachments: IJanuaDBDataset;
    FjdsShipments: IJanuaDBDataset;
    FjdsShipmentRows: IJanuaDBDataset;
    FjdsLocations: IJanuaDBDataset;
    FjdsContainerTypes: IJanuaDBDataset;
  protected
    function GetjdsConditions: IJanuaDBDataset;
    procedure SetjdsConditions(Value: IJanuaDBDataset);
    function GetjdsShipments: IJanuaDBDataset;
    procedure SetjdsShipments(Value: IJanuaDBDataset);
    function GetjdsShipmentRows: IJanuaDBDataset;
    procedure SetjdsShipmentRows(Value: IJanuaDBDataset);
    function GetjdsLocations: IJanuaDBDataset;
    procedure SetjdsLocations(Value: IJanuaDBDataset);
    function GetjdsContainerTypes: IJanuaDBDataset;
    procedure SetjdsContainerTypes(Value: IJanuaDBDataset);
    function GetjdsAttachments: IJanuaDBDataset;
    procedure SetjdsAttachments(Value: IJanuaDBDataset);
  public
    property jdsAttachments: IJanuaDBDataset read GetjdsAttachments write SetjdsAttachments;
    property jdsConditions: IJanuaDBDataset read GetjdsConditions write SetjdsConditions;
    property jdsShipmentRows: IJanuaDBDataset read GetjdsShipmentRows write SetjdsShipmentRows;
    property jdsLocations: IJanuaDBDataset read GetjdsLocations write SetjdsLocations;
    property jdsContainerTypes: IJanuaDBDataset read GetjdsContainerTypes write SetjdsContainerTypes;
    property jdsShipments: IJanuaDBDataset read GetjdsShipments write SetjdsShipments;
  public
    constructor Create; override;
  end;

  // (TJanuaModelDBTemplate, IJanuaDBDocumentsModel, IJanuaModel)
type
  TJanuaShipmentModel = class(TJanuaModelDBTemplate, IJanuaShipmentsModel, IJanuaModel)
  strict private
    FShipmentRecord: IShipmentView;
    FShipmentsDataModule: IJanuaShipmentsDataModule;
    { FSearchText: string; }
    FWorkTypeID: smallint;
    { This should be mapped to Group id variant }
    FWorkID: Int64;
  protected
    function GetjdsConditions: IJanuaDBDataset;
    procedure SetjdsConditions(Value: IJanuaDBDataset);
    function GetjdsShipments: IJanuaDBDataset;
    procedure SetjdsShipments(Value: IJanuaDBDataset);
    function GetjdsAttachments: IJanuaDBDataset;
    procedure SetjdsAttachments(Value: IJanuaDBDataset);
    function GetjdsShipmentRows: IJanuaDBDataset;
    procedure SetjdsShipmentRows(Value: IJanuaDBDataset);
    function GetWorkTypeID: smallint;
    procedure SetWorkTypeID(const Value: smallint);
    function GetShipmentRecord: IShipmentView;
    procedure SetShipmentRecord(const Value: IShipmentView);
    function GetWorkID: Int64;
    procedure SetWorkID(const Value: Int64);
  strict protected
    /// <summary> This procedure Create and returns an object that  supports IJanuaShipmentsDataModule</summary>
    /// <remarks> it's a virtual method that could be overridden by descendants to create new Objects  </remarks>
    function FactoryCreateDataModule: IJanuaShipmentsDataModule; virtual;
    procedure InternalSetParams; override;
    procedure SetupColumns;
    procedure vtShipmentsAfterScroll(DataSet: TDataSet);
    function InternalActivate: boolean; override;
  public
    // Search Elements for the model
    procedure CallBackShipper(const aAnagraph: IAnagraph; aRecordCount: Integer = 1); // shipper
    procedure CallBackConsignee(const aAnagraph: IAnagraph; aRecordCount: Integer = 1); // Consignee
    procedure CallBackAgent(const aAnagraph: IAnagraph; aRecordCount: Integer = 1); // Agent
    procedure CallBackCustomer(const aAnagraph: IAnagraph; aRecordCount: Integer = 1); // Agent
    procedure CallBackCarrier(const aAnagraph: IAnagraph; aRecordCount: Integer = 1);
    procedure CAllBackLocation(const aAnagraph: IAnagraph; aRecordCount: Integer = 1);
    procedure CAllBackVessel(const aVessel: IVessel; aRecordCount: Integer = 1);
    procedure CallBackWarehouse(const aAnagraph: IAnagraph; aRecordCount: Integer = 1); // Warehouse
    procedure CallBackAirport(const aLocation: ILogisticLocation; aRecordCount: Integer = 1);
    // Departure Airport
    procedure CallBackArrivalAirport(const aLocation: ILogisticLocation; aRecordCount: Integer = 1);
    // Arrival Airport
    procedure CallBackPol(const aLocation: ILogisticLocation; aRecordCount: Integer = 1); // Port of Loading
    procedure CallBackPod(const aLocation: ILogisticLocation; aRecordCount: Integer = 1);
    // Port of Destination
    procedure CallBackRowItem(const aItemDefinition: IItemDefinition; aRecordCount: Integer = 1); // Commodity
  public
    property jdsConditions: IJanuaDBDataset read GetjdsConditions write SetjdsConditions;
    property jdsShipments: IJanuaDBDataset read GetjdsShipments write SetjdsShipments;
    property jdsAttachments: IJanuaDBDataset read GetjdsAttachments write SetjdsAttachments;
    property jdsShipmentRows: IJanuaDBDataset read GetjdsShipmentRows write SetjdsShipmentRows;
    property WorkTypeID: smallint read GetWorkTypeID write SetWorkTypeID;
    property ShipmentRecord: IShipmentView read GetShipmentRecord write SetShipmentRecord;
    property WorkID: Int64 read GetWorkID write SetWorkID;
  public
    constructor Create; override;
    destructor Destroy; override;
  end;

implementation

uses System.Classes, System.SysUtils, Spring, Janua.Core.Functions, Janua.Application.Framework,
  JOrm.Logistic.Shipments.Impl, Janua.Orm.Types, Janua.Orm.Impl;

{ TJanuaLogisticShipmentsDataModule }

constructor TJanuaLogisticShipmentsDataModule.Create;
begin
  inherited;

end;

function TJanuaLogisticShipmentsDataModule.GetjdsAttachments: IJanuaDBDataset;
begin
  Result := FjdsAttachments
end;

function TJanuaLogisticShipmentsDataModule.GetjdsConditions: IJanuaDBDataset;
begin
  Result := FjdsConditions;
end;

function TJanuaLogisticShipmentsDataModule.GetjdsContainerTypes: IJanuaDBDataset;
begin
  Result := FjdsContainerTypes
end;

function TJanuaLogisticShipmentsDataModule.GetjdsLocations: IJanuaDBDataset;
begin
  Result := FjdsLocations
end;

function TJanuaLogisticShipmentsDataModule.GetjdsShipmentRows: IJanuaDBDataset;
begin
  Result := FjdsShipmentRows
end;

function TJanuaLogisticShipmentsDataModule.GetjdsShipments: IJanuaDBDataset;
begin
  Result := FjdsShipments
end;

procedure TJanuaLogisticShipmentsDataModule.SetjdsAttachments(Value: IJanuaDBDataset);
begin
  FjdsAttachments := Value;
end;

procedure TJanuaLogisticShipmentsDataModule.SetjdsConditions(Value: IJanuaDBDataset);
begin
  FjdsConditions := Value
end;

procedure TJanuaLogisticShipmentsDataModule.SetjdsContainerTypes(Value: IJanuaDBDataset);
begin
  FjdsContainerTypes := Value
end;

procedure TJanuaLogisticShipmentsDataModule.SetjdsLocations(Value: IJanuaDBDataset);
begin
  FjdsLocations := Value
end;

procedure TJanuaLogisticShipmentsDataModule.SetjdsShipmentRows(Value: IJanuaDBDataset);
begin
  FjdsShipmentRows := Value
end;

procedure TJanuaLogisticShipmentsDataModule.SetjdsShipments(Value: IJanuaDBDataset);
begin
  FjdsShipments := Value;
  SetMainDataset(FjdsShipments);
end;

{ TJanuaShipmentModel }

procedure TJanuaShipmentModel.CallBackAgent(const aAnagraph: IAnagraph; aRecordCount: Integer);
begin
  FShipmentRecord.AgentId.AsInteger := aAnagraph.AnagraphId.AsInteger;
  FShipmentRecord.AgentCode.AsString := aAnagraph.AnCode.AsString;
  FShipmentRecord.AgentName.AsString := aAnagraph.AnLastName.AsString;
  FShipmentRecord.AgentTown.AsString := aAnagraph.AnTown.AsString;
end;

procedure TJanuaShipmentModel.CallBackAirport(const aLocation: ILogisticLocation; aRecordCount: Integer);
begin
  FShipmentRecord.AirportId.AsInteger := aLocation.Id.AsInteger;
  FShipmentRecord.AirportCode.AsString := aLocation.Code.AsString;
  FShipmentRecord.AirportName.AsString := aLocation.Name.AsString;
end;

procedure TJanuaShipmentModel.CallBackArrivalAirport(const aLocation: ILogisticLocation; aRecordCount: Integer);
begin
  { FShipmentRecord..AsInteger := aLocation.Id.AsInteger;
    FShipmentRecord.AirportCode.AsString := aLocation.Code.AsString;
    FShipmentRecord.AirportName.AsString := aLocation.Name.AsString; }
  { TODO : Add Arrival_Airport to Shipment Table and View and Model }
end;

procedure TJanuaShipmentModel.CallBackCarrier(const aAnagraph: IAnagraph; aRecordCount: Integer);
begin
  FShipmentRecord.CarrierId.AsInteger := aAnagraph.AnagraphId.AsInteger;
  FShipmentRecord.CarrierCode.AsString := aAnagraph.AnCode.AsString;
  FShipmentRecord.CarrierName.AsString := aAnagraph.AnLastName.AsString;
  FShipmentRecord.CarrierTown.AsString := aAnagraph.AnTown.AsString;
end;

procedure TJanuaShipmentModel.CallBackConsignee(const aAnagraph: IAnagraph; aRecordCount: Integer);
begin
  { FShipmentRecord.ConsigneeID := aAnagraph.AnagraphId.AsInteger;
    FShipmentRecord.ConsigneeCode.AsString := aAnagraph.AnCode.AsString;
    FShipmentRecord.ConsigneeName.AsString := aAnagraph.AnLastName.AsString;
    FShipmentRecord.ConsigneeTown.AsString := aAnagraph.AnTown.AsString; }
  { TODO : Add Consignee_id to Shipment Table and View and Model }
end;

procedure TJanuaShipmentModel.CallBackCustomer(const aAnagraph: IAnagraph; aRecordCount: Integer);
begin
  FShipmentRecord.CustomerId.AsInteger := aAnagraph.AnagraphId.AsInteger;
  FShipmentRecord.CustomerCode.AsString := aAnagraph.AnCode.AsString;
  FShipmentRecord.CustomerName.AsString := aAnagraph.AnLastName.AsString;
  FShipmentRecord.CustomerTown.AsString := aAnagraph.AnTown.AsString;
end;

procedure TJanuaShipmentModel.CAllBackLocation(const aAnagraph: IAnagraph; aRecordCount: Integer);
begin
  { FShipmentRecord.LocationId.AsInteger := aAnagraph.AnagraphId.AsInteger;
    FShipmentRecord.LocationCode.AsString := aAnagraph.AnCode.AsString;
    FShipmentRecord.LocationName.AsString := aAnagraph.AnLastName.AsString;
    FShipmentRecord.LocationTown.AsString := aAnagraph.AnTown.AsString; }
  { TODO : Add Location_ID to Shipment Table and View and Model }
end;

procedure TJanuaShipmentModel.CallBackPod(const aLocation: ILogisticLocation; aRecordCount: Integer);
begin
  FShipmentRecord.PodId.AsInteger := aLocation.Id.AsInteger;
  FShipmentRecord.PodCode.AsString := aLocation.Code.AsString;
  FShipmentRecord.PodName.AsString := aLocation.Name.AsString;
end;

procedure TJanuaShipmentModel.CallBackPol(const aLocation: ILogisticLocation; aRecordCount: Integer);
begin
  FShipmentRecord.PolId.AsInteger := aLocation.Id.AsInteger;
  FShipmentRecord.PolCode.AsString := aLocation.Code.AsString;
  FShipmentRecord.PolName.AsString := aLocation.Name.AsString;
end;

procedure TJanuaShipmentModel.CallBackRowItem(const aItemDefinition: IItemDefinition; aRecordCount: Integer);
begin
  // To be Implemented
end;

procedure TJanuaShipmentModel.CallBackShipper(const aAnagraph: IAnagraph; aRecordCount: Integer);
begin
  FShipmentRecord.ShipperId.AsInteger := aAnagraph.AnagraphId.AsInteger;
  FShipmentRecord.ShipperCode.AsString := aAnagraph.AnCode.AsString;
  FShipmentRecord.ShipperName.AsString := aAnagraph.AnLastName.AsString;
  FShipmentRecord.ShipperTown.AsString := aAnagraph.AnTown.AsString;
end;

procedure TJanuaShipmentModel.CAllBackVessel(const aVessel: IVessel; aRecordCount: Integer);
begin
  FShipmentRecord.VesselId.AsInteger := aVessel.VesselId.AsInteger;
  FShipmentRecord.VesselName.AsString := aVessel.Name.AsString;
end;

procedure TJanuaShipmentModel.CallBackWarehouse(const aAnagraph: IAnagraph; aRecordCount: Integer);
begin
  FShipmentRecord.WarehouseId.AsInteger := aAnagraph.AnagraphId.AsInteger;
  FShipmentRecord.WarehouseNotes.AsString := aAnagraph.AnLastName.AsString;
  { FShipmentRecord.WarehouseCode.AsString := aAnagraph.AnCode.AsString;
    FShipmentRecord.WarehouseName.AsString := aAnagraph.AnLastName.AsString;
    FShipmentRecord.WarehouseTown.AsString := aAnagraph.AnTown.AsString; }
end;

constructor TJanuaShipmentModel.Create;
begin
  inherited;
  try
    FShipmentsDataModule := FactoryCreateDataModule;
    FShipmentsDataModule.Activate;
    SetInternalDataModule(FShipmentsDataModule as IJanuaDataModuleContainer);

    // Record Setup must be put BEFORE dataset _Assignments
    if not TJanuaOrmFactory.TryGetRecordIntf(IShipmentView, FShipmentRecord, 'Shipment',
      TJanuaEntity.LogShipments) then
      raise Exception.Create('IShipmentView not set');
    Guard.CheckNotNull(FShipmentRecord, 'FDocHeadRecord');
    FShipmentRecord.StoreDataset := FShipmentsDataModule.jdsShipments;
    SetInternalRecord(FShipmentRecord);

    Guard.CheckNotNull(FShipmentsDataModule.jdsShipments, 'jdsDocHeads');
    jdsMaster := FShipmentsDataModule.jdsShipments;
    Guard.CheckNotNull(FShipmentsDataModule.jdsAttachments, 'jdsAttachments');
    { jdsAttachments := FShipmentsDataModule.jdsAttachments; }
    Guard.CheckNotNull(FShipmentsDataModule.jdsShipmentRows, 'jdsShipmentRows');
    jdsDetail := FShipmentsDataModule.jdsShipmentRows;

    Guard.CheckNotNull(FShipmentsDataModule.jdsContainerTypes, 'jdsContainerTypes');
    Guard.CheckNotNull(FShipmentsDataModule.jdsShipments.ParamByName('p_db_schema_id'), 'DocHeads.schema');
    { Guard.CheckNotNull(FShipmentsDataModule.jdsDocTypes.ParamByName('p_db_schema_id'), 'DocTypes.schema'); }
    jdsShipments.ParamByName('p_db_schema_id').AsInteger := TJanuaApplication.DBSchemaID;
    { jdsDocTypes.ParamByName('p_db_schema_id').AsInteger := TJanuaApplication.DBSchemaID; }
    { FShipmentRecord: IShipmentView; }
    // check that index field name is correct
    OrderByFields.AddField('ID', TOrderbyEnum.jobDESC);

  except
    on e: Exception do
      RaiseException('Create', e, Self);
  end;
end;

destructor TJanuaShipmentModel.Destroy;
begin

  inherited;
end;

function TJanuaShipmentModel.FactoryCreateDataModule: IJanuaShipmentsDataModule;
begin
  try
    if not TJanuaApplicationFactory.TryGetInterface(IJanuaShipmentsDataModule, Result) then
      raise Exception.Create('IJanuaDocumentsDataModule not set');
  except
    on e: Exception do
      RaiseException('FactoryCreateDataModule', e, Self);
  end;
end;

function TJanuaShipmentModel.GetShipmentRecord: IShipmentView;
begin
  Result := FShipmentRecord
end;

function TJanuaShipmentModel.GetjdsAttachments: IJanuaDBDataset;
begin
  Result := FShipmentsDataModule.jdsAttachments
end;

function TJanuaShipmentModel.GetjdsConditions: IJanuaDBDataset;
begin
  Result := FShipmentsDataModule.jdsConditions
end;

function TJanuaShipmentModel.GetjdsShipmentRows: IJanuaDBDataset;
begin
  Result := FShipmentsDataModule.jdsShipmentRows
end;

function TJanuaShipmentModel.GetjdsShipments: IJanuaDBDataset;
begin
  Result := FShipmentsDataModule.jdsShipments
end;

function TJanuaShipmentModel.GetWorkID: Int64;
begin
  Result := FWorkID
end;

function TJanuaShipmentModel.GetWorkTypeID: smallint;
begin
  Result := FWorkTypeID
end;

function TJanuaShipmentModel.InternalActivate: boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        FShipmentsDataModule.Activate;
        IsThreaded := True;
        SetupColumns;
      end;
    except
      on e: Exception do
        CreateException('Initialize', e.Message, Self, Self.LogString);
    end;
end;

procedure TJanuaShipmentModel.InternalSetParams;
begin
  inherited;
  try
    (*
      select * from logistic.shipments_view
      where
      (:p_work_type_id = 0 or type_id = :p_work_type_id)
      and
      (:p_work_id = 0 or workflow_id = :p_work_id)
      and
      ( :p_db_schema_id = 0 or db_schema_id =  :p_db_schema_id or db_schema_id = 0)
    *)
    Assert(Assigned(FShipmentsDataModule), 'FDocumentsDataModule');
    Assert(Assigned(FShipmentsDataModule.jdsShipments), 'FDocumentsDataModule');
    jdsShipments.ParamByName('p_db_schema_id').AsInteger := TJanuaApplication.DBSchemaID;

    { jdsShipments.ParamByName('p_search_name').AsString := '%';
      if (StripString(MainSearchText) <> '') and (MainSearchText <> '%') and (MainSearchText.Length > 2) then
      jdsShipments.ParamByName('p_search_name').AsString := '%' + StripString(MainSearchText, '%') + '%'; }
    jdsShipments.ParamByName('p_work_id').AsLargeInt := FWorkID;
    jdsShipments.ParamByName('p_work_type_id').AsLargeInt := FWorkTypeID;
  except
    on e: Exception do
      RaiseException('InternalSetParams', e, Self);
  end;

end;

procedure TJanuaShipmentModel.SetShipmentRecord(const Value: IShipmentView);
begin
  FShipmentRecord := Value;
end;

procedure TJanuaShipmentModel.SetupColumns;
begin
  jdsShipments.AddGridColumn(jdsShipments.FieldByName('creation_date'), 12, 'Creation Date');
  jdsShipments.AddGridColumn(jdsShipments.FieldByName('work_code'), 14, 'Workflow Code');
  // pol_code, pol_name, pod_id, pod_name, pod_code,
  jdsShipments.AddGridColumn(jdsShipments.FieldByName('pol_code'), 6, 'P.O.L.');
  jdsShipments.AddGridColumn(jdsShipments.FieldByName('pol_name'), 30, 'POL Location');
  jdsShipments.AddGridColumn(jdsShipments.FieldByName('pod_code'), 6, 'P.O.D.');
  jdsShipments.AddGridColumn(jdsShipments.FieldByName('pod_name'), 30, 'POD Location');
  jdsShipments.AddGridColumn(jdsShipments.FieldByName('vessel_name'), 30, 'Vessel/Location');
  jdsShipments.AddGridColumn(jdsShipments.FieldByName('departure_date'), 12, 'E.T.Departure');
  jdsShipments.AddGridColumn(jdsShipments.FieldByName('awb_number'), 12, 'A.W.B. Number');
  jdsShipments.AddGridColumn(jdsShipments.FieldByName('airport_name'), 40, 'Aiport');
end;

procedure TJanuaShipmentModel.SetjdsAttachments(Value: IJanuaDBDataset);
begin
  FShipmentsDataModule.jdsAttachments := Value;
end;

procedure TJanuaShipmentModel.SetjdsConditions(Value: IJanuaDBDataset);
begin
  FShipmentsDataModule.jdsConditions := Value;
end;

procedure TJanuaShipmentModel.SetjdsShipmentRows(Value: IJanuaDBDataset);
begin
  FShipmentsDataModule.jdsShipmentRows := Value;
end;

procedure TJanuaShipmentModel.SetjdsShipments(Value: IJanuaDBDataset);
begin
  FShipmentsDataModule.jdsShipments := Value;
end;

procedure TJanuaShipmentModel.SetWorkID(const Value: Int64);
begin
  if FWorkID <> Value then
  begin
    FWorkID := Value;
    if Assigned(FShipmentsDataModule) then
      FShipmentsDataModule.jdsShipments.ParamByName('work_id').AsLargeInt := FWorkID;
  end;
end;

procedure TJanuaShipmentModel.SetWorkTypeID(const Value: smallint);
begin
  if FWorkTypeID <> Value then
  begin
    FWorkTypeID := Value;
    if Assigned(FShipmentsDataModule) then
      FShipmentsDataModule.jdsShipments.ParamByName('work_type_id').AsSmallInt := FWorkTypeID;
  end;
end;

procedure TJanuaShipmentModel.vtShipmentsAfterScroll(DataSet: TDataSet);
begin
  { FShipmentRecord: IShipmentView;
    FShipmentsDataModule: IJanuaShipmentsDataModule;
  }
  try
    if Assigned(FShipmentRecord) and not jdsShipmentRows.Active then
    begin
      jdsShipmentRows.ParamByName('id').AsInteger := jdsShipments.FieldByName('id').AsInteger;
      jdsShipmentRows.Open;
    end;
    if Assigned(FShipmentRecord) then
      FShipmentRecord.LoadFromDataset;
  except
    on e: Exception do
      RaiseException('vtDocumentsAfterScroll', e, Self);
  end;

end;

end.
