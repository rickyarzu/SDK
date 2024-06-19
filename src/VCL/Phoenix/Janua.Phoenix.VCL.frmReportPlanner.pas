unit Janua.Phoenix.VCL.frmReportPlanner; // TfrmPhoenixVCLReportPlanner

interface

uses
  // RTL
  System.SysUtils, System.Variants, System.Classes, System.Actions, System.UITypes, System.DateUtils,
  // Win
  Winapi.Windows, Winapi.Messages,
  // VCL
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.ExtCtrls, VCL.Grids, VCL.DBGrids, VCL.StdCtrls,
  VCL.Buttons, VCL.Mask, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, JvExControls,
  JvDBLookup, VCL.Menus,
  // DB - UniDAC
  CRGrid, ActnList, MemDS, Data.DB, DBAccess, Uni,
  // ZLibraries
  Globale, ZFIBPlusNodoGenerico2,
  // Janua
  Janua.TMS.Phoenix.framePlannerCalendar,
  Janua.VCL.EnhCRDBGrid, Janua.VCL.frameCRDBGrid, uJanuaVCLFrame, Janua.FDAC.Phoenix.Lab, VCL.ComCtrls,
  AdvCustomComponent, AdvPDFIO, AdvPlannerPDFIO, Planner, DBPlanner, System.ImageList, VCL.ImgList,
  Janua.TMS.Planner.frameCustomCalendar;

type
  TfrmPhoenixVCLReportPlanner = class(TForm)
    PageControl1: TPageControl;
    tabTicketsList: TTabSheet;
    tabPlannerCalendar: TTabSheet;
    pnlTop: TPanel;
    btnUpdate: TBitBtn;
    pnlSearch: TPanel;
    edDateFilter: TJvDatePickerEdit;
    ckbFilterDate: TCheckBox;
    lkbTechnicianID: TJvDBLookupCombo;
    ckbFilterTecnician: TCheckBox;
    lkpCustomer: TJvDBLookupCombo;
    ckbFilterCustomer: TCheckBox;
    btnSearch: TBitBtn;
    ckbCAP: TCheckBox;
    grpStato: TRadioGroup;
    lkpCAP: TJvDBLookupCombo;
    frameVCLCRDBGrid: TframeVCLCRDBGrid;
    pnlBottom: TPanel;
    lbFilter: TLabel;
    dsTechnicians: TUniDataSource;
    dsCustomers: TUniDataSource;
    dsCAP: TUniDataSource;
    PopupMenu1: TPopupMenu;
    Modifica1: TMenuItem;
    AnnullaAppuntamento1: TMenuItem;
    N2: TMenuItem;
    ModificaStatino1: TMenuItem;
    VisualizzaContratto1: TMenuItem;
    ColorDialog1: TColorDialog;
    ItemPopup: TPopupMenu;
    Color1: TMenuItem;
    Caption1: TMenuItem;
    ImageList1: TImageList;
    dsDayCalendar: TDataSource;
    dsTech: TDataSource;
    dsTechCalendar: TDataSource;
    N1: TMenuItem;
    tabGoogleCalendar: TTabSheet;
    frameTMSPhoenixPlannerCalendar1: TframeTMSPhoenixPlannerCalendar;
    procedure FormCreate(Sender: TObject);
    procedure frameVCLCRDBGridCRDBGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer;
      Column: TColumn; State: TGridDrawState);
    procedure btnUpdateClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure frameVCLCRDBGridCRDBGridDblClick(Sender: TObject);
    procedure AnnullaAppuntamento1Click(Sender: TObject);
    procedure ModificaStatino1Click(Sender: TObject);
    procedure VisualizzaContratto1Click(Sender: TObject);
    procedure DBDaySource1FieldsToItem(Sender: TObject; Fields: TFields; Item: TPlannerItem);
    procedure DBDaySource1ItemToFields(Sender: TObject; Fields: TFields; Item: TPlannerItem);
  private
    { Private declarations }
    FdmFDACPhoenixLab: TdmFDACPhoenixLab;
  public
    { Public declarations }
  end;

var
  frmPhoenixVCLReportPlanner: TfrmPhoenixVCLReportPlanner;

implementation

{$R *.dfm}

uses
  // Janua
  udmSVGImageList, Janua.Phoenix.dmIBReportPlanner, Janua.VCL.Functions, Janua.Core.AsyncTask,
  Janua.Phoenix.VCL.dlgEditReportTimetable, Janua.Phoenix.VCL.dlgModificaStatino,
  // Phoenix
  DlgShowContratto, DlgNuovoStatino;

procedure TfrmPhoenixVCLReportPlanner.AnnullaAppuntamento1Click(Sender: TObject);
begin
  dmPhoenixIBPlanner.UndoMeeting
end;

procedure TfrmPhoenixVCLReportPlanner.btnSearchClick(Sender: TObject);
begin
  dmPhoenixIBPlanner.CustomerFilter := ckbFilterCustomer.Checked;
  dmPhoenixIBPlanner.TechFilter := ckbFilterTecnician.Checked;
  dmPhoenixIBPlanner.ReportDateFilter := ckbFilterDate.Checked;
  dmPhoenixIBPlanner.CAPFilter := ckbCAP.Checked;

  if dmPhoenixIBPlanner.TechFilter then
    dmPhoenixIBPlanner.TechID := lkbTechnicianID.Value.ToInt64
  else
    dmPhoenixIBPlanner.TechID := -1;

  if dmPhoenixIBPlanner.CustomerFilter then
    dmPhoenixIBPlanner.CustomerID := lkpCustomer.Value.ToInt64
  else
    dmPhoenixIBPlanner.CustomerID := -1;

  if dmPhoenixIBPlanner.CAPFilter then
    dmPhoenixIBPlanner.CAP := lkpCAP.Value
  else
    dmPhoenixIBPlanner.CAP := '';

  if dmPhoenixIBPlanner.ReportDateFilter then
    dmPhoenixIBPlanner.ReportDate := edDateFilter.Date
  else
    dmPhoenixIBPlanner.ReportDate := -1;

  dmPhoenixIBPlanner.StateFilter := grpStato.ItemIndex;

  dmPhoenixIBPlanner.Filter;

  lbFilter.Caption := dmPhoenixIBPlanner.qryReportPlanner.Filter;
end;

procedure TfrmPhoenixVCLReportPlanner.btnUpdateClick(Sender: TObject);
begin
  Async.Run<Boolean>(
    function: Boolean
    begin
      FdmFDACPhoenixLab.StatoLavorazioni;
      FdmFDACPhoenixLab.ElaborateJson;
      FdmFDACPhoenixLab.UpdateData;
      Result := True;
    end,
    procedure(const aResult: Boolean)
    begin
      ShowMessage('Terminato Aggiornamento');
      dmPhoenixIBPlanner.Setup;
    end,
    procedure(const Ex: Exception)
    begin
      ShowMessage(Ex.Message);
      dmPhoenixIBPlanner.Setup;
    end);

  dmPhoenixIBPlanner.Setup;
end;

procedure TfrmPhoenixVCLReportPlanner.DBDaySource1FieldsToItem(Sender: TObject; Fields: TFields;
  Item: TPlannerItem);
begin
  { The FieldsToItem event is called when records are read from the database
    and extra properties are set from database fields. With this code, any
    field from the database can be connected in a custom way to planner item
    properties.
  }
  Item.Color := TColor(Fields.FieldByName('COLOR').AsInteger);
  Item.CaptionBkg := Item.Color;
  Item.ImageID := Fields.FieldByName('IMAGE').AsInteger;
  if Fields.FieldByName('CAPTION').AsBoolean then
    Item.CaptionType := ctTime
  else
    Item.CaptionType := ctNone;
end;

procedure TfrmPhoenixVCLReportPlanner.DBDaySource1ItemToFields(Sender: TObject; Fields: TFields;
  Item: TPlannerItem);
begin
  { The ItemToFields event is called when items are written to the database
    and extra properties are stored in database fields. With this code, any
    property of the item can be saved into any field of the database in
    a custom way to be retrieved later with the inverse event FieldsToItem
  }

  Fields.FieldByName('COLOR').AsInteger := Integer(Item.Color);
  Fields.FieldByName('CAPTION').AsBoolean := Item.CaptionType = ctTime;
  Fields.FieldByName('IMAGE').AsInteger := Item.ImageID;
end;

procedure TfrmPhoenixVCLReportPlanner.FormCreate(Sender: TObject);
begin
  if not Assigned(dmPhoenixIBPlanner) then
    Application.CreateForm(TdmPhoenixIBPlanner, dmPhoenixIBPlanner);
  dmPhoenixIBPlanner.Setup;
  FdmFDACPhoenixLab := TdmFDACPhoenixLab.Create(self);
  // function StartOfTheMonth(const AValue: TDateTime): TDateTime;
  // function EndOfTheMonth(const AValue: TDateTime): TDateTime;

end;

procedure TfrmPhoenixVCLReportPlanner.frameVCLCRDBGridCRDBGridDblClick(Sender: TObject);
var
  lDlg: TdlgPhoenixVCLEditReportTimetable;
begin
  lDlg := TdlgPhoenixVCLEditReportTimetable.Create(self);
  try
    if not dmPhoenixIBPlanner.qryReportPlannerAPPUNTAMENTO_ORA.IsNull then
    begin
      lDlg.edTime.Time := dmPhoenixIBPlanner.qryReportPlannerAPPUNTAMENTO_ORA.AsDateTime;
      lDlg.edDate.DateTime := dmPhoenixIBPlanner.qryReportPlannerAPPUNTAMENTO_DATA.AsDateTime;
    end
    else
    begin
      lDlg.edDate.DateTime := Date();
    end;

    lDlg.edNote.Text := dmPhoenixIBPlanner.qryReportPlannerNOTE_PER_IL_TECNICO.Text;

    lDlg.ShowModal;

    if lDlg.ModalResult = mrOK then
      try
        dmPhoenixIBPlanner.qryReportPlanner.Edit;
        dmPhoenixIBPlanner.qryReportPlannerAPPUNTAMENTO_ORA.AsDateTime := lDlg.edTime.Time;
        dmPhoenixIBPlanner.qryReportPlannerAPPUNTAMENTO_DATA.AsDateTime := lDlg.edDate.DateTime;
        dmPhoenixIBPlanner.qryReportPlannerNOTE_PER_IL_TECNICO.Text := lDlg.edNote.Text;
        dmPhoenixIBPlanner.qryReportPlanner.Post;
      except
        on e: Exception do
        begin
          dmPhoenixIBPlanner.qryReportPlanner.Cancel;
          raise
        end;
      end;
  finally
    lDlg.Free;
  end;
end;

procedure TfrmPhoenixVCLReportPlanner.frameVCLCRDBGridCRDBGridDrawColumnCell(Sender: TObject;
const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  backgroundColor: TColor;
  FontColor: TColor;
  FontStyles: VCL.Graphics.TFontStyles;
begin
  with Sender as TEnhCRDBGrid, DataSource.DataSet do
  begin
    backgroundColor := Column.Color;
    FontColor := Column.Font.Color;
    FontStyles := Column.Font.Style;

    if not FieldByName('APPUNTAMENTO_DATA').IsNull then
      backgroundColor := clWebBeige;

    if (FieldByName('STATO').AsInteger < 0) then
      FontColor := clRed;
    if (FieldByName('STATO').AsInteger in [1, 6]) then
    begin
      FontColor := clBlue;
      FontStyles := [fsBold];
    end;
    if (FieldByName('STATO').AsInteger = 4) then
      FontColor := clWebTomato;
    if (FieldByName('STATO').AsInteger in [5, 6]) then
      FontColor := clGreen;

    if not FieldByName('APPUNTAMENTO_DATA').IsNull and (FieldByName('APPUNTAMENTO_DATA').AsDateTime < Date)
    then
      FontColor := clRed;

    // if (FieldByName('AN_INVOICE').AsInteger  = 2)  then backgroundColor := clYellow;
    DrawField(Column.Field.DisplayText, Rect, Canvas, Column.Font, Column.Alignment,
      FontStyles { Column.Font.Style } , FontColor { Column.Font.Color } , backgroundColor { Column.Color } )
  end;

end;

procedure TfrmPhoenixVCLReportPlanner.ModificaStatino1Click(Sender: TObject);
var
  ADialog: TDLG_STATINO;
begin
  ADialog := TDLG_STATINO.Create(Nil);
  try
    ADialog.Init(TFiBConfig.QRY_GENERIC, dmPhoenixIBPlanner.qryReportPlannerCHIAVE.AsInteger);
    if ADialog.ShowModal = mrOK then
    begin
      ADialog.NodoStatino.Registra(spsRegistra);
      // FStatinoModificato := True;
    end;
  finally
    ADialog.Free;
  end;
end;

procedure TfrmPhoenixVCLReportPlanner.VisualizzaContratto1Click(Sender: TObject);
var
  lDlg: TDLG_SHOW_CONTRATTO;
begin
  lDlg := TDLG_SHOW_CONTRATTO.Create(Nil);
  try
    lDlg.Init(TFiBConfig.QRY_GENERIC, dmPhoenixIBPlanner.qryReportPlannerCLIENTE.AsInteger);
    lDlg.ShowModal;
    TFiBConfig.QRY_GENERIC.Sql.Clear;
  finally
    lDlg.Free;
  end;
end;

end.
