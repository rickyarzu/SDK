unit Janua.Items.VCL.MVVMNavigator;

interface

uses
  // System
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, System.ImageList,
  System.Actions,
  // VCL
  VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.wwbutton, AdvSplitter, VCL.wwdbigrd, VCL.wwdbgrid, VCL.Graphics,
  VCL.WinXCtrls, VCL.ToolWin, VCL.DBCtrls, VCL.ExtCtrls, VCL.ImgList, SVGIconImageListBase, SVGIconImageList,
  VCL.StdCtrls, VCL.ComCtrls, VCL.ActnList, VCL.Grids,
  // DB
  Data.DB, VCL.DBGrids, CRGrid, Janua.VCL.EnhDBGrid,
  // Janua MVVM Framework
  Janua.VCL.ViewModel, Janua.Core.Classes, Janua.VCL.Actions, uJanuaVCLFrame,
  // Items View Model
  uframeVCLItem, ufrmVCLViewModelNavigator, Janua.Items.ViewModel.Intf, Janua.ViewModels.Intf,
  // Janua Forms Framework
  Janua.Forms.Types, Janua.Controls.Intf, Janua.Controls.Forms.Intf, Janua.Bindings.Intf,
  // Interposers & Janua VCL
  Janua.VCL.Interposers, Janua.TMS.Interposers, Janua.VCL.FormController, Janua.Components.Grids;

type
  TfrmVCLItemsVMNavigator = class(TfrmVCLViewModelNavigator, IJanuaForm, IJanuaContainer, IJanuaBindable)
    frameVCLItem1: TframeVCLItem;
  private
    FItemsViewModel: IJanuaDBItemsViewModel;
    procedure SetItemsViewModel(const Value: IJanuaDBItemsViewModel);
    { Private declarations }
  protected
    procedure ActivateModel; override;
  strict protected
    function InternalActivate: Boolean; override;
  public
    destructor Destroy; override;
  public
    { Public declarations }
    property ItemsViewModel: IJanuaDBItemsViewModel read FItemsViewModel write SetItemsViewModel;
  end;

var
  frmVCLItemsVMNavigator: TfrmVCLItemsVMNavigator;

implementation

uses Spring, Janua.VCL.Framework, Janua.Application.Framework;

{$R *.dfm}

procedure TfrmVCLItemsVMNavigator.ActivateModel;
var
  lViewModel: IJanuaDBViewModel;
begin
  inherited;
  try
    if not TJanuaApplicationFactory.TryGetInterface(IJanuaDBItemsViewModel, FItemsViewModel) then
      raise exception.Create('TfrmVCLTestViewModel.FormCreate IJanuaDBItemsViewModel not set');
    // function Supports(const Instance: IInterface; const IID: TGUID; out Intf): Boolean;
    if not Supports(FItemsViewModel, IJanuaDBViewModel, lViewModel) then
      raise exception.Create('TfrmVCLItemsVMNavigator.FormCreate lViewModel no support IJanuaDBViewModel');
    ViewModel := lViewModel;
  except
    on e: exception do
      RaiseException('Activate', e, self);
  end;

end;

destructor TfrmVCLItemsVMNavigator.Destroy;
begin

  inherited;
end;

function TfrmVCLItemsVMNavigator.InternalActivate: Boolean;
begin
  Result := Initialized;
  if not Result then
  begin
    Result := inherited;
    Guard.CheckNotNull(FItemsViewModel, 'FItemsViewModel');
    if Length(Params) > 0 then
      FItemsViewModel.GroupID := Params[0];
    frameVCLItem1.ItemRecord := FItemsViewModel.CurrentRecord;
  end;
end;

{ TfrmVCLItemsVMNavigator }



procedure TfrmVCLItemsVMNavigator.SetItemsViewModel(const Value: IJanuaDBItemsViewModel);
begin
  FItemsViewModel := Value;
end;

end.
