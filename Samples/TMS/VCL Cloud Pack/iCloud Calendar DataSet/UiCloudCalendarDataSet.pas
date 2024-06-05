unit UiCloudCalendarDataSet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, DBClient, Grids, DBGrids, CloudWebDav,
  DBCtrls, CloudvCal, Mask, ComCtrls, Spin;

type
  TForm1 = class(TForm)
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edUser: TEdit;
    edPassword: TEdit;
    Button1: TButton;
    iCloudCalendar1: TiCloudCalendar;
    DBGrid1: TDBGrid;
    AdvWebDavStorage1: TAdvWebDavStorage;
    AdvWebDavSync1: TAdvWebDavSync;
    AdvWebDavDataSet1: TAdvWebDavDataSet;
    DataSource1: TDataSource;
    Panel2: TPanel;
    Button3: TButton;
    DBNavigator1: TDBNavigator;
    edSummary: TDBEdit;
    Label3: TLabel;
    edStartDate: TDateTimePicker;
    Label4: TLabel;
    edStartTime: TDateTimePicker;
    Label5: TLabel;
    edEndDate: TDateTimePicker;
    edEndTime: TDateTimePicker;
    Label6: TLabel;
    edPriority: TSpinEdit;
    Label7: TLabel;
    edLocation: TDBEdit;
    DBMemo1: TDBMemo;
    Label8: TLabel;
    Label9: TLabel;
    edURL: TDBEdit;
    AdvWebDavDataSet1DisplayText: TWideStringField;
    AdvWebDavDataSet1Etag: TWideStringField;
    AdvWebDavDataSet1ContentType: TWideStringField;
    AdvWebDavDataSet1Data: TWideMemoField;
    AdvWebDavDataSet1HRef: TWideMemoField;
    AdvWebDavDataSet1ModifiedDateTime: TDateTimeField;
    AdvWebDavDataSet1CreationDateTime: TDateTimeField;
    AdvWebDavDataSet1ItemState: TWideStringField;
    AdvWebDavDataSet1StoragePath: TWideStringField;
    AdvWebDavDataSet1Photo: TBlobField;
    AdvWebDavDataSet1VCard_FirstName: TWideStringField;
    AdvWebDavDataSet1VCard_LastName: TWideStringField;
    AdvWebDavDataSet1VCard_FullName: TWideStringField;
    AdvWebDavDataSet1VCard_Address: TWideMemoField;
    AdvWebDavDataSet1VCard_Phone: TWideMemoField;
    AdvWebDavDataSet1VCard_Nickname: TWideStringField;
    AdvWebDavDataSet1VCard_Nameprefix: TWideStringField;
    AdvWebDavDataSet1VCard_Namesuffix: TWideStringField;
    AdvWebDavDataSet1VCard_Company: TWideStringField;
    AdvWebDavDataSet1VCard_JobTitle: TWideStringField;
    AdvWebDavDataSet1VCard_Note: TWideMemoField;
    AdvWebDavDataSet1VCard_Source: TWideStringField;
    AdvWebDavDataSet1VCard_Email: TWideMemoField;
    AdvWebDavDataSet1VCard_WebSiteUrl: TWideStringField;
    AdvWebDavDataSet1VCard_Categories: TWideMemoField;
    AdvWebDavDataSet1VCard_Profession: TWideStringField;
    AdvWebDavDataSet1VCard_Birthday: TDateTimeField;
    AdvWebDavDataSet1VCard_PhotoUrl: TWideStringField;
    AdvWebDavDataSet1VCalendar_Summary: TWideStringField;
    AdvWebDavDataSet1VCalendar_AlarmMessage: TWideStringField;
    AdvWebDavDataSet1VCalendar_EndDateTime: TDateTimeField;
    AdvWebDavDataSet1VCalendar_StartDateTime: TDateTimeField;
    AdvWebDavDataSet1VCalendar_Category: TWideStringField;
    AdvWebDavDataSet1VCalendar_Classification: TWideStringField;
    AdvWebDavDataSet1VCalendar_Priority: TWideStringField;
    AdvWebDavDataSet1VCalendar_Recurrency: TWideStringField;
    AdvWebDavDataSet1VCalendar_Status: TWideStringField;
    AdvWebDavDataSet1VCalendar_Description: TWideMemoField;
    AdvWebDavDataSet1VCalendar_Location: TWideStringField;
    AdvWebDavDataSet1VCalendar_Url: TWideStringField;
    AdvWebDavDataSet1VCalendar_TimeZone: TWideMemoField;
    Label10: TLabel;
    cmbCalendars: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure AdvWebDavDataSet1AfterScroll(DataSet: TDataSet);
    procedure edStartDateChange(Sender: TObject);
    procedure AdvWebDavDataSet1BeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure FillCalendars;
    procedure SyncDBControls;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  INIFiles;


const
  INIFILENAME = '.\icloudcalendar.ini';


procedure TForm1.AdvWebDavDataSet1AfterScroll(DataSet: TDataSet);
begin
  SyncDBControls;
end;

procedure TForm1.AdvWebDavDataSet1BeforePost(DataSet: TDataSet);
var
  i: integer;
begin
  AdvWebDavDataSet1.FieldByName('VCalendar_StartDateTime').AsDateTime :=
    Int(edStartDate.Date) + Frac(edStartTime.Time);

  AdvWebDavDataSet1.FieldByName('VCalendar_EndDateTime').AsDateTime :=
    Int(edEndDate.Date) + Frac(edEndTime.Time);

  AdvWebDavDataSet1.FieldByName('VCalendar_Priority').AsInteger := edPriority.Value;

  if AdvWebDavDataSet1.State = dsInsert then
  begin
    i := cmbCalendars.ItemIndex;
    AdvWebDavDataSet1.FieldByName('StoragePath').AsString := TWebDavDataSetFolder(cmbCalendars.Items.Objects[i]).Path;
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  inifile: TINIFile;
begin
  try
    iCloudCalendar1.Username := edUser.Text;
    iCloudCalendar1.Password := edPassword.Text;

    iCloudCalendar1.Open;

    inifile := TINIFile.Create(INIFILENAME);
    inifile.WriteString('LOGIN','USERNAME',edUser.Text);
    inifile.WriteString('LOGIN','PASSWORD',edPassword.Text);
    inifile.Free;

    AdvWebDavDataSet1.Active := true;
  except
    Exit;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  // make sure the iCloudCalendar is active to perform a sync
  iCloudCalendar1.Active := true;

  cmbCalendars.Items.Clear;
  // do a sync
  iCloudCalendar1.Sync;

  // do a refresh the dataset after a sync
  AdvWebDavDataSet1.Refresh;

  FillCalendars;
end;

procedure TForm1.edStartDateChange(Sender: TObject);
begin
  AdvWebDavDataSet1.Edit;
end;

procedure TForm1.FillCalendars;
var
  i, j: integer;
begin
  // get calendars from storagepath
  cmbCalendars.Items.Clear;
  for I := 0 to AdvWebDavDataSet1.Accounts.Count-1 do
  begin
    for J := 0 to AdvWebDavDataSet1.Accounts[I].Folders.Count-1 do
    begin
      cmbCalendars.Items.AddObject(AdvWebDavDataSet1.Accounts[I].Folders[J].DisplayText,AdvWebDavDataSet1.Accounts[I].Folders[J]);
    end;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  inifile: TINIFile;

begin
  inifile := TINIFile.Create(INIFILENAME);
  try
    edUser.Text := inifile.ReadString('LOGIN','USERNAME','');
    edPassword.Text := inifile.ReadString('LOGIN','PASSWORD','');
  finally
    inifile.Free;
  end;

  iCloudCalendar1.Username := edUser.Text;
  iCloudCalendar1.Password := edPassword.Text;

  AdvWebDavDataSet1.Active := true;


  FillCalendars;
  SyncDBControls;
end;

procedure TForm1.SyncDBControls;
var
  s:string;
  p,e: integer;
  tmp: TNotifyEvent;
  i, C, Count: integer;
begin
  edStartDate.Date := AdvWebDavDataSet1.FieldByName('VCalendar_StartDateTime').AsDateTime;
  edStartTime.Time := AdvWebDavDataSet1.FieldByName('VCalendar_StartDateTime').AsDateTime;

  edEndDate.Date := AdvWebDavDataSet1.FieldByName('VCalendar_EndDateTime').AsDateTime;
  edEndTime.Time := AdvWebDavDataSet1.FieldByName('VCalendar_EndDateTime').AsDateTime;

  // find calendar from storagepath
  for i := 0 to cmbCalendars.Items.Count - 1 do
  begin
    s := AdvWebDavDataSet1.FieldByName('StoragePath').AsString;
    Count := 0;
    for C := 1 to Length(S) do
    begin
      if S[C] = '\' then
      begin
        inc(Count);
        if Count = 2 then
        begin
          s := Copy(s,1,c - 1);
          Break;
        end;
      end;
    end;

    if (TWebDavDataSetFolder(cmbCalendars.Items.Objects[I]).Path = s) then
      cmbCalendars.ItemIndex := i;
  end;

  // get priority
  s := AdvWebDavDataSet1.FieldByName('VCalendar_Priority').AsString;

  val(s,p,e);

  tmp := edPriority.OnChange;
  edPriority.OnChange := nil;
  edPriority.Value := p;
  edPriority.OnChange := tmp;
end;

end.
