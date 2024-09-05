unit Janua.Phoenix.VCL.framePlannerEvent;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, System.ImageList,
  // DB - TMS
  Data.DB, DBAccess, Uni, Planner, DBPlanner, AdvEdit, AdvEdBtn, PlannerDatePicker,
  // VCL
  VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.Graphics, VCL.ImgList, JvExControls, JvDBLookup, VCL.StdCtrls,
  VCL.ComCtrls, VCL.DBCGrids, VCL.DBCtrls, VCL.ExtCtrls, JvSpeedButton, VCL.Buttons, VCL.Grids, VCL.DBGrids,
  CRGrid, VCL.Menus,
  // ZLibraries
  Globale, ZFIBPlusNodoGenerico2,
  // Janua
  Janua.Core.Types, Janua.Core.Classes.Intf, Janua.Orm.Intf, Janua.Forms.Types, Janua.Bindings.Intf,
  Janua.Controls.Intf, Janua.Controls.Forms.Intf, uJanuaVCLFrame, Janua.Cloud.Types;

type
  TframeVCLPhoenixPlannerEvent = class(TJanuaVCLFrameModel, IJanuaFrame, IJanuaContainer, IJanuaBindable)
    lkpCAP: TJvDBLookupCombo;
    lbCap: TLabel;
    lbData: TLabel;
    DBCtrlGrid1: TDBCtrlGrid;
    DBPlanner1: TDBPlanner;
    btnEditMeeting: TButton;
    btnDeleteMeeting: TButton;
    pnlInterventi: TPanel;
    Label3: TLabel;
    DBText4: TDBText;
    lbIdranti: TLabel;
    DBText5: TDBText;
    Label4: TLabel;
    DBText6: TDBText;
    Label5: TLabel;
    DBText7: TDBText;
    dsCustomers: TUniDataSource;
    dsTechnicians: TUniDataSource;
    dsCAP: TUniDataSource;
    grpStato: TRadioGroup;
    Panel1: TPanel;
    Panel2: TPanel;
    DBText1: TDBText;
    DBText3: TDBText;
    DBDaySource1: TDBDaySource;
    CalendarDate: TDateTimePicker;
    Area: TLabel;
    cboTecnici: TJvDBLookupCombo;
    lbActivity: TLabel;
    cboCustomers: TJvDBLookupCombo;
    Memo1: TMemo;
    grdDateTime: TGroupBox;
    lbDateFrom: TLabel;
    lbDateTo: TLabel;
    lbStartHours: TLabel;
    Label1: TLabel;
    lbMin: TLabel;
    Label2: TLabel;
    cboHourFrom: TComboBox;
    cboHourTo: TComboBox;
    cboMinsFrom: TComboBox;
    cboMinsTo: TComboBox;
    edEventDateFrom: TDateTimePicker;
    edEventDateTo: TDateTimePicker;
    btnSearch: TBitBtn;
    dsReportsPlanner: TUniDataSource;
    dsCalendar: TUniDataSource;
    btnImage: TDBImage;
    DBText2: TDBText;
    btnPrevDay: TButton;
    btnNextDay: TButton;
    Timer1: TTimer;
    PopupItems: TPopupMenu;
    Colore1: TMenuItem;
    ModificaAppuntamento1: TMenuItem;
    ModificaAppuntamento2: TMenuItem;
    cbkFilterReport: TCheckBox;
    Panel3: TPanel;
    DBText8: TDBText;
    DBText9: TDBText;
    Label6: TLabel;
    DBText10: TDBText;
    Label7: TLabel;
    DBText11: TDBText;
    InviaMsgWhatsApp1: TMenuItem;
    procedure ChangeFilter(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure CalendarDateChange(Sender: TObject);
    procedure DBDaySource1FieldsToItem(Sender: TObject; Fields: TFields; Item: TPlannerItem);
    procedure DBDaySource1ItemToFields(Sender: TObject; Fields: TFields; Item: TPlannerItem);
    procedure btnPrevDayClick(Sender: TObject);
    procedure btnNextDayClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure cboTecniciChange(Sender: TObject);
    procedure btnImageMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure DBPlanner1DragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState;
      var Accept: Boolean);
    procedure DBPlanner1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure DBText1DblClick(Sender: TObject);
    procedure cbkFilterReportClick(Sender: TObject);
    procedure DBPlanner1ItemEnter(Sender: TObject; Item: TPlannerItem);
    procedure DBPlanner1ItemEndEdit(Sender: TObject; Item: TPlannerItem);
    procedure DBPlanner1ItemDrag(Sender: TObject; Item: TPlannerItem; var Allow: Boolean);
    procedure DBPlanner1ItemMove(Sender: TObject; Item: TPlannerItem;
      FromBegin, FromEnd, FromPos, ToBegin, ToEnd, ToPos: Integer);
    procedure DBPlanner1ItemSize(Sender: TObject; Item: TPlannerItem;
      Position, FromBegin, FromEnd, ToBegin, ToEnd: Integer);
  private
    // Fields.FieldByName('COLOR')
    ItemColorField: TField;
    // Fields.FieldByName('IMAGE')
    ItemImageField: TField;
    // Fields.FieldByName('CAPTION')
    ItemCaptionField: TField;

    FID: Integer;
    FDBKey: string;
    SelectedItem: TPlannerItem;
    FRecordItem: TJanuaRecEvent;

    ItemIDField: TField;
    FreportID: Integer;
    function GetTecnicoID: Integer;
    procedure SetTecnicoID(const Value: Integer);

    { Private declarations }
  public
    { Public declarations }
    procedure AfterConstruction; override;
    procedure Filter;
    property TecnicoID: Integer read GetTecnicoID write SetTecnicoID;
  end;

var
  frameVCLPhoenixPlannerEvent: TframeVCLPhoenixPlannerEvent;

implementation

uses System.Math, DlgNuovoStatino, Janua.Phoenix.VCL.dmPlannerController, udmSVGImageList;

{$R *.dfm}

procedure TframeVCLPhoenixPlannerEvent.btnPrevDayClick(Sender: TObject);
begin
  var
  aDay := DayOfWeek(CalendarDate.Date - 1);
  var
  aDate := CalendarDate.Date;
  aDay := 1 + IfThen(aDay = 1, 1, 0);
  // aDay := 1;
  CalendarDate.Date := aDate - aDay;
  CalendarDateChange(Self);
end;

procedure TframeVCLPhoenixPlannerEvent.AfterConstruction;
begin
  inherited;
  dmVCLPhoenixPlannerController.PlannerDlg := DBPlanner1;
  FreportID := -1;
  // Fields.FieldByName('COLOR')
  ItemColorField := dmVCLPhoenixPlannerController.qryPersonalPlannerEvents.FieldByName('COLORE');
  // Fields.FieldByName('IMAGE')
  ItemImageField := dmVCLPhoenixPlannerController.qryPersonalPlannerEvents.FieldByName('ICONA');
  // Fields.FieldByName('CAPTION')
  ItemCaptionField := nil;

  ItemIDField := dmVCLPhoenixPlannerController.qryPersonalPlannerEvents.FieldByName('CHIAVE');

  CalendarDate.Date := dmVCLPhoenixPlannerController.SelectedDate;
  Timer1.Enabled := True;
end;

procedure TframeVCLPhoenixPlannerEvent.btnAddClick(Sender: TObject);
begin
  Self.FRecordItem := dmVCLPhoenixPlannerController.AddTechEvent(False);
end;

procedure TframeVCLPhoenixPlannerEvent.btnImageMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft then { drag only if left button pressed }
    with Sender as TDBImage do { treat Sender as TFileListBox }
    begin
      BeginDrag(False); { if so, drag it }
      FID := dmVCLPhoenixPlannerController.vtReportPlannerCHIAVE.AsInteger;
    end;
end;

procedure TframeVCLPhoenixPlannerEvent.btnSearchClick(Sender: TObject);
begin
  Filter
end;

procedure TframeVCLPhoenixPlannerEvent.btnNextDayClick(Sender: TObject);
begin
  var
  aDate := (CalendarDate.Date);
  var
  aDay := DayOfWeek(CalendarDate.Date + 1);
  aDay := +1 + IfThen(aDay = 1, 1, 0);
  CalendarDate.Date := aDate + aDay;
  CalendarDateChange(Self);
end;

procedure TframeVCLPhoenixPlannerEvent.CalendarDateChange(Sender: TObject);
begin
  inherited;
  dmVCLPhoenixPlannerController.SelectedDate := CalendarDate.Date;
  DBDaySource1.Day := CalendarDate.Date;
end;

procedure TframeVCLPhoenixPlannerEvent.cbkFilterReportClick(Sender: TObject);
begin
  inherited;
  Filter;
end;

procedure TframeVCLPhoenixPlannerEvent.cboTecniciChange(Sender: TObject);
begin
  if dmVCLPhoenixPlannerController.SelectedCalendarTec <> cboTecnici.Value.ToInteger then
  begin
    DBDaySource1.DataSource.DataSet.Close;
    DBDaySource1.ClearDBItems;
    DBPlanner1.Items.ClearAll;
    dmVCLPhoenixPlannerController.SelectedCalendarTec := cboTecnici.Value.ToInteger;
  end;

  Filter;
end;

procedure TframeVCLPhoenixPlannerEvent.ChangeFilter(Sender: TObject);
begin
  Filter
end;

procedure TframeVCLPhoenixPlannerEvent.DBDaySource1FieldsToItem(Sender: TObject; Fields: TFields;
  Item: TPlannerItem);
begin
  { The FieldsToItem event is called when records are read from the database
    and extra properties are set from database fields. With this code, any
    field from the database can be connected in a custom way to planner item
    properties.
  }
  Item.CaptionType := ctTimeText;
  // Fields.FieldByName('COLOR')
  if Assigned(ItemColorField) and (ItemColorField.AsInteger > 0) then
    Item.Color := TColor(ItemColorField.AsInteger);
  Item.CaptionBkg := Item.Color;
  // Fields.FieldByName('IMAGE')
  if Assigned(ItemImageField) and (ItemImageField.AsInteger > -1) then
    Item.ImageID := ItemImageField.AsInteger;
  // Fields.FieldByName('CAPTION')
  if Assigned(ItemCaptionField) then
  begin
    if ItemCaptionField.AsBoolean then
      Item.CaptionType := ctTimeText
    else
      Item.CaptionType := TCaptionType.ctNone;
  end;

  Item.ID := ItemIDField.AsInteger;
end;

procedure TframeVCLPhoenixPlannerEvent.DBDaySource1ItemToFields(Sender: TObject; Fields: TFields;
  Item: TPlannerItem);
begin
  { The ItemToFields event is called when items are written to the database
    and extra properties are stored in database fields. With this code, any
    property of the item can be saved into any field of the database in
    a custom way to be retrieved later with the inverse event FieldsToItem
  }
  if Assigned(ItemColorField) then
    ItemColorField.AsInteger := Integer(Item.Color);
  if Assigned(ItemCaptionField) then
    ItemCaptionField.AsBoolean := Item.CaptionType = ctTime;
  if Assigned(ItemImageField) then
    ItemImageField.AsInteger := Item.ImageID;
end;

procedure TframeVCLPhoenixPlannerEvent.DBPlanner1DragDrop(Sender, Source: TObject; X, Y: Integer);
begin
  if FID = dmVCLPhoenixPlannerController.vtReportPlannerCHIAVE.AsInteger then
    btnAddClick(Sender);
end;

procedure TframeVCLPhoenixPlannerEvent.DBPlanner1DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  Accept := (Source is TDBImage);
end;

procedure TframeVCLPhoenixPlannerEvent.DBPlanner1ItemDrag(Sender: TObject; Item: TPlannerItem;
  var Allow: Boolean);
begin
  inherited;
  FRecordItem.StartTime := Item.ItemStartTime;
  FRecordItem.EndTime := Item.ItemEndTime;
  FRecordItem.Description := Item.ItemText;
  dmVCLPhoenixPlannerController.UpdateGoogleMeeting(FRecordItem);
end;

procedure TframeVCLPhoenixPlannerEvent.DBPlanner1ItemEndEdit(Sender: TObject; Item: TPlannerItem);
begin
  inherited;
  FRecordItem.StartTime := Item.ItemStartTime;
  FRecordItem.EndTime := Item.ItemEndTime;
  FRecordItem.Description := Item.ItemText;
  dmVCLPhoenixPlannerController.UpdateGoogleMeeting(FRecordItem);
end;

procedure TframeVCLPhoenixPlannerEvent.DBPlanner1ItemEnter(Sender: TObject; Item: TPlannerItem);
begin
  inherited;
  if FID <> Item.ID then
  begin
    FID := Item.ID;
    FDBKey := Item.DBKey;
    SelectedItem := Item;
    FRecordItem := dmVCLPhoenixPlannerController.LocateGoogleMeeting(FDBKey);
  end;
end;

procedure TframeVCLPhoenixPlannerEvent.DBPlanner1ItemMove(Sender: TObject; Item: TPlannerItem;
  FromBegin, FromEnd, FromPos, ToBegin, ToEnd, ToPos: Integer);
begin
  inherited;
  FRecordItem.StartTime := Item.ItemStartTime;
  FRecordItem.EndTime := Item.ItemEndTime;
  FRecordItem.Description := Item.ItemText;
  dmVCLPhoenixPlannerController.UpdateGoogleMeeting(FRecordItem);
end;

procedure TframeVCLPhoenixPlannerEvent.DBPlanner1ItemSize(Sender: TObject; Item: TPlannerItem;
  Position, FromBegin, FromEnd, ToBegin, ToEnd: Integer);
begin
  inherited;
  FRecordItem.StartTime := Item.ItemStartTime;
  FRecordItem.EndTime := Item.ItemEndTime;
  FRecordItem.Description := Item.ItemText;
  dmVCLPhoenixPlannerController.UpdateGoogleMeeting(FRecordItem);
end;

procedure TframeVCLPhoenixPlannerEvent.DBText1DblClick(Sender: TObject);
var
  ADialog: TDLG_STATINO;
begin
  ADialog := TDLG_STATINO.Create(Nil);
  try
    ADialog.Init(TFiBConfig.QRY_GENERIC, dmVCLPhoenixPlannerController.vtReportPlannerCHIAVE.AsInteger);
    if ADialog.ShowModal = mrOK then
    begin
      ADialog.NodoStatino.Registra(spsRegistra);
      // FStatinoModificato := True;
    end;
  finally
    ADialog.Free;
  end;
end;

procedure TframeVCLPhoenixPlannerEvent.Filter;
var
  lFilter: TRecordFilter;
begin

  // il Tecnico può essere impostato o non impostato (difficile) ma in ogni caso deve essere possibile riaassegnare
  if not cboTecnici.Value.IsEmpty then
    lFilter.TecnicoDB := cboTecnici.Value.ToInteger
  else
    lFilter.TecnicoDB := -1;
  lFilter.TecnicoCk := cbkFilterReport.Checked; { not lkpGroups.Value.IsEmpty and ckbFilterTech.Checked; }

  // Cap può essere Non settato (default) impostato (ha un cap) o resettato (tutti i cap) pari a 00000
  lFilter.CAP := lkpCAP.Value;
  lFilter.CAPCk := not(lkpCAP.Value.IsEmpty or (lkpCAP.Value = '00000'));

  if not cboCustomers.Value.IsEmpty then
    lFilter.ClienteID := cboCustomers.Value.ToInteger
  else
    lFilter.ClienteID := -1;

  lFilter.ClienteCk := not(cboCustomers.Value.IsEmpty or (cboCustomers.Value.ToInteger = 0));

  lFilter.Status := grpStato.ItemIndex;

  dmVCLPhoenixPlannerController.FilterMeetingDialog(lFilter);
end;

function TframeVCLPhoenixPlannerEvent.GetTecnicoID: Integer;
begin
  Result := cboTecnici.Value.ToInteger;
end;

procedure TframeVCLPhoenixPlannerEvent.SetTecnicoID(const Value: Integer);
begin
  cboTecnici.Value := Value.ToString;
end;

procedure TframeVCLPhoenixPlannerEvent.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;
  btnPrevDayClick(Self);
  btnNextDayClick(Self);
end;

end.
