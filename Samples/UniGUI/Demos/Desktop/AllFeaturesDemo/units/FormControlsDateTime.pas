//DateTime = Form Controls
unit FormControlsDateTime;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniDateTimePicker, uniCalendar, uniGUIBaseClasses,
  uniPanel, uniButton, uniMemo;

type
  TUniFormControlsDateTime = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniCalendar1: TUniCalendar;
    UniDateTimePicker1: TUniDateTimePicker;
    UniDateTimePicker2: TUniDateTimePicker;
    UniDateTimePicker3: TUniDateTimePicker;
    UniMemo1: TUniMemo;
    UniButton1: TUniButton;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TUniFormControlsDateTime.UniButton1Click(Sender: TObject);
begin
  UniMemo1.Lines.Add(DateToStr(UniDateTimePicker1.DateTime));
  UniMemo1.Lines.Add(FormatDateTime('dd/mm/yyyy hh:nn:ss', UniDateTimePicker2.DateTime));
  UniMemo1.Lines.Add(TimeToStr(UniDateTimePicker3.DateTime));
  UniMemo1.Lines.Add(DateToStr(UniCalendar1.Date));
end;

procedure TUniFormControlsDateTime.UniFrameCreate(Sender: TObject);
begin
  UniDateTimePicker1.DateTime := Now;
  UniDateTimePicker2.DateTime := Now;
  UniDateTimePicker3.DateTime := Now;
  UniCalendar1.Date := Now;
end;

initialization
  RegisterClass(TUniFormControlsDateTime);

end.
