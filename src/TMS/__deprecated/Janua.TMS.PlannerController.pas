unit Janua.TMS.PlannerController;

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
  TdmTMSCustomPlannerController = class(TDataModule)
    SVGIconImageList1: TSVGIconImageList;
    actListPlanner: TActionList;
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
    ActionGoogleCalendarSync: TAction;
    procedure DataModuleCreate(Sender: TObject);
    procedure ActionAddUserExecute(Sender: TObject);
    procedure ActionPrintExecute(Sender: TObject);
    procedure ActionAddMeetingExecute(Sender: TObject);
  private
    FPlanner: TPlanner;
    procedure SetPlanner(const Value: TPlanner);
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
    function DialogEvent: boolean; virtual; abstract;
    procedure AddActivityExecute; virtual; abstract;
    procedure AddUserExecute; virtual; abstract;
    procedure PostEvent; virtual; abstract;
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
  dmTMSCustomPlannerController: TdmTMSCustomPlannerController;

implementation

uses Spring, Janua.Application.Framework, Janua.ViewModels.Application, Janua.Orm.Types, Janua.Orm.Impl,
  Janua.Core.Functions;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TdmTMSCustomPlannerController.DataModuleCreate(Sender: TObject);
begin
  JanuaPlannerController1.Timetable := PlannerEvent
end;

procedure TdmTMSCustomPlannerController.ActionAddMeetingExecute(Sender: TObject);
begin
  Self.AddEvent;
end;

procedure TdmTMSCustomPlannerController.ActionAddUserExecute(Sender: TObject);
begin
  try
    TJanuaApplication.WindowsManager.ShowOverlay;
    AddUserExecute;
  finally
    TJanuaApplication.WindowsManager.HideOverlay;
  end;
end;

procedure TdmTMSCustomPlannerController.ActionPrintExecute(Sender: TObject);
begin
  if PrinterSetupDialog1.Execute then
    FPlanner.Print;
end;

procedure TdmTMSCustomPlannerController.AddEvent;
begin
  // Creates a New Empty Record
  PlannerEvent.PeriodMins := 30;
  PlannerEvent.Append;
  if DialogEvent then
    PostEvent;
  PlannerEvent := nil;
end;

procedure TdmTMSCustomPlannerController.EditEvent;
begin
  // PlannerEvent.DirectLoadFromDataset(dmPgPlannerStorage.qryTimeTable);
  if DialogEvent then
    PostEvent;
  PlannerEvent := nil;
end;

procedure TdmTMSCustomPlannerController.GetGCalendarList;
begin

end;

procedure TdmTMSCustomPlannerController.GetLiveCalendarList;
begin

end;

function TdmTMSCustomPlannerController.GetPlannerEvent: ITimetable;
begin

end;

procedure TdmTMSCustomPlannerController.SetCloudCalendar(const Value: TCloudCalendar);
begin
  FCloudCalendar := Value;
end;

procedure TdmTMSCustomPlannerController.SetPlanner(const Value: TPlanner);
begin
  FPlanner := Value;
end;

procedure TdmTMSCustomPlannerController.SetPlannerEvent(const Value: ITimetable);
begin
  FPlannerEvent := Value;
end;

end.
