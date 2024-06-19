unit Janua.Phoenix.VCL.dmPlannerController;

interface

uses
  // RTL
  System.SysUtils, System.Classes, System.ImageList, System.Actions,
  // UniDac - DB
  Data.DB, DBAccess, Uni, Janua.Unidac.Connection, UniProvider, InterBaseUniProvider, MemDS,
  // VCL
  SVGIconImageListBase, SVGIconImageList, Vcl.Dialogs, Vcl.ActnList, Vcl.ImgList, Vcl.Controls,
  // TMS Cloud
  CloudBase, CloudBaseWin, CloudCustomGoogle, CloudGoogleWin, CloudCustomGCalendar, CloudGCalendar,
  // JanuaProject
  {Janua.Phoenix.dmIBModel, Janua.Interbase.dmModel,}
  // Janua
  Janua.Vcl.Planner.dmCustomController, Janua.Phoenix.dmIBModel, VirtualTable, PostgreSQLUniProvider,
  PictureContainer, DBPlanner, PlanExLiveCalendar, Planner, PlanExGCalendar, CloudvCal, CloudWebDav,
  CloudCustomLive, CloudLiveWin, CloudCustomLiveCalendar, CloudLiveCalendar, Janua.Core.Commons,
  Janua.Core.Classes;

type
  TdmPhoenixIBPlanner = class(TdmVCLPlannerCustomController) // ()
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
    qryPlannerCalendar: TUniQuery;
    qryPlannerCalendarCHIAVE: TIntegerField;
    qryPlannerCalendarSTATINO: TIntegerField;
    qryPlannerCalendarTECNICO: TIntegerField;
    qryPlannerCalendarDALLE_ORE: TDateTimeField;
    qryPlannerCalendarALLE_ORE: TDateTimeField;
    qryPlannerCalendarNOTE: TBlobField;
    qryPlannerCalendarSUBJECT: TStringField;
    qryPlannerCalendarTECNICO_SIGLA: TStringField;
    qryPlannerCalendarCOLORE: TIntegerField;
    qryPlannerCalendarJGUID: TBytesField;
    qryPlannerCalendarICONA: TSmallintField;
    qryTechPlanned: TUniQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
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
    tabGoogleEventsISALLDAY: TBooleanField;
    tabGoogleEventsLOCATION: TStringField;
    tabGoogleEventsSTATUS: TSmallintField;
    tabGoogleEventsVISIBILITY: TIntegerField;
    tabGoogleEventsRECURRENCE: TStringField;
    tabGoogleEventsRECURRINGID: TStringField;
    tabGoogleEventsSEQUENCE: TIntegerField;
    tabGoogleEventsCOLOR: TSmallintField;
    tabGoogleEventsUSEDEFAULTREMINDERS: TBooleanField;
    tabGoogleEventsSENDNOTIFICATIONS: TBooleanField;
    tabGoogleEventsCALENDARID: TStringField;
    tabGoogleCalendarsID: TStringField;
    tabGoogleCalendarsDESCRIPTION: TBlobField;
    tabGoogleCalendarsLOCATION: TStringField;
    tabGoogleCalendarsSUMMARY: TStringField;
    tabGoogleCalendarsPRIMARY: TBooleanField;
    tabGoogleCalendarsTIMEZONE: TStringField;
    tabGoogleCalendarsCOLOR: TSmallintField;
    tabGoogleCalendarsBACK_COLOR: TIntegerField;
    tabGoogleCalendarsFORE_COLOR: TIntegerField;
    qryPlannerCalendarGOOGLE_JSON: TBlobField;
    qryPlannerCalendarGFORECOLOR: TIntegerField;
    qryPlannerCalendarGBACKCOLOR: TIntegerField;
    qryPlannerCalendarCALENDARIO: TIntegerField;
    qryPlannerCalendarGOOGLEID: TStringField;
    procedure qryReportPlannerBeforePost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure qryReportPlannerCalcFields(DataSet: TDataSet);
    procedure ActionAddMeetingExecute(Sender: TObject);
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

  public
    function OpenCalendar(const aDateFrom, aDateTo: TDateTime): Integer;
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
  dmPhoenixIBPlanner: TdmPhoenixIBPlanner;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TdmPhoenixIBPlanner.ActionAddMeetingExecute(Sender: TObject);
begin
  inherited;
  AddEvent
end;

procedure TdmPhoenixIBPlanner.AddEvent;
begin

end;

procedure TdmPhoenixIBPlanner.DataModuleCreate(Sender: TObject);
begin
  inherited;
  FTechFilter := False;
  FReportDateFilter := False;
  FReportDate := Date();
  FCustomerID := -1;
  FCustomerFilter := True;
  FStateFilter := -1;
  FCAPFilter := False;
end;

procedure TdmPhoenixIBPlanner.EditEvent;
begin

end;

procedure TdmPhoenixIBPlanner.Filter;
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

function TdmPhoenixIBPlanner.OpenCalendar(const aDateFrom, aDateTo: TDateTime): Integer;
begin
  qryTechPlanned.Close;
  qryTechPlanned.ParamByName('DATA_DAL').AsDateTime := aDateFrom;
  qryTechPlanned.ParamByName('DATA_AL').AsDateTime := aDateTo;
  qryTechPlanned.Open;

  qryPlannerCalendar.Close;
  qryPlannerCalendar.ParamByName('DATA_DAL').AsDateTime := aDateFrom;
  qryPlannerCalendar.ParamByName('DATA_AL').AsDateTime := aDateTo;
  qryPlannerCalendar.Open;

  Result := qryTechPlanned.RecordCount;
end;

procedure TdmPhoenixIBPlanner.qryReportPlannerBeforePost(DataSet: TDataSet);
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

procedure TdmPhoenixIBPlanner.qryReportPlannerCalcFields(DataSet: TDataSet);
begin
  inherited;
  qryReportPlannercalcAppuntamentoDataOra.AsDateTime := qryReportPlannerAPPUNTAMENTO_DATA.AsDateTime +
    qryReportPlannerAPPUNTAMENTO_ORA.AsDateTime;
end;

procedure TdmPhoenixIBPlanner.SetCAP(const Value: String);
begin
  FCAP := Value;
end;

procedure TdmPhoenixIBPlanner.SetCAPFilter(const Value: Boolean);
begin
  FCAPFilter := Value;
end;

procedure TdmPhoenixIBPlanner.SetCustomerFilter(const Value: Boolean);
begin
  FCustomerFilter := Value;
end;

procedure TdmPhoenixIBPlanner.SetCustomerID(const Value: Int64);
begin
  FCustomerID := Value;
end;

procedure TdmPhoenixIBPlanner.SetReportDate(const Value: TDateTime);
begin
  FReportDate := Value;
end;

procedure TdmPhoenixIBPlanner.SetReportDateFilter(const Value: Boolean);
begin
  FReportDateFilter := Value;
end;

procedure TdmPhoenixIBPlanner.SetStateFilter(const Value: Integer);
begin
  FStateFilter := Value;
end;

procedure TdmPhoenixIBPlanner.SetTechFilter(const Value: Boolean);
begin
  FTechFilter := Value;
end;

procedure TdmPhoenixIBPlanner.SetTechID(const Value: Int64);
begin
  FTechID := Value;
end;

procedure TdmPhoenixIBPlanner.Setup;
begin
  qryReportPlanner.Close;
  qryCustomers.Close;
  qryTech.Close;
  spSetStatinoStato.ExecProc;
  qryReportPlanner.Open;
  qryCustomers.Open;
  qryTech.Open;
  qryCAP.Open;
end;

procedure TdmPhoenixIBPlanner.UndoMeeting;
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
