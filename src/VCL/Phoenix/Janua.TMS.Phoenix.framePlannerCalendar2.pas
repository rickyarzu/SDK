unit Janua.TMS.Phoenix.framePlannerCalendar2;

interface

uses
  // R TL
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, System.ImageList,
  // VCL
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PictureContainer, Vcl.Menus, Vcl.Mask, Vcl.CheckLst,
  Vcl.ImgList, Data.DB, DBPlanner, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.DBCGrids, Vcl.Samples.Spin,
  Vcl.ComCtrls,
  // TMS
  AdvCustomComponent, AdvPDFIO, AdvPlannerPDFIO, Planner, AdvEdit, AdvMEdBtn, PlannerRangeSelector,
  // Janua
  Janua.Vcl.Planner.dmCustomController, Janua.TMS.Planner.frameCustomCalendar,
  Janua.Phoenix.Vcl.dmPlannerController, Janua.TMS.Phoenix.framePlannerCalendar,
  // Interposers
  Janua.Vcl.Interposers, Janua.TMS.Interposers, Vcl.Grids, Vcl.DBGrids, CRGrid, Janua.Vcl.EnhCRDBGrid;

type
  TframeVCLPhoenixPlannerCalendar2 = class(TframeTMSPhoenixPlannerCalendar)
  private
    { Private declarations }
  protected
    procedure SetCustomController(const Value: TdmVCLPlannerCustomController); override;
    procedure SetPlannerController(const Value: TdmVCLPhoenixPlannerController); override;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}
{ TframeVCLPhoenixPlannerCalendar2 }

procedure TframeVCLPhoenixPlannerCalendar2.SetCustomController(const Value: TdmVCLPlannerCustomController);
begin
  inherited;
  if Assigned(FPlannerController) then
  begin
    btnAddMeeting.Action := FPlannerController.ActionAddMeeting2;
    btnUndoMeeting.Action := FPlannerController.ActionUndoMeeting2;
    btnSearchMeeting.Action := FPlannerController.ActionSearchMeeting2;
    btnAddPerson.Action := FPlannerController.ActionAddUser2;
    btnAddActivity.Action := FPlannerController.ActionAddActivity;
    btnExport.Action := FPlannerController.ActionExport;
    btnSendShare.Action := FPlannerController.ActionSendShare;
    btnPrint.Action := FPlannerController.ActionPrint2;
    btnCalendarSync.Action := FPlannerController.ActionCalendarSync2;
    DBPlanner1.ItemSource := FPlannerController.DBDaySourceCalendar2;
    ckbAll.Checked := FPlannerController.CalendarsFilter2;
    FPlannerController.Bind('CalendarsFilter2', ckbAll, 'Checked');
    ckbCalendarList.Items.Text := FPlannerController.CalendarsList2.Text;
    FCustomController.PlannerPDFIO := AdvPlannerPDFIO1;
    FCustomController.ActivateCalendar;
{$IFDEF DEBUG}
    Guard.CheckNotNull(FCustomController.DBDaySourceCalendar, 'FCustomController.DBDaySourceCalendar');
    Guard.CheckNotNull(FCustomController.DBDaySourceCalendar.DataSource, 'DataSource');
{$ENDIF}
    DBPlanner1.ItemSource := FCustomController.DBDaySourceCalendar;
    if not FCustomController.DBDaySourceCalendar.DataSource.Enabled then
      FCustomController.DBDaySourceCalendar.DataSource.Enabled := True;
    if not FCustomController.DBDaySourceCalendar.DataSource.Dataset.Active then
      FCustomController.DBDaySourceCalendar.DataSource.Dataset.Open;

    edPlannerDateFrom.Date := FCustomController.DateFrom;
    FCustomController.Bind('DateFrom', edPlannerDateFrom, 'Date');
    edPlannerDateTo.Date := FCustomController.DateTo;
    FCustomController.Bind('DateTo', edPlannerDateTo, 'Date');

    for var I := 0 to ckbCalendarList.Count - 1 do
      ckbCalendarList.Checked[I] := True; // Check if the item at index I is checked
    ckbCalendarListClickCheck(self);
  end;
end;

procedure TframeVCLPhoenixPlannerCalendar2.SetPlannerController(const Value: TdmVCLPhoenixPlannerController);
begin
  inherited;

end;

end.
