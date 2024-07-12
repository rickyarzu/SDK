{ *************************************************************************** }
{ TMS Cloud Pack }
{ for Delphi & C++Builder }
{ }
{ written by TMS Software }
{ copyright © 2012 - 2016 }
{ Email : info@tmssoftware.com }
{ Web : http://www.tmssoftware.com }
{ }
{ The source code is given as is. The author is not responsible }
{ for any possible damage done due to the use of this code. }
{ The component can be freely used in any application. The complete }
{ source code remains property of the author and may not be distributed, }
{ published, given or sold in any form as such. No parts of the source }
{ code can be included in any other component or application without }
{ written authorization of the author. }
{ *************************************************************************** }
unit ufrmTMSAdvCalendarDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CloudBase, StdCtrls, ComCtrls, DateUtils, CloudGCalendar, CloudCustomGCalendar,
  CloudGoogleWin, ExtCtrls, CloudBaseWin, CloudCustomGoogle, TypInfo;

type

  TfrmTMSAdvCalendarDemo = class(TForm)
    AdvGCalendar1: TAdvGCalendar;
    Panel1: TPanel;
    btnConnect: TButton;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    edCalendarItemName: TEdit;
    edLocation: TEdit;
    StartDate: TDateTimePicker;
    EndDate: TDateTimePicker;
    StartTime: TDateTimePicker;
    EndTime: TDateTimePicker;
    cbVisibility: TComboBox;
    cbAllday: TCheckBox;
    ListView1: TListView;
    Panel2: TPanel;
    btnGoogleEventDelete: TButton;
    btnGoogleEventUpdate: TButton;
    btnGoogleEventNew: TButton;
    Image1: TImage;
    btnRemove: TButton;
    Memo1: TMemo;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    lvAtt: TListView;
    Label3: TLabel;
    EditAttName: TEdit;
    Label12: TLabel;
    EditAttEmail: TEdit;
    btInvite: TButton;
    cbRem: TCheckBox;
    lvRem: TListView;
    Label2: TLabel;
    EditRemMinutes: TEdit;
    btAddRem: TButton;
    Label8: TLabel;
    cbRemMethod: TComboBox;
    btDelRem: TButton;
    Label9: TLabel;
    cbColors: TComboBox;
    panelColor: TPanel;
    Label1: TLabel;
    dpCalStartDate: TDateTimePicker;
    dpCalEndDate: TDateTimePicker;
    Label13: TLabel;
    btUpdate: TButton;
    GroupBox1: TGroupBox;
    Label17: TLabel;
    ComboBox1: TComboBox;
    GroupBox4: TGroupBox;
    Label16: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    edCalendarDescription: TEdit;
    edCalendarName: TEdit;
    btAddCalendar: TButton;
    btDeleteCalendar: TButton;
    btUpdateCalendar: TButton;
    edCalendarLocation: TEdit;
    Label19: TLabel;
    edCalendarTimeZone: TEdit;
    Label14: TLabel;
    cbDefaultReminders: TComboBox;
    lbID: TLabel;
    edID: TEdit;
    lbEtag: TLabel;
    edEtag: TEdit;
    lbGrp: TLabel;
    edGrp: TEdit;
    panelGroupColor: TPanel;
    procedure btnConnectClick(Sender: TObject);
    procedure btnGoogleEventNewClick(Sender: TObject);
    procedure btnGoogleEventDeleteClick(Sender: TObject);
    procedure btnGoogleEventUpdateClick(Sender: TObject);
    procedure FillCalendars(); // passed ---------------------
    procedure FillCalendarItems();
    procedure FillCalendarItemDetails();
    procedure FillColors();
    procedure SetColor();
    procedure ToggleControls();
    procedure ToggleReminders();
    procedure ClearControls();
    procedure Init();
    procedure SetCalendarColor();
    procedure SetCalendarItem(Item: TGCalendarItem);
    procedure ComboBox1Change(Sender: TObject);
    procedure AdvGCalendar1ReceivedAccessToken(Sender: TObject);
    procedure btInviteClick(Sender: TObject);
    procedure ListAttendees(Item: TGCalendarItem);
    procedure ListReminders(Item: TGCalendarItem);
    procedure FormCreate(Sender: TObject);
    procedure btUpdateClick(Sender: TObject);
    procedure ListView1Change(Sender: TObject; Item: TListItem; Change: TItemChange);
    procedure cbAlldayClick(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure btAddRemClick(Sender: TObject);
    procedure cbRemClick(Sender: TObject);
    procedure btDelRemClick(Sender: TObject);
    procedure cbColorsChange(Sender: TObject);
    procedure btAddCalendarClick(Sender: TObject);
    procedure btDeleteCalendarClick(Sender: TObject);
    procedure btUpdateCalendarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Connected: boolean;
    Inserting: boolean;
  end;

var
  frmTMSAdvCalendarDemo: TfrmTMSAdvCalendarDemo;

implementation

uses Janua.Application.Framework;

{$R *.dfm}
// PLEASE USE A VALID INCLUDE FILE THAT CONTAINS THE APPLICATION KEY & SECRET
// FOR THE CLOUD STORAGE SERVICES YOU WANT TO USE
// STRUCTURE OF THIS .INC FILE SHOULD BE
//
{$I tmsAPPIDS.INC}

procedure TfrmTMSAdvCalendarDemo.AdvGCalendar1ReceivedAccessToken(Sender: TObject);
begin
  AdvGCalendar1.SaveTokens;
  Init;
end;

procedure TfrmTMSAdvCalendarDemo.btInviteClick(Sender: TObject);
var
  li: TGCalendarItem;
  att: TGAttendee;
begin
  if (ListView1.ItemIndex >= 0) then
  begin
    li := ListView1.Items[ListView1.ItemIndex].Data;
    att := li.Attendees.Add;
    att.Summary := EditAttName.Text;
    att.Email := EditAttEmail.Text;
    ListAttendees(li);
    EditAttEmail.Text := '';
    EditAttName.Text := '';
  end;
end;

procedure TfrmTMSAdvCalendarDemo.btnRemoveClick(Sender: TObject);
begin
  AdvGCalendar1.ClearTokens;
  Connected := false;
  ToggleControls;
end;

procedure TfrmTMSAdvCalendarDemo.btUpdateCalendarClick(Sender: TObject);
var
  gcal: TGCalendar;
begin
  if ComboBox1.ItemIndex >= 0 then
  begin
    gcal := (ComboBox1.Items.Objects[ComboBox1.ItemIndex] as TGCalendar);
    gcal.Summary := edCalendarName.Text;
    gcal.Description := edCalendarDescription.Text;
    gcal.Location := edCalendarLocation.Text;
    gcal.TimeZone := edCalendarTimeZone.Text;
    AdvGCalendar1.UpdateCalendar(gcal);
    FillCalendars;
    FillCalendarItems;
  end;
end;

procedure TfrmTMSAdvCalendarDemo.btUpdateClick(Sender: TObject);
begin
  FillCalendarItems;
end;

procedure TfrmTMSAdvCalendarDemo.btnConnectClick(Sender: TObject);
begin
  AdvGCalendar1.Logging := true;
  AdvGCalendar1.LogLevel := llDetail;
  AdvGCalendar1.App.Key := TJanuaApplication.CloudConf.GoogleAppKey;
  AdvGCalendar1.App.Secret := TJanuaApplication.CloudConf.GoogleAppSecret;

  if not AdvGCalendar1.TestTokens then
    AdvGCalendar1.RefreshAccess;

  if not AdvGCalendar1.TestTokens then
    AdvGCalendar1.DoAuth
  else
    Init;
end;

procedure TfrmTMSAdvCalendarDemo.btnGoogleEventNewClick(Sender: TObject);
var
  li: TGCalendarItem;
begin
  if not(Inserting) then
  begin
    ClearControls;
    edCalendarItemName.SetFocus;
    ListView1.ItemIndex := -1;
    btnGoogleEventNew.Caption := 'Insert';
    btnGoogleEventNew.Hint := 'Insert the new Event';
    Inserting := true;
  end
  else
  begin
    btnGoogleEventNew.Caption := 'New';
    btnGoogleEventNew.Hint := 'Create a new Event';
    li := AdvGCalendar1.Items.Add;
    SetCalendarItem(li);
    li.CalendarID := (ComboBox1.Items.Objects[ComboBox1.ItemIndex] as TGCalendar).ID;
    AdvGCalendar1.Add(li);

    FillCalendarItems;
    Inserting := false;
  end;
end;

procedure TfrmTMSAdvCalendarDemo.btnGoogleEventDeleteClick(Sender: TObject);
var
  buttonSelected: integer;
begin
  if ListView1.ItemIndex >= 0 then
  begin
    buttonSelected := MessageDlg('Are you sure you want to delete the selected Event?', mtConfirmation,
      mbOKCancel, 0);

    if buttonSelected = mrOk then
    begin
      AdvGCalendar1.Delete(ListView1.Items[ListView1.ItemIndex].Data);
      FillCalendarItems;
      ClearControls;
    end;
  end
  else
  begin
    ShowMessage('Please select an Event first.');
  end;
end;

procedure TfrmTMSAdvCalendarDemo.btnGoogleEventUpdateClick(Sender: TObject);
var
  li: TGCalendarItem;
  SelectedID: string;
begin
  if ListView1.ItemIndex >= 0 then
  begin
    li := ListView1.Items[ListView1.ItemIndex].Data;

    SetCalendarItem(li);
    AdvGCalendar1.Update(li);
    SelectedID := li.ID;

    FillCalendarItems;

    ListView1.ItemIndex := AdvGCalendar1.Items.Find(SelectedID).Index;
  end
  else
  begin
    ShowMessage('Please select an Event first.');
  end;
end;

procedure TfrmTMSAdvCalendarDemo.btAddCalendarClick(Sender: TObject);
var
  gcal: TGCalendar;
  grem: TGReminder;
begin
  gcal := AdvGCalendar1.Calendars.Add;
  gcal.Summary := edCalendarName.Text;
  gcal.Description := edCalendarDescription.Text;
  gcal.Location := edCalendarLocation.Text;
  gcal.TimeZone := edCalendarTimeZone.Text;

  grem := gcal.DefaultReminders.Add;
  grem.Method := rmPopup;
  grem.Minutes := 60;

  AdvGCalendar1.AddCalendar(gcal);
  FillCalendars;
  FillCalendarItems;
end;

procedure TfrmTMSAdvCalendarDemo.btAddRemClick(Sender: TObject);
var
  li: TGCalendarItem;
  rem: TGReminder;
begin
  if (ListView1.ItemIndex >= 0) then
  begin
    li := ListView1.Items[ListView1.ItemIndex].Data;
    rem := li.Reminders.Add;

    if cbRemMethod.ItemIndex = 0 then
      rem.Method := rmPopup
    else if cbRemMethod.ItemIndex = 1 then
      rem.Method := rmEmail
    else if cbRemMethod.ItemIndex = 2 then
      rem.Method := rmSMS;

    rem.Minutes := StrToInt(EditRemMinutes.Text);
    ListReminders(li);
    EditRemMinutes.Text := '10';
    cbRemMethod.ItemIndex := 0;
  end;
end;

procedure TfrmTMSAdvCalendarDemo.btDeleteCalendarClick(Sender: TObject);
var
  buttonSelected: integer;
begin
  if ComboBox1.ItemIndex >= 0 then
  begin
    buttonSelected :=
      MessageDlg('Are you sure you want to delete the selected Calendar and all of it''s events?',
      mtConfirmation, mbOKCancel, 0);

    if buttonSelected = mrOk then
    begin
      AdvGCalendar1.DeleteCalendar((ComboBox1.Items.Objects[ComboBox1.ItemIndex] as TGCalendar));
      FillCalendars;
      FillCalendarItems;
      ClearControls;
    end;
  end
  else
  begin
    ShowMessage('Please select an Event first.');
  end;
end;

procedure TfrmTMSAdvCalendarDemo.btDelRemClick(Sender: TObject);
var
  li: TGCalendarItem;
  rem: TGReminder;
begin
  if (ListView1.ItemIndex >= 0) then
  begin
    li := ListView1.Items[ListView1.ItemIndex].Data;
    if (lvRem.ItemIndex >= 0) then
    begin
      rem := lvRem.Items[lvRem.ItemIndex].Data;
      rem.Free;

      ListReminders(li);
    end;
  end;
end;

procedure TfrmTMSAdvCalendarDemo.cbAlldayClick(Sender: TObject);
begin
  StartTime.Enabled := not cbAllday.Checked;
  EndTime.Enabled := not cbAllday.Checked;
end;

procedure TfrmTMSAdvCalendarDemo.cbColorsChange(Sender: TObject);
begin
  SetColor;
end;

procedure TfrmTMSAdvCalendarDemo.cbRemClick(Sender: TObject);
var
  li: TGCalendarItem;
begin
  if ListView1.ItemIndex >= 0 then
  begin
    li := ListView1.Items[ListView1.ItemIndex].Data;
    li.UseDefaultReminders := cbRem.Checked;
  end;
  ToggleReminders;
end;

procedure TfrmTMSAdvCalendarDemo.ClearControls;
begin
  edCalendarItemName.Text := '';
  edCalendarLocation.Text := '';
  Memo1.Lines.Text := '';
  cbVisibility.ItemIndex := 0;
  cbAllday.Checked := false;
  StartDate.Date := Now;
  EndDate.Date := Now;
  StartTime.Time := StrToDateTime(IntToStr(HourOf(IncHour(Time, 1))) + ':00');
  EndTime.Time := IncHour(StartTime.Time, 2);
  lvAtt.Items.Clear;
  EditAttName.Text := '';
  EditAttEmail.Text := '';
end;

procedure TfrmTMSAdvCalendarDemo.ComboBox1Change(Sender: TObject);
begin
  { Codice portato in DataModule Controller }
  FillCalendarItems;
  SetCalendarColor;
end;

procedure TfrmTMSAdvCalendarDemo.ComboBox1Click(Sender: TObject);
begin
  { Codice portato in DataModule Controller }
  FillCalendarItems;
  SetCalendarColor;
end;

procedure TfrmTMSAdvCalendarDemo.FillCalendarItems;
var
  I: integer;
  gcal: TGCalendar;
  li: TListItem;
  rem: string;
begin
  { Codice portato in DataModule Controller }
  Screen.Cursor := crHourGlass;
  if ComboBox1.ItemIndex >= 0 then
  begin
    gcal := (ComboBox1.Items.Objects[ComboBox1.ItemIndex] as TGCalendar);

    edCalendarName.Text := gcal.Summary;
    edCalendarDescription.Text := gcal.Description;
    edCalendarLocation.Text := gcal.Location;
    edCalendarTimeZone.Text := gcal.TimeZone;

    // Default Reminders
    cbDefaultReminders.Items.Clear;
    for I := 0 to gcal.DefaultReminders.Count - 1 do
    begin
      case gcal.DefaultReminders[I].Method of
        rmPopup:
          rem := 'popup';
        rmEmail:
          rem := 'email';
        rmSMS:
          rem := 'sms';
      end;
      cbDefaultReminders.Items.Add(rem + ' ' + IntToStr(gcal.DefaultReminders[I].Minutes) + ' minutes')
    end;
    if cbDefaultReminders.Items.Count > 0 then
      cbDefaultReminders.ItemIndex := 0;

    AdvGCalendar1.GetCalendar(gcal.ID, dpCalStartDate.Date, dpCalEndDate.Date);

    ListView1.Items.Clear;
    for I := 0 to AdvGCalendar1.Items.Count - 1 do
    begin
      li := ListView1.Items.Add;
      li.Caption := FormatDateTime('dd/mm/yyyy hh:nn', AdvGCalendar1.Items[I].StartTime);
      li.SubItems.Add(FormatDateTime('dd/mm/yyyy hh:nn', AdvGCalendar1.Items[I].EndTime));
      li.SubItems.Add(AdvGCalendar1.Items[I].Summary);
      li.SubItems.Add(AdvGCalendar1.Items[I].Description);
      // edID.Text := gcal.ID;    edEtag.Text := gcal.
      li.SubItems.Add(AdvGCalendar1.Items[I].ID);
      li.SubItems.Add(AdvGCalendar1.Items[I].ETag);
      li.SubItems.Add(AdvGCalendar1.Items[I].CalendarID);

      li.Data := AdvGCalendar1.Items[I];
    end;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfrmTMSAdvCalendarDemo.FillCalendars;
var
  I: integer;
  isPrimary: string;
begin
  { Codice portato in DataModule Controller }
  AdvGCalendar1.GetCalendars();

  ComboBox1.Items.Clear;

  for I := 0 to AdvGCalendar1.Calendars.Count - 1 do
  begin
    if AdvGCalendar1.Calendars[I].Primary then
      isPrimary := ' (Primary)'
    else
      isPrimary := '';
    ComboBox1.AddItem(AdvGCalendar1.Calendars[I].Summary + isPrimary, AdvGCalendar1.Calendars[I]);
  end;
  ComboBox1.ItemIndex := 0;
end;

procedure TfrmTMSAdvCalendarDemo.FillColors;
var
  cl: TGItemColor;
begin
  { Codice portato in DataModule Controller }
  AdvGCalendar1.GetColors;
  cbColors.Items.Clear;
  for cl := Low(TGItemColor) to High(TGItemColor) do
    cbColors.Items.Add(StringReplace(GetEnumName(TypeInfo(TGItemColor), Ord(cl)), 'ic', '', []));
  if cbColors.Items.Count > 0 then
    cbColors.ItemIndex := 0;
end;

procedure TfrmTMSAdvCalendarDemo.FormCreate(Sender: TObject);
begin
  AdvGCalendar1.PersistTokens.Location := plIniFile;
  AdvGCalendar1.PersistTokens.Key := 'C:\Phoenix\tokens.ini';
  AdvGCalendar1.PersistTokens.Section := 'google_janua';
  AdvGCalendar1.LoadTokens;

  dpCalStartDate.Date := IncMonth(Now, -1);
  dpCalEndDate.Date := IncMonth(Now, 2);
  ClearControls;

  Inserting := false;
  Connected := false;
  ToggleControls;
  ToggleReminders;
end;

procedure TfrmTMSAdvCalendarDemo.Init;
begin
  Connected := true;
  FillCalendars;
  FillCalendarItems;
  FillColors;
  ToggleControls;
  SetCalendarColor;
end;

procedure TfrmTMSAdvCalendarDemo.FillCalendarItemDetails();
var
  li: TGCalendarItem;
  I: integer;
begin
  Screen.Cursor := crHourGlass;
  if ListView1.ItemIndex >= 0 then
  begin
    li := ListView1.Items[ListView1.ItemIndex].Data;

    edCalendarItemName.Text := li.Summary;
    Memo1.Lines.Text := li.Description;
    edLocation.Text := li.Location;
    StartDate.DateTime := li.StartTime;
    EndDate.DateTime := li.EndTime;
    StartTime.DateTime := li.StartTime;
    EndTime.DateTime := li.EndTime;
    EditAttEmail.Text := '';
    EditAttName.Text := '';
    cbColors.ItemIndex := 0;
    edID.Text := li.ID;
    edEtag.Text := li.ETag;
    edGrp.Text := li.CalendarID;

    for I := 0 to cbColors.Items.Count - 1 do
    begin
      if I = Ord(li.Color) then
        cbColors.ItemIndex := I
    end;
    SetColor;

    cbVisibility.ItemIndex := Ord(li.Visibility);
    cbAllday.Checked := li.IsAllDay;

    ListAttendees(li);
    ListReminders(li);
  end;
  Screen.Cursor := crDefault;
end;

procedure TfrmTMSAdvCalendarDemo.ListView1Change(Sender: TObject; Item: TListItem; Change: TItemChange);
begin
  FillCalendarItemDetails;
end;

procedure TfrmTMSAdvCalendarDemo.ListAttendees(Item: TGCalendarItem);
var
  att: string;
  I: integer;
  li: TListItem;
begin
  att := '';
  lvAtt.Items.Clear;
  for I := 0 to Item.Attendees.Count - 1 do
  begin
    case Item.Attendees[I].Status of
      rsNeedsAction:
        att := 'needs action';
      rsDeclined:
        att := 'declined';
      rsTentative:
        att := 'tentative';
      rsAccepted:
        att := 'accpeted';
    end;

    li := lvAtt.Items.Add;
    li.Caption := att;
    li.SubItems.Add(Item.Attendees[I].Summary);
    li.SubItems.Add(Item.Attendees[I].Email);
  end;
end;

procedure TfrmTMSAdvCalendarDemo.ListReminders(Item: TGCalendarItem);
var
  rem: string;
  I: integer;
  li: TListItem;
begin
  rem := '';
  lvRem.Items.Clear;

  cbRem.Checked := Item.UseDefaultReminders;

  for I := 0 to Item.Reminders.Count - 1 do
  begin
    case Item.Reminders[I].Method of
      rmPopup:
        rem := 'popup';
      rmEmail:
        rem := 'email';
      rmSMS:
        rem := 'sms';
    end;

    li := lvRem.Items.Add;
    li.Caption := rem;
    li.SubItems.Add(IntToStr(Item.Reminders[I].Minutes));
    li.Data := Item.Reminders[I];
  end;

  ToggleReminders;
end;

procedure TfrmTMSAdvCalendarDemo.SetCalendarColor;
var
  bg: TColor;
  fg: TColor;
begin
  if ComboBox1.ItemIndex >= 0 then
  begin
    var
    gcal := (ComboBox1.Items.Objects[ComboBox1.ItemIndex] as TGCalendar);

    for var I := 0 to AdvGCalendar1.CalendarColors.Count - 1 do
    begin
      if Ord(gcal.Color) = AdvGCalendar1.CalendarColors[I].ID then
      begin
        bg := AdvGCalendar1.CalendarColors[I].BackgroundColor;
        fg := AdvGCalendar1.CalendarColors[I].ForegroundColor;
      end;
    end;

    if gcal.BackgroundColor <> clNone then
      bg := gcal.BackgroundColor;
    if gcal.ForegroundColor <> clNone then
      fg := gcal.ForegroundColor;

    panelGroupColor.Color := bg;
    panelGroupColor.Font.Color := fg;
  end
end;

procedure TfrmTMSAdvCalendarDemo.SetCalendarItem(Item: TGCalendarItem);
begin
  Item.Summary := edCalendarItemName.Text;
  Item.Description := Memo1.Lines.Text;
  Item.Location := edCalendarLocation.Text;
  if cbColors.ItemIndex >= 0 then
    Item.Color := TGItemColor(cbColors.ItemIndex)
  else
    Item.Color := icDefault;

  if cbAllday.Checked then
  begin
    Item.StartTime := EncodeDateTime(YearOf(StartDate.Date), MonthOf(StartDate.Date), DayOf(StartDate.Date),
      0, 0, 0, 0);
    Item.EndTime := EncodeDateTime(YearOf(EndDate.Date), MonthOf(EndDate.Date), DayOf(EndDate.Date),
      0, 0, 0, 0);
    Item.IsAllDay := true;
  end
  else
  begin
    Item.StartTime := EncodeDateTime(YearOf(StartDate.Date), MonthOf(StartDate.Date), DayOf(StartDate.Date),
      HourOf(StartTime.Time), MinuteOf(StartTime.Time), SecondOf(StartTime.Time), 0);
    Item.EndTime := EncodeDateTime(YearOf(EndDate.Date), MonthOf(EndDate.Date), DayOf(EndDate.Date),
      HourOf(EndTime.Time), MinuteOf(EndTime.Time), SecondOf(EndTime.Time), 0);
    Item.IsAllDay := false;
  end;

  Item.Visibility := TVisibility(cbVisibility.ItemIndex);
end;

procedure TfrmTMSAdvCalendarDemo.SetColor;
var
  I: integer;
  gcal: TGCalendar;
  bg: TColor;
  fg: TColor;
begin
  bg := clBtnFace;
  fg := clWindowText;

  if cbColors.ItemIndex > 0 then
  begin
    bg := AdvGCalendar1.ItemColors[cbColors.ItemIndex - 1].BackgroundColor;
    fg := AdvGCalendar1.ItemColors[cbColors.ItemIndex - 1].ForegroundColor;
  end
  else
  begin
    if ComboBox1.ItemIndex >= 0 then
    begin
      gcal := (ComboBox1.Items.Objects[ComboBox1.ItemIndex] as TGCalendar);

      for I := 0 to AdvGCalendar1.CalendarColors.Count - 1 do
      begin
        if Ord(gcal.Color) = AdvGCalendar1.CalendarColors[I].ID then
        begin
          bg := AdvGCalendar1.CalendarColors[I].BackgroundColor;
          fg := AdvGCalendar1.CalendarColors[I].ForegroundColor;
        end;
      end;

      if gcal.BackgroundColor <> clNone then
        bg := gcal.BackgroundColor;
      if gcal.ForegroundColor <> clNone then
        fg := gcal.ForegroundColor;
    end
  end;

  panelColor.Color := bg;
  panelColor.Font.Color := fg;
end;

procedure TfrmTMSAdvCalendarDemo.ToggleControls;
begin
  { Passato in frame e in Data Module }
  GroupBox1.Enabled := Connected;
  GroupBox2.Enabled := Connected;
  GroupBox3.Enabled := Connected;
  PageControl1.Enabled := Connected;
  Panel2.Enabled := Connected;
  ComboBox1.Enabled := Connected;
  dpCalStartDate.Enabled := Connected;
  dpCalEndDate.Enabled := Connected;
  btUpdate.Enabled := Connected;
  ListView1.Enabled := Connected;
  edCalendarItemName.Enabled := Connected;
  edCalendarLocation.Enabled := Connected;
  Memo1.Enabled := Connected;
  cbVisibility.Enabled := Connected;
  cbAllday.Enabled := Connected;
  StartDate.Enabled := Connected;
  EndDate.Enabled := Connected;
  StartTime.Enabled := Connected;
  EndTime.Enabled := Connected;
  lvAtt.Enabled := Connected;
  EditAttName.Enabled := Connected;
  EditAttEmail.Enabled := Connected;
  btInvite.Enabled := Connected;
  btnGoogleEventNew.Enabled := Connected;
  btnGoogleEventUpdate.Enabled := Connected;
  btnGoogleEventDelete.Enabled := Connected;
  btnRemove.Enabled := Connected;
  btnConnect.Enabled := not Connected;
  edCalendarDescription.Enabled := Connected;
  edCalendarName.Enabled := Connected;
  edCalendarLocation.Enabled := Connected;
  edCalendarTimeZone.Enabled := Connected;
  btAddCalendar.Enabled := Connected;
  btDeleteCalendar.Enabled := Connected;
  btUpdateCalendar.Enabled := Connected;
end;

procedure TfrmTMSAdvCalendarDemo.ToggleReminders;
begin
  { Passato in frame e in Data Module }
  lvRem.Enabled := not cbRem.Checked;
  btAddRem.Enabled := not cbRem.Checked;
  btDelRem.Enabled := not cbRem.Checked;
  EditRemMinutes.Enabled := not cbRem.Checked;
  cbRemMethod.Enabled := not cbRem.Checked;
end;

end.
