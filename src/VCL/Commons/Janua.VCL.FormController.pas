unit Janua.VCL.FormController;

interface

uses
  System.SysUtils, System.Classes, Data.DB, VCL.Forms, VCL.Controls,
  // Grid cxControls
  VCL.Grids, VCL.DBGrids, CRGrid, VCL.wwdbigrd, VCL.wwdbgrid, VCL.WinXPickers, VCL.WinXCtrls, Janua.VCL.Grids,
  // Janua
  Janua.ViewModels.Intf, Janua.Orm.Intf, Janua.Controls.Grids.Intf, Janua.Core.Classes.Intf,
  Janua.Core.Classes,
  Janua.Controls.Forms.Intf, Janua.Components.Grids, Janua.Orm.Types,
  // MVVM Components
  Janua.VCL.ViewModel, Janua.VCL.Actions;

// jgtDBGrid: FGridBuilder :=  ;
type
  TJanuaVCLDBGridBuilder = class(TJanuaCustomGridBuilder)

  end;

  // jgtTMS: ;
type
  TJanuaTMSGridBuilder = class(TJanuaCustomGridBuilder)

  end;

  // jgtWoll2Woll: ;
type
  TJanuaMVVMGridBuilder = class(TJanuaCustomGridBuilder)
  private
    FGrid: TwwDBGrid;
    procedure SetGrid(const Value: TwwDBGrid);
  public
    procedure GridRefresh; override;
  strict protected
    function InternalActivate: Boolean; override;
  published
    property Grid: TwwDBGrid read FGrid write SetGrid;
  end;

  // jgtDEXQuantum: ;
type
  TJanuaDexQuantumGridBuilder = class(TJanuaCustomGridBuilder)

  end;

type
  TJanuaMVVMFormController = class(TJanuaCoreComponent, IJanuaBindableComponent)
  private
    { Private declarations }
    FJanuaForm: IJanuaForm;
    FJanuaFrame: IJanuaFrame;
    FContainer: TWinControl;
    [weak]
    FViewModel: IJanuaViewModel;
    [weak]
    FDBViewModel: IJanuaDBViewModel;
    FGridType: TJanuaGridType;
    FGridBuilder: TJanuaCustomGridBuilder;
    FMasterActions: TJanuaActionViewController;
    FFilterParamsBuilder: TJanuaVCLMVVMSearchParamsBuilder;
    FSearchTextBuilder: TJanuaVCLMVVMSearchTextBuilder;
    FDetailActions: TJanuaActionViewController;
    FDetailGridBuilder: TJanuaCustomGridBuilder;
    procedure SetContainer(const Value: TWinControl);
    procedure SetViewModel(const Value: IJanuaViewModel);
    procedure SetGridType(const Value: TJanuaGridType);
    procedure SetGridBuilder(const Value: TJanuaCustomGridBuilder);
    procedure SetMasterActions(const Value: TJanuaActionViewController);
    procedure SetFilterParamsBuilder(const Value: TJanuaVCLMVVMSearchParamsBuilder);
    procedure SetSearchTextBuilder(const Value: TJanuaVCLMVVMSearchTextBuilder);
    procedure SetDetailActions(const Value: TJanuaActionViewController);
    procedure SetDetailGridBuilder(const Value: TJanuaCustomGridBuilder);
  strict protected
    // virtual abstract Methods to be implemented by descendant classes .....................................
    function InternalActivate: Boolean; override;
  protected
    { Protected declarations }
  public
    { Public declarations }
    Constructor Create(AOwner: TComponent); override;
  public
    property ViewModel: IJanuaViewModel read FViewModel write SetViewModel;
  published
    { Published declarations }
    property Container: TWinControl read FContainer write SetContainer;
    property GridType: TJanuaGridType read FGridType write SetGridType;
    property MasterGridBuilder: TJanuaCustomGridBuilder read FGridBuilder write SetGridBuilder;
    property MasterActions: TJanuaActionViewController read FMasterActions write SetMasterActions;
    property FilterParamsBuilder: TJanuaVCLMVVMSearchParamsBuilder read FFilterParamsBuilder
      write SetFilterParamsBuilder;
    property SearchTextBuilder: TJanuaVCLMVVMSearchTextBuilder read FSearchTextBuilder
      write SetSearchTextBuilder;
    property DetailActions: TJanuaActionViewController read FDetailActions write SetDetailActions;
    property DetailGridBuilder: TJanuaCustomGridBuilder read FDetailGridBuilder write SetDetailGridBuilder;
  end;

procedure Register;

implementation

uses Janua.Core.Functions, Janua.Application.Framework, Spring;

procedure Register;
begin
  RegisterComponents('Janua ViewModel VCL', [TJanuaMVVMFormController]);
  // TJanuaMVVMGridBuilder
  RegisterComponents('Janua ViewModel VCL', [TJanuaMVVMGridBuilder]);
end;

{ TJanuaMVVMFormController }

constructor TJanuaMVVMFormController.Create(AOwner: TComponent);
begin
  inherited;
  try
    Guard.CheckNotNull(AOwner, 'Owner cannot be null');
    if not((AOwner is TForm) or (AOwner is TFrame)) then
      CreateException('Create', 'Owner Must be a Form or Frame', self);
  except
    on e: exception do
      RaiseException('Create', e, self);
  end;

end;

function TJanuaMVVMFormController.InternalActivate: Boolean;
var
  tmp: IJanuaDBViewModel;
begin
  Result := Active;
  if not Result then
  begin
    Result := inherited;
    if Result then
    begin
      Result := Assigned(FViewModel);
      if not FViewModel.Active then
        Result := ViewModel.Activate;

      Guard.CheckNotNull(FViewModel.jdsDataset, 'FViewModel.jdsDataset');
      if Result then
      begin
        if Assigned(FSearchTextBuilder) and FSearchTextBuilder.Enabled and
          Supports(FViewModel, IJanuaDBViewModel, tmp) then
        begin
          FSearchTextBuilder.MDViewModel := tmp;
          Result := FSearchTextBuilder.Activate;
        end;

        if Result and Assigned(FGridBuilder) and FGridBuilder.Enabled then
        begin
          FGridBuilder.JanuaDataset := FViewModel.jdsDataset;
          Result := FGridBuilder.Activate;
        end;

        if Result and Assigned(FDBViewModel) and FViewModel.HasDetail and Assigned(FDetailGridBuilder) and
          FDetailGridBuilder.Enabled then
        begin
          FDetailGridBuilder.JanuaDataset := FDBViewModel.jdsDetail;
          Result := FDetailGridBuilder.Activate;
        end;

        if Result and Assigned(MasterActions) then
        begin
          MasterActions.JanuaActionList := FViewModel.MainActionList;
          Result := MasterActions.Activate;
        end;

        if Assigned(FDetailActions) and FViewModel.HasDetail and Result then
        begin
          { TODO :  DetailActions.DataSource :=  FViewModel.dsDetail; }
        end;

        if Result and Assigned(FFilterParamsBuilder) and FFilterParamsBuilder.Enabled and Assigned(tmp) then
        begin
          FFilterParamsBuilder.MDViewModel := tmp;
          Result := FFilterParamsBuilder.Activate;
        end;
      end;
    end;
  end;
end;

procedure TJanuaMVVMFormController.SetContainer(const Value: TWinControl);
begin
  FContainer := Value;
end;

procedure TJanuaMVVMFormController.SetDetailActions(const Value: TJanuaActionViewController);
begin
  FDetailActions := Value;
end;

procedure TJanuaMVVMFormController.SetDetailGridBuilder(const Value: TJanuaCustomGridBuilder);
begin
  FDetailGridBuilder := Value;
end;

procedure TJanuaMVVMFormController.SetFilterParamsBuilder(const Value: TJanuaVCLMVVMSearchParamsBuilder);
begin
  FFilterParamsBuilder := Value;
end;

procedure TJanuaMVVMFormController.SetGridBuilder(const Value: TJanuaCustomGridBuilder);
begin
  FGridBuilder := Value;
end;

procedure TJanuaMVVMFormController.SetGridType(const Value: TJanuaGridType);
begin
  FGridType := Value;
end;

procedure TJanuaMVVMFormController.SetMasterActions(const Value: TJanuaActionViewController);
begin
  FMasterActions := Value;
end;

procedure TJanuaMVVMFormController.SetSearchTextBuilder(const Value: TJanuaVCLMVVMSearchTextBuilder);
begin
  FSearchTextBuilder := Value;
end;

procedure TJanuaMVVMFormController.SetViewModel(const Value: IJanuaViewModel);
begin
  FViewModel := Value;
  if Assigned(FViewModel) then
    Supports(FViewModel, IJanuaDBViewModel, FDBViewModel)
end;

{ TJanuaMVVMGridBuilder }

procedure TJanuaMVVMGridBuilder.GridRefresh;
var
  I, J, K: Integer;
  vTest: TField;
  lColumnField: TJanuaGridColumnField;

  procedure SetColumn(aColumnField: TJanuaGridColumnField);
  begin
    FGrid.AddField(aColumnField.MappedField.FieldName, I);
    if (aColumnField.Title <> '') and (aColumnField.Title <> aColumnField.MappedField.DisplayLabel) then
      aColumnField.MappedField.DisplayLabel := aColumnField.Title;

    FGrid.ColumnByName(aColumnField.MappedField.FieldName).DisplayLabel := aColumnField.Title;
    FGrid.ColumnByName(aColumnField.MappedField.FieldName).Index := I;
    { FGrid.ColumnByName(aColumnField.MappedField.FieldName).mas }

    if aColumnField.GridFieldDef.DisplayWidth.HasValue then
    begin
      aColumnField.MappedField.DisplayWidth := aColumnField.GridFieldDef.DisplayWidth;
      FGrid.ColumnByName(aColumnField.MappedField.FieldName).DisplayWidth :=
        aColumnField.GridFieldDef.DisplayWidth;
    end;
    aColumnField.MappedField.Visible := True;

    Inc(I);
    // Mask should be managed directly by the model and displayed on the grid according with field properties
    { TODO: if aColumnField.Mask <> '' then
      begin
      // aColumnField.MappedField.EditMask := aColumnField.Mask;
      if aColumnField.MappedField is TNumericField then
      (aColumnField.MappedField as TNumericField).DisplayFormat := aColumnField.Mask
      else if aColumnField.MappedField is TDateTimeField then
      (aColumnField.MappedField as TDateTimeField).DisplayFormat := aColumnField.Mask;
      end; }
  end;

begin
  try
    Guard.CheckNotNull(FGrid, 'DBGrid not set');
    Guard.CheckNotNull(JanuaDataset, 'JanuaDataset not set');

    FGrid.DataSource := JanuaDataset.DataSource;
    if JanuaDataset.GridColumns.Count > 0 then
      for I := 0 to Pred(JanuaDataset.DataSet.FieldCount) do
        JanuaDataset.DataSet.Fields[I].Visible := False;
    { FGrid.LineColors.ShadowColor := clSilver; }

    I := 0;
    for lColumnField in JanuaDataset.GridColumns do
    begin
      K := JanuaDataset.DataSet.FieldDefs.Count;
      vTest := JanuaDataset.DataSet.FindField(lColumnField.MappedField.FieldName);
      J := JanuaDataset.DataSet.FieldDefs.IndexOf(lColumnField.MappedField.FieldName);
      if J > -1 then
        JanuaDataset.DataSet.FieldDefs.Find(lColumnField.MappedField.FieldName).Index := I
      else if Assigned(vTest) then
      begin
        JanuaDataset.DataSet.FieldDefs.Add(vTest.FieldName, vTest.DataType, vTest.Size, vTest.Required);
        if K > I then
          JanuaDataset.DataSet.FieldDefs.Find(lColumnField.MappedField.FieldName).Index := I;
      end;
      SetColumn(lColumnField);
    end;

    FGrid.Invalidate;
    FGrid.RefreshDisplay;
  except
    on e: exception do
      RaiseException('GridRefresh', e, self);
  end;

end;

function TJanuaMVVMGridBuilder.InternalActivate: Boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        Result := Assigned(JanuaDataset) and Assigned(JanuaDataset.DataSet);
        if Result then
          GridRefresh
      end;
    except
      on e: exception do
        RaiseException('InternalActivate', e, self);
    end;
end;

procedure TJanuaMVVMGridBuilder.SetGrid(const Value: TwwDBGrid);
begin
  FGrid := Value;
end;

end.
