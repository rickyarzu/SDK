//Formatted Edit = Form Controls

unit FormControlsFormattedEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniButton, uniMemo, uniEdit, uniGUIBaseClasses,
  uniLabel, uniPanel;

type
  TUniFormControlsFormattedEdit = class(TUniFrame)
    UniLabel1: TUniLabel;
    UniFormattedNumberEdit1: TUniFormattedNumberEdit;
    UniFormattedNumberEdit2: TUniFormattedNumberEdit;
    UniLabel2: TUniLabel;
    UniFormattedNumberEdit3: TUniFormattedNumberEdit;
    UniLabel3: TUniLabel;
    UniFormattedNumberEdit4: TUniFormattedNumberEdit;
    UniLabel4: TUniLabel;
    UniFormattedNumberEdit5: TUniFormattedNumberEdit;
    UniLabel5: TUniLabel;
    UniFormattedNumberEdit6: TUniFormattedNumberEdit;
    UniLabel6: TUniLabel;
    UniMemo1: TUniMemo;
    UniShowMemoButton: TUniButton;
    UniContainerPanel1: TUniContainerPanel;
    procedure UniShowMemoButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniFormControlsFormattedEdit.UniShowMemoButtonClick(Sender: TObject);
var
  I:integer;
begin
  UniMemo1.Clear;
  for I := 1 to 6 do
       UniMemo1.Lines.Add(TUniFormattedNumberEdit(FindComponent('UniFormattedNumberEdit'+IntToStr(I))).Text+' '+TUniFormattedNumberEdit(FindComponent('UniFormattedNumberEdit'+IntToStr(I))).FormattedInput.CurrencySign);
end;

initialization
  RegisterClass(TUniFormControlsFormattedEdit);

end.
