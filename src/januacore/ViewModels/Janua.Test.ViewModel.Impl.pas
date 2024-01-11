unit Janua.Test.ViewModel.Impl;

interface

uses
  System.SysUtils, System.Classes, Data.DB,
  // Januaproject
  Janua.Core.Types, Janua.Controls.Forms.Intf, Janua.Core.Classes.Intf, Janua.Orm.Intf,
  Janua.Orm.Test.Intf, Janua.ViewModels.Intf, Janua.ViewModels.Templates, Janua.Test.ViewModel.Intf;

type
  TTestDetailViewModel = class(TJanuaViewModelDetailTemplate, IJanuaTestDetailViewModel, IJanuaDBViewModel)
  private
    FDetailTestModel: IJanuaRSTestModel;
    FDetailDialog: IJanuaTestDetailDialog;
  strict protected
    procedure CreateModel; override;
  protected
    function GetDetailTestModel: IJanuaRSTestModel;
    procedure SetDetailTestModel(const Value: IJanuaRSTestModel);
    function GetRecordSet: IJanuaTestSubRecordSet;
    function GetSubRecord: IJanuaTestSubRecord;
    procedure ActivateDetails; override;
    procedure DeActivateDetails; override;
  public
    constructor Create(aModel: IJanuaRSTestModel); overload;
  public
    property DetailTestModel: IJanuaRSTestModel read GetDetailTestModel write SetDetailTestModel;
    property RecordSet: IJanuaTestSubRecordSet read GetRecordSet;
    property TestSubRecord: IJanuaTestSubRecord read GetSubRecord;
  end;

  TTestViewModel = class(TJanuaViewModelDBTemplate, IJanuaTestViewModel, IJanuaDBViewModel)
  private
    FJanuaTestModel: IJanuaDBTestModel;
    FTestEditDialog: IJanuaTestDialogForm;
  strict private
    function GetjdsDetail2: IJanuaDBDataset;
  protected
    function GenerateEditDialog: IInterface;
    function GetDBTestModel: IJanuaDBTestModel;
    procedure SetDBTestModel(const Value: IJanuaDBTestModel);
    property jdsDetail2: IJanuaDBDataset read GetjdsDetail2;
  strict protected // virtual methods
    /// <summary> This methods (in the descendant) must set the correct model for the VM </summary>
    function CreateDBModel: IJanuaDBModel; override;
    function GetTestNestedRecord: IJanuaTestNestedRecord;
    property JanuaTestModel: IJanuaDBTestModel read GetDBTestModel write SetDBTestModel;
  public
    { Public declarations }
    procedure OpenAll(const aThreaded: Boolean = False); override;
    procedure StartSearch; override;
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    constructor Create; override;
    destructor Destroy; override;
  private
    function GetdsDetail: TDataSource;
  public
    property TestNestedRecord: IJanuaTestNestedRecord read GetTestNestedRecord;
    property dsDetail2: TDataSource read GetdsDetail;
    // ***** Test Sub ViewModels Management ******************************************************************************
  private
    FDetailViewModel1: IJanuaTestDetailViewModel;
    FDetailViewModel2: IJanuaTestDetailViewModel;
  strict protected
    procedure ActivateDetails; override;
    procedure DeActivateDetails; override;
  protected
    function GetDetailViewModel1: IJanuaTestDetailViewModel;
    procedure SetDetailModel1(const Value: IJanuaTestDetailViewModel);
    function GetDetailViewModel2: IJanuaTestDetailViewModel;
    procedure SetDetailModel2(const Value: IJanuaTestDetailViewModel);
    function GetdsDetail2: TDataSource;
  public
    property DetailViewModel1: IJanuaTestDetailViewModel read GetDetailViewModel1 write SetDetailModel1;
    property DetailViewModel2: IJanuaTestDetailViewModel read GetDetailViewModel2 write SetDetailModel2;

  end;

implementation

uses Janua.Application.Framework, Spring, Janua.Core.Functions, System.UITypes;

{ TTestViewModel }

procedure TTestViewModel.ActivateDetails;
begin
  inherited;
  FDetailViewModel1 := TTestDetailViewModel.Create(JanuaTestModel.DetailModel1);
  AddDetail(FDetailViewModel1);
  FDetailViewModel2 := TTestDetailViewModel.Create(JanuaTestModel.DetailModel2);
  AddDetail(FDetailViewModel2);
end;

procedure TTestViewModel.AfterConstruction;
begin
  inherited;
  { Some Actions are disabled by ddefault on Detail RecordSet/Dataset }
  ActionSearch.Visible := False;
  ActionSearch.Enabled := False;

  FActionPrint.Visible := False;
  FActionPrint.Enabled := False;

  FActionPreview.Visible := False;
  FActionPreview.Enabled := False;

  FActionExport.Visible := False;
  FActionExport.Enabled := False;

  FActionRefresh.Visible := False;
  FActionRefresh.Enabled := False;
end;

procedure TTestViewModel.BeforeDestruction;
begin
  inherited;

end;

constructor TTestViewModel.Create;
begin
  inherited;
  SetRecordEditDialog(IJanuaMasterDetailTestDialogForm);
end;

procedure TTestViewModel.DeActivateDetails;
begin
  inherited;
  FDetailViewModel1 := nil;
  FDetailViewModel2 := nil;
end;

destructor TTestViewModel.Destroy;
begin
  TJanuaApplication.BindEngine.ClearBindings(self);
  inherited;
end;

function TTestViewModel.GenerateEditDialog: IInterface;
begin
  try
    // FTestEditDialog: IJanuaTestDialogForm;
    if not TJanuaApplicationFactory.TryGetInterface(IJanuaTestDialogForm, FTestEditDialog) then
      raise Exception.Create('IJanuaTestDialogForm not set ');
    Result := FTestEditDialog;
  except
    on e: Exception do
      RaiseException('GenerateEditDialog', e, self, self.LogString);
  end;
end;

function TTestViewModel.GetTestNestedRecord: IJanuaTestNestedRecord;
begin
  Result := FJanuaTestModel.NestedRecord
end;

function TTestViewModel.CreateDBModel: IJanuaDBModel; // TTestViewModel.GetCreateDBModel;
begin
  inherited;
  try
    if not TJanuaApplicationFactory.TryGetInterface(IJanuaDBTestModel, FJanuaTestModel) then
      raise Exception.Create('IJanuaDBAnagraphModel not set');
    FJanuaTestModel.Activate;
    if not Supports(FJanuaTestModel, IJanuaDBModel, Result) then
      raise Exception.Create('Error Message');
  except
    on e: Exception do
      RaiseException('CreateDBModel', e, self);
  end;
end;

function TTestViewModel.GetDBTestModel: IJanuaDBTestModel;
begin
  Result := FJanuaTestModel
end;

function TTestViewModel.GetDetailViewModel1: IJanuaTestDetailViewModel;
begin
  Result := FDetailViewModel1
end;

function TTestViewModel.GetDetailViewModel2: IJanuaTestDetailViewModel;
begin
  Result := FDetailViewModel2
end;

function TTestViewModel.GetdsDetail: TDataSource;
begin
  Result := nil;
  if Assigned(jdsDetail) then
    Result := jdsDetail.DataSource
end;

function TTestViewModel.GetdsDetail2: TDataSource;
begin
  Result := nil;
  if Assigned(jdsDetail2) then
    Result := jdsDetail2.DataSource
end;

function TTestViewModel.GetjdsDetail2: IJanuaDBDataset;
begin
  Result := nil;
  if Assigned(FJanuaTestModel) then
    Result := FJanuaTestModel.jdsTestDetail2
end;

procedure TTestViewModel.OpenAll(const aThreaded: Boolean);
begin
  FJanuaTestModel.OpenAll
end;

procedure TTestViewModel.SetDBTestModel(const Value: IJanuaDBTestModel);
begin
  FJanuaTestModel := Value
end;

procedure TTestViewModel.SetDetailModel1(const Value: IJanuaTestDetailViewModel);
begin
  FDetailViewModel1 := Value;
end;

procedure TTestViewModel.SetDetailModel2(const Value: IJanuaTestDetailViewModel);
begin
  self.FDetailViewModel2 := Value;
end;

procedure TTestViewModel.StartSearch;
begin
  // Mock for Start Search
  FJanuaTestModel.OpenAll;
end;

{ TTestDetailViewModel }

procedure TTestDetailViewModel.ActivateDetails;
begin
  inherited;

end;

constructor TTestDetailViewModel.Create(aModel: IJanuaRSTestModel);
var
  lModel: IJanuaRecordSetModel;
begin
  try
    Guard.CheckNotNull(aModel, 'aModel is null');
    WriteLog('Create', 'check if model is IJanuaRecordSetModel');
    if not Supports(aModel, IJanuaRecordSetModel, lModel) then
      raise Exception.Create('IJanuaRecordSetModel not set');
    // !! Important we must access the Set procedure or the property and NEVER use the internal Field
    DetailTestModel := aModel;
    Guard.CheckNotNull(DetailTestModel.RecordSet, 'Recordset is nil');
    Guard.CheckNotNull(DetailTestModel.SubRecordSet, 'Sub Recordset not set');
    inherited Create;
    Guard.CheckNotNull(DetailTestModel, 'DetailTestModel is null');
    // Immediately calls Refresh Actions because After Creation jdsDataset is already Active and Populated
    RefreshActions;
    // GeFGenerateEditDialog := GenerateEditDialog; is Deprecated SetRecordEditDialog will replace it
    SetRecordEditDialog(IJanuaTestDetailDialog);
  except
    on e: Exception do
      RaiseException('Create', e, self, self.LogString);
  end;
end;

{ function TTestDetailViewModel.GenerateEditDialog: IInterface;
  begin
  try
  // FDetailDialog: IJanuaTestDetailDialog;
  if not TJanuaApplicationFactory.TryGetInterface(IJanuaTestDetailDialog, FDetailDialog) then
  raise Exception.Create('IJanuaTestDetailDialog not set ');
  Result := FDetailDialog;
  except
  on e: Exception do
  RaiseException('GenerateEditDialog', e, self, self.LogString);
  end;
  end; }

procedure TTestDetailViewModel.CreateModel;
begin
  if not Supports(FDetailTestModel, IJanuaModel, FJanuaModel) then
    raise Exception.Create('FDetailTestModel IJanuaModel not supported');
end;

procedure TTestDetailViewModel.DeActivateDetails;
begin
  inherited;

end;

function TTestDetailViewModel.GetDetailTestModel: IJanuaRSTestModel;
begin
  Result := FDetailTestModel
end;

function TTestDetailViewModel.GetRecordSet: IJanuaTestSubRecordSet;
begin
  Result := FDetailTestModel.SubRecordSet
end;

function TTestDetailViewModel.GetSubRecord: IJanuaTestSubRecord;
begin
  Result := FDetailTestModel.TestSubRecord;
end;

procedure TTestDetailViewModel.SetDetailTestModel(const Value: IJanuaRSTestModel);
begin
  // procedure SetRecordSetModel(const aModel: IJanuaRecordSetModel);
  FDetailTestModel := Value;
  if Assigned(FDetailTestModel) then
    SetRecordSetModel(SupportsModel(FDetailTestModel));
end;

end.
