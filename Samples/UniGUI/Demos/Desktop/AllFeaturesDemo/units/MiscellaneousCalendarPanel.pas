// Calendar Panel = Miscellaneous
unit MiscellaneousCalendarPanel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniToolBar, uniTimer, uniStatusBar, uniCalendar,
  uniPanel, UniCalendarPanel, uniGUIBaseClasses, uniImageList, ServerModule, EventModuleUnit;

type
  TUniMiscellaneousCalendarPanel = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniCalendarPanel1: TUniCalendarPanel;
    UniPanel1: TUniPanel;
    UniCalendar1: TUniCalendar;
    UniTimer1: TUniTimer;
    UniToolBar1: TUniToolBar;
    UniToolButton1: TUniToolButton;
    UniToolButton2: TUniToolButton;
    UniToolButton3: TUniToolButton;
    UniToolButton4: TUniToolButton;
    UniNativeImageList1: TUniNativeImageList;
    procedure UniToolButton1Click(Sender: TObject);
    procedure UniToolButton2Click(Sender: TObject);
    procedure UniToolButton3Click(Sender: TObject);
    procedure UniCalendar1Click(Sender: TObject);
    procedure UniCalendarPanel1DateChange(Sender: TUniCalendarPanel; AStartDate,
      AViewStart, AViewEnd: TDateTime);
    procedure UniCalendarPanel1EventClick(Sender: TUniCalendarPanel;
      AEventId: Integer; AEvent: TUniCalendarEvent);
    procedure UniCalendarPanel1RangeSelect(Sender: TUniCalendarPanel;
      AStartDate, AEndDate: TDateTime);
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TUniMiscellaneousCalendarPanel.UniCalendar1Click(Sender: TObject);
begin
  UniCalendarPanel1.StartDate := UniCalendar1.Date;
end;

procedure TUniMiscellaneousCalendarPanel.UniCalendarPanel1DateChange(
  Sender: TUniCalendarPanel; AStartDate, AViewStart, AViewEnd: TDateTime);
begin
  UniCalendar1.Date := UniCalendarPanel1.StartDate;
end;

procedure TUniMiscellaneousCalendarPanel.UniCalendarPanel1EventClick(
  Sender: TUniCalendarPanel; AEventId: Integer; AEvent: TUniCalendarEvent);
begin
  if not EventEditForm.Visible then
  begin
    EventEditForm.Calenedar := UniCalendarPanel1;
    EventEditForm.SetEvent(AEvent);
    EventEditForm.ShowModal;
  end;
end;

procedure TUniMiscellaneousCalendarPanel.UniCalendarPanel1RangeSelect(
  Sender: TUniCalendarPanel; AStartDate, AEndDate: TDateTime);
begin
  if not EventEditForm.Visible then
  begin
    EventEditForm.Calenedar := UniCalendarPanel1;
    EventEditForm.ClearEvent;
    EventEditForm.SetDate(AStartDate, AEndDate);
    EventEditForm.ShowModal;
  end;
end;

procedure TUniMiscellaneousCalendarPanel.UniFrameCreate(Sender: TObject);
var
  E : TUniCalendarEvent;
begin
  UniCalendar1.Date := Date;
  UniCalendarPanel1.StartDate := Date;

  E := UniCalendarPanel1.Events.Add;
  E.CalendarId := 1;
  E.Title := 'Meeting';
  E.StartDate := Date;
  E.EndDate := E.StartDate;
  E.IsAllDay := True;

  E := UniCalendarPanel1.Events.Add;
  E.CalendarId := 2;
  E.Title := 'Meeting-2';
  E.StartDate := Date+1;
  E.EndDate := E.StartDate;
  E.IsAllDay := True;

  E := UniCalendarPanel1.Events.Add;
  E.CalendarId := 3;
  E.Title := 'Meeting-3';
  E.StartDate := Date + 1.0 + StrToTime('15:30');
  E.EndDate := Date + 1.0 + StrToTime('16:30');

  E := UniCalendarPanel1.Events.Add;
  E.CalendarId := 4;
  E.Title := 'Meeting-4';
  E.StartDate := Date + 2.0 + StrToTime('10:00');
  E.EndDate := Date + 2.0 + StrToTime('12:00');

  E := UniCalendarPanel1.Events.Add;
  E.CalendarId := 5;
  E.Title := 'Meeting-5';
  E.IsAllDay := True;
  E.StartDate := Date + 3.0;
  E.EndDate := E.StartDate;
end;

procedure TUniMiscellaneousCalendarPanel.UniToolButton1Click(Sender: TObject);
begin
  UniCalendarPanel1.Events.Clear;
end;

procedure TUniMiscellaneousCalendarPanel.UniToolButton2Click(Sender: TObject);
var
  FName : string;
begin
  FName := UniServerModule.LocalCachePath+'Events.dat';
  if FileExists(FName) then
  begin
    UniCalendarPanel1.Events.LoadFromFile(FName);
    ShowMessage('Loaded From: '+FName);
  end
  else
    ShowMessage('You must save data first!');
end;

procedure TUniMiscellaneousCalendarPanel.UniToolButton3Click(Sender: TObject);
var
  FName : string;
begin
  FName := UniServerModule.LocalCachePath+'Events.dat';
  UniCalendarPanel1.Events.SaveToFile(FName);
  ShowMessage('Saved to: '+FName);
end;

initialization
  RegisterClass(TUniMiscellaneousCalendarPanel);
end.
