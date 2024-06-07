unit Janua.Phoenix.VCL.dmPlannerController;

interface

uses
  System.SysUtils, System.Classes, Janua.VCL.Planner.dmCustomController, DBPlanner, PlanExLiveCalendar,
  Planner, PlanExGCalendar, CloudvCal, CloudWebDav, CloudCustomLive, CloudLiveWin, CloudCustomLiveCalendar,
  CloudLiveCalendar, Janua.Core.Commons, Janua.Core.Classes, CloudBase, CloudBaseWin, CloudCustomGoogle,
  CloudGoogleWin, CloudCustomGCalendar, CloudGCalendar, Vcl.Dialogs, System.Actions, Vcl.ActnList,
  System.ImageList, Vcl.ImgList, Vcl.Controls, SVGIconImageListBase, SVGIconImageList;

type
  TdmVCLPhoenixPlannerController = class(TdmVCLPlannerCustomController)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmVCLPhoenixPlannerController: TdmVCLPhoenixPlannerController;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
