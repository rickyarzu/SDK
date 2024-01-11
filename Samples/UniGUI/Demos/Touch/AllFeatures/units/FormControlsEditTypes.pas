// Edit Types   = Form Controls
unit FormControlsEditTypes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, unimSpinner, unimEdit, uniEdit, uniGUIBaseClasses,
  uniGUImJSForm, uniMemo, unimMemo, uniButton, unimButton, unimPanel;

type
  TUniFormControlsEditTypes = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimEdit1: TUnimEdit;
    UnimNumberEdit1: TUnimNumberEdit;
    UnimSpinner1: TUnimSpinner;
    UnimButton1: TUnimButton;
    UnimMemo1: TUnimMemo;
    UnimPanel1: TUnimContainerPanel;
    UnimPanel2: TUnimContainerPanel;
    UnimPanel3: TUnimContainerPanel;
    procedure UnimButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TUniFormControlsEditTypes.UnimButton1Click(Sender: TObject);
begin
  UnimMemo1.Clear;
  UnimMemo1.Lines.Add('UnimEdit: '+UnimEdit1.Text);
  UnimMemo1.Lines.Add('UnimNumberEdit: '+UnimNumberEdit1.Text);
  UnimMemo1.Lines.Add('UnimSpinnerEdit: '+UnimSpinner1.Text);
end;

initialization
  RegisterClass(TUniFormControlsEditTypes);


end.
