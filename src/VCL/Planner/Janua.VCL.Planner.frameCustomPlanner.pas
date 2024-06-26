unit Janua.VCL.Planner.frameCustomPlanner;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, VCL.Graphics,
  VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.ExtCtrls, System.Actions, VCL.ActnList,
  VCL.ImgList, VCL.Buttons, VCL.StdCtrls, Janua.Core.Classes, Janua.VCL.Actions, VCL.DBCtrls, VCL.Menus,
  VCL.ToolWin, VCL.ComCtrls, Janua.VCL.ViewModel, VCL.Mask, JvExMask, JvToolEdit, VCL.Themes,
  VCL.DBCGrids, VCL.Samples.Spin,
  // Icon Image List
  System.ImageList, SVGIconImageListBase, SVGIconImageList,
  // TMS
  Lucombo, AdvSplitter, Planner, AdvCustomComponent, AdvPDFIO, PictureContainer, DBPlanner, AdvPlannerPDFIO,
  // DB Controls
  Data.DB, VCL.Grids, VCL.DBGrids, CRGrid,
  // Januaproject
  Janua.ViewModels.Intf, Janua.Core.Types, Janua.Core.Classes.Intf, Janua.Orm.Intf,
  Janua.Bindings.Intf, Janua.Forms.Types, Janua.Controls.Intf, Janua.Controls.Forms.Intf,
  // Controls
  Janua.VCL.EnhCRDBGrid, Janua.VCL.EnhDBGrid,
  // Forms
  uJanuaVCLFrame, Janua.VCL.Planner.dmCustomController,
  // Interposers
  Janua.VCL.Interposers, Janua.TMS.Interposers, uJanuaVCLForm;

type
  // TJanuaVCLFormModel = class(TForm, IJanuaForm, IJanuaContainer, IJanuaControl, IJanuaBindable)
  TframeVCLAnagraphPlanner = class(TJanuaVCLFrameModel, IJanuaContainer, IJanuaBindable)
    DataSource1: TDataSource;
    ItemPopup: TPopupMenu;
    Color1: TMenuItem;
    Caption1: TMenuItem;
    DBPlanner1: TDBPlanner;
    MonthCalendar1: TMonthCalendar;
    SpinEdit1: TSpinEdit;
    edMeeting: TEdit;
    DoFilter: TCheckBox;
    lbGiorni: TLabel;
    lbSearch: TLabel;
    grdAnagraph: TDBCtrlGrid;
    DBText1: TDBText;
    Panel1: TPanel;
    btnAppuntamento: TButton;
    btnUndoMeeting: TButton;
    btnSearchMeeting: TButton;
    btnAddPerson: TButton;
    btnActivities: TButton;
    btnExport: TButton;
    btnSend: TButton;
    btnPrint: TButton;
    btnCalendarSync: TButton;
    dbtAnagraphName: TDBText;
    AdvPlannerPDFIO1: TAdvPlannerPDFIO;
    gridPopup: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    procedure DBPlanner1ItemDelete(Sender: TObject; Item: TPlannerItem);
    procedure DBPlanner1ItemPopupPrepare(Sender: TObject; PopupMenu: TPopupMenu; Item: TPlannerItem);
    procedure DBPlanner1PlannerNext(Sender: TObject);
    procedure DBPlanner1PlannerPrev(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure grdAnagraphClick(Sender: TObject);
    procedure MonthCalendar1Click(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
  private
    FController: TdmVCLPlannerCustomController;
    procedure SetController(const Value: TdmVCLPlannerCustomController);
    { Private declarations }
  public
    { Public declarations }
    procedure UpdateHeaders;
    property Controller: TdmVCLPlannerCustomController read FController write SetController;
  end;

var
  frameVCLAnagraphPlanner: TframeVCLAnagraphPlanner;

implementation

{$R *.dfm}

uses Spring, Janua.Application.Framework, Janua.ViewModels.Application;

procedure TframeVCLAnagraphPlanner.DBPlanner1ItemDelete(Sender: TObject; Item: TPlannerItem);
begin
  {
    the Planner.FreeItem call removes the item from the planner and deletes
    its entry from the database
  }
  if Assigned(Controller) and Controller.DeleteItem(Item) then
    DBPlanner1.FreeItem(Item);
end;

procedure TframeVCLAnagraphPlanner.DBPlanner1ItemPopupPrepare(Sender: TObject; PopupMenu: TPopupMenu;
  Item: TPlannerItem);
begin
  { Event is called before the popup menu for a planner item is displayed.
    With this event, the popup menu state can be set according the the
    planner item properties.
  }

  ItemPopup.Items[1].Checked := Item.CaptionType = ctTime;
end;

procedure TframeVCLAnagraphPlanner.DBPlanner1PlannerNext(Sender: TObject);
begin
  { Update the planner headers to set the date shown }
  UpdateHeaders;
  MonthCalendar1.Date := DBDaySource1.Day;
end;

procedure TframeVCLAnagraphPlanner.DBPlanner1PlannerPrev(Sender: TObject);
begin
  { Update the planner headers to set the date shown }
  UpdateHeaders;
  MonthCalendar1.Date := DBDaySource1.Day;
end;

procedure TframeVCLAnagraphPlanner.FormCreate(Sender: TObject);
begin
  // dmPgPlannerStorage: TdmPgPlannerStorage;
  Application.CreateForm(TdmPgPlannerStorage, dmPgPlannerStorage);
  // TdmPlannerController
  Application.CreateForm(TdmVCLPlannerController, dmVCLPlannerController);
  dmVCLPlannerController.Planner := DBPlanner1;
  dmPgPlannerStorage.OpenAll;

  DBDaySource1.Day := Date;
  MonthCalendar1.Date := Date;

  // PlannerTable.Active := true;
  UpdateHeaders;
end;

procedure TframeVCLAnagraphPlanner.FormResize(Sender: TObject);
begin
  grdAnagraph.ColCount := Trunc(Self.Width / 160);
end;

procedure TframeVCLAnagraphPlanner.grdAnagraphClick(Sender: TObject);
begin
  DBPlanner1.Refresh;
end;

procedure TframeVCLAnagraphPlanner.MonthCalendar1Click(Sender: TObject);
begin
  DBDaySource1.Day := MonthCalendar1.Date;
  UpdateHeaders;
end;

procedure TframeVCLAnagraphPlanner.SetController(const Value: TdmVCLPlannerCustomController);
begin
  FController := Value;
  if Assigned(FController) then
  begin
    DBPlanner1.OnItemImageClick := FController.PlannerItemImageClick;
    DBPlanner1.OnItemInsert := FController.PlannerPlannerItemInsert;
    DBPlanner1.OnItemDblClick := FController.PlannerItemDblClick;
  end;
end;

procedure TframeVCLAnagraphPlanner.SpinEdit1Change(Sender: TObject);
begin
  DBDaySource1.NumberOfDays := SpinEdit1.Value;
end;

procedure TframeVCLAnagraphPlanner.UpdateHeaders;
var
  i: Integer;
begin
  DBPlanner1.Header.Captions.Clear;
  DBPlanner1.Header.Captions.Add('');
  for i := 1 to DBPlanner1.Positions do
  begin
    DBPlanner1.Header.Captions.Add(Formatdatetime('dd/mm/yyyy', DBDaySource1.Day + i - 1));
  end;

end;

end.
