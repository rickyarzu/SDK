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
  Janua.Vcl.Interposers, Janua.TMS.Interposers, Vcl.Grids, Vcl.DBGrids, CRGrid, Janua.Vcl.EnhCRDBGrid,
  DBAccess, Uni, JvExControls, JvDBLookup;

type
  TframeTMSPhoenixPlannerCalendar = class(TframeTMSCustomPlannerCalendar)
    GridPopup: TPopupMenu;
    mnuGoogleSync1: TMenuItem;
    dsCAP: TUniDataSource;
    dsTechnicians: TUniDataSource;
    dsCustomers: TUniDataSource;
    cboTecnici: TJvDBLookupCombo;
    Area: TLabel;
    procedure cboTecniciCloseUp(Sender: TObject);
  protected
    FPlannerController: TdmVCLPhoenixPlannerController;
    procedure SetPlannerController(const Value: TdmVCLPhoenixPlannerController); virtual;
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

procedure TframeTMSPhoenixPlannerCalendar.cboTecniciCloseUp(Sender: TObject);
begin
  inherited;
  FPlannerController.SelectedCalendarTec := cboTecnici.Value.ToInteger;
end;

procedure TframeTMSPhoenixPlannerCalendar.SetPlannerController(const Value: TdmVCLPhoenixPlannerController);
begin
  FPlannerController := Value;
  CustomController := FPlannerController;
  GridPopup.Images := FPlannerController.SVGIconImageList16;
  mnuGoogleSync1.Action := FPlannerController.actGoogleSync;
  if FPlannerController.qryPlannerEvents.RecordCount > 0 then
  begin
    FPlannerController.SelectedCalendarTec := FPlannerController.qryPlannerEventsTECNICO.AsInteger;
    cboTecnici.Value := FPlannerController.SelectedCalendarTec.ToString;
  end;
end;

end.
