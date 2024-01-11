//Radios = Form Controls
unit FormControlsRadios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniMemo, uniRadioGroup, uniRadioButton,
  uniGUIBaseClasses, uniPanel;

type
  TUniFormControlsRadios = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniRadioButton1: TUniRadioButton;
    UniRadioGroup1: TUniRadioGroup;
    UniMemo1: TUniMemo;
    UniRadioButton2: TUniRadioButton;
    procedure UniRadioGroup1Click(Sender: TObject);
    procedure UniRadioButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniFormControlsRadios.UniRadioButton1Click(Sender: TObject);
begin
  if UniRadioButton1.Checked then
    UniMemo1.Lines.Add(UniRadioButton1.Name+' Check '+UniRadioButton2.Name+' Unchecked')
  else
    UniMemo1.Lines.Add(UniRadioButton2.Name+' Check '+UniRadioButton1.Name+' Unchecked');
end;

procedure TUniFormControlsRadios.UniRadioGroup1Click(Sender: TObject);
begin
    UniMemo1.Lines.Add(UniRadioGroup1.Name+' '+UniRadioGroup1.Items[UniRadioGroup1.ItemIndex]+ ' = True Others False');
end;

initialization
  RegisterClass(TUniFormControlsRadios);
end.
