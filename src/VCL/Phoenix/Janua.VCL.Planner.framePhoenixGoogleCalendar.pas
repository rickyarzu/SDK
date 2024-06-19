unit Janua.VCL.Planner.framePhoenixGoogleCalendar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Janua.VCL.Planner.frameCustomGoogleCalendar, Data.DB, System.Actions,
  Vcl.ActnList, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, AdvCustomComponent, AdvPDFIO, AdvPlannerPDFIO,
  Planner, DBPlanner, Vcl.Grids, Vcl.DBGrids, CRGrid;

type
  TframeVCLPhoenixGoogleCalendar = class(TframeVCLCustomGoogleCalendar)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frameVCLPhoenixGoogleCalendar: TframeVCLPhoenixGoogleCalendar;

implementation

{$R *.dfm}

end.
