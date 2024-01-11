// Simple Toolbar = ToolBar
unit ToolBarSimpleToolbar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniImageList, uniToolBar,
  uniPanel, uniMemo;

type
  TUniToolBarSimpleToolbar = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniToolBar1: TUniToolBar;
    UniToolButton1: TUniToolButton;
    UniToolButton2: TUniToolButton;
    UniToolButton3: TUniToolButton;
    UniToolButton4: TUniToolButton;
    UniMemo1: TUniMemo;
    UniToolButton5: TUniToolButton;
    UniNativeImageList1: TUniNativeImageList;
    UniToolButton6: TUniToolButton;
    procedure UniToolButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TUniToolBarSimpleToolbar.UniToolButton1Click(Sender: TObject);
begin
  UniMemo1.Lines.Add((Sender as TUniToolButton).Name + 'Clicked');
end;

initialization
  RegisterClass(TUniToolBarSimpleToolbar);

end.
