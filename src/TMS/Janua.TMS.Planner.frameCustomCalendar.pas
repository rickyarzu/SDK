unit Janua.TMS.Planner.frameCustomCalendar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PictureContainer, Vcl.Menus, System.ImageList,
  Vcl.ImgList, Data.DB, DBPlanner, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.DBCGrids, Vcl.Samples.Spin,
  Vcl.ComCtrls, AdvCustomComponent, AdvPDFIO, AdvPlannerPDFIO, Planner, Janua.VCL.Planner.dmCustomController,
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
    btnAppuntamento: TButton;
    Button1: TButton;
    btnSearchMeeting: TButton;
    btnAddPerson: TButton;
    btnActivities: TButton;
    btnExport: TButton;
    btnSend: TButton;
    btnPrint: TButton;
    ColorDialog1: TColorDialog;
    ItemPopup: TPopupMenu;
    Color1: TMenuItem;
    Caption1: TMenuItem;
    btnGoogleCalSync: TButton;
    DBText2: TDBText;
    PlannerRangeSelector1: TPlannerRangeSelector;
    grpMeeting: TGroupBox;
    Label1: TLabel;
    procedure DBPlanner1ItemCreated(Sender: TObject; Item: TPlannerItem);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TframeTMSCustomPlannerCalendar.DBPlanner1ItemCreated(Sender: TObject; Item: TPlannerItem);
begin
  // Code for DBPlannerItemCreated (from here we can launch the Display Setup Dialog);
end;

end.
