unit Janua.Documents.Invoices.ViewModel.Impl;

interface

uses System.SysUtils, System.Classes, Data.DB, {udmJanuaPgDocumentsStorage,}
  Janua.Core.Types, Janua.Controls.Forms.intf, Janua.Core.Classes.intf,
  // Janua Orm Framework
  Janua.Orm.intf, Janua.Orm.Types, JOrm.Documents.intf, JOrm.Documents.Types.Impl,
  // Janua ViewModels Framework
  Janua.Reporting.intf, Janua.ViewModels.intf, Janua.ViewModels.Templates, Janua.Reporting.Impl,
  // Inherites from Documents View Model ................................................................
  Janua.Documents.ViewModel.intf, Janua.Documents.ViewModel.Impl,
  // Invoices ViewModel
  Janua.Documents.Invoices.ViewModel.intf, Janua.Search.ViewModels.Engines.intf;

type
  TDocInvoicesViewModel = class(TJanuaDBDocumentsViewModel, IJanuaInvoicesViewModel, IJanuaDBViewModel)
  private
    FJanuaInvoicesModel: IJanuaInvoicesModel;
  strict protected
    function FactoryGetDBModel: IJanuaDBDocumentsModel; override;
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
    Constructor Create; override;
    Destructor Destroy; override;
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
  end;

type
  TJanuaInvoicesReporter = Class(TJanuaReporter, IJanuaInvoicesReporter, IJanuaInterface)
  private
    FInvoicesViewModel: IJanuaInvoicesViewModel;
  protected
    function GetInvoicesViewModel: IJanuaInvoicesViewModel;
    procedure SetInvoicesViewModel(const Value: IJanuaInvoicesViewModel);
  public
    destructor Destroy; override;
    property InvoicesViewModel: IJanuaInvoicesViewModel read GetInvoicesViewModel write SetInvoicesViewModel;
  End;

implementation

uses System.Rtti, Spring, Janua.Application.Framework, System.UITypes, Janua.ViewModels.Application,
  Janua.Core.Functions;

{ TDocInvoicesViewModel }

procedure TDocInvoicesViewModel.AfterConstruction;
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
  except
    on e: Exception do
      RaiseException('AfterConstruction', e, self);
  end;
end;

procedure TDocInvoicesViewModel.BeforeDestruction;
begin
  inherited;

end;

constructor TDocInvoicesViewModel.Create;
var
  { lWHRLabelReceipt, } lReportInvoices: IJanuaReporter;
  { TODO: lm: IJanuaInvoicesMasterLabel; }
  { TODO: lh: IJanuaInvoicesMasterLabel; }
  lr: IJanuaInvoicesSingleReporter;
begin
  inherited;
  SetRecordEditDialog(IJanuaInvoicesEditDialog);
  // Adding IJanuaInvoicesReporter as lr to Reporting List
  Guard.CheckNotNull(ReportingList, 'ReportingList');
  lReportInvoices := ReportingList.Add(IJanuaInvoicesSingleReporter, 111, 'Print Invoice');
  Guard.CheckNotNull(lReportInvoices, 'IJanuaInvoicesSingleReporter not set');
  Assert(Supports(lReportInvoices, IJanuaInvoicesSingleReporter, lr), 'IJanuaInvoicesReporter not supported');
  lr.InvoicesViewModel := self as IJanuaInvoicesViewModel;

end;

destructor TDocInvoicesViewModel.Destroy;
begin
  FJanuaInvoicesModel := nil;
  inherited;
end;

function TDocInvoicesViewModel.FactoryGetDBModel: IJanuaDBDocumentsModel;
begin
  try
    // FJanuaInvoicesModel: IJanuaInvoicesModel;
    if not TJanuaApplicationFactory.TryGetInterface(IJanuaInvoicesModel, FJanuaInvoicesModel) then
      raise Exception.Create(' IJanuaWHReceiptsModel not set');
    // IJanuaDBDocumentsModel, Result
    if not Supports(FJanuaInvoicesModel, IJanuaDBDocumentsModel, Result) then
      raise Exception.Create('IJanuaDBDocumentsModel not supported');
  except
    on e: Exception do
      RaiseException('FactoryGetDBModel', e, self, LogString);
  end;
end;

procedure TDocInvoicesViewModel.MainRecordAdd(aAction: IJanuaAction);
begin
  inherited;

end;

procedure TDocInvoicesViewModel.MainRecordDelete(aAction: IJanuaAction);
begin
  inherited;

end;

procedure TDocInvoicesViewModel.MainRecordEdit(aAction: IJanuaAction);
begin
  inherited;

end;

procedure TDocInvoicesViewModel.MainRecordExport(aAction: IJanuaAction);
begin
  inherited;

end;

procedure TDocInvoicesViewModel.MainRecordPost(aAction: IJanuaAction);
begin
  inherited;

end;

procedure TDocInvoicesViewModel.MainRecordPreview(aAction: IJanuaAction);
begin
  inherited;

end;

procedure TDocInvoicesViewModel.MainRecordPrint(aAction: IJanuaAction);
begin
  inherited;

end;

procedure TDocInvoicesViewModel.MainRecordSearch(aAction: IJanuaAction);
begin
  inherited;

end;

{ TJanuaInvoicesReporter }

destructor TJanuaInvoicesReporter.Destroy;
begin
  FInvoicesViewModel := nil;
  inherited;
end;

function TJanuaInvoicesReporter.GetInvoicesViewModel: IJanuaInvoicesViewModel;
begin
  Result := FInvoicesViewModel
end;

procedure TJanuaInvoicesReporter.SetInvoicesViewModel(const Value: IJanuaInvoicesViewModel);
begin
  FInvoicesViewModel := Value
end;

end.
