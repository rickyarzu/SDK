{***************************************************************************}
{ TMS Cloud Pack                                                            }
{ for Delphi & C++Builder                                                   }
{                                                                           }
{ written by TMS Software                                                   }
{            copyright © 2016 - 2018                                        }
{            Email : info@tmssoftware.com                                   }
{            Web : http://www.tmssoftware.com                               }
{                                                                           }
{ The source code is given as is. The author is not responsible             }
{ for any possible damage done due to the use of this code.                 }
{ The component can be freely used in any application. The complete         }
{ source code remains property of the author and may not be distributed,    }
{ published, given or sold in any form as such. No parts of the source      }
{ code can be included in any other component or application without        }
{ written authorization of the author.                                      }
{***************************************************************************}
unit UOutlookCalendar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CloudBase, StdCtrls, ComCtrls, DateUtils, ExtCtrls,
  CloudCustomOutlookCalendar, CloudBaseWin, CloudCustomOutlook, CloudOutlookWin,
  CloudOutlookCalendar;

type

  TForm1 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    GroupBox1: TGroupBox;
    ComboBox1: TComboBox;
    dpCalStartDate: TDateTimePicker;
    dpCalEndDate: TDateTimePicker;
    btUpdate: TButton;
    Label1: TLabel;
    Label13: TLabel;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    StartDate: TDateTimePicker;
    EndDate: TDateTimePicker;
    StartTime: TDateTimePicker;
    EndTime: TDateTimePicker;
    cbVisibility: TComboBox;
    cbAllday: TCheckBox;
    ListView1: TListView;
    Panel2: TPanel;
    Button6: TButton;
    Button7: TButton;
    Button5: TButton;
    btRemove: TButton;
    AdvOutlookCalendar1: TAdvOutlookCalendar;
    cbRec: TCheckBox;
    edAddCall: TEdit;
    btAddCal: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure FillCalendars();
    procedure FillCalendarItems();
    procedure FillCalendarItemDetails();
    procedure ToggleControls();
    procedure ToggleEditControls(Enabled: boolean);
    procedure ClearControls();
    procedure Init();
    function ValidateForm(): boolean;
    procedure SetCalendarItem(Item: TOutlookCalendarItem);
    procedure ComboBox1Change(Sender: TObject);
    procedure AdvOutlookCalendar1ReceivedAccessToken(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btUpdateClick(Sender: TObject);
    procedure ListView1Change(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure cbAlldayClick(Sender: TObject);
    procedure btRemoveClick(Sender: TObject);
    procedure btAddCalClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Connected: boolean;
    Inserting: boolean;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

// PLEASE USE A VALID INCLUDE FILE THAT CONTAINS THE APPLICATION KEY & SECRET
// FOR THE CLOUD STORAGE SERVICES YOU WANT TO USE
// STRUCTURE OF THIS .INC FILE SHOULD BE
//
// const
//  OutlookAppkey = 'xxxxxxxxx';
//  OutlookAppSecret = 'yyyyyyyy';

{$I APPIDS.INC}

procedure TForm1.AdvOutlookCalendar1ReceivedAccessToken(Sender: TObject);
begin
  AdvOutlookCalendar1.SaveTokens;
  Init;
end;

procedure TForm1.btAddCalClick(Sender: TObject);
begin
  if AdvOutlookCalendar1.AddCalendar(edAddCall.Text) then
  begin
    FillCalendars;
    ComboBox1.ItemIndex := ComboBox1.Items.Count - 1;
  end
  else
  begin
    ShowMessage('Error: please try again.');
  end;
end;

procedure TForm1.btRemoveClick(Sender: TObject);
begin
  AdvOutlookCalendar1.Logout;
  AdvOutlookCalendar1.ClearTokens;
  Connected := false;
  ToggleControls;
end;

procedure TForm1.btUpdateClick(Sender: TObject);
begin
  FillCalendarItems;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  AdvOutlookCalendar1.App.Key := OutlookAppKey;
  AdvOutlookCalendar1.App.Secret := OutlookAppSecret;
  AdvOutlookCalendar1.Logging := true;

  AdvOutlookCalendar1.LoadTokens;

  if not AdvOutlookCalendar1.TestTokens then
    AdvOutlookCalendar1.DoAuth
  else
    Init;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  OutlookCalendar: TOutlookCalendar;
begin
  if ComboBox1.ItemIndex >= 0 then
  begin
    OutlookCalendar := (ComboBox1.Items.Objects[ComboBox1.ItemIndex] as TOutlookCalendar);
    AdvOutlookCalendar1.UpdateCalendar(OutlookCalendar, edAddCall.Text);
    FillCalendars;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  OutlookCalendar: TOutlookCalendar;
begin
  if ComboBox1.ItemIndex >= 0 then
  begin
    OutlookCalendar := (ComboBox1.Items.Objects[ComboBox1.ItemIndex] as TOutlookCalendar);
    AdvOutlookCalendar1.DeleteCalendar(OutlookCalendar);
    FillCalendars;
  end;
end;

procedure TForm1.Button5Click(Sender: TObject);
var
  li: TOutlookCalendarItem;
begin
  if not (Inserting) then
  begin
    ClearControls;
    Edit3.SetFocus;
    ListView1.ItemIndex := -1;
    Button5.Caption := 'Insert';
    Button5.Hint := 'Insert the new Event';
    Inserting := true;
  end
  else
  begin
    if not (ValidateForm) then
      Exit;

    Button5.Caption := 'New';
    Button5.Hint := 'Create a new Event';
    li := AdvOutlookCalendar1.Items.Add;
    SetCalendarItem(li);
    li.CalendarID := (ComboBox1.Items.Objects[ComboBox1.ItemIndex] as TOutlookCalendar).ID;
    AdvOutlookCalendar1.Add(li);

    FillCalendarItems;
    Inserting := false;
  end;
end;

procedure TForm1.Button6Click(Sender: TObject);
var
  buttonSelected: integer;
begin
  if ListView1.ItemIndex >= 0 then
  begin
    buttonSelected := MessageDlg('Are you sure you want to delete the selected Event?', mtConfirmation, mbOKCancel, 0);

    if buttonSelected = mrOk then
    begin
      AdvOutlookCalendar1.Delete(ListView1.Items[ListView1.ItemIndex].Data);
      FillCalendarItems;
      ClearControls;
    end;
  end
  else
  begin
    ShowMessage('Please select an Event first.');
  end;
end;

procedure TForm1.Button7Click(Sender: TObject);
var
  li: TOutlookCalendarItem;
  SelectedID: string;
begin
  if ListView1.ItemIndex >= 0 then
  begin
    if not (ValidateForm) then
      exit;

    li := ListView1.Items[ListView1.ItemIndex].Data;

    SetCalendarItem(li);
    AdvOutlookCalendar1.Update(li);
    SelectedID := li.ID;

    FillCalendarItems;

    ListView1.ItemIndex := AdvOutlookCalendar1.Items.Find(SelectedID).Index;
  end
  else
  begin
    ShowMessage('Please select an Event first.');
  end;
end;

procedure TForm1.cbAlldayClick(Sender: TObject);
begin
  StartTime.Enabled := not cbAllday.Checked;
  EndTime.Enabled := not cbAllday.Checked;
end;

procedure TForm1.ClearControls;
begin
  Edit3.Text := '';
  Edit4.Text := '';
  Edit5.Text := '';
  cbVisibility.ItemIndex := 0;
  cbAllday.Checked := false;
  StartDate.Date := Now;
  EndDate.Date := Now;
  StartTime.Time := StrToDateTime(IntToStr(HourOf(IncHour(Time, 1))) + ':00');
  EndTime.Time := IncHour(StartTime.Time, 2);
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  ClearControls;
  FillCalendarItems;
end;

procedure TForm1.FillCalendarItems;
var
  I: Integer;
  OutlookCalendar: TOutlookCalendar;
  li: TListItem;
begin
  Screen.Cursor := crHourGlass;
  if ComboBox1.ItemIndex >= 0 then
  begin
    OutlookCalendar := (ComboBox1.Items.Objects[ComboBox1.ItemIndex] as TOutlookCalendar);

    ToggleEditControls(true);

  AdvOutlookCalendar1.GetCalendar(OutlookCalendar.ID, dpCalStartDate.Date, dpCalEndDate.Date);

    ListView1.Items.Clear;
    for I := 0 to AdvOutlookCalendar1.Items.Count - 1 do
    begin
      li := ListView1.Items.Add;
      li.Caption := FormatDateTime('dd/mm/yyyy hh:nn', AdvOutlookCalendar1.Items[I].StartTime);
      li.SubItems.Add(FormatDateTime('dd/mm/yyyy hh:nn', AdvOutlookCalendar1.Items[I].EndTime));
      li.SubItems.Add(AdvOutlookCalendar1.Items[I].Summary);
      li.SubItems.Add(AdvOutlookCalendar1.Items[I].Description);
      li.Data := AdvOutlookCalendar1.Items[I];
    end;
  end;
  Screen.Cursor := crDefault;
end;

procedure TForm1.FillCalendars;
var
  I: Integer;
begin
  AdvOutlookCalendar1.GetCalendars();

  ComboBox1.Items.Clear;

  for I := 0 to AdvOutlookCalendar1.Calendars.Count - 1 do
  begin
    ComboBox1.AddItem(AdvOutlookCalendar1.Calendars[I].Summary, AdvOutlookCalendar1.Calendars[I]);
  end;
  ComboBox1.ItemIndex := 0;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

  AdvOutlookCalendar1.PersistTokens.Location := plIniFile;
  AdvOutlookCalendar1.PersistTokens.Key := '.\Outlook.ini';
  AdvOutlookCalendar1.PersistTokens.Section := 'tokens';
  AdvOutlookCalendar1.LoadTokens;

  dpCalStartDate.Date := IncMonth(Now, -1);
  dpCalEndDate.Date := IncMonth(Now, 2);
  ClearControls;

  Inserting := false;
  Connected := false;
  ToggleControls;
end;


procedure TForm1.Init;
begin
  Connected := true;
  ToggleControls;
  FillCalendars;
  FillCalendarItems;
end;

procedure TForm1.FillCalendarItemDetails();
var
  li: TOutlookCalendarItem;
begin
  Screen.Cursor := crHourGlass;
  if ListView1.ItemIndex >= 0 then
  begin
    li := ListView1.Items[ListView1.ItemIndex].Data;

    Edit3.Text := li.Summary;
    Edit4.Text := li.Description;
    Edit5.Text := li.Location;
    StartDate.DateTime := li.StartTime;
    EndDate.DateTime := li.EndTime;
    StartTime.DateTime := li.StartTime;
    EndTime.DateTime := li.EndTime;

    cbVisibility.ItemIndex := Ord(li.Sensitivity);
    cbAllday.Checked := li.IsAllDay;
    cbRec.Checked := li.IsRecurrent;
  end;
  Screen.Cursor := crDefault;
end;

procedure TForm1.ListView1Change(Sender: TObject; Item: TListItem;
  Change: TItemChange);
begin
  FillCalendarItemDetails;
end;

procedure TForm1.SetCalendarItem(Item: TOutlookCalendarItem);
begin
    Item.Summary := Edit3.Text;
    Item.Description := Edit4.Text;
    Item.Location := Edit5.Text;

    if cbAllday.Checked then
    begin
      Item.StartTime := EncodeDateTime(YearOf(StartDate.Date), MonthOf(StartDate.Date), DayOf(StartDate.Date), 0, 0, 0, 0);
      Item.EndTime := EncodeDateTime(YearOf(EndDate.Date), MonthOf(EndDate.Date), DayOf(EndDate.Date), 0, 0, 0, 0);
      Item.IsAllDay := true;
    end
    else
    begin
      Item.StartTime := EncodeDateTime(YearOf(StartDate.Date), MonthOf(StartDate.Date), DayOf(StartDate.Date), HourOf(StartTime.Time), MinuteOf(StartTime.Time), SecondOf(StartTime.Time),0);
      Item.EndTime := EncodeDateTime(YearOf(EndDate.Date), MonthOf(EndDate.Date), DayOf(EndDate.Date), HourOf(EndTime.Time), MinuteOf(EndTime.Time), SecondOf(EndTime.Time),0);
      Item.IsAllDay := false;
    end;

    Item.Sensitivity := TSensitivity(cbVisibility.ItemIndex);
end;

procedure TForm1.ToggleControls;
begin
  GroupBox1.Enabled := Connected;
  GroupBox2.Enabled := Connected;
  GroupBox3.Enabled := Connected;
  Panel2.Enabled := Connected;
  ComboBox1.Enabled := Connected;
  dpCalStartDate.Enabled := Connected;
  dpCalEndDate.Enabled := Connected;
  btUpdate.Enabled := Connected;
  ListView1.Enabled := Connected;
  Edit3.Enabled := Connected;
  Edit4.Enabled := Connected;
  Edit5.Enabled := Connected;
  cbVisibility.Enabled := Connected;
  cbAllday.Enabled := Connected;
  StartDate.Enabled := Connected;
  EndDate.Enabled := Connected;
  StartTime.Enabled := Connected;
  EndTime.Enabled := Connected;
  Button5.Enabled := Connected;
  Button6.Enabled := Connected;
  Button7.Enabled := Connected;
  btRemove.Enabled := Connected;
  Button1.Enabled := not Connected;
end;

procedure TForm1.ToggleEditControls(Enabled: boolean);
begin
  Edit3.Enabled := Enabled;
  Edit4.Enabled := Enabled;
  Edit5.Enabled := Enabled;
  cbVisibility.Enabled := Enabled;
  cbAllday.Enabled := Enabled;
  StartDate.Enabled := Enabled;
  EndDate.Enabled := Enabled;
  StartTime.Enabled := Enabled;
  EndTime.Enabled := Enabled;
  Button5.Enabled := Enabled;
  Button6.Enabled := Enabled;
  Button7.Enabled := Enabled;
end;

function TForm1.ValidateForm: boolean;
begin
  Result := true;
  if Edit3.Text = '' then
  begin
    ShowMessage('Name field cannot be empty');
    Edit3.SetFocus;
    Result := false;
  end
  else if Edit4.Text = '' then
  begin
    ShowMessage('Description field cannot be empty');
    Edit4.SetFocus;
    Result := false;
  end;
end;

end.
