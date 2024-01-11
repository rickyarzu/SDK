// Toggle   = Form Controls
unit FormControlsToggle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniMemo, unimMemo, unimToggle, uniGUIBaseClasses,
  uniGUImJSForm, uniLabel, unimLabel, unimPanel;

type
  TUniFormControlsToggle = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimToggle1: TUnimToggle;
    UnimMemo1: TUnimMemo;
    UnimLabel1: TUnimLabel;
    UnimPanel1: TUnimPanel;
    procedure UnimToggle1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  StrUtils;

{$R *.dfm}



procedure TUniFormControlsToggle.UnimToggle1Change(Sender: TObject);
begin
  UnimMemo1.Lines.Add(IfThen(UnimToggle1.Toggled, 'Toggle: True', 'Toggle: False'));
end;

initialization
  RegisterClass(TUniFormControlsToggle);

end.
