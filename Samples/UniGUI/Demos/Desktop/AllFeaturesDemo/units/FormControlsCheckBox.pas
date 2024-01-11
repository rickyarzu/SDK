//CheckBox = Form Controls
unit FormControlsCheckBox;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniCheckBox, uniGUIBaseClasses, uniPanel;

type
  TUniFormControlsCheckBox = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniCheckBox1: TUniCheckBox;
    procedure UniCheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniFormControlsCheckBox.UniCheckBox1Click(Sender: TObject);
begin
  if UniCheckBox1.Checked then
    UniCheckBox1.Caption := 'checked'
  else
    UniCheckBox1.Caption := 'unchecked';
end;

initialization
  RegisterClass(TUniFormControlsCheckBox);
end.
