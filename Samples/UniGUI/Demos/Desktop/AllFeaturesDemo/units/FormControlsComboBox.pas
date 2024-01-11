//ComboBox = Form Controls
unit FormControlsComboBox;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniLabel, uniMultiItem, uniComboBox,
  uniGUIBaseClasses, uniPanel;

type
  TUniFormControlsComboBox = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniComboBox1: TUniComboBox;
    UniComboBox2: TUniComboBox;
    UniLabel1: TUniLabel;
    UniComboBox3: TUniComboBox;
    UniLabel2: TUniLabel;
    UniComboBox4: TUniComboBox;
    UniLabel3: TUniLabel;
    UniComboBox5: TUniComboBox;
    UniLabel4: TUniLabel;
    UniComboBox6: TUniComboBox;
    UniLabel5: TUniLabel;
    UniComboBox10: TUniComboBox;
    UniLabel9: TUniLabel;
    UniComboBox11: TUniComboBox;
    UniLabel10: TUniLabel;
    UniLabel11: TUniLabel;
    UniComboBox13: TUniComboBox;
    procedure UniComboBox1Select(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniFormControlsComboBox.UniComboBox1Select(Sender: TObject);
var
  add: string;
begin
  add := UniComboBox1.Items.Strings[UniComboBox1.ItemIndex];
  UniComboBox2.Items.Add(add);
  UniComboBox2.Text := add;
end;

initialization
  RegisterClass(TUniFormControlsComboBox);

end.
