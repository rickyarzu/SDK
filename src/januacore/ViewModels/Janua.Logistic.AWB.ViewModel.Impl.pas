unit Janua.Logistic.AWB.ViewModel.Impl;

interface

uses
  System.SysUtils, System.Classes, Data.DB, {udmJanuaPgDocumentsStorage,} Janua.Core.Types,
  Janua.Controls.Forms.Intf, Janua.Core.Classes.Intf, Janua.Orm.Intf, Janua.Orm.Types,
  // JOrm
  JOrm.Logistic.AWBs.Intf, Janua.ViewModels.Intf, JOrm.Anagraph.Intf, JOrm.Items.Intf,
  // Inherites from Logistic AWB View Model ................................................................
  // Intf
  Janua.Logistic.AWB.ViewModel.Intf, Janua.Search.ViewModels.Engines.Intf,
  // Impl
  Janua.ViewModels.Templates, Janua.Reporting.Impl;

type
  TAWBDBViewModel = class(TJanuaViewModelDBTemplate, IJanuaLogisticAWBDBViewModel, IJanuaDBViewModel)
    // -------------------- inherited and override from TJanuaViewModelDBTemplate -----------------------------------------
  strict protected // virtual methods
    /// <summary> This methods (in the descendant) must set the correct model for the VM </summary>
    function CreateDBModel: IJanuaDBModel; override;
    procedure SetupSearchCallBack; override;
    function InternalActivate: boolean; override;
    procedure InternalCheck; override;
  protected // virtual methods
    /// <summary> This methods (in the descendant) must set the correct model for the VM </summary>
    procedure MainRecordAdd(aAction: IJanuaAction); override;
    procedure MainRecordEdit(aAction: IJanuaAction); override;
    procedure MainRecordDelete(aAction: IJanuaAction); override;
    procedure MainRecordPrint(aAction: IJanuaAction); override;
    procedure MainRecordExport(aAction: IJanuaAction); override;
    procedure MainRecordPreview(aAction: IJanuaAction); override;
    procedure MainRecordPost(aAction: IJanuaAction); override;
    procedure MainRecordSearch(aAction: IJanuaAction); override;
  public
    procedure OpenAll(const aThreaded: boolean = False); override;
    procedure StartSearch; override;
    Constructor Create; override;
    Destructor Destroy; override;
    // --------------------- end methods from TJanuaViewModelDBTemplate ------------------------------------------------

    // --------------------- IJanuaLogisticAWBDBViewModel Implementation -----------------------------------------------
  private
    FJanuaLogisticAWBDBModel: IJanuaLogisticAWBDBModel;
    // Search view Models
    FSVMCarrier: ISearchViewModelAnagraph;
    FSVMShipper: ISearchViewModelAnagraph;
    FSVMAirportDeparture: ISearchViewModelLocation;
    FSVMConsignee: ISearchViewModelAnagraph;
    FSVMAirportArrival: ISearchViewModelLocation;
  protected
    function GetjdsAWBs: IJanuaDBDataset;
    function GetjdsAWBRows: IJanuaDBDataset;
    function GetjdsAWBCodes: IJanuaDBDataset;
    function GetdsAWBs: TDataSource;
    function GetdsAWBRows: TDataSource;
    function GetLogisticAWBModel: IJanuaLogisticAWBDBModel;
    // ILogisticAWB
    function GetAWBRecord: ILogisticAWB;
    function GetWorkID: Integer;
    procedure SetWorkID(const Value: Integer);
    { function GetFormActionList: IJanuaActionList;
      procedure SetFormActionList(const Value: IJanuaActionList);
      /// <summary> A reduced Actions Set for Edit Form. </summary>
      property FormActionList: IJanuaActionList read GetFormActionList write SetFormActionList; }
    // ----- Search Engines -----------------------------------------------------------------------------
    function GetSVMCarrier: ISearchViewModelAnagraph;
    function GetSVMShipper: ISearchViewModelAnagraph;
    function GetSVMAirportDeparture: ISearchViewModelLocation;
    function GetSVMConsignee: ISearchViewModelAnagraph;
    function GetSVMAirportArrival: ISearchViewModelLocation;

    procedure SetSVMCarrier(const Value: ISearchViewModelAnagraph);
    procedure SetSVMShipper(const Value: ISearchViewModelAnagraph);
    procedure SetSVMAirportDeparture(const Value: ISearchViewModelLocation);
    procedure SetSVMConsignee(const Value: ISearchViewModelAnagraph);
    procedure SetSVMAirportArrival(const Value: ISearchViewModelLocation);
  public
    // ---- Properties ----------------------------------------------------------------------------------
    property jdsAWBs: IJanuaDBDataset read GetjdsAWBs;
    property jdsAWBCodes: IJanuaDBDataset read GetjdsAWBCodes;
    property LogisticAWBModel: IJanuaLogisticAWBDBModel read GetLogisticAWBModel;
    property dsAWBs: TDataSource read GetdsAWBs;
    property AWBRecord: ILogisticAWB read GetAWBRecord;
    property jdsAWBRows: IJanuaDBDataset read GetjdsAWBRows;
    property dsAWBRows: TDataSource read GetdsAWBRows;
    property WorkID: Integer read GetWorkID write SetWorkID;
  public
    // Search Engines ------------------------------------------------------------------------------------
    procedure CallBackShipper(aRecordCount: Integer); // shipper
    procedure CallBackCarrier(aRecordCount: Integer); // Carrier (Airplane Company).
    procedure CAllBackAirportDeparture(aRecordCount: Integer); // Departure Airport
    procedure CAllBackAirportArrival(aRecordCount: Integer); // Arrival Airport
    procedure CAllBackConsignee(aRecordCount: Integer); // Consignee
    procedure CAllBackIATAAgent(aRecordCount: Integer); // Row Item
    // Anagraphs
    /// <summary> View Model Search for Carrier  </summary>
    property SVMCarrier: ISearchViewModelAnagraph read GetSVMCarrier write SetSVMCarrier;
    property SVMShipper: ISearchViewModelAnagraph read GetSVMShipper write SetSVMShipper;
    property SVMConsignee: ISearchViewModelAnagraph read GetSVMConsignee write SetSVMConsignee;
    // Loctions
    property SVMAirportArrival: ISearchViewModelLocation read GetSVMAirportArrival write SetSVMAirportArrival;
    property SVMAirportDeparture: ISearchViewModelLocation read GetSVMAirportDeparture
      write SetSVMAirportDeparture;
  end;

type
  TJanuaLogisticAWBReporter = Class(TJanuaReporter, IJanuaLogisticAWBReporter, IJanuaInterface)
  private
    [weak]
    FLogisticAWBViewModel: IJanuaLogisticAWBDBViewModel;
  protected
    function GetLogisticAWBViewModel: IJanuaLogisticAWBDBViewModel;
    procedure SetLogisticAWBViewModel(const Value: IJanuaLogisticAWBDBViewModel);
  public
    destructor Destroy; override;
    property LogisticAWBViewModel: IJanuaLogisticAWBDBViewModel read GetLogisticAWBViewModel
      write SetLogisticAWBViewModel;
  End;

implementation

uses Spring, Janua.Application.Framework, Janua.ViewModels.Application, Janua.Reporting.Intf;

{ TAWBDBViewModel }

procedure TAWBDBViewModel.CAllBackAirportArrival(aRecordCount: Integer);
begin

end;

procedure TAWBDBViewModel.CAllBackAirportDeparture(aRecordCount: Integer);
begin

end;

procedure TAWBDBViewModel.CallBackCarrier(aRecordCount: Integer);
begin

end;

procedure TAWBDBViewModel.CAllBackConsignee(aRecordCount: Integer);
begin

end;

procedure TAWBDBViewModel.CAllBackIATAAgent(aRecordCount: Integer);
begin

end;

procedure TAWBDBViewModel.CallBackShipper;
begin

end;

constructor TAWBDBViewModel.Create;
var
  { lWHRLabelReceipt, } lReportLogisticAWB: IJanuaReporter;
  { TODO: lm: IJanuaLogisticAWBMasterLabel; }
  lr: IJanuaLogisticAWBReporter;
begin
  inherited;
  SetRecordEditDialog(IJanuaLogisticAWBDialog);
  // Adding IJanuaLogisticAWBReporter as lr to Reporting List
  Guard.CheckNotNull(ReportingList, 'ReportingList');
  lReportLogisticAWB := ReportingList.Add(IJanuaLogisticAWBReporter, 111, 'Print Air Waybill');
  Guard.CheckNotNull(lReportLogisticAWB, 'IJanuaLogisticAWBReporter, IJanuaLogisticAWBReporter not set');
  Assert(Supports(lReportLogisticAWB, IJanuaLogisticAWBReporter, lr),
    'IJanuaLogisticAWBReporter not supported');
  lr.LogisticAWBViewModel := self as IJanuaLogisticAWBDBViewModel;

end;

destructor TAWBDBViewModel.Destroy;
{$IFDEF DEBUG}
var
  vTest: Integer;
{$ENDIF}
begin
  try
    FSVMCarrier := nil;
    FSVMShipper := nil;
    FSVMAirportDeparture := nil;
    FSVMAirportArrival := nil;
{$IFDEF DEBUG} vTest := TInterfacedObject(FJanuaLogisticAWBDBModel.GetSelf).RefCount; {$ENDIF}
    FJanuaLogisticAWBDBModel := nil;
  except
    on e: Exception do
      LogException('Destroy', e, self);
  end;
  inherited;
end;

function TAWBDBViewModel.CreateDBModel: IJanuaDBModel; // TAWBDBViewModel.GetCreateDBModel;
begin
  inherited;
  try
    // FJanuaLogisticAWBDBModel: IJanuaLogisticAWBDBModel;
    if not TJanuaApplicationFactory.TryGetInterface(IJanuaLogisticAWBDBModel, FJanuaLogisticAWBDBModel) then
      raise Exception.Create('TJanuaDBDocumentsViewModel.DataModuleCreate IJanuaDBDocumentsModel not set');
    // At the moment WHReceipts are not splitted into different Groups
    { FJanuaLogisticAWBDBModel.GroupID := FDocTypeID; }
    FJanuaLogisticAWBDBModel.Activate;
    if not Supports(FJanuaLogisticAWBDBModel, IJanuaDBModel, Result) then
      raise Exception.Create(ClassName +
        'CreateModel FJanuaLogisticAWBDBModel does not support IJanuaDBModel ');

    if not Assigned(FSVMCarrier) then
      try
        if not TJanuaViewModelApplication.TryGetSearchViewModel(ISearchViewModelAnagraph, 13, FSVMCarrier)
        then
          raise Exception.Create('ISearchViewModelAnagraph interface not found ');
      except
        on e: Exception do
          RaiseException('FSVMCarrier', e, self);
      end;

    try
      if not TJanuaViewModelApplication.TryGetSearchViewModel(ISearchViewModelAnagraph, 10, FSVMShipper) then
        raise Exception.Create('ISearchViewModelAnagraph not set ');

    except
      on e: Exception do
        RaiseException('FSVMShipper', e, self);
    end;

    try
      if not TJanuaViewModelApplication.TryGetSearchViewModel(ISearchViewModelLocation, 16,
        FSVMAirportDeparture) then
        raise Exception.Create('ISearchViewModelLocation not set ');

    except
      on e: Exception do
        RaiseException('FSVMAirportDeparture', e, self);
    end;

    try
      if not TJanuaViewModelApplication.TryGetSearchViewModel(ISearchViewModelLocation, 16, FSVMAirportArrival)
      then
        raise Exception.Create('ISearchViewModelLocation not set ');
      // FSVMAirportDeparture.SearchText := GetAWBRecord..AsString;

    except
      on e: Exception do
        RaiseException('FSVMAirportArrival', e, self);
    end;

    try
      if not TJanuaViewModelApplication.TryGetSearchViewModel(ISearchViewModelAnagraph, 9, FSVMConsignee) then
        raise Exception.Create('ISearchViewModelAnagraph not set ');
    except
      on e: Exception do
        RaiseException('FSVMAirportArrival', e, self);
    end;

  except
    on e: Exception do
      RaiseException('CreateDBModel', e, self);
  end;

end;

function TAWBDBViewModel.GetAWBRecord: ILogisticAWB;
begin
  Result := FJanuaLogisticAWBDBModel.LogisticAWBRecord
end;

function TAWBDBViewModel.GetdsAWBRows: TDataSource;
begin
  Result := FJanuaLogisticAWBDBModel.jdsAWBRows.DataSource
end;

function TAWBDBViewModel.GetdsAWBs: TDataSource;
begin
  Result := FJanuaLogisticAWBDBModel.jdsAWBs.DataSource
end;

{ function TAWBDBViewModel.GetFormActionList: IJanuaActionList;
  begin

  end; }

function TAWBDBViewModel.GetjdsAWBCodes: IJanuaDBDataset;
begin
  Result := FJanuaLogisticAWBDBModel.jdsAWBCodes
end;

function TAWBDBViewModel.GetjdsAWBRows: IJanuaDBDataset;
begin
  Result := FJanuaLogisticAWBDBModel.jdsAWBRows
end;

function TAWBDBViewModel.GetjdsAWBs: IJanuaDBDataset;
begin
  Result := FJanuaLogisticAWBDBModel.jdsAWBs
end;

function TAWBDBViewModel.GetLogisticAWBModel: IJanuaLogisticAWBDBModel;
begin
  Result := FJanuaLogisticAWBDBModel
end;

function TAWBDBViewModel.GetSVMAirportArrival: ISearchViewModelLocation;
begin
  Result := FSVMAirportArrival
end;

function TAWBDBViewModel.GetSVMAirportDeparture: ISearchViewModelLocation;
begin
  Result := FSVMAirportDeparture
end;

function TAWBDBViewModel.GetSVMCarrier: ISearchViewModelAnagraph;
begin
  Result := FSVMCarrier
end;

function TAWBDBViewModel.GetSVMConsignee: ISearchViewModelAnagraph;
begin
  Result := FSVMConsignee
end;

function TAWBDBViewModel.GetSVMShipper: ISearchViewModelAnagraph;
begin
  Result := FSVMShipper
end;

function TAWBDBViewModel.GetWorkID: Integer;
begin
  Result := FJanuaLogisticAWBDBModel.WorkID
end;

function TAWBDBViewModel.InternalActivate: boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        Guard.CheckTrue(Assigned(FJanuaLogisticAWBDBModel), 'FJanuaDocumentsModel is nil');
        Guard.CheckTrue(Assigned(FJanuaLogisticAWBDBModel.CurrentRecord), 'FJanuaDocumentsModel is nil');
        Guard.CheckTrue(Assigned(FJanuaLogisticAWBDBModel.jdsAWBs), 'jdsAWBs is nil');
        Guard.CheckTrue(Assigned(FJanuaLogisticAWBDBModel.jdsAWBRows), 'jdsAWBRows is nil');
        Guard.CheckTrue(Assigned(FJanuaLogisticAWBDBModel.jdsAWBCodes), 'jdsAWBCodes is nil');
      end;
    except
      on e: Exception do
        RaiseException('InternalActivate', e, self);
    end;

end;

procedure TAWBDBViewModel.InternalCheck;
begin
  inherited;

end;

procedure TAWBDBViewModel.MainRecordAdd(aAction: IJanuaAction);
begin
  inherited;

end;

procedure TAWBDBViewModel.MainRecordDelete(aAction: IJanuaAction);
begin
  inherited;

end;

procedure TAWBDBViewModel.MainRecordEdit(aAction: IJanuaAction);
begin
  inherited;

end;

procedure TAWBDBViewModel.MainRecordExport(aAction: IJanuaAction);
begin
  inherited;

end;

procedure TAWBDBViewModel.MainRecordPost(aAction: IJanuaAction);
begin
  inherited;

end;

procedure TAWBDBViewModel.MainRecordPreview(aAction: IJanuaAction);
begin
  inherited;

end;

procedure TAWBDBViewModel.MainRecordPrint(aAction: IJanuaAction);
begin
  inherited;

end;

procedure TAWBDBViewModel.MainRecordSearch(aAction: IJanuaAction);
begin
  inherited;

end;

procedure TAWBDBViewModel.OpenAll(const aThreaded: boolean);
begin
  inherited;
  try
    FJanuaLogisticAWBDBModel.IsThreaded := aThreaded;
    FJanuaLogisticAWBDBModel.OpenAll(aThreaded);
    FJanuaLogisticAWBDBModel.IsThreaded := True;
  except
    on e: Exception do
      RaiseException('OpenAll', e, self);
  end;
end;

{ procedure TAWBDBViewModel.SetFormActionList(const Value: IJanuaActionList);
  begin

  end; }

procedure TAWBDBViewModel.SetSVMAirportArrival(const Value: ISearchViewModelLocation);
begin
  FSVMAirportArrival := Value
end;

procedure TAWBDBViewModel.SetSVMAirportDeparture(const Value: ISearchViewModelLocation);
begin
  FSVMAirportDeparture := Value
end;

procedure TAWBDBViewModel.SetSVMCarrier(const Value: ISearchViewModelAnagraph);
begin
  FSVMCarrier := Value
end;

procedure TAWBDBViewModel.SetSVMConsignee(const Value: ISearchViewModelAnagraph);
begin
  FSVMConsignee := Value
end;

procedure TAWBDBViewModel.SetSVMShipper(const Value: ISearchViewModelAnagraph);
begin
  FSVMShipper := Value
end;

procedure TAWBDBViewModel.SetupSearchCallBack;
begin
  inherited;
  { FSVMCarrier.SearchText := GetAWBRecord.CarrierName.AsString; }
  AWBRecord.CarrierName.Bind('AsString', FSVMCarrier.GetSelf, 'SearchText');
  FSVMCarrier.CallBackSearch := CallBackCarrier;
  { FSVMConsignee.SearchText := GetAWBRecord.ConsigneeName.AsString; }
  AWBRecord.ConsigneeName.Bind('AsString', FSVMConsignee.GetSelf, 'SearchText');
  FSVMConsignee.CallBackSearch := CAllBackConsignee;
  FSVMAirportDeparture.CallBackSearch := CAllBackAirportDeparture;
  // FSVMAirportDeparture.SearchText := GetAWBRecord.DepartureAirport.AsString;
  // AWBRecord.DepartureAirport.Bind('AsString', FSVMAirportDeparture.GetSelf, 'SearchText');
  FSVMAirportDeparture.CallBackSearch := CAllBackAirportDeparture;
  FSVMCarrier.SearchText := GetAWBRecord.ShipperName.AsString;
  AWBRecord.ShipperName.Bind('AsString', FSVMCarrier.GetSelf, 'SearchText');
  FSVMCarrier.CallBackSearch := CallBackShipper;
end;

procedure TAWBDBViewModel.SetWorkID(const Value: Integer);
begin
  FJanuaLogisticAWBDBModel.WorkID := Value
end;

procedure TAWBDBViewModel.StartSearch;
begin
  FJanuaLogisticAWBDBModel.StartSearch;
end;

{ TJanuaLogisticAWBReporter }

destructor TJanuaLogisticAWBReporter.Destroy;
begin
  FLogisticAWBViewModel := nil;
  inherited;
end;

function TJanuaLogisticAWBReporter.GetLogisticAWBViewModel: IJanuaLogisticAWBDBViewModel;
begin
  Result := FLogisticAWBViewModel
end;

procedure TJanuaLogisticAWBReporter.SetLogisticAWBViewModel(const Value: IJanuaLogisticAWBDBViewModel);
begin
  FLogisticAWBViewModel := Value
end;

end.
