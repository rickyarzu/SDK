unit Janua.VCL.Planner.dmCustomController;

interface

uses
  // RTL
  System.SysUtils, System.Classes, System.Actions, System.Bindings.Helper, System.ImageList, Data.DB,
  System.UITypes, System.DateUtils, System.TypInfo, System.StrUtils,
  // DB
  PostgreSQLUniProvider, UniProvider, InterBaseUniProvider, DBAccess, Uni, MemDS, VirtualTable,
  // VCL
  VCL.ActnList, VCL.ImgList, VCL.Controls, SVGIconImageListBase, SVGIconImageList, VCL.Dialogs,
  PictureContainer, VCL.Graphics,
  // Planner
  AdvPDFIO, AdvPlannerPDFIO, Planner, DBPlanner,
  // Cloud
  CloudCustomGoogle, CloudGoogleWin, CloudCustomGCalendar, CloudGCalendar, CloudBase, CloudBaseWin,
  CloudCustomLive, CloudLiveWin, CloudCustomLiveCalendar, CloudLiveCalendar, CloudCustomOutlook,
  CloudOutlookWin, CloudCustomOutlookCalendar, CloudOutlookCalendar, CloudWebDav, CloudvCal,
  PlanExGCalendar, PlanExLiveCalendar,
  // Januaproject
  Janua.Core.DataModule, JOrm.Cloud.GoogleCalendarEvents.Intf, JOrm.Cloud.GoogleCalendars.Intf,
  Janua.Bindings.Intf, Janua.Core.Types, JOrm.Planner.Timetable.Intf, Janua.Controls.Forms.Intf,
  Janua.VCL.Interposers, Janua.Core.Classes.Intf, Janua.Orm.Intf, Janua.Controls.Intf, Janua.Core.Classes,
  Janua.Components.Planner, Janua.Core.Commons, Janua.Cloud.Conf, Janua.Unidac.Connection, Janua.Cloud.Types;

type
  TCloudCalendar = (ccWinLive, ccGoogle);

type
  TdmVCLPlannerCustomController = class(TJanuaCoreDataModule, IJanuaDataModule, IJanuaBindable)
    SVGIconImageList48: TSVGIconImageList;
    MainToolBarActions: TActionList;
    ActionAddMeeting: TAction;
    ActionUndoMeeting: TAction;
    ActionSearchMeeting: TAction;
    ActionAddUser: TAction;
    ActionAddActivity: TAction;
    ActionExport: TAction;
    ActionSendShare: TAction;
    ActionPrint: TAction;
    PrinterSetupDialog1: TPrinterSetupDialog;
    AdvGCalendar1: TAdvGCalendar;
    JanuaPlannerController1: TJanuaPlannerController;
    ActionCalendarSync: TAction;
    AdvLiveCalendar1: TAdvLiveCalendar;
    iCloudCalendar1: TiCloudCalendar;
    AdvvCalendar1: TAdvvCalendar;
    PlannerGCalendarExchange1: TPlannerGCalendarExchange;
    PlannerLiveCalendarExchange1: TPlannerLiveCalendarExchange;
    MenuButtonActions: TActionList;
    GCalendarButtons: TActionList;
    actConnect: TAction;
    SVGIconImageList16: TSVGIconImageList;
    actRemoveAccess: TAction;
    actAddCalendar: TAction;
    actUpdateCalendar: TAction;
    DBDaySourceCalendar: TDBDaySource;
    actUpdateEvents: TAction;
    PictureContainer1: TPictureContainer;
    SVGIconImageListIt: TSVGIconImageList;
    ColorDialog1: TColorDialog;
    actColor: TAction;
    actCaption: TAction;
    Action2: TAction;
    JanuaUniConnection1: TJanuaUniConnection;
    InterBaseUniProvider1: TInterBaseUniProvider;
    PostgreSQLUniProvider1: TPostgreSQLUniProvider;
    vtGoogleEvents: TVirtualTable;
    vtGoogleEventsID: TStringField;
    vtGoogleEventsETAG: TStringField;
    vtGoogleEventsSUMMARY: TStringField;
    vtGoogleEventsDESCRIPTION: TWideMemoField;
    vtGoogleEventsSTARTTIME: TDateTimeField;
    vtGoogleEventsENDTIME: TDateTimeField;
    vtGoogleEventsCREATED: TDateTimeField;
    vtGoogleEventsUPDATED: TDateTimeField;
    vtGoogleEventsISALLDAY: TBooleanField;
    vtGoogleEventsLOCATION: TStringField;
    vtGoogleEventsSTATUS: TSmallintField;
    vtGoogleEventsVISIBILITY: TIntegerField;
    vtGoogleEventsRECURRENCE: TStringField;
    vtGoogleEventsRECURRINGID: TStringField;
    vtGoogleEventsSEQUENCE: TIntegerField;
    vtGoogleEventsCOLOR: TSmallintField;
    vtGoogleEventsUSEDEFAULTREMINDERS: TBooleanField;
    vtGoogleEventsSENDNOTIFICATIONS: TBooleanField;
    vtGoogleEventsCALENDARID: TStringField;
    vtGoogleCalendars: TVirtualTable;
    vtGoogleCalendarsID: TStringField;
    vtGoogleCalendarsDESCRIPTION: TBlobField;
    vtGoogleCalendarsLOCATION: TStringField;
    vtGoogleCalendarsSUMMARY: TStringField;
    vtGoogleCalendarsPRIMARY: TBooleanField;
    vtGoogleCalendarsTIMEZONE: TStringField;
    vtGoogleCalendarsCOLOR: TSmallintField;
    vtGoogleCalendarsBACK_COLOR: TIntegerField;
    vtGoogleCalendarsFORE_COLOR: TIntegerField;
    actDeleteCalendar: TAction;
    actAddAttendee: TAction;
    dsGoogleEvents: TUniDataSource;
    vtGoogleEventsAttendees: TMemoField;
    vtGoogleEventsReminders: TMemoField;
    dsCalendar: TUniDataSource;
    DBDaySourceGCalendar: TDBDaySource;
    dsGCalendar: TUniDataSource;
    actGoogleEventNew: TAction;
    actGoogleEventUpdate: TAction;
    actGoogleEventDelete: TAction;
    procedure DataModuleCreate(Sender: TObject);
    procedure ActionAddUserExecute(Sender: TObject);
    procedure ActionPrintExecute(Sender: TObject);
    procedure ActionAddActivityExecute(Sender: TObject);
    procedure ActionAddMeetingExecute(Sender: TObject);
    procedure actConnectExecute(Sender: TObject);
    procedure actRemoveAccessExecute(Sender: TObject);
    procedure actAddCalendarExecute(Sender: TObject);
    procedure actUpdateCalendarExecute(Sender: TObject);
    procedure DBDaySourceCalendarSetFilter(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure GCalendarButtonsExecute(Action: TBasicAction; var Handled: Boolean);
    procedure DBDaySourceCalendarFieldsToItem(Sender: TObject; Fields: TFields; Item: TPlannerItem);
    procedure DBDaySourceCalendarItemToFields(Sender: TObject; Fields: TFields; Item: TPlannerItem);
    procedure actColorExecute(Sender: TObject);
    procedure actCaptionExecute(Sender: TObject);
    procedure PlannerItemDblClick(Sender: TObject; Item: TPlannerItem);
    procedure PlannerItemInsert(Sender: TObject; Position, FromSel, FromSelPrecise, ToSel,
      ToSelPrecise: Integer);
    procedure PlannerItemImageClick(Sender: TObject; Item: TPlannerItem; ImageIndex: Integer); virtual;
    procedure AdvGCalendar1ReceivedAccessToken(Sender: TObject);
    procedure actDeleteCalendarExecute(Sender: TObject);
    procedure actAddAttendeeExecute(Sender: TObject);
    procedure actUpdateEventsExecute(Sender: TObject);
    procedure vtGoogleEventsAfterScroll(DataSet: TDataSet);
  private
    FPlanner: TPlanner;
    FDBPlanner: TDBPlanner;
  protected
    procedure SetDBPlanner(const Value: TDBPlanner);
    procedure SetPlanner(const Value: TPlanner);
    procedure PostEvent; Virtual; Abstract;
    { Private declarations }
  public
    { Public declarations }
    property Planner: TPlanner read FPlanner write SetPlanner;
    property DBPlanner: TDBPlanner read FDBPlanner write SetDBPlanner;
    // ****************************************** TMS Cloud Calendar ******************************
  private
    FCloudCalendar: TCloudCalendar;
    FPlannerEvent: ITimetable;
    FColorField: TField;
    FSubjectField: TField;
    FConnected: Boolean;
    FInserting: Boolean;
    FStartTimeEnabled: Boolean;
    FEndTimeEnabled: Boolean;
    FStartTime: TTime;
    FEndTime: TTime;
    FCalEventsAttendees: TJanuaRecCalEventAttendees;
    function GetPlannerEvent: ITimetable;
    procedure SetCloudCalendar(const Value: TCloudCalendar);
    procedure SetPlannerEvent(const Value: ITimetable);
    procedure SetColorField(const Value: TField);
    procedure SetSubjectField(const Value: TField);
    procedure SetConnected(const Value: Boolean);
    procedure SetInserting(const Value: Boolean);
    procedure SetStartTimeEnabled(const Value: Boolean);
    procedure SetEndTimeEnabled(const Value: Boolean);
    procedure SetEndTime(const Value: TTime);
    procedure SetStartTime(const Value: TTime);
  protected
    function DialogEvent: Boolean;
    procedure RefreshEvent; Virtual; Abstract;
  public
    property CloudCalendar: TCloudCalendar read FCloudCalendar write SetCloudCalendar;
    property PlannerEvent: ITimetable read GetPlannerEvent write SetPlannerEvent;
    property ColorField: TField read FColorField write SetColorField;
    property SubjectField: TField read FSubjectField write SetSubjectField;
    // ****************************************** Main Public Procedures  ******************************
  public
    // Public Procedures (better if Actions)
    /// <summary>  Tries to Edit an Event using ITimetable interface. </summary>
    /// <remarks>   If fails throws an exception and rollbacks dataset posts </remarks>
    procedure EditEvent; virtual;
    /// <summary> Tries to Add an Event using ITimetable interface. </summary>
    /// <remarks> If fails throws an exception and rollbacks dataset posts </remarks>
    procedure AddEvent; virtual;
    // ****************************************** Calendar Sync Procedures ******************************
    procedure Setup; virtual; abstract;
    procedure FilterGoogle; virtual;
    procedure UndoMeeting; virtual;
    procedure Filter; virtual; abstract;
  private
    Fgcal: TGCalendar;
    Fgrem: TGReminder;
    FCalendarList: TStrings;
    FCalendarItemIndex: Integer;
    FSelectedCalendar: TJanuaGCalendar;
    FDateTo: TDateTime;
    FDateFrom: TDateTime;
    FCalendarColors: TStrings;
    FCalendarColorIndex: Integer;
    FDefaultRemindersList: TStrings;
    FCalendarDescription: string;
    FCalendarTimeZone: string;
    FCalendarLocation: string;
    FCalendarName: string;
    FDefaultRemindersIndex: Integer;
    FCalStartDate: TDateTime;
    FCalEndDate: TDateTime;
    FAttName: string;
    FAttEmail: string;
    FAttendeesList: TStrings;
    FReminders: TJanuaReminders;
    FOnToggleGoogleControls: TNotifyEvent;
    FUseDefaultReminders: Boolean;
    FOnToggleGoogleReminders: TNotifyEvent;
    FForegroundColor: TColor;
    FBackgroundColor: TColor;
    FOnSetColor: TNotifyEvent;
    FItemVisibilityList: TStrings;
    FItemVisibilityIndex: Integer;
    FCurrentGoogleItem: IGoogleCalendarEvent;
    procedure SetCalendarItemIndex(const Value: Integer);
    procedure SetCalendarList(const Value: TStrings);
    procedure SetSelectedCalendar(const Value: TJanuaGCalendar);
    procedure SetDateFrom(const Value: TDateTime);
    procedure SetDateTo(const Value: TDateTime);
    procedure SetCalendarColors(const Value: TStrings);
    procedure SetCalendarColorIndex(const Value: Integer);
    procedure SetCalendarDescription(const Value: string);
    procedure SetCalendarLocation(const Value: string);
    procedure SetCalendarName(const Value: string);
    procedure SetCalendarTimeZone(const Value: string);
    procedure SetDefaultRemindersList(const Value: TStrings);
    procedure SetDefaultRemindersIndex(const Value: Integer);
    procedure SetCalEndDate(const Value: TDateTime);
    procedure SetCalStartDate(const Value: TDateTime);
    procedure SetAttEmail(const Value: string);
    procedure SetAttendeesList(const Value: TStrings);
    procedure SetAttName(const Value: string);
    procedure SetOnToggleGoogleControls(const Value: TNotifyEvent);
    procedure SetUseDefaultReminders(const Value: Boolean);
    procedure SetOnToggleGoogleReminders(const Value: TNotifyEvent);
    procedure SetBackgroundColor(const Value: TColor);
    procedure SetForegroundColor(const Value: TColor);
    procedure SetOnSetColor(const Value: TNotifyEvent);
    procedure SetItemVisibilityIndex(const Value: Integer);
    procedure SetItemVisibilityList(const Value: TStrings);
    procedure SetCurrentGoogleItem(const Value: IGoogleCalendarEvent);
  protected
    function OpenCalendar(const aDateFrom, aDateTo: TDateTime): Integer; virtual; abstract;
    procedure AddActivity; virtual; abstract;
    procedure AddUser; Virtual; abstract;
  public
    { Public declarations }
    // Google CAlendar
    procedure GetGCalendarList;
    procedure GetLiveCalendarList;
    procedure ConnectLiveCalendar;
    procedure ConnectGCalendar;
    procedure FillCalendars(); virtual;
    procedure FillCalendarItems(); virtual;
    procedure FillCalendarItemDetails(); virtual;
    procedure FillColors();
    procedure SetColor();
    procedure ToggleControls();
    procedure ToggleReminders();
    procedure ClearControls();
    procedure Init();
    procedure ListAttendees(Item: TGCalendarItem);
    procedure ListReminders(Item: TGCalendarItem);
  public
    property Connected: Boolean read FConnected write SetConnected;
    property Inserting: Boolean read FInserting write SetInserting;
    property StartTimeEnabled: Boolean read FStartTimeEnabled write SetStartTimeEnabled;
    property StartTime: TTime read FStartTime write SetStartTime;
    property EndTime: TTime read FEndTime write SetEndTime;
    property EndTimeEnabled: Boolean read FEndTimeEnabled write SetEndTimeEnabled;
    property CalendarColors: TStrings read FCalendarColors write SetCalendarColors;
    property CalendarColorIndex: Integer read FCalendarColorIndex write SetCalendarColorIndex;
    property SelectedCalendar: TJanuaGCalendar read FSelectedCalendar write SetSelectedCalendar;
    property DateFrom: TDateTime read FDateFrom write SetDateFrom;
    property DateTo: TDateTime read FDateTo write SetDateTo;
    // ******************** Google Calendar Properties *********************************************
    // Google Calendar
    property CalendarItemIndex: Integer read FCalendarItemIndex write SetCalendarItemIndex;
    property CalendarList: TStrings read FCalendarList write SetCalendarList;
    property CalendarName: string read FCalendarName write SetCalendarName;
    property CalendarDescription: string read FCalendarDescription write SetCalendarDescription;
    property CalendarLocation: string read FCalendarLocation write SetCalendarLocation;
    property CalendarTimeZone: string read FCalendarTimeZone write SetCalendarTimeZone;
    // Calendar Filters
    property GCalStartDate: TDateTime read FCalStartDate write SetCalStartDate;
    property GCalEndDate: TDateTime read FCalEndDate write SetCalEndDate;
    // Default Reminders
    property DefaultRemindersList: TStrings read FDefaultRemindersList write SetDefaultRemindersList;
    property DefaultRemindersIndex: Integer read FDefaultRemindersIndex write SetDefaultRemindersIndex;
    // Attendees
    property AttendeesList: TStrings read FAttendeesList write SetAttendeesList;
    property AttEmail: string read FAttEmail write SetAttEmail;
    property AttName: string read FAttName write SetAttName;
    property OnToggleGoogleControls: TNotifyEvent read FOnToggleGoogleControls
      write SetOnToggleGoogleControls;
    property UseDefaultReminders: Boolean read FUseDefaultReminders write SetUseDefaultReminders;
    property OnToggleGoogleReminders: TNotifyEvent read FOnToggleGoogleReminders
      write SetOnToggleGoogleReminders;
    property BackgroundColor: TColor read FBackgroundColor write SetBackgroundColor;
    property ForegroundColor: TColor read FForegroundColor write SetForegroundColor;
    property OnSetColor: TNotifyEvent read FOnSetColor write SetOnSetColor;
    // Calendar Item
    property ItemVisibilityList: TStrings read FItemVisibilityList write SetItemVisibilityList;
    property ItemVisibilityIndex: Integer read FItemVisibilityIndex write SetItemVisibilityIndex;
    property CurrentGoogleItem: IGoogleCalendarEvent read FCurrentGoogleItem write SetCurrentGoogleItem;
  end;

var
  dmVCLPlannerCustomController: TdmVCLPlannerCustomController;

implementation

uses VCL.Forms, Spring, Janua.Application.Framework, Janua.ViewModels.Application, udmSVGImageList,
  Janua.VCL.Functions, Janua.Core.AsyncTask, Janua.Orm.Impl,
  // Orm to Manage Google Calendars (not Internal Planner so).
  JOrm.Cloud.GoogleCalendars.Impl, JOrm.Cloud.GoogleCalendarEvents.Impl,
  udlgVCLPlannerEvent, Janua.Orm.Types, Janua.Core.Functions;

{ udmPgPlannerStorage, udlgVCLPlannerAnagraph, udlgVCLPlannerActivities, }

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

const
  JanuaAttendeeGoogleStatus: array [TResponseStatus] of TJanuaAttendeeStatus = (jrsNeedsAction, rsDeclined,
    rsTentative, rsAccepted);
  // FReminders
  JanuaReminderMethods: array [TReminderMethod] of TJanuaReminderMethod = (jrmPopup, jrmEmail, jrmSMS);

procedure TdmVCLPlannerCustomController.DataModuleCreate(Sender: TObject);
var
  i: Integer;
begin
  FCurrentGoogleItem := TGoogleCalendarEventFactory.CreateRecord('GCalItem');

  JanuaPlannerController1.Timetable := PlannerEvent;
  FCalendarList := TStringList.Create;

  AdvLiveCalendar1.App.Key := TJanuaApplication.CloudConf.WinLiveClientID;
  AdvLiveCalendar1.App.Secret := TJanuaApplication.CloudConf.WinLiveClientSecret;

  AdvGCalendar1.App.Key := TJanuaApplication.CloudConf.GoogleAppKey;
  AdvGCalendar1.App.Secret := TJanuaApplication.CloudConf.GoogleAppSecret;

  AdvLiveCalendar1.PersistTokens.Key := '.\livecal.ini';
  AdvLiveCalendar1.PersistTokens.Section := 'winlive';
  AdvLiveCalendar1.PersistTokens.Location := plIniFile;

  AdvGCalendar1.PersistTokens.Key := '.\livecal.ini';
  AdvGCalendar1.PersistTokens.Section := 'google';
  AdvGCalendar1.PersistTokens.Location := plIniFile;

  AdvLiveCalendar1.LoadTokens;
  AdvGCalendar1.LoadTokens;

  FPlanner.Positions := 7;
  FPlanner.Header.Captions.Clear;
  FPlanner.Header.Captions.Add('');
  for i := 0 to 6 do
    FPlanner.Header.Captions.Add(datetostr(Now + i));

  CalendarItemIndex := -1;

  var
  vTest1 := Trunc(Date - StartOfTheMonth(Date()));
  var
  vTest2 := EndOfTheMonth(Date()) - Date;

  if (vTest1 >= 3) and (vTest2 >= 5) then
  begin
    FDateFrom := StartOfTheMonth(Date());
    FDateTo := EndOfTheMonth(Date());
  end
  else
  begin
    if vTest1 <= 3 then
    begin
      FDateFrom := Date() - 5;
      FDateTo := EndOfTheMonth(Date());
    end
    else
    begin
      FDateFrom := Date() - 2;
      FDateTo := EndOfTheMonth(IncMonth(Date(), 1));
    end;
  end;

  DBDaySourceGCalendar.NumberOfResources := OpenCalendar(FDateFrom, FDateTo);
  DBDaySourceGCalendar.Active := True;

  // Gestione Item:
  // Creo la Lista e la Imposto
  FItemVisibilityList := TStringList.Create;
  FItemVisibilityIndex := 0;
  FItemVisibilityList.Add('Default');
  FItemVisibilityList.Add('Pubblico');
  FItemVisibilityList.Add('Privato');
end;

procedure TdmVCLPlannerCustomController.DataModuleDestroy(Sender: TObject);
begin
  FCalendarList.Free;
  FCalendarList := nil;
end;

procedure TdmVCLPlannerCustomController.DBDaySourceCalendarFieldsToItem(Sender: TObject; Fields: TFields;
  Item: TPlannerItem);
begin
  { The FieldsToItem event is called when records are read from the database
    and extra properties are set from database fields. With this code, any
    field from the database can be connected in a custom way to planner item
    properties.
  }
  Item.Color := TColor(Fields.FieldByName('COLOR').AsInteger);
  Item.CaptionBkg := Item.Color;
  Item.ImageID := Fields.FieldByName('IMAGE').AsInteger;
  if Fields.FieldByName('CAPTION').AsBoolean then
    Item.CaptionType := TCaptionType.ctTime
  else
    Item.CaptionType := TCaptionType.ctNone;
end;

procedure TdmVCLPlannerCustomController.DBDaySourceCalendarItemToFields(Sender: TObject; Fields: TFields;
  Item: TPlannerItem);
begin
  { The ItemToFields event is called when items are written to the database
    and extra properties are stored in database fields. With this code, any
    property of the item can be saved into any field of the database in
    a custom way to be retrieved later with the inverse event FieldsToItem
  }

  Fields.FieldByName('COLOR').AsInteger := Integer(Item.Color);
  Fields.FieldByName('CAPTION').AsBoolean := Item.CaptionType = ctTime;
  Fields.FieldByName('IMAGE').AsInteger := Item.ImageID;
end;

procedure TdmVCLPlannerCustomController.DBDaySourceCalendarSetFilter(Sender: TObject);
var
  sd1, sd2: string;
begin
  { Before the planner needs to be reloaded with records from the database
    a custom filter can be applied to minimize the nr. of records the planner
    must check to load into the planner.
  }
  sd1 := datetostr(DBDaySourceGCalendar.Day);
  sd1 := #39 + sd1 + #39;

  sd2 := datetostr(DBDaySourceGCalendar.Day + 7);
  sd2 := #39 + sd2 + #39;
  (*
    PlannerTable.Filter:=  'STARTTIME > '+sd1+' AND ENDTIME < '+sd2;
    PlannerTable.Filtered := DoFilter.Checked;
  *)
end;

procedure TdmVCLPlannerCustomController.actAddAttendeeExecute(Sender: TObject);
var
  li: TGCalendarItem;
  att: TGAttendee;
begin
  if vtGoogleEvents.RecordCount > 0 then
  begin
    li := AdvGCalendar1.GetItemByID(vtGoogleEventsCALENDARID.AsString, vtGoogleEventsID.AsString);
    // ListView1.Items[ListView1.ItemIndex].Data;
    att := li.Attendees.Add;
    att.Summary := AttName;
    att.Email := AttEmail;
    ListAttendees(li);
    AttEmail := '';
    AttName := '';
  end;
end;

procedure TdmVCLPlannerCustomController.actAddCalendarExecute(Sender: TObject);
begin
  Fgcal := AdvGCalendar1.Calendars.Add;
  Fgcal.Summary := SelectedCalendar.Summary;
  Fgcal.Description := SelectedCalendar.Description;
  Fgcal.Location := SelectedCalendar.Location;
  Fgcal.TimeZone := SelectedCalendar.TimeZone;

  Fgrem := Fgcal.DefaultReminders.Add;
  Fgrem.Method := rmPopup;
  Fgrem.Minutes := 60;

  AdvGCalendar1.AddCalendar(Fgcal);
  FillCalendars;
  FillCalendarItems;
end;

procedure TdmVCLPlannerCustomController.actCaptionExecute(Sender: TObject);
begin
  if FPlanner.PopupPlannerItem.CaptionType = ctTime then
    FPlanner.PopupPlannerItem.CaptionType := TCaptionType.ctNone
  else
    FPlanner.PopupPlannerItem.CaptionType := TCaptionType.ctTime;

  FPlanner.PopupPlannerItem.Update;
end;

procedure TdmVCLPlannerCustomController.actColorExecute(Sender: TObject);
begin
  { Sets the planner item color }
  ColorDialog1.Color := FPlanner.PopupPlannerItem.Color;
  if ColorDialog1.Execute then
  begin
    FPlanner.PopupPlannerItem.Color := ColorDialog1.Color;
    FPlanner.PopupPlannerItem.CaptionBkg := ColorDialog1.Color;
    FPlanner.PopupPlannerItem.Update;
  end;
end;

procedure TdmVCLPlannerCustomController.actConnectExecute(Sender: TObject);
begin
  ConnectGCalendar;
end;

procedure TdmVCLPlannerCustomController.actDeleteCalendarExecute(Sender: TObject);
var
  buttonSelected: Integer;
begin
  if CalendarItemIndex >= 0 then
  begin
    buttonSelected :=
      MessageDlg('Are you sure you want to delete the selected Calendar and all of it''s events?',
      mtConfirmation, mbOKCancel, 0);

    if buttonSelected = mrOk then
    begin
      AdvGCalendar1.DeleteCalendar((CalendarList.Objects[CalendarItemIndex] as TGCalendar));
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

procedure TdmVCLPlannerCustomController.actUpdateCalendarExecute(Sender: TObject);
begin
  if CalendarItemIndex >= 0 then
  begin
    Fgcal := (FCalendarList.Objects[CalendarItemIndex] as TGCalendar);
    Fgcal.Summary := SelectedCalendar.Summary;
    Fgcal.Description := SelectedCalendar.Description;
    Fgcal.Location := SelectedCalendar.Location;
    Fgcal.TimeZone := SelectedCalendar.TimeZone;
    AdvGCalendar1.UpdateCalendar(Fgcal);
    FillCalendars;
    FillCalendarItems;
  end;
end;

procedure TdmVCLPlannerCustomController.actUpdateEventsExecute(Sender: TObject);
begin
  FillCalendarItems;
end;

procedure TdmVCLPlannerCustomController.ActionAddActivityExecute(Sender: TObject);
begin
  AddActivity;
end;

procedure TdmVCLPlannerCustomController.ActionAddMeetingExecute(Sender: TObject);
begin
  AddEvent;
end;

procedure TdmVCLPlannerCustomController.ActionAddUserExecute(Sender: TObject);
begin
  AddUser;
end;

procedure TdmVCLPlannerCustomController.ActionPrintExecute(Sender: TObject);
begin
  if PrinterSetupDialog1.Execute then
    FPlanner.Print;
end;

procedure TdmVCLPlannerCustomController.actRemoveAccessExecute(Sender: TObject);
begin
  AdvGCalendar1.ClearTokens;
  Connected := false;
  ToggleControls;
end;

procedure TdmVCLPlannerCustomController.AddEvent;
begin
  // Creates a New Empty Record
  PlannerEvent.PeriodMins := 30;
  PlannerEvent.Append;
  if DialogEvent then
    PostEvent;
  PlannerEvent := nil;
end;

procedure TdmVCLPlannerCustomController.AdvGCalendar1ReceivedAccessToken(Sender: TObject);
begin
  AdvGCalendar1.SaveTokens;
  Init;
end;

procedure TdmVCLPlannerCustomController.ClearControls;
begin

end;

procedure TdmVCLPlannerCustomController.ConnectGCalendar;
begin
  AdvGCalendar1.Logging := True;
  AdvGCalendar1.LogLevel := llDetail;
  AdvGCalendar1.App.Key := TJanuaApplication.CloudConf.GoogleAppKey;
  AdvGCalendar1.App.Secret := TJanuaApplication.CloudConf.GoogleAppSecret;

  if not AdvGCalendar1.TestTokens then
  begin
    AdvGCalendar1.RefreshAccess;
    if not AdvGCalendar1.TestTokens then
    begin
      AdvGCalendar1.DoAuth
    end
    else
      GetGCalendarList;
  end
  else
    GetGCalendarList;

  Init;
end;

procedure TdmVCLPlannerCustomController.ConnectLiveCalendar;
begin
  if not AdvLiveCalendar1.TestTokens then
  begin
    AdvLiveCalendar1.RefreshAccess;
    if not AdvLiveCalendar1.TestTokens then
      AdvLiveCalendar1.DoAuth
    else
      GetLiveCalendarList;
  end
  else
    GetLiveCalendarList;
end;

function TdmVCLPlannerCustomController.DialogEvent: Boolean;
var
  LdlgPlannerEvent: TdlgVCLPlannerEvent;
begin
  LdlgPlannerEvent := TdlgVCLPlannerEvent.Create(nil);
  try
    LdlgPlannerEvent.Event := PlannerEvent;
    Result := LdlgPlannerEvent.ShowModal = mrOk;
  finally
    LdlgPlannerEvent.Free;
    LdlgPlannerEvent := nil;
  end;
end;

procedure TdmVCLPlannerCustomController.EditEvent;
begin
  RefreshEvent;
  { PlannerEvent.DirectLoadFromDataset(dmPgPlannerStorage.qryTimeTable); }
  if DialogEvent then
    PostEvent;
  PlannerEvent := nil;
end;

procedure TdmVCLPlannerCustomController.FillCalendarItemDetails;
begin
  FCurrentGoogleItem.DirectLoadFromDataset(vtGoogleEvents);
end;

procedure TdmVCLPlannerCustomController.FillCalendarItems;
var
  i: Integer;
  gcal: TGCalendar;
  rem: string;
begin
  Screen.Cursor := crHourGlass;
  { property CalendarItemIndex: Integer read FCalendarItemIndex write SetCalendarItemIndex;
    property CalendarList: TStrings read FCalendarList write SetCalendarList; }

  if CalendarItemIndex >= 0 then
  begin
    gcal := (CalendarList.Objects[CalendarItemIndex] as TGCalendar);

    CalendarName := gcal.Summary;
    CalendarDescription := gcal.Description;
    CalendarLocation := gcal.Location;
    CalendarTimeZone := gcal.TimeZone;

    // Default Reminders
    DefaultRemindersList.Clear;

    for i := 0 to gcal.DefaultReminders.Count - 1 do
    begin
      case gcal.DefaultReminders[i].Method of
        rmPopup:
          rem := 'popup';
        rmEmail:
          rem := 'email';
        rmSMS:
          rem := 'sms';
      end;
      DefaultRemindersList.Add(rem + ' ' + IntToStr(gcal.DefaultReminders[i].Minutes) + ' minutes')
    end;

    if DefaultRemindersList.Count > 0 then
      DefaultRemindersIndex := 0;

    AdvGCalendar1.GetCalendar(gcal.ID, GCalStartDate, GCalEndDate);

    vtGoogleCalendars.Clear;
    for i := 0 to AdvGCalendar1.Items.Count - 1 do
    begin
      vtGoogleEvents.Append;
      vtGoogleEventsSTARTTIME.AsDateTime := AdvGCalendar1.Items[i].StartTime;
      vtGoogleEventsENDTIME.AsDateTime := AdvGCalendar1.Items[i].EndTime;
      vtGoogleEventsSUMMARY.AsString := AdvGCalendar1.Items[i].Summary;
      vtGoogleEventsDESCRIPTION.AsString := AdvGCalendar1.Items[i].Description;
      // edID.Text := gcal.ID;    edEtag.Text := gcal.
      vtGoogleEventsID.AsString := AdvGCalendar1.Items[i].ID;
      vtGoogleEventsETAG.AsString := AdvGCalendar1.Items[i].ETag;
      vtGoogleEventsCALENDARID.AsString := AdvGCalendar1.Items[i].CalendarID;
      vtGoogleEventsCREATED.AsDateTime := AdvGCalendar1.Items[i].Created;
      vtGoogleEventsUPDATED.AsDateTime := AdvGCalendar1.Items[i].Updated;
      vtGoogleEventsISALLDAY.AsBoolean := AdvGCalendar1.Items[i].IsAllDay;
      // IfThen(AdvGCalendar1.Items[i].IsAllDay , 'T', 'F');
      vtGoogleEventsLOCATION.AsString := AdvGCalendar1.Items[i].Location;
      vtGoogleEventsSTATUS.AsInteger := Ord(AdvGCalendar1.Items[i].Status);
      vtGoogleEventsVISIBILITY.AsInteger := Ord(AdvGCalendar1.Items[i].Visibility);
      vtGoogleEventsRECURRENCE.AsString := AdvGCalendar1.Items[i].Recurrence;
      { TODO : Gestire gli Attendees in base all'Item Selezionato AdvGCalendar1.Items[i].Attendees; }
      vtGoogleEventsAttendees.AsString := '';
      { TODO : Gestire i Reminders in base all'Item Selezionato AdvGCalendar1.Items[i].Reminders; }
      vtGoogleEventsReminders.AsString := '';
    end;
  end;
  Screen.Cursor := crDefault;
end;

procedure TdmVCLPlannerCustomController.FillCalendars;
var
  i: Integer;
  isPrimary: string;
begin
  AdvGCalendar1.GetCalendars();

  FCalendarList.Clear;

  for i := 0 to AdvGCalendar1.Calendars.Count - 1 do
  begin
    if AdvGCalendar1.Calendars[i].Primary then
      isPrimary := ' (Primary)'
    else
      isPrimary := '';
    FCalendarList.addObject(AdvGCalendar1.Calendars[i].Summary + isPrimary, AdvGCalendar1.Calendars[i]);
  end;
  FCalendarItemIndex := 0;
end;

procedure TdmVCLPlannerCustomController.FillColors;
var
  cl: TGItemColor;
begin
  AdvGCalendar1.GetColors;
  FCalendarColors.Clear;
  for cl := Low(TGItemColor) to High(TGItemColor) do
    FCalendarColors.Add(StringReplace(GetEnumName(TypeInfo(TGItemColor), Ord(cl)), 'ic', '', []));
  if FCalendarColors.Count > 0 then
    FCalendarColorIndex := 0;
end;

procedure TdmVCLPlannerCustomController.FilterGoogle;
begin

end;

procedure TdmVCLPlannerCustomController.GCalendarButtonsExecute(Action: TBasicAction; var Handled: Boolean);
begin
  FillCalendarItems;
end;

procedure TdmVCLPlannerCustomController.GetGCalendarList;
var
  i: Integer;
begin
  CloudCalendar := ccGoogle;
  AdvGCalendar1.GetCalendars;
  CalendarList.Clear;
  for i := 0 to AdvGCalendar1.Calendars.Count - 1 do
  begin
    CalendarList.Add(AdvGCalendar1.Calendars[i].Summary);
  end;
  CalendarItemIndex := 0;
end;

procedure TdmVCLPlannerCustomController.GetLiveCalendarList;
begin

end;

function TdmVCLPlannerCustomController.GetPlannerEvent: ITimetable;
begin
  if not Assigned(FPlannerEvent) then
  begin
    TJanuaCoreOS.PublicWriteLog(Self, 'EditEvent', 'TryGetRecordIntf(ITimetable)');
    if not TJanuaOrmFactory.TryGetRecordIntf(ITimetable, FPlannerEvent, 'Event', TJanuaEntity.PlannerTimetable)
    then
      raise Exception.Create('TryGetRecordIntf(ITimetable) ITimetable not set');
  end;
  Result := FPlannerEvent;
end;

procedure TdmVCLPlannerCustomController.Init;
begin
  Connected := True;
  FillCalendars;
  FillCalendarItems;
  FillColors;
  ToggleControls;
end;

procedure TdmVCLPlannerCustomController.ListAttendees(Item: TGCalendarItem);
var
  att: string;
  i: Integer;
begin
  att := '';
  FCalEventsAttendees.Clear;

  for i := 0 to Item.Attendees.Count - 1 do
    FCalEventsAttendees.AddAttendee(Item.Attendees[i].Summary, Item.Attendees[i].Email,
      JanuaAttendeeGoogleStatus[Item.Attendees[i].Status]);

  vtGoogleEvents.Edit;
  vtGoogleEventsAttendees.AsString := FCalEventsAttendees.AsJson;

end;

procedure TdmVCLPlannerCustomController.ListReminders(Item: TGCalendarItem);
var
  rem: string;
  i: Integer;
begin
  rem := '';
  FReminders.Clear;
  vtGoogleEvents.Edit;
  vtGoogleEventsUSEDEFAULTREMINDERS.AsBoolean := Item.UseDefaultReminders;
  vtGoogleEvents.Post;

  for i := 0 to Item.Reminders.Count - 1 do
    FReminders.AddReminder(Item.Reminders[i].Minutes, JanuaReminderMethods[Item.Reminders[i].Method]);

  ToggleReminders;

end;

procedure TdmVCLPlannerCustomController.PlannerItemDblClick(Sender: TObject; Item: TPlannerItem);
begin
  EditEvent;
end;

procedure TdmVCLPlannerCustomController.PlannerItemImageClick(Sender: TObject; Item: TPlannerItem;
  ImageIndex: Integer);
begin
  // Virtual Method to Manage the Image Click on The Calendar Planner Item
  if Item.ImageID < 2 then
    Item.ImageID := Item.ImageID + 1
  else
    Item.ImageID := 0;

  Item.Update;
end;

procedure TdmVCLPlannerCustomController.PlannerItemInsert(Sender: TObject;
  Position, FromSel, FromSelPrecise, ToSel, ToSelPrecise: Integer);
begin
  { creates an item in the planner at the selected cells which is automatically
    propagated to the database
    All planner item settings are taken from the Planner.DefaultItem properties.
    After changing properties of the planner item, it is necessary to call the
    item's Update method to make sure that changes are propagated to the database
  }
  with Planner.CreateItemAtSelection do
  begin
    Text.Text := 'Creato Evento il ' + FormatDateTime('hh:nn dd/mm/yyyy', Now);
    Update;
  end;
end;

procedure TdmVCLPlannerCustomController.SetAttEmail(const Value: string);
begin
  FAttEmail := Value;
end;

procedure TdmVCLPlannerCustomController.SetAttendeesList(const Value: TStrings);
begin
  FAttendeesList := Value;
end;

procedure TdmVCLPlannerCustomController.SetAttName(const Value: string);
begin
  FAttName := Value;
end;

procedure TdmVCLPlannerCustomController.SetBackgroundColor(const Value: TColor);
begin
  FBackgroundColor := Value;
end;

procedure TdmVCLPlannerCustomController.SetCalendarColorIndex(const Value: Integer);
begin
  FCalendarColorIndex := Value;
end;

procedure TdmVCLPlannerCustomController.SetCalendarColors(const Value: TStrings);
begin
  FCalendarColors := Value;
end;

procedure TdmVCLPlannerCustomController.SetCalendarDescription(const Value: string);
begin
  FCalendarDescription := Value;
end;

procedure TdmVCLPlannerCustomController.SetCalendarItemIndex(const Value: Integer);
begin
  FCalendarItemIndex := Value;
end;

procedure TdmVCLPlannerCustomController.SetCalendarList(const Value: TStrings);
begin
  FCalendarList := Value;
end;

procedure TdmVCLPlannerCustomController.SetCalendarLocation(const Value: string);
begin
  FCalendarLocation := Value;
end;

procedure TdmVCLPlannerCustomController.SetCalendarName(const Value: string);
begin
  FCalendarName := Value;
end;

procedure TdmVCLPlannerCustomController.SetCalendarTimeZone(const Value: string);
begin
  FCalendarTimeZone := Value;
end;

procedure TdmVCLPlannerCustomController.SetCalEndDate(const Value: TDateTime);
begin
  FCalEndDate := Value;
end;

procedure TdmVCLPlannerCustomController.SetCalStartDate(const Value: TDateTime);
begin
  FCalStartDate := Value;
end;

procedure TdmVCLPlannerCustomController.SetCloudCalendar(const Value: TCloudCalendar);
begin
  FCloudCalendar := Value;
end;

procedure TdmVCLPlannerCustomController.SetColor;
var
  i: Integer;
  gcal: TGCalendar;
  bg: TColor;
  fg: TColor;
begin
  bg := clBtnFace;
  fg := clWindowText;

  if FCalendarColorIndex > 0 then
  begin
    bg := AdvGCalendar1.ItemColors[FCalendarColorIndex - 1].BackgroundColor;
    fg := AdvGCalendar1.ItemColors[FCalendarColorIndex - 1].ForegroundColor;
  end
  else
  begin
    if FCalendarColorIndex >= 0 then
    begin
      gcal := (FCalendarList.Objects[FCalendarColorIndex] as TGCalendar);

      for i := 0 to AdvGCalendar1.CalendarColors.Count - 1 do
      begin
        if Ord(gcal.Color) = AdvGCalendar1.CalendarColors[i].ID then
        begin
          bg := AdvGCalendar1.CalendarColors[i].BackgroundColor;
          fg := AdvGCalendar1.CalendarColors[i].ForegroundColor;
        end;
      end;

      if gcal.BackgroundColor <> clNone then
        bg := gcal.BackgroundColor;
      if gcal.ForegroundColor <> clNone then
        fg := gcal.ForegroundColor;
    end
  end;
end;

procedure TdmVCLPlannerCustomController.SetColorField(const Value: TField);
begin
  FColorField := Value;
end;

procedure TdmVCLPlannerCustomController.SetConnected(const Value: Boolean);
begin
  FConnected := Value;
end;

procedure TdmVCLPlannerCustomController.SetCurrentGoogleItem(const Value: IGoogleCalendarEvent);
begin
  FCurrentGoogleItem := Value;
end;

procedure TdmVCLPlannerCustomController.SetDateFrom(const Value: TDateTime);
begin
  FDateFrom := Value;
end;

procedure TdmVCLPlannerCustomController.SetDateTo(const Value: TDateTime);
begin
  FDateTo := Value;
end;

procedure TdmVCLPlannerCustomController.SetDBPlanner(const Value: TDBPlanner);
begin
  FDBPlanner := Value;
  FPlanner := TPlanner(FDBPlanner);
end;

procedure TdmVCLPlannerCustomController.SetDefaultRemindersIndex(const Value: Integer);
begin
  FDefaultRemindersIndex := Value;
end;

procedure TdmVCLPlannerCustomController.SetDefaultRemindersList(const Value: TStrings);
begin
  FDefaultRemindersList := Value;
end;

procedure TdmVCLPlannerCustomController.SetEndTime(const Value: TTime);
begin
  FEndTime := Value;
end;

procedure TdmVCLPlannerCustomController.SetEndTimeEnabled(const Value: Boolean);
begin
  FEndTimeEnabled := Value;
end;

procedure TdmVCLPlannerCustomController.SetForegroundColor(const Value: TColor);
begin
  FForegroundColor := Value;
end;

procedure TdmVCLPlannerCustomController.SetInserting(const Value: Boolean);
begin
  FInserting := Value;
end;

procedure TdmVCLPlannerCustomController.SetItemVisibilityIndex(const Value: Integer);
begin
  FItemVisibilityIndex := Value;
end;

procedure TdmVCLPlannerCustomController.SetItemVisibilityList(const Value: TStrings);
begin
  FItemVisibilityList := Value;
end;

procedure TdmVCLPlannerCustomController.SetOnSetColor(const Value: TNotifyEvent);
begin
  FOnSetColor := Value;
end;

procedure TdmVCLPlannerCustomController.SetOnToggleGoogleControls(const Value: TNotifyEvent);
begin
  FOnToggleGoogleControls := Value;
end;

procedure TdmVCLPlannerCustomController.SetOnToggleGoogleReminders(const Value: TNotifyEvent);
begin
  FOnToggleGoogleReminders := Value;
end;

procedure TdmVCLPlannerCustomController.SetPlanner(const Value: TPlanner);
begin
  FPlanner := Value;
end;

procedure TdmVCLPlannerCustomController.SetPlannerEvent(const Value: ITimetable);
begin
  FPlannerEvent := Value;
end;

procedure TdmVCLPlannerCustomController.SetSelectedCalendar(const Value: TJanuaGCalendar);
begin
  FSelectedCalendar := Value;
end;

procedure TdmVCLPlannerCustomController.SetStartTime(const Value: TTime);
begin
  FStartTime := Value;
end;

procedure TdmVCLPlannerCustomController.SetStartTimeEnabled(const Value: Boolean);
begin
  FStartTimeEnabled := Value;
end;

procedure TdmVCLPlannerCustomController.SetSubjectField(const Value: TField);
begin
  FSubjectField := Value;
end;

procedure TdmVCLPlannerCustomController.SetUseDefaultReminders(const Value: Boolean);
var
  li: TGCalendarItem;
begin
  FUseDefaultReminders := Value;
  { TODO : Gestire i Reminders in base all'Item Selezionato (dal Dataset e non dalla ListView tra l'altro) }
  {
    if ListView1.ItemIndex >= 0 then
    begin
    li := ListView1.Items[ListView1.ItemIndex].Data;
    li.UseDefaultReminders := cbRem.Checked;
    end;
  }
  ToggleReminders;
end;

procedure TdmVCLPlannerCustomController.ToggleControls;
begin
  if Assigned(FOnToggleGoogleControls) then
    FOnToggleGoogleControls(Self);
end;

procedure TdmVCLPlannerCustomController.ToggleReminders;
begin
  if Assigned(FOnToggleGoogleReminders) then
    FOnToggleGoogleReminders(Self);
end;

procedure TdmVCLPlannerCustomController.UndoMeeting;
begin

end;

procedure TdmVCLPlannerCustomController.vtGoogleEventsAfterScroll(DataSet: TDataSet);
begin
  FillCalendarItemDetails;
end;

end.
