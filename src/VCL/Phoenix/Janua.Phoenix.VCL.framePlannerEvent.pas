unit Janua.Phoenix.VCL.framePlannerEvent;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, System.ImageList,
  System.DateUtils,
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
  Janua.Controls.Intf, Janua.Controls.Forms.Intf, uJanuaVCLFrame, Janua.Cloud.Types, AdvBadge;

type
  TframeVCLPhoenixPlannerEvent = class(TJanuaVCLFrameModel, IJanuaFrame, IJanuaContainer, IJanuaBindable)
    lkpCAP: TJvDBLookupCombo;
    lbCap: TLabel;
    lbData: TLabel;
    grdReportList: TDBCtrlGrid;
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
    Button1: TButton;
    btnWhatsApp: TButton;
    ConfermaAppuntmento1: TMenuItem;
    btnSincro: TButton;
    Button2: TButton;
    TimerEventUpdate: TTimer;
    btnWhatsAppMessages: TAdvBadgeButton;
    WATimer: TTimer;
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
    procedure DBPlanner1DragOverCell(Sender, Source: TObject; X, Y: Integer; State: TDragState;
      var Accept: Boolean);
    procedure DBPlanner1DragDropCell(Sender, Source: TObject; X, Y: Integer);
    procedure ModificaAppuntamento2Click(Sender: TObject);
    procedure btnSincroClick(Sender: TObject);
    procedure TimerEventUpdateTimer(Sender: TObject);
    procedure btnWhatsAppMessagesClick(Sender: TObject);
    procedure WATimerTimer(Sender: TObject);
  private
    // Fields.FieldByName('COLOR')
    ItemColorField: TField;
    // Fields.FieldByName('IMAGE')
    ItemImageField: TField;
    // Fields.FieldByName('CAPTION')
    ItemCaptionField: TField;

    FID: Integer;
    FDBKey: string;
    FRecordItem: TJanuaRecEvent;

    ItemIDField: TField;
    FreportID: Integer;
    FSelectedItem: TPlannerItem;
    FAfterPlannerEvent: TNotifyEvent;
    function GetTecnicoID: Integer;
    procedure SetTecnicoID(const Value: Integer);
    procedure SetSelectedItem(const Value: TPlannerItem);
    procedure SetAfterPlannerEvent(const Value: TNotifyEvent);

    { Private declarations }
  protected
    property SelectedItem: TPlannerItem read FSelectedItem write SetSelectedItem;

  public
    { Public declarations }
    procedure UpdateMessagesBadge;
    procedure AfterConstruction; override;
    procedure Filter;
    property TecnicoID: Integer read GetTecnicoID write SetTecnicoID;
    property AfterPlannerEvent: TNotifyEvent read FAfterPlannerEvent write SetAfterPlannerEvent;
  end;

var
  frameVCLPhoenixPlannerEvent: TframeVCLPhoenixPlannerEvent;

implementation

uses System.Math, System.StrUtils, DlgNuovoStatino,
  // Janua
  Janua.Core.Functions, Janua.Phoenix.VCL.dmPlannerController, udmSVGImageList, udlgWhatsAppMessage;

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
  FreportID := -1;
  // Fields.FieldByName('COLOR')
  ItemColorField := dmVCLPhoenixPlannerController.qryPersonalPlannerEvents.FieldByName('COLORE');
  // Fields.FieldByName('IMAGE')
  ItemImageField := dmVCLPhoenixPlannerController.qryPersonalPlannerEvents.FieldByName('ICONA');
  // Fields.FieldByName('CAPTION')
  ItemCaptionField := nil;
  ItemIDField := dmVCLPhoenixPlannerController.qryPersonalPlannerEvents.FieldByName('CHIAVE');

  dmVCLPhoenixPlannerController.PlannerDlg := DBPlanner1;
  CalendarDate.Date := dmVCLPhoenixPlannerController.SelectedDate;
  Timer1.Enabled := True;
  WATimer.Enabled := True;
end;

procedure TframeVCLPhoenixPlannerEvent.btnAddClick(Sender: TObject);
begin
  FRecordItem := dmVCLPhoenixPlannerController.AddTechEvent(False);
  TimerEventUpdate.Enabled := True;
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

procedure TframeVCLPhoenixPlannerEvent.btnSincroClick(Sender: TObject);
begin
  inherited;
  grdReportList.DataSource.Enabled := False;
  Screen.Cursor := crHourGlass;
  try
    dmVCLPhoenixPlannerController.UpdateReportPlanner;
  finally
    grdReportList.DataSource.Enabled := True;
    Screen.Cursor := crDefault;
  end;
end;

procedure TframeVCLPhoenixPlannerEvent.btnWhatsAppMessagesClick(Sender: TObject);
begin
  WATimer.Enabled := False;
  if not Assigned(dlgWhatsApp) then
    Application.CreateForm(TdlgWhatsApp, dlgWhatsApp);
  try
    dlgWhatsApp.ShowModal;
  finally
    dlgWhatsApp.Free;
    dlgWhatsApp := nil;
    UpdateMessagesBadge;
  end;

  dmVCLPhoenixPlannerController.PlannerDlg := DBPlanner1;
  CalendarDate.Date := dmVCLPhoenixPlannerController.SelectedDate;
  Timer1.Enabled := True;
  WATimer.Enabled := True;

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

procedure TframeVCLPhoenixPlannerEvent.DBPlanner1DragDropCell(Sender, Source: TObject; X, Y: Integer);
begin
  inherited;
  // Create new item only when no items are in the cell
  { if DBPlanner1.CellToItemNum(X, Y) = 0 then }
  begin
    var
    dbp := DBPlanner1.CreateItem;
    dbp.ItemBegin := Y;
    dbp.ItemEnd := Y + 1;
    dbp.itemPos := X;
    if dbp.DBKey = '' then
      dbp.DBKey := TGUID.NewGuid.ToString;
    if dbp.CaptionText = '' then
      dbp.CaptionText := dmVCLPhoenixPlannerController.vtReportPlannerDESCRIZIONE_SCHEDA.AsString;

    var
    vIndex := dbp.Index;
    var
    vNote := dmVCLPhoenixPlannerController.vtReportPlannerNOTE_PER_IL_TECNICO.AsString;

    dbp.CaptionType := TCaptionType.ctTimeText;

    if dbp.Text.Text = '' then
      dbp.Text.Text := vNote;

    dbp.Color := dmVCLPhoenixPlannerController.qryTecniciCalendardefaultcolor.AsInteger;

    var
    vTest := dbp.ItemStartTime;
    var
    vTest2 := IncMinute(vTest, 30);
    var
    vReport := dmVCLPhoenixPlannerController.vtReportPlannerCHIAVE.AsInteger;

    FRecordItem := dmVCLPhoenixPlannerController.InsertEvent(vTest, vTest2, dbp.CaptionText, vReport);
    TimerEventUpdate.Enabled := True;
  end;
end;

procedure TframeVCLPhoenixPlannerEvent.DBPlanner1DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  Accept := (Source is TDBImage);
end;

procedure TframeVCLPhoenixPlannerEvent.DBPlanner1DragOverCell(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  inherited;
  // Accept this only when no items are in this cell
  Accept := True; // DBPlanner1.CellToItemNum(X, Y) = 0;
end;

procedure TframeVCLPhoenixPlannerEvent.DBPlanner1ItemDrag(Sender: TObject; Item: TPlannerItem;
  var Allow: Boolean);
begin
  inherited;
  FRecordItem.StartTime := Item.ItemStartTime;
  FRecordItem.EndTime := Item.ItemEndTime;
  FRecordItem.Description := Item.ItemText;
  dmVCLPhoenixPlannerController.UpdateGoogleMeeting(FRecordItem);
  TimerEventUpdate.Enabled := True;
end;

procedure TframeVCLPhoenixPlannerEvent.DBPlanner1ItemEndEdit(Sender: TObject; Item: TPlannerItem);
begin
  inherited;
  FRecordItem.StartTime := Item.ItemStartTime;
  FRecordItem.EndTime := Item.ItemEndTime;
  FRecordItem.Description := Item.ItemText;
  dmVCLPhoenixPlannerController.UpdateGoogleMeeting(FRecordItem);
  TimerEventUpdate.Enabled := True;
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
  TimerEventUpdate.Enabled := True;
end;

procedure TframeVCLPhoenixPlannerEvent.DBPlanner1ItemSize(Sender: TObject; Item: TPlannerItem;
  Position, FromBegin, FromEnd, ToBegin, ToEnd: Integer);
begin
  inherited;
  FRecordItem.StartTime := Item.ItemStartTime;
  FRecordItem.EndTime := Item.ItemEndTime;
  FRecordItem.Description := Item.ItemText;
  // dmVCLPhoenixPlannerController.UpdateGoogleMeeting(FRecordItem);
  TimerEventUpdate.Enabled := True;
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

procedure TframeVCLPhoenixPlannerEvent.ModificaAppuntamento2Click(Sender: TObject);
begin
  // inherited;
  if JMessageDlg('Elimino l''appuntamento ?') then
  begin
    try
      DBDaySource1.DeleteDBItem(DBPlanner1);
      DBDaySource1.DataSource.DataSet.Close;
      DBDaySource1.DataSource.DataSet.Open;
      if Assigned(FAfterPlannerEvent) then
        FAfterPlannerEvent(Self);
    except
      on e: exception do
      begin
        DBDaySource1.DataSource.DataSet.Close;
        DBDaySource1.DataSource.DataSet.Open;
      end;
    end;
  end;
end;

procedure TframeVCLPhoenixPlannerEvent.SetAfterPlannerEvent(const Value: TNotifyEvent);
begin
  FAfterPlannerEvent := Value;
end;

procedure TframeVCLPhoenixPlannerEvent.SetSelectedItem(const Value: TPlannerItem);
begin
  FSelectedItem := Value;
  dmVCLPhoenixPlannerController.SelectedItem := FSelectedItem;
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
  UpdateMessagesBadge;
end;

procedure TframeVCLPhoenixPlannerEvent.TimerEventUpdateTimer(Sender: TObject);
begin
  inherited;
  TimerEventUpdate.Enabled := False;
  if Assigned(FAfterPlannerEvent) then
    FAfterPlannerEvent(Self);
end;

procedure TframeVCLPhoenixPlannerEvent.UpdateMessagesBadge;
begin
  var
  dm := dmVCLPhoenixPlannerController;
  dm.qryMessageCount.Open;
  btnWhatsAppMessages.Badge := IfThen(dm.qryMessageCountMESSAGES.AsInteger = 0, '',
    dm.qryMessageCountMESSAGES.AsString);
  dm.qryMessageCount.Close;
end;

procedure TframeVCLPhoenixPlannerEvent.WATimerTimer(Sender: TObject);
begin
  inherited;
  UpdateMessagesBadge
end;

end.
