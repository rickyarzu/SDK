// Slider   = Form Controls
unit FormControlsSlider;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniMemo, unimMemo, uniTrackBar, unimSlider,
  uniGUIBaseClasses, uniGUImJSForm;

type
  TUniFormControlsSlider = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimSlider1: TUnimSlider;
    UnimMemo1: TUnimMemo;
    procedure UnimSlider1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniFormControlsSlider.UnimSlider1Change(Sender: TObject);
begin
  UnimMemo1.Lines.Add('Position: '+IntToStr(UnimSlider1.Position));
end;

initialization
  RegisterClass(TUniFormControlsSlider);

end.
