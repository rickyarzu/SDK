//Advanced Toolbar = Toolbar
unit ToolbarAdvancedToolbar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniLabel, unimLabel, unimEdit, uniTrackBar,
  unimSlider, uniDateTimePicker, unimDatePicker, unimToggle, unimSpinner,
  uniEdit, uniToolBar, unimToolbar, uniMemo, unimMemo, uniGUIBaseClasses,
  uniGUImJSForm;

type
  TUniToolbarAdvancedToolbar = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimMemo1: TUnimMemo;
    UnimToolBar1: TUnimToolBar;
    UnimToolButton1: TUnimToolButton;
    UnimToolButton2: TUnimToolButton;
    UnimToolButton3: TUnimToolButton;
    UnimEdit1: TUnimEdit;
    UnimToolButton4: TUnimToolButton;
    UnimSpinner1: TUnimSpinner;
    UnimToolBar2: TUnimToolBar;
    UnimToolButton6: TUnimToolButton;
    UnimToggle1: TUnimToggle;
    UnimToolButton7: TUnimToolButton;
    UnimDatePicker1: TUnimDatePicker;
    UnimToolButton5: TUnimToolButton;
    UnimEdit2: TUnimEdit;
    UnimToolBar3: TUnimToolBar;
    UnimToolButton8: TUnimToolButton;
    UnimSlider1: TUnimSlider;
    UnimToolButton9: TUnimToolButton;
    UnimNumberEdit1: TUnimNumberEdit;
    UnimToolButton10: TUnimToolButton;
    UnimToolButton11: TUnimToolButton;
    UnimLabel1: TUnimLabel;
    procedure UnimToolButton1Click(Sender: TObject);
    procedure UnimEdit1Change(Sender: TObject);
    procedure UnimSpinner1Change(Sender: TObject);
    procedure UnimEdit2Change(Sender: TObject);
    procedure UnimToggle1Change(Sender: TObject);
    procedure UnimDatePicker1Change(Sender: TObject);
    procedure UnimSlider1Change(Sender: TObject);
    procedure UnimNumberEdit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uniStrUtils;

{$R *.dfm}



procedure TUniToolbarAdvancedToolbar.UnimDatePicker1Change(Sender: TObject);
begin
  UnimMemo1.Lines.Add(UnimDatePicker1.Text);
end;

procedure TUniToolbarAdvancedToolbar.UnimEdit1Change(Sender: TObject);
begin
  UnimMemo1.Lines.Add(UnimEdit1.Text);
end;

procedure TUniToolbarAdvancedToolbar.UnimEdit2Change(Sender: TObject);
begin
  UnimMemo1.Lines.Add(UnimEdit2.Text);
end;

procedure TUniToolbarAdvancedToolbar.UnimNumberEdit1Change(Sender: TObject);
begin
  UnimMemo1.Lines.Add(UnimNumberEdit1.Text);
end;

procedure TUniToolbarAdvancedToolbar.UnimSlider1Change(Sender: TObject);
begin
  UnimMemo1.Lines.Add(UnimSlider1.Text);
end;

procedure TUniToolbarAdvancedToolbar.UnimSpinner1Change(Sender: TObject);
begin
  UnimMemo1.Lines.Add(UnimSpinner1.Text);
end;

procedure TUniToolbarAdvancedToolbar.UnimToggle1Change(Sender: TObject);
begin
  UnimMemo1.Lines.Add(UniBoolToStr(UnimToggle1.Toggled));
end;

procedure TUniToolbarAdvancedToolbar.UnimToolButton1Click(Sender: TObject);
begin
  UnimMemo1.Lines.Add('Click');
end;

initialization
  RegisterClass(TUniToolbarAdvancedToolbar);

end.
