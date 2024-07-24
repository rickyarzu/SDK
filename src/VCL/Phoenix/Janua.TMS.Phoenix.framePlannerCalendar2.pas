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

uses Janua.Core.Functions, Janua.Application.Framework, Spring;

{$R *.dfm}
{ TframeVCLPhoenixPlannerCalendar2 }

procedure TframeVCLPhoenixPlannerCalendar2.SetCustomController(const Value: TdmVCLPlannerCustomController);
begin
  FCustomController := Value;
  if Assigned(FPlannerController) then
  begin
    btnAddMeeting.Images := FCustomController.SVGIconImageList48;
    btnUndoMeeting.Images := FCustomController.SVGIconImageList48;
    btnSendShare.Images := FCustomController.SVGIconImageList48;
    btnSearchMeeting.Images := FCustomController.SVGIconImageList48;
    btnAddPerson.Images := FCustomController.SVGIconImageList48;
    btnExport.Images := FCustomController.SVGIconImageList48;
    btnCalendarSync.Images := FCustomController.SVGIconImageList48;
    btnPrint.Images := FCustomController.SVGIconImageList48;
    btnAddActivity.Images := FCustomController.SVGIconImageList48;

    btnAddMeeting.Action := FPlannerController.ActionAddMeeting2;
    btnUndoMeeting.Action := FPlannerController.ActionUndoMeeting2;
    btnSearchMeeting.Action := FPlannerController.ActionSearchMeeting2;
    btnAddPerson.Action := FPlannerController.ActionAddUser2;
    btnAddActivity.Action := FPlannerController.ActionAddActivity2;
    btnExport.Action := FPlannerController.ActionExport2;
    btnSendShare.Action := FPlannerController.ActionSendShare2;
    btnPrint.Action := FPlannerController.ActionPrint2;
    btnCalendarSync.Action := FPlannerController.ActionCalendarSync2;
    DBPlanner1.ItemSource := FPlannerController.DBDaySourceCalendar2;
    ckbAll.Checked := FPlannerController.CalendarsFilter2;
    FPlannerController.Bind('CalendarsFilter2', ckbAll, 'Checked');
    ckbCalendarList.Items.Text := FPlannerController.CalendarsList2.Text;
    FPlannerController.PlannerPDFIO2 := AdvPlannerPDFIO1;
    FPlannerController.ActivateCalendar2;
    // dmVCLPhoenixPlannerController.DBDaySourceCalendar2
{$IFDEF DEBUG}
    Guard.CheckNotNull(FPlannerController.DBDaySourceCalendar2, 'FCustomController.DBDaySourceCalendar');
    Guard.CheckNotNull(FPlannerController.DBDaySourceCalendar2.DataSource, 'DataSource');
{$ENDIF}
    DBPlanner1.ItemSource := FPlannerController.DBDaySourceCalendar2;
    if not FPlannerController.DBDaySourceCalendar2.DataSource.Enabled then
      FPlannerController.DBDaySourceCalendar2.DataSource.Enabled := True;
    if not FPlannerController.DBDaySourceCalendar2.DataSource.Dataset.Active then
      FPlannerController.DBDaySourceCalendar2.DataSource.Dataset.Open;

    edPlannerDateFrom.Date := FPlannerController.DateFrom;
    FPlannerController.Bind('DateFrom', edPlannerDateFrom, 'Date');
    edPlannerDateTo.Date := FPlannerController.DateTo;
    FPlannerController.Bind('DateTo', edPlannerDateTo, 'Date');

    for var I := 0 to ckbCalendarList.Count - 1 do
      ckbCalendarList.Checked[I] := True; // Check if the item at index I is checked
    ckbCalendarListClickCheck(self);
  end;
end;

procedure TframeVCLPhoenixPlannerCalendar2.SetPlannerController(const Value: TdmVCLPhoenixPlannerController);
begin
  FPlannerController := Value;
  SetCustomController(FPlannerController);
end;

end.
