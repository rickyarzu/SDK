unit Janua.VCL.Planner.frameCustomGoogleCalendar;

interface

uses
  // RTL
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Data.DB, System.Actions,
  // VCL
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.StdCtrls, VCL.ExtCtrls, VCL.ComCtrls, VCL.ActnList,
  VCL.Grids, VCL.DBGrids, CRGrid,
  // TMS
  AdvCustomComponent, AdvPDFIO, AdvPlannerPDFIO, Planner, DBPlanner,
  // Janua
  Janua.VCL.Planner.dmCustomController,

  // Interposers
  Janua.VCL.Interposers, Janua.TMS.Interposers;

type
  TframeVCLCustomGoogleCalendar = class(TFrame)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label13: TLabel;
    dpCalStartDate: TDateTimePicker;
    dpCalEndDate: TDateTimePicker;
    btUpdate: TButton;
    grdGoogleCalendar: TCRDBGrid;
    Panel1: TPanel;
    Image1: TImage;
    btnConnect: TButton;
    btnRemove: TButton;
    grpCalendars: TGroupBox;
    lbLists: TLabel;
    lbDefaultReminders: TLabel;
    cboCalendarsList: TComboBox;
    grpCalendarDetails: TGroupBox;
    Label16: TLabel;
    lbSummary: TLabel;
    lbLocation: TLabel;
    Label19: TLabel;
    edCalendarDescription: TEdit;
    edCalendarName: TEdit;
    btAddCalendar: TButton;
    btDeleteCalendar: TButton;
    btUpdateCalendar: TButton;
    edCalendarLocation: TEdit;
    edCalendarTimeZone: TEdit;
    cbDefaultReminders: TComboBox;
    pnlEventDetail: TPanel;
    grpItemDetails: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    Label9: TLabel;
    lbID: TLabel;
    lbEtag: TLabel;
    lbGrp: TLabel;
    edCalendarItemName: TEdit;
    edCalendarItemLocation: TEdit;
    StartDate: TDateTimePicker;
    EndDate: TDateTimePicker;
    StartTime: TDateTimePicker;
    EndTime: TDateTimePicker;
    cbVisibility: TComboBox;
    cbAllday: TCheckBox;
    Panel2: TPanel;
    btnGoogleEventDelete: TButton;
    btnGoogleEventUpdate: TButton;
    btnGoogleEventNew: TButton;
    edCalendarItemDescription: TMemo;
    PageControl2: TPageControl;
    tabDettagli: TTabSheet;
    tabAttendees: TTabSheet;
    Label3: TLabel;
    Label12: TLabel;
    lvAtt: TListView;
    EditAttName: TEdit;
    EditAttEmail: TEdit;
    btInvite: TButton;
    cbColors: TComboBox;
    panelColor: TPanel;
    edID: TEdit;
    edEtag: TEdit;
    edGrp: TEdit;
    lvRem: TListView;
    Label8: TLabel;
    cbRemMethod: TComboBox;
    Label2: TLabel;
    EditRemMinutes: TEdit;
    btAddRem: TButton;
    btDelRem: TButton;
    DBPlanner1: TDBPlanner;
    AdvPlannerPDFIO1: TAdvPlannerPDFIO;
    ActionList1: TActionList;
    Action1: TAction;
    cbRem: TCheckBox;
    procedure cboCalendarsListChange(Sender: TObject);
    procedure cboCalendarsListClick(Sender: TObject);
  private
    { Private declarations }
    FCustomController: TdmVCLPlannerCustomController;
    procedure SetCustomController(const Value: TdmVCLPlannerCustomController);
  public
    { Public declarations }
    procedure BindControls;
    procedure ToggleControls(Sender: TObject);
    procedure ToggleReminders(Sender: TObject);
    procedure SetColor(Sender: TObject);
    property CustomController: TdmVCLPlannerCustomController read FCustomController write SetCustomController;

  end;

implementation

{$R *.dfm}
{ TframeVCLCustomGoogleCalendar }

procedure TframeVCLCustomGoogleCalendar.BindControls;
begin
  dpCalStartDate.DateTime := FCustomController.GCalStartDate;
  FCustomController.Bind('GCalStartDate', dpCalStartDate, 'DateTime');
  dpCalEndDate.DateTime := FCustomController.GCalEndDate;
  FCustomController.Bind('GCalEndDate', dpCalEndDate, 'DateTime');
  grdGoogleCalendar.DataSource := FCustomController.dsGoogleEvents;
  edCalendarName.Text := FCustomController.CalendarName;
  FCustomController.Bind('CalendarName', edCalendarName, 'Text');
  edCalendarDescription.Text := FCustomController.CalendarDescription;
  FCustomController.Bind('CalendarDescription', edCalendarDescription, 'Text');
  edCalendarLocation.Text := FCustomController.CalendarLocation;
  FCustomController.Bind('CalendarLocation', edCalendarLocation, 'Text');
  edCalendarTimeZone.Text := FCustomController.CalendarTimeZone;
  FCustomController.Bind('CalendarTimeZone', edCalendarTimeZone, 'Text');
  grdGoogleCalendar.DataSource := FCustomController.dsGoogleEvents;
  // Bind Controls to Current Record in Calendar Client.

end;

procedure TframeVCLCustomGoogleCalendar.cboCalendarsListChange(Sender: TObject);
begin
  FCustomController.FillCalendarItems;
end;

procedure TframeVCLCustomGoogleCalendar.cboCalendarsListClick(Sender: TObject);
begin
  FCustomController.FillCalendarItems;
end;

procedure TframeVCLCustomGoogleCalendar.SetColor(Sender: TObject);
begin
  if Assigned(FCustomController) then
  begin
    panelColor.Color := FCustomController.BackgroundColor;
    panelColor.Font.Color := FCustomController.ForegroundColor;
  end;
end;

procedure TframeVCLCustomGoogleCalendar.SetCustomController(const Value: TdmVCLPlannerCustomController);
begin
  FCustomController := Value;
  if Assigned(FCustomController) then
  begin
    FCustomController.OnToggleGoogleControls := ToggleControls;
    FCustomController.OnToggleGoogleReminders := ToggleReminders;
    FCustomController.OnSetColor := SetColor;
  end;
end;

procedure TframeVCLCustomGoogleCalendar.ToggleControls(Sender: TObject);
begin
  var
  Connected := Assigned(FCustomController) and FCustomController.Connected;
  Connected := FCustomController.Connected;
  grpCalendars.Enabled := Connected;
  GroupBox2.Enabled := Connected;
  grpItemDetails.Enabled := Connected;
  PageControl1.Enabled := Connected;
  Panel2.Enabled := Connected;
  cboCalendarsList.Enabled := Connected;
  dpCalStartDate.Enabled := Connected;
  dpCalEndDate.Enabled := Connected;
  btUpdate.Enabled := Connected;
  grdGoogleCalendar.Enabled := Connected;
  edCalendarItemName.Enabled := Connected;
  edCalendarItemLocation.Enabled := Connected;
  edCalendarItemDescription.Enabled := Connected;
  cbVisibility.Enabled := Connected;
  cbAllday.Enabled := Connected;
  StartDate.Enabled := Connected;
  EndDate.Enabled := Connected;
  StartTime.Enabled := Connected;
  EndTime.Enabled := Connected;
  lvAtt.Enabled := Connected;
  EditAttName.Enabled := Connected;
  EditAttEmail.Enabled := Connected;
  btInvite.Enabled := Connected;
  btnGoogleEventNew.Enabled := Connected;
  btnGoogleEventUpdate.Enabled := Connected;
  btnGoogleEventDelete.Enabled := Connected;
  btnRemove.Enabled := Connected;
  btnConnect.Enabled := not Connected;
  edCalendarDescription.Enabled := Connected;
  edCalendarName.Enabled := Connected;
  edCalendarLocation.Enabled := Connected;
  edCalendarTimeZone.Enabled := Connected;
  btAddCalendar.Enabled := Connected;
  btDeleteCalendar.Enabled := Connected;
  btUpdateCalendar.Enabled := Connected;
end;

procedure TframeVCLCustomGoogleCalendar.ToggleReminders(Sender: TObject);
begin
  lvRem.Enabled := not cbRem.Checked;
  btAddRem.Enabled := not cbRem.Checked;
  btDelRem.Enabled := not cbRem.Checked;
  EditRemMinutes.Enabled := not cbRem.Checked;
  cbRemMethod.Enabled := not cbRem.Checked;
end;

end.
