unit UiCloudCalendarDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, CloudWEBDav, ComCtrls, Buttons;

type
  TForm4 = class(TForm)
    iCloudCalendar1: TiCloudCalendar;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edUser: TEdit;
    edPassword: TEdit;
    Button1: TButton;
    ListView1: TListView;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    edSummary: TEdit;
    edLocation: TEdit;
    edDescription: TMemo;
    edStartDate: TDateTimePicker;
    Label5: TLabel;
    Label6: TLabel;
    edStartTime: TDateTimePicker;
    edEndDate: TDateTimePicker;
    edEndTime: TDateTimePicker;
    Label8: TLabel;
    cmbCalendars: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ListView1SelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses
  INIFiles;

const
  INIFILENAME = '.\icloudcalendar.ini';

procedure TForm4.Button1Click(Sender: TObject);
var
  i: integer;
  cdi: TCalDavItem;
  li: TListItem;
  ss: string;
  dt: TDateTime;
  inifile: TINIFile;
begin
  button1.Enabled := false;

  if iCloudCalendar1.Active then
  begin
    ListView1.Items.Clear;
    iCloudCalendar1.Close;
  end;

  if (edUser.Text = '') and (edPassword.Text = '') then
  begin
    MessageDlg('Please enter your account username and password',mtWarning, [mbOK],0);
    Exit;
  end;

  Screen.Cursor := crHourGlass;

  try
    iCloudCalendar1.Username := edUser.Text;
    iCloudCalendar1.Password := edPassword.Text;

    iCloudCalendar1.Open;

    inifile := TINIFile.Create(INIFILENAME);
    inifile.WriteString('LOGIN','USERNAME',edUser.Text);
    inifile.WriteString('LOGIN','PASSWORD',edPassword.Text);
    inifile.Free;
    SpeedButton1.Enabled := true;
    SpeedButton2.Enabled := true;
    SpeedButton3.Enabled := true;
  except
    Screen.Cursor := crDefault;
    Exit;
  end;

  cmbCalendars.Items.Clear;

  for i := 0 to iCloudCalendar1.Calendars.Count - 1 do
  begin
    if iCloudCalendar1.Calendars[I].IsSystemFolder then
       Continue;
    cmbCalendars.Items.AddObject(iCloudCalendar1.Calendars[i].DisplayText, iCloudCalendar1.Calendars[i]);
  end;

  cmbCalendars.ItemIndex := 0;

  for i := 0 to iCloudCalendar1.Items.Count - 1 do
  begin
    cdi := iCloudCalendar1.Items[i];

    if cdi.vCalendar.vEvents.Count > 0 then
    begin
      li := ListView1.Items.Add;
      li.Caption := cdi.vCalendar.vEvents[0].Summary;

      dt := cdi.vCalendar.vEvents[0].DTStart;

      ss := DateToStr(dt)+'  ' + TimeToStr(dt);

      li.SubItems.Add(ss);

      dt := cdi.vCalendar.vEvents[0].DTEnd;

      ss := DateToStr(dt)+'  ' + TimeToStr(dt);

      li.SubItems.Add(ss);

      li.SubItems.Add(cdi.vCalendar.vEvents[0].Location);
      li.SubItems.Add(cdi.vCalendar.vEvents[0].Description.Text);

      li.Data := cdi;
    end;
  end;

  ListView1.Columns[0].Width := -1;
  ListView1.Columns[1].Width := -1;
  ListView1.Columns[2].Width := -1;
  ListView1.Columns[3].Width := -1;
  ListView1.Columns[4].Width := -1;

  Screen.Cursor := crDefault;
end;

procedure TForm4.FormCreate(Sender: TObject);
var
  inifile: TINIFile;
begin
  ReportMemoryLeaksOnShutdown := true;

  Caption := 'TiCloudCalendar version: '+iCloudCalendar1.Version;

  inifile := TINIFile.Create(INIFILENAME);

  edUser.Text := inifile.ReadString('LOGIN','USERNAME','');
  edPassword.Text := inifile.ReadString('LOGIN','PASSWORD','');

  inifile.Free;

end;

procedure TForm4.ListView1SelectItem(Sender: TObject; Item: TListItem;
  Selected: Boolean);
var
  cdi: TCalDavItem;
begin
  if not Assigned(ListView1.Selected)  then
    Exit;

  cdi := TCalDavItem(ListView1.Selected.Data);

  edSummary.Text := cdi.vCalendar.vEvents[0].Summary;
  edLocation.Text := cdi.vCalendar.vEvents[0].Location;

  edStartDate.Date := cdi.vCalendar.vEvents[0].DTStart;
  edStartTime.Time := cdi.vCalendar.vEvents[0].DTStart;

  edEndDate.Date := cdi.vCalendar.vEvents[0].DTEnd;
  edEndTime.Time := cdi.vCalendar.vEvents[0].DTEnd;

  edDescription.Lines.Assign(cdi.vCalendar.vEvents[0].Description);

  cmbCalendars.ItemIndex := cmbCalendars.Items.IndexOf(cdi.Calendar.DisplayText);
end;

procedure TForm4.SpeedButton1Click(Sender: TObject);
var
  mr: integer;
  cdi: TCalDavItem;
begin
  if not Assigned(ListView1.Selected)  then
    Exit;

  mr := MessageDlg('Are you sure you want to delete this event?',mtConfirmation,[mbYes,mbNo],0);

  if (mr = mrYes) then
  begin
    cdi := TCalDavItem(ListView1.Selected.Data);
    cdi.Delete;
    ListView1.Selected.Free;
  end;
end;

procedure TForm4.SpeedButton2Click(Sender: TObject);
var
  cdi: TCalDavItem;
  li: TListItem;
  ss: string;
begin
  // set the calendar for the event
  ss := cmbCalendars.Items[cmbCalendars.ItemIndex];
  cdi := iCloudCalendar1.Items.Insert(ss);

  cdi.vCalendar.vEvents.Add;
  cdi.vCalendar.vEvents[0].Summary := edSummary.Text;
  cdi.vCalendar.vEvents[0].Location := edLocation.Text;
  cdi.vCalendar.vEvents[0].Description.Assign(edDescription.Lines);
  cdi.vCalendar.vEvents[0].DTStart := Int(edStartDate.Date) + Frac(edStartTime.Time);
  cdi.vCalendar.vEvents[0].DTEnd := Int(edEndDate.Date) + Frac(edEndTime.Time);
  cdi.Post;

  li := ListView1.Items.Add;
  li.Caption := edSummary.Text;

  ss := DateToStr(edStartDate.Date)+'  ' + TimeToStr(edStartTime.Time);

  li.SubItems.Add(ss);

  ss := DateToStr(edEndDate.Date)+'  ' + TimeToStr(edEndTime.Time);

  li.SubItems.Add(ss);

  li.SubItems.Add(edLocation.Text);
  li.SubItems.Add(edDescription.Lines.Text);
  li.Data := cdi;
end;

procedure TForm4.SpeedButton3Click(Sender: TObject);
var
  cdi: TCalDavItem;
  li: TListItem;
  ss: string;
begin
  cdi := ListView1.Selected.Data;
  cdi.vCalendar.vEvents[0].Summary := edSummary.Text;
  cdi.vCalendar.vEvents[0].Location := edLocation.Text;
  cdi.vCalendar.vEvents[0].Description.Assign(edDescription.Lines);
  cdi.vCalendar.vEvents[0].DTStart := Int(edStartDate.Date) + Frac(edStartTime.Time);
  cdi.vCalendar.vEvents[0].DTEnd := Int(edEndDate.Date) + Frac(edEndTime.Time);

  cdi.Update;

  li := ListView1.Selected;

  li.Caption := edSummary.Text;

  ss := DateToStr(edStartDate.Date)+'  ' + TimeToStr(edStartTime.Time);

  li.SubItems[0] := ss;

  ss := DateToStr(edEndDate.Date)+'  ' + TimeToStr(edEndTime.Time);

  li.SubItems[1] := ss;

  li.SubItems[2] := edLocation.Text;
  li.SubItems[3] := edDescription.Lines.Text;

end;

end.
