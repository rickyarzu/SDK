unit Janua.Anagraph.ViewModel.Impl;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Janua.Core.Types, System.Variants, Janua.Controls.Forms.Intf,
  Janua.Core.Classes.Intf, Janua.Orm.Intf, JOrm.Anagraph.Intf, Janua.ViewModels.Intf,
  Janua.ViewModels.Templates, Janua.Anagraph.ViewModel.Intf;

type
  TAnagraphViewModel = class(TJanuaViewModelDBTemplate, IJanuaDBAnagraphViewModel, IJanuaDBViewModel)
  private
    FJanuaAnagraphModel: IJanuaDBAnagraphModel;
    FAnagraphID: Integer;
  strict protected
    function GetjdsAnagraphs: IJanuaDBDataset;
    procedure SetjdsAnagraphs(Value: IJanuaDBDataset);
    function GetjdsGroups: IJanuaDBDataset;
    procedure SetjdsGroups(Value: IJanuaDBDataset);
    function GetjdsAddresses: IJanuaDBDataset;
    function GetdsAnagraphs: TDataSource;
    function GetdsGroups: TDataSource;
    property dsGroups: TDataSource read GetdsGroups;
    function GetDBAnagraphModel: IJanuaDBAnagraphModel;
    procedure SetDBAnagraphModel(const Value: IJanuaDBAnagraphModel);
    // IAnagraph
    function GetAnagraphRecord: IAnagraphView;
    function GetAnagraphID: Integer;
    procedure SetAnagraphID(const Value: Integer);
  strict protected // virtual methods
    /// <summary> This procedure Sets the internal Field FCreateDBModel for the custom descendant VM </summary>
    function CreateDBModel: IJanuaDBModel; override;
  public
    property jdsAnagraphs: IJanuaDBDataset read GetjdsAnagraphs;
    property jdsGroups: IJanuaDBDataset read GetjdsGroups;

    property DBAnagraphModel: IJanuaDBAnagraphModel read GetDBAnagraphModel write SetDBAnagraphModel;
    property dsAnagraphs: TDataSource read GetdsAnagraphs;
    property AnagraphRecord: IAnagraphView read GetAnagraphRecord;
  strict protected
    function InternalActivate: boolean; override;
    procedure ActivateDetails; override;
    procedure DeactivateDetails; override;
  public
    { Public declarations }
    procedure OpenAll(const aThreaded: boolean = False); override;
    procedure StartSearch; override;
    constructor Create; override;
    constructor Create(aGroupID: Integer); overload;
    destructor Destroy; override;
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    // Public Procedures
    procedure CopyToBillingAddress;
    procedure CopyToShipmentAddress;
    function AddNewAnagraph(const aAnagraph: IAnagraphView): Integer;
    function UpdateAnagraph(const aAnagraph: IAnagraphView): boolean;
  public
    property AnagraphID: Integer read GetAnagraphID write SetAnagraphID;
  end;

var
  dmVCLAnagraphViewModel: TAnagraphViewModel;

implementation

uses System.Threading, Janua.Application.Framework, Janua.ViewModels.Application, Janua.Core.Functions,
  Spring;

{ TAnagraphViewModel }

procedure TAnagraphViewModel.ActivateDetails;
begin
  inherited;

end;

function TAnagraphViewModel.AddNewAnagraph(const aAnagraph: IAnagraphView): Integer;
begin
  Result := FJanuaAnagraphModel.AddNewAnagraph(aAnagraph);
end;

procedure TAnagraphViewModel.AfterConstruction;
begin
  inherited;

end;

procedure TAnagraphViewModel.BeforeDestruction;
begin
  inherited;

end;

procedure TAnagraphViewModel.CopyToBillingAddress;
begin
  { TODO : Add to IAnagraphInterface the copy methods }
end;

procedure TAnagraphViewModel.CopyToShipmentAddress;
begin
  { TODO : Add to IAnagraphInterface the copy methods }
end;

constructor TAnagraphViewModel.Create;
begin
  inherited;
  SetRecordEditDialog(IJanuaAnagraphForm);
  Guard.CheckNotNull(ReportingList, 'ReportingList');
end;

procedure TAnagraphViewModel.DeactivateDetails;
begin
  inherited;

end;

destructor TAnagraphViewModel.Destroy;
begin
  TJanuaApplication.ExecProc(
    procedure
    begin
      TJanuaApplication.BindEngine.ClearBindings(Self);
      inherited;
    end, 'ClearBindings', Self);
end;

function TAnagraphViewModel.GetAnagraphID: Integer;
begin
  Result := FAnagraphID
end;

function TAnagraphViewModel.GetAnagraphRecord: IAnagraphView;
begin
  // takes the Record from the Model.
  Result := FJanuaAnagraphModel.AnagraphRecord;
end;

constructor TAnagraphViewModel.Create(aGroupID: Integer);
begin
  GroupID := aGroupID;
  Create;
end;

function TAnagraphViewModel.CreateDBModel: IJanuaDBModel; // TAnagraphViewModel.GetCreateDBModel;
begin
  inherited; { Sets FCreateDBModel to nil }
  if not Assigned(FJanuaAnagraphModel) then
    try
      if not TJanuaViewModelApplication.Settings.AnagraphModelsContainer.TryGetModel(GroupID,
        FJanuaAnagraphModel) then
      begin
        if not(TJanuaApplicationFactory.TryGetInterface(IJanuaDBAnagraphModel, FJanuaAnagraphModel)) then
          raise Exception.Create('TAnagraphViewModel.DataModuleCreate IJanuaDBAnagraphModel not set');

        FJanuaAnagraphModel.IsThreaded := IsThreaded;
        FJanuaAnagraphModel.Bind('IsThreaded', Self, 'IsThreaded');
      end;

      if FJanuaAnagraphModel.GroupID <> GroupID then
        FJanuaAnagraphModel.GroupID := GroupID;
      if not FJanuaAnagraphModel.jdsAnagraphs.Active then
        FJanuaAnagraphModel.Activate;
      if not FJanuaAnagraphModel.jdsAnagraphs.Active then
        FJanuaAnagraphModel.OpenAll(False);

      Result := FJanuaAnagraphModel as IJanuaDBModel;
    except
      on e: Exception do
        RaiseException('CreateDBModel', e, Self);
    end;
end;

function TAnagraphViewModel.GetDBAnagraphModel: IJanuaDBAnagraphModel;
begin
  Result := FJanuaAnagraphModel;
end;

function TAnagraphViewModel.GetdsAnagraphs: TDataSource;
begin
  Result := dsMaster;
end;

function TAnagraphViewModel.GetdsGroups: TDataSource;
begin
  Result := nil;
  if Assigned(jdsGroups) then
    Result := Self.jdsGroups.DataSource
end;

function TAnagraphViewModel.GetjdsAddresses: IJanuaDBDataset;
begin
  Result := FJanuaAnagraphModel.jdsAddresses
end;

function TAnagraphViewModel.GetjdsAnagraphs: IJanuaDBDataset;
begin
  Result := FJanuaAnagraphModel.jdsAnagraphs
end;

function TAnagraphViewModel.GetjdsGroups: IJanuaDBDataset;
begin
  Result := Self.FJanuaAnagraphModel.jdsGroups
end;

function TAnagraphViewModel.InternalActivate: boolean;
begin
  Result := inherited
end;

procedure TAnagraphViewModel.OpenAll(const aThreaded: boolean = False);
begin
  try
    FJanuaAnagraphModel.IsThreaded := aThreaded;
    FJanuaAnagraphModel.GroupID := GroupID;
    FJanuaAnagraphModel.AnagraphID := FAnagraphID;
    FJanuaAnagraphModel.OpenAll(aThreaded);
    FJanuaAnagraphModel.IsThreaded := True;
  except
    on e: Exception do
      RaiseException('OpenAll', e, Self);
  end;
end;

procedure TAnagraphViewModel.SetAnagraphID(const Value: Integer);
begin
  if Value <> FAnagraphID then
  begin
    FAnagraphID := Value;
    Notify('AnagraphID');
  end;
end;

procedure TAnagraphViewModel.SetDBAnagraphModel(const Value: IJanuaDBAnagraphModel);
begin
  FJanuaAnagraphModel := Value
end;

procedure TAnagraphViewModel.SetjdsAnagraphs(Value: IJanuaDBDataset);
begin
  FJanuaAnagraphModel.jdsAnagraphs := Value;
end;

procedure TAnagraphViewModel.SetjdsGroups(Value: IJanuaDBDataset);
begin
  FJanuaAnagraphModel.jdsGroups := Value;
end;

procedure TAnagraphViewModel.StartSearch;
begin
  FJanuaAnagraphModel.StartSearch;
end;

function TAnagraphViewModel.UpdateAnagraph(const aAnagraph: IAnagraphView): boolean;
begin
  Result := FJanuaAnagraphModel.UpdateAnagraph(aAnagraph);
end;

end.
