unit mEventEditor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  unimTimePicker, uniDateTimePicker, unimDatePicker, uniMultiItem, unimSelect,
  uniEdit, unimEdit, uniGUIBaseClasses, unimFieldSet, uniPanel, uniCheckBox,
  unimCheckBox, uniButton, unimButton, unimCalendarPanel;

type
  TmEventEditForm = class(TUnimForm)
    UnimFieldSet1: TUnimFieldSet;
    UnimEdit2: TUnimEdit;
    UnimEdit1: TUnimEdit;
    UnimSelect1: TUnimSelect;
    UnimFieldContainer1: TUnimFieldContainer;
    UnimDatePicker1: TUnimDatePicker;
    UnimTimePicker1: TUnimTimePicker;
    UnimFieldContainer2: TUnimFieldContainer;
    UnimDatePicker2: TUnimDatePicker;
    UnimTimePicker2: TUnimTimePicker;
    UnimCheckBox1: TUnimCheckBox;
    UnimFieldContainer3: TUnimFieldContainer;
    UnimButton1: TUnimButton;
    UnimButton2: TUnimButton;
    UnimCheckBox2: TUnimCheckBox;
    procedure UnimFormClose(Sender: TObject; var Action: TCloseAction);
    procedure UnimFormCreate(Sender: TObject);
  private
    { Private declarations }
    Event : TUniCalendarEvent;
  public
    { Public declarations }
    Calenedar: TUnimCalendarPanel;
    procedure ClearEvent;
    procedure SetEvent(E: TUniCalendarEvent);
    procedure SetDate(A, B: TDateTime);
    procedure SetCalendars;
  end;

function mEventEditForm: TmEventEditForm;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function mEventEditForm: TmEventEditForm;
begin
  Result := TmEventEditForm(UniMainModule.GetFormInstance(TmEventEditForm));
end;

procedure TmEventEditForm.ClearEvent;
begin
  Event := nil;
  UnimDatePicker1.Date := Date;
  UnimDatePicker2.Date := Date;
  UnimTimePicker1.Time := Time;
  UnimTimePicker2.Time := Time;
  UnimEdit1.Text := 'New Event';
  UnimEdit2.Text := '';
  UnimSelect1.Text := '1';
end;

procedure TmEventEditForm.SetCalendars;
var
  I : Integer;
begin
  if Assigned(Calenedar) then
  begin
    UnimSelect1.Items.Clear;

    for I := 0 to Calenedar.Calendars.Count - 1 do
      UnimSelect1.Items.Add(IntToStr(Calenedar.Calendars[I].CalendarId));
  end;
end;

procedure TmEventEditForm.SetDate(A, B: TDateTime);
begin
  UnimDatePicker1.Date := A;
  UnimDatePicker2.Date := B;
  UnimTimePicker1.Time := A;
  UnimTimePicker2.Time := B;
end;

procedure TmEventEditForm.SetEvent(E: TUniCalendarEvent);
begin
  Event := E;
  if Assigned(E) then
  begin
    UnimDatePicker1.Date := E.StartDate;
    UnimDatePicker2.Date := E.EndDate;
    UnimTimePicker1.Time := E.StartDate;
    UnimTimePicker2.Time := E.EndDate;
    UnimEdit1.Text := E.Title;
    UnimEdit2.Text := E.Reminder;
    UnimSelect1.Text := IntToStr(E.CalendarId);
    UnimCheckBox1.Checked := E.IsAllDay;
  end;
end;

procedure TmEventEditForm.UnimFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if ModalResult = mrOK then
  begin
    if UnimCheckBox2.Checked then
    begin
      Event.Free;
      Exit;
    end;

    if (UnimDatePicker1.Date = UnimDatePicker2.Date) and (UnimTimePicker1.Time = UnimTimePicker2.Time)
        and (not UnimCheckBox1.Checked) then
    begin
      ShowMessage('Start and stop date/time must be different.');
      Action := caNone;
      Exit;
    end;


    if not Assigned(Event) then
      Event := Calenedar.Events.Add;

    Event.StartDate := UnimDatePicker1.Date + UnimTimePicker1.Time;
    Event.EndDate := UnimDatePicker2.Date + UnimTimePicker2.Time;
    Event.Title := UnimEdit1.Text;
    Event.Reminder := UnimEdit2.Text;
    if UnimSelect1.Text <> '' then
      Event.CalendarId := StrToIntDef(UnimSelect1.Text[1], 1);
    Event.IsAllDay := UnimCheckBox1.Checked;
  end;
end;

procedure TmEventEditForm.UnimFormCreate(Sender: TObject);
begin
  SetDate(Now, Now + 1.0/24.0);
end;

end.
