unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniGUIBaseClasses, uniCalendarPanel, unimCalendarPanel;

type
  TMainmForm = class(TUnimForm)
    UnimCalendarPanel1: TUnimCalendarPanel;
    procedure UnimCalendarPanel1RangeSelect(Sender: TUniCalendarPanel;
      AStartDate, AEndDate: TDateTime);
    procedure UnimFormCreate(Sender: TObject);
    procedure UnimCalendarPanel1EventClick(Sender: TUniCalendarPanel;
      AEventId: Integer; AEvent: TUniCalendarEvent);
    procedure UnimCalendarPanel1DayClick(Sender: TUniCalendarPanel;
      ADate: TDateTime; Allday: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainmForm: TMainmForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, mEventEditor;

function MainmForm: TMainmForm;
begin
  Result := TMainmForm(UniMainModule.GetFormInstance(TMainmForm));
end;

procedure TMainmForm.UnimCalendarPanel1DayClick(Sender: TUniCalendarPanel;
  ADate: TDateTime; Allday: Boolean);
begin
  if not mEventEditForm.Visible then
  begin
    mEventEditForm.Calenedar := UnimCalendarPanel1;
    mEventEditForm.ClearEvent;
    mEventEditForm.SetDate(ADate, ADate);
    mEventEditForm.ShowModal;
  end;
end;

procedure TMainmForm.UnimCalendarPanel1EventClick(Sender: TUniCalendarPanel;
  AEventId: Integer; AEvent: TUniCalendarEvent);
begin
  if not mEventEditForm.Visible then
  begin
    mEventEditForm.Calenedar := UnimCalendarPanel1;
    mEventEditForm.SetCalendars;
    mEventEditForm.SetEvent(AEvent);
    mEventEditForm.ShowModal;
  end;
end;

procedure TMainmForm.UnimCalendarPanel1RangeSelect(Sender: TUniCalendarPanel;
  AStartDate, AEndDate: TDateTime);
begin
  if not mEventEditForm.Visible then
  begin
    mEventEditForm.Calenedar := UnimCalendarPanel1;
    mEventEditForm.SetCalendars;
    mEventEditForm.ClearEvent;
    if AStartDate = 0.0 then AStartDate := Now;
    if AEndDate = 0.0 then AEndDate := Now + 1.0/24.0;

    mEventEditForm.SetDate(AStartDate, AEndDate);
    mEventEditForm.ShowModal;
  end;
end;

procedure TMainmForm.UnimFormCreate(Sender: TObject);
var
  E : TUniCalendarEvent;
begin
  UnimCalendarPanel1.StartDate := Date;

  UnimCalendarPanel1.WeekTimeRange.TimeStart := 0.0;
  UnimCalendarPanel1.WeekTimeRange.TimeEnd := 0.99999999999;
  UnimCalendarPanel1.DayTimeRange.TimeStart := 0.0;
  UnimCalendarPanel1.DayTimeRange.TimeEnd := 0.99999999999;

  E := UnimCalendarPanel1.Events.Add;
  E.CalendarId := 1;
  E.Title := 'Meeting';
  E.StartDate := Date;
  E.EndDate := Date;
  E.IsAllDay := True;

  E := UnimCalendarPanel1.Events.Add;
  E.CalendarId := 2;
  E.Title := 'Meeting-2';
  E.StartDate := Date+1;
  E.EndDate := Date+1;
  E.IsAllDay := True;

  E := UnimCalendarPanel1.Events.Add;
  E.CalendarId := 3;
  E.Title := 'Meeting-3';
  E.StartDate := Date + 1.0 + StrToTime('15:30');
  E.EndDate := Date + 1.0 + StrToTime('16:30');

  E := UnimCalendarPanel1.Events.Add;
  E.CalendarId := 4;
  E.Title := 'Meeting-4';
  E.StartDate := Date + 2.0 + StrToTime('10:00');
  E.EndDate := Date + 2.0 + StrToTime('12:00');
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.
