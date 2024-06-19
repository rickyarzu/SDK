unit Janua.TMS.Planner.frameCustomCalendar;

interface

uses
  // .SVGIconImageList48
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PictureContainer, Vcl.Menus, System.ImageList,
  Vcl.ImgList, Data.DB, DBPlanner, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.DBCGrids, Vcl.Samples.Spin,
  Vcl.ComCtrls, AdvCustomComponent, AdvPDFIO, AdvPlannerPDFIO, Planner, Janua.Vcl.Planner.dmCustomController,
  Vcl.Mask, AdvEdit, AdvMEdBtn, PlannerRangeSelector;

type
  TframeTMSCustomPlannerCalendar = class(TFrame)
    lbGiorni: TLabel;
    lbSearch: TLabel;
    DBPlanner1: TDBPlanner;
    AdvPlannerPDFIO1: TAdvPlannerPDFIO;
    SpinEdit1: TSpinEdit;
    edMeeting: TEdit;
    DoFilter: TCheckBox;
    grdAnagraph: TDBCtrlGrid;
    DBText1: TDBText;
    Panel1: TPanel;
    btnAddMeeting: TButton;
    btnUndoMeeting: TButton;
    btnSearchMeeting: TButton;
    btnAddPerson: TButton;
    btnAddActivity: TButton;
    btnExport: TButton;
    btnSendShare: TButton;
    btnPrint: TButton;
    ColorDialog1: TColorDialog;
    ItemPopup: TPopupMenu;
    Color1: TMenuItem;
    Caption1: TMenuItem;
    btnCalendarSync: TButton;
    DBText2: TDBText;
    grpMeeting: TGroupBox;
    lbDateSelector: TLabel;
    edPlannerDateFrom: TDateTimePicker;
    edPlannerDateTo: TDateTimePicker;
    procedure DBPlanner1ItemCreated(Sender: TObject; Item: TPlannerItem);
  private
    FCustomController: TdmVCLPlannerCustomController;
    procedure SetCustomController(const Value: TdmVCLPlannerCustomController);
    { Private declarations }
  public
    { Public declarations }
    property CustomController: TdmVCLPlannerCustomController read FCustomController write SetCustomController;
  end;

implementation

{$R *.dfm}

procedure TframeTMSCustomPlannerCalendar.DBPlanner1ItemCreated(Sender: TObject; Item: TPlannerItem);
begin
  // Code for DBPlannerItemCreated (from here we can launch the Display Setup Dialog);
end;

procedure TframeTMSCustomPlannerCalendar.SetCustomController(const Value: TdmVCLPlannerCustomController);
begin
  FCustomController := Value;
  if Assigned(FCustomController) then
  begin
    btnAddMeeting.Action := FCustomController.ActionAddMeeting;
    btnUndoMeeting.Action := FCustomController.ActionUndoMeeting;
    btnSearchMeeting.Action := FCustomController.ActionSearchMeeting;
    btnAddPerson.Action := FCustomController.ActionAddUser;
    btnAddActivity.Action := FCustomController.ActionAddActivity;
    btnExport.Action := FCustomController.ActionExport;
    btnSendShare.Action := FCustomController.ActionSendShare;
    btnPrint.Action := FCustomController.ActionPrint;
    btnCalendarSync.Action := FCustomController.ActionCalendarSync;
  end;
end;

end.
