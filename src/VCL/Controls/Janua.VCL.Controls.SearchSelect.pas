unit Janua.VCL.Controls.SearchSelect;

interface

uses
  /// RTL
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  // Janua
  Janua.Controls.Select.Intf, Janua.Bindings.Intf, Janua.Core.Classes.Intf, Janua.Controls.Forms.Intf,
  uJanuaVCLFrame, Janua.Orm.Intf, Janua.VCL.Controls.FrameSelectModel,
  // VCL
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.StdCtrls, VCL.ExtCtrls,
  // Interposers
  Janua.VCL.Interposers, Janua.VCL.ViewModel.Search, Janua.Core.Classes, VCL.WinXCtrls;

type
  TframeSearchSelect = class(TframSelectModel, IJanuaContainer, IJanuaBindable, IJanuaSelect)
    lbID: TLabel;
    pnlSearch: TPanel;
    btnSearch: TButton;
    edtSearch: TEdit;
    JanuaVCLSearchController1: TJanuaVCLSearchController;
    pnlCheck: TPanel;
    tsCheck: TToggleSwitch;
    procedure tsCheckClick(Sender: TObject);
  private
    FChecked: Boolean;
    FUpdatingCheck: Boolean;
    function GetChecked: Boolean;
    procedure SetChecked(const Value: Boolean);
  strict protected
    procedure GetActivate; override;
    procedure InternalSetField; override;
  protected
    { Private declarations }
  public
    procedure CallBackSearch(aResult: integer); virtual;
    constructor Create(AOwner: TComponent); override;
    property Checked: Boolean read GetChecked write SetChecked;
  end;

implementation

uses Janua.Application.Framework, Spring, Janua.Search.ViewModels.Intf;

{$R *.dfm}
{ TframeSearchSelect }

{ TframeSearchSelect }

procedure TframeSearchSelect.CallBackSearch(aResult: integer);
begin
  try
    if aResult > 0 then
    begin
      lbID.Caption := FJanuaField.SearchContainer.KeyValue;
      edtSearch.Text := FJanuaField.SearchContainer.LookupValue;
      SetChecked(True);
    end
    else
    begin
      lbID.Caption := FJanuaField.DefaultValue.ToString;
      edtSearch.Text := '';
      SetChecked(False);
    end;
  except
    on e: Exception do
      RaiseException('InternalSetField', e, self);
  end;
end;

constructor TframeSearchSelect.Create(AOwner: TComponent);
begin
  inherited;
  FUpdatingCheck := False;
end;

procedure TframeSearchSelect.GetActivate;
begin
  inherited;

end;

function TframeSearchSelect.GetChecked: Boolean;
begin
  Result := FChecked;
end;

procedure TframeSearchSelect.InternalSetField;
var
  aSVM: IJanuaSearchVMContainer;
begin
  try
    inherited;
    Guard.CheckTrue(Assigned(FJanuaField.SearchContainer), 'SearchContainer is nil');
    if not Supports(FJanuaField.SearchContainer, IJanuaSearchVMContainer, aSVM) then
      raise Exception.Create('IJanuaSearchVMContainer not supported');
    if not Assigned(aSVM.SearchViewModel) then
      aSVM.Active := False;

    if not aSVM.Active then
      aSVM.Activate;

    { This connect the 'future' CallBackSearch with the Container, it will be Used to manage Key-Values Pairs }
    aSVM.CallBackSearch := CallBackSearch;

    Guard.CheckTrue(aSVM.Active, 'SearchVMContainer failed to Activate');
    Guard.CheckTrue(Assigned(aSVM.SearchViewModel), 'SearchVMContainer.SearchViewModel is nil');
    JanuaVCLSearchController1.SearchViewModel := aSVM.SearchViewModel;
    JanuaVCLSearchController1.Activate;

    SetChecked(FJanuaField.Active);
    FJanuaField.Bind('Active', self, 'Checked', False);
  except
    on e: Exception do
      RaiseException('InternalSetField', e, self);
  end;
end;

procedure TframeSearchSelect.SetChecked(const Value: Boolean);
begin
  if FChecked <> Value then
  begin
    FUpdatingCheck := True;
    try
      FChecked := Value;
      if FChecked then
      begin
        tsCheck.State := TToggleSwitchState.tssOn;
        FJanuaField.Activate;
      end
      else
      begin
        tsCheck.State := TToggleSwitchState.tssOff;
        FJanuaField.Default;
        FJanuaField.Active := False;
        lbID.Caption := FJanuaField.DefaultValue.ToString;
        edtSearch.Text := '';
      end;
      Notify('Checked');
    finally
      FUpdatingCheck := False;
    end;
  end;
end;

procedure TframeSearchSelect.tsCheckClick(Sender: TObject);
begin
  if not FUpdatingCheck then
    SetChecked(tsCheck.State = TToggleSwitchState.tssOn)
end;

end.
