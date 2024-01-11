// Radio   = Form Controls
unit FormControlsRadio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniMemo, unimMemo, uniRadioButton, unimRadio,
  uniGUIBaseClasses, uniGUImJSForm;

type
  TUniFormControlsRadio = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimRadio1: TUnimRadio;
    UnimRadio2: TUnimRadio;
    UnimMemo1: TUnimMemo;
    procedure UnimRadio1Check(Sender: TObject);
    procedure UnimRadio2Check(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniFormControlsRadio.UnimRadio1Check(Sender: TObject);
begin
  UnimMemo1.Lines.Add('------------------------');
  UnimMemo1.Lines.Add('UnimRadio1 = Check, UnimRadio2 = Unchecked');
end;

procedure TUniFormControlsRadio.UnimRadio2Check(Sender: TObject);
begin
  UnimMemo1.Lines.Add('------------------------');
  UnimMemo1.Lines.Add('UnimRadio2 = Check, UnimRadio1 = Unchecked');
end;

initialization
  RegisterClass(TUniFormControlsRadio);

end.
