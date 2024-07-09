unit Janua.Phoenix.VCL.dlgPlannerEvent;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, VCL.Graphics,
  VCL.Controls, VCL.Forms, VCL.Dialogs, Janua.VCL.Planner.dlgCustomEvent, System.ImageList, VCL.ImgList,
  Data.DB, JvExControls, JvDBLookup, VCL.StdCtrls, VCL.ComCtrls, VCL.DBCGrids, Planner, DBPlanner, AdvEdit,
  AdvEdBtn, PlannerDatePicker, VCL.DBCtrls, VCL.ExtCtrls, DBAccess, Uni, JvSpeedButton;

type
  TdlgVCLPhoenixPlannerEvent = class(TdlgVCLCustomPlannerEvent)
    lkpCAP: TJvDBLookupCombo;
    lbCap: TLabel;
    lbData: TLabel;
    DBCtrlGrid1: TDBCtrlGrid;
    DBPlanner1: TDBPlanner;
    Button1: TButton;
    Button2: TButton;
    ckbFilterTech: TCheckBox;
    pnlInterventi: TPanel;
    Label3: TLabel;
    DBText4: TDBText;
    lbIdranti: TLabel;
    DBText5: TDBText;
    Label4: TLabel;
    DBText6: TDBText;
    btnAdd: TButton;
    Label5: TLabel;
    DBText7: TDBText;
    btnRemove: TButton;
    dsCustomers: TUniDataSource;
    dsTechnicians: TUniDataSource;
    dsCAP: TUniDataSource;
    grpStato: TRadioGroup;
    Panel1: TPanel;
    JvSpeedButton2: TJvSpeedButton;
    Panel2: TPanel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBDaySource1: TDBDaySource;
    ckbCAP: TCheckBox;
    ckbActivities: TCheckBox;
    DateTimePicker1: TDateTimePicker;
    procedure ChangeFilter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgVCLPhoenixPlannerEvent: TdlgVCLPhoenixPlannerEvent;

implementation

{$R *.dfm}

uses Janua.Phoenix.VCL.dmPlannerController;

procedure TdlgVCLPhoenixPlannerEvent.ChangeFilter(Sender: TObject);
var
  lFilter: TRecordFilter;
begin
  {
    type
    TRecordFilter = record
    Status: Integer;
    end;
  }
  if not lkpGroups.Value.IsEmpty then
    lFilter.TecnicoDB := lkpGroups.Value.ToInteger
  else
    lFilter.TecnicoDB := -1;

  lFilter.TecnicoCk := not lkpGroups.Value.IsEmpty and ckbFilterTech.Checked;

  lFilter.CAP := lkpCAP.Value;
  lFilter.CAPCk := ckbCAP.Checked and not lkpCAP.Value.IsEmpty;

  if not lkpActivities.Value.IsEmpty then
    lFilter.ClienteID := lkpActivities.Value.ToInteger
  else
    lFilter.ClienteID := -1;

  lFilter.ClienteCk := ckbActivities.Checked and not lkpActivities.Value.IsEmpty;

  lFilter.Status := grpStato.ItemIndex;


  dmVCLPhoenixPlannerController.FilterMeeting(lFilter);
end;

end.
