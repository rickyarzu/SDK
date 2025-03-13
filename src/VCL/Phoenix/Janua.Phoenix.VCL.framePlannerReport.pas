unit Janua.Phoenix.VCL.framePlannerReport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, System.ImageList,
  System.DateUtils,
  // DB - TMS
  Data.DB, DBAccess, Uni, Planner, DBPlanner, AdvEdit, AdvEdBtn, PlannerDatePicker,
  // VCL
  VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.Graphics, VCL.ImgList, JvExControls, JvDBLookup, VCL.StdCtrls,
  VCL.ComCtrls, VCL.DBCGrids, VCL.DBCtrls, VCL.ExtCtrls, JvSpeedButton, VCL.Buttons, VCL.Grids, VCL.DBGrids,
  CRGrid, VCL.Menus, AdvBadge, VCL.Mask, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit
  // ZLibraries
    , Globale, ZFIBPlusNodoGenerico2,
  // Janua
  Janua.Phoenix.VCL.dmPlannerController,
  Janua.Core.Types, Janua.Core.Classes.Intf, Janua.Orm.Intf, Janua.Forms.Types, Janua.Bindings.Intf,
  Janua.Controls.Intf, Janua.Controls.Forms.Intf, uJanuaVCLFrame, Janua.Cloud.Types, VCL.WinXCtrls,
  PictureContainer, HTMLabel, dbhtmlab, scControls, scDBControls;

type
  TframeVCLPhoenixPlanneReport = class(TJanuaVCLFrameModel, IJanuaFrame, IJanuaContainer, IJanuaBindable)
    lkpCAP: TJvDBLookupCombo;
    lbCap: TLabel;
    grdReportList: TDBCtrlGrid;
    dsCustomers: TUniDataSource;
    dsTechnicians: TUniDataSource;
    dsCAP: TUniDataSource;
    grpStato: TRadioGroup;
    Panel1: TPanel;
    Panel2: TPanel;
    Area: TLabel;
    cboTecnici: TJvDBLookupCombo;
    lbActivity: TLabel;
    cboCustomers: TJvDBLookupCombo;
    btnImage: TDBImage;
    Timer1: TTimer;
    PopupItems: TPopupMenu;
    Colore1: TMenuItem;
    ModificaAppuntamento1: TMenuItem;
    ModificaAppuntamento2: TMenuItem;
    cbkFilterReport: TCheckBox;
    InviaMsgWhatsApp1: TMenuItem;
    ConfermaAppuntmento1: TMenuItem;
    TimerEventUpdate: TTimer;
    btnWhatsAppMessages: TAdvBadgeButton;
    WATimer: TTimer;
    edDateFilter: TJvDatePickerEdit;
    ckbFilterDate: TCheckBox;
    pnlStatino: TPanel;
    Panel4: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    Label1: TLabel;
    DBText9: TDBText;
    Label2: TLabel;
    DBText5: TDBText;
    Label4: TLabel;
    DBText6: TDBText;
    Label3: TLabel;
    DBText7: TDBText;
    Label5: TLabel;
    DBText10: TDBText;
    pnlInterventi: TPanel;
    DBText2: TDBText;
    Label7: TLabel;
    DBText11: TDBText;
    DBText8: TDBText;
    DBText12: TDBText;
    btnNewMeeting: TJvSpeedButton;
    btnUndoMeeting: TJvSpeedButton;
    btnContract: TJvSpeedButton;
    btnWhatsApp: TJvSpeedButton;
    PictureContainer1: TPictureContainer;
    Panel6: TPanel;
    imgListStatus: TImageList;
    Panel7: TPanel;
    DBText1: TDBText;
    DBText3: TDBText;
    scDBImage1: TscDBImage;
    DBText4: TDBText;
    procedure ChangeFilter(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure DBDaySource1FieldsToItem(Sender: TObject; Fields: TFields; Item: TPlannerItem);
    procedure DBDaySource1ItemToFields(Sender: TObject; Fields: TFields; Item: TPlannerItem);
    procedure btnAddClick(Sender: TObject);
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
    procedure btnSincroClick(Sender: TObject);
    procedure TimerEventUpdateTimer(Sender: TObject);
    procedure btnWhatsAppMessagesClick(Sender: TObject);
    procedure WATimerTimer(Sender: TObject);
    procedure ckbFilterDateClick(Sender: TObject);
    procedure edDateFilterChange(Sender: TObject);
    procedure btnWhatsAppClick(Sender: TObject);
    procedure btnContractClick(Sender: TObject);
    procedure btnUndoMeetingClick(Sender: TObject);
    procedure btnNewMeetingClick(Sender: TObject);
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

    JMonitor: TObject;

    ItemIDField: TField;
    FreportID: Integer;
    FSelectedItem: TPlannerItem;
    FAfterPlannerEvent: TNotifyEvent;
    FdmVCLPhoenixIBPlanner: TdmVCLPhoenixPlannerController;
    function GetTecnicoID: Integer;
    procedure SetTecnicoID(const Value: Integer);
    procedure SetSelectedItem(const Value: TPlannerItem);
    procedure SetAfterPlannerEvent(const Value: TNotifyEvent);
    procedure SetdmVCLPhoenixIBPlanner(const Value: TdmVCLPhoenixPlannerController);

    { Private declarations }
  protected
    property SelectedItem: TPlannerItem read FSelectedItem write SetSelectedItem;

  public
    { Public declarations }
    Constructor Create(AOwner: TComponent); override;
    procedure UpdateMessagesBadge;
    procedure AfterConstruction; override;
    procedure Filter;
    property TecnicoID: Integer read GetTecnicoID write SetTecnicoID;
    property AfterPlannerEvent: TNotifyEvent read FAfterPlannerEvent write SetAfterPlannerEvent;
    property dmVCLPhoenixIBPlanner: TdmVCLPhoenixPlannerController read FdmVCLPhoenixIBPlanner
      write SetdmVCLPhoenixIBPlanner;
  end;

var
  frameVCLPhoenixPlanneReport: TframeVCLPhoenixPlanneReport;

implementation

uses System.Math, System.StrUtils, DlgNuovoStatino,
  // Janua
  Janua.Core.AsyncTask, Janua.Core.Functions, udmSVGImageList, udlgWhatsAppMessage;

{$R *.dfm}

procedure TframeVCLPhoenixPlanneReport.AfterConstruction;
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
  WATimer.Enabled := True;
end;

procedure TframeVCLPhoenixPlanneReport.btnAddClick(Sender: TObject);
begin
  FRecordItem := dmVCLPhoenixPlannerController.AddTechEvent(False);
  TimerEventUpdate.Enabled := True;
end;

procedure TframeVCLPhoenixPlanneReport.btnContractClick(Sender: TObject);
begin
  inherited;
  dmVCLPhoenixPlannerController.actContractExecute(Self);
end;

procedure TframeVCLPhoenixPlanneReport.btnImageMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft then { drag only if left button pressed }
    with Sender as TDBImage do { treat Sender as TFileListBox }
    begin
      BeginDrag(False); { if so, drag it }
      FID := dmVCLPhoenixPlannerController.vtReportPlannerCHIAVE.AsInteger;
    end;
end;

procedure TframeVCLPhoenixPlanneReport.btnNewMeetingClick(Sender: TObject);
begin
  inherited;
  dmVCLPhoenixPlannerController.actNewMeetingExecute(Sender);
end;

procedure TframeVCLPhoenixPlanneReport.btnSearchClick(Sender: TObject);
begin
  Filter
end;

procedure TframeVCLPhoenixPlanneReport.btnSincroClick(Sender: TObject);
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

procedure TframeVCLPhoenixPlanneReport.btnUndoMeetingClick(Sender: TObject);
begin
  dmVCLPhoenixPlannerController.actUndoMeetingExecute(Self);
end;

procedure TframeVCLPhoenixPlanneReport.btnWhatsAppClick(Sender: TObject);
begin
  dmVCLPhoenixPlannerController.actWhatsAppMsgExecute(Self);
end;

procedure TframeVCLPhoenixPlanneReport.btnWhatsAppMessagesClick(Sender: TObject);
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

  WATimer.Enabled := True;

end;

procedure TframeVCLPhoenixPlanneReport.cbkFilterReportClick(Sender: TObject);
begin
  inherited;
  Filter;
end;

procedure TframeVCLPhoenixPlanneReport.cboTecniciChange(Sender: TObject);
begin
  if dmVCLPhoenixPlannerController.SelectedCalendarTec <> cboTecnici.Value.ToInteger then
  begin
    dmVCLPhoenixPlannerController.SelectedCalendarTec := cboTecnici.Value.ToInteger;
  end;

  Filter;
end;

procedure TframeVCLPhoenixPlanneReport.ChangeFilter(Sender: TObject);
begin
  Filter
end;

procedure TframeVCLPhoenixPlanneReport.ckbFilterDateClick(Sender: TObject);
begin
  inherited;
  Filter
end;

constructor TframeVCLPhoenixPlanneReport.Create(AOwner: TComponent);
begin
  inherited;
  JMonitor := TObject.Create;
end;

procedure TframeVCLPhoenixPlanneReport.DBDaySource1FieldsToItem(Sender: TObject; Fields: TFields;
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

procedure TframeVCLPhoenixPlanneReport.DBDaySource1ItemToFields(Sender: TObject; Fields: TFields;
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

procedure TframeVCLPhoenixPlanneReport.DBPlanner1DragDrop(Sender, Source: TObject; X, Y: Integer);
begin
  if FID = dmVCLPhoenixPlannerController.vtReportPlannerCHIAVE.AsInteger then
    btnAddClick(Sender);
end;

procedure TframeVCLPhoenixPlanneReport.DBPlanner1DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  Accept := (Source is TDBImage);
end;

procedure TframeVCLPhoenixPlanneReport.DBPlanner1ItemDrag(Sender: TObject; Item: TPlannerItem;
  var Allow: Boolean);
begin
  inherited;
  FRecordItem.StartTime := Item.ItemStartTime;
  FRecordItem.EndTime := Item.ItemEndTime;
  FRecordItem.Description := Item.ItemText;
  dmVCLPhoenixPlannerController.UpdateGoogleMeeting(FRecordItem);
  TimerEventUpdate.Enabled := True;
end;

procedure TframeVCLPhoenixPlanneReport.DBPlanner1ItemEndEdit(Sender: TObject; Item: TPlannerItem);
begin
  inherited;
  FRecordItem.StartTime := Item.ItemStartTime;
  FRecordItem.EndTime := Item.ItemEndTime;
  FRecordItem.Description := Item.ItemText;
  dmVCLPhoenixPlannerController.UpdateGoogleMeeting(FRecordItem);
  TimerEventUpdate.Enabled := True;
end;

procedure TframeVCLPhoenixPlanneReport.DBPlanner1ItemEnter(Sender: TObject; Item: TPlannerItem);
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

procedure TframeVCLPhoenixPlanneReport.DBPlanner1ItemMove(Sender: TObject; Item: TPlannerItem;
  FromBegin, FromEnd, FromPos, ToBegin, ToEnd, ToPos: Integer);
begin
  inherited;
  FRecordItem.StartTime := Item.ItemStartTime;
  FRecordItem.EndTime := Item.ItemEndTime;
  FRecordItem.Description := Item.ItemText;
  dmVCLPhoenixPlannerController.UpdateGoogleMeeting(FRecordItem);
  TimerEventUpdate.Enabled := True;
end;

procedure TframeVCLPhoenixPlanneReport.DBPlanner1ItemSize(Sender: TObject; Item: TPlannerItem;
  Position, FromBegin, FromEnd, ToBegin, ToEnd: Integer);
begin
  inherited;
  FRecordItem.StartTime := Item.ItemStartTime;
  FRecordItem.EndTime := Item.ItemEndTime;
  FRecordItem.Description := Item.ItemText;
  // dmVCLPhoenixPlannerController.UpdateGoogleMeeting(FRecordItem);
  TimerEventUpdate.Enabled := True;
end;

procedure TframeVCLPhoenixPlanneReport.DBText1DblClick(Sender: TObject);
var
  ADialog: TDLG_STATINO;
begin
  ADialog := TDLG_STATINO.Create(Nil);
  try
    ADialog.Init(TFiBConfig.QRY_GENERIC, dmVCLPhoenixPlannerController.qryReportPlannerCHIAVE.AsInteger);
    if ADialog.ShowModal = mrOK then
    begin
      ADialog.NodoStatino.Registra(spsRegistra);
      // FStatinoModificato := True;
    end;
  finally
    ADialog.Free;
  end;
end;

procedure TframeVCLPhoenixPlanneReport.edDateFilterChange(Sender: TObject);
begin
  inherited;
  if ckbFilterDate.Checked then
    Filter
end;

procedure TframeVCLPhoenixPlanneReport.Filter;
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

  lFilter.Date := edDateFilter.Date;
  lFilter.FilterDate := ckbFilterDate.Checked;

  dmVCLPhoenixPlannerController.FilterMeetingDialog(lFilter);

end;

function TframeVCLPhoenixPlanneReport.GetTecnicoID: Integer;
begin
  Result := cboTecnici.Value.ToInteger;
end;

procedure TframeVCLPhoenixPlanneReport.SetAfterPlannerEvent(const Value: TNotifyEvent);
begin
  FAfterPlannerEvent := Value;
end;

procedure TframeVCLPhoenixPlanneReport.SetdmVCLPhoenixIBPlanner(const Value: TdmVCLPhoenixPlannerController);
begin
  FdmVCLPhoenixIBPlanner := Value;
end;

procedure TframeVCLPhoenixPlanneReport.SetSelectedItem(const Value: TPlannerItem);
begin
  FSelectedItem := Value;
  dmVCLPhoenixPlannerController.SelectedItem := FSelectedItem;
end;

procedure TframeVCLPhoenixPlanneReport.SetTecnicoID(const Value: Integer);
begin
  cboTecnici.Value := Value.ToString;
end;

procedure TframeVCLPhoenixPlanneReport.TimerEventUpdateTimer(Sender: TObject);
begin
  inherited;
  TimerEventUpdate.Enabled := False;
end;

procedure TframeVCLPhoenixPlanneReport.UpdateMessagesBadge;
begin

  var
  dm := dmVCLPhoenixPlannerController;
  dm.qryMessageCount.Open;
  var
  aResult := dm.qryMessageCountMESSAGES.AsInteger;
  dm.qryMessageCount.Close;
  btnWhatsAppMessages.Badge := IfThen(aResult = 0, '', aResult.ToString);
  (*
    Async.Run<Integer>(
    function: Integer
    begin
    // This is the "background" anonymous method. Runs in the
    // background thread, and its result is passed
    // to the "success" callback.
    // In this case the result is a String.
    Result := 0;
    System.TMonitor.Enter(JMonitor);
    try
    var
    dm := dmVCLPhoenixPlannerController;
    dm.qryMessageCount.Open;
    Result := dm.qryMessageCountMESSAGES.AsInteger;
    dm.qryMessageCount.Close;
    finally
    System.TMonitor.Exit(JMonitor);
    end;
    end,
    procedure(const aValue: Integer)
    begin
    // This is the "success" callback. Runs in the UI thread and
    // gets the result of the "background" anonymous method.
    btnWhatsAppMessages.Badge := IfThen(aValue = 0, '', aValue.ToString);
    end,
    procedure(const Ex: exception)
    begin
    // This is the "error" callback.
    // Runs in the UI thread and is called only if the
    // "background" anonymous method raises an exception.
    // nothing to see here ...
    end);

    var
    dm := dmVCLPhoenixPlannerController;
    dm.qryMessageCount.Open;
    btnWhatsAppMessages.Badge := IfThen(dm.qryMessageCountMESSAGES.AsInteger = 0, '',
    dm.qryMessageCountMESSAGES.AsString);
    dm.qryMessageCount.Close;
  *)
end;

procedure TframeVCLPhoenixPlanneReport.WATimerTimer(Sender: TObject);
begin
  inherited;
  UpdateMessagesBadge
end;

end.
