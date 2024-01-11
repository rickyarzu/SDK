// Datepicker   = Form Controls
unit FormControlsDatepicker;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniGUImJSForm,
  uniDateTimePicker, unimDatePicker, uniMemo, unimMemo, uniButton, unimButton;

type
  TUniFormControlsDatepicker = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimDatePicker1: TUnimDatePicker;
    UnimButton1: TUnimButton;
    UnimMemo1: TUnimMemo;
    procedure UniFrameCreate(Sender: TObject);
    procedure UnimButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}
procedure TUniFormControlsDatepicker.UniFrameCreate(Sender: TObject);
begin
  UnimDatePicker1.Date := Now;

end;

procedure TUniFormControlsDatepicker.UnimButton1Click(Sender: TObject);
begin
  UnimMemo1.Clear;
  UnimMemo1.Lines.Add('Date: '+UnimDatePicker1.Text);

end;

initialization
  RegisterClass(TUniFormControlsDatepicker);


end.
