unit Janua.Phoenix.VCL.dmPlannerController;

interface

uses
  // RTL
  System.SysUtils, System.Classes, System.ImageList, System.Actions, System.StrUtils,
  // UniDac - DB
  Data.DB, DBAccess, Uni, Janua.Unidac.Connection, UniProvider, InterBaseUniProvider, MemDS, VirtualTable,
  // VCL / TMS
  SVGIconImageListBase, SVGIconImageList, VCL.Dialogs, VCL.ActnList, VCL.ImgList, VCL.Controls,
  PictureContainer,
  // TMS Cloud
  CloudBase, CloudBaseWin, CloudCustomGoogle, CloudGoogleWin, CloudCustomGCalendar, CloudGCalendar,
  DBPlanner, PlanExLiveCalendar, Planner, PlanExGCalendar, CloudvCal, CloudWebDav, CloudCustomLive,
  CloudLiveWin, CloudCustomLiveCalendar, CloudLiveCalendar,
  // JanuaProject
  {Janua.Phoenix.dmIBModel, Janua.Interbase.dmModel,}
  // Janua
  Janua.VCL.Planner.dmCustomController, Janua.Phoenix.dmIBModel, PostgreSQLUniProvider,
  Janua.Core.Commons, Janua.Core.Classes;

type
  TdmVCLPhoenixPlannerController = class(TdmVCLPlannerCustomController) // ()
    qryReportPlanner: TUniQuery;
    spSetStatinoStato: TUniStoredProc;
    qryReportPlannerCHIAVE: TIntegerField;
    qryReportPlannerDESCRIZIONE_SCHEDA: TStringField;
    qryReportPlannerCLIENTE: TIntegerField;
    qryReportPlannerNOME: TStringField;
    qryReportPlannerPROVINCIA: TStringField;
    qryReportPlannerCAP: TStringField;
    qryReportPlannerINDIRIZZO: TStringField;
    qryReportPlannerTELEFONO: TStringField;
    qryReportPlannerNOTE: TBlobField;
    qryReportPlannerORARIO_APERTURA_DAL1: TTimeField;
    qryReportPlannerORARIO_APERTURA_DAL2: TTimeField;
    qryReportPlannerORARIO_APERTURA_AL1: TTimeField;
    qryReportPlannerORARIO_APERTURA_AL2: TTimeField;
    qryReportPlannerCHIUSURA: TStringField;
    qryReportPlannerCELLULARE: TStringField;
    qryReportPlannerEMAIL: TStringField;
    qryReportPlannerESCLUDI_DA_GENERAZIONE: TStringField;
    qryReportPlannerSEDE: TStringField;
    qryReportPlannerID: TStringField;
    qryReportPlannerREF_TELEFONO: TStringField;
    qryReportPlannerREF_CELLULARE: TStringField;
    qryReportPlannerCOMUNE: TStringField;
    qryReportPlannerFATTURA: TIntegerField;
    qryReportPlannerDATA_INTERVENTO: TDateField;
    qryReportPlannerGENERAZIONE_AUTOMATICA: TIntegerField;
    qryReportPlannerTECNICO_INTERVENTO: TIntegerField;
    qryReportPlannerSCANSIONE: TWideStringField;
    qryReportPlannerREGISTRO: TWideStringField;
    qryReportPlannerNOTE_PER_IL_TECNICO: TWideStringField;
    qryReportPlannerSOSPESO: TStringField;
    qryReportPlannerDA_ESPORTARE_SUL_WEB: TStringField;
    qryReportPlannerRESPONSABILE: TIntegerField;
    qryReportPlannerESPORTATO_SU_MOBILE: TStringField;
    qryReportPlannerNOTE_DAL_TECNICO: TBlobField;
    qryReportPlannerVERBALE_PROVA_DINAMICA: TBlobField;
    qryReportPlannerVERBALE_MANICHETTE: TBlobField;
    qryReportPlannerPREVENTIVO: TIntegerField;
    qryReportPlannerIGNORA_EVIDENZIAZIONE: TStringField;
    qryReportPlannerANNULLATO_DA_TABLET: TStringField;
    qryReportPlannerMOBILEWARN_NUOVA_ATTREZZATURA: TStringField;
    qryReportPlannerMOBILEWARN_ORDINARIA_RITIRATA: TStringField;
    qryReportPlannerMOBILEWARN_N_ORDIN_CONTROLLATA: TStringField;
    qryReportPlannerMOBILEWARN_SMALTIMENTO: TStringField;
    qryReportPlannerSTATO_LAVORAZIONE: TStringField;
    qryReportPlannerDATA_CHIUSURA_DA_SERVER: TDateField;
    qryReportPlannerCHIUSURA_EXT: TStringField;
    qryReportPlannerCHIUSURA_STATINO: TWideStringField;
    qryReportPlannerMOBILEWARN_NON_ESEGUITI: TStringField;
    qryReportPlannerPRESA_IN_CARICO: TStringField;
    qryReportPlannerFORNITURA: TStringField;
    qryReportPlannerORDINARI: TLargeintField;
    qryReportPlannerSTRAORDINARI: TLargeintField;
    qryReportPlannerINTERVENTI: TLargeintField;
    qryReportPlannerNOME_TECNICO: TStringField;
    qryReportPlannerAPPUNTAMENTO_DATA: TDateField;
    qryReportPlannerAPPUNTAMENTO_ORA: TTimeField;
    qryReportPlannerSTATO: TSmallintField;
    qryReportPlannerSTATINO: TIntegerField;
    qryReportPlannerESTINTORI_ORDINARIO: TLargeintField;
    qryReportPlannerESTINTORI_STRAORDINARIO: TLargeintField;
    qryReportPlannerGRUPPI_ELETTR: TLargeintField;
    qryReportPlannerFUMI: TLargeintField;
    qryReportPlannerLUCI: TLargeintField;
    qryReportPlannerIDRANTI: TLargeintField;
    qryReportPlannerSPRINKLER: TLargeintField;
    qryReportPlannerIMPIANTI_EL: TLargeintField;
    qryCustomers: TUniQuery;
    qryCustomersCHIAVE: TIntegerField;
    qryCustomersDESCRIZIONE_SCHEDA: TStringField;
    qryTech: TUniQuery;
    qryTechRESPONSABILE: TIntegerField;
    qryTechNOME_TECNICO: TStringField;
    qryCAP: TUniQuery;
    qryCAPCAP: TStringField;
    qryReportPlannerAMMINISTRATORE: TIntegerField;
    qryReportPlannercalcAppuntamentoDataOra: TDateTimeField;
    qryPlannerEvents: TUniQuery;
    qryPlannerEventsCHIAVE: TIntegerField;
    qryPlannerEventsSTATINO: TIntegerField;
    qryPlannerEventsTECNICO: TIntegerField;
    qryPlannerEventsDALLE_ORE: TDateTimeField;
    qryPlannerEventsALLE_ORE: TDateTimeField;
    qryPlannerEventsNOTE: TBlobField;
    qryPlannerEventsSUBJECT: TStringField;
    qryPlannerEventsTECNICO_SIGLA: TStringField;
    qryPlannerEventsCOLORE: TIntegerField;
    qryPlannerEventsICONA: TSmallintField;
    qryTechPlanned: TUniQuery;
    tabGoogleCalendars: TUniTable;
    tabGoogleEvents: TUniTable;
    tabGoogleEventsID: TStringField;
    tabGoogleEventsETAG: TStringField;
    tabGoogleEventsSUMMARY: TStringField;
    tabGoogleEventsDESCRIPTION: TWideMemoField;
    tabGoogleEventsSTARTTIME: TDateTimeField;
    tabGoogleEventsENDTIME: TDateTimeField;
    tabGoogleEventsCREATED: TDateTimeField;
    tabGoogleEventsUPDATED: TDateTimeField;
    tabGoogleEventsLOCATION: TStringField;
    tabGoogleEventsSTATUS: TSmallintField;
    tabGoogleEventsVISIBILITY: TIntegerField;
    tabGoogleEventsRECURRENCE: TStringField;
    tabGoogleEventsRECURRINGID: TStringField;
    tabGoogleEventsSEQUENCE: TIntegerField;
    tabGoogleEventsCOLOR: TSmallintField;
    tabGoogleEventsCALENDARID: TStringField;
    tabGoogleCalendarsID: TStringField;
    tabGoogleCalendarsLOCATION: TStringField;
    tabGoogleCalendarsSUMMARY: TStringField;
    tabGoogleCalendarsTIMEZONE: TStringField;
    tabGoogleCalendarsCOLOR: TSmallintField;
    tabGoogleCalendarsBACK_COLOR: TIntegerField;
    tabGoogleCalendarsFORE_COLOR: TIntegerField;
    qryPlannerEventsGOOGLE_JSON: TBlobField;
    qryPlannerEventsGFORECOLOR: TIntegerField;
    qryPlannerEventsGBACKCOLOR: TIntegerField;
    qryPlannerEventsCALENDARIO: TIntegerField;
    qryPlannerEventsGOOGLEID: TStringField;
    dsTecnici: TUniDataSource;
    dsTecniciPlanned: TUniDataSource;
    qryPlannerCalendars: TUniQuery;
    qryPlannerCalendarsCHIAVE: TIntegerField;
    qryPlannerCalendarsTECNICO: TIntegerField;
    qryPlannerCalendarsSUMMARY: TBlobField;
    qryPlannerCalendarsDESCRIPTION: TStringField;
    qryPlannerCalendarsTECNICO_SIGLA: TStringField;
    qryPlannerCalendarsCOLORE: TIntegerField;
    qryPlannerCalendarsJGUID: TGuidField;
    qryPlannerCalendarsGOOGLE_JSON: TBlobField;
    qryPlannerCalendarsGFORECOLOR: TIntegerField;
    qryPlannerCalendarsGBACKCOLOR: TIntegerField;
    qryPlannerCalendarsDEFAULTCOLOR: TIntegerField;
    qryPlannerCalendarsGOOGLEID: TStringField;
    qryPlannerCalendarsGOOGLE_SUMMARY: TStringField;
    qryPlannerEventsJGUID: TGuidField;
    vtReportPlanner: TVirtualTable;
    vtReportPlannerCHIAVE: TIntegerField;
    vtReportPlannerDESCRIZIONE_SCHEDA: TStringField;
    vtReportPlannerCLIENTE: TIntegerField;
    vtReportPlannerNOME: TStringField;
    vtReportPlannerPROVINCIA: TStringField;
    vtReportPlannerCAP: TStringField;
    vtReportPlannerINDIRIZZO: TStringField;
    vtReportPlannerTELEFONO: TStringField;
    vtReportPlannerNOTE: TBlobField;
    vtReportPlannerORARIO_APERTURA_DAL1: TTimeField;
    vtReportPlannerORARIO_APERTURA_DAL2: TTimeField;
    vtReportPlannerORARIO_APERTURA_AL1: TTimeField;
    vtReportPlannerORARIO_APERTURA_AL2: TTimeField;
    vtReportPlannerCHIUSURA: TStringField;
    vtReportPlannerCELLULARE: TStringField;
    vtReportPlannerEMAIL: TStringField;
    vtReportPlannerESCLUDI_DA_GENERAZIONE: TStringField;
    vtReportPlannerSEDE: TStringField;
    vtReportPlannerID: TStringField;
    vtReportPlannerREF_TELEFONO: TStringField;
    vtReportPlannerREF_CELLULARE: TStringField;
    vtReportPlannerCOMUNE: TStringField;
    vtReportPlannerFATTURA: TIntegerField;
    vtReportPlannerDATA_INTERVENTO: TDateField;
    vtReportPlannerGENERAZIONE_AUTOMATICA: TIntegerField;
    vtReportPlannerTECNICO_INTERVENTO: TIntegerField;
    vtReportPlannerSCANSIONE: TWideStringField;
    vtReportPlannerREGISTRO: TWideStringField;
    vtReportPlannerNOTE_PER_IL_TECNICO: TWideStringField;
    vtReportPlannerSOSPESO: TStringField;
    vtReportPlannerDA_ESPORTARE_SUL_WEB: TStringField;
    vtReportPlannerRESPONSABILE: TIntegerField;
    vtReportPlannerESPORTATO_SU_MOBILE: TStringField;
    vtReportPlannerNOTE_DAL_TECNICO: TBlobField;
    vtReportPlannerVERBALE_PROVA_DINAMICA: TBlobField;
    vtReportPlannerVERBALE_MANICHETTE: TBlobField;
    vtReportPlannerPREVENTIVO: TIntegerField;
    vtReportPlannerIGNORA_EVIDENZIAZIONE: TStringField;
    vtReportPlannerANNULLATO_DA_TABLET: TStringField;
    vtReportPlannerMOBILEWARN_NUOVA_ATTREZZATURA: TStringField;
    vtReportPlannerMOBILEWARN_ORDINARIA_RITIRATA: TStringField;
    vtReportPlannerMOBILEWARN_N_ORDIN_CONTROLLATA: TStringField;
    vtReportPlannerMOBILEWARN_SMALTIMENTO: TStringField;
    vtReportPlannerSTATO_LAVORAZIONE: TStringField;
    vtReportPlannerDATA_CHIUSURA_DA_SERVER: TDateField;
    vtReportPlannerCHIUSURA_EXT: TStringField;
    vtReportPlannerCHIUSURA_STATINO: TWideStringField;
    vtReportPlannerMOBILEWARN_NON_ESEGUITI: TStringField;
    vtReportPlannerPRESA_IN_CARICO: TStringField;
    vtReportPlannerFORNITURA: TStringField;
    vtReportPlannerORDINARI: TLargeintField;
    vtReportPlannerSTRAORDINARI: TLargeintField;
    vtReportPlannerINTERVENTI: TLargeintField;
    vtReportPlannerNOME_TECNICO: TStringField;
    vtReportPlannerAPPUNTAMENTO_DATA: TDateField;
    vtReportPlannerAPPUNTAMENTO_ORA: TTimeField;
    vtReportPlannerSTATO: TSmallintField;
    vtReportPlannerSTATINO: TIntegerField;
    vtReportPlannerESTINTORI_ORDINARIO: TLargeintField;
    vtReportPlannerESTINTORI_STRAORDINARIO: TLargeintField;
    vtReportPlannerGRUPPI_ELETTR: TLargeintField;
    vtReportPlannerFUMI: TLargeintField;
    vtReportPlannerLUCI: TLargeintField;
    vtReportPlannerIDRANTI: TLargeintField;
    vtReportPlannerSPRINKLER: TLargeintField;
    vtReportPlannerIMPIANTI_EL: TLargeintField;
    vtReportPlannerAMMINISTRATORE: TIntegerField;
    qryTechPlannedRESPONSABILE: TIntegerField;
    qryTechPlannedNOME_TECNICO: TStringField;
    qryTechPlannedSIGLA: TStringField;
    tabGoogleCalendarsISPRIMARY: TStringField;
    tabGoogleEventsATTENDEES: TWideMemoField;
    tabGoogleEventsREMINDERS: TWideMemoField;
    tabGoogleEventsUSEDEFAULTREMINDERS: TStringField;
    tabGoogleEventsSENDNOTIFICATIONS: TStringField;
    tabGoogleEventsISALLDAY: TStringField;
    tabGoogleCalendarsALIAS: TStringField;
    tabGoogleCalendarsDESCRIPTION: TWideStringField;
    tabGoogleCalendarsJGUID: TGuidField;
    tabGoogleEventsJGUID: TGuidField;
    procedure qryReportPlannerBeforePost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure qryReportPlannerCalcFields(DataSet: TDataSet);
    procedure ActionAddMeetingExecute(Sender: TObject);
    procedure qryTechPlannedAfterScroll(DataSet: TDataSet);
  private
    FTechID: Int64;
    FTechFilter: Boolean;
    FReportDateFilter: Boolean;
    FReportDate: TDateTime;
    FCustomerID: Int64;
    FCustomerFilter: Boolean;
    FCAP: String;
    FStateFilter: Integer;
    FCAPFilter: Boolean;
    procedure SetCustomerFilter(const Value: Boolean);
    procedure SetCustomerID(const Value: Int64);
    procedure SetReportDate(const Value: TDateTime);
    procedure SetReportDateFilter(const Value: Boolean);
    procedure SetTechFilter(const Value: Boolean);
    procedure SetTechID(const Value: Int64);
    procedure SetCAP(const Value: String);
    procedure SetCAPFilter(const Value: Boolean);
    procedure SetStateFilter(const Value: Integer);
    { Private declarations }
  protected
    FAutoFilterTech: Boolean;
    function InternalDeleteItem(aItem: TPlannerItem): Boolean; override;
    procedure InternalUpdateItem(aItem: TPlannerItem);
    procedure InternalItemInsert;
    procedure PhoenixInsertGoogleCalendars;
    procedure PhoenixUpdateGoogleCalendars;
    /// <summary> Update and Event from temporay Virtual Google Events Table to Tab</summary>
    procedure PhoenixUpdateGoogleEvents;
    /// <summary> Insert or Update and Event from temporay Virtual Google Events Table to Tab</summary>
    procedure PhoenixInsertGoogleEvents;
  public
    // Public Procedures (better if Actions)
    /// <summary>  Tries to Edit an Event using ITimetable interface. </summary>
    /// <remarks>   If fails throws an exception and rollbacks dataset posts </remarks>
    procedure EditEvent; override;
    /// <summary> Tries to Add an Event using ITimetable interface. </summary>
    /// <remarks> If fails throws an exception and rollbacks dataset posts </remarks>
    procedure AddEvent; override;
    procedure Setup; override;
    procedure Filter; override;
    procedure UndoMeeting; override;
    /// <summary> After Selecting Calendars this procedure should be called (it can be inside a thread) </summary>
    procedure SelectCalendars; override;
    // <summary> Fill Calendars list with Custom Data in this case Tecnici </summary>
    procedure PopulateCalendars; override;
    // Filtro TEcnico vFilter :=  (FStateFilter > 0);
    procedure FilterTech;
  public
    function OpenCalendar(const aDateFrom, aDateTo: TDateTime): Integer; override;
    procedure ActivateCalendar; override;
    property CustomerID: Int64 read FCustomerID write SetCustomerID;
    property TechID: Int64 read FTechID write SetTechID;
    property CustomerFilter: Boolean read FCustomerFilter write SetCustomerFilter;
    property TechFilter: Boolean read FTechFilter write SetTechFilter;
    property ReportDate: TDateTime read FReportDate write SetReportDate;
    property ReportDateFilter: Boolean read FReportDateFilter write SetReportDateFilter;
    property CAPFilter: Boolean read FCAPFilter write SetCAPFilter;
    property CAP: String read FCAP write SetCAP;
    property StateFilter: Integer read FStateFilter write SetStateFilter;
  end;

var
  dmVCLPhoenixPlannerController: TdmVCLPhoenixPlannerController;

implementation

uses Janua.Core.Functions, Janua.Core.AsyncTask, Janua.Phoenix.VCL.dlgPlannerEvent;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TdmVCLPhoenixPlannerController.ActionAddMeetingExecute(Sender: TObject);
begin
  inherited;
  AddEvent
end;

procedure TdmVCLPhoenixPlannerController.ActivateCalendar;
begin
  if not qryPlannerEvents.Active then
    qryPlannerEvents.Open;
  inherited;

end;

procedure TdmVCLPhoenixPlannerController.AddEvent;
begin
  inherited;
end;

procedure TdmVCLPhoenixPlannerController.DataModuleCreate(Sender: TObject);
begin
  inherited;

  FTechFilter := False;
  FAutoFilterTech := False;
  FReportDateFilter := False;
  FReportDate := Date();
  FCustomerID := -1;
  FCustomerFilter := True;
  FStateFilter := -1;
  FCAPFilter := False;
  // Fields.FieldByName('COLOR')
  ItemColorField := qryPlannerEventsCOLORE;
  // Fields.FieldByName('IMAGE')
  ItemImageField := qryPlannerEventsICONA;
  // Fields.FieldByName('CAPTION')
  ItemCaptionField := nil;
  // InternalDeleteItem - Associo la procedura Interna Per Cancellare una Scheda:
  DeleteItemFunc := InternalDeleteItem;
  ItemUpdateProc := InternalUpdateItem;
  ItemInsertProc := InternalItemInsert;
  // property GoogleCalendarUpdateProc: TProc
  GoogleCalendarUpdateProc := PhoenixUpdateGoogleEvents;
  // property GoogleCalendarInsertProc: TProc
  GoogleCalendarInsertProc := PhoenixInsertGoogleCalendars;
  // Update and Event from temporay Virtual Google Events Table to Tab
  GoogleItemInsertProc := PhoenixInsertGoogleEvents;
  // Insert or Update and Event from temporay Virtual Google Events Table to Tab
  GoogleItemUpdateProc := PhoenixUpdateGoogleEvents;

  dsCalendars.Enabled := False;
  dsGCalendar.Enabled := False;
  dsCalendarEvents.Enabled := False;
  dsGoogleEvents.Enabled := False;
  dslkpGCalendar.Enabled := False;

  JanuaUniConnection1.Connected := True;
  tabGoogleCalendars.Open;
  if tabGoogleCalendars.RecordCount > 0 then
  begin
    tabGoogleCalendars.First;
    While not tabGoogleCalendars.Eof do
    begin
      if not vtGoogleCalendars.Locate('ID', tabGoogleCalendars.FieldByName('ID').Value, []) then
      begin
        vtGoogleCalendars.Append;
        vtGoogleCalendars.FieldByName('ID').Value := tabGoogleCalendarsID.Value;
        vtGoogleCalendars.FieldByName('ALIAS').Value := tabGoogleCalendarsALIAS.Value;
        vtGoogleCalendars.FieldByName('DESCRIPTION').Text := tabGoogleCalendarsDESCRIPTION.Text;
        vtGoogleCalendars.FieldByName('LOCATION').AsString := tabGoogleCalendarsLOCATION.AsString;
        vtGoogleCalendars.FieldByName('SUMMARY').AsString := tabGoogleCalendarsSUMMARY.AsString;
        vtGoogleCalendars.FieldByName('PRIMARY').AsBoolean := (tabGoogleCalendarsISPRIMARY.AsString = 'T');
        vtGoogleCalendars.FieldByName('TIMEZONE').AsString := tabGoogleCalendarsTIMEZONE.AsString;
        vtGoogleCalendars.FieldByName('COLOR').Value := tabGoogleCalendarsCOLOR.Value;
        vtGoogleCalendars.FieldByName('FORE_COLOR').AsInteger := tabGoogleCalendarsFORE_COLOR.Value;
        vtGoogleCalendars.FieldByName('BACK_COLOR').AsInteger := tabGoogleCalendarsBACK_COLOR.Value;
        vtGoogleCalendars.FieldByName('JGUID').Value := tabGoogleCalendarsJGUID.Value;
        vtGoogleCalendars.Post;
      end;
      tabGoogleCalendars.Next;
    end
  end;

  lkpGCalendarAlias.Assign(vtGoogleCalendars);
  lkpGCalendarAlias.Open;

  tabGoogleEvents.Open;
  if tabGoogleEvents.RecordCount > 0 then
  begin
    try
      UpdatingFromDB := True;
      tabGoogleEvents.First;
      While not tabGoogleEvents.Eof do
      begin
        if not vtGoogleEvents.Locate('ID', tabGoogleEvents.FieldByName('ID').Value, []) then
        begin
          vtGoogleEvents.Append;
          vtGoogleEventsID.Value := tabGoogleEventsID.Value;
          vtGoogleEventsCALENDARID.Value := tabGoogleEventsCALENDARID.Value;
          vtGoogleEventsETAG.Value := tabGoogleEventsETAG.Value;
          vtGoogleEventsSUMMARY.Value := tabGoogleEventsSUMMARY.Value;
          vtGoogleEventsDESCRIPTION.Value := tabGoogleEventsDESCRIPTION.Value;
          vtGoogleEventsSTARTTIME.Value := tabGoogleEventsSTARTTIME.Value;
          vtGoogleEventsENDTIME.Value := tabGoogleEventsENDTIME.Value;
          vtGoogleEventsCREATED.Value := tabGoogleEventsCREATED.Value;
          vtGoogleEventsUPDATED.Value := tabGoogleEventsUPDATED.Value;
          vtGoogleEventsISALLDAY.Value := tabGoogleEventsISALLDAY.Value = 'T';
          vtGoogleEventsLOCATION.Value := tabGoogleEventsLOCATION.Value;
          vtGoogleEventsSTATUS.Value := tabGoogleEventsSTATUS.Value;
          vtGoogleEventsVISIBILITY.Value := tabGoogleEventsVISIBILITY.Value;
          vtGoogleEventsRECURRENCE.Value := tabGoogleEventsRECURRENCE.Value;
          vtGoogleEventsRECURRINGID.Value := tabGoogleEventsRECURRINGID.Value;
          vtGoogleEventsSEQUENCE.Value := tabGoogleEventsSEQUENCE.Value;
          vtGoogleEventsCOLOR.Value := tabGoogleEventsCOLOR.Value;
          vtGoogleEventsUSEDEFAULTREMINDERS.AsBoolean := (tabGoogleEventsUSEDEFAULTREMINDERS.Value = 'T');
          vtGoogleEventsSENDNOTIFICATIONS.AsBoolean := (tabGoogleEventsSENDNOTIFICATIONS.Value = 'T');
          vtGoogleEventsCALENDARID.Value := tabGoogleEventsCALENDARID.Value;
          vtGoogleEventsAttendees.Value := tabGoogleEventsATTENDEES.Value;
          vtGoogleEventsREMINDERS.Value := tabGoogleEventsREMINDERS.Value;
          vtGoogleEventsJGUID.Value := tabGoogleEventsJGUID.Value;
          vtGoogleEvents.Post;
        end;
        tabGoogleEvents.Next;
      end;
    finally
      UpdatingFromDB := False;
    end;
  end;

  dsCalendars.Enabled := True;
  dsGCalendar.Enabled := True;
  dsCalendarEvents.Enabled := True;
  dsGoogleEvents.Enabled := True;
  dslkpGCalendar.Enabled := True;

end;

procedure TdmVCLPhoenixPlannerController.EditEvent;
begin

end;

procedure TdmVCLPhoenixPlannerController.Filter;
  procedure CheckFilter;
  begin
    if qryReportPlanner.Filter > '' then
      qryReportPlanner.Filter := qryReportPlanner.Filter + ' AND ';
  end;

begin
  try
    qryReportPlanner.Filter := '';
    qryReportPlanner.Filtered := False;

    var
    vFilter := ReportDateFilter or CustomerFilter or TechFilter or CAPFilter or (FStateFilter > 0);

    if vFilter then
    begin
      if ReportDateFilter then
      begin
        CheckFilter;
        qryReportPlanner.Filter := qryReportPlanner.Filter + ' APPUNTAMENTO_DATA = ' +
          QuotedStr(FormatDateTime('dd/mm/yyyy', FReportDate));
      end;

      if TechFilter then
      begin
        CheckFilter;
        qryReportPlanner.Filter := qryReportPlanner.Filter + ' RESPONSABILE = ' + TechID.ToString;
      end;

      if CustomerFilter then
      begin
        CheckFilter;
        qryReportPlanner.Filter := qryReportPlanner.Filter + ' CLIENTE = ' + CustomerID.ToString;
      end;

      if CAPFilter then
      begin
        CheckFilter;
        qryReportPlanner.Filter := qryReportPlanner.Filter + ' CAP = ' + QuotedStr(FCAP);
      end;

      case FStateFilter of
        1:
          begin
            CheckFilter;
            qryReportPlanner.Filter := qryReportPlanner.Filter + ' (STATO = 1 OR STATO = 6)';
          end;
        2:
          begin
            CheckFilter;
            qryReportPlanner.Filter := qryReportPlanner.Filter + ' STATO = 4 ';
          end;
        3:
          begin
            CheckFilter;
            qryReportPlanner.Filter := qryReportPlanner.Filter + ' STATO = 5 ';
          end;
        4:
          begin
            CheckFilter;
            qryReportPlanner.Filter := qryReportPlanner.Filter + ' STATO = 0 ';
          end;
        5:
          begin
            CheckFilter;
            qryReportPlanner.Filter := qryReportPlanner.Filter + ' (STATO = 0 OR STATO = 5 OR STATO = 4) ';
          end;
      end;

      qryReportPlanner.Filtered := ReportDateFilter or CustomerFilter or TechFilter or CAPFilter or
        (FStateFilter > 0);
    end;
  except
    on e: exception do
      raise exception.Create('Error Filtering ' + qryReportPlanner.Filter + sLineBreak + e.Message);
  end;
end;

function TdmVCLPhoenixPlannerController.InternalDeleteItem(aItem: TPlannerItem): Boolean;
begin
  Result := False;

  if (aItem.DBKey <> '') and qryPlannerEvents.Locate('JGUID', aItem.DBKey, []) and
    vtReportPlanner.Locate('CHIAVE', qryPlannerEventsSTATINO.AsInteger, []) then
  begin
    var
    lDataOra := vtReportPlanner.FieldByName('APPUNTAMENTO_DATA').AsString + ' - ' +
      vtReportPlanner.FieldByName('APPUNTAMENTO_ORA').AsString;
    var
    lPresso := vtReportPlanner.FieldByName('NOME').Value + ' - ' + vtReportPlanner.FieldByName
      ('DESCRIZIONE_SCHEDA').Value;
    var
    aMessage := Format('Volete annullare l''appuntamento presso %s in data/ora %s?', [lPresso, lDataOra]);

    Result := JMessageDlg(aMessage);
    if Result then
    begin
      var
      aFiltered := qryReportPlanner.Filtered;
      qryReportPlanner.Filtered := False;
      try
        if qryReportPlanner.Locate('CHIAVE', qryPlannerEventsSTATINO.AsInteger, []) then
        begin
          UndoMeeting;
          JShowMessage('Appuntamento Annullato');
        end;
      finally
        qryReportPlanner.Filtered := aFiltered;
      end;
    end;
  end;

end;

procedure TdmVCLPhoenixPlannerController.InternalItemInsert;
begin

end;

procedure TdmVCLPhoenixPlannerController.InternalUpdateItem(aItem: TPlannerItem);
begin
  if (aItem.DBKey <> '') and qryPlannerEvents.Locate('JGUID', aItem.DBKey, []) and
    vtReportPlanner.Locate('CHIAVE', qryPlannerEventsSTATINO.AsInteger, []) then
  begin
    qryPlannerEvents.Edit;
    qryPlannerEventsDALLE_ORE.AsDateTime := aItem.ItemStartTime;
    qryPlannerEventsALLE_ORE.AsDateTime := aItem.ItemEndTime;
    qryPlannerEvents.Post;
    var
    lPresso := vtReportPlanner.FieldByName('NOME').Value + ' - ' + vtReportPlanner.FieldByName
      ('DESCRIZIONE_SCHEDA').Value;
    var
    aFiltered := qryReportPlanner.Filtered;
    qryReportPlanner.Filtered := False;
    try
      if qryReportPlanner.Locate('CHIAVE', qryPlannerEventsSTATINO.AsInteger, []) then
      begin
        qryReportPlanner.Edit;
        { property ItemStartTime: TDateTime read GetItemStartTime write SetItemStartTime;
          property ItemEndTime: TDateTime read GetItemEndTime write SetItemEndTime; }
        qryReportPlannerAPPUNTAMENTO_DATA.AsDateTime := Trunc(aItem.ItemStartTime);
        qryReportPlannerAPPUNTAMENTO_ORA.AsDateTime := aItem.ItemStartTime - Trunc(aItem.ItemStartTime);
        qryReportPlanner.Post;
        JShowMessage(Format('Appuntamento Aggiornato: %s %s', [aItem.ItemStartTimeStr, lPresso]));
      end;
    finally
      qryReportPlanner.Filtered := aFiltered;
    end;
  end;
end;

function TdmVCLPhoenixPlannerController.OpenCalendar(const aDateFrom, aDateTo: TDateTime): Integer;
begin
  PopulateCalendars;

  qryTechPlanned.Close;
  qryTechPlanned.ParamByName('DATA_DAL').AsDateTime := aDateFrom;
  qryTechPlanned.ParamByName('DATA_AL').AsDateTime := aDateTo;
  qryTechPlanned.Open;

  Result := qryTechPlanned.RecordCount;

  qryPlannerEvents.Close;
  qryPlannerEvents.ParamByName('DATA_DAL').AsDateTime := aDateFrom;
  qryPlannerEvents.ParamByName('DATA_AL').AsDateTime := aDateTo;
  qryPlannerEvents.Open;

end;

procedure TdmVCLPhoenixPlannerController.PhoenixInsertGoogleEvents;
begin
  if not tabGoogleEvents.Locate('ID', vtGoogleEvents.FieldByName('ID').Value, []) then
  begin
    tabGoogleEvents.Append;
    tabGoogleEventsID.Value := vtGoogleEventsID.Value;
    PhoenixUpdateGoogleEvents;
  end
  else
  begin
    if (tabGoogleEventsETAG.Value <> vtGoogleEventsETAG.Value) or
      (tabGoogleEventsSUMMARY.Value <> vtGoogleEventsSUMMARY.Value) or
      (tabGoogleEventsDESCRIPTION.Value <> vtGoogleEventsDESCRIPTION.Value) or
      (tabGoogleEventsSTARTTIME.Value <> vtGoogleEventsSTARTTIME.Value) or
      (tabGoogleEventsENDTIME.Value <> vtGoogleEventsENDTIME.Value) or
      (tabGoogleEventsCREATED.Value <> vtGoogleEventsCREATED.Value) or
      (tabGoogleEventsUPDATED.Value <> vtGoogleEventsUPDATED.Value) or
    { (tabGoogleEventsISALLDAY.Value <> vtGoogleEventsISALLDAY.Value) or }
      (tabGoogleEventsLOCATION.Value <> vtGoogleEventsLOCATION.Value) or
      (tabGoogleEventsSTATUS.Value <> vtGoogleEventsSTATUS.Value) or
      (tabGoogleEventsVISIBILITY.Value <> vtGoogleEventsVISIBILITY.Value) or
      (tabGoogleEventsRECURRENCE.Value <> vtGoogleEventsRECURRENCE.Value) or
      (tabGoogleEventsRECURRINGID.Value <> vtGoogleEventsRECURRINGID.Value) or
      (tabGoogleEventsSEQUENCE.Value <> vtGoogleEventsSEQUENCE.Value) or
      (tabGoogleEventsCOLOR.Value <> vtGoogleEventsCOLOR.Value) then
      PhoenixUpdateGoogleEvents;
  end;
end;

procedure TdmVCLPhoenixPlannerController.PhoenixInsertGoogleCalendars;
begin
  if not tabGoogleCalendars.Locate('ID', vtGoogleCalendars.FieldByName('ID').Value, []) then
  begin
    tabGoogleCalendars.Append;
    tabGoogleCalendarsID.Value := vtGoogleCalendars.FieldByName('ID').Value;
    tabGoogleCalendarsDESCRIPTION.Text := vtGoogleCalendars.FieldByName('DESCRIPTION').Text;
    tabGoogleCalendarsLOCATION.AsString := vtGoogleCalendars.FieldByName('LOCATION').AsString;
    tabGoogleCalendarsSUMMARY.AsString := vtGoogleCalendars.FieldByName('SUMMARY').AsString;
    tabGoogleCalendarsISPRIMARY.AsString := IfThen(vtGoogleCalendars.FieldByName('PRIMARY').AsBoolean,
      'T', 'F');
    tabGoogleCalendarsTIMEZONE.AsString := vtGoogleCalendars.FieldByName('TIMEZONE').AsString;
    tabGoogleCalendarsCOLOR.Value := vtGoogleCalendars.FieldByName('COLOR').Value;
    tabGoogleCalendarsFORE_COLOR.Value := vtGoogleCalendars.FieldByName('FORE_COLOR').AsInteger;
    tabGoogleCalendarsBACK_COLOR.Value := vtGoogleCalendars.FieldByName('BACK_COLOR').AsInteger;
    tabGoogleCalendarsJGUID.Value := vtGoogleCalendars.FieldByName('JGUID').Value;
    tabGoogleCalendars.Post;
  end;
end;

procedure TdmVCLPhoenixPlannerController.PhoenixUpdateGoogleCalendars;
begin

end;

procedure TdmVCLPhoenixPlannerController.PhoenixUpdateGoogleEvents;
begin
  tabGoogleEvents.Edit;
  tabGoogleEventsCALENDARID.Value := vtGoogleEventsCALENDARID.Value;
  tabGoogleEventsETAG.Value := vtGoogleEventsETAG.Value;
  tabGoogleEventsSUMMARY.Value := vtGoogleEventsSUMMARY.Value;
  tabGoogleEventsDESCRIPTION.Value := vtGoogleEventsDESCRIPTION.Value;
  tabGoogleEventsSTARTTIME.Value := vtGoogleEventsSTARTTIME.Value;
  tabGoogleEventsENDTIME.Value := vtGoogleEventsENDTIME.Value;
  tabGoogleEventsCREATED.Value := vtGoogleEventsCREATED.Value;
  tabGoogleEventsUPDATED.Value := vtGoogleEventsUPDATED.Value;
  tabGoogleEventsISALLDAY.Value := IfThen(vtGoogleEventsISALLDAY.AsBoolean, 'T', 'F');
  tabGoogleEventsLOCATION.Value := vtGoogleEventsLOCATION.Value;
  tabGoogleEventsSTATUS.Value := vtGoogleEventsSTATUS.Value;
  tabGoogleEventsVISIBILITY.Value := vtGoogleEventsVISIBILITY.Value;
  tabGoogleEventsRECURRENCE.Value := vtGoogleEventsRECURRENCE.Value;
  tabGoogleEventsRECURRINGID.Value := vtGoogleEventsRECURRINGID.Value;
  tabGoogleEventsSEQUENCE.Value := vtGoogleEventsSEQUENCE.Value;
  tabGoogleEventsCOLOR.Value := vtGoogleEventsCOLOR.Value;
  tabGoogleEventsUSEDEFAULTREMINDERS.Value := IfThen(vtGoogleEventsUSEDEFAULTREMINDERS.AsBoolean, 'T', 'F');
  tabGoogleEventsSENDNOTIFICATIONS.Value := IfThen(vtGoogleEventsSENDNOTIFICATIONS.AsBoolean, 'T', 'F');
  tabGoogleEventsCALENDARID.Value := vtGoogleEventsCALENDARID.Value;
  tabGoogleEventsATTENDEES.Value := vtGoogleEventsAttendees.Value;
  tabGoogleEventsREMINDERS.Value := tabGoogleEventsREMINDERS.Value;
  tabGoogleEventsJGUID.Value := tabGoogleEventsJGUID.Value;
  tabGoogleEvents.Post;
end;

procedure TdmVCLPhoenixPlannerController.PopulateCalendars;
begin
  inherited;
  qryPlannerCalendars.Open;

  // DBDaySource1
  DBDaySourceCalendar.Active := False;
  DBDaySourceCalendar.Day := Now;

  qryPlannerCalendars.Open;
  qryPlannerCalendars.First;
  var
  PlannerPosition := 0;

  While not qryPlannerCalendars.Eof do
  begin
    CalendarsList.Add(qryPlannerCalendarsTECNICO_SIGLA.AsString);

    With DBDaySourceCalendar.ResourceMap.Add Do
    Begin
      ResourceIndex := qryPlannerCalendarsCHIAVE.AsInteger;
      PositionIndex := PlannerPosition;
      DisplayName := qryPlannerCalendarsTECNICO_SIGLA.AsString;
      inc(PlannerPosition);
    End;
    qryPlannerCalendars.Next;
  end;

  qryPlannerCalendars.Close;
  DBDaySourceCalendar.NumberOfResources := PlannerPosition;
  DBDaySourceCalendar.Active := True;

end;

procedure TdmVCLPhoenixPlannerController.qryReportPlannerBeforePost(DataSet: TDataSet);
begin
  inherited;
  if qryReportPlannerSTATO.AsInteger = 0 then
  begin
    qryReportPlannerSTATO.AsInteger := 1;
  end
  else if qryReportPlannerSTATO.AsInteger = 4 then
  begin
    if not qryReportPlannerAPPUNTAMENTO_DATA.IsNull then
    begin
      { qryReportPlanner.Cancel; }
      raise exception.Create('Non si può impostare un appuntamento su un rapportino non pronto');
    end;
  end
  else if qryReportPlannerSTATO.AsInteger = 5 then
  begin
    if not qryReportPlannerAPPUNTAMENTO_DATA.IsNull then
    begin
      qryReportPlannerSTATO.AsInteger := 6;
    end;
  end
  else if (qryReportPlannerSTATO.AsInteger = 6) or (qryReportPlannerAPPUNTAMENTO_DATA.Value = 0) then
  begin
    if qryReportPlannerAPPUNTAMENTO_DATA.IsNull then
    begin
      qryReportPlannerSTATO.AsInteger := 5;
    end;
  end
  else if qryReportPlannerSTATO.AsInteger = 1 then
  begin
    if qryReportPlannerAPPUNTAMENTO_DATA.IsNull or (qryReportPlannerAPPUNTAMENTO_DATA.Value = 0) then
    begin
      qryReportPlannerSTATO.AsInteger := 0;
    end;
  end
end;

procedure TdmVCLPhoenixPlannerController.qryReportPlannerCalcFields(DataSet: TDataSet);
begin
  inherited;
  qryReportPlannercalcAppuntamentoDataOra.AsDateTime := qryReportPlannerAPPUNTAMENTO_DATA.AsDateTime +
    qryReportPlannerAPPUNTAMENTO_ORA.AsDateTime;
end;

procedure TdmVCLPhoenixPlannerController.qryTechPlannedAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if FAutoFilterTech then
    FilterTech
end;

procedure TdmVCLPhoenixPlannerController.SelectCalendars;
begin
  inherited;

end;

procedure TdmVCLPhoenixPlannerController.SetCAP(const Value: String);
begin
  FCAP := Value;
end;

procedure TdmVCLPhoenixPlannerController.SetCAPFilter(const Value: Boolean);
begin
  FCAPFilter := Value;
end;

procedure TdmVCLPhoenixPlannerController.SetCustomerFilter(const Value: Boolean);
begin
  FCustomerFilter := Value;
end;

procedure TdmVCLPhoenixPlannerController.SetCustomerID(const Value: Int64);
begin
  FCustomerID := Value;
end;

procedure TdmVCLPhoenixPlannerController.SetReportDate(const Value: TDateTime);
begin
  FReportDate := Value;
end;

procedure TdmVCLPhoenixPlannerController.SetReportDateFilter(const Value: Boolean);
begin
  FReportDateFilter := Value;
end;

procedure TdmVCLPhoenixPlannerController.SetStateFilter(const Value: Integer);
begin
  FStateFilter := Value;
end;

procedure TdmVCLPhoenixPlannerController.SetTechFilter(const Value: Boolean);
begin
  FTechFilter := Value;
end;

procedure TdmVCLPhoenixPlannerController.SetTechID(const Value: Int64);
begin
  FTechID := Value;
end;

procedure TdmVCLPhoenixPlannerController.Setup;
begin
  qryReportPlanner.Close;
  qryCustomers.Close;
  qryTech.Close;
  spSetStatinoStato.ExecProc;
  qryReportPlanner.Open;
  vtReportPlanner.Assign(qryReportPlanner);
  vtReportPlanner.Open;
  qryCustomers.Open;
  qryTech.Open;
  qryCAP.Open;
end;

procedure TdmVCLPhoenixPlannerController.FilterTech;
begin
  ReportDateFilter := False;
  CustomerFilter := False;
  TechFilter := True;
  FStateFilter := 5; // Non Assegnati
  TechID := qryTechPlannedRESPONSABILE.AsInteger;
end;

procedure TdmVCLPhoenixPlannerController.UndoMeeting;
begin
  if not qryReportPlannerAPPUNTAMENTO_DATA.IsNull then
  begin
    qryReportPlanner.Edit;
    qryReportPlannerAPPUNTAMENTO_DATA.Clear;
    qryReportPlannerAPPUNTAMENTO_ORA.Clear;
    if qryReportPlannerSTATO.AsInteger = 1 then
      qryReportPlannerSTATO.AsInteger := 0
    else if qryReportPlannerSTATO.AsInteger = 6 then
      qryReportPlannerSTATO.AsInteger := 5;
    qryReportPlanner.Post;
  end;

end;

end.
