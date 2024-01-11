// GroupBox = Form Controls
unit FormControlsGroupBox;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniMultiItem, uniComboBox, uniCheckBox, uniEdit,
  uniLabel, uniRadioButton, uniButton, uniGroupBox, uniGUIBaseClasses, uniPanel;

type
  TUniFormControlsGroupBox = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniGroupBox1: TUniGroupBox;
    UniButton1: TUniButton;
    UniRadioButton1: TUniRadioButton;
    UniGroupBox2: TUniGroupBox;
    UniLabel1: TUniLabel;
    UniEdit1: TUniEdit;
    UniGroupBox3: TUniGroupBox;
    UniCheckBox1: TUniCheckBox;
    UniComboBox1: TUniComboBox;
    UniButton2: TUniButton;
    procedure UniButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniFormControlsGroupBox.UniButton2Click(Sender: TObject);
begin
  UniGroupBox3.Visible := not UniGroupBox3.Visible;
  if UniButton2.Caption = 'Show Hidden Group' then
    UniButton2.Caption := 'Hide Hidden Group'
  else
    UniButton2.Caption := 'Show Hidden Group';
end;

initialization
  RegisterClass(TUniFormControlsGroupBox);
end.
