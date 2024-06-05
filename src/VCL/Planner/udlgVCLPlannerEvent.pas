unit udlgVCLPlannerEvent;

interface

uses
  // System
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Data.DB,
  // VCL
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ComCtrls, JvExMask, JvToolEdit, JvDBLookup, JvExControls,
  // Januaproject
  JOrm.Planner.Timetable.Intf, Janua.Vcl.Interposers;

type
  TdlgVCLPlannerEvent = class(TForm)
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
    procedure SetEvent(const Value: ITimetable);
  protected
    { function IsTouchPropertyStored(AProperty: TTouchProperty): Boolean; override; }
    { Private declarations }
  public
    { Public declarations }
    property Event: ITimetable read FEvent write SetEvent;
  end;

var
  dlgVCLPlannerEvent: TdlgVCLPlannerEvent;

implementation

uses Spring, System.StrUtils, udmPgPlannerStorage, udmVCLPlannerController, Janua.Components.Planner;

{$R *.dfm}

procedure TdlgVCLPlannerEvent.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FEvent.ActivityGroupJguid.AsString := lkpGroups.Value;
  FEvent.ActivityJguid.AsString := lkpActivities.Value;
end;

{ function TdlgVCLPlannerEvent.IsTouchPropertyStored(AProperty: TTouchProperty): Boolean;
  begin

  end; }

procedure TdlgVCLPlannerEvent.lkpGroupsChange(Sender: TObject);
begin
  // lkpGroups.NotifyControls();
end;

procedure TdlgVCLPlannerEvent.SetEvent(const Value: ITimetable);
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
    if dmPgPlannerStorage.qryActivitiesGroups.Locate('tjguid', Value.ActivityGroupJguid.AsString, [loCaseInsensitive])
    then
      lkpGroups.DisplayValue := dmPgPlannerStorage.qryActivitiesGroupsname.AsWideString;

    // Value.ActivityGroupJguid.Bind('AsString', lkpGroups, 'Value');

    lkpActivities.Value := Value.ActivityJguid.AsString;
    if dmPgPlannerStorage.qryActivities.Locate('tjguid', Value.ActivityJguid.AsString, [loCaseInsensitive]) then
      lkpActivities.DisplayValue := dmPgPlannerStorage.qryActivitiesname.AsWideString;
    // Value.ActivityGroupJguid.Bind('AsString', lkpActivities, 'Value');
  end;
  FEvent := Value;
end;

end.
