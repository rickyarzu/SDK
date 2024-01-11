unit Janua.VCL.ViewModel.Search;

interface

uses
  System.SysUtils, System.Classes, Janua.Core.Classes, Janua.VCL.Actions, Janua.ViewModels.Intf,
  VCL.StdCtrls, VCL.Controls, Janua.Bindings.Intf, Janua.Search.ViewModels.Intf, Janua.Core.Classes.Intf,
  Janua.VCL.Interposers, Janua.VCL.Bindings.Intf, Janua.TMS.Interposers;

type
  TJanuaVCLSearchController = class(TJanuaCoreComponent)
  private
    FSearchInput: TCustomEdit;
    FSearchInputIntf: IJanuaBindableEditControl;
    FSearchViewModel: ISearchViewModel;
    FSearchButton: TButtonControl;
    FSearchButtonIntf: IJanuaActionable;
    FCustomCallBackSearch: TProc<Integer>;
    procedure SetSearchButton(const Value: TButtonControl);
    procedure SetCustomCallBackSearch(const Value: TProc<Integer>);
  protected
    procedure SetSearchInput(const Value: TCustomEdit);
    procedure SetSearchViewModel(const Value: ISearchViewModel);
    { Private declarations }
  strict protected
    // virtual abstract Methods to be implemented by descendant classes .....................................
    function InternalActivate: boolean; override;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    procedure OnEnter(Sender: TObject);
    procedure OnExit(Sender: TObject);
    procedure ButtonClick(Sender: TObject);
  public
    property SearchViewModel: ISearchViewModel read FSearchViewModel write SetSearchViewModel;
    property CustomCallBackSearch: TProc<Integer> read FCustomCallBackSearch write SetCustomCallBackSearch;
  published
    { Published declarations }
    property SearchInput: TCustomEdit read FSearchInput write SetSearchInput;
    property SearchButton: TButtonControl read FSearchButton write SetSearchButton;
  end;

procedure Register;

implementation

uses Spring, Janua.Application.Framework, Janua.Core.Functions;

procedure Register;
begin
  RegisterComponents('Janua ViewModel VCL', [TJanuaVCLSearchController]);
end;

{ TJanuaVCLSearchController }

procedure TJanuaVCLSearchController.ButtonClick(Sender: TObject);
begin
  if Assigned(FSearchViewModel) then
    FSearchViewModel.StartSearch;
end;

constructor TJanuaVCLSearchController.Create(AOwner: TComponent);
begin
  inherited;
  FCustomCallBackSearch := nil;
end;

function TJanuaVCLSearchController.InternalActivate: boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := Enabled and inherited and notDesigning;
      if Result then
      begin
        try
          Result := False;
          if Assigned(FSearchButton) then
          begin
            if not Supports(FSearchButton, IJanuaActionable, FSearchButtonIntf) then
              raise Exception.Create(FSearchButton.ClassName + '.' + FSearchButton.Name +
                ' does not support IJanuaActionable');
            WriteLocalLog('InternalActivate', 'FSearchButtonIntf.OnClick');
            FSearchButtonIntf.OnClick := ButtonClick;
          end;

          Guard.CheckNotNull(FSearchInput, 'FSearchInput is nil');
          Guard.CheckNotNull(FSearchViewModel, 'FSearchViewModel not Set');

          if not Supports(FSearchInput, IJanuaBindableEditControl, FSearchInputIntf) then
            raise Exception.Create(FSearchInput.ClassName + '.' + FSearchInput.Name +
              ' does not support IJanuaBindableEditControl');

          WriteLocalLog('InternalActivate', 'FSearchButtonIntf.OnClick');
          FSearchViewModel.SearchText := FSearchInput.Text;
          // FSearchInput.Text := FSearchViewModel.SearchText;
          FSearchViewModel.Bind('SearchText', FSearchInput, 'Text');
          FSearchInputIntf.OnEnter := self.OnEnter;
          FSearchInputIntf.OnExit := self.OnExit;
          Result := True;
        finally
          self.ClearLocalLog('InternalActivate');
        end;
      end;
    except
      on e: Exception do
        RaiseLocalException('InternalActivate', e);
    end;

end;

procedure TJanuaVCLSearchController.OnEnter(Sender: TObject);
begin
  if Assigned(FSearchViewModel) then
  begin
    FSearchViewModel.Enabled := True;
    FSearchViewModel.EnterSearch;
  end;
end;

procedure TJanuaVCLSearchController.OnExit(Sender: TObject);
begin
  if Assigned(FSearchViewModel) then
  begin
    FSearchViewModel.Enabled := True;
    FSearchViewModel.StartSearch(FCustomCallBackSearch);
    FSearchViewModel.Enabled := False;
  end;
end;

procedure TJanuaVCLSearchController.SetCustomCallBackSearch(const Value: TProc<Integer>);
begin
  FCustomCallBackSearch := Value;
end;

procedure TJanuaVCLSearchController.SetSearchButton(const Value: TButtonControl);
begin
  FSearchButton := Value;
end;

procedure TJanuaVCLSearchController.SetSearchInput(const Value: TCustomEdit);
begin
  FSearchInput := Value;
  if FSearchInput is TEdit then
  begin
    TEdit(FSearchInput).OnEnter := self.OnEnter;
    TEdit(FSearchInput).OnExit := self.OnExit;
  end
  else if FSearchInput is TLabeledEdit then
  begin
    TLabeledEdit(FSearchInput).OnEnter := self.OnEnter;
    TLabeledEdit(FSearchInput).OnExit := self.OnExit;
  end
end;

procedure TJanuaVCLSearchController.SetSearchViewModel(const Value: ISearchViewModel);
begin
  FSearchViewModel := Value;
end;

end.
