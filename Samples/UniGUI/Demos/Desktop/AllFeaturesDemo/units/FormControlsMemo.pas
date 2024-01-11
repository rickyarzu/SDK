//Memo = Form Controls
unit FormControlsMemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniButton, uniMemo, uniGUIBaseClasses, uniPanel;

type
  TUniFormControlsMemo = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniMemo1: TUniMemo;
    UniMemo2: TUniMemo;
    UniButton1: TUniButton;
    procedure UniButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniFormControlsMemo.UniButton1Click(Sender: TObject);
begin
  UniMemo2.Lines.Add(UniMemo1.Lines.Text);
end;

initialization
  RegisterClass(TUniFormControlsMemo);

end.
