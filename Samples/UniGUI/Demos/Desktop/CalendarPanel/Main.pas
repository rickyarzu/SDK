//AllFeatures: Calendar,Calendar Panel,icon-calendar-panel
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIRegClasses,  uniguiclasses, uniGUIForm, uniToolBar, uniGUIBaseClasses,
  uniCalendarPanel, uniPanel, uniCalendar, uniStatusBar, ImgList, uniTimer, uniImageList,
  uniButton;

type
  TMainForm = class(TUniForm)
    UniCalendarPanel1: TUniCalendarPanel;
    UniToolBar1: TUniToolBar;
    UniToolButton1: TUniToolButton;
    UniToolButton2: TUniToolButton;
    UniPanel1: TUniPanel;
    UniCalendar1: TUniCalendar;
    UniStatusBar1: TUniStatusBar;
    UniToolButton3: TUniToolButton;
    UniToolButton4: TUniToolButton;
    UniToolButton5: TUniToolButton;
    UniTimer1: TUniTimer;
    UniNativeImageList1: TUniNativeImageList;
    procedure UniCalendar1Click(Sender: TObject);
    procedure UniCalendarPanel1DateChange(Sender: TUniCalendarPanel; StartDate,
      ViewStart, ViewEnd: TDateTime);
    procedure UniToolButton1Click(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure UniCalendarPanel1EventClick(Sender: TUniCalendarPanel;
      AEventId: Integer; AEvent: TUniCalendarEvent);
    procedure UniCalendarPanel1DayClick(Sender: TUniCalendarPanel;
      ADate: TDateTime; Allday: Boolean);
    procedure UniCalendarPanel1RangeSelect(Sender: TUniCalendarPanel; AStartDate,
      AEndDate: TDateTime);
    procedure UniToolButton5Click(Sender: TObject);
    procedure UniTimer1Timer(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure UniToolButton3Click(Sender: TObject);
    procedure UniToolButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, EventEditor, ServerModule;

function MainForm: TMainForm;
begin
  Result  :=  TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniCalendar1Click(Sender: TObject);
begin
  UniCalendarPanel1.StartDate := UniCalendar1.Date;
end;

procedure TMainForm.UniCalendarPanel1DateChange(Sender: TUniCalendarPanel;
  StartDate, ViewStart, ViewEnd: TDateTime);
begin
  UniCalendar1.Date := UniCalendarPanel1.StartDate;
end;

procedure TMainForm.UniCalendarPanel1DayClick(Sender: TUniCalendarPanel;
  ADate: TDateTime; Allday: Boolean);
begin
  if not EventEditForm.Visible then
  begin
    EventEditForm.Calenedar := UniCalendarPanel1;
    EventEditForm.ClearEvent;
    EventEditForm.SetDate(ADate, ADate);
    EventEditForm.ShowModal;
  end;
end;

procedure TMainForm.UniCalendarPanel1EventClick(Sender: TUniCalendarPanel;
  AEventId: Integer; AEvent: TUniCalendarEvent);
begin
  if not EventEditForm.Visible then
  begin
    EventEditForm.Calenedar := UniCalendarPanel1;
    EventEditForm.SetEvent(AEvent);
    EventEditForm.ShowModal;
  end;
end;

procedure TMainForm.UniCalendarPanel1RangeSelect(Sender: TUniCalendarPanel;
  AStartDate, AEndDate: TDateTime);
begin
  if not EventEditForm.Visible then
  begin
    EventEditForm.Calenedar := UniCalendarPanel1;
    EventEditForm.ClearEvent;
    EventEditForm.SetDate(AStartDate, AEndDate);
    EventEditForm.ShowModal;
  end;
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
var
  E : TUniCalendarEvent;
begin
  UniCalendar1.Date := Date;
  UniCalendarPanel1.StartDate := Date;

  UniCalendarPanel1.WeekTimeRange.TimeStart := 0.0;

  E := UniCalendarPanel1.Events.Add;
  E.CalendarId := 1;
  E.Title := 'Meeting';
  E.StartDate := Date;
  E.EndDate := Date;
  E.IsAllDay := True;

  E := UniCalendarPanel1.Events.Add;
  E.CalendarId := 2;
  E.Title := 'Meeting-2';
  E.StartDate := Date+1;
  E.EndDate := Date+1;
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
end;

procedure TMainForm.UniFormShow(Sender: TObject);
begin
  UniTimer1Timer(nil);
end;

procedure TMainForm.UniTimer1Timer(Sender: TObject);
begin
  UniStatusBar1.Panels[0].Text := FormatDateTime('dd-mm-yyyy hh:nn', Now);
end;

procedure TMainForm.UniToolButton1Click(Sender: TObject);
begin
  UniCalendarPanel1.Events.Clear;
end;

procedure TMainForm.UniToolButton2Click(Sender: TObject);
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

procedure TMainForm.UniToolButton3Click(Sender: TObject);
var
  FName : string;
begin
  FName := UniServerModule.LocalCachePath+'Events.dat';
  UniCalendarPanel1.Events.SaveToFile(FName);
  ShowMessage('Saved to: '+FName);
end;

procedure TMainForm.UniToolButton5Click(Sender: TObject);
begin
  Close;
end;

initialization
  RegisterMainFormClass(TMainForm);

end.
