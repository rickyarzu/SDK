unit Janua.VCL.MVVM.frameNavigator;

interface

{$I januacore.inc}

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, VCL.Graphics,
  VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.ExtCtrls, System.Actions, VCL.ActnList,
  VCL.ImgList, VCL.Buttons, VCL.StdCtrls, Janua.Core.Classes, Janua.VCL.Actions, VCL.DBCtrls, VCL.Menus,
  VCL.ToolWin, VCL.ComCtrls, Janua.VCL.ViewModel, VCL.Mask, JvExMask, JvToolEdit, VCL.Themes,

  System.ImageList, SVGIconImageListBase, SVGIconImageList,
  // TMS
  Lucombo, AdvSplitter,
  // DB Controls
  Data.DB, VCL.Grids, VCL.DBGrids, CRGrid,
  // VCL
  VCL.wwbutton, VCL.wwdbigrd, VCL.wwdbgrid, VCL.WinXPickers, VCL.WinXCtrls,
  // Januaproject
  Janua.ViewModels.Intf, uJanuaVCLFrame, Janua.Core.Types, Janua.Core.Classes.Intf, Janua.Orm.Intf,
  Janua.Forms.Types, Janua.Controls.Intf, Janua.Controls.Forms.Intf, Janua.Bindings.Intf, Janua.Core.Commons,
  // Interposers
  Janua.VCL.EnhCRDBGrid, Janua.VCL.EnhDBGrid, Janua.VCL.Interposers, Janua.TMS.Interposers,
  Janua.VCL.FormController, Janua.Components.Grids;

type
  TframeVCLMVVMNavigator = class(TJanuaVCLFrameModel, IJanuaContainer, IJanuaBindable)
    pnlCommands: TPanel;
    tlbMaster: TToolBar;
    pnlSearchText: TPanel;
    lbSearchText: TLabel;
    edSearchText: TEdit;
    grdMaster: TwwDBGrid;
    grdMasterIButton: TwwIButton;
    JanuaMasterActionViewController: TJanuaActionViewController;
    JanuaVCLMVVMSearchParamsBuilder1: TJanuaVCLMVVMSearchParamsBuilder;
    JanuaVCLMVVMSearchTextBuilder1: TJanuaVCLMVVMSearchTextBuilder;
    MasterGridBuilder1: TJanuaMVVMGridBuilder;
    JanuaMVVMFormController1: TJanuaMVVMFormController;
    procedure grdMasterDblClick(Sender: TObject);
    procedure grdMasterCalcCellColors(Sender: TObject; Field: TField; State: TGridDrawState;
      Highlight: Boolean; AFont: TFont; ABrush: TBrush);
  strict protected
    { Private declarations }
  [weak]
    FViewModel: IJanuaViewModel;
  protected
    function GetViewModel: IJanuaViewModel;
    procedure SetViewModel(const Value: IJanuaViewModel);
  public
    { Public declarations }
    property ViewModel: IJanuaViewModel read GetViewModel write SetViewModel;
  end;

implementation

uses Spring, Janua.VCL.Framework, Janua.Application.Framework, Janua.Core.Functions;

{$R *.dfm}
{ TframeVCLMVVMNavigator }

function TframeVCLMVVMNavigator.GetViewModel: IJanuaViewModel;
begin
  Result := FViewModel
end;

procedure TframeVCLMVVMNavigator.grdMasterCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  inherited;
  if (Field.FieldName = 'deleted') and Field.AsBoolean then
    AFont.Color := clRed;
end;

procedure TframeVCLMVVMNavigator.grdMasterDblClick(Sender: TObject);
begin
  if Assigned(FViewModel) then
    FViewModel.actionEdit.Execute;
end;

procedure TframeVCLMVVMNavigator.SetViewModel(const Value: IJanuaViewModel);
begin
  try
    FViewModel := Value;
    if Assigned(FViewModel) then
    begin
      FViewModel.Activate;
      JanuaMVVMFormController1.ViewModel := FViewModel as IJanuaViewModel;
      if not JanuaMVVMFormController1.Activate then
        JShowError('Form Controller Failed to Activate');
    end;
  except
    On e: exception do
      RaiseException('SetViewModel', e, self);
  end;
end;

end.
