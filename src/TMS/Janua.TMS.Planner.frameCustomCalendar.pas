unit Janua.TMS.Planner.frameCustomCalendar;

interface

uses
  // RTL
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, System.ImageList,
  Data.DB,
  // VCL
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PictureContainer, Vcl.Menus, Vcl.ComCtrls, Vcl.Mask,
  Vcl.CheckLst, Vcl.ImgList, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.DBCGrids, Vcl.Samples.Spin,
  // TMS
  DBPlanner, AdvCustomComponent, AdvPDFIO, AdvPlannerPDFIO, Planner, AdvEdit, AdvMEdBtn, PlannerRangeSelector,
  // Janua
  Janua.Vcl.Planner.dmCustomController,
  // Interposers
  Janua.Vcl.Interposers, Janua.TMS.Interposers, Vcl.Grids, Vcl.DBGrids, CRGrid, Janua.Vcl.EnhCRDBGrid;

type
  TframeTMSCustomPlannerCalendar = class(TFrame)
    lbGiorni: TLabel;
    edDays: TSpinEdit;
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
    grpMeeting: TGroupBox;
    lbCalendarList: TLabel;
    Panel2: TPanel;
    ckbAll: TCheckBox;
    ckbCalendarList: TCheckListBox;
    Panel3: TPanel;
    edMeeting: TEdit;
    lbSearch: TLabel;
    DoFilter: TCheckBox;
    lbDateSelector: TLabel;
    Panel4: TPanel;
    edPlannerDateFrom: TDateTimePicker;
    edPlannerDateTo: TDateTimePicker;
    Carattere1: TMenuItem;
    PageControl1: TPageControl;
    tabCalendar: TTabSheet;
    tabCalendarGrid: TTabSheet;
    EnhCRDBGrid1: TEnhCRDBGrid;
    DBPlanner1: TDBPlanner;
    AdvPlannerPDFIO1: TAdvPlannerPDFIO;
    procedure ckbCalendarListClickCheck(Sender: TObject);
  private
    FCustomController: TdmVCLPlannerCustomController;
    FSelectedList: TStrings;
    procedure SetCustomController(const Value: TdmVCLPlannerCustomController);
    { Private declarations }
  public
    { Public declarations }
    property CustomController: TdmVCLPlannerCustomController read FCustomController write SetCustomController;
  end;

implementation

uses Janua.Application.Framework, Janua.Core.Functions, Spring;

{$R *.dfm}

procedure TframeTMSCustomPlannerCalendar.ckbCalendarListClickCheck(Sender: TObject);
begin
  var
  I := 0;
  var
  aList := TStringList.Create;
  try
    for I := 0 to ckbCalendarList.Count - 1 do
      if ckbCalendarList.Checked[I] then // Check if the item at index I is checked
        aList.Add(ckbCalendarList.Items[I]); // Add the checked item to the memo
  finally
    aList.Free;
  end;

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
    DBPlanner1.PictureContainer := FCustomController.PictureContainer1;
    DBPlanner1.ItemSource := FCustomController.DBDaySourceCalendar;
    btnAddMeeting.Images := FCustomController.SVGIconImageList48;
    btnUndoMeeting.Images := FCustomController.SVGIconImageList48;
    btnSearchMeeting.Images := FCustomController.SVGIconImageList48;
    btnAddPerson.Images := FCustomController.SVGIconImageList48;
    btnAddActivity.Images := FCustomController.SVGIconImageList48;
    btnExport.Images := FCustomController.SVGIconImageList48;
    btnSendShare.Images := FCustomController.SVGIconImageList48;
    btnPrint.Images := FCustomController.SVGIconImageList48;
    btnCalendarSync.Images := FCustomController.SVGIconImageList48;
    ckbAll.Checked := FCustomController.CalendarsFilter;
    FCustomController.Bind('CalendarsFilter', ckbAll, 'Checked');
    ckbCalendarList.Items.Text := FCustomController.CalendarsList.Text;
    FCustomController.PlannerPDFIO := AdvPlannerPDFIO1;
    FCustomController.ActivateCalendar;
{$IFDEF DEBUG}
    Guard.CheckNotNull(FCustomController.DBDaySourceCalendar, 'FCustomController.DBDaySourceCalendar');
    Guard.CheckNotNull(FCustomController.DBDaySourceCalendar.DataSource, 'DataSource');
{$ENDIF}
    DBPlanner1.ItemSource := FCustomController.DBDaySourceCalendar;
    if not FCustomController.DBDaySourceCalendar.DataSource.Enabled then
      FCustomController.DBDaySourceCalendar.DataSource.Enabled := True;
    if not FCustomController.DBDaySourceCalendar.DataSource.Dataset.Active then
      FCustomController.DBDaySourceCalendar.DataSource.Dataset.Open;

    edPlannerDateFrom.Date := FCustomController.DateFrom;
    FCustomController.Bind('DateFrom', edPlannerDateFrom, 'Date');
    edPlannerDateTo.Date := FCustomController.DateTo;
    FCustomController.Bind('DateTo', edPlannerDateTo, 'Date');

    for var I := 0 to ckbCalendarList.Count - 1 do
      ckbCalendarList.Checked[I] := True; // Check if the item at index I is checked
    ckbCalendarListClickCheck(self);
  end;
end;

end.
