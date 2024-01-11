// Memo   = Form Controls
unit FormControlsMemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniGUImJSForm, uniButton,
  unimButton, uniMemo, unimMemo;

type
  TUniFormControlsMemo = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimMemo1: TUnimMemo;
    UnimButton1: TUnimButton;
    UnimMemo2: TUnimMemo;
    procedure UnimButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniFormControlsMemo.UnimButton1Click(Sender: TObject);
begin
  UnimMemo2.Text := UnimMemo1.Text;
end;

initialization
  RegisterClass(TUniFormControlsMemo);

end.
