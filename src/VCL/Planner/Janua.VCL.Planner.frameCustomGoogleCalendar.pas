unit Janua.VCL.Planner.frameCustomGoogleCalendar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  Janua.VCL.Planner.dmCustomController, Data.DB, Vcl.Grids, Vcl.DBGrids, CRGrid, AdvCustomComponent, AdvPDFIO,
  AdvPlannerPDFIO, Planner, DBPlanner, System.Actions, Vcl.ActnList;

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
    CRDBGrid1: TCRDBGrid;
    Panel1: TPanel;
    Image1: TImage;
    btnConnect: TButton;
    btnRemove: TButton;
    GroupBox1: TGroupBox;
    Label17: TLabel;
    Label14: TLabel;
    ComboBox1: TComboBox;
    GroupBox4: TGroupBox;
    Label16: TLabel;
    Label15: TLabel;
    Label18: TLabel;
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
    GroupBox3: TGroupBox;
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
    Edit3: TEdit;
    Edit5: TEdit;
    StartDate: TDateTimePicker;
    EndDate: TDateTimePicker;
    StartTime: TDateTimePicker;
    EndTime: TDateTimePicker;
    cbVisibility: TComboBox;
    cbAllday: TCheckBox;
    Panel2: TPanel;
    Button6: TButton;
    Button7: TButton;
    Button5: TButton;
    Memo1: TMemo;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
