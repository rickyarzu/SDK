// Advanced ToolBar = ToolBar
unit ToolBarAdvancedToolBar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniSpinEdit, uniDateTimePicker, uniTrackBar,
  uniMultiItem, uniComboBox, uniEdit, uniToolBar, uniStatusBar,
  uniGUIBaseClasses, uniImageList, uniPanel, uniMemo;

type
  TUniToolBarAdvancedToolBar = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniToolBar1: TUniToolBar;
    UniToolButton1: TUniToolButton;
    UniToolButton2: TUniToolButton;
    UniToolButton6: TUniToolButton;
    UniToolButton3: TUniToolButton;
    UniToolButton4: TUniToolButton;
    UniEdit1: TUniEdit;
    UniToolButton7: TUniToolButton;
    UniToolButton8: TUniToolButton;
    UniComboBox1: TUniComboBox;
    UniToolButton9: TUniToolButton;
    UniToolButton10: TUniToolButton;
    UniTrackBar1: TUniTrackBar;
    UniToolButton11: TUniToolButton;
    UniToolButton12: TUniToolButton;
    UniDateTimePicker1: TUniDateTimePicker;
    UniToolButton13: TUniToolButton;
    UniSpinEdit1: TUniSpinEdit;
    UniMemo1: TUniMemo;
    UniNativeImageList1: TUniNativeImageList;
    procedure UniToolButton1Click(Sender: TObject);
    procedure UniToolButton2Click(Sender: TObject);
    procedure UniToolButton6Click(Sender: TObject);
    procedure UniEdit1Change(Sender: TObject);
    procedure UniComboBox1Select(Sender: TObject);
    procedure UniTrackBar1Change(Sender: TObject);
    procedure UniDateTimePicker1Change(Sender: TObject);
    procedure UniSpinEdit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TUniToolBarAdvancedToolBar.UniComboBox1Select(Sender: TObject);
begin
    UniMemo1.Lines.Add((Sender as TUniComboBox).Text);
end;

procedure TUniToolBarAdvancedToolBar.UniDateTimePicker1Change(Sender: TObject);
begin
  UniMemo1.Lines.Add(DateTimeToStr((Sender as TUniDateTimePicker).DateTime));
end;

procedure TUniToolBarAdvancedToolBar.UniEdit1Change(Sender: TObject);
begin
  UniMemo1.Lines.Add((Sender as TUniEdit).Text);
end;

procedure TUniToolBarAdvancedToolBar.UniSpinEdit1Change(Sender: TObject);
begin
  UniMemo1.Lines.Add((Sender as TUniSpinEdit).Text);
end;

procedure TUniToolBarAdvancedToolBar.UniToolButton1Click(Sender: TObject);
begin
    UniMemo1.Lines.Add((Sender as TUniToolButton).Caption);
end;

procedure TUniToolBarAdvancedToolBar.UniToolButton2Click(Sender: TObject);
begin
  UniMemo1.Lines.Add((Sender as TUniToolButton).Caption);
end;

procedure TUniToolBarAdvancedToolBar.UniToolButton6Click(Sender: TObject);
begin
  UniMemo1.Lines.Add((Sender as TUniToolButton).Caption);
end;

procedure TUniToolBarAdvancedToolBar.UniTrackBar1Change(Sender: TObject);
begin
  UniMemo1.Lines.Add(IntToStr((Sender as TUniTrackBar).Position));
end;

initialization
  RegisterClass(TUniToolBarAdvancedToolBar);

end.
