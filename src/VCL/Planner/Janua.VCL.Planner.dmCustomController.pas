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
  TItemProc = TProc<TPlannerItem>;
  TItemFunc = TFunc<TPlannerItem, Boolean>;

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
    JanuaPlannerController1: TJanuaPlannerController;
    ActionCalendarSync: TAction;
    AdvLiveCalendar1: TAdvLiveCalendar;
    iCloudCalendar1: TiCloudCalendar;
    AdvvCalendar1: TAdvvCalendar;
    MenuButtonActions: TActionList;
    GCalendarButtons: TActionList;
    actConnect: TAction;
    SVGIconImageList16: TSVGIconImageList;
    actRemoveAccess: TAction;
    actAddCalendar: TAction;
    actUpdateCalendar: TAction;
    actUpdateEvents: TAction;
    PictureContainer1: TPictureContainer;
    SVGIconImageListIt: TSVGIconImageList;
    ColorDialog1: TColorDialog;
    actColor: TAction;
    actCaption: TAction;
    actFont: TAction;
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
    actDeleteCalendar: TAction;
    actAddAttendee: TAction;
    dsGoogleEvents: TUniDataSource;
    dsCalendars: TUniDataSource;
    DBDaySourceGCalendar: TDBDaySource;
    dsGCalendar: TUniDataSource;
    actGoogleEventNew: TAction;
    actGoogleEventUpdate: TAction;
    actGoogleEventDelete: TAction;
    DBDaySourceCalendar: TDBDaySource;
    dsCalendarEvents: TUniDataSource;
    SaveDialog1: TSaveDialog;
    FontDialog1: TFontDialog;
    SVGIconImageList24: TSVGIconImageList;
    vtGoogleEventsJGUID: TGuidField;
    vtGoogleEventsAttendees: TMemoField;
    vtGoogleEventsReminders: TMemoField;
    lkpGCalendarAlias: TVirtualTable;
    dslkpGCalendar: TUniDataSource;
    vtGoogleEventsBackColor: TIntegerField;
    vtGoogleEventsAlias: TWideStringField;
    vtGoogleCalendars: TVirtualTable;
    vtGoogleCalendarsID: TStringField;
    vtGoogleCalendarsLOCATION: TStringField;
    vtGoogleCalendarsSUMMARY: TStringField;
    vtGoogleCalendarsPRIMARY: TBooleanField;
    vtGoogleCalendarsTIMEZONE: TStringField;
    vtGoogleCalendarsCOLOR: TSmallintField;
    vtGoogleCalendarsFORE_COLOR: TIntegerField;
    vtGoogleCalendarsDESCRIPTION: TWideMemoField;
    vtGoogleCalendarsBACK_COLOR: TIntegerField;
    vtGoogleCalendarsALIAS: TStringField;
    vtGoogleCalendarsJGUID: TGuidField;
    lkpGCalendarAliasID: TStringField;
    lkpGCalendarAliasLOCATION: TStringField;
    lkpGCalendarAliasSUMMARY: TStringField;
    lkpGCalendarAliasPRIMARY: TBooleanField;
    lkpGCalendarAliasTIMEZONE: TStringField;
    lkpGCalendarAliasCOLOR: TSmallintField;
    lkpGCalendarAliasFORE_COLOR: TIntegerField;
    lkpGCalendarAliasDESCRIPTION: TWideMemoField;
    lkpGCalendarAliasBACK_COLOR: TIntegerField;
    lkpGCalendarAliasALIAS: TStringField;
    lkpGCalendarAliasJGUID: TGuidField;
    vtGoogleEventsCalcColor: TIntegerField;
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
    procedure ActionExportExecute(Sender: TObject);
    procedure actFontExecute(Sender: TObject);
    procedure ActionSearchMeetingExecute(Sender: TObject);
    procedure DBDaySourceCalendarUpdateItem(Sender: TObject; APlannerItem: TPlannerItem);
    procedure DBDaySourceCalendarTimeToFields(Sender: TObject; Fields: TFields; dtS, dtE: TDateTime);
    procedure DBDaySourceCalendarInsertItem(Sender: TObject; APlannerItem: TPlannerItem);
    procedure DBDaySourceGCalendarFieldsToItem(Sender: TObject; Fields: TFields; Item: TPlannerItem);
    procedure vtGoogleEventsBeforePost(DataSet: TDataSet);
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
  private
    FCalendarsList: TStrings;
    FCalendarsSelList: TStrings;
    FCalendarsFilter: Boolean;
  protected
    function DialogEvent: Boolean;
    procedure RefreshEvent; Virtual; Abstract;
    procedure SetCalendarsFilter(const Value: Boolean);
    procedure SetCalendarsList(const Value: TStrings);
    procedure SetCalendarsSelList(const Value: TStrings);
    function GetCalendarsListText: string;
    procedure SetCalendarsListText(const Value: string);
  public
    property CloudCalendar: TCloudCalendar read FCloudCalendar write SetCloudCalendar;
    property PlannerEvent: ITimetable read GetPlannerEvent write SetPlannerEvent;
    property ColorField: TField read FColorField write SetColorField;
    property SubjectField: TField read FSubjectField write SetSubjectField;
    /// <summary> Calendars List should be populated according to Custom Environment, it should be a List of
    /// Resources such as Offices, Rooms, Spaces ... or Entity Members such as Cars or Workers. </summary>
    property CalendarsList: TStrings read FCalendarsList write SetCalendarsList;
    /// <summary> This property can be used to synchronize late bindings engine </summary>
    property CalendarsListText: string read GetCalendarsListText;
    /// <summary> List of Calendars Selected by Users to be Showed on Window </summary>
    property CalendarsSelList: TStrings read FCalendarsSelList write SetCalendarsSelList;
    /// <summary> List of Calendars Selected by Users to be Showed on Window </summary>
    property CalendarsFilter: Boolean read FCalendarsFilter write SetCalendarsFilter;
    /// <summary> After Selecting Calendars this procedure should be called (it can be inside a thread) </summary>
    procedure SelectCalendars; Virtual; Abstract;
    // <summary> Fill Calendars list with Custom Data depending on the Environment. Resources usually </summary>
    procedure PopulateCalendars; Virtual; Abstract;
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
    procedure ActivateCalendar; virtual;
  private
    Fgcal: TGCalendar;
    Fgrem: TGReminder;
    FGoogleCalendarList: TStrings;
    FCalendarItemIndex: Integer;
    FSelectedGCalendar: TJanuaGCalendar;
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
    FPlannerPDFIO: TAdvPlannerPDFIO;
    FGooglePlannerPDFIO: TAdvPlannerPDFIO;
    FItemImageField: TField;
    FItemColorField: TField;
    FItemCaptionField: TField;
    FItemCreatedProc: TItemProc;
    procedure SetCalendarItemIndex(const Value: Integer);
    procedure SetCalendarList(const Value: TStrings);
    procedure SetSelectedGCalendar(const Value: TJanuaGCalendar);
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
    procedure SetGooglePlannerPDFIO(const Value: TAdvPlannerPDFIO);
    procedure SetPlannerPDFIO(const Value: TAdvPlannerPDFIO);
    procedure SetItemCaptionField(const Value: TField);
    procedure SetItemColorField(const Value: TField);
    procedure SetItemImageField(const Value: TField);
    procedure SetItemCreatedProc(const Value: TItemProc);
  private
    FDeleteItemFunc: TItemFunc;
    FItemModifyFunc: TItemFunc;
    FItemUpdateProc: TItemProc;
    FItemInsertProc: TProc;
    FAdvGCalendar1: TAdvGCalendar;
    FSyncGoogleCalendars: TProc;
    FGroupBackColor: TColor;
    FGroupForeColor: TColor;
    FGoogleItemInsertProc: TProc;
    FGoogleItemUpdateProc: TProc;
    FGoogleCalendarInsertProc: TProc;
    FGoogleCalendarUpdateProc: TProc;
    FGItemImageField: TField;
    FGItemColorField: TField;
    FGItemCaptionField: TField;
    FUpdatingFromDB: Boolean;
    procedure SetDeleteItemFunc(const Value: TItemFunc);
    procedure SetItemModifyFunc(const Value: TItemFunc);
    procedure SetItemUpdateProc(const Value: TItemProc);
    procedure SetItemInsertProc(const Value: TProc);
    function GetCalendarDescription: string;
    function GetCalendarLocation: string;
    function GetCalendarName: string;
    function GetCalendarTimeZone: string;
    function GetGCalendarListText: string;
    procedure SetAdvGCalendar1(const Value: TAdvGCalendar);
    procedure SetSyncGoogleCalendars(const Value: TProc);
    procedure SetGroupBackColor(const Value: TColor);
    procedure SetGroupForeColor(const Value: TColor);
    procedure SetGoogleItemInsertProc(const Value: TProc);
    procedure SetGoogleItemUpdateProc(const Value: TProc);
    procedure SetGoogleCalendarInsertProc(const Value: TProc);
    procedure SetGoogleCalendarUpdateProc(const Value: TProc);
    procedure SetGItemCaptionField(const Value: TField);
    procedure SetGItemColorField(const Value: TField);
    procedure SetGItemImageField(const Value: TField);
    procedure SetUpdatingFromDB(const Value: Boolean);
  protected
    function OpenCalendar(const aDateFrom, aDateTo: TDateTime): Integer; virtual; abstract;
    function InternalDeleteItem(aItem: TPlannerItem): Boolean; virtual; abstract;
    procedure AddActivity; virtual; abstract;
    procedure AddUser; Virtual; abstract;
    property ItemColorField: TField read FItemColorField write SetItemColorField;
    property ItemImageField: TField read FItemImageField write SetItemImageField;
    property ItemCaptionField: TField read FItemCaptionField write SetItemCaptionField;
    property ItemCreatedProc: TItemProc read FItemCreatedProc write SetItemCreatedProc;
    property DeleteItemFunc: TItemFunc read FDeleteItemFunc write SetDeleteItemFunc;
    property ItemModifyFunc: TItemFunc read FItemModifyFunc write SetItemModifyFunc;
    property ItemUpdateProc: TItemProc read FItemUpdateProc write SetItemUpdateProc;
    property ItemInsertProc: TProc read FItemInsertProc write SetItemInsertProc;
    // Google Item Definition Fields
    property GItemColorField: TField read FGItemColorField write SetGItemColorField;
    property GItemImageField: TField read FGItemImageField write SetGItemImageField;
    property GItemCaptionField: TField read FGItemCaptionField write SetGItemCaptionField;
    // *******************************************************************************************************
  public
    { Public declarations }
    // Google CAlendar
    { procedure GetGCalendarList; }
    procedure GetLiveCalendarList;
    procedure ConnectLiveCalendar;
    procedure ConnectGCalendar;
    procedure NotifyGCalendars();
    procedure FillGoogleCalendars(); virtual;
    procedure FillGoogleCalendarItems(); virtual;
    procedure UpdateGoogleCalendarItem(Const I: Integer);
    procedure LoaGoogleCalendarItemRecord(); virtual;
    procedure FillColors();
    procedure SetColor();
    procedure ToggleControls();
    procedure ToggleReminders();
    procedure ClearControls();
    procedure InitGoogle();
    procedure SetGoogleCalendarColor(out bg, fg: TColor);
    procedure CalcGoogleCalendarColor(const aColor: smallint; out bg, fg: TColor);
    procedure ListAttendees(Item: TGCalendarItem);
    procedure ListReminders(Item: TGCalendarItem);
    procedure PlannerItemDelete(Sender: TObject; Item: TPlannerItem);
    procedure PlannerItemCreated(Sender: TObject; Item: TPlannerItem);
    /// <summary> Creates a Googgle Event from a Calendar Items and stores it to  </summary>
    function CreateGoogleEvent(const aCalendarItem: ITimetable): IGoogleCalendar;
  public
    property PlannerPDFIO: TAdvPlannerPDFIO read FPlannerPDFIO write SetPlannerPDFIO;
    property GooglePlannerPDFIO: TAdvPlannerPDFIO read FGooglePlannerPDFIO write SetGooglePlannerPDFIO;
    property Connected: Boolean read FConnected write SetConnected;
    property Inserting: Boolean read FInserting write SetInserting;
    property StartTimeEnabled: Boolean read FStartTimeEnabled write SetStartTimeEnabled;
    property StartTime: TTime read FStartTime write SetStartTime;
    property EndTime: TTime read FEndTime write SetEndTime;
    property EndTimeEnabled: Boolean read FEndTimeEnabled write SetEndTimeEnabled;
    property CalendarColors: TStrings read FCalendarColors write SetCalendarColors;
    property CalendarColorIndex: Integer read FCalendarColorIndex write SetCalendarColorIndex;
    property DateFrom: TDateTime read FDateFrom write SetDateFrom;
    property DateTo: TDateTime read FDateTo write SetDateTo;
    // ******************** Google Calendar Properties *********************************************
    // Google Calendar
    property GoogleItemUpdateProc: TProc read FGoogleItemUpdateProc write SetGoogleItemUpdateProc;
    property GoogleItemInsertProc: TProc read FGoogleItemInsertProc write SetGoogleItemInsertProc;

    property GoogleCalendarUpdateProc: TProc read FGoogleCalendarUpdateProc write SetGoogleCalendarUpdateProc;
    property GoogleCalendarInsertProc: TProc read FGoogleCalendarInsertProc write SetGoogleCalendarInsertProc;

    property GroupBackColor: TColor read FGroupBackColor write SetGroupBackColor;
    property GroupForeColor: TColor read FGroupForeColor write SetGroupForeColor;
    property AdvGCalendar1: TAdvGCalendar read FAdvGCalendar1 write SetAdvGCalendar1;
    property SelectedGCalendar: TJanuaGCalendar read FSelectedGCalendar write SetSelectedGCalendar;
    property GCalendarItemIndex: Integer read FCalendarItemIndex write SetCalendarItemIndex;
    property GCalendarList: TStrings read FGoogleCalendarList;
    property GCalendarListText: string read GetGCalendarListText;
    property GCalendarName: string read GetCalendarName write SetCalendarName;
    property GCalendarDescription: string read GetCalendarDescription write SetCalendarDescription;
    property GCalendarLocation: string read GetCalendarLocation write SetCalendarLocation;
    property GCalendarTimeZone: string read GetCalendarTimeZone write SetCalendarTimeZone;
    // Calendar Custom Proc/Events
    property SyncGoogleCalendars: TProc read FSyncGoogleCalendars write SetSyncGoogleCalendars;
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
    // Resources / Google Calendars
    property CurrentGCalendar: TGCalendar read Fgcal;
    /// <summary> Prevents updating Calendar Color while inserting/updating data from DB </summary>
    property UpdatingFromDB: Boolean read FUpdatingFromDB write SetUpdatingFromDB;
  end;

var
  dmVCLPlannerCustomController: TdmVCLPlannerCustomController;

implementation

uses VCL.Forms, Windows, Winapi.ShellAPI, Spring, Janua.Application.Framework, Janua.ViewModels.Application,
  udmSVGImageList,
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
  I: Integer;
begin
  FUpdatingFromDB := False;
  FCurrentGoogleItem := TGoogleCalendarEventFactory.CreateRecord('GCalItem');
  vtGoogleCalendars.Open;
  vtGoogleEvents.Open;

  // Google Color Fields
  FGItemColorField := vtGoogleEventsCalcColor;

  // Prepares Calendars Filtering (By Default all Calendars are 'Active');
  FCalendarsList := TStringList.Create;
  FGoogleCalendarList := TStringList.Create;
  GCalendarItemIndex := -1;
  FCalendarsSelList := TStringList.Create;
  FDefaultRemindersList := TStringList.Create;
  DefaultRemindersIndex := -1;
  FCalendarColors := TStringList.Create;
  CalendarColorIndex := -1;

  FCalendarsFilter := True;

  JanuaPlannerController1.Timetable := PlannerEvent;

  AdvLiveCalendar1.App.Key := TJanuaApplication.CloudConf.WinLiveClientID;
  AdvLiveCalendar1.App.Secret := TJanuaApplication.CloudConf.WinLiveClientSecret;

  AdvLiveCalendar1.PersistTokens.Key := '.\livecal.ini';
  AdvLiveCalendar1.PersistTokens.Section := 'winlive';
  AdvLiveCalendar1.PersistTokens.Location := plIniFile;
  AdvLiveCalendar1.LoadTokens;

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
  FCalStartDate := FDateFrom;
  FCalEndDate := IncDay(FDateTo, 90);
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
  FGoogleCalendarList.Free;
  FGoogleCalendarList := nil;
  FCalendarsSelList.Free;
  FCalendarsSelList := nil;
end;

procedure TdmVCLPlannerCustomController.DBDaySourceCalendarFieldsToItem(Sender: TObject; Fields: TFields;
  Item: TPlannerItem);
begin
  { The FieldsToItem event is called when records are read from the database
    and extra properties are set from database fields. With this code, any
    field from the database can be connected in a custom way to planner item
    properties.
  }
  Item.CaptionType := ctTimeText;
  // Fields.FieldByName('COLOR')
  if Assigned(ItemColorField) and (ItemColorField.AsInteger > 0) then
    Item.Color := TColor(ItemColorField.AsInteger);
  Item.CaptionBkg := Item.Color;
  // Fields.FieldByName('IMAGE')
  if Assigned(ItemImageField) and (ItemImageField.AsInteger > -1) then
    Item.ImageID := ItemImageField.AsInteger;
  // Fields.FieldByName('CAPTION')
  if Assigned(ItemCaptionField) then
  begin
    if ItemCaptionField.AsBoolean then
      Item.CaptionType := ctTimeText
    else
      Item.CaptionType := TCaptionType.ctNone;
  end;
end;

procedure TdmVCLPlannerCustomController.DBDaySourceCalendarInsertItem(Sender: TObject;
  APlannerItem: TPlannerItem);
begin
  inherited;
  { property ID: Integer read FID write FID;
    property Focus: Boolean read FFocus write SetFocus;
    property ItemStartTime: TDateTime read GetItemStartTime write SetItemStartTime;
    property ItemEndTime: TDateTime read GetItemEndTime write SetItemEndTime;
    property ItemRealStartTime: TDateTime read GetItemRealStartTime write SetItemRealStartTime;
    property ItemRealEndTime: TDateTime read GetItemRealEndTime write SetItemRealEndTime;
    property ItemStartTimeStr: string read GetItemStartTimeStr;
    property ItemEndTimeStr: string read GetItemEndTimeStr;
    property ItemSpanTimeStr: string read GetItemSpanTimeStr;
    property ItemText: string read GetItemText;
    property StrippedItemText: string read GetStrippedItemText;
    property LinkedItem: TPlannerItem read FLinkedItem write FLinkedItem;
    property DBKey: string read FDBKey write FDBKey;
    property LinkedDBKey: string read FLinkedDBKey write FLinkedDBKey; }

  JShowMessage(Format('On Insert Item %s %s', [APlannerItem.ItemStartTimeStr, APlannerItem.DBKey]));
end;

procedure TdmVCLPlannerCustomController.DBDaySourceCalendarItemToFields(Sender: TObject; Fields: TFields;
  Item: TPlannerItem);
begin
  { The ItemToFields event is called when items are written to the database
    and extra properties are stored in database fields. With this code, any
    property of the item can be saved into any field of the database in
    a custom way to be retrieved later with the inverse event FieldsToItem
  }
  if Assigned(ItemColorField) then
    ItemColorField.AsInteger := Integer(Item.Color);
  if Assigned(ItemCaptionField) then
    ItemCaptionField.AsBoolean := Item.CaptionType = ctTime;
  if Assigned(ItemImageField) then
    ItemImageField.AsInteger := Item.ImageID;
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

procedure TdmVCLPlannerCustomController.DBDaySourceCalendarTimeToFields(Sender: TObject; Fields: TFields;
  dtS, dtE: TDateTime);
begin
  inherited;
  JShowMessage('Time To Fields');
end;

procedure TdmVCLPlannerCustomController.DBDaySourceCalendarUpdateItem(Sender: TObject;
  APlannerItem: TPlannerItem);
begin
  inherited;
  if Assigned(ItemUpdateProc) then
    ItemUpdateProc(APlannerItem)
  else
    JShowMessage(Format('On Update Item %s %s', [APlannerItem.ItemStartTimeStr, APlannerItem.DBKey]))
end;

procedure TdmVCLPlannerCustomController.DBDaySourceGCalendarFieldsToItem(Sender: TObject; Fields: TFields;
  Item: TPlannerItem);
begin
  { The FieldsToItem event is called when records are read from the database
    and extra properties are set from database fields. With this code, any
    field from the database can be connected in a custom way to planner item
    properties.
  }
  Item.CaptionType := ctTimeText;
  // Fields.FieldByName('COLOR')
  if Assigned(GItemColorField) and (GItemColorField.AsInteger > 0) then
    Item.Color := TColor(GItemColorField.AsInteger);
  Item.CaptionBkg := Item.Color;
  // Fields.FieldByName('IMAGE')
  if Assigned(GItemImageField) and (GItemImageField.AsInteger > -1) then
    Item.ImageID := GItemImageField.AsInteger;
  // Fields.FieldByName('CAPTION')
  if Assigned(GItemCaptionField) then
  begin
    if GItemCaptionField.AsBoolean then
      Item.CaptionType := ctTimeText
    else
      Item.CaptionType := TCaptionType.ctNone;
  end;
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
  Fgcal.Summary := SelectedGCalendar.Summary;
  Fgcal.Description := SelectedGCalendar.Description;
  Fgcal.Location := SelectedGCalendar.Location;
  Fgcal.TimeZone := SelectedGCalendar.TimeZone;

  Fgrem := Fgcal.DefaultReminders.Add;
  Fgrem.Method := rmPopup;
  Fgrem.Minutes := 60;

  AdvGCalendar1.AddCalendar(Fgcal);
  FillGoogleCalendars;
end;

procedure TdmVCLPlannerCustomController.actCaptionExecute(Sender: TObject);
begin
  if Assigned(FPlanner) then
  begin
    if FPlanner.PopupPlannerItem.CaptionType = ctTime then
      FPlanner.PopupPlannerItem.CaptionType := TCaptionType.ctNone
    else
      FPlanner.PopupPlannerItem.CaptionType := TCaptionType.ctTime;

    FPlanner.PopupPlannerItem.Update;
  end;
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
begin
  if (GCalendarItemIndex >= 0) then
  begin
    if JMessageDlg('Siete veramente sicuri di voler eliminare questo calendario e tutti i suoi eventi!?!?')
    then
    begin
      Fgcal := GCalendarList.Objects[GCalendarItemIndex] as TGCalendar;
      AdvGCalendar1.DeleteCalendar((Fgcal));
      FillGoogleCalendars;
      ClearControls;
    end;
  end
  else
  begin
    ShowMessage('Selezionate un Calendario o un evento.');
  end;

end;

procedure TdmVCLPlannerCustomController.actFontExecute(Sender: TObject);
begin
  FontDialog1.Font.Assign(Planner.PopupPlannerItem.Font);

  if FontDialog1.Execute then
    Planner.PopupPlannerItem.Font.Assign(FontDialog1.Font);
end;

procedure TdmVCLPlannerCustomController.actUpdateCalendarExecute(Sender: TObject);
begin
  if Assigned(Fgcal) then
  begin
    AdvGCalendar1.UpdateCalendar(Fgcal);
    FillGoogleCalendars;
  end;
end;

procedure TdmVCLPlannerCustomController.actUpdateEventsExecute(Sender: TObject);
begin
  FillGoogleCalendarItems;
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

procedure TdmVCLPlannerCustomController.ActionExportExecute(Sender: TObject);
var
  fn: string;
begin
  if Assigned(PlannerPDFIO) and SaveDialog1.Execute then
  begin
    fn := SaveDialog1.FileName;

    if ExtractFileExt(fn) = '' then
      fn := fn + '.PDF';

    PlannerPDFIO.Save(fn);
    ShellExecute(0, 'open', PChar(fn), nil, nil, SW_SHOWNORMAL);
  end;

end;

procedure TdmVCLPlannerCustomController.ActionPrintExecute(Sender: TObject);
begin
  if PrinterSetupDialog1.Execute then
    FPlanner.Print;
end;

procedure TdmVCLPlannerCustomController.ActionSearchMeetingExecute(Sender: TObject);
begin
  var
  s := JanuaInputText('Inserire testo Ricerca', 'Ricerca Testuale Appuntamenti', '');

  if s <> '' then
  begin
    Planner.Items.UnSelectAll;
    if Planner.Items.FindText(nil, '*' + s + '*', [fnAutoGoto, fnMatchRegular, fnIgnoreHTMLTags, fnText]) = nil
    then
      JShowWarning('Testo ' + s + ' non trovato nel Calendario');
  end;

end;

procedure TdmVCLPlannerCustomController.ActivateCalendar;
begin
  DBDaySourceCalendar.Active := True;
  ActionSearchMeeting.Enabled := DBDaySourceCalendar.Active;
end;

procedure TdmVCLPlannerCustomController.actRemoveAccessExecute(Sender: TObject);
begin
  AdvGCalendar1.ClearTokens;
  Connected := False;
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
  InitGoogle;
end;

procedure TdmVCLPlannerCustomController.CalcGoogleCalendarColor(const aColor: smallint; out bg, fg: TColor);
begin
  if AdvGCalendar1.CalendarColors.Count = 0 then
    AdvGCalendar1.GetColors;

  if bg = 0 then
  begin
    for var I := 0 to AdvGCalendar1.CalendarColors.Count - 1 do
    begin
      if Ord(Fgcal.Color) = AdvGCalendar1.CalendarColors[I].ID then
      begin
        if bg = 0 then
          bg := AdvGCalendar1.CalendarColors[I].BackgroundColor;
        if fg = 0 then
          fg := AdvGCalendar1.CalendarColors[I].ForegroundColor;
      end;
    end;
  end;
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
    AdvGCalendar1.RefreshAccess;

  if not AdvGCalendar1.TestTokens then
    AdvGCalendar1.DoAuth
  else
    InitGoogle;

  {
    if not AdvGCalendar1.TestTokens then
    begin
    AdvGCalendar1.RefreshAccess;
    if not AdvGCalendar1.TestTokens then
    AdvGCalendar1.DoAuth;
    GetGCalendarList;
    end
    else
    GetGCalendarList;

    InitGoogle;
  }
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

function TdmVCLPlannerCustomController.CreateGoogleEvent(const aCalendarItem: ITimetable): IGoogleCalendar;
begin

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

procedure TdmVCLPlannerCustomController.LoaGoogleCalendarItemRecord;
begin
  FCurrentGoogleItem.DirectLoadFromDataset(vtGoogleEvents);
end;

procedure TdmVCLPlannerCustomController.FillGoogleCalendarItems;
var
  I: Integer;
  rem: string;
begin
  Screen.Cursor := crHourGlass;

  if Assigned(Fgcal) then
  begin
    AdvGCalendar1.GetCalendar(Fgcal.ID, GCalStartDate, GCalEndDate);

    for I := 0 to AdvGCalendar1.Items.Count - 1 do
    begin
      if not vtGoogleEvents.Locate('ID', AdvGCalendar1.Items[I].ID, []) then
      begin
        vtGoogleEvents.Append;
        // edID.Text := gcal.ID;    edEtag.Text := gcal.
        vtGoogleEventsID.AsString := AdvGCalendar1.Items[I].ID;
        vtGoogleEventsETAG.AsString := AdvGCalendar1.Items[I].ETag;
        var
        lGUID := TGUID.Empty;
        CreateGUID(lGUID);
        vtGoogleEventsJGUID.AsGUID := lGUID;
        UpdateGoogleCalendarItem(I);
        vtGoogleEvents.Post;
{$IFDEF DEBUG}
        var
        vTest := vtGoogleEventsCOLOR.AsInteger;
{$ENDIF}
        if Assigned(FGoogleItemInsertProc) then
          FGoogleItemInsertProc;
      end
      else
      begin
        var
        vTest := (vtGoogleEventsSTARTTIME.AsDateTime <> AdvGCalendar1.Items[I].StartTime) or
          (vtGoogleEventsENDTIME.AsDateTime <> AdvGCalendar1.Items[I].EndTime) or
          (vtGoogleEventsSUMMARY.AsString <> AdvGCalendar1.Items[I].Summary) or
          (vtGoogleEventsLOCATION.AsString <> AdvGCalendar1.Items[I].Location) or
          (vtGoogleEventsCALENDARID.AsString <> AdvGCalendar1.Items[I].CalendarID);
        if vTest then
        begin
          vtGoogleEvents.Edit;
          UpdateGoogleCalendarItem(I);
          vtGoogleEvents.Post;
          // ItemUpdateProc
          if Assigned(FGoogleItemUpdateProc) then
            FGoogleItemUpdateProc;
        end;
      end;
    end;
  end;
  Screen.Cursor := crDefault;
end;

procedure TdmVCLPlannerCustomController.FillGoogleCalendars;
var
  I: Integer;
  isPrimary: string;
  bg: TColor;
  fg: TColor;
begin
  CloudCalendar := ccGoogle;
  AdvGCalendar1.GetCalendars();

  DBDaySourceGCalendar.Active := False;
  DBDaySourceGCalendar.Day := Now;

  var
  PlannerPosition := 0;

  if not vtGoogleCalendars.Active then
    vtGoogleCalendars.Open;

  FGoogleCalendarList.Clear;

  if AdvGCalendar1.Calendars.Count > 0 then
  begin
    for I := 0 to AdvGCalendar1.Calendars.Count - 1 do
    begin
      Fgcal := AdvGCalendar1.Calendars[I];
      if Fgcal.Primary then
        isPrimary := ' (Primary)'
      else
        isPrimary := '';

      if not vtGoogleCalendars.Locate('ID', Fgcal.ID, []) then
      begin
        vtGoogleCalendars.Append;
        vtGoogleCalendars.FieldByName('ID').Value := Fgcal.ID;
        vtGoogleCalendars.FieldByName('DESCRIPTION').Text := Fgcal.Description;
        vtGoogleCalendars.FieldByName('LOCATION').AsString := Fgcal.Location;
        vtGoogleCalendars.FieldByName('SUMMARY').AsString := Fgcal.Summary;
        vtGoogleCalendars.FieldByName('PRIMARY').AsBoolean := Fgcal.Primary;
        vtGoogleCalendars.FieldByName('TIMEZONE').AsString := Fgcal.TimeZone;
        vtGoogleCalendars.FieldByName('COLOR').Value := Ord(Fgcal.Color);
        vtGoogleCalendars.FieldByName('FORE_COLOR').AsInteger := fg;
        vtGoogleCalendars.FieldByName('BACK_COLOR').AsInteger := bg;
        vtGoogleCalendars.Post;
        if Assigned(FGoogleCalendarInsertProc) then
          FGoogleCalendarInsertProc;
      end;

      var
      lCalAlias := vtGoogleCalendars.FieldByName('ALIAS').AsString;
      lCalAlias := IfThen(lCalAlias.IsEmpty, Fgcal.Summary, lCalAlias);

      FGoogleCalendarList.addObject(lCalAlias + isPrimary, AdvGCalendar1.Calendars[I]);

      With DBDaySourceCalendar.ResourceMap.Add Do
      Begin
        ResourceIndex := PlannerPosition;
        PositionIndex := PlannerPosition;
        DisplayName := lCalAlias;
        inc(PlannerPosition);
      End;

      FillGoogleCalendarItems;
    end;
    GCalendarItemIndex := 0;
  end
  else
    GCalendarItemIndex := -1;

  DBDaySourceGCalendar.NumberOfResources := PlannerPosition;
  DBDaySourceGCalendar.Active := True;
  NotifyGCalendars;
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
  FillGoogleCalendarItems;
end;

function TdmVCLPlannerCustomController.GetCalendarDescription: string;
begin
  if Assigned(Fgcal) then
    Result := Fgcal.Description;
end;

function TdmVCLPlannerCustomController.GetCalendarLocation: string;
begin
  if Assigned(Fgcal) then
    Result := Fgcal.Location;
end;

function TdmVCLPlannerCustomController.GetCalendarName: string;
begin
  if Assigned(Fgcal) then
    Result := Fgcal.Summary;
end;

function TdmVCLPlannerCustomController.GetCalendarsListText: string;
begin
  if Assigned(CalendarsList) then
    Result := CalendarsList.Text;
end;

function TdmVCLPlannerCustomController.GetCalendarTimeZone: string;
begin
  if Assigned(Fgcal) then
    Result := Fgcal.TimeZone;
end;

function TdmVCLPlannerCustomController.GetGCalendarListText: string;
begin
  Result := FGoogleCalendarList.Text;
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

procedure TdmVCLPlannerCustomController.InitGoogle;
begin
  Connected := True;
  FillGoogleCalendars;
  FillGoogleCalendarItems;
  FillColors;
  ToggleControls;
  if Assigned(FSyncGoogleCalendars) then
    FSyncGoogleCalendars;
  NotifyGCalendars;
end;

procedure TdmVCLPlannerCustomController.ListAttendees(Item: TGCalendarItem);
var
  att: string;
  I: Integer;
begin
  att := '';
  FCalEventsAttendees.Clear;

  for I := 0 to Item.Attendees.Count - 1 do
    FCalEventsAttendees.AddAttendee(Item.Attendees[I].Summary, Item.Attendees[I].Email,
      JanuaAttendeeGoogleStatus[Item.Attendees[I].Status]);

  vtGoogleEvents.Edit;
  vtGoogleEventsAttendees.AsString := FCalEventsAttendees.AsJson;

end;

procedure TdmVCLPlannerCustomController.ListReminders(Item: TGCalendarItem);
var
  rem: string;
  I: Integer;
begin
  rem := '';
  FReminders.Clear;
  vtGoogleEvents.Edit;
  vtGoogleEventsUSEDEFAULTREMINDERS.AsBoolean := Item.UseDefaultReminders;
  vtGoogleEvents.Post;

  for I := 0 to Item.Reminders.Count - 1 do
    FReminders.AddReminder(Item.Reminders[I].Minutes, JanuaReminderMethods[Item.Reminders[I].Method]);

  ToggleReminders;

end;

procedure TdmVCLPlannerCustomController.NotifyGCalendars;
begin
  Notify('GCalendarName');
  Notify('GCalendarDescription');
  Notify('GCalendarLocation');
  Notify('GCalendarTimeZone');
  Notify('GCalendarItemIndex');
end;

procedure TdmVCLPlannerCustomController.PlannerItemCreated(Sender: TObject; Item: TPlannerItem);
begin
  if Assigned(FItemCreatedProc) then
    FItemCreatedProc(Item)
  else
  begin
    var
    aMessage := Format('Creato Appuntamento alle ore: %s, codice: %i', [Item.ItemStartTimeStr, Item.ID]);
    ShowMessage(aMessage);
  end;
end;

procedure TdmVCLPlannerCustomController.PlannerItemDblClick(Sender: TObject; Item: TPlannerItem);
begin
  EditEvent;
end;

procedure TdmVCLPlannerCustomController.PlannerItemDelete(Sender: TObject; Item: TPlannerItem);
begin
  {
    the Planner.FreeItem call removes the item from the planner and deletes
    its entry from the database
  }
  var
  lDelBool := False;

  if Assigned(DeleteItemFunc) then
    lDelBool := DeleteItemFunc(Item)
  else
  begin
    lDelBool := JMessageDlg(Format('Elimino appuntamento %s delle ore %s relativo a: %s',
      [Item.DBKey, Item.ItemStartTimeStr, Item.ItemText]));
  end;

  if lDelBool then
    Item.Free;

  { if Assigned(FCustomController) then
    FCustomController.DeleteItem(Item); }
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

procedure TdmVCLPlannerCustomController.SetAdvGCalendar1(const Value: TAdvGCalendar);
begin
  FAdvGCalendar1 := Value;
  if Assigned(FAdvGCalendar1) then
  begin
    AdvGCalendar1.App.Key := TJanuaApplication.CloudConf.GoogleAppKey;
    AdvGCalendar1.App.Secret := TJanuaApplication.CloudConf.GoogleAppSecret;

    AdvGCalendar1.PersistTokens.Location := plIniFile;
    AdvGCalendar1.PersistTokens.Key := 'C:\Phoenix\tokens.ini';
    AdvGCalendar1.PersistTokens.Section := 'google_janua';
    AdvGCalendar1.OnReceivedAccessToken := AdvGCalendar1ReceivedAccessToken;
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

procedure TdmVCLPlannerCustomController.SetGItemCaptionField(const Value: TField);
begin
  FGItemCaptionField := Value;
end;

procedure TdmVCLPlannerCustomController.SetGItemColorField(const Value: TField);
begin
  FGItemColorField := Value;
end;

procedure TdmVCLPlannerCustomController.SetGItemImageField(const Value: TField);
begin
  FGItemImageField := Value;
end;

procedure TdmVCLPlannerCustomController.SetGoogleCalendarColor(out bg, fg: TColor);
begin
  bg := 0;
  fg := 0;

  if Fgcal.BackgroundColor <> clNone then
    bg := Fgcal.BackgroundColor;
  if Fgcal.ForegroundColor <> clNone then
    fg := Fgcal.ForegroundColor;

  CalcGoogleCalendarColor(Ord(Fgcal.Color), bg, fg);

  GroupBackColor := bg;
  GroupForeColor := fg;
end;

procedure TdmVCLPlannerCustomController.SetGoogleCalendarInsertProc(const Value: TProc);
begin
  FGoogleCalendarInsertProc := Value;
end;

procedure TdmVCLPlannerCustomController.SetGoogleCalendarUpdateProc(const Value: TProc);
begin
  FGoogleCalendarUpdateProc := Value;
end;

procedure TdmVCLPlannerCustomController.SetGoogleItemInsertProc(const Value: TProc);
begin
  FGoogleItemInsertProc := Value;
end;

procedure TdmVCLPlannerCustomController.SetGoogleItemUpdateProc(const Value: TProc);
begin
  FGoogleItemUpdateProc := Value;
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
  if FCalendarItemIndex <> Value then
  begin
    FCalendarItemIndex := Value;
    if Value >= 0 then
    begin
      Fgcal := (FGoogleCalendarList.Objects[Value] as TGCalendar);
      if Assigned(Fgcal) then
      begin
        SetGoogleCalendarColor(FGroupBackColor, FGroupForeColor);
        // Per prima cosa imposto delle variabili 'interne' in base al Calendario ma domanda
        // Ha 'senso'? Mi spiego ho selezionato un Calendario nella Lista con index >= 0
        // Quindi se CalendarItemIndex è una proprietà Allora anche il calendario 'Selezionato' Diventa
        // una property ... cambiamo quindi un attimo il 'gioco'.

        // Default Reminders
        DefaultRemindersList.Clear;

        for var I := 0 to Fgcal.DefaultReminders.Count - 1 do
        begin
          var
          rem := '';
          case Fgcal.DefaultReminders[I].Method of
            rmPopup:
              rem := 'popup';
            rmEmail:
              rem := 'email';
            rmSMS:
              rem := 'sms';
          end;
          DefaultRemindersList.Add(rem + ' ' + IntToStr(Fgcal.DefaultReminders[I].Minutes) + ' minutes')
        end;

        if DefaultRemindersList.Count > 0 then
          DefaultRemindersIndex := 0;
      end;
    end
    else
      Fgcal := nil;
    NotifyGCalendars;
  end;
end;

procedure TdmVCLPlannerCustomController.SetCalendarList(const Value: TStrings);
begin
  FGoogleCalendarList := Value;
end;

procedure TdmVCLPlannerCustomController.SetCalendarLocation(const Value: string);
begin
  FCalendarLocation := Value;
end;

procedure TdmVCLPlannerCustomController.SetCalendarName(const Value: string);
begin
  FCalendarName := Value;
end;

procedure TdmVCLPlannerCustomController.SetCalendarsFilter(const Value: Boolean);
begin
  if FCalendarsFilter <> Value then
  begin
    FCalendarsFilter := Value;
    SelectCalendars;
  end;
end;

procedure TdmVCLPlannerCustomController.SetCalendarsList(const Value: TStrings);
begin
  FCalendarsList := Value;
end;

procedure TdmVCLPlannerCustomController.SetCalendarsListText(const Value: string);
begin

end;

procedure TdmVCLPlannerCustomController.SetCalendarsSelList(const Value: TStrings);
begin
  FCalendarsSelList := Value;
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
  I: Integer;
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
      gcal := (FGoogleCalendarList.Objects[FCalendarColorIndex] as TGCalendar);

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
  Planner := TPlanner(FDBPlanner);
  if Assigned(FDBPlanner) then
  begin

  end;
end;

procedure TdmVCLPlannerCustomController.SetDefaultRemindersIndex(const Value: Integer);
begin
  FDefaultRemindersIndex := Value;
end;

procedure TdmVCLPlannerCustomController.SetDefaultRemindersList(const Value: TStrings);
begin
  FDefaultRemindersList := Value;
end;

procedure TdmVCLPlannerCustomController.SetDeleteItemFunc(const Value: TItemFunc);
begin
  FDeleteItemFunc := Value;
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

procedure TdmVCLPlannerCustomController.SetGooglePlannerPDFIO(const Value: TAdvPlannerPDFIO);
begin
  FGooglePlannerPDFIO := Value;
end;

procedure TdmVCLPlannerCustomController.SetGroupBackColor(const Value: TColor);
begin
  FGroupBackColor := Value;
end;

procedure TdmVCLPlannerCustomController.SetGroupForeColor(const Value: TColor);
begin
  FGroupForeColor := Value;
end;

procedure TdmVCLPlannerCustomController.SetInserting(const Value: Boolean);
begin
  FInserting := Value;
end;

procedure TdmVCLPlannerCustomController.SetItemCaptionField(const Value: TField);
begin
  FItemCaptionField := Value;
end;

procedure TdmVCLPlannerCustomController.SetItemColorField(const Value: TField);
begin
  FItemColorField := Value;
end;

procedure TdmVCLPlannerCustomController.SetItemCreatedProc(const Value: TItemProc);
begin
  FItemCreatedProc := Value;
end;

procedure TdmVCLPlannerCustomController.SetItemImageField(const Value: TField);
begin
  FItemImageField := Value;
end;

procedure TdmVCLPlannerCustomController.SetItemInsertProc(const Value: TProc);
begin
  FItemInsertProc := Value;
end;

procedure TdmVCLPlannerCustomController.SetItemModifyFunc(const Value: TItemFunc);
begin
  FItemModifyFunc := Value;
end;

procedure TdmVCLPlannerCustomController.SetItemUpdateProc(const Value: TItemProc);
begin
  FItemUpdateProc := Value;
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
  if Assigned(FPlanner) then
  begin
    FPlanner.OnItemDelete := PlannerItemDelete;
    // Code for DBPlannerItemCreated (from here we can launch the Display Setup Dialog);
    FPlanner.OnItemCreated := PlannerItemCreated;
    if not(FPlanner is TDBPlanner) then
    begin
      FPlanner.Positions := 7;
      FPlanner.Header.Captions.Clear;
      FPlanner.Header.Captions.Add('');

      for var I := 0 to 6 do
        FPlanner.Header.Captions.Add(datetostr(Now + I));
    end;
  end;

end;

procedure TdmVCLPlannerCustomController.SetPlannerEvent(const Value: ITimetable);
begin
  FPlannerEvent := Value;
end;

procedure TdmVCLPlannerCustomController.SetPlannerPDFIO(const Value: TAdvPlannerPDFIO);
begin
  FPlannerPDFIO := Value;
end;

procedure TdmVCLPlannerCustomController.SetSelectedGCalendar(const Value: TJanuaGCalendar);
begin
  FSelectedGCalendar := Value;
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

procedure TdmVCLPlannerCustomController.SetSyncGoogleCalendars(const Value: TProc);
begin
  FSyncGoogleCalendars := Value;
end;

procedure TdmVCLPlannerCustomController.SetUpdatingFromDB(const Value: Boolean);
begin
  FUpdatingFromDB := Value;
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

procedure TdmVCLPlannerCustomController.UpdateGoogleCalendarItem(const I: Integer);
begin
  vtGoogleEventsCOLOR.Value := Ord(Fgcal.Color);
  vtGoogleEventsBackColor.AsInteger := Fgcal.BackgroundColor;
  vtGoogleEventsCALENDARID.AsString := AdvGCalendar1.Items[I].CalendarID;
  vtGoogleEventsSTARTTIME.AsDateTime := AdvGCalendar1.Items[I].StartTime;
  vtGoogleEventsENDTIME.AsDateTime := AdvGCalendar1.Items[I].EndTime;
  vtGoogleEventsSUMMARY.AsString := AdvGCalendar1.Items[I].Summary;
  vtGoogleEventsDESCRIPTION.AsString := AdvGCalendar1.Items[I].Description;
  vtGoogleEventsCREATED.AsDateTime := AdvGCalendar1.Items[I].Created;
  vtGoogleEventsUPDATED.AsDateTime := AdvGCalendar1.Items[I].Updated;
  vtGoogleEventsISALLDAY.AsBoolean := AdvGCalendar1.Items[I].IsAllDay;
  // IfThen(AdvGCalendar1.Items[i].IsAllDay , 'T', 'F');
  vtGoogleEventsLOCATION.AsString := AdvGCalendar1.Items[I].Location;
  vtGoogleEventsSTATUS.AsInteger := Ord(AdvGCalendar1.Items[I].Status);
  vtGoogleEventsVISIBILITY.AsInteger := Ord(AdvGCalendar1.Items[I].Visibility);
  vtGoogleEventsRECURRENCE.AsString := AdvGCalendar1.Items[I].Recurrence;
  { TODO : Gestire gli Attendees in base all'Item Selezionato AdvGCalendar1.Items[i].Attendees; }
  vtGoogleEventsAttendees.AsString := '';
  { TODO : Gestire i Reminders in base all'Item Selezionato AdvGCalendar1.Items[i].Reminders; }
  vtGoogleEventsReminders.AsString := '';
end;

procedure TdmVCLPlannerCustomController.vtGoogleEventsAfterScroll(DataSet: TDataSet);
begin
  LoaGoogleCalendarItemRecord;
end;

procedure TdmVCLPlannerCustomController.vtGoogleEventsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not UpdatingFromDB then
  begin
    var
    fg := TColor(0);
    var
    bg := TColor(0);

    CalcGoogleCalendarColor(vtGoogleEventsCOLOR.Value, bg, fg);

    if vtGoogleEventsBackColor.Value = 0 then
      vtGoogleEventsCalcColor.Value := bg
    else
      vtGoogleEventsCalcColor.Value := vtGoogleEventsBackColor.Value;
  end;
end;

end.
