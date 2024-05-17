unit Janua.TMS.Phoenix.framePlannerCalendar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Janua.TMS.framePlannerCalendar, PictureContainer, Vcl.Menus,
  System.ImageList, Vcl.ImgList, Data.DB, DBPlanner, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.DBCGrids,
  Vcl.Samples.Spin, Vcl.ComCtrls, AdvCustomComponent, AdvPDFIO, AdvPlannerPDFIO, Planner;

type
  TframeTMSPhoenixPlannerCalendar2 = class(TframeTMSCustomPlannerCalendar)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frameTMSPhoenixPlannerCalendar2: TframeTMSPhoenixPlannerCalendar2;

implementation

{$R *.dfm}

uses Janua.TMS.PlannerController;

end.
