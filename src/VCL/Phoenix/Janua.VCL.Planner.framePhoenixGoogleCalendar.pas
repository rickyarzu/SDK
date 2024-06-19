unit Janua.VCL.Planner.framePhoenixGoogleCalendar;

interface

uses
  // RTL
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Data.DB, System.Actions,
  // VCL
  VCL.Graphics,
  VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.ActnList, VCL.ComCtrls, VCL.StdCtrls, VCL.ExtCtrls,
  AdvCustomComponent, AdvPDFIO, AdvPlannerPDFIO, Planner, DBPlanner, VCL.Grids, VCL.DBGrids, CRGrid,
  // JanuaProject
  Janua.VCL.Planner.frameCustomGoogleCalendar,
  Janua.VCL.Planner.dmCustomController, Janua.Phoenix.VCL.dmPlannerController;

type
  TframeVCLPhoenixGoogleCalendar = class(TframeVCLCustomGoogleCalendar)
  private
    FPhoenixController: TdmVCLPhoenixIBPlanner;
    procedure SetPhoenixController(const Value: TdmVCLPhoenixIBPlanner);
    { Private declarations }
  public
    { Public declarations }
    property PhoenixController: TdmVCLPhoenixIBPlanner read FPhoenixController write SetPhoenixController;
  end;

var
  frameVCLPhoenixGoogleCalendar: TframeVCLPhoenixGoogleCalendar;

implementation

{$R *.dfm}

{ TframeVCLPhoenixGoogleCalendar }

procedure TframeVCLPhoenixGoogleCalendar.SetPhoenixController(const Value: TdmVCLPhoenixIBPlanner);
begin
  FPhoenixController := Value;
  Self.CustomController := FPhoenixController;
end;

end.
