unit udlgVCLPlannerActivities;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls;

type
  TdlgVCLPlannerActivities = class(TForm)
    DBNavigator1: TDBNavigator;
    grdActivityGroups: TDBGrid;
    DBNavigator2: TDBNavigator;
    DBGrid1: TDBGrid;
    Button1: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgVCLPlannerActivities: TdlgVCLPlannerActivities;

implementation

{$R *.dfm}

uses udmPgPlannerStorage;

end.
