//Simple Toolbar = Toolbar
unit ToolbarSimpleToolbar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniGUImJSForm,
  unimSegmentedButton, uniToolBar, unimToolbar, uniImageList, ServerModule;

type
  TUniToolbarSimpleToolbar = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UniImageList1: TUniImageList;
    UnimContainerPanel2: TUnimContainerPanel;
    UnimToolBar1: TUnimToolBar;
    UnimToolButton7: TUnimToolButton;
    UnimToolButton1: TUnimToolButton;
    UnimToolButton2: TUnimToolButton;
    UnimToolButton3: TUnimToolButton;
    UnimToolButton4: TUnimToolButton;
    UnimToolButton5: TUnimToolButton;
    UnimToolButton6: TUnimToolButton;
    UnimToolButton8: TUnimToolButton;
    UnimToolButton9: TUnimToolButton;
    UnimToolButton11: TUnimToolButton;
    UnimToolButton10: TUnimToolButton;
    UnimToolBar2: TUnimToolBar;
    UnimToolButton13: TUnimToolButton;
    UnimToolButton12: TUnimToolButton;
    UnimSegmentedButton1: TUnimSegmentedButton;
    procedure UnimToolButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}


procedure TUniToolbarSimpleToolbar.UnimToolButton6Click(Sender: TObject);
begin
  UnimToolButton6.BadgeText:=IntToStr(StrToInt(UnimToolButton6.BadgeText)+1);
end;

initialization
  RegisterClass(TUniToolbarSimpleToolbar);

end.
