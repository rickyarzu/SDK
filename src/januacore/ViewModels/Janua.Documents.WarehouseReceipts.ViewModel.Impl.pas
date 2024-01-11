unit Janua.Documents.WarehouseReceipts.ViewModel.impl;

interface

uses
  System.SysUtils, System.Classes, Data.DB, {udmJanuaPgDocumentsStorage,} Janua.Core.Types,
  Janua.Controls.Forms.Intf, Janua.Core.Classes.Intf, Janua.Orm.Intf, Janua.Orm.Types,
  JOrm.Documents.Intf, JOrm.Documents.Types.impl,
  Janua.ViewModels.Intf, Janua.ViewModels.Templates,
  // Inherites from Documents View Model ................................................................
  Janua.Documents.ViewModel.Intf, Janua.Logistic.Documents.ViewModel.impl, Janua.Reporting.impl,
  Janua.Documents.WarehouseReceipts.ViewModel.Intf, Janua.Search.ViewModels.Engines.Intf;

type
  TWHRRowsViewModel = class(TLogisticDocRowsViewModel, IJanuaDocRowsViewModel, IJanuaWHRRowsViewModel)
  strict protected
    function InternalActivate: boolean; override;
    procedure ActivateDetails; override;
    procedure DeactivateDetails; override;
  public
    constructor Create; override;
    procedure AfterConstruction; override;
  end;

  TDocWHReceiptsViewModel = class(TJanuaLogisticDocumentsViewModel, IJanuaWHReceiptsViewModel,
    IJanuaDBViewModel)
  private
    FJanuaWHReceiptsModel: IJanuaWHReceiptsModel;
    FSVMShipment: ISearchViewModelShipments;
  strict protected
    function FactoryGetDBModel: IJanuaDBDocumentsModel; override;
    procedure SetupSearchCallBack; override;
    procedure ClearSearchModels; override;
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
    function GetSVMShipment: ISearchViewModelShipments;
    procedure SetSVMShipment(const Value: ISearchViewModelShipments);
  public
    Constructor Create; override;
    Destructor Destroy; override;
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    // ******************* SubViewModels Management ********************************************************************
  private
    FWHRRowsViewModel: IJanuaWHRRowsViewModel;
  strict protected
    procedure ActivateDetails; override;
    procedure DeactivateDetails; override;
  protected
    function GetWHRRowsViewModel: IJanuaWHRRowsViewModel;
  public
    procedure CallBackShipment(aRecordCount: Integer);
  public
    property SVMShipment: ISearchViewModelShipments read GetSVMShipment write SetSVMShipment;
    property WHRRowsViewModel: IJanuaWHRRowsViewModel read GetWHRRowsViewModel;
    // ******************* End SubViewModels Management ****************************************************************
  end;

type
  TJanuaWHRReporter = Class(TJanuaReporter, IJanuaWHRReporter, IJanuaInterface)
  private
    FWHRViewModel: IJanuaWHReceiptsViewModel;
  protected
    function GetWHRViewModel: IJanuaWHReceiptsViewModel;
    procedure SetWHRViewModel(const Value: IJanuaWHReceiptsViewModel);
  public
    destructor Destroy; override;
    property WHRViewModel: IJanuaWHReceiptsViewModel read GetWHRViewModel write SetWHRViewModel;
  End;

implementation

uses Janua.Reporting.Intf, Spring, Janua.Application.Framework, System.UITypes, Janua.ViewModels.Application,
  Janua.Core.Functions, Janua.Core.AsyncTask;

{ TDocWHReceiptsViewModel }
procedure TDocWHReceiptsViewModel.ActivateDetails;
var
  lTmpSVMSupplier: ISearchViewModelAnagraph;
begin
  inherited;
  FWHRRowsViewModel := TWHRRowsViewModel.Create(FJanuaWHReceiptsModel.DocumentRows);
  if TJanuaViewModelApplication.TryGetSearchViewModel(ISearchViewModelAnagraph, 0, lTmpSVMSupplier,
    FSVMHolder.jdsSearch) then
  begin
    lTmpSVMSupplier.Activate;
    FWHRRowsViewModel.SVMSupplier := lTmpSVMSupplier;
  end;
  AddDetail(FWHRRowsViewModel);
end;

procedure TDocWHReceiptsViewModel.AfterConstruction;
var
  lField: IJanuaField;
begin
  inherited;
  try
    lField := jdsDocHeads.FilterParams.AddParam('doc_date_from', TJanuaFieldType.jptDate, 0);
    lField.ParamOperator := TJanuaOperator.MoreThanEquals;
    lField.DefaultValue := Date;
    lField.Title := 'Since';
    lField.DBField := 'doc_date';
    lField.Active := False;

    lField := jdsDocHeads.FilterParams.AddParam('doc_date_to', TJanuaFieldType.jptDate, 0);
    lField.ParamOperator := TJanuaOperator.LessThanEquals;
    lField.DefaultValue := Date;
    lField.Title := 'Until';
    lField.DBField := 'doc_date';
    lField.Active := False;

    lField := jdsDocHeads.FilterParams.AddParam('inventory', TJanuaFieldType.jptBoolean, True, True);
    lField.ParamOperator := TJanuaOperator.Equals;
    lField.DefaultValue := True;
    lField.Title := 'In Inventory';
    lField.DBField := 'inventory';
    lField.Active := True;

  except
    on e: Exception do
      RaiseException('AfterConstruction', e, self);
  end;
end;

procedure TDocWHReceiptsViewModel.BeforeDestruction;
begin
  inherited;

end;

procedure TDocWHReceiptsViewModel.CallBackShipment(aRecordCount: Integer);
begin
  if aRecordCount > 0 then
    FJanuaWHReceiptsModel.CallBackShipment(SVMShipment.Shipments);
end;

procedure TDocWHReceiptsViewModel.ClearSearchModels;
begin
  inherited;

end;

constructor TDocWHReceiptsViewModel.Create;
var
  lWHRLabelReceipt, lWHRWarehouseReceipt: IJanuaReporter;
  ll: IJanuaWHRLabelsReporter;
  lr: IJanuaWHRReceiptsReporter;
begin
  try
    inherited;
    // Sets the Interface GUID of the Record Edit Dialog of the Ancestor Form.
    SetRecordEditDialog(IJanuaWHReceiptForm);
    Guard.CheckNotNull(ReportingList, 'ReportingList');
    lWHRLabelReceipt := ReportingList.Add(IJanuaWHRLabelsReporter, 35, 'Print Labels');
    Guard.CheckNotNull(lWHRLabelReceipt, 'lWHRLabelReceipt, IJanuaWHRLabelsReporter not set');
    Assert(Supports(lWHRLabelReceipt, IJanuaWHRLabelsReporter, ll),
      'IJanuaWHRReceiptsReporter not supported');
    ll.WHRViewModel := self as IJanuaWHReceiptsViewModel;
    // TJanuaWHRQrpReceiptReporter = IJanuaWHRReceiptsReporter
    lWHRWarehouseReceipt := ReportingList.Add(IJanuaWHRReceiptsReporter, 17, 'Print Receipt');
    Guard.CheckNotNull(lWHRWarehouseReceipt, 'lWHRLabelReceipt, IJanuaWHRReceiptsReporter not set');
    Assert(Supports(lWHRWarehouseReceipt, IJanuaWHRReceiptsReporter, lr),
      'IJanuaWHRReceiptsReporter not supported');
    lr.WHRViewModel := self as IJanuaWHReceiptsViewModel;
    { Setting the Search Filters for Warehouse Receipts }
  except
    on e: Exception do
      RaiseException('Create', e, self, self.LogString);
  end;
end;

procedure TDocWHReceiptsViewModel.DeactivateDetails;
begin
  inherited;

end;

destructor TDocWHReceiptsViewModel.Destroy;
begin
  FJanuaWHReceiptsModel := nil;
  inherited;
end;

function TDocWHReceiptsViewModel.FactoryGetDBModel: IJanuaDBDocumentsModel;
begin
  try
    MonitorEnter(self);
    try
      if not TJanuaApplicationFactory.TryGetInterface(IJanuaWHReceiptsModel, FJanuaWHReceiptsModel) then
        raise Exception.Create(' IJanuaWHReceiptsModel not set');
      // IJanuaDBDocumentsModel, Result
      if not Supports(FJanuaWHReceiptsModel, IJanuaDBDocumentsModel, Result) then
        raise Exception.Create('IJanuaDBDocumentsModel not supported');
    finally
      MonitorExit(self);
    end;

    Async.Run<boolean>(
      function: boolean
      begin
        // TJanuaSearchShipmentsViewModel = class(ISearchViewModelShipments)
        Result := TJanuaViewModelApplication.TryGetSearchViewModel(ISearchViewModelShipments, 0,
          FSVMShipment);
        if Result then
        begin
          FSVMShipment.Activate;
          if Assigned(DocHeadRecord) then
            DocHeadRecord.ShipmentDes.Bind('AsString', FSVMShipment.GetSelf, 'SearchText');
          FSVMShipment.CallBackSearch := CallBackShipment;
        end;
      end,
      procedure(const aResult: boolean)
      begin
        if not aResult then
        begin
          raise Exception.Create('ISearchViewModelShipments not set');
        end;
      end,
      procedure(const Ex: Exception)
      begin
        JShowError(Ex.Message);
      end);

  except
    on e: Exception do
      RaiseException('FactoryGetDBModel', e, self, LogString);
  end;
end;

function TDocWHReceiptsViewModel.GetSVMShipment: ISearchViewModelShipments;
begin
  Result := FSVMShipment;
end;

function TDocWHReceiptsViewModel.GetWHRRowsViewModel: IJanuaWHRRowsViewModel;
begin
  Result := FWHRRowsViewModel;
end;

procedure TDocWHReceiptsViewModel.MainRecordAdd(aAction: IJanuaAction);
begin
  inherited;
end;

procedure TDocWHReceiptsViewModel.MainRecordDelete(aAction: IJanuaAction);
begin
  inherited;
end;

procedure TDocWHReceiptsViewModel.MainRecordEdit(aAction: IJanuaAction);
begin
  inherited;
end;

procedure TDocWHReceiptsViewModel.MainRecordExport(aAction: IJanuaAction);
begin
  inherited;
end;

procedure TDocWHReceiptsViewModel.MainRecordPost(aAction: IJanuaAction);
begin
  inherited;
end;

procedure TDocWHReceiptsViewModel.MainRecordPreview(aAction: IJanuaAction);
begin
  inherited;
end;

procedure TDocWHReceiptsViewModel.MainRecordPrint(aAction: IJanuaAction);
begin
  inherited;
end;

procedure TDocWHReceiptsViewModel.MainRecordSearch(aAction: IJanuaAction);
begin
  inherited;
end;

procedure TDocWHReceiptsViewModel.SetSVMShipment(const Value: ISearchViewModelShipments);
begin
  FSVMShipment := Value;
end;

procedure TDocWHReceiptsViewModel.SetupSearchCallBack;
begin
  inherited;
  { FSVMHolder.SearchText := GetDocHeadRecord.HolderName.AsString; }
  GetDocHeadRecord.ShipmentDes.Bind('AsString', FSVMShipment.GetSelf, 'SearchText');
  FSVMShipment.CallBackSearch := CallBackShipment;
end;

destructor TJanuaWHRReporter.Destroy;
begin
  FWHRViewModel := nil;
  inherited;
end;

function TJanuaWHRReporter.GetWHRViewModel: IJanuaWHReceiptsViewModel;
begin
  Result := FWHRViewModel;
end;

procedure TJanuaWHRReporter.SetWHRViewModel(const Value: IJanuaWHReceiptsViewModel);
begin
  FWHRViewModel := Value;
end;

{ TWHRRowsViewModel }

procedure TWHRRowsViewModel.ActivateDetails;
begin
  inherited;

end;

procedure TWHRRowsViewModel.AfterConstruction;
begin
  inherited;
  // Sets standard Edit Dialog to IJanuaWHRRowsDialog
  SetRecordEditDialog(IJanuaWHRRowsDialog);
  // Sets Columns to be Displayed
  RsDocRows.jdsDataset.AddGridColumn(RsDocRows.jdsDataset.FieldByName('position'), 4, 'Pos.');
  RsDocRows.jdsDataset.AddGridColumn(RsDocRows.jdsDataset.FieldByName('row_date'), 10, 'Rcpt Date');
  RsDocRows.jdsDataset.AddGridColumn(RsDocRows.jdsDataset.FieldByName('model'), 80, 'Commodity Description');
  RsDocRows.jdsDataset.AddGridColumn(RsDocRows.jdsDataset.FieldByName('delivered_qty'), 6, 'Qty.');
  // inventory_qty
  RsDocRows.jdsDataset.AddGridColumn(RsDocRows.jdsDataset.FieldByName('inventory_qty'), 6, 'Inv.Qty');
  RsDocRows.jdsDataset.AddGridColumn(RsDocRows.jdsDataset.FieldByName('weight_on_delivery'), 6, 'Weight');
end;

constructor TWHRRowsViewModel.Create;
begin
  inherited;

end;

procedure TWHRRowsViewModel.DeactivateDetails;
begin
  inherited;

end;

function TWHRRowsViewModel.InternalActivate: boolean;
begin
  Result := inherited
end;

end.
