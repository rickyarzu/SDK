unit Janua.Phoenix.VCL.frmReportPlanner; // TfrmPhoenixVCLReportPlanner

interface

uses
  // RTL
  System.SysUtils, System.Variants, System.Classes, System.Actions, System.UITypes, System.DateUtils,
  System.ImageList, System.IOUtils,
  // Win
  Winapi.Windows, Winapi.Messages,
  // VCL
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.ExtCtrls, VCL.Grids, VCL.DBGrids, VCL.StdCtrls,
  VCL.Buttons, VCL.Mask, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, JvExControls,
  JvDBLookup, VCL.Menus, VCL.ComCtrls, VCL.ImgList,
  // TMS
  AdvCustomComponent, AdvPDFIO, AdvPlannerPDFIO, Planner, DBPlanner, AdvCustomControl, AdvWebBrowser,
  // DB - UniDAC
  CRGrid, ActnList, MemDS, Data.DB, DBAccess, Uni,
  // ZLibraries
  Globale, ZFIBPlusNodoGenerico2,
  // Janua
  Janua.TMS.Phoenix.framePlannerCalendar, Janua.Phoenix.VCL.dmPlannerController,
  Janua.VCL.EnhCRDBGrid, Janua.VCL.frameCRDBGrid, uJanuaVCLFrame, Janua.FDAC.Phoenix.Lab,
  Janua.TMS.Planner.frameCustomCalendar, Janua.VCL.Planner.frameCustomGoogleCalendar,
  Janua.VCL.Planner.framePhoenixGoogleCalendar, Janua.TMS.Phoenix.framePlannerCalendar2,
  Janua.Phoenix.VCL.framePlannerEvent, Janua.Core.Types, Janua.TMS.WebView;

type
  TfrmPhoenixVCLReportPlanner = class(TForm)
    mmuPlanner: TMainMenu;
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
    frameTMSPhoenixPlannerTecnici: TframeTMSPhoenixPlannerCalendar;
    frameVCLPhoenixPlannerCalendari: TframeVCLPhoenixPlannerCalendar2;
    frameVCLPhoenixPlannerEvent: TframeVCLPhoenixPlannerEvent;
    N3: TMenuItem;
    GoogleSync1: TMenuItem;
    tabPlannerEvents: TTabSheet;
    Timer1: TTimer;
    tabCalendariTecnici: TTabSheet;
    Timer2: TTimer;
    pnlWebBrowser: TPanel;
    JanuaVCLWebView1: TJanuaVCLWebView;
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
    procedure GoogleSync1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure AdvWebBrowser1GetCookies(Sender: TObject; ACookies: array of TAdvWebBrowserCookie);
  private
    { Private declarations }
    FCookies: TJanuaTmsCookies;
    FdmFDACPhoenixLab: TdmFDACPhoenixLab;
    FdmVCLPhoenixIBPlanner: TdmVCLPhoenixPlannerController;
  public
    { Public declarations }
    procedure AfterUpdateCalendar(Sender: TObject);
    procedure UpdateLab;
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
  DlgShowContratto, DlgNuovoStatino, udlgPhoenixVCLGoogleSync, Janua.Application.Framework;

procedure TfrmPhoenixVCLReportPlanner.AdvWebBrowser1GetCookies(Sender: TObject;
  ACookies: array of TAdvWebBrowserCookie);
  function UpdateCookie(aCookie: TAdvWebBrowserCookie): Boolean;
  begin
    Result := False;
    var
    J := 0;
    While not Result and (J < FCookies.Count) do
    begin
      if (FCookies[J].Name = aCookie.Name) and (FCookies[J].Domain = aCookie.Domain) and
        (FCookies[J].Path = aCookie.Path) then
      begin
        FCookies.Items[J] := aCookie;
        Result := True;
      end
      else
        Inc(J);
    end;
  end;

begin
  for var I := 0 to length(ACookies) - 1 do
    if not UpdateCookie(ACookies[I]) then
      FCookies.AddItem(ACookies[I]);

  if FCookies.Count > 0 then
  begin
    var
    lJson := FCookies.JsonSerialize;
    TJanuaCoreOS.SaveCookies(lJson);
  end;
end;

procedure TfrmPhoenixVCLReportPlanner.AfterUpdateCalendar(Sender: TObject);
begin

end;

procedure TfrmPhoenixVCLReportPlanner.AnnullaAppuntamento1Click(Sender: TObject);
begin
  FdmVCLPhoenixIBPlanner.UndoMeeting
end;

procedure TfrmPhoenixVCLReportPlanner.btnSearchClick(Sender: TObject);
begin
  FdmVCLPhoenixIBPlanner.CustomerFilter := ckbFilterCustomer.Checked;
  FdmVCLPhoenixIBPlanner.TechFilter := ckbFilterTecnician.Checked;
  FdmVCLPhoenixIBPlanner.ReportDateFilter := ckbFilterDate.Checked;
  FdmVCLPhoenixIBPlanner.CAPFilter := ckbCAP.Checked;

  if FdmVCLPhoenixIBPlanner.TechFilter then
    FdmVCLPhoenixIBPlanner.TechID := lkbTechnicianID.Value.ToInt64
  else
    FdmVCLPhoenixIBPlanner.TechID := -1;

  if FdmVCLPhoenixIBPlanner.CustomerFilter then
    FdmVCLPhoenixIBPlanner.CustomerID := lkpCustomer.Value.ToInt64
  else
    FdmVCLPhoenixIBPlanner.CustomerID := -1;

  if FdmVCLPhoenixIBPlanner.CAPFilter then
    FdmVCLPhoenixIBPlanner.CAP := lkpCAP.Value
  else
    FdmVCLPhoenixIBPlanner.CAP := '';

  if FdmVCLPhoenixIBPlanner.ReportDateFilter then
    FdmVCLPhoenixIBPlanner.ReportDate := edDateFilter.Date
  else
    FdmVCLPhoenixIBPlanner.ReportDate := -1;

  FdmVCLPhoenixIBPlanner.StateFilter := grpStato.ItemIndex;

  FdmVCLPhoenixIBPlanner.Filter;

  lbFilter.Caption := FdmVCLPhoenixIBPlanner.qryReportPlanner.Filter;
end;

procedure TfrmPhoenixVCLReportPlanner.btnUpdateClick(Sender: TObject);
begin
  UpdateLab;

  { FdmVCLPhoenixIBPlanner.Setup; }
end;

procedure TfrmPhoenixVCLReportPlanner.UpdateLab;
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
      { ShowMessage('Terminato Aggiornamento'); }
      FdmVCLPhoenixIBPlanner.Setup;
    end,
    procedure(const Ex: Exception)
    begin
      ShowMessage(Ex.Message);
      FdmVCLPhoenixIBPlanner.Setup;
    end);
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
  FdmVCLPhoenixIBPlanner := dmVCLPhoenixPlannerController { .Create(self) };
  FdmVCLPhoenixIBPlanner.Setup;
  FdmFDACPhoenixLab := TdmFDACPhoenixLab.Create(self);
  frameTMSPhoenixPlannerTecnici.PlannerController := FdmVCLPhoenixIBPlanner;
  PageControl1.ActivePage := tabCalendariTecnici;
  // UpdateLab;
end;

procedure TfrmPhoenixVCLReportPlanner.FormShow(Sender: TObject);
begin
  frameTMSPhoenixPlannerTecnici.DBPlanner1.Refresh;
  // frameVCLPhoenixPlannerCalendari.DBPlanner1.Refresh;
  Timer1.Enabled := True; // not JanuaVCLWebView1.Active;
end;

procedure TfrmPhoenixVCLReportPlanner.frameVCLCRDBGridCRDBGridDblClick(Sender: TObject);
var
  lDlg: TdlgPhoenixVCLEditReportTimetable;
begin
  lDlg := TdlgPhoenixVCLEditReportTimetable.Create(self);
  try
    if not FdmVCLPhoenixIBPlanner.qryReportPlannerAPPUNTAMENTO_ORA.IsNull then
    begin
      lDlg.edTime.Time := FdmVCLPhoenixIBPlanner.qryReportPlannerAPPUNTAMENTO_ORA.AsDateTime;
      lDlg.edDate.DateTime := FdmVCLPhoenixIBPlanner.qryReportPlannerAPPUNTAMENTO_DATA.AsDateTime;
    end
    else
    begin
      lDlg.edDate.DateTime := Date();
    end;

    lDlg.edNote.Text := FdmVCLPhoenixIBPlanner.qryReportPlannerNOTE_PER_IL_TECNICO.Text;

    lDlg.ShowModal;

    if lDlg.ModalResult = mrOK then
      try
        FdmVCLPhoenixIBPlanner.qryReportPlanner.Edit;
        FdmVCLPhoenixIBPlanner.qryReportPlannerAPPUNTAMENTO_ORA.AsDateTime := lDlg.edTime.Time;
        FdmVCLPhoenixIBPlanner.qryReportPlannerAPPUNTAMENTO_DATA.AsDateTime := lDlg.edDate.DateTime;
        FdmVCLPhoenixIBPlanner.qryReportPlannerNOTE_PER_IL_TECNICO.Text := lDlg.edNote.Text;
        FdmVCLPhoenixIBPlanner.qryReportPlanner.Post;
      except
        on e: Exception do
        begin
          FdmVCLPhoenixIBPlanner.qryReportPlanner.Cancel;
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
    begin
      if FieldByName('APPUNTAMENTO_DATA').IsNull then
        FontColor := clWebTomato
      else
      begin
        FontColor := clBlue;
        FontStyles := [fsBold];
      end;
    end;
    if (FieldByName('STATO').AsInteger in [5, 6]) then
      FontColor := clGreen;

    if (FieldByName('RITARDO').AsInteger < 0) and
      (FieldByName('APPUNTAMENTO_DATA').IsNull or (FieldByName('APPUNTAMENTO_DATA').AsDateTime < Date)) then
      FontColor := clRed;

    // if (FieldByName('AN_INVOICE').AsInteger  = 2)  then backgroundColor := clYellow;
    DrawField(Column.Field.DisplayText, Rect, Canvas, Column.Font, Column.Alignment,
      FontStyles { Column.Font.Style } , FontColor { Column.Font.Color } , backgroundColor { Column.Color } )
  end;

end;

procedure TfrmPhoenixVCLReportPlanner.GoogleSync1Click(Sender: TObject);
begin
  dmVCLPhoenixPlannerController.ReportGoogleSync;
end;

procedure TfrmPhoenixVCLReportPlanner.ModificaStatino1Click(Sender: TObject);
var
  ADialog: TDLG_STATINO;
begin
  ADialog := TDLG_STATINO.Create(Nil);
  try
    ADialog.Init(TFiBConfig.QRY_GENERIC, FdmVCLPhoenixIBPlanner.qryReportPlannerCHIAVE.AsInteger);
    if ADialog.ShowModal = mrOK then
    begin
      ADialog.NodoStatino.Registra(spsRegistra);
      // FStatinoModificato := True;
    end;
  finally
    ADialog.Free;
  end;
end;

procedure TfrmPhoenixVCLReportPlanner.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;
  (*
  var
  lCookies := TJanuaCoreOS.LoadCookies;
  if lCookies <> '' then
    FCookies.JsonDeserialize(lCookies);

  if FCookies.Count > 0 then
    for var I := 0 to FCookies.Count - 1 do
      AdvWebBrowser1.AddCookie(FCookies[I]);

  AdvWebBrowser1.Navigate('https://calendar.google.com/calendar');
  *)

    JanuaVCLWebView1.Active := True;
    JanuaVCLWebView1.WebControlsPanel.Visible := False;
    JanuaVCLWebView1.Url := 'https://calendar.google.com/calendar';


end;

procedure TfrmPhoenixVCLReportPlanner.Timer2Timer(Sender: TObject);
begin
  // UpdateLab;
end;

procedure TfrmPhoenixVCLReportPlanner.VisualizzaContratto1Click(Sender: TObject);
var
  lDlg: TDLG_SHOW_CONTRATTO;
begin
  lDlg := TDLG_SHOW_CONTRATTO.Create(Nil);
  try
    lDlg.Init(TFiBConfig.QRY_GENERIC, FdmVCLPhoenixIBPlanner.qryReportPlannerCLIENTE.AsInteger);
    lDlg.ShowModal;
    TFiBConfig.QRY_GENERIC.Sql.Clear;
  finally
    lDlg.Free;
  end;
end;

end.
