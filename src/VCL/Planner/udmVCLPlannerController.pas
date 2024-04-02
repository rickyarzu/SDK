unit udmVCLPlannerController;

interface

uses
  // System
  System.SysUtils, System.Classes, System.Actions, System.Bindings.Helper, System.ImageList,
  // VCL
  Vcl.ActnList, Vcl.ImgList, Vcl.Controls, SVGIconImageListBase, SVGIconImageList, Vcl.Dialogs,
  // Planner
  AdvPDFIO, AdvPlannerPDFIO, Planner,
  // Cloud
  CloudCustomGoogle, CloudGoogleWin, CloudCustomGCalendar, CloudGCalendar, CloudBase, CloudBaseWin,
  CloudCustomLive, CloudLiveWin, CloudCustomLiveCalendar, CloudLiveCalendar,
  // Januaproject
  Janua.Bindings.Intf, Janua.Core.Types, JOrm.Planner.Timetable.Intf, Janua.Controls.Forms.Intf,
  Janua.Vcl.Interposers, Janua.Core.Classes.Intf, Janua.Orm.Intf, Janua.Controls.Intf, Janua.Core.Classes,
  Janua.Components.Planner, Janua.Core.Commons;

type
  TCloudCalendar = (ccWinLive, ccGoogle);

type
  TdmVCLPlannerController = class(TDataModule)
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
    function GetPlannerEvent: ITimetable;
    procedure SetCloudCalendar(const Value: TCloudCalendar);
    procedure SetPlannerEvent(const Value: ITimetable);
  protected
    procedure GetGCalendarList;
    procedure GetLiveCalendarList;
    function DialogEvent: boolean;
  public
    property CloudCalendar: TCloudCalendar read FCloudCalendar write SetCloudCalendar;
    property PlannerEvent: ITimetable read GetPlannerEvent write SetPlannerEvent;
    // ****************************************** Main Public Procedures  ******************************
  public
    // Public Procedures (better if Actions)
    /// <summary>  Tries to Edit an Event using ITimetable interface. </summary>
    /// <remarks>   If fails throws an exception and rollbacks dataset posts </remarks>
    procedure EditEvent;
    /// <summary> Tries to Add an Event using ITimetable interface. </summary>
    /// <remarks> If fails throws an exception and rollbacks dataset posts </remarks>
    procedure AddEvent;
  end;

var
  dmVCLPlannerController: TdmVCLPlannerController;

implementation

uses Spring, Janua.Application.Framework, Janua.ViewModels.Application, udmPgPlannerStorage,
  udlgVCLPlannerAnagraph, udlgVCLPlannerActivities, udlgVCLPlannerEvent, Janua.Orm.Types, Janua.Orm.Impl,
  Janua.Core.Functions;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TdmVCLPlannerController.DataModuleCreate(Sender: TObject);
begin
  JanuaPlannerController1.Timetable := PlannerEvent
end;

procedure TdmVCLPlannerController.ActionAddActivityExecute(Sender: TObject);
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

procedure TdmVCLPlannerController.ActionAddMeetingExecute(Sender: TObject);
begin
  Self.AddEvent;
end;

procedure TdmVCLPlannerController.ActionAddUserExecute(Sender: TObject);
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

procedure TdmVCLPlannerController.ActionPrintExecute(Sender: TObject);
begin
  if PrinterSetupDialog1.Execute then
    FPlanner.Print;
end;

procedure TdmVCLPlannerController.AddEvent;
begin
  // Creates a New Empty Record
  PlannerEvent.PeriodMins := 30;
  PlannerEvent.Append;
  if DialogEvent then
    PostEvent;
  PlannerEvent := nil;
end;

procedure TdmVCLPlannerController.PostEvent;
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

function TdmVCLPlannerController.DialogEvent: boolean;
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

procedure TdmVCLPlannerController.EditEvent;
begin
  PlannerEvent.DirectLoadFromDataset(dmPgPlannerStorage.qryTimeTable);
  if DialogEvent then
    PostEvent;
  PlannerEvent := nil;
end;

procedure TdmVCLPlannerController.GetGCalendarList;
begin

end;

procedure TdmVCLPlannerController.GetLiveCalendarList;
begin

end;

function TdmVCLPlannerController.GetPlannerEvent: ITimetable;
begin
  if not Assigned(FPlannerEvent) then
  begin
    TJanuaCoreOS.PublicWriteLog(Self, 'EditEvent', 'TryGetRecordIntf(ITimetable)');
    if not TJanuaOrmFactory.TryGetRecordIntf(ITimetable, FPlannerEvent, 'Event',
      TJanuaEntity.PlannerTimetable) then
      raise Exception.Create('TryGetRecordIntf(ITimetable) ITimetable not set');
  end;
  Result := FPlannerEvent;
end;

procedure TdmVCLPlannerController.SetCloudCalendar(const Value: TCloudCalendar);
begin
  FCloudCalendar := Value;
end;

procedure TdmVCLPlannerController.SetPlanner(const Value: TPlanner);
begin
  FPlanner := Value;
end;

procedure TdmVCLPlannerController.SetPlannerEvent(const Value: ITimetable);
begin
  FPlannerEvent := Value;
end;

end.
