unit Janua.Documents.ViewModel.Impl;

interface

uses
  System.SysUtils, System.Classes, Data.DB, {udmJanuaPgDocumentsStorage,} Janua.Core.Types,
  // Interfaces
  Janua.Controls.Forms.Intf, Janua.Core.Classes.Intf, Janua.Orm.Intf,
  JOrm.Documents.Intf, JOrm.Documents.Types.Intf, JOrm.Shipping.Intf,
  Janua.ViewModels.Intf, Janua.ViewModels.Templates,
  Janua.Anagraph.ViewModel.Intf, Janua.Documents.ViewModel.Intf, Janua.Search.ViewModels.Engines.Intf;

type

  TDocRowsViewModel = class(TJanuaViewModelDetailTemplate, IJanuaDocRowsViewModel, IJanuaDBViewModel)
  private
    FRsDocRowsModel: IJanuaRSRows; // RecordSetModel
    [weak]
    FRows: IDocRowsView; // RecordSet
    [weak]
    FCharges: IDocRowsView; // Charges Recordset;
    [weak]
    FSVMRowItem: ISearchViewModelItem;
    FSVMSupplier: ISearchViewModelAnagraph;
    // Dialog is not set at this Stage.....
  strict protected
    FShippersGroupID: Integer;
    procedure CreateModel; override;
  protected
    function GetRsDocRows: IJanuaRSRows;
    procedure SetRsDocRows(const Value: IJanuaRSRows);
    function GetRows: IDocRowsView;
    function GetDocRow: IDocRowView;
    function GetSVMRowItem: ISearchViewModelItem;
    procedure SetSVMRowItem(const Value: ISearchViewModelItem);
    function GetSVMSupplier: ISearchViewModelAnagraph;
    procedure SetSVMSupplier(const Value: ISearchViewModelAnagraph);
  public
    procedure CallBackSupplier(aRecordCount: Integer);
    procedure CallBackRowItem(aRecordCount: Integer);
    constructor Create(aModel: IJanuaRSRows); overload;
  public
    property SVMSupplier: ISearchViewModelAnagraph read GetSVMSupplier write SetSVMSupplier;
    property SVMRowItem: ISearchViewModelItem read GetSVMRowItem write SetSVMRowItem;
    property RsDocRows: IJanuaRSRows read GetRsDocRows write SetRsDocRows;
    property TestDocRow: IDocRowView read GetDocRow;
    property Rows: IDocRowsView read GetRows;
  end;

  TDocChargesViewModel = class(TDocRowsViewModel, IJanuaDocChargesViewModel, IJanuaDBViewModel)
  private
    FRsDocChargesModel: IJanuaRSDocCharges; // RecordsetModel
  protected
    function GetRsDocDocCharges: IJanuaRSDocCharges;
    procedure SetRsDocDocCharges(const Value: IJanuaRSDocCharges);
    function GetCharges: IDocChargesView;
  public
    procedure ActivateDetails; override;
    procedure DeActivateDetails; override;
    constructor Create(aModel: IJanuaRSDocCharges); overload;
  public
    /// <summary> IJanuaRSDocCharges: RecordSetModel Implementing the (standard) DocCharges of the Document  </summary>
    property RsDocDocCharges: IJanuaRSDocCharges read GetRsDocDocCharges write SetRsDocDocCharges;
    property Charges: IDocChargesView read GetCharges;
  end;

  TDocAttachmentsViewModel = class(TJanuaViewModelDetailTemplate, IJanuaDocAttachmentsViewModel,
    IJanuaDBViewModel)
  private
    FRsDocAttachmentsModel: IJanuaRSDocAttachments; // RecordSetModel
    [weak]
    FAttachments: IDocAttachmentsView; // RecordSet
    // Dialog is not set at this Stage.....
  strict protected
    procedure CreateModel; override;
  protected
    procedure MainRecordPreview(aAction: IJanuaAction); override;
  protected
    function GetRsDocAttachments: IJanuaRSDocAttachments;
    procedure SetRsDocAttachments(const Value: IJanuaRSDocAttachments);
    /// <summary> IJanuaRSDocAttachments: RecordSetModel Implementing the (standard) Attachments of the Document  </summary>
    function GetAttachments: IDocAttachmentsView;
    function GetDocAttachment: IDocAttachmentView;
  public
    procedure AfterConstruction; override;
    constructor Create(aModel: IJanuaRSDocAttachments); overload;
    procedure ActivateDetails; override;
    procedure DeActivateDetails; override;
    procedure RefreshActions; override;
    procedure CopyFile(const aFileName: TFileName);
    procedure OpenRecordFile;
  public
    property RsDocAttachments: IJanuaRSDocAttachments read GetRsDocAttachments write SetRsDocAttachments;
    property DocAttachments: IDocAttachmentsView read GetAttachments;
    property DocAttachment: IDocAttachmentView read GetDocAttachment;
  end;

  TJanuaDBDocumentsViewModel = class(TJanuaViewModelDBTemplate, IJanuaDBDocumentsViewModel, IJanuaDBViewModel)
  strict protected
    dsLocations: TDataSource;
    dsInternalGroups: TDataSource;
    // Search view Models
    FSVMCarrier: ISearchViewModelAnagraph;
    FSVMHolder: ISearchViewModelAnagraph;
    FSVMVesselLocation: ISearchViewModelAnagraph;
    FSVMAnagraph: ISearchViewModelAnagraph;
    FSVMRowItem: ISearchViewModelItem;
    FViewModelCarrier: IJanuaDBAnagraphViewModel;
    FViewModelHolder: IJanuaDBAnagraphViewModel;
    FViewModelVesselLocation: IJanuaDBAnagraphViewModel;
    FViewModelAnagraph: IJanuaDBAnagraphViewModel;
    FSVMVessel: ISearchViewModelVessel;
    // FSVMRowItem: ISearchViewModelItem;
  private
    FJanuaDocumentsModel: IJanuaDBDocumentsModel;
    FDocAttachmentsModel: IJanuaRSDocAttachments;
    FDocType: IDocType;
    function GetDocType: IDocType;
    procedure SetDocType(const Value: IDocType);
  strict protected
    FCarriersID: SmallInt;
    FHoldersID: SmallInt;
    FLocationsID: SmallInt;
    FDocAnagraphID: SmallInt;
    function GetViewModelCarrier: IJanuaDBAnagraphViewModel;
    function GetViewModelHolder: IJanuaDBAnagraphViewModel;
    function GetViewModelVesselLocation: IJanuaDBAnagraphViewModel;
    function GetViewModelAnagraph: IJanuaDBAnagraphViewModel;
    function GetjdsDocHeads: IJanuaDBDataset;
    function GetjdsDocRows: IJanuaDBDataset;
    function GetjdsDocAttachments: IJanuaDBDataset;
    function GetjdsVatAmounts: IJanuaDBDataset;
    function GetdsDocHeads: TDataSource;
    function GetdsDocRows: TDataSource;
    property dsDocRows: TDataSource read GetdsDocRows;
    function GetDBDocumentsModel: IJanuaDBDocumentsModel;
    procedure SetDBDocumentsModel(const Value: IJanuaDBDocumentsModel);
    // IDocuments
    function GetDocHeadRecord: IDocHeadView;
    // Search View Models
    function GetSVMVessel: ISearchViewModelVessel;
    function GetSVMCarrier: ISearchViewModelAnagraph;
    function GetSVMHolder: ISearchViewModelAnagraph;
    function GetSVMVesselLocation: ISearchViewModelAnagraph;
    function GetSVMAnagraph: ISearchViewModelAnagraph;
    procedure SetSVMCarrier(const Value: ISearchViewModelAnagraph);
    procedure SetSVMHolder(const Value: ISearchViewModelAnagraph);
    procedure SetSVMVesselLocation(const Value: ISearchViewModelAnagraph);
    procedure SetSVMAnagraph(const Value: ISearchViewModelAnagraph);
    function GetSVMRowItem: ISearchViewModelItem;
    procedure SetSVMRowItem(const Value: ISearchViewModelItem);
  strict protected // virtual methods
    function FactoryGetDBModel: IJanuaDBDocumentsModel; virtual;
    /// <summary> This methods (in the descendant) must set the correct model for the VM </summary>
    function CreateDBModel: IJanuaDBModel; override;
    procedure SetupSearchCallBack; override;
    procedure ClearSearchModels; override;
  protected
    property jdsDocHeads: IJanuaDBDataset read GetjdsDocHeads;
    property jdsDocAttachments: IJanuaDBDataset read GetjdsDocAttachments;
    property DBDocumentsModel: IJanuaDBDocumentsModel read GetDBDocumentsModel;
    property dsDocHeads: TDataSource read GetdsDocHeads;
    property DocHeadRecord: IDocHeadView read GetDocHeadRecord;
    property jdsDocRows: IJanuaDBDataset read GetjdsDocRows;
    // Link to Anagraph ViewModels (for Lazy Loading)
    // <summary> IJanuaDBAnagraphViewModel: link to cached ViewModelCarrier to edit/insert its record </summary>
    property ViewModelCarrier: IJanuaDBAnagraphViewModel read GetViewModelCarrier;
    // <summary> IJanuaDBAnagraphViewModel: link to cached ViewModelCarrier to edit/insert its record </summary>
    property ViewModelHolder: IJanuaDBAnagraphViewModel read GetViewModelHolder;
    // <summary> IJanuaDBAnagraphViewModel: link to cached ViewModelCarrier to edit/insert its record </summary>
    property ViewModelVesselLocation: IJanuaDBAnagraphViewModel read GetViewModelVesselLocation;
    // <summary> IJanuaDBAnagraphViewModel: link to cached ViewModelCarrier to edit/insert its record </summary>
    property ViewModelAnagraph: IJanuaDBAnagraphViewModel read GetViewModelAnagraph;
  public
    procedure CallBackHolder(aRecordCount: Integer);
    procedure CallBackCarrier(aRecordCount: Integer);
    procedure CAllBackLocation(aRecordCount: Integer);
    procedure CallBackAnagraph(aRecordCount: Integer);
    procedure CallBackRowItem(aRecordCount: Integer);
    procedure CAllBackVessel(aRecordCount: Integer = 1);
  protected
    /// <summary> View Model Search for Carrier  </summary>
    property SVMCarrier: ISearchViewModelAnagraph read GetSVMCarrier write SetSVMCarrier;
    property SVMVessel: ISearchViewModelVessel read GetSVMVessel;
    property SVMHolder: ISearchViewModelAnagraph read GetSVMHolder write SetSVMHolder;
    property SVMVesselLocation: ISearchViewModelAnagraph read GetSVMVesselLocation write SetSVMVesselLocation;
    property SVMAnagraph: ISearchViewModelAnagraph read GetSVMAnagraph write SetSVMAnagraph;
    property SVMRowItem: ISearchViewModelItem read GetSVMRowItem write SetSVMRowItem;
  strict protected
    function InternalActivate: boolean; override;
  public
    { Public declarations }
    procedure OpenAll(const aThreaded: boolean = False); override;
    constructor Create; override;
    destructor Destroy; override;
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
  public
    property DocType: IDocType read GetDocType write SetDocType;
    // ******************* SubViewModels Management ********************************************************************
  private
    FVMAttachments: IJanuaDocAttachmentsViewModel;
    FChargesViewModel: IJanuaDocChargesViewModel;
    procedure SetChargesViewModel(const Value: IJanuaDocChargesViewModel);
  strict protected
    procedure ActivateDetails; override;
    procedure DeActivateDetails; override;
  protected
    function GetVMAttachments: IJanuaDocAttachmentsViewModel;
    function GetVMCharges: IJanuaDocChargesViewModel;
  public
    // <summary> VMAttachments Sub Model  </summary>
    property VMAttachments: IJanuaDocAttachmentsViewModel read GetVMAttachments;
    // <summary> IJanuaDocChargesViewModel: Doc ChargesView Model </summary>
    property ChargesViewModel: IJanuaDocChargesViewModel read GetVMCharges write SetChargesViewModel;
    // ******************* End SubViewModels Management ****************************************************************
  end;

var
  dmVCLDocumentsViewModel: TJanuaDBDocumentsViewModel;

implementation

uses Spring, Janua.Core.Functions, Janua.Application.Framework, Janua.ViewModels.Application,
  Janua.Core.AsyncTask,
  Janua.Anagraph.ViewModel.Impl, Janua.Core.Classes, System.Threading;

{ TJanuaDBDocumentsViewModel }

function TJanuaDBDocumentsViewModel.GetSVMCarrier: ISearchViewModelAnagraph;
begin
  Result := FSVMCarrier;
end;

function TJanuaDBDocumentsViewModel.GetSVMHolder: ISearchViewModelAnagraph;
begin
  Result := FSVMHolder;
end;

function TJanuaDBDocumentsViewModel.GetSVMRowItem: ISearchViewModelItem;
begin
  Result := Self.FSVMRowItem
end;

function TJanuaDBDocumentsViewModel.GetSVMVessel: ISearchViewModelVessel;
begin
  Result := FSVMVessel
end;

function TJanuaDBDocumentsViewModel.GetSVMVesselLocation: ISearchViewModelAnagraph;
begin
  Result := FSVMVesselLocation;
end;

function TJanuaDBDocumentsViewModel.GetViewModelAnagraph: IJanuaDBAnagraphViewModel;
begin
  try
    if not Assigned(FViewModelAnagraph) then
    begin
      if TJanuaViewModelApplication.TryGetCachedViewModel(IJanuaDBAnagraphViewModel, FDocAnagraphID,
        FViewModelAnagraph) then
        FViewModelAnagraph.Activate
      else
        raise Exception.Create('IJanuaDBAnagraphViewModel not set');
    end;
    Result := FViewModelAnagraph;
  except
    on e: Exception do
      RaiseException('GetViewModelAnagraph', e, Self);
  end;
end;

function TJanuaDBDocumentsViewModel.GetViewModelCarrier: IJanuaDBAnagraphViewModel;
var
  aTask: ITask;
begin
  try
    if not Assigned(FViewModelCarrier) then
    begin
      if TJanuaViewModelApplication.TryGetCachedViewModel(IJanuaDBAnagraphViewModel, FCarriersID,
        FViewModelCarrier) then
      begin
        FViewModelCarrier.Activate;
        if FViewModelCarrier.jdsAnagraphs.Active then
          FViewModelCarrier.OpenAll(False);
      end
      else
        raise Exception.Create('IJanuaDBAnagraphViewModel not set');
    end;
    Result := FViewModelCarrier;
  except
    on e: Exception do
      RaiseException('GetViewModelCarrier', e, Self);
  end;
end;

function TJanuaDBDocumentsViewModel.GetViewModelHolder: IJanuaDBAnagraphViewModel;
begin
  try
    if not Assigned(FViewModelAnagraph) then
    begin
      if TJanuaViewModelApplication.TryGetCachedViewModel(IJanuaDBAnagraphViewModel, FDocAnagraphID,
        FViewModelAnagraph) then
        FViewModelAnagraph.Activate
      else
        raise Exception.Create('IJanuaDBAnagraphViewModel not set');
    end;
    Result := FViewModelAnagraph;
  except
    on e: Exception do
      RaiseException('Activate', e, Self);
  end;
end;

function TJanuaDBDocumentsViewModel.GetViewModelVesselLocation: IJanuaDBAnagraphViewModel;
begin
  try
    if not Assigned(FViewModelVesselLocation) then
    begin
      if TJanuaViewModelApplication.TryGetCachedViewModel(IJanuaDBAnagraphViewModel, FLocationsID,
        FViewModelVesselLocation) then
        FViewModelVesselLocation.Activate
      else
        raise Exception.Create('IJanuaDBAnagraphViewModel not set');
    end;
    Result := FViewModelVesselLocation;
  except
    on e: Exception do
      RaiseException('Activate', e, Self);
  end;
end;

function TJanuaDBDocumentsViewModel.GetVMAttachments: IJanuaDocAttachmentsViewModel;
begin
  Result := FVMAttachments;
end;

function TJanuaDBDocumentsViewModel.GetVMCharges: IJanuaDocChargesViewModel;
begin
  Result := FChargesViewModel;
end;

function TJanuaDBDocumentsViewModel.GetSVMAnagraph: ISearchViewModelAnagraph;
begin
  Result := FSVMAnagraph;
end;

procedure TJanuaDBDocumentsViewModel.ActivateDetails;
var
  lTmpSVMSupplier: ISearchViewModelAnagraph;
begin
  inherited;
  FVMAttachments := TDocAttachmentsViewModel.Create(FJanuaDocumentsModel.DocAttachments);
  FChargesViewModel := TDocChargesViewModel.Create(FJanuaDocumentsModel.RSDocCharges);
  if TJanuaViewModelApplication.TryGetSearchViewModel(ISearchViewModelAnagraph, 0, lTmpSVMSupplier,
    FSVMHolder.jdsSearch) then
  begin
    lTmpSVMSupplier.Activate;
    FChargesViewModel.SVMSupplier := lTmpSVMSupplier;
  end;
  AddDetail(FVMAttachments);
  AddDetail(FChargesViewModel);
end;

procedure TJanuaDBDocumentsViewModel.AfterConstruction;
begin
  inherited;

end;

procedure TJanuaDBDocumentsViewModel.BeforeDestruction;
begin
  inherited;
  try
    TJanuaApplication.BindEngine.ClearBindings(Self);
  except
    on e: Exception do
      LogException('BeforeDestruction', e, Self);
  end;
end;

procedure TJanuaDBDocumentsViewModel.CallBackAnagraph(aRecordCount: Integer);
begin
  FJanuaDocumentsModel.CallBackAnagraph(SVMAnagraph.Anagraph);
end;

procedure TJanuaDBDocumentsViewModel.CallBackCarrier(aRecordCount: Integer);
begin
  FJanuaDocumentsModel.CallBackCarrier(SVMCarrier.Anagraph);
end;

procedure TJanuaDBDocumentsViewModel.CallBackHolder(aRecordCount: Integer);
begin
  FJanuaDocumentsModel.CallBackHolder(SVMHolder.Anagraph);
end;

procedure TJanuaDBDocumentsViewModel.CAllBackLocation(aRecordCount: Integer);
begin
  FJanuaDocumentsModel.CAllBackLocation(SVMVesselLocation.Anagraph);
end;

procedure TJanuaDBDocumentsViewModel.CallBackRowItem(aRecordCount: Integer);
begin
  FJanuaDocumentsModel.CAllBackItem(SVMRowItem.Item);
end;

procedure TJanuaDBDocumentsViewModel.CAllBackVessel(aRecordCount: Integer);
begin
  if aRecordCount > 0 then
    FJanuaDocumentsModel.CAllBackVessel(GetSVMVessel.Vessel);
end;

procedure TJanuaDBDocumentsViewModel.ClearSearchModels;
begin
  inherited;
end;

constructor TJanuaDBDocumentsViewModel.Create;
begin
  inherited;
  FCarriersID := -1;
  FHoldersID := -1;
  FLocationsID := -1;
  FDocAnagraphID := -1;
end;

procedure TJanuaDBDocumentsViewModel.DeActivateDetails;
begin
  inherited;

end;

destructor TJanuaDBDocumentsViewModel.Destroy;
begin
  try
    dsLocations := nil;
    dsInternalGroups := nil;
    FDocType := nil;
    FJanuaDocumentsModel := nil;
    // Search view Models
    FSVMCarrier := nil;
    FSVMHolder := nil;
    FSVMVesselLocation := nil;
    FSVMAnagraph := nil;
    FSVMRowItem := nil;
    FSVMVessel := nil;
    if Assigned(FVMAttachments) and (TInterfacedObject(FVMAttachments).RefCount > 2) then
      TJanuaInterfacedObject(FVMAttachments.GetSelf).Release;
    FVMAttachments := nil;
  except
    on e: Exception do
      LogException('Destroy', e, Self);
  end;
  inherited;
end;

function TJanuaDBDocumentsViewModel.FactoryGetDBModel: IJanuaDBDocumentsModel;
begin
  if not TJanuaApplicationFactory.TryGetInterface(IJanuaDBDocumentsModel, Result) then
    raise Exception.Create('TJanuaDBDocumentsViewModel.DataModuleCreate IJanuaDBDocumentsModel not set');
end;

function TJanuaDBDocumentsViewModel.GetDocHeadRecord: IDocHeadView;
begin
  // takes the Record from the Model.
  Result := nil;

  if Assigned(FJanuaDocumentsModel) then
    Result := FJanuaDocumentsModel.DocHeadRecord;
end;

function TJanuaDBDocumentsViewModel.CreateDBModel: IJanuaDBModel; // GetCreateDBModel;
var
  lSVMTmp: ISearchViewModelAnagraph;
begin
  inherited;
  try
    FJanuaDocumentsModel := FactoryGetDBModel;
    FJanuaDocumentsModel.LazyLoading := True;
    FJanuaDocumentsModel.Activate;
    if not Supports(FJanuaDocumentsModel, IJanuaDBModel, Result) then
      raise Exception.Create
        ('CreateDBModel FJanuaDocumentsModel does not support IJanuaDBModel ');
{$IFDEF JANUATEST}
    if TJanuaViewModelApplication.TryGetSearchViewModel(ISearchViewModelAnagraph, 13, lSVMTmp) then
      TJanuaViewModelApplication.GetSearchViewModel(ISearchViewModelAnagraph, 13, FSVMCarrier);
    Guard.CheckNotNull(FSVMCarrier, 'TryGetSearchViewModel FSVMCarrier');
    FSVMCarrier.Activate;
    if not FSVMCarrier.jdsSearch.Active then
      FSVMCarrier.jdsSearch.Activate;
    TJanuaViewModelApplication.GetSearchViewModel(ISearchViewModelAnagraph, 16, FSVMAnagraph);
    Guard.CheckNotNull(FSVMAnagraph, 'TryGetSearchViewModel FSVMAnagraph');
    FSVMAnagraph.Activate;
    TJanuaViewModelApplication.GetSearchViewModel(ISearchViewModelAnagraph, 9, FSVMVesselLocation);
    Guard.CheckNotNull(FSVMVesselLocation, 'TryGetSearchViewModel FSVMVesselLocation');
    FSVMVesselLocation.Activate;
    TJanuaViewModelApplication.GetSearchViewModel(ISearchViewModelAnagraph, 10, FSVMHolder);
    Guard.CheckNotNull(FSVMHolder, 'TryGetSearchViewModel FSVMHolder');
    FSVMHolder.Activate;
    TJanuaViewModelApplication.GetSearchViewModel(ISearchViewModelItem, 10, FSVMRowItem);
    Guard.CheckNotNull(FSVMRowItem, 'TryGetSearchViewModel FSVMRowItem');
    FSVMRowItem.Activate;
    TJanuaViewModelApplication.GetSearchViewModel(ISearchViewModelVessel, 0, FSVMVessel);
    Guard.CheckNotNull(FSVMVessel, 'TryGetSearchViewModel FSVMVessel');
    FSVMVessel.Activate;
{$ELSE}
    Async.Run<boolean>(
      function: boolean
      begin
        TJanuaViewModelApplication.TryGetSearchViewModel(ISearchViewModelAnagraph, 13, FSVMCarrier);
        FSVMCarrier.Activate;

        TTAsk.Run(
          procedure
          begin
            if not FSVMCarrier.jdsSearch.Active then
              FSVMCarrier.jdsSearch.Activate;
          end);

        TJanuaViewModelApplication.TryGetSearchViewModel(ISearchViewModelAnagraph, 16, FSVMAnagraph);
        FSVMAnagraph.Activate;
        TJanuaViewModelApplication.TryGetSearchViewModel(ISearchViewModelAnagraph, 9, FSVMVesselLocation);
        FSVMVesselLocation.Activate;
        TJanuaViewModelApplication.TryGetSearchViewModel(ISearchViewModelAnagraph, 10, FSVMHolder);
        FSVMHolder.Activate;
        TJanuaViewModelApplication.TryGetSearchViewModel(ISearchViewModelItem, 10, FSVMRowItem);
        FSVMRowItem.Activate;
        TJanuaViewModelApplication.TryGetSearchViewModel(ISearchViewModelVessel, 0, FSVMVessel);
        FSVMVessel.Activate;
        TTAsk.Run(
          procedure
          begin
            if not FSVMVessel.jdsSearch.Active then
              FSVMVessel.jdsSearch.Activate;
          end);
        Result := True;
      end,
      procedure(const aResult: boolean)
      begin

      end,
      procedure(const Ex: Exception)
      begin
        JShowError(Ex.Message);
      end)
{$ENDIF JANUATEST}
  except
    on e: Exception do
      RaiseException('CreateDBModel', e, Self);
  end;
end;

function TJanuaDBDocumentsViewModel.GetDBDocumentsModel: IJanuaDBDocumentsModel;
begin
  Result := FJanuaDocumentsModel;
end;

function TJanuaDBDocumentsViewModel.GetDocType: IDocType;
begin
  Result := FDocType;
end;

function TJanuaDBDocumentsViewModel.GetdsDocHeads: TDataSource;
begin
  Result := dsMaster;
end;

function TJanuaDBDocumentsViewModel.GetdsDocRows: TDataSource;
begin
  Result := Self.dsInternalGroups
end;

function TJanuaDBDocumentsViewModel.GetjdsDocHeads: IJanuaDBDataset;
begin
  Result := FJanuaDocumentsModel.jdsDocHeads
end;

function TJanuaDBDocumentsViewModel.GetjdsDocRows: IJanuaDBDataset;
begin
  Result := FJanuaDocumentsModel.jdsDocRows
end;

function TJanuaDBDocumentsViewModel.GetjdsVatAmounts: IJanuaDBDataset;
begin
  Result := FJanuaDocumentsModel.jdsVatAmounts
end;

function TJanuaDBDocumentsViewModel.GetjdsDocAttachments: IJanuaDBDataset;
begin
  Result := FJanuaDocumentsModel.jdsDocAttachments
end;

function TJanuaDBDocumentsViewModel.InternalActivate: boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        Guard.CheckTrue(Assigned(FJanuaDocumentsModel), 'FJanuaDocumentsModel is nil');
        Guard.CheckTrue(Assigned(FJanuaDocumentsModel.CurrentRecord), 'FJanuaDocumentsModel is nil');
        Guard.CheckTrue(Assigned(FJanuaDocumentsModel.jdsDocHeads), 'jdsDocHeads is nil');
        Guard.CheckTrue(Assigned(FJanuaDocumentsModel.jdsDocRows), 'jdsDocRows is nil');
        Guard.CheckTrue(Assigned(FJanuaDocumentsModel.jdsDocAttachments), 'jdsDocAttachments is nil');
      end;
    except
      on e: Exception do
        RaiseException('InternalActivate', e, Self);
    end;

end;

procedure TJanuaDBDocumentsViewModel.OpenAll(const aThreaded: boolean = False);
begin
  inherited;
  try
    FJanuaDocumentsModel.GroupID := GroupID;
    FJanuaDocumentsModel.IsThreaded := aThreaded;
    FJanuaDocumentsModel.OpenAll(aThreaded);
    FJanuaDocumentsModel.IsThreaded := True;
  except
    on e: Exception do
      RaiseException('OpenAll', e, Self);
  end;

  { if aThreaded then
    FJanuaDocumentsModel.jdsDocHeads.OpenThreaded
    else
    FJanuaDocumentsModel.jdsDocHeads.Open; }
end;

procedure TJanuaDBDocumentsViewModel.SetChargesViewModel(const Value: IJanuaDocChargesViewModel);
begin
  FChargesViewModel := Value;
end;

procedure TJanuaDBDocumentsViewModel.SetDBDocumentsModel(const Value: IJanuaDBDocumentsModel);
begin
  Self.FJanuaDocumentsModel := Value
end;

procedure TJanuaDBDocumentsViewModel.SetDocType(const Value: IDocType);
begin
  FDocType := Value;
end;

procedure TJanuaDBDocumentsViewModel.SetSVMCarrier(const Value: ISearchViewModelAnagraph);
begin
  FSVMCarrier := Value;
end;

procedure TJanuaDBDocumentsViewModel.SetSVMHolder(const Value: ISearchViewModelAnagraph);
begin
  FSVMHolder := Value;
end;

procedure TJanuaDBDocumentsViewModel.SetSVMRowItem(const Value: ISearchViewModelItem);
begin
  FSVMRowItem := Value;
end;

procedure TJanuaDBDocumentsViewModel.SetSVMVesselLocation(const Value: ISearchViewModelAnagraph);
begin
  FSVMVesselLocation := Value;
end;

procedure TJanuaDBDocumentsViewModel.SetupSearchCallBack;
begin
  inherited;
  { FSVMHolder.SearchText := GetDocHeadRecord.HolderName.AsString; }
  GetDocHeadRecord.HolderName.Bind('AsString', FSVMHolder.GetSelf, 'SearchText');
  FSVMHolder.CallBackSearch := CallBackHolder;
  { FSVMAnagraph.SearchText := GetDocHeadRecord.DestName.AsString; }
  GetDocHeadRecord.DestName.Bind('AsString', FSVMAnagraph.GetSelf, 'SearchText');
  FSVMAnagraph.CallBackSearch := CallBackAnagraph;
  { FSVMCarrier.SearchText := GetDocHeadRecord.CarrierName.AsString; }
  GetDocHeadRecord.CarrierName.Bind('AsString', FSVMCarrier.GetSelf, 'SearchText');
  FSVMCarrier.CallBackSearch := CallBackCarrier;
  { FSVMRowItem.SearchText := GetDocHeadRecord.Rows.Model.AsString; }
  GetDocHeadRecord.Rows.Model.Bind('AsString', FSVMRowItem.GetSelf, 'SearchText');
  FSVMRowItem.CallBackSearch := CallBackRowItem;
  { FSVMVesselLocation.SearchText := GetDocHeadRecord.LocationName.AsString; }
  GetDocHeadRecord.LocationName.Bind('AsString', FSVMVesselLocation.GetSelf, 'SearchText');
  FSVMVesselLocation.CallBackSearch := CAllBackLocation;
  GetDocHeadRecord.VesselName.Bind('AsString', FSVMVessel.GetSelf, 'SearchText');
  FSVMVessel.CallBackSearch := CAllBackVessel;
end;

procedure TJanuaDBDocumentsViewModel.SetSVMAnagraph(const Value: ISearchViewModelAnagraph);
begin
  FSVMAnagraph := Value;
end;

{ TDocRowsViewModel }

procedure TDocRowsViewModel.CallBackRowItem(aRecordCount: Integer);
begin

end;

procedure TDocRowsViewModel.CallBackSupplier(aRecordCount: Integer);
begin
  FRows.SupplierId.AsInteger := FSVMSupplier.Anagraph.AnagraphId.AsInteger;
  FRows.SupplierName.AsString := FSVMSupplier.Anagraph.AnLastName.AsString;
end;

constructor TDocRowsViewModel.Create(aModel: IJanuaRSRows);
begin
  try
{$IFDEF DEBUG} Guard.CheckNotNull(aModel, 'aModel is null');
    WriteLog('Create', 'check if model is IJanuaRecordSetModel'); {$ENDIF}
    // !! Important we must access the Set procedure or the property and NEVER use the internal Field
    RsDocRows := aModel;
    FRows := RsDocRows.Rows;
    inherited Create;
{$IFDEF DEBUG} Guard.CheckNotNull(RsDocRows, 'RsDocRows is null'); {$ENDIF}
    // Immediately calls Refresh Actions because After Creation jdsDataset is already Active and Populated
    RefreshActions;
    // GeFGenerateEditDialog := GenerateEditDialog; is Deprecated SetRecordEditDialog will replace it
    // to be implemented by specific Descendants { SetRecordEditDialog(...); }
  except
    on e: Exception do
      RaiseException('Create', e, Self, LogString);
  end;

end;

procedure TDocRowsViewModel.CreateModel;
var
  ltmpModel: IJanuaModel;
begin
  inherited;
  if not Supports(FRsDocRowsModel, IJanuaModel, ltmpModel) then
    raise Exception.Create('TDocRowsViewModel IJanuaModel not supported');
  SetModel(ltmpModel);
end;

function TDocRowsViewModel.GetDocRow: IDocRowView;
begin
  Result := FRows.Row
end;

function TDocRowsViewModel.GetRows: IDocRowsView;
begin
  Result := FRows
end;

function TDocRowsViewModel.GetRsDocRows: IJanuaRSRows;
begin
  Result := FRsDocRowsModel
end;

function TDocRowsViewModel.GetSVMRowItem: ISearchViewModelItem;
begin
  Result := FSVMRowItem
end;

function TDocRowsViewModel.GetSVMSupplier: ISearchViewModelAnagraph;
begin
  Result := FSVMSupplier
end;

procedure TDocRowsViewModel.SetRsDocRows(const Value: IJanuaRSRows);
var
  lModel: IJanuaRecordSetModel;
begin
  FRsDocRowsModel := Value;
  lModel := nil;

  if Assigned(FRsDocRowsModel) and not Supports(FRsDocRowsModel, IJanuaRecordSetModel, lModel) then
    raise Exception.Create('FRsDocRowsModel does not support IJanuaRecordSetModel');
  SetRecordSetModel(lModel);
end;

procedure TDocRowsViewModel.SetSVMRowItem(const Value: ISearchViewModelItem);
begin
  FSVMRowItem := Value
end;

procedure TDocRowsViewModel.SetSVMSupplier(const Value: ISearchViewModelAnagraph);
begin
  FSVMSupplier := Value;
  if Assigned(FSVMSupplier) then
  begin
    FRows.Row.SupplierName.Bind('AsString', FSVMSupplier.GetSelf, 'SearchText');
    FSVMSupplier.CallBackSearch := CallBackSupplier;
  end;
end;

{ TDocAttachmentsViewModel }

procedure TDocAttachmentsViewModel.ActivateDetails;
begin
  inherited;

end;

procedure TDocAttachmentsViewModel.AfterConstruction;
begin
  inherited;
  // Sets standard Edit Dialog to IJanuaWHRRowsDialog
  SetRecordEditDialog(IJanuaDocAttachmentsDialog);
  FActionPreview.Visible := False;
  FActionPreview.Enabled := False;
end;

procedure TDocAttachmentsViewModel.CopyFile(const aFileName: TFileName);
begin
  FRsDocAttachmentsModel.CopyFile(aFileName);
end;

constructor TDocAttachmentsViewModel.Create(aModel: IJanuaRSDocAttachments);
begin
  try
{$IFDEF DEBUG} Guard.CheckNotNull(aModel, 'aModel is null');
    WriteLog('Create', 'check if model is IJanuaRecordSetModel'); {$ENDIF}
    // !! Important we must access the Set procedure or the property and NEVER use the internal Field
    SetRsDocAttachments(aModel);
    inherited Create;
{$IFDEF DEBUG} Guard.CheckNotNull(RsDocAttachments, 'RsDocRows is null'); {$ENDIF}
    // Immediately calls Refresh Actions because After Creation jdsDataset is already Active and Populated
    RefreshActions;
    // GeFGenerateEditDialog := GenerateEditDialog; is Deprecated SetRecordEditDialog will replace it
    // to be implemented by specific Descendants { SetRecordEditDialog(...); }
  except
    on e: Exception do
      RaiseException('Create', e, Self, '');
  end;
end;

procedure TDocAttachmentsViewModel.CreateModel;
begin
  inherited;
  if not Supports(FRsDocAttachmentsModel, IJanuaModel, FJanuaModel) then
    raise Exception.Create('FDetailTestModel IJanuaModel not supported');
end;

procedure TDocAttachmentsViewModel.DeActivateDetails;
begin
  inherited;

end;

function TDocAttachmentsViewModel.GetAttachments: IDocAttachmentsView;
begin
  Result := FRsDocAttachmentsModel.Attachments
end;

function TDocAttachmentsViewModel.GetDocAttachment: IDocAttachmentView;
begin
  Result := FRsDocAttachmentsModel.Attachments.Attachment
end;

function TDocAttachmentsViewModel.GetRsDocAttachments: IJanuaRSDocAttachments;
begin
  Result := FRsDocAttachmentsModel
end;

procedure TDocAttachmentsViewModel.MainRecordPreview(aAction: IJanuaAction);
begin
  FRsDocAttachmentsModel.OpenRecordFile;
end;

procedure TDocAttachmentsViewModel.OpenRecordFile;
begin
  FRsDocAttachmentsModel.OpenRecordFile
end;

procedure TDocAttachmentsViewModel.RefreshActions;
begin
  inherited;
  if Assigned(FActionPreview) then
  begin
    FActionPreview.Visible := True;
    FActionPreview.Enabled := Assigned(jdsDataset) and (jdsDataset.RecordCount > 0)
  end;
end;

procedure TDocAttachmentsViewModel.SetRsDocAttachments(const Value: IJanuaRSDocAttachments);
var
  lModel: IJanuaRecordSetModel;
begin
  FRsDocAttachmentsModel := Value;
  // lModel := nil;

  if Assigned(FRsDocAttachmentsModel) and not Supports(FRsDocAttachmentsModel, IJanuaRecordSetModel, lModel)
  then
    raise Exception.Create('FRsDocAttachmentsModel does not support IJanuaRecordSetModel');
  SetRecordSetModel(lModel);
end;

{ TDocChargesViewModel }

procedure TDocChargesViewModel.ActivateDetails;
begin
  inherited;

end;

constructor TDocChargesViewModel.Create(aModel: IJanuaRSDocCharges);
var
  aRowsModel: IJanuaRSRows;
begin
{$IFDEF DEBUG} Guard.CheckNotNull(aModel, 'TDocChargesViewModel.Create(IJanuaRSDocCharges)'); {$ENDIF DEBUG}
  FRsDocChargesModel := aModel;
  if Supports(aModel, IJanuaRSRows, aRowsModel) then
    Create(aRowsModel)
  else
    raise Exception.Create('TDocChargesViewModel.Create IJanuaRSDocRows not supported');
  // Sets standard Edit Dialog to IJanuaWHRRowsDialog
  SetRecordEditDialog(IJanuaDocChargesDialog);
end;

procedure TDocChargesViewModel.DeActivateDetails;
begin
  inherited;

end;

function TDocChargesViewModel.GetCharges: IDocChargesView;
begin
  Result := nil;
  if Assigned(FRsDocChargesModel) then
    Result := FRsDocChargesModel.Charges;
end;

function TDocChargesViewModel.GetRsDocDocCharges: IJanuaRSDocCharges;
begin
  Result := FRsDocChargesModel
end;

procedure TDocChargesViewModel.SetRsDocDocCharges(const Value: IJanuaRSDocCharges);
begin
  FRsDocChargesModel := Value;
end;

end.
