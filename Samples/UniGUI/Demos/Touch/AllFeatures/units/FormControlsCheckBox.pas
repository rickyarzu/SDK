// CheckBox   = Form Controls
unit FormControlsCheckBox;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniCheckBox, unimCheckBox,
  uniGUImJSForm, uniMemo, unimMemo, unimPanel;

type
  TUniFormControlsCheckBox = class(TUniFrame)
    UnimCheckBox1: TUnimCheckBox;
    UnimContainerPanel1: TUnimContainerPanel;
    UnimMemo1: TUnimMemo;
    procedure UnimCheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniFormControlsCheckBox.UnimCheckBox1Click(Sender: TObject);
begin
  if UnimCheckBox1.Checked then
    UnimCheckBox1.Caption := 'Checked'
  else
    UnimCheckBox1.Caption := 'Unchecked';

  UnimMemo1.Lines.Add('UnimCheckBox :'+UnimCheckBox1.Caption);
end;


initialization
  RegisterClass(TUniFormControlsCheckBox);
end.
