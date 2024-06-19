unit Janua.TMS.Phoenix.framePlannerCalendar;

interface

uses
  // R TL
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  // VCL
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PictureContainer, Vcl.Menus, System.ImageList,
  Vcl.ImgList, Data.DB, DBPlanner, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.DBCGrids, Vcl.Samples.Spin,
  Vcl.ComCtrls,
  // TMS
  AdvCustomComponent, AdvPDFIO, AdvPlannerPDFIO, Planner,
  // Janua
  Janua.TMS.Planner.frameCustomCalendar, Janua.Phoenix.Vcl.dmPlannerController, Vcl.Mask, AdvEdit, AdvMEdBtn,
  PlannerRangeSelector;

type
  TframeTMSPhoenixPlannerCalendar = class(TframeTMSCustomPlannerCalendar)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frameTMSPhoenixPlannerCalendar: TframeTMSPhoenixPlannerCalendar;

implementation

{$R *.dfm}

end.
