unit Janua.Phoenix.VCL.dlgPlannerEvent;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, System.ImageList,
  // DB - TMS
  Data.DB, DBAccess, Uni, Planner, DBPlanner, AdvEdit, AdvEdBtn, PlannerDatePicker,
  // VCL
  VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.Graphics, VCL.ImgList, JvExControls, JvDBLookup, VCL.StdCtrls,
  VCL.ComCtrls, VCL.DBCGrids, VCL.DBCtrls, VCL.ExtCtrls, JvSpeedButton,
  // ZLibraries
  Globale, ZFIBPlusNodoGenerico2,
  // Janua
  Janua.Core.Types, Janua.Core.Classes.Intf, Janua.Orm.Intf, Janua.Forms.Types, Janua.Bindings.Intf,
  Janua.Controls.Intf, Janua.Controls.Forms.Intf, uJanuaVCLForm, VCL.Buttons;

type
  TdlgVCLPhoenixPlannerEvent = class(TJanuaVCLFormModel, IJanuaForm, IJanuaContainer, IJanuaBindable)
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
    btnAdd: TButton;
    Label5: TLabel;
    DBText7: TDBText;
    btnRemove: TButton;
    dsCustomers: TUniDataSource;
    dsTechnicians: TUniDataSource;
    dsCAP: TUniDataSource;
    grpStato: TRadioGroup;
    Panel1: TPanel;
    Panel2: TPanel;
    DBText1: TDBText;
    DBText3: TDBText;
    DBDaySource1: TDBDaySource;
    ckbCAP: TCheckBox;
    ckbActivities: TCheckBox;
    CalendarDate: TDateTimePicker;
    Area: TLabel;
    cboTecnici: TJvDBLookupCombo;
    lbActivity: TLabel;
    cboCustomers: TJvDBLookupCombo;
    btnOk: TButton;
    btnCancel: TButton;
    lbNote: TLabel;
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
    DBImage1: TDBImage;
    procedure ChangeFilter(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnImageClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CalendarDateChange(Sender: TObject);
    procedure DBDaySource1FieldsToItem(Sender: TObject; Fields: TFields; Item: TPlannerItem);
    procedure DBDaySource1ItemToFields(Sender: TObject; Fields: TFields; Item: TPlannerItem);
  private
    // Fields.FieldByName('COLOR')
    ItemColorField: TField;
    // Fields.FieldByName('IMAGE')
    ItemImageField: TField;
    // Fields.FieldByName('CAPTION')
    ItemCaptionField: TField;
    FreportID: Integer;
    function GetTecnicoID: Integer;
    procedure SetTecnicoID(const Value: Integer);

    { Private declarations }
  public
    { Public declarations }
    procedure Filter;
    property TecnicoID: Integer read GetTecnicoID write SetTecnicoID;
  end;

var
  dlgVCLPhoenixPlannerEvent: TdlgVCLPhoenixPlannerEvent;

implementation

uses System.Math, DlgNuovoStatino, Janua.Phoenix.VCL.dmPlannerController, udmSVGImageList;

{$R *.dfm}

procedure TdlgVCLPhoenixPlannerEvent.btnImageClick(Sender: TObject);
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

procedure TdlgVCLPhoenixPlannerEvent.btnSearchClick(Sender: TObject);
begin
  Filter
end;

procedure TdlgVCLPhoenixPlannerEvent.CalendarDateChange(Sender: TObject);
begin
  inherited;
  dmVCLPhoenixPlannerController.SelectedDate := CalendarDate.Date;
end;

procedure TdlgVCLPhoenixPlannerEvent.ChangeFilter(Sender: TObject);
begin
  Filter
end;

procedure TdlgVCLPhoenixPlannerEvent.DBDaySource1FieldsToItem(Sender: TObject; Fields: TFields;
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
end;

procedure TdlgVCLPhoenixPlannerEvent.DBDaySource1ItemToFields(Sender: TObject; Fields: TFields;
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

procedure TdlgVCLPhoenixPlannerEvent.Filter;
var
  lFilter: TRecordFilter;
begin
  if not cboTecnici.Value.IsEmpty then
    lFilter.TecnicoDB := cboTecnici.Value.ToInteger
  else
    lFilter.TecnicoDB := -1;

  lFilter.TecnicoCk := True; { not lkpGroups.Value.IsEmpty and ckbFilterTech.Checked; }

  lFilter.CAP := lkpCAP.Value;
  lFilter.CAPCk := ckbCAP.Checked and not lkpCAP.Value.IsEmpty;

  if not cboCustomers.Value.IsEmpty then
    lFilter.ClienteID := cboCustomers.Value.ToInteger
  else
    lFilter.ClienteID := -1;

  lFilter.ClienteCk := ckbActivities.Checked and not cboCustomers.Value.IsEmpty;

  lFilter.Status := grpStato.ItemIndex;

  dmVCLPhoenixPlannerController.FilterMeeting(lFilter);
end;

procedure TdlgVCLPhoenixPlannerEvent.FormCreate(Sender: TObject);
begin
  inherited;
  FreportID := -1;
  // Fields.FieldByName('COLOR')
  ItemColorField := dmVCLPhoenixPlannerController.qryPersonalPlannerEvents.FieldByName('COLORE');
  // Fields.FieldByName('IMAGE')
  ItemImageField := dmVCLPhoenixPlannerController.qryPersonalPlannerEvents.FieldByName('ICONA');
  // Fields.FieldByName('CAPTION')
  ItemCaptionField := nil;
end;

procedure TdlgVCLPhoenixPlannerEvent.FormShow(Sender: TObject);
begin
  inherited;
  CalendarDate.Date := dmVCLPhoenixPlannerController.SelectedDate;
end;

function TdlgVCLPhoenixPlannerEvent.GetTecnicoID: Integer;
begin
  Result := cboTecnici.Value.ToInteger;
end;


procedure TdlgVCLPhoenixPlannerEvent.SetTecnicoID(const Value: Integer);
begin
  cboTecnici.Value := Value.ToString;
end;

end.
