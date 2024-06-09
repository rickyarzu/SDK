unit Janua.VCL.Planner.dmCustomController;

interface

uses
  // System
  System.SysUtils, System.Classes, System.Actions, System.Bindings.Helper, System.ImageList, Data.DB,
  System.UITypes, System.DateUtils,
  // VCL
  VCL.ActnList, VCL.ImgList, VCL.Controls, SVGIconImageListBase, SVGIconImageList, VCL.Dialogs,
  // Planner
  AdvPDFIO, AdvPlannerPDFIO, Planner, DBPlanner,
  // Cloud
  CloudCustomGoogle, CloudGoogleWin, CloudCustomGCalendar, CloudGCalendar, CloudBase, CloudBaseWin,
  CloudCustomLive, CloudLiveWin, CloudCustomLiveCalendar, CloudLiveCalendar, CloudCustomOutlook,
  CloudOutlookWin, CloudCustomOutlookCalendar, CloudOutlookCalendar, CloudWebDav, CloudvCal,
  PlanExGCalendar, PlanExLiveCalendar,
  // Januaproject
  Janua.Bindings.Intf, Janua.Core.Types, JOrm.Planner.Timetable.Intf, Janua.Controls.Forms.Intf,
  Janua.VCL.Interposers, Janua.Core.Classes.Intf, Janua.Orm.Intf, Janua.Controls.Intf, Janua.Core.Classes,
  Janua.Components.Planner, Janua.Core.Commons, Janua.Cloud.Conf, PictureContainer;

type
  TCloudCalendar = (ccWinLive, ccGoogle);

type
  TdmVCLPlannerCustomController = class(TDataModule)
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
    DBDaySource1: TDBDaySource;
    actUpdateEvents: TAction;
    PictureContainer1: TPictureContainer;
    SVGIconImageListIt: TSVGIconImageList;
    ColorDialog1: TColorDialog;
    actColor: TAction;
    actCaption: TAction;
    Action2: TAction;
    procedure DataModuleCreate(Sender: TObject);
    procedure ActionAddUserExecute(Sender: TObject);
    procedure ActionPrintExecute(Sender: TObject);
    procedure ActionAddActivityExecute(Sender: TObject);
    procedure ActionAddMeetingExecute(Sender: TObject);
    procedure actConnectExecute(Sender: TObject);
    procedure actRemoveAccessExecute(Sender: TObject);
    procedure actAddCalendarExecute(Sender: TObject);
    procedure actUpdateCalendarExecute(Sender: TObject);
    procedure DBDaySource1SetFilter(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure GCalendarButtonsExecute(Action: TBasicAction; var Handled: Boolean);
    procedure DBDaySource1FieldsToItem(Sender: TObject; Fields: TFields; Item: TPlannerItem);
    procedure DBDaySource1ItemToFields(Sender: TObject; Fields: TFields; Item: TPlannerItem);
    procedure actColorExecute(Sender: TObject);
    procedure actCaptionExecute(Sender: TObject);
    procedure PlannerItemDblClick(Sender: TObject; Item: TPlannerItem);
    procedure PlannerItemInsert(Sender: TObject; Position, FromSel, FromSelPrecise, ToSel,
      ToSelPrecise: Integer);
    procedure PlannerItemImageClick(Sender: TObject; Item: TPlannerItem; ImageIndex: Integer); virtual;
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
    procedure EditEvent;
    /// <summary> Tries to Add an Event using ITimetable interface. </summary>
    /// <remarks> If fails throws an exception and rollbacks dataset posts </remarks>
    procedure AddEvent;
    // ****************************************** Calendar Sync Procedures ******************************
    procedure Setup; virtual; abstract;
    procedure Filter;
    procedure UndoMeeting;
  private
    Fgcal: TGCalendar;
    Fgrem: TGReminder;
    FCalendarList: TStrings;
    FCalendarItemIndex: Integer;
    FSelectedCalendar: TJanuaGCalendar;
    FDateTo: TDateTime;
    FDateFrom: TDateTime;
    procedure SetCalendarItemIndex(const Value: Integer);
    procedure SetCalendarList(const Value: TStrings);
    procedure SetSelectedCalendar(const Value: TJanuaGCalendar);
    procedure SetDateFrom(const Value: TDateTime);
    procedure SetDateTo(const Value: TDateTime);
  protected
    function OpenCalendar(const aDateFrom, aDateTo: TDateTime): Integer; virtual; abstract;
    procedure AddActivity; virtual; abstract;
  public
    { Public declarations }
    procedure GetGCalendarList;
    procedure GetLiveCalendarList;
    procedure ConnectLiveCalendar;
    procedure ConnectGCalendar;
    procedure FillCalendars();
    procedure FillCalendarItems();
    procedure FillCalendarItemDetails();
    procedure FillColors();
    procedure SetColor();
    procedure ToggleControls();
    procedure ToggleReminders();
    procedure ClearControls();
    procedure Init();
  public
    property Connected: Boolean read FConnected write SetConnected;
    property Inserting: Boolean read FInserting write SetInserting;
    property StartTimeEnabled: Boolean read FStartTimeEnabled write SetStartTimeEnabled;
    property StartTime: TTime read FStartTime write SetStartTime;
    property EndTime: TTime read FEndTime write SetEndTime;
    property EndTimeEnabled: Boolean read FEndTimeEnabled write SetEndTimeEnabled;
    property CalendarItemIndex: Integer read FCalendarItemIndex write SetCalendarItemIndex;
    property CalendarList: TStrings read FCalendarList write SetCalendarList;
    property SelectedCalendar: TJanuaGCalendar read FSelectedCalendar write SetSelectedCalendar;
    property DateFrom: TDateTime read FDateFrom write SetDateFrom;
    property DateTo: TDateTime read FDateTo write SetDateTo;
  end;

var
  dmVCLPlannerCustomController: TdmVCLPlannerCustomController;

implementation

uses Spring, Janua.Application.Framework, Janua.ViewModels.Application, udmSVGImageList,
  Janua.VCL.Functions, Janua.Core.AsyncTask, Janua.Orm.Impl,
  udlgVCLPlannerEvent, Janua.Orm.Types, Janua.Core.Functions;

{ udmPgPlannerStorage, udlgVCLPlannerAnagraph, udlgVCLPlannerActivities, }

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TdmVCLPlannerCustomController.DataModuleCreate(Sender: TObject);
var
  i: Integer;
begin
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

  DBDaySource1.NumberOfResources := OpenCalendar(FDateFrom, FDateTo);
  DBDaySource1.Active := True;
end;

procedure TdmVCLPlannerCustomController.DataModuleDestroy(Sender: TObject);
begin
  FCalendarList.Free;
  FCalendarList := nil;
end;

procedure TdmVCLPlannerCustomController.DBDaySource1FieldsToItem(Sender: TObject; Fields: TFields;
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

procedure TdmVCLPlannerCustomController.DBDaySource1ItemToFields(Sender: TObject; Fields: TFields;
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

procedure TdmVCLPlannerCustomController.DBDaySource1SetFilter(Sender: TObject);
var
  sd1, sd2: string;
begin
  { Before the planner needs to be reloaded with records from the database
    a custom filter can be applied to minimize the nr. of records the planner
    must check to load into the planner.
  }
  sd1 := datetostr(DBDaySource1.Day);
  sd1 := #39 + sd1 + #39;

  sd2 := datetostr(DBDaySource1.Day + 7);
  sd2 := #39 + sd2 + #39;
  (*
    PlannerTable.Filter:=  'STARTTIME > '+sd1+' AND ENDTIME < '+sd2;
    PlannerTable.Filtered := DoFilter.Checked;
  *)
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

procedure TdmVCLPlannerCustomController.ActionAddActivityExecute(Sender: TObject);
begin
  AddActivity;
  (*

    var
    lDlg: TdlgVCLPlannerActivities;
    begin
    lDlg := TdlgVCLPlannerActivities.Create(Self);
    try
    TJanuaApplication.WindowsManager.ShowOverlay;
    lDlg.ShowModal;
    dmPgPlannerStorage.PostActivities;
    TJanuaApplication.WindowsManager.HideOverlay;
    finally
    FreeAndNil(lDlg);
    end;

  *)
end;

procedure TdmVCLPlannerCustomController.ActionAddMeetingExecute(Sender: TObject);
begin
  AddEvent;
end;

procedure TdmVCLPlannerCustomController.ActionAddUserExecute(Sender: TObject);
begin

  (*
    var
    lDlg: TdlgVCLPlannerAnagraph;
    begin
    lDlg := TdlgVCLPlannerAnagraph.Create(Self);
    try
    TJanuaApplication.WindowsManager.ShowOverlay;
    lDlg.ShowModal;
    dmPgPlannerStorage.PostAnagraph;
    TJanuaApplication.WindowsManager.HideOverlay;
    finally
    FreeAndNil(lDlg);
    end;
  *)
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

end;

procedure TdmVCLPlannerCustomController.FillCalendarItems;
begin

end;

procedure TdmVCLPlannerCustomController.FillCalendars;
begin

end;

procedure TdmVCLPlannerCustomController.FillColors;
begin

end;

procedure TdmVCLPlannerCustomController.Filter;
begin

end;

procedure TdmVCLPlannerCustomController.GCalendarButtonsExecute(Action: TBasicAction; var Handled: Boolean);
begin
  FillCalendarItems;
end;

procedure TdmVCLPlannerCustomController.GetGCalendarList;
begin

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
    Text.Text := 'Creato Evento il ' + Formatdatetime('hh:nn dd/mm/yyyy', Now);
    Update;
  end;
end;

procedure TdmVCLPlannerCustomController.SetCalendarItemIndex(const Value: Integer);
begin
  FCalendarItemIndex := Value;
end;

procedure TdmVCLPlannerCustomController.SetCalendarList(const Value: TStrings);
begin
  FCalendarList := Value;
end;

procedure TdmVCLPlannerCustomController.SetCloudCalendar(const Value: TCloudCalendar);
begin
  FCloudCalendar := Value;
end;

procedure TdmVCLPlannerCustomController.SetColor;
begin

end;

procedure TdmVCLPlannerCustomController.SetColorField(const Value: TField);
begin
  FColorField := Value;
end;

procedure TdmVCLPlannerCustomController.SetConnected(const Value: Boolean);
begin
  FConnected := Value;
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

procedure TdmVCLPlannerCustomController.SetEndTime(const Value: TTime);
begin
  FEndTime := Value;
end;

procedure TdmVCLPlannerCustomController.SetEndTimeEnabled(const Value: Boolean);
begin
  FEndTimeEnabled := Value;
end;

procedure TdmVCLPlannerCustomController.SetInserting(const Value: Boolean);
begin
  FInserting := Value;
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

procedure TdmVCLPlannerCustomController.ToggleControls;
begin

end;

procedure TdmVCLPlannerCustomController.ToggleReminders;
begin

end;

procedure TdmVCLPlannerCustomController.UndoMeeting;
begin

end;

end.
