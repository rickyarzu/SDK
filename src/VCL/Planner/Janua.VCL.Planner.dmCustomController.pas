unit Janua.VCL.Planner.dmCustomController;

interface

uses
  // System
  System.SysUtils, System.Classes, System.Actions, System.Bindings.Helper, System.ImageList, Data.DB,
  // VCL
  VCL.ActnList, VCL.ImgList, VCL.Controls, SVGIconImageListBase, SVGIconImageList, VCL.Dialogs,
  // Planner
  AdvPDFIO, AdvPlannerPDFIO, Planner,
  // Cloud
  CloudCustomGoogle, CloudGoogleWin, CloudCustomGCalendar, CloudGCalendar, CloudBase, CloudBaseWin,
  CloudCustomLive, CloudLiveWin, CloudCustomLiveCalendar, CloudLiveCalendar, CloudCustomOutlook,
  CloudOutlookWin, CloudCustomOutlookCalendar, CloudOutlookCalendar, CloudWebDav, CloudvCal,
  // Januaproject
  Janua.Bindings.Intf, Janua.Core.Types, JOrm.Planner.Timetable.Intf, Janua.Controls.Forms.Intf,
  Janua.VCL.Interposers, Janua.Core.Classes.Intf, Janua.Orm.Intf, Janua.Controls.Intf, Janua.Core.Classes,
  Janua.Components.Planner, Janua.Core.Commons, PlanExGCalendar, PlanExLiveCalendar;

type
  TCloudCalendar = (ccWinLive, ccGoogle);

type
  TdmVCLPlannerCustomController = class(TDataModule)
    SVGIconImageList1: TSVGIconImageList;
    ActionList1: TActionList;
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
    procedure DataModuleCreate(Sender: TObject);
    procedure ActionAddUserExecute(Sender: TObject);
    procedure ActionPrintExecute(Sender: TObject);
    procedure ActionAddActivityExecute(Sender: TObject);
    procedure ActionAddMeetingExecute(Sender: TObject);
  private
    FPlanner: TPlanner;
    procedure SetPlanner(const Value: TPlanner);
    procedure PostEvent;
    { Private declarations }
  public
    { Public declarations }
    property Planner: TPlanner read FPlanner write SetPlanner;
    // ****************************************** TMS Cloud Calendar ******************************
  private
    FCloudCalendar: TCloudCalendar;
    FPlannerEvent: ITimetable;
    FColorField: TField;
    FSubjectField: TField;
    function GetPlannerEvent: ITimetable;
    procedure SetCloudCalendar(const Value: TCloudCalendar);
    procedure SetPlannerEvent(const Value: ITimetable);
    procedure SetColorField(const Value: TField);
    procedure SetSubjectField(const Value: TField);
  protected
    function DialogEvent: boolean;
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
  public
    { Public declarations }
    procedure GetGCalendarList;
    procedure GetLiveCalendarList;
    procedure ConnectLiveCalendar;
    procedure ConnectGCalendar;
  end;

var
  dmVCLPlannerCustomController: TdmVCLPlannerCustomController;

implementation

uses Spring, Janua.Application.Framework, Janua.ViewModels.Application, udmPgPlannerStorage,
  udlgVCLPlannerAnagraph, udlgVCLPlannerActivities, udlgVCLPlannerEvent, Janua.Orm.Types, Janua.Orm.Impl,
  Janua.Core.Functions;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TdmVCLPlannerCustomController.DataModuleCreate(Sender: TObject);
var
  i: integer;
begin
  JanuaPlannerController1.Timetable := PlannerEvent;
  AdvLiveCalendar1.App.Key := LiveAppKey;
  AdvLiveCalendar1.App.Secret := LiveAppSecret;

  AdvGCalendar1.App.Key := GAppKey;
  AdvGCalendar1.App.Secret := GAppSecret;

  AdvLiveCalendar1.PersistTokens.Key := '.\livecal.ini';
  AdvLiveCalendar1.PersistTokens.Section := 'winlive';
  AdvLiveCalendar1.PersistTokens.Location := plIniFile;

  AdvGCalendar1.PersistTokens.Key := '.\livecal.ini';
  AdvGCalendar1.PersistTokens.Section := 'google';
  AdvGCalendar1.PersistTokens.Location := plIniFile;

  AdvLiveCalendar1.LoadTokens;
  AdvGCalendar1.LoadTokens;

  Planner1.Positions := 7;
  Planner1.Header.Captions.Clear;
  Planner1.Header.Captions.Add('');
  for i := 0 to 6 do
    Planner1.Header.Captions.Add(datetostr(Now + i));
end;

procedure TdmVCLPlannerCustomController.ActionAddActivityExecute(Sender: TObject);
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
end;

procedure TdmVCLPlannerCustomController.ActionAddMeetingExecute(Sender: TObject);
begin
  Self.AddEvent;
end;

procedure TdmVCLPlannerCustomController.ActionAddUserExecute(Sender: TObject);
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
end;

procedure TdmVCLPlannerCustomController.ActionPrintExecute(Sender: TObject);
begin
  if PrinterSetupDialog1.Execute then
    FPlanner.Print;
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

procedure TdmVCLPlannerCustomController.ConnectGCalendar;
begin
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

procedure TdmVCLPlannerCustomController.PostEvent;
begin
  try
    PlannerEvent.DirectSaveToDataset(dmPgPlannerStorage.qryTimeTable);
  except
    on e: Exception do
    begin
      dmPgPlannerStorage.qryTimeTable.Cancel;
      RaiseException('PostEvent', e, Self);
    end;
  end;
end;

function TdmVCLPlannerCustomController.DialogEvent: boolean;
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
  PlannerEvent.DirectLoadFromDataset(dmPgPlannerStorage.qryTimeTable);
  if DialogEvent then
    PostEvent;
  PlannerEvent := nil;
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

procedure TdmVCLPlannerCustomController.SetCloudCalendar(const Value: TCloudCalendar);
begin
  FCloudCalendar := Value;
end;

procedure TdmVCLPlannerCustomController.SetColorField(const Value: TField);
begin
  FColorField := Value;
end;

procedure TdmVCLPlannerCustomController.SetPlanner(const Value: TPlanner);
begin
  FPlanner := Value;
end;

procedure TdmVCLPlannerCustomController.SetPlannerEvent(const Value: ITimetable);
begin
  FPlannerEvent := Value;
end;

procedure TdmVCLPlannerCustomController.SetSubjectField(const Value: TField);
begin
  FSubjectField := Value;
end;

end.
