unit Janua.TMS.Statistics.MainFormController;

interface

uses
// Tms
  AdvMenus, AdvSplitter, AdvMemo, advmjson, {Janua.VCL.Dialogs,} AdvTreeViewBase, AdvTreeViewData,
  AdvCustomTreeView,
  AdvTreeView, VCL.StdCtrls,
  Janua.VCL.Statistics.MainFormController;

  type TJanuaTmsMainFormController = class(TJanuaStatisticsMainForm)
  private
    FAdvPopupMenu: TAdvPopupMenu;
    procedure SetAdvPopupMenu(const Value: TAdvPopupMenu);
  published
    property AdvPopupMenu: TAdvPopupMenu read FAdvPopupMenu write SetAdvPopupMenu;
  end;

implementation

{ TJanuaTmsMainFormController }

procedure TJanuaTmsMainFormController.SetAdvPopupMenu(const Value: TAdvPopupMenu);
begin
  FAdvPopupMenu := Value;
  if assigned(FAdvPopupMenu) then
    FAdvPopupMenu.OnPopup := self.PopupMenuPopup;
end;

end.
