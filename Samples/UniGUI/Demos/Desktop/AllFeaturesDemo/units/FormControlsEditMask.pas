// Edit Mask = Form Controls

unit FormControlsEditMask;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniButton, uniMemo, uniLabel, uniEdit,
  uniGUIBaseClasses, uniPanel;

type
  TUniFormControlsEditMask = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniLabel1: TUniLabel;
    UniMemo1: TUniMemo;
    UniShowMemoButton: TUniButton;
    UniEdit1: TUniEdit;
    UniEdit2: TUniEdit;
    UniLabel2: TUniLabel;
    UniEdit3: TUniEdit;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    UniEdit4: TUniEdit;
    procedure UniShowMemoButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniFormControlsEditMask.UniShowMemoButtonClick(Sender: TObject);
var
  I: Integer;
begin
  UniMemo1.Clear;
  for I := 1 to 4 do
    UniMemo1.Lines.Add(TUniFormattedNumberEdit(FindComponent('UniEdit'+IntToStr(I))).Text);

end;

initialization
  RegisterClass(TUniFormControlsEditMask);
end.
