// TagField = Form Controls
unit FormControlsTagField;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniButton, uniMemo, uniMultiItem, uniListBox,
  uniGUIBaseClasses, uniPanel;

type
  TUniFormControlsTagField = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniTagField1: TUniTagField;
    UniMemo1: TUniMemo;
    UniButton1: TUniButton;
    procedure UniButton1Click(Sender: TObject);
    procedure UniTagField1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniFormControlsTagField.UniButton1Click(Sender: TObject);
begin
  UniTagField1.Text := 'Orange';
end;

procedure TUniFormControlsTagField.UniTagField1Change(Sender: TObject);
begin
  UniMemo1.Lines.Add(UniTagField1.Text);
end;

initialization
  RegisterClass(TUniFormControlsTagField);

end.
