unit Janua.VCL.ViewModel;

interface

uses System.Classes, VCL.Controls, VCL.ActnList, VCL.StdCtrls,
  // Janua InetCertFilesWizardPage
  Janua.ViewModels.Intf, Janua.Core.Classes, Janua.Orm.Intf, Janua.Bindings.Intf, Janua.Core.Types,
  Janua.Orm.Types,
  // Janua VCL
  Janua.VCL.Actions, Janua.VCL.Bindings.Intf, Janua.VCL.Interposers, Janua.TMS.Interposers,
  Janua.Core.Classes.Intf, Janua.VCL.Controls.FrameSelectModel;

type
  /// <summary> Parent Class for components made to build interface at runtime according to VM Spec. </summary>
  TJanuaMVVMBuilder = class(TJanuaCoreComponent)
  private
    FLeft, FCount: Integer;
    FSearchContainer: TWinControl;
    [weak]
    FMDViewModel: IJanuaViewModel;
    /// <summary> Adds a VCL Search Select Frame to the Search Container and Connects it to its Param(Field) </summary>
    /// <param name="aFrameClass">TframSelectModelClass the class of the Frame to build</param>
    /// <param name="aField">IJanuaField a reference to the Parameter to connect to the frame</param>
    procedure AddFrame(const aFrameClass: TframSelectModelClass; aField: IJanuaField);
    /// <summary> According to Param's Type call the right FrameClass and pass it to the Frame </summary>
    procedure Build(const aParam: IJanuaField);
    function BuildParams(aParams: IJanuaParams): Boolean;
  protected
    procedure SetSearchContainer(const Value: TWinControl);
    procedure SetMDViewModel(const Value: IJanuaViewModel);
  public
    constructor Create(AOwner: TComponent); override;
    /// <summary>Checks if Components support connection Interfaces, if not it raisesan exception by default</summary>
    /// <param name="aRaise">Defaulted to True launch an exception if Interfaces are not supported </param>
    function CheckSetup(const aRaise: Boolean = True): Boolean; virtual;
    property MDViewModel: IJanuaViewModel read FMDViewModel write SetMDViewModel;
  published
    property SearchContainer: TWinControl read FSearchContainer write SetSearchContainer;
  end;

  /// <summary>
  /// Search TextBuilder is Responsible of Building a Search set components
  /// (Buttons, Edit) in the View to connect with the ViewModel
  /// </summary>
  TJanuaVCLMVVMSearchTextBuilder = class(TJanuaMVVMBuilder)
  private
    FMainSearchText: string;
    FSearchInput: TCustomEdit;
    FSearchLabel: TCustomLabel;
    FActionable: IJanuaActionable;
    FSearchButton: TButtonControl;
    function GetSearchInput: TCustomEdit;
    function GetSearchLabel: TCustomLabel;
    procedure SetSearchButton(const Value: TButtonControl);
  protected
    /// <summary>
    /// Checks is object (or interposer Objects) do support IJanuaBindable or
    /// IJanuaBindableEdit
    /// </summary>
    procedure SetSearchInput(const Value: TCustomEdit);
    procedure SetSearchLabel(const Value: TCustomLabel);
    procedure SetMainSearchText(const Value: string);
  public
    procedure OnInputChange(Sender: TObject);
    /// <summary>
    /// Checks if Components support connection Interfaces, if not it raises
    /// an exception by default
    /// </summary>
    /// <param name="aRaise">
    /// Defaulted to True launch an exception if Interfaces are not supported
    /// </param>
    function CheckSetup(const aRaise: Boolean = True): Boolean; override;
  strict protected
    // virtual abstract Methods to be implemented by descendant classes .................................
    function InternalActivate: Boolean; override;
  published
    property SearchInput: TCustomEdit read GetSearchInput write SetSearchInput;
    property SearchLabel: TCustomLabel read GetSearchLabel write SetSearchLabel;
    property SearchButton: TButtonControl read FSearchButton write SetSearchButton;
    property MainSearchText: string read FMainSearchText write SetMainSearchText;

  end;

type
  /// <summary> Creates a List of Parameters on a 'container' object. Such as TPanel, </summary>
  TJanuaVCLMVVMSearchParamsBuilder = class(TJanuaMVVMBuilder)
  strict private
  [weak]
    FParams: IJanuaParams;
    procedure SetParams(const Value: IJanuaParams);
  protected
    // Custom Implementation of Internal Activate Method .................................
    function InternalActivate: Boolean; override;
  public
    destructor Destroy; override;
    property Params: IJanuaParams read FParams write SetParams;
  end;

implementation

uses System.SysUtils, Spring, Janua.Application.Framework,
  // Frames
  Janua.VCL.Controls.DateSelect, Janua.VCL.Controls.IntegerSelect, Janua.VCL.Controls.ComboSelect,
  Janua.VCL.Controls.RadioGroup, Janua.VCL.Controls.FloatSelect, Janua.VCL.Controls.BoolSelect,
  Janua.VCL.Controls.StringSelect, Janua.VCL.Controls.SearchSelect;

{ TJanuaVCLMVVMSearchTextBuilder }

function TJanuaVCLMVVMSearchTextBuilder.CheckSetup(const aRaise: Boolean): Boolean;
begin
  Result := inherited and Assigned(FSearchInput);
  // Checks if selected Control supports Actionable Interface, if so a JanuaAction can be connected
  if Assigned(FSearchButton) then
    Assert(Supports(FSearchButton, IJanuaActionable, FActionable), 'IJanuaActionable not supported by ' +
      FSearchButton.Name + ' Class: ' + FSearchButton.ClassName);
end;

function TJanuaVCLMVVMSearchTextBuilder.GetSearchInput: TCustomEdit;
begin
  Result := FSearchInput
end;

function TJanuaVCLMVVMSearchTextBuilder.GetSearchLabel: TCustomLabel;
begin
  Result := FSearchLabel
end;

function TJanuaVCLMVVMSearchTextBuilder.InternalActivate: Boolean;
var
  aAction: TAction;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited and not(csDesigning in ComponentState);
      if Result then
      begin
        CheckSetup;
        {
          if Assigned(ActionViewController) and Assigned(FActionable) then
          begin
          aAction := ActionViewController.AddAction(MDViewModel.ActionSearch);
          aAction.Hint := aAction.Caption;
          aAction.Caption := '';
          if Assigned(FSearchButton) then
          FSearchButton.ShowHint := True;
          FActionable.Action := aAction;
          end;
        }
      end;

      FSearchInput.Text := MDViewModel.MainSearchText;
      BindManager.Bind('MainSearchText', FSearchInput, 'Text');

      if Assigned(FSearchLabel) then
      begin
        FSearchLabel.Caption := MDViewModel.MainSearchLabel;
        MDViewModel.Bind('MainSearchLabel', FSearchLabel, 'Caption');
      end;

      { // Composition and Execution Procedure using Params Builder (if set)
        if Assigned(FParamsBuilder) then
        begin
        if Assigned(FSearchContainer) then
        FParamsBuilder.Container := SearchContainer;

        // it passes Params to ParamBuilder
        FParamsBuilder.Params := MDViewModel.FilterParams;

        // finally activates the Builder
        if not FParamsBuilder.Active then
        FParamsBuilder.Activate;;
        end; }

    except
      on e: exception do
        RaiseLocalException('InternalActivate', e);
    end;

end;

procedure TJanuaVCLMVVMSearchTextBuilder.OnInputChange(Sender: TObject);
begin
  if Assigned(FMDViewModel) then
    FMDViewModel.MainSearchText := self.FSearchInput.Text;
end;

procedure TJanuaVCLMVVMSearchTextBuilder.SetMainSearchText(const Value: string);
begin
  if (FMainSearchText <> Value) then
  begin
    FMainSearchText := Value;
    if Assigned(FMDViewModel) then
      FMDViewModel.MainSearchText := FMainSearchText;
  end;
end;

procedure TJanuaVCLMVVMSearchTextBuilder.SetSearchButton(const Value: TButtonControl);
begin
  FSearchButton := Value;
end;

procedure TJanuaVCLMVVMSearchTextBuilder.SetSearchInput(const Value: TCustomEdit);
begin
  // Checks is object (or interposer Objects) do support IJanuaBindable or IJanuaBindableEdit Interfaces
  if (Value <> nil) then
  begin
    FSearchInput := Value;
    if FSearchInput is TLabeledEdit then
      FSearchLabel := (FSearchInput as TLabeledEdit).EditLabel
  end
  else
  begin
    FSearchInput := nil;
  end;
end;

procedure TJanuaVCLMVVMSearchTextBuilder.SetSearchLabel(const Value: TCustomLabel);
begin
  // Checks is object (or interposer Objects) do support IJanuaBindable or IJanuaBindableEdit Interfaces
  if (Value <> nil) then
  begin
    FSearchLabel := Value
    // Assert(Supports(Value, IJanuaBindableLabelControl, FSearchLabelIntf), 'IBindable Interface not supported')
  end
  else
  begin
    FSearchLabel := nil;
  end;
end;

{ TJanuaMVVMBuilder }

procedure TJanuaMVVMBuilder.AddFrame(const aFrameClass: TframSelectModelClass; aField: IJanuaField);
var
  aFrame: TframSelectModel;
begin
  try
    { Some Guard checks just for Unit Testing purposes }
    Guard.CheckNotNull(FSearchContainer, 'Search Container');
    Guard.CheckNotNull(aFrameClass, 'aFrame');
    Guard.CheckNotNull(aField, 'aField');
    aFrame := aFrameClass.Create(FSearchContainer);
    Inc(FCount);
    { Uses FCount to avoid components with the same name on the same form }
    aFrame.Name := aFrame.ClassName + FCount.ToString;
    aFrame.Visible := False;
    { FSearchContainer needs to be set (not nil) and will contain all the serch frames }
    aFrame.Parent := FSearchContainer;
    { Assigning the field to the Frame activates all its Settings and check if everything is ok }
    aFrame.JanuaField := aField;
    aFrame.Visible := True;
    aFrame.Left := FLeft;
    { Make sure that the new frame is put on the most right position on the container, they are all left aligned }
    FLeft := aFrame.Left + aFrame.Width + 2;
    aFrame.Align := alLeft;
  except
    on e: exception do
      RaiseException('AddFrame', e, self);
  end;
end;

procedure TJanuaMVVMBuilder.Build(const aParam: IJanuaField);
var
  aEdit: TEdit;
  aLabel: TLabel;
begin
  if aParam.Visible then
    try
      if Assigned(aParam.SearchContainer) then
      begin
        { Builds a Search Container based Frame }
        case aParam.SearchContainer.ContainerType of
          jscLookupList:
            AddFrame(TframeComboSelect, aParam);
          jscRadioList:
            AddFrame(TframSelectRadioGroup, aParam);
          jscLookupDataset:
            ;
          jscSearchModel:
            AddFrame(TframeSearchSelect, aParam);
          jscStringList:
            ;
          jscRecordset:
            ;
        end
      end
      else
      begin
        { Builds a simple property Frame }
        case aParam.FieldType of
          // TframeSelectFloat
          jptCurrency, jptExtended, jptFloat, jptSingle:
            AddFrame(TframeSelectFloat, aParam);
          // TframeSelectInteger
          jptCardinal, jptInteger, jptSmallint, jptWord, jptLargeInt, jptAutoInc, jptShortint:
            AddFrame(TframeSelectInteger, aParam);
          jptDateTime, jptDate:
            AddFrame(TJanuaVCLFrameDateSelect, aParam);
          jptString: // TframeSelectString
            AddFrame(TframeSelectString, aParam);
          jptFilename:
            ;
          // TframeSelectBool
          jptBoolean:
            AddFrame(TframeSelectBool, aParam);
        end;
      end;
    except
      on e: exception do
        RaiseException('Build', e, self);
    end;
end;

function TJanuaMVVMBuilder.BuildParams(aParams: IJanuaParams): Boolean;
var
  aParam: IJanuaField;
  { I : Integer; }
begin
  FLeft := 0;
  FCount := 0;
  Result := Assigned(aParams);
  try
    if Result then
    begin
      { Params are maintained in an ordered list just to create the controls }
      for aParam in aParams.OrderedList do
        Build(aParam);
      aParam := nil;
      Result := True;
    end;
  except
    on e: exception do
      RaiseException('BuildParams', e, self);
  end;
end;

function TJanuaMVVMBuilder.CheckSetup(const aRaise: Boolean): Boolean;
begin
  Result := Assigned(MDViewModel);
  if aRaise then
    Assert(Result, 'TJanuaVCLMVVMSearchTextBuilder.CheckSetup FMDViewModel not assigned');
end;

constructor TJanuaMVVMBuilder.Create(AOwner: TComponent);
begin
  inherited;
  Enabled := False;
end;

(*
  procedure TJanuaMVVMBuilder.SetActionViewController(const Value: TJanuaActionViewController);
  begin
  FActionViewController := Value;
  end;
*)

procedure TJanuaMVVMBuilder.SetMDViewModel(const Value: IJanuaViewModel);
begin
  FMDViewModel := Value;
end;

procedure TJanuaMVVMBuilder.SetSearchContainer(const Value: TWinControl);
begin
  FSearchContainer := Value;
  Enabled := Assigned(FSearchContainer);
end;

{ TJanuaVCLMVVMSearchParamsBuilder }

destructor TJanuaVCLMVVMSearchParamsBuilder.Destroy;
begin
  if Assigned(FParams) then
  begin
    FParams := nil;
  end;
  inherited;
end;

function TJanuaVCLMVVMSearchParamsBuilder.InternalActivate: Boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        if Assigned(FSearchContainer) and Assigned(FMDViewModel) and Assigned(FMDViewModel.FilterParams) then
          Result := BuildParams(FMDViewModel.FilterParams)
        else
          Result := False
      end;
    except
      on e: exception do
        RaiseLocalException('InternalActivate', e);
    end;
end;

procedure TJanuaVCLMVVMSearchParamsBuilder.SetParams(const Value: IJanuaParams);
begin
  FParams := Value;
end;

end.
