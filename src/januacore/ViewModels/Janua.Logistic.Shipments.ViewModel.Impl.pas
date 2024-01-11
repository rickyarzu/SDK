unit Janua.Logistic.Shipments.ViewModel.Impl;

interface

uses
  // cxClasses
  Data.DB, System.SysUtils,
  // Janua
  Janua.Core.Classes, Janua.Models.Templates, Janua.Logistic.Types,
  Janua.Controls.Forms.Intf, Janua.Core.Classes.Intf,
  Janua.ViewModels.Intf, Janua.ViewModels.Templates,
  Janua.Search.ViewModels.Engines.Intf,
  // JOrm
  Janua.Orm.Intf, JOrm.Items.Intf, JOrm.Logistic.Locations.Intf, JOrm.Anagraph.Intf,
  JOrm.Shipping.Intf,
  // JanuaDataModule
  Janua.Logistic.Shipments.ViewModel.Intf, JOrm.Logistic.AWBs.Intf, JOrm.Logistic.Shipments.Intf,
  Janua.Workflows.ViewModel.Intf, Janua.Workflows.Model.Impl;

type

  TJanuaDBShipmentsViewModel = class(TJanuaViewModelDBTemplate, IJanuaDBShipmentsViewModel)
  private
    // Search ViewModels
    FSVMCarrier: ISearchViewModelAnagraph;
    FSVMShipper: ISearchViewModelAnagraph;
    FSVMConsignee: ISearchViewModelAnagraph;
    FSVMSupplier: ISearchViewModelAnagraph;
    FSVMAgent: ISearchViewModelAnagraph;
    FSVMCustomer: ISearchViewModelAnagraph;
    FSVMLocation: ISearchViewModelAnagraph;
    FSVMVessel: ISearchViewModelVessel;
    FSVMWarehouse: ISearchViewModelAnagraph;
    FSVMAirport: ISearchViewModelLocation;
    FSVMArrivalAirport: ISearchViewModelLocation;
    FSVMPol: ISearchViewModelLocation;
    FSVMPod: ISearchViewModelLocation;
    FSVMRowItem: ISearchViewModelItem;
    // Model
    FShipmentsModel: IJanuaShipmentsModel;
    FWorkTypeID: Integer;
  strict protected // virtual methods
    procedure SetupSearchCallBack; override;
    procedure ClearSearchModels; override;
    procedure InternalCheck; override;
    function BoolInternalCheck: Boolean;
    function FactoryGetDBModel: IJanuaShipmentsModel; virtual;
    /// <summary> This methods (in the descendant) must set the correct model for the VM </summary>
    function CreateDBModel: IJanuaDBModel; override;
    function InternalActivate: Boolean; override;
  protected
    function GetjdsConditions: IJanuaDBDataset;
    function GetjdsShipments: IJanuaDBDataset;
    function GetjdsShipmentRows: IJanuaDBDataset;
    function GetjdsAttachments: IJanuaDBDataset;

    function GetdsShipments: TDataSource;
    function GetdsShipmentRows: TDataSource;
    function GetDBShipmentsModel: IJanuaShipmentsModel;

    function GetShipmentRecord: IShipmentView;
    function GetWorkTypeID: Integer;
    procedure SetWorkTypeID(const Value: Integer);
    function GetSVMRowItem: ISearchViewModelItem;
    // ----- Search Engines -----------------------------------------------------------------------------
    function GetSVMCarrier: ISearchViewModelAnagraph;
    function GetSVMShipper: ISearchViewModelAnagraph;
    function GetSVMConsignee: ISearchViewModelAnagraph; // Consignee
    function GetSVMSupplier: ISearchViewModelAnagraph; // Supplier
    function GetSVMAgent: ISearchViewModelAnagraph;
    function GetSVMCustomer: ISearchViewModelAnagraph;
    function GetSVMLocation: ISearchViewModelAnagraph;
    function GetSVMVessel: ISearchViewModelVessel;
    function GetSVMWarehouse: ISearchViewModelAnagraph;
    function GetSVMAirport: ISearchViewModelLocation;
    function GetSVMArrivalAirport: ISearchViewModelLocation;
    function GetSVMPol: ISearchViewModelLocation;
    function GetSVMPod: ISearchViewModelLocation;
  public
    // Search Items Engine ------------------------------------------------------------------------------
    procedure CallBackCarrier(aRecordCount: Integer = 1); // Carrier
    procedure CallBackonsignee(aRecordCount: Integer = 1); // Consignee
    procedure CallBackShipper(aRecordCount: Integer = 1); // shipper
    procedure CallBackAgent(aRecordCount: Integer = 1); // Agent
    procedure CallBackCustomer(aRecordCount: Integer = 1); // Agent
    procedure CAllBackLocation(aRecordCount: Integer = 1); // Warehouse Location (Anagraph)
    procedure CAllBackVessel(aRecordCount: Integer = 1);
    procedure CallBackWarehouse(aRecordCount: Integer = 1); // Warehouse
    procedure CallBackAirport(aRecordCount: Integer = 1); // Departure Airport
    procedure CallBackArrivalAirport(aRecordCount: Integer = 1); // Arrival Airport
    procedure CallBackPol(aRecordCount: Integer = 1); // PoL Port of Loading
    procedure CallBackPod(aRecordCount: Integer = 1); // PoD Port of Delivery
    procedure CallBackRowItem(aRecordCount: Integer = 1); // To search a commodity or an Item on rows
  public // ---- Properties ----------------------------------------------------------------------------------
    property jdsShipments: IJanuaDBDataset read GetjdsShipments;
    property jdsAttachments: IJanuaDBDataset read GetjdsAttachments;
    property ShipmentsModel: IJanuaShipmentsModel read GetDBShipmentsModel;
    property dsShipments: TDataSource read GetdsShipments;
    property ShipmentRecord: IShipmentView read GetShipmentRecord;
    property jdsShipmentRows: IJanuaDBDataset read GetjdsShipmentRows;
    property dsShipmentRows: TDataSource read GetdsShipmentRows;
    property WorkTypeID: Integer read GetWorkTypeID write SetWorkTypeID;
    /// <summary> View Model Search for Carrier  </summary>
    property SVMShipper: ISearchViewModelAnagraph read GetSVMShipper;
    property SVMCarrier: ISearchViewModelAnagraph read GetSVMCarrier;
    property SVMAgent: ISearchViewModelAnagraph read GetSVMAgent;
    property SVMCustomer: ISearchViewModelAnagraph read GetSVMCustomer;
    property SVMLocation: ISearchViewModelAnagraph read GetSVMLocation;
    property SVMVessel: ISearchViewModelVessel read GetSVMVessel;
    property SVMWarehouse: ISearchViewModelAnagraph read GetSVMWarehouse;
    property SVMAirport: ISearchViewModelLocation read GetSVMAirport;
    property SVMArrivalAirport: ISearchViewModelLocation read GetSVMArrivalAirport;
    property SVMPol: ISearchViewModelLocation read GetSVMPol;
    property SVMAPod: ISearchViewModelLocation read GetSVMPod;
    property SVMRowItem: ISearchViewModelItem read GetSVMRowItem;
  public
    { Public declarations }
    procedure OpenAll(const aThreaded: Boolean = False); override;
    procedure StartSearch; override;
    constructor Create; override;
    destructor Destroy; override;
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
  end;

implementation

uses Janua.Core.AsyncTask, Spring, Janua.Core.Functions, Janua.Application.Framework,
  Janua.ViewModels.Application;

{ TJanuaDBShipmentsViewModel }

procedure TJanuaDBShipmentsViewModel.AfterConstruction;
begin
  inherited;
end;

procedure TJanuaDBShipmentsViewModel.BeforeDestruction;
begin
  inherited;
  try
    TJanuaApplication.BindEngine.ClearBindings(Self);
  except
    on e: Exception do
      LogException('BeforeDestruction', e, Self);
  end;
end;

function TJanuaDBShipmentsViewModel.BoolInternalCheck: Boolean;
begin
  Result := False;
  try
{$IFDEF  DEBUG}
    Guard.CheckNotNull((FShipmentsModel), 'FJanuaDocumentsModel is nil');
    Guard.CheckNotNull((FShipmentsModel.CurrentRecord), 'CurrentRecord is nil');
    Guard.CheckNotNull((FShipmentsModel.jdsConditions), 'jdsConditions is nil');
    Guard.CheckNotNull((FShipmentsModel.jdsShipments), 'jdsShipments is nil');
    Guard.CheckNotNull((FShipmentsModel.jdsShipmentRows), 'jdsShipmentRows is nil');
    Guard.CheckNotNull((FShipmentsModel.jdsAttachments), 'jdsAttachments is nil');
    Guard.CheckNotNull((FSVMShipper), 'FSVMShipper is nil');
    Guard.CheckNotNull((FSVMCarrier), 'FSVMCarrier is nil');
    Guard.CheckNotNull((FSVMAgent), 'FSVMAgent is nil');
    Guard.CheckNotNull((FSVMCustomer), 'FSVMCustomer is nil');
    Guard.CheckNotNull((FSVMWarehouse), 'FSVMWarehouse is nil');
    Guard.CheckNotNull((FSVMAirport), 'FSVMAirport is nil');
    Guard.CheckNotNull((FSVMPol), 'FSVMPol is nil');
    Guard.CheckNotNull((FSVMPod), 'FSVMAPod is nil');
    Guard.CheckNotNull((FSVMArrivalAirport), 'FSVMArrivalAirport is nil');
    Guard.CheckNotNull((FSVMRowItem), 'FSVMRowItem is nil');
{$ENDIF}
    Result := True;
  except
    on e: Exception do
      RaiseException('InternalCheck', e, Self);
  end;
end;

procedure TJanuaDBShipmentsViewModel.InternalCheck;
begin
  inherited;

end;

procedure TJanuaDBShipmentsViewModel.CallBackAgent(aRecordCount: Integer);
begin
  if aRecordCount > 0 then
    FShipmentsModel.CallBackAgent(SVMAgent.Anagraph);
end;

procedure TJanuaDBShipmentsViewModel.CallBackAirport(aRecordCount: Integer);
begin
  if aRecordCount > 0 then
    FShipmentsModel.CallBackAirport(SVMAirport.Location);
end;

procedure TJanuaDBShipmentsViewModel.CallBackArrivalAirport(aRecordCount: Integer);
begin
  if aRecordCount > 0 then
    FShipmentsModel.CallBackArrivalAirport(GetSVMArrivalAirport.Location);
end;

procedure TJanuaDBShipmentsViewModel.CallBackCarrier(aRecordCount: Integer);
begin
  if aRecordCount > 0 then
    FShipmentsModel.CallBackCarrier(GetSVMCarrier.Anagraph);
end;

procedure TJanuaDBShipmentsViewModel.CallBackCustomer(aRecordCount: Integer);
begin
  if aRecordCount > 0 then
    FShipmentsModel.CallBackCustomer(GetSVMCustomer.Anagraph);
end;

procedure TJanuaDBShipmentsViewModel.CAllBackLocation(aRecordCount: Integer);
begin
  if aRecordCount > 0 then
    FShipmentsModel.CAllBackLocation(GetSVMLocation.Anagraph);
end;

procedure TJanuaDBShipmentsViewModel.CallBackonsignee(aRecordCount: Integer);
begin
  if aRecordCount > 0 then
    FShipmentsModel.CallBackConsignee(GetSVMConsignee.Anagraph);
end;

procedure TJanuaDBShipmentsViewModel.CallBackPod(aRecordCount: Integer);
begin
  if aRecordCount > 0 then
    FShipmentsModel.CallBackPod(GetSVMPod.Location);
end;

procedure TJanuaDBShipmentsViewModel.CallBackPol(aRecordCount: Integer);
begin
  if aRecordCount > 0 then
    FShipmentsModel.CallBackPol(GetSVMPol.Location);
end;

procedure TJanuaDBShipmentsViewModel.CallBackRowItem(aRecordCount: Integer);
begin
  if aRecordCount > 0 then
    FShipmentsModel.CallBackRowItem(GetSVMRowItem.Item);
end;

procedure TJanuaDBShipmentsViewModel.CallBackShipper(aRecordCount: Integer);
begin
  if aRecordCount > 0 then
    FShipmentsModel.CallBackShipper(GetSVMShipper.Anagraph);
end;

procedure TJanuaDBShipmentsViewModel.CAllBackVessel(aRecordCount: Integer);
begin
  if aRecordCount > 0 then
    FShipmentsModel.CAllBackVessel(GetSVMVessel.Vessel);
end;

procedure TJanuaDBShipmentsViewModel.CallBackWarehouse(aRecordCount: Integer);
begin
  if aRecordCount > 0 then
    FShipmentsModel.CallBackWarehouse(GetSVMWarehouse.Anagraph);
end;

procedure TJanuaDBShipmentsViewModel.ClearSearchModels;
begin
  inherited;
  FSVMLocation.CallBackSearch := nil;
  FSVMCarrier.CallBackSearch := nil;
  FSVMShipper.CallBackSearch := nil;
  FSVMAgent.CallBackSearch := nil;
  FSVMCustomer.CallBackSearch := nil;
  FSVMWarehouse.CallBackSearch := nil;
  FSVMVessel.CallBackSearch := nil;
  FSVMAirport.CallBackSearch := nil;
  FSVMArrivalAirport.CallBackSearch := nil;
  FSVMPol.CallBackSearch := nil;
  FSVMPod.CallBackSearch := nil;
  FSVMRowItem.CallBackSearch := nil;

  FSVMLocation.ClearBindings;
  FSVMCarrier.ClearBindings;
  FSVMShipper.ClearBindings;
  FSVMAgent.ClearBindings;
  FSVMCustomer.ClearBindings;
  FSVMWarehouse.ClearBindings;
  FSVMVessel.ClearBindings;
  FSVMAirport.ClearBindings;
  FSVMArrivalAirport.ClearBindings;
  FSVMPol.ClearBindings;
  FSVMPod.ClearBindings;
  FSVMRowItem.ClearBindings;
end;

constructor TJanuaDBShipmentsViewModel.Create;
begin
  inherited;
  FWorkTypeID := 0;
  SetRecordEditDialog(IJanuaShipmentEditDialog);
end;

destructor TJanuaDBShipmentsViewModel.Destroy;
begin
  try
    FSVMCarrier := nil;
    FSVMShipper := nil;
    FSVMAgent := nil;
    FSVMCustomer := nil;
    FSVMLocation := nil;
    FSVMVessel := nil;
    FSVMWarehouse := nil;
    FSVMAirport := nil;
    FSVMArrivalAirport := nil;
    FSVMPol := nil;
    FSVMPod := nil;
    FShipmentsModel := nil;

  except
    on e: Exception do
      LogException('Destroy', e, Self);
  end;
  inherited;
end;

function TJanuaDBShipmentsViewModel.FactoryGetDBModel: IJanuaShipmentsModel;
begin
  if not TJanuaApplicationFactory.TryGetInterface(IJanuaShipmentsModel, Result) then
    raise Exception.Create('IJanuaShipmentsModel not set');
end;

function TJanuaDBShipmentsViewModel.CreateDBModel: IJanuaDBModel;
var
  sTmp: string;
begin
  try
    FShipmentsModel := FactoryGetDBModel;
    FShipmentsModel.WorkTypeID := FWorkTypeID;
    FShipmentsModel.Activate;
    if not Supports(FShipmentsModel, IJanuaDBModel, Result) then
      raise Exception.Create
        ('FShipmentsModel does not support IJanuaDBModel ');

    if not TJanuaApplication.UnitTesting then
      Async.Run<Boolean>(
        function: Boolean
        begin
          Result := True;
          MonitorEnter(Self);
          try
            Result := // ------------------- Activation -------------------------------------------------------------------
              TJanuaViewModelApplication.TryGetSearchViewModel(ISearchViewModelAnagraph, Ord(agCarriers),
              FSVMCarrier) and FSVMCarrier.Activate and
            // ------------------- Activation --------------------------------------------
              TJanuaViewModelApplication.TryGetSearchViewModel(ISearchViewModelAnagraph, Ord(agShippers),
              FSVMShipper) and FSVMShipper.Activate and
            // ------------------- Activation --------------------------------------------
              TJanuaViewModelApplication.TryGetSearchViewModel(ISearchViewModelAnagraph, Ord(agAgents),
              FSVMAgent) and FSVMAgent.Activate and
            // ------------------- Activation --------------------------------------------
              TJanuaViewModelApplication.TryGetSearchViewModel(ISearchViewModelAnagraph, Ord(agCustomers),
              FSVMCustomer) and FSVMCustomer.Activate and
            // ------------------- Activation ------------------------------------------
              TJanuaViewModelApplication.TryGetSearchViewModel(ISearchViewModelAnagraph, Ord(agLocations),
              FSVMLocation) and FSVMLocation.Activate and
            // ------------------- Activation ------------------------------------------
              TJanuaViewModelApplication.TryGetSearchViewModel(ISearchViewModelAnagraph, Ord(agWarehouses),
              FSVMWarehouse) and FSVMWarehouse.Activate and
            // ------------------- Activation -----------------------------------------
              TJanuaViewModelApplication.TryGetSearchViewModel(ISearchViewModelVessel, 0, FSVMVessel) and
              FSVMVessel.Activate and
            // ------------------- Activation -----------------------------------------------
              TJanuaViewModelApplication.TryGetSearchViewModel(ISearchViewModelLocation, Ord(lgAirports),
              FSVMAirport) and FSVMAirport.Activate and
            // ------------------- Activation -----------------------------------------
              TJanuaViewModelApplication.TryGetSearchViewModel(ISearchViewModelLocation, Ord(lgAirports),
              FSVMArrivalAirport) and FSVMArrivalAirport.Activate and
            // ------------------- Activation ----------------
              TJanuaViewModelApplication.TryGetSearchViewModel(ISearchViewModelLocation, Ord(lgPorts),
              FSVMPol) and FSVMPol.Activate and
            // ------------------- Activation -----------------------------------------------
              TJanuaViewModelApplication.TryGetSearchViewModel(ISearchViewModelLocation, Ord(lgPorts),
              FSVMPod) and FSVMPod.Activate and
            // ------------------- Activation -----------------------------------------------
              TJanuaViewModelApplication.TryGetSearchViewModel(ISearchViewModelItem, 0, FSVMRowItem) and
              FSVMRowItem.Activate;
          finally
            MonitorExit(Self);
          end;
        end,
        procedure(const aResult: Boolean)
        begin
          if aResult and BoolInternalCheck then
          begin

          end;
        end,
        procedure(const Ex: Exception)
        begin
          JShowError(Ex.Message);
        end);

  except
    on e: Exception do
      RaiseException('CreateDBModel', e, Self);
  end;
end;

function TJanuaDBShipmentsViewModel.GetDBShipmentsModel: IJanuaShipmentsModel;
begin
  Result := FShipmentsModel
end;

function TJanuaDBShipmentsViewModel.GetdsShipmentRows: TDataSource;
begin
  Result := FShipmentsModel.jdsShipmentRows.DataSource;
end;

function TJanuaDBShipmentsViewModel.GetdsShipments: TDataSource;
begin
  Result := FShipmentsModel.jdsShipments.DataSource
end;

function TJanuaDBShipmentsViewModel.GetjdsAttachments: IJanuaDBDataset;
begin
  Result := FShipmentsModel.jdsAttachments
end;

function TJanuaDBShipmentsViewModel.GetjdsConditions: IJanuaDBDataset;
begin
  Result := FShipmentsModel.jdsConditions
end;

function TJanuaDBShipmentsViewModel.GetjdsShipmentRows: IJanuaDBDataset;
begin
  Result := FShipmentsModel.jdsShipmentRows
end;

function TJanuaDBShipmentsViewModel.GetjdsShipments: IJanuaDBDataset;
begin
  Result := FShipmentsModel.jdsShipments
end;

function TJanuaDBShipmentsViewModel.GetShipmentRecord: IShipmentView;
begin
  Result := FShipmentsModel.ShipmentRecord
end;

function TJanuaDBShipmentsViewModel.GetSVMAgent: ISearchViewModelAnagraph;
begin
  Result := FSVMAgent
end;

function TJanuaDBShipmentsViewModel.GetSVMAirport: ISearchViewModelLocation;
begin
  Result := FSVMAirport
end;

function TJanuaDBShipmentsViewModel.GetSVMPod: ISearchViewModelLocation;
begin
  Result := FSVMPod
end;

function TJanuaDBShipmentsViewModel.GetSVMArrivalAirport: ISearchViewModelLocation;
begin
  Result := FSVMArrivalAirport
end;

function TJanuaDBShipmentsViewModel.GetSVMCarrier: ISearchViewModelAnagraph;
begin
  if not Assigned(FSVMCarrier) then
  begin
    TJanuaViewModelApplication.TryGetSearchViewModel(ISearchViewModelAnagraph, Ord(agCarriers), FSVMCarrier);
    FSVMCarrier.Activate
  end;

  Result := FSVMCarrier
end;

function TJanuaDBShipmentsViewModel.GetSVMConsignee: ISearchViewModelAnagraph;
begin
  Result := FSVMConsignee
end;

function TJanuaDBShipmentsViewModel.GetSVMCustomer: ISearchViewModelAnagraph;
begin
  Result := FSVMCustomer
end;

function TJanuaDBShipmentsViewModel.GetSVMLocation: ISearchViewModelAnagraph;
begin
  Result := FSVMLocation
end;

function TJanuaDBShipmentsViewModel.GetSVMPol: ISearchViewModelLocation;
begin
  Result := FSVMPol
end;

function TJanuaDBShipmentsViewModel.GetSVMRowItem: ISearchViewModelItem;
begin
  Result := FSVMRowItem
end;

function TJanuaDBShipmentsViewModel.GetSVMShipper: ISearchViewModelAnagraph;
begin
  Result := FSVMShipper
end;

function TJanuaDBShipmentsViewModel.GetSVMSupplier: ISearchViewModelAnagraph;
begin
  Result := FSVMSupplier
end;

function TJanuaDBShipmentsViewModel.GetSVMVessel: ISearchViewModelVessel;
begin
  Result := FSVMVessel
end;

function TJanuaDBShipmentsViewModel.GetSVMWarehouse: ISearchViewModelAnagraph;
begin
  Result := FSVMWarehouse
end;

function TJanuaDBShipmentsViewModel.GetWorkTypeID: Integer;
begin
  Result := FWorkTypeID
end;

function TJanuaDBShipmentsViewModel.InternalActivate: Boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        // Insert code here;
      end;
    except
      on e: Exception do
        RaiseException('InternalActivate', e, Self);
    end;
end;

procedure TJanuaDBShipmentsViewModel.OpenAll(const aThreaded: Boolean);
begin
  inherited;
  try
    FShipmentsModel.WorkTypeID := FWorkTypeID;
    FShipmentsModel.IsThreaded := aThreaded;
    FShipmentsModel.OpenAll(aThreaded);
    FShipmentsModel.IsThreaded := True;
  except
    on e: Exception do
      RaiseException('OpenAll', e, Self);
  end;

end;

procedure TJanuaDBShipmentsViewModel.SetupSearchCallBack;
begin
  inherited;
  FSVMLocation.CallBackSearch := CAllBackLocation;
  FSVMCarrier.CallBackSearch := CallBackCarrier;
  FSVMShipper.CallBackSearch := CallBackShipper;
  FSVMAgent.CallBackSearch := CallBackAgent;
  FSVMCustomer.CallBackSearch := CallBackCustomer;
  FSVMWarehouse.CallBackSearch := CallBackWarehouse;
  FSVMVessel.CallBackSearch := CAllBackVessel;
  FSVMAirport.CallBackSearch := CallBackAirport;
  FSVMArrivalAirport.CallBackSearch := CallBackArrivalAirport;
  FSVMPol.CallBackSearch := CallBackPol;
  FSVMPod.CallBackSearch := CallBackPod;
  FSVMRowItem.CallBackSearch := CallBackRowItem;
end;

procedure TJanuaDBShipmentsViewModel.SetWorkTypeID(const Value: Integer);
begin
  FWorkTypeID := Value;
end;

procedure TJanuaDBShipmentsViewModel.StartSearch;
begin
  FShipmentsModel.StartSearch;
end;

end.
