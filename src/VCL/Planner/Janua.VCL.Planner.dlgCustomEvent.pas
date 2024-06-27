unit Janua.VCL.Planner.dlgCustomEvent;

interface

uses
  // System
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Data.DB,
  // VCL
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs, System.ImageList, VCL.ImgList, VCL.StdCtrls, VCL.Mask,
  VCL.ComCtrls, JvExMask, JvToolEdit, JvDBLookup, JvExControls,
  // Januaproject
  JOrm.Planner.Timetable.Intf, Janua.VCL.Interposers;

type
  TdlgVCLCustomPlannerEvent = class(TForm)
    DataSource1: TDataSource;
    ColorDialog1: TColorDialog;
    ImageList1: TImageList;
    grdDateTime: TGroupBox;
    lbDateFrom: TLabel;
    lbDateTo: TLabel;
    cboHourFrom: TComboBox;
    lbStartHours: TLabel;
    Label1: TLabel;
    cboHourTo: TComboBox;
    lbMin: TLabel;
    cboMinsFrom: TComboBox;
    cboMinsTo: TComboBox;
    Label2: TLabel;
    edEventDateFrom: TDateTimePicker;
    btnOk: TButton;
    btnCancel: TButton;
    Memo1: TMemo;
    lkpGroups: TJvDBLookupCombo;
    lkpActivities: TJvDBLookupCombo;
    Area: TLabel;
    lbActivity: TLabel;
    edEventDateTo: TDateTimePicker;
    lbNote: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lkpGroupsChange(Sender: TObject);
  private
    FEvent: ITimetable;
    FDateFrom: TDate;
    FDateTo: TDate;
    FtbActivitiesGroups: TDataset;
    FGroupNameField: string;
    FtbActivities: TDataset;
    FActivityNameField: string;
    procedure SetEvent(const Value: ITimetable);
    procedure SettbActivitiesGroups(const Value: TDataset);
    procedure SetGroupNameField(const Value: string);
    procedure SettbActivities(const Value: TDataset);
    procedure SetActivityNameField(const Value: string);
  protected
    { function IsTouchPropertyStored(AProperty: TTouchProperty): Boolean; override; }
    { Private declarations }
  public
    { Public declarations }
    property Event: ITimetable read FEvent write SetEvent;
    property tbActivitiesGroups: TDataset read FtbActivitiesGroups write SettbActivitiesGroups;
    property tbActivities: TDataset read FtbActivities write SettbActivities;
    property GroupNameField: string read FGroupNameField write SetGroupNameField;
    property ActivityNameField: string read FActivityNameField write SetActivityNameField;
  end;

var
  dlgVCLCustomPlannerEvent: TdlgVCLCustomPlannerEvent;

implementation

uses Spring, System.StrUtils, Janua.Components.Planner;

{$R *.dfm}

procedure TdlgVCLCustomPlannerEvent.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FEvent.ActivityGroupJguid.AsString := lkpGroups.Value;
  FEvent.ActivityJguid.AsString := lkpActivities.Value;
end;

{ function TdlgVCLPlannerEvent.IsTouchPropertyStored(AProperty: TTouchProperty): Boolean;
  begin

  end; }

procedure TdlgVCLCustomPlannerEvent.lkpGroupsChange(Sender: TObject);
begin
  // lkpGroups.NotifyControls();
end;

procedure TdlgVCLCustomPlannerEvent.SetActivityNameField(const Value: string);
begin
  FActivityNameField := Value;
end;

procedure TdlgVCLCustomPlannerEvent.SetEvent(const Value: ITimetable);
var
  I: Integer;
begin
  if Assigned(Value) then
  begin
    cboMinsFrom.Items.Clear;
    cboMinsTo.Items.Clear;
    // for I := 0 to Pred(Trunc(60 / Value.PeriodMins)) do
    I := 0;
    while I < 60 do
    begin
      cboMinsFrom.Items.Add(IFthen(I < 9, '0', '') + I.ToString);
      cboMinsTo.Items.Add(IFthen(I < 9, '0', '') + I.ToString);
      Inc(I, Value.PeriodMins);
    end;

    edEventDateFrom.Date := Value.DateFrom;
    Value.Bind('DateFrom', edEventDateFrom, 'Date');

    edEventDateTo.Date := Value.DateTo;
    Value.Bind('DateTo', edEventDateTo, 'Date');

    cboHourFrom.ItemIndex := Value.HourFrom;
    Value.Bind('HourFrom', cboHourFrom, 'ItemIndex');

    cboHourTo.ItemIndex := Value.HourTo;
    Value.Bind('HourTo', cboHourTo, 'ItemIndex');

    cboMinsFrom.ItemIndex := Value.PeriodFrom;
    Value.Bind('PeriodFrom', cboMinsFrom, 'ItemIndex');

    cboMinsTo.ItemIndex := Value.PeriodTo;
    Value.Bind('PeriodTo', cboMinsTo, 'ItemIndex');
    // cboEndHour

    Memo1.Text := Value.Notes.AsString;
    Value.Notes.Bind('AsString', Memo1, 'Text');

    lkpGroups.Value := Value.ActivityGroupJguid.AsString;
    if FtbActivitiesGroups.Locate('jguid', Value.ActivityGroupJguid.AsString, [loCaseInsensitive]) then
      lkpGroups.DisplayValue := FtbActivitiesGroups[FGroupNameField].AsWideString;

    // Value.ActivityGroupJguid.Bind('AsString', lkpGroups, 'Value');

    lkpActivities.Value := Value.ActivityJguid.AsString;
    if FtbActivities.Locate('jguid', Value.ActivityJguid.AsString, [loCaseInsensitive]) then
      lkpActivities.DisplayValue := FtbActivities[FActivityNameField].AsWideString;
    // Value.ActivityGroupJguid.Bind('AsString', lkpActivities, 'Value');
  end;
  FEvent := Value;
end;

procedure TdlgVCLCustomPlannerEvent.SetGroupNameField(const Value: string);
begin
  FGroupNameField := Value;
end;

procedure TdlgVCLCustomPlannerEvent.SettbActivities(const Value: TDataset);
begin
  FtbActivities := Value;
end;

procedure TdlgVCLCustomPlannerEvent.SettbActivitiesGroups(const Value: TDataset);
begin
  FtbActivitiesGroups := Value;
end;

end.
