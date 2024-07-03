unit Janua.TMS.Phoenix.framePlannerCalendar;

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
  Janua.TMS.Planner.frameCustomCalendar, Janua.Phoenix.Vcl.dmPlannerController,
  // Interposers
  Janua.Vcl.Interposers, Janua.TMS.Interposers, Vcl.Grids, Vcl.DBGrids, CRGrid, Janua.VCL.EnhCRDBGrid;

type
  TframeTMSPhoenixPlannerCalendar = class(TframeTMSCustomPlannerCalendar)
  private
    FPlannerController: TdmVCLPhoenixPlannerController;
    procedure SetPlannerController(const Value: TdmVCLPhoenixPlannerController);
    { Private declarations }
  public
    { Public declarations }
    property PlannerController: TdmVCLPhoenixPlannerController read FPlannerController
      write SetPlannerController;
  end;

var
  frameTMSPhoenixPlannerCalendar: TframeTMSPhoenixPlannerCalendar;

implementation

{$R *.dfm}
{ TframeTMSPhoenixPlannerCalendar }

procedure TframeTMSPhoenixPlannerCalendar.SetPlannerController(const Value: TdmVCLPhoenixPlannerController);
begin
  FPlannerController := Value;
  CustomController := FPlannerController;
end;

end.
