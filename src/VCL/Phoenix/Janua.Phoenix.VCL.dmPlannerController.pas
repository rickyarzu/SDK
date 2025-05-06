unit Janua.Phoenix.VCL.dmPlannerController;

interface

uses
  // RTL
  System.SysUtils, System.Classes, System.ImageList, System.Actions, System.StrUtils, System.UITypes,
  System.DateUtils, System.Math, System.Diagnostics, System.TimeSpan, System.Generics.Collections,
  // UniDac - DB
  PostgreSQLUniProvider, Data.DB, DBAccess, Uni, Janua.Unidac.Connection, UniProvider, InterBaseUniProvider,
  MemDS, VirtualTable,
  // VCL / TMS
  SVGIconImageListBase, SVGIconImageList, VCL.Dialogs, VCL.ActnList, VCL.ImgList, VCL.Controls,
  PictureContainer, VCL.Graphics, JvImageList, VCL.Forms,
  // TMS Cloud
  CloudBase, CloudBaseWin, CloudCustomGoogle, CloudGoogleWin, CloudCustomGCalendar, CloudGCalendar,
  DBPlanner, Planner, CloudvCal, CloudWebDav, CloudCustomLive,
  CloudLiveWin, CloudCustomLiveCalendar, CloudLiveCalendar,
  // ZLibraries
  Globale, ZFIBPlusNodoGenerico2,
  // JanuaProject
  {Janua.Phoenix.dmIBModel, Janua.Interbase.dmModel,}
  // Janua
  Janua.VCL.Planner.dmCustomController, Janua.Phoenix.dmIBModel, Janua.Core.Types, Janua.Cloud.Types,
  Janua.Cloud.Intf, Janua.Cloud.Sms.Intf, Janua.Orm.Intf, Janua.Core.Commons, Janua.Core.Classes,
  CloudSMS;

type
  TRecordFilter = record
    TecnicoDB: Integer;
    TecnicoCk: Boolean;
    CAP: string;
    CAPCk: Boolean;
    ClienteID: Integer;
    ClienteCk: Boolean;
    Status: Integer;
    FilterDate: Boolean;
    Date: TDateTime;
  end;

  TdmVCLPhoenixPlannerController = class(TdmVCLPlannerCustomController) // ()
    qryReportPlanner: TUniQuery;
    spSetStatinoStato: TUniStoredProc;
    qryCustomers: TUniQuery;
    qryCustomersCHIAVE: TIntegerField;
    qryTech: TUniQuery;
    qryTechRESPONSABILE: TIntegerField;
    qryCAP: TUniQuery;
    qryPlannerEvents: TUniQuery;
    qryTechPlanned: TUniQuery;
    tabGoogleCalendars: TUniTable;
    tabGoogleEvents: TUniTable;
    dsTecniciCalendar: TUniDataSource;
    dsTecniciPlanned: TUniDataSource;
    qryPlannerCalendars: TUniQuery;
    vtReportPlanner: TVirtualTable;
    vtGoogleEventsSearch: TVirtualTable;
    dsGoogleEventsSearch: TUniDataSource;
    lkpTecnici: TUniQuery;
    dsLkpTecnici: TUniDataSource;
    vtGoogleEventsSearchID3: TStringField;
    vtGoogleEventsSearchETAG3: TStringField;
    vtGoogleEventsSearchSUMMARY3: TStringField;
    vtGoogleEventsSearchDESCRIPTION3: TWideMemoField;
    vtGoogleEventsSearchSTARTTIME2: TDateTimeField;
    vtGoogleEventsSearchENDTIME3: TDateTimeField;
    vtGoogleEventsSearchCREATED3: TDateTimeField;
    vtGoogleEventsSearchUPDATED3: TDateTimeField;
    vtGoogleEventsSearchISALLDAY3: TBooleanField;
    vtGoogleEventsSearchLOCATION3: TStringField;
    vtGoogleEventsSearchSTATUS3: TSmallintField;
    vtGoogleEventsSearchVISIBILITY3: TIntegerField;
    vtGoogleEventsSearchRECURRENCE3: TStringField;
    vtGoogleEventsSearchRECURRINGID3: TStringField;
    vtGoogleEventsSearchSEQUENCE3: TIntegerField;
    vtGoogleEventsSearchCOLOR3: TSmallintField;
    vtGoogleEventsSearchUSEDEFAULTREMINDERS3: TBooleanField;
    vtGoogleEventsSearchSENDNOTIFICATIONS3: TBooleanField;
    vtGoogleEventsSearchCALENDARID3: TStringField;
    vtGoogleEventsSearchAttendees3: TMemoField;
    vtGoogleEventsSearchReminders3: TMemoField;
    vtGoogleEventsSearchJGUID3: TGuidField;
    vtGoogleEventsSearchCalcColor3: TIntegerField;
    CalendarGridActions: TActionList;
    actGridCalColor: TAction;
    actGridCalEdit: TAction;
    actGridCalSync: TAction;
    DBSingleCalendar: TDBDaySource;
    vtPlannerEvents: TVirtualTable;
    qryCAPTecnici: TUniQuery;
    qryPlannerCalendars2: TUniQuery;
    DBDaySourceCalendar2: TDBDaySource;
    dsCalendars2: TUniDataSource;
    dsCalendarEvents2: TUniDataSource;
    qryPlannerEvents2: TUniQuery;
    MainToolBarActions2: TActionList;
    ActionAddMeeting2: TAction;
    ActionUndoMeeting2: TAction;
    ActionSearchMeeting2: TAction;
    ActionAddUser2: TAction;
    ActionAddActivity2: TAction;
    ActionExport2: TAction;
    ActionSendShare2: TAction;
    ActionPrint2: TAction;
    ActionCalendarSync2: TAction;
    qryPersonalPlannerEvents: TUniQuery;
    qryReportPlannercalcIndirizzo: TStringField;
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
    vtReportPlannerCOMUNE: TStringField;
    vtReportPlannerFATTURA: TIntegerField;
    vtReportPlannerDATA_INTERVENTO: TDateField;
    vtReportPlannerTECNICO_INTERVENTO: TIntegerField;
    vtReportPlannerNOTE_PER_IL_TECNICO: TWideStringField;
    vtReportPlannerRESPONSABILE: TIntegerField;
    vtReportPlannerSTATO_LAVORAZIONE: TStringField;
    vtReportPlannerDATA_CHIUSURA_DA_SERVER: TDateField;
    vtReportPlannerCHIUSURA_EXT: TStringField;
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
    vtReportPlannercalcAppuntamentoDataOra: TDateTimeField;
    vtReportPlannercalcIndirizzo: TStringField;
    vtReportPlannercalcImage: TBlobField;
    vtReportPlannercalcReportID: TIntegerField;
    qryTecniciCalendar: TUniQuery;
    qryGenID: TUniQuery;
    qryGenIDID: TLargeintField;
    dlgItemsActions: TActionList;
    actDlgColorAction: TAction;
    actDlgEditAction: TAction;
    Action3: TAction;
    Action4: TAction;
    actDlgDeleteActions: TAction;
    tbGoogleColorsID: TSmallintField;
    tbGoogleColorsBACK_COLOR: TIntegerField;
    tbGoogleColorsFORE_COLOR: TIntegerField;
    ImageListIcons: TImageList;
    JvImageList1: TJvImageList;
    vtReportPlannercalcStato: TStringField;
    vtGoogleEventsSearchBACKGROUNDCOLOR: TIntegerField;
    vtGoogleEventsSearchFOREGROUNDCOLOR: TIntegerField;
    vtGoogleEventsSearchSYNC: TStringField;
    actDlgMessage: TAction;
    qryCellulariStatino: TUniQuery;
    qryElencoEventiWhatsApp: TUniQuery;
    actGlobalGoogleSync: TAction;
    UniQuery1: TUniQuery;
    actWhatsApp: TAction;
    actWaSet: TAction;
    actSelect: TAction;
    actSelectAll: TAction;
    actWASendMessage: TAction;
    actWASendMsgTest: TAction;
    actWASetAsMsgSent: TAction;
    actWASetAsConfirmed: TAction;
    actGridConfirmEvent: TAction;
    spUpdateStatini: TUniStoredProc;
    spUpdateWhatsApp: TUniStoredProc;
    qryMessageCount: TUniQuery;
    qryMessageCountMESSAGES: TLargeintField;
    spInsertWhatsAppMsg: TUniStoredProc;
    dsReportsPlanner: TUniDataSource;
    qryReportPlannercalcStato: TStringField;
    actNewMeeting: TAction;
    actUndoMeeting: TAction;
    actContract: TAction;
    actWhatsAppMsg: TAction;
    qryReportPlannerCHIAVE: TIntegerField;
    qryReportPlannerDESCRIZIONE_SCHEDA: TWideStringField;
    qryReportPlannerAMMINISTRATORE: TIntegerField;
    qryReportPlannerCLIENTE: TIntegerField;
    qryReportPlannerNOME: TWideStringField;
    qryReportPlannerPROVINCIA: TWideStringField;
    qryReportPlannerCAP: TWideStringField;
    qryReportPlannerINDIRIZZO: TWideStringField;
    qryReportPlannerTELEFONO: TWideStringField;
    qryReportPlannerNOTE: TBlobField;
    qryReportPlannerORARIO_APERTURA_DAL1: TTimeField;
    qryReportPlannerORARIO_APERTURA_DAL2: TTimeField;
    qryReportPlannerORARIO_APERTURA_AL1: TTimeField;
    qryReportPlannerORARIO_APERTURA_AL2: TTimeField;
    qryReportPlannerCHIUSURA: TWideStringField;
    qryReportPlannerCELLULARE: TWideStringField;
    qryReportPlannerEMAIL: TWideStringField;
    qryReportPlannerESCLUDI_DA_GENERAZIONE: TWideStringField;
    qryReportPlannerSEDE: TWideStringField;
    qryReportPlannerID: TWideStringField;
    qryReportPlannerREF_TELEFONO: TWideStringField;
    qryReportPlannerREF_CELLULARE: TWideStringField;
    qryReportPlannerCOMUNE: TWideStringField;
    qryReportPlannerFATTURA: TIntegerField;
    qryReportPlannerDATA_INTERVENTO: TDateField;
    qryReportPlannerGENERAZIONE_AUTOMATICA: TIntegerField;
    qryReportPlannerTECNICO_INTERVENTO: TIntegerField;
    qryReportPlannerNOTE_PER_IL_TECNICO: TWideStringField;
    qryReportPlannerSOSPESO: TWideStringField;
    qryReportPlannerDA_ESPORTARE_SUL_WEB: TWideStringField;
    qryReportPlannerRESPONSABILE: TIntegerField;
    qryReportPlannerESPORTATO_SU_MOBILE: TWideStringField;
    qryReportPlannerNOTE_DAL_TECNICO: TBlobField;
    qryReportPlannerVERBALE_PROVA_DINAMICA: TBlobField;
    qryReportPlannerVERBALE_MANICHETTE: TBlobField;
    qryReportPlannerPREVENTIVO: TIntegerField;
    qryReportPlannerIGNORA_EVIDENZIAZIONE: TWideStringField;
    qryReportPlannerANNULLATO_DA_TABLET: TWideStringField;
    qryReportPlannerMOBILEWARN_NUOVA_ATTREZZATURA: TWideStringField;
    qryReportPlannerMOBILEWARN_ORDINARIA_RITIRATA: TWideStringField;
    qryReportPlannerMOBILEWARN_N_ORDIN_CONTROLLATA: TWideStringField;
    qryReportPlannerMOBILEWARN_SMALTIMENTO: TWideStringField;
    qryReportPlannerSTATO_LAVORAZIONE: TWideStringField;
    qryReportPlannerDATA_CHIUSURA_DA_SERVER: TDateField;
    qryReportPlannerCHIUSURA_EXT: TWideStringField;
    qryReportPlannerCHIUSURA_STATINO: TBlobField;
    qryReportPlannerMOBILEWARN_NON_ESEGUITI: TWideStringField;
    qryReportPlannerPRESA_IN_CARICO: TWideStringField;
    qryReportPlannerFORNITURA: TWideStringField;
    qryReportPlannerORDINARI: TLargeintField;
    qryReportPlannerSTRAORDINARI: TLargeintField;
    qryReportPlannerINTERVENTI: TLargeintField;
    qryReportPlannerNOME_TECNICO: TWideStringField;
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
    qryReportPlannerEMAIL_TECNICO: TWideStringField;
    qryReportPlannerGCAL: TWideStringField;
    qryReportPlannerSTATO_IMMAGINE: TBlobField;
    qryReportPlannerMESE_CALCOLATO: TIntegerField;
    qryReportPlannerANNO_CALCOLATO: TIntegerField;
    qryReportPlannerDATA_FINE_MESE_CALCOLATO: TDateField;
    qryReportPlannerRITARDO: TLargeintField;
    qryTechPlannedRESPONSABILE: TIntegerField;
    qryTechPlannedNOME_TECNICO: TWideStringField;
    qryTechPlannedSIGLA: TWideStringField;
    lkpTecniciCHIAVE: TIntegerField;
    lkpTecniciDESCRIZIONE: TWideStringField;
    lkpTecniciSOSPESO: TWideStringField;
    lkpTecniciATTIVO: TWideStringField;
    lkpTecniciACCOUNT_MOBILE: TWideStringField;
    lkpTecniciEMAIL: TWideStringField;
    lkpTecniciTELEFONO: TWideStringField;
    lkpTecniciSIGLA: TWideStringField;
    lkpTecniciGBACKCOLOR: TIntegerField;
    tabGoogleCalendarsID: TWideStringField;
    tabGoogleCalendarsDESCRIPTION: TWideStringField;
    tabGoogleCalendarsLOCATION: TWideStringField;
    tabGoogleCalendarsSUMMARY: TWideStringField;
    tabGoogleCalendarsTIMEZONE: TWideStringField;
    tabGoogleCalendarsCOLOR: TSmallintField;
    tabGoogleCalendarsISPRIMARY: TWideStringField;
    tabGoogleCalendarsJGUID: TGuidField;
    tabGoogleCalendarsALIAS: TWideStringField;
    tabGoogleCalendarsBACK_COLOR: TIntegerField;
    tabGoogleCalendarsFORE_COLOR: TIntegerField;
    tabGoogleEventsID: TWideStringField;
    tabGoogleEventsETAG: TWideStringField;
    tabGoogleEventsSUMMARY: TWideStringField;
    tabGoogleEventsDESCRIPTION: TWideMemoField;
    tabGoogleEventsSTARTTIME: TDateTimeField;
    tabGoogleEventsENDTIME: TDateTimeField;
    tabGoogleEventsCREATED: TDateTimeField;
    tabGoogleEventsUPDATED: TDateTimeField;
    tabGoogleEventsLOCATION: TWideStringField;
    tabGoogleEventsSTATUS: TSmallintField;
    tabGoogleEventsVISIBILITY: TIntegerField;
    tabGoogleEventsRECURRENCE: TWideStringField;
    tabGoogleEventsRECURRINGID: TWideStringField;
    tabGoogleEventsSEQUENCE: TIntegerField;
    tabGoogleEventsCOLOR: TSmallintField;
    tabGoogleEventsCALENDARID: TWideStringField;
    tabGoogleEventsUSEDEFAULTREMINDERS: TWideStringField;
    tabGoogleEventsSENDNOTIFICATIONS: TWideStringField;
    tabGoogleEventsISALLDAY: TWideStringField;
    tabGoogleEventsATTENDEES: TWideMemoField;
    tabGoogleEventsREMINDERS: TWideMemoField;
    tabGoogleEventsJGUID: TGuidField;
    tabGoogleEventsBACKGROUNDCOLOR: TIntegerField;
    tabGoogleEventsFOREGROUNDCOLOR: TIntegerField;
    tabGoogleEventsSYNC: TWideStringField;
    qryCAPTecniciCAP: TWideStringField;
    qryCAPTecniciTECNICO: TIntegerField;
    qryPersonalPlannerEventsCHIAVE: TIntegerField;
    qryPersonalPlannerEventsSTATINO: TIntegerField;
    qryPersonalPlannerEventsTECNICO: TIntegerField;
    qryPersonalPlannerEventsDALLE_ORE: TDateTimeField;
    qryPersonalPlannerEventsALLE_ORE: TDateTimeField;
    qryPersonalPlannerEventsNOTE: TWideMemoField;
    qryPersonalPlannerEventsSUBJECT: TWideStringField;
    qryPersonalPlannerEventsTECNICO_SIGLA: TWideStringField;
    qryPersonalPlannerEventsCOLORE: TIntegerField;
    qryPersonalPlannerEventsJGUID: TGuidField;
    qryPersonalPlannerEventsICONA: TSmallintField;
    qryPersonalPlannerEventsGOOGLE_JSON: TBlobField;
    qryPersonalPlannerEventsGFORECOLOR: TIntegerField;
    qryPersonalPlannerEventsGBACKCOLOR: TIntegerField;
    qryPersonalPlannerEventsCALENDARIO: TIntegerField;
    qryPersonalPlannerEventsGOOGLEID: TWideStringField;
    qryPersonalPlannerEventsWANUMBER: TWideStringField;
    qryPersonalPlannerEventsWA_SENT: TWideStringField;
    qryPersonalPlannerEventsWA_MESSAGE: TWideStringField;
    qryElencoEventiWhatsAppID: TWideStringField;
    qryElencoEventiWhatsAppETAG: TWideStringField;
    qryElencoEventiWhatsAppSUMMARY: TWideStringField;
    qryElencoEventiWhatsAppDESCRIPTION: TBlobField;
    qryElencoEventiWhatsAppSTARTTIME: TDateTimeField;
    qryElencoEventiWhatsAppENDTIME: TDateTimeField;
    qryElencoEventiWhatsAppCREATED: TDateTimeField;
    qryElencoEventiWhatsAppUPDATED: TDateTimeField;
    qryElencoEventiWhatsAppLOCATION: TWideStringField;
    qryElencoEventiWhatsAppSTATUS: TSmallintField;
    qryElencoEventiWhatsAppVISIBILITY: TIntegerField;
    qryElencoEventiWhatsAppRECURRENCE: TWideStringField;
    qryElencoEventiWhatsAppRECURRINGID: TWideStringField;
    qryElencoEventiWhatsAppSEQUENCE: TIntegerField;
    qryElencoEventiWhatsAppCOLOR: TSmallintField;
    qryElencoEventiWhatsAppCALENDARID: TWideStringField;
    qryElencoEventiWhatsAppUSEDEFAULTREMINDERS: TWideStringField;
    qryElencoEventiWhatsAppSENDNOTIFICATIONS: TWideStringField;
    qryElencoEventiWhatsAppISALLDAY: TWideStringField;
    qryElencoEventiWhatsAppATTENDEES: TBlobField;
    qryElencoEventiWhatsAppREMINDERS: TBlobField;
    qryElencoEventiWhatsAppJGUID: TGuidField;
    qryElencoEventiWhatsAppBACKGROUNDCOLOR: TIntegerField;
    qryElencoEventiWhatsAppFOREGROUNDCOLOR: TIntegerField;
    qryElencoEventiWhatsAppSYNC: TWideStringField;
    qryElencoEventiWhatsAppDALLE_ORE: TDateTimeField;
    qryElencoEventiWhatsAppALLE_ORE: TDateTimeField;
    qryElencoEventiWhatsAppSTATINO: TIntegerField;
    qryElencoEventiWhatsAppCEJGUID: TBytesField;
    qryElencoEventiWhatsAppGJGUID: TBytesField;
    qryElencoEventiWhatsAppCHIAVE: TIntegerField;
    qryElencoEventiWhatsAppSTELEFONO: TWideStringField;
    qryElencoEventiWhatsAppSCELLULARE: TWideStringField;
    qryElencoEventiWhatsAppCTEL1: TWideStringField;
    qryElencoEventiWhatsAppCCELL: TWideStringField;
    qryElencoEventiWhatsAppCTEL2: TWideStringField;
    qryElencoEventiWhatsAppFCEL: TWideStringField;
    qryElencoEventiWhatsAppFTEL: TWideStringField;
    qryElencoEventiWhatsAppWANUMBER: TWideStringField;
    qryElencoEventiWhatsAppWA: TWideStringField;
    qryElencoEventiWhatsAppTECNICO: TWideStringField;
    qryTecniciCalendarRESPONSABILE: TIntegerField;
    qryTecniciCalendarNOME_TECNICO: TWideStringField;
    qryTecniciCalendarEMAIL: TWideStringField;
    qryTecniciCalendarSIGLA: TWideStringField;
    qryTecniciCalendarGOOGLEID: TWideStringField;
    qryTecniciCalendarCALENDARIO: TIntegerField;
    qryTecniciCalendarDEFAULTCOLOR: TIntegerField;
    qryPlannerCalendarsCHIAVE: TIntegerField;
    qryPlannerCalendarsTECNICO: TIntegerField;
    qryPlannerCalendarsSUMMARY: TBlobField;
    qryPlannerCalendarsDESCRIPTION: TWideStringField;
    qryPlannerCalendarsTECNICO_SIGLA: TWideStringField;
    qryPlannerCalendarsCOLORE: TIntegerField;
    qryPlannerCalendarsJGUID: TGuidField;
    qryPlannerCalendarsGOOGLE_JSON: TBlobField;
    qryPlannerCalendarsGFORECOLOR: TIntegerField;
    qryPlannerCalendarsGBACKCOLOR: TIntegerField;
    qryPlannerCalendarsDEFAULTCOLOR: TIntegerField;
    qryPlannerCalendarsGOOGLEID: TWideStringField;
    qryPlannerCalendarsGOOGLE_SUMMARY: TWideStringField;
    qryPlannerCalendarsGRUPPO_ID: TWideStringField;
    qryPlannerCalendarsACTIVE: TWideStringField;
    qryPlannerEventsCHIAVE: TIntegerField;
    qryPlannerEventsSTATINO: TIntegerField;
    qryPlannerEventsTECNICO: TIntegerField;
    qryPlannerEventsDALLE_ORE: TDateTimeField;
    qryPlannerEventsALLE_ORE: TDateTimeField;
    qryPlannerEventsNOTE: TWideMemoField;
    qryPlannerEventsSUBJECT: TWideStringField;
    qryPlannerEventsTECNICO_SIGLA: TWideStringField;
    qryPlannerEventsCOLORE: TIntegerField;
    qryPlannerEventsJGUID: TGuidField;
    qryPlannerEventsICONA: TSmallintField;
    qryPlannerEventsGOOGLE_JSON: TBlobField;
    qryPlannerEventsGFORECOLOR: TIntegerField;
    qryPlannerEventsGBACKCOLOR: TIntegerField;
    qryPlannerEventsCALENDARIO: TIntegerField;
    qryPlannerEventsGOOGLEID: TWideStringField;
    qryPlannerEventsWANUMBER: TWideStringField;
    qryPlannerEventsWA_SENT: TWideStringField;
    qryPlannerEventsWA_MESSAGE: TWideStringField;
    qryPlannerEventslkpMailTecnico: TStringField;
    qryCellulariStatinoCHIAVE: TIntegerField;
    qryCellulariStatinoTELEFONO: TWideStringField;
    qryCellulariStatinoCELLULARE: TWideStringField;
    qryCellulariStatinoSTELEFONO: TWideStringField;
    qryCellulariStatinoSCELLULARE: TWideStringField;
    qryCellulariStatinoCTEL1: TWideStringField;
    qryCellulariStatinoCCELL: TWideStringField;
    qryCellulariStatinoCTEL2: TWideStringField;
    qryCellulariStatinoFCEL: TWideStringField;
    qryCellulariStatinoFTEL: TWideStringField;
    qryCellulariStatinoRISULTATO: TWideStringField;
    qryCellulariStatinoWANUMBER: TWideStringField;
    qryPlannerCalendars2CHIAVE: TIntegerField;
    qryPlannerCalendars2TECNICO: TIntegerField;
    qryPlannerCalendars2SUMMARY: TWideStringField;
    qryPlannerCalendars2DESCRIPTION: TWideStringField;
    qryPlannerCalendars2TECNICO_SIGLA: TWideStringField;
    qryPlannerCalendars2COLORE: TIntegerField;
    qryPlannerCalendars2JGUID: TGuidField;
    qryPlannerCalendars2GOOGLE_JSON: TWideMemoField;
    qryPlannerCalendars2GFORECOLOR: TIntegerField;
    qryPlannerCalendars2GBACKCOLOR: TIntegerField;
    qryPlannerCalendars2DEFAULTCOLOR: TIntegerField;
    qryPlannerCalendars2GOOGLEID: TWideStringField;
    qryPlannerCalendars2GOOGLE_SUMMARY: TWideStringField;
    qryPlannerCalendars2GRUPPO_ID: TWideStringField;
    qryPlannerCalendars2ACTIVE: TWideStringField;
    qryPlannerEvents2CHIAVE: TIntegerField;
    qryPlannerEvents2STATINO: TIntegerField;
    qryPlannerEvents2TECNICO: TIntegerField;
    qryPlannerEvents2DALLE_ORE: TDateTimeField;
    qryPlannerEvents2ALLE_ORE: TDateTimeField;
    qryPlannerEvents2NOTE: TWideMemoField;
    qryPlannerEvents2SUBJECT: TWideStringField;
    qryPlannerEvents2TECNICO_SIGLA: TWideStringField;
    qryPlannerEvents2COLORE: TIntegerField;
    qryPlannerEvents2JGUID: TGuidField;
    qryPlannerEvents2ICONA: TSmallintField;
    qryPlannerEvents2GOOGLE_JSON: TBlobField;
    qryPlannerEvents2GFORECOLOR: TIntegerField;
    qryPlannerEvents2GBACKCOLOR: TIntegerField;
    qryPlannerEvents2CALENDARIO: TIntegerField;
    qryPlannerEvents2GOOGLEID: TWideStringField;
    qryPlannerEvents2WANUMBER: TWideStringField;
    qryPlannerEvents2WA_SENT: TWideStringField;
    qryPlannerEvents2WA_MESSAGE: TWideStringField;
    qryReportPlannerWA_ID: TWideStringField;
    qryElencoEventiWhatsAppcalcMessage: TWideStringField;
    qryReportPlannercalcAppuntamentoDataOra: TDateTimeField;
    qryCustomersDESCRIZIONE_SCHEDA: TWideStringField;
    qryTechNOME_TECNICO: TWideStringField;
    qryCAPCAP: TWideStringField;
    qryLkpMessageStatus: TUniQuery;
    qryLkpMessageStatusWA_ID: TWideStringField;
    tbWhatsAppStates: TUniTable;
    tbWhatsAppStatesID: TSmallintField;
    tbWhatsAppStatesDESCRIPTION: TWideStringField;
    tbWhatsAppStatesIMAGE: TBlobField;
    qryLkpMessageStatusID: TSmallintField;
    qryLkpMessageStatusDESCRIPTION: TWideStringField;
    qryLkpMessageStatusIMAGE: TBlobField;
    dsStatini: TUniDataSource;
    qryReportPlannerWA_STATE: TSmallintField;
    qryReportPlannerWA_IMAGE: TBlobField;
    qryLkpMessageStatusWA_STATE: TSmallintField;
    qryCellulariStatinoRAGIONE_SOCIALE: TWideStringField;
    procedure qryReportPlannerBeforePost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure qryReportPlannerCalcFields(DataSet: TDataSet);
    procedure qryTechPlannedAfterScroll(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
    procedure vtGoogleEventsSearchBeforePost(DataSet: TDataSet);
    procedure DBDaySourceCalendar2FieldsToItem(Sender: TObject; Fields: TFields; Item: TPlannerItem);
    procedure ActionCalendarSync2Execute(Sender: TObject);
    procedure vtReportPlannerBeforePost(DataSet: TDataSet);
    procedure qryPersonalPlannerEventsBeforePost(DataSet: TDataSet);
    procedure actDlgColorActionExecute(Sender: TObject);
    procedure actDlgEditActionExecute(Sender: TObject);
    procedure actDlgDeleteActionsExecute(Sender: TObject);
    procedure actDlgMessageExecute(Sender: TObject);
    procedure qryPersonalPlannerEventsAfterInsert(DataSet: TDataSet);
    function InsertEvent(const aStartDate, aEndDate: TDateTime; aSubject: string; aStatino: Integer)
      : TJanuaRecEvent;
    procedure qryPersonalPlannerEventsBeforeDelete(DataSet: TDataSet);
    procedure actGlobalGoogleSyncExecute(Sender: TObject);
    procedure qryElencoEventiWhatsAppCalcFields(DataSet: TDataSet);
    procedure actWhatsAppExecute(Sender: TObject);
    procedure actWaSetExecute(Sender: TObject);
    procedure actSelectExecute(Sender: TObject);
    procedure actSelectAllExecute(Sender: TObject);
    procedure actWASendMessageExecute(Sender: TObject);
    procedure actWASendMsgTestExecute(Sender: TObject);
    procedure actWASetAsMsgSentExecute(Sender: TObject);
    procedure actWASetAsConfirmedExecute(Sender: TObject);
    procedure actGridConfirmEventExecute(Sender: TObject);
    procedure qryPersonalPlannerEventsAfterPost(DataSet: TDataSet);
    procedure qryPersonalPlannerEventsBeforeInsert(DataSet: TDataSet);
    procedure actNewMeetingExecute(Sender: TObject);
    procedure MenuButtonActionsExecute(Action: TBasicAction; var Handled: Boolean);
    procedure actContractExecute(Sender: TObject);
    procedure actWhatsAppMsgExecute(Sender: TObject);
    procedure actUndoMeetingExecute(Sender: TObject);
    procedure qryReportPlannerAfterScroll(DataSet: TDataSet);
  private
    Stopwatch: TStopwatch;
    FInsertingEvent: Boolean;
    FInserting: Boolean;
    Elapsed: TTimeSpan;
    Seconds: Double;
    FTechID: Int64;
    FTechFilter: Boolean;
    FReportDateFilter: Boolean;
    FReportDate: TDateTime;
    FCustomerID: Int64;
    FCustomerFilter: Boolean;
    FCAP: String;
    FStateFilter: Integer;
    FCAPFilter: Boolean;
    FCalendarsList2: TStrings;
    FItemImageField2: TField;
    FItemColorField2: TField;
    FItemCaptionField2: TField;
    FCalendarsFilter2: Boolean;
    FSelectedCalendarTec: Integer;
    FSelectedDate: TDate;
    FPlannerDlg: TDBPlanner;
    FPlannerEvent: TJanuaRecEvent;
    /// <summary>  Every Dict that is created is stored in this List </summary>
    FGCalEventsDict: TDictionary<TGUID, TJanuaRecEvent>;
    FAfterUpdateCal: TNotifyEvent;
    FWATest: Boolean;
    FWATestPhone: string;
    FAfterCalendarAction: TNotifyEvent;
    FvtReportPlannerDS: TDataSource;
    FGoogleSyncActive: Boolean;
    procedure SetCustomerFilter(const Value: Boolean);
    procedure SetCustomerID(const Value: Int64);
    procedure SetReportDate(const Value: TDateTime);
    procedure SetReportDateFilter(const Value: Boolean);
    procedure SetTechFilter(const Value: Boolean);
    procedure SetTechID(const Value: Int64);
    procedure SetCAP(const Value: String);
    procedure SetCAPFilter(const Value: Boolean);
    procedure SetStateFilter(const Value: Integer);
    function GetCalendarsList2Text: string;
    procedure SetCalendarsList2(const Value: TStrings);
    procedure SetItemCaptionField2(const Value: TField);
    procedure SetItemColorField2(const Value: TField);
    procedure SetItemImageField2(const Value: TField);
    procedure SetCalendarsFilter2(const Value: Boolean);
    procedure SetSelectedCalendarTec(const Value: Integer);
    procedure SetSelectedDate(const Value: TDate);
    procedure SetPlannerDlg(const Value: TDBPlanner);
    procedure SetPlannerEvent(const Value: TJanuaRecEvent);
    procedure SetAfterUpdateCal(const Value: TNotifyEvent);
    procedure SetWATest(const Value: Boolean);
    procedure SetWATestPhone(const Value: string);
    procedure SetAfterCalendarAction(const Value: TNotifyEvent);
    procedure SetvtReportPlannerDS(const Value: TDataSource);
    procedure SetGoogleSyncActive(const Value: Boolean);
    { Private declarations }
  protected
    FAutoFilterTech: Boolean;
    FSearchCounter: Byte;
    function InternalDeleteItem(aItem: TPlannerItem): Boolean; override;
    procedure InternalUpdateItem(aItem: TPlannerItem);
    procedure InternalItemInsert;
    procedure PhoenixInsertGoogleCalendars;
    procedure PhoenixUpdateGoogleCalendars;
    /// <summary> Update and Event from temporay Virtual Google Events Table to Tab</summary>
    procedure PhoenixUpdateGoogleEvents;
    /// <summary> Insert or Update and Event from temporay Virtual Google Events Table to Tab</summary>
    procedure PhoenixInsertGoogleEvents;
    procedure CloneReportPlanner;
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
    procedure FilterDialog;
    procedure ActivateCalendar2;
    procedure UndoMeeting; override;
    /// <summary> After Selecting Calendars this procedure should be called (it can be inside a thread) </summary>
    procedure SelectCalendars2; virtual;
    /// <summary> After Selecting Calendars this procedure should be called (it can be inside a thread) </summary>
    procedure SelectCalendars; override;
    // <summary> Fill Calendars list with Custom Data in this case Tecnici </summary>
    procedure PopulateCalendars; override;
    // Filtro TEcnico vFilter :=  (FStateFilter > 0);
    procedure FilterTech;

    procedure WAFilter(aWADateFrom: TDateTime; aWADateTo: TDateTime; aWATecnico: Integer;
      aWAFiltraTecnico: Boolean);

    procedure RefreshCalendarTech;
    // Filtro Google
    function FilterGoogle(const aSearch: string): Integer;
    function FilterGoogleCalendar(const aSearch: string): Integer;
    function FilterGoogleCalendarSubject(const aSearch, aCalendar: string): Integer;
    procedure ReportGoogleSync;
    procedure PlannerGoogleSync; override;
    procedure FilterMeeting(const aFilter: TRecordFilter);
    procedure FilterMeetingDialog(const aFilter: TRecordFilter);
    procedure OpenCalendarT(aDate: TDate; aTechID: Integer);
    procedure DeleteGoogleMeeting(const aGUID: string);
    function LocateGoogleMeeting(const aGUID: string): TJanuaRecEvent;
    function UpdateGoogleMeeting(const aMeeting: TJanuaRecEvent): Boolean;
    function SendWhatsAppMessage(const aMeeting: TJanuaRecEvent): Boolean; overload;
    function SendWhatsAppMessage: Boolean; overload;
    procedure TwilioSync;
    procedure UpdateReportMsgStatus;
  public
    function AddTechEvent(const aShow: Boolean = True): TJanuaRecEvent;
    function GoogleSync: string;
    procedure SetGoogleTest;
    procedure UpdateReportPlanner;

    property ItemColorField2: TField read FItemColorField2 write SetItemColorField2;
    property ItemImageField2: TField read FItemImageField2 write SetItemImageField2;
    property ItemCaptionField2: TField read FItemCaptionField2 write SetItemCaptionField2;
    /// <summary> List of Calendars Selected by Users to be Showed on Window </summary>
    property CalendarsFilter2: Boolean read FCalendarsFilter2 write SetCalendarsFilter2;

    function OpenCalendar(const aDateFrom, aDateTo: TDateTime): Integer; override;
    procedure ActivateCalendar; override;

    /// Resources such as Offices, Rooms, Spaces ... or Entity Members such as Cars or Workers. </summary>
    property CalendarsList2: TStrings read FCalendarsList2 write SetCalendarsList2;
    /// <summary> This property can be used to synchronize late bindings engine </summary>
    property CalendarsList2Text: string read GetCalendarsList2Text;

    property CustomerID: Int64 read FCustomerID write SetCustomerID;
    property TechID: Int64 read FTechID write SetTechID;
    property CustomerFilter: Boolean read FCustomerFilter write SetCustomerFilter;
    property TechFilter: Boolean read FTechFilter write SetTechFilter;
    property ReportDate: TDateTime read FReportDate write SetReportDate;
    property ReportDateFilter: Boolean read FReportDateFilter write SetReportDateFilter;
    property CAPFilter: Boolean read FCAPFilter write SetCAPFilter;
    property CAP: String read FCAP write SetCAP;
    property StateFilter: Integer read FStateFilter write SetStateFilter;
    property SelectedCalendarTec: Integer read FSelectedCalendarTec write SetSelectedCalendarTec;
    property SelectedDate: TDate read FSelectedDate write SetSelectedDate;
    property PlannerDlg: TDBPlanner read FPlannerDlg write SetPlannerDlg;
    property PlannerEvent: TJanuaRecEvent read FPlannerEvent write SetPlannerEvent;
    property AfterUpdateCalendar: TNotifyEvent read FAfterUpdateCal write SetAfterUpdateCal;
    // WhatsApp Parameters
    property WATest: Boolean read FWATest write SetWATest;
    property WATestPhone: string read FWATestPhone write SetWATestPhone;
    property AfterCalendarAction: TNotifyEvent read FAfterCalendarAction write SetAfterCalendarAction;
    property vtReportPlannerDS: TDataSource read FvtReportPlannerDS write SetvtReportPlannerDS;
    property GoogleSyncActive: Boolean read FGoogleSyncActive write SetGoogleSyncActive;
  end;

var
  dmVCLPhoenixPlannerController: TdmVCLPhoenixPlannerController;

implementation

uses Janua.Phoenix.VCL.dlgEditReportTimetable, Janua.Core.Functions, Janua.Core.AsyncTask,
  Janua.Application.Framework,
  Janua.VCL.dlgInputDateTime,
  // Phoenix
  udlgPhoenixVCLWhatsAppSMSMessage, udlgPhoenixVCLMemoBox, DlgShowContratto, DlgNuovoStatino,
  Janua.Phoenix.VCL.dlgPlannerEvent, Janua.Phoenix.VCL.dlgGoogleSync, udlgPhoenixWAMessageList,
  Janua.Phoenix.PgTwilioSync;

{$IFDEF WIN32}
function InitializeDLL: string; stdcall; external 'PhoenixLib32_r10.dll' index 1;
function CreateGoogleEventDLL(aEvent: string): string; stdcall; external 'PhoenixLib32_r10.dll' index 2;
function UpdateGoogleEventDLL(aJson: string): string; stdcall; external 'PhoenixLib32_r10.dll' index 3;
function DeleteGoogleEventDLL(aJson: string): string; stdcall; external 'PhoenixLib32_r10.dll' index 4;
function ConfirmGoogleEventDLL(aJson: string): string; stdcall; external 'PhoenixLib32_r10.dll' index 5;
function UpdateGoogleDLL: string; stdcall; external 'PhoenixLib32_r10.dll' index 6;
function WhatsAppSentDLL(aJson: string): string; stdcall; external 'PhoenixLib32_r10.dll' index 7;
procedure GoogleRestore; stdcall; external 'PhoenixLib32_r10.dll' index 8;
procedure TestDLL; stdcall; external 'PhoenixLib32_r10.dll' index 9;
{$ENDIF}
{$IFDEF WIN64}
function InitializeDLL: string; stdcall; external 'PhoenixLib32_r9.64.dll' index 1;
function CreateGoogleEventDLL(aEvent: string): string; stdcall; external 'PhoenixLib32_r9.64.dll' index 2;
function UpdateGoogleEventDLL(aJson: string): string; stdcall; external 'PhoenixLib32_r9.64.dll' index 3;
function DeleteGoogleEventDLL(aJson: string): string; stdcall; external 'PhoenixLib32_r9.64.dll' index 4;
function ConfirmGoogleEventDLL(aJson: string): string; stdcall; external 'PhoenixLib32_r9.64.dll' index 5;
function UpdateGoogleDLL: string; stdcall; external 'PhoenixLib32_r9.64.dll' index 6;
function WhatsAppSentDLL(aJson: string): string; stdcall; external 'PhoenixLib32_r9.64.dll' index 7;
procedure GoogleRestore; stdcall; external 'PhoenixLib32_r9.64.dll' index 8;
procedure TestDLL; stdcall; external 'PhoenixLib32_r10.dll' index 9;
{$ENDIF}

var
  JMonitor: TObject;

const
  cMessage = 'Buongiorno, sono Marina della Asso Antincendio e Sicurezza Srl' + sl +
    'La contatto per comunicarLe che nella giornata del {{1}} il Ns tecnico passerà per la verifica degli estintori c/o la vs sede in {{2}}. Nel caso in cui non dovessimo ricevere riscontro daremo per confermata la Vs presenza. '
    + sl + 'Cordiali Saluti' + sl + sl +
    'Per comunicare eventuali variazioni cliccare qui: https://wa.me/393474065336';

  cRedColor: TColor = 2564572;
  cOrangeColor: TColor = 7911679;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TdmVCLPhoenixPlannerController.actDlgColorActionExecute(Sender: TObject);
begin
  { Sets the planner item color }
  ColorDialog1.Color := PlannerDlg.PopupPlannerItem.Color;
  if ColorDialog1.Execute then
  begin
    PlannerDlg.PopupPlannerItem.Color := ColorDialog1.Color;
    PlannerDlg.PopupPlannerItem.CaptionBkg := ColorDialog1.Color;
    PlannerDlg.PopupPlannerItem.Update;
  end;
end;

procedure TdmVCLPhoenixPlannerController.actDlgDeleteActionsExecute(Sender: TObject);
begin
  var
  vID := PlannerDlg.PopupPlannerItem.ID;
  if qryPersonalPlannerEvents.Locate('CHIAVE', vID, []) and JMessageDlg('Volete annullare appuntamento?') then
    qryPersonalPlannerEvents.Delete;
  (*
    DeleteGoogleMeeting(PlannerDlg.PopupPlannerItem.DBKey);
    qryPersonalPlannerEvents.close;
    qryPersonalPlannerEvents.Open;
  *)
end;

procedure TdmVCLPhoenixPlannerController.actDlgEditActionExecute(Sender: TObject);
begin
  inherited;
  var
  vID := PlannerDlg.PopupPlannerItem.ID;
  if qryPersonalPlannerEvents.Locate('CHIAVE', vID, []) then
  begin
    var
    lDlg := TdlgPhoenixVCLEditReportTimetable.Create(self);
    try
      lDlg.edTime.Time := qryPersonalPlannerEventsDALLE_ORE.AsDateTime;
      lDlg.edDate.DateTime := qryPersonalPlannerEventsDALLE_ORE.AsDateTime;
      var
      Delta := qryPersonalPlannerEventsALLE_ORE.AsDateTime - qryPersonalPlannerEventsDALLE_ORE.AsDateTime;
      lDlg.edRagioneSociale.Text := qryPersonalPlannerEventsSUBJECT.AsString;
      lDlg.edNote.Text := qryPersonalPlannerEventsNOTE.AsString;
      lDlg.ShowModal;
      if lDlg.ModalResult = mrOK then
      begin
        qryPersonalPlannerEvents.Edit;
        qryPersonalPlannerEventsDALLE_ORE.AsDateTime := SumDateTime(lDlg.edDate.DateTime, lDlg.edTime.Time);
        qryPersonalPlannerEventsALLE_ORE.AsDateTime := qryPersonalPlannerEventsDALLE_ORE.AsDateTime + Delta;
        qryPersonalPlannerEventsSUBJECT.AsString := lDlg.edRagioneSociale.Text;
        qryPersonalPlannerEventsNOTE.AsString := lDlg.edNote.Text;
        try
          qryPersonalPlannerEvents.Post;
          if Assigned(FAfterCalendarAction) then
            FAfterCalendarAction(self);
        except
          on e: exception do
          begin
            qryPersonalPlannerEvents.Cancel;
            qryPersonalPlannerEvents.Close;
            qryPersonalPlannerEvents.Open;
            JShowError('Errore scrittura Appuntamento su Database', e.Message);
          end;
        end;
      end;
    finally
      lDlg.Free;
    end;
  end;

end;

procedure TdmVCLPhoenixPlannerController.actDlgMessageExecute(Sender: TObject);
begin
  inherited;
  SendWhatsAppMessage(PlannerEvent);
  if Assigned(FAfterCalendarAction) then
    FAfterCalendarAction(self);
end;

procedure TdmVCLPhoenixPlannerController.actGlobalGoogleSyncExecute(Sender: TObject);
begin
  inherited;
  if FGoogleSyncActive then
    try
      try
        UpdateGoogleDLL;
        spUpdateWhatsApp.ExecProc;
      except
        on e: exception do
          JShowError('Google Sync non Riuscita', e.Message, '');
      end;
    finally
      dmVCLPhoenixPlannerController.qryPersonalPlannerEvents.Close;
      dmVCLPhoenixPlannerController.qryPersonalPlannerEvents.Open;
      UpdateReportPlanner;
    end;
end;

procedure TdmVCLPhoenixPlannerController.actGridConfirmEventExecute(Sender: TObject);
begin
  inherited;
  var
  vID := PlannerDlg.PopupPlannerItem.ID;
  if not qryPersonalPlannerEvents.Locate('CHIAVE', vID, []) then
    JShowError('Nessun Evento Selezionato')
  else
  begin
    var
    vColor := qryTecniciCalendarDEFAULTCOLOR.AsInteger;
    var
    sGUID := StringReplace(qryPersonalPlannerEventsJGUID.AsString, '{', '', []);
    sGUID := StringReplace(sGUID, '}', '', []);
    var
    vTest := True;
    try
      if FGoogleSyncActive then
        ConfirmGoogleEventDLL(sGUID);
      if Assigned(FAfterCalendarAction) then
        FAfterCalendarAction(self);
    except
      on e: exception do
      begin
        vTest := False;
        JShowError('Google Errore di comunicazione', e.Message, '');
      end;
    end;
    if vTest then
    begin
      qryPersonalPlannerEvents.Edit;
      qryPersonalPlannerEventsCOLORE.AsInteger := vColor; // lkpTecniciGBACKCOLOR.AsInteger;
      qryPersonalPlannerEvents.Post;
    end;
    qryPersonalPlannerEvents.Close;
    qryPersonalPlannerEvents.Open;
  end;
end;

procedure TdmVCLPhoenixPlannerController.actContractExecute(Sender: TObject);
var
  lDlg: TDLG_SHOW_CONTRATTO;
begin
  lDlg := TDLG_SHOW_CONTRATTO.Create(Nil);
  try
    lDlg.Init(TFiBConfig.QRY_GENERIC, qryReportPlannerCLIENTE.AsInteger);
    lDlg.ShowModal;
    TFiBConfig.QRY_GENERIC.Sql.Clear;
  finally
    lDlg.Free;
  end;
end;

procedure TdmVCLPhoenixPlannerController.ActionCalendarSync2Execute(Sender: TObject);
begin
  inherited;
  if Assigned(PlannerPDFIO2) then
    PDFIOExport(PlannerPDFIO2)
end;

procedure TdmVCLPhoenixPlannerController.ActivateCalendar;
begin
  if not qryPlannerEvents.Active then
    qryPlannerEvents.Open;
  inherited;
end;

procedure TdmVCLPhoenixPlannerController.ActivateCalendar2;
begin
  if not qryPlannerEvents2.Active then
    qryPlannerEvents2.Open;
end;

procedure TdmVCLPhoenixPlannerController.actNewMeetingExecute(Sender: TObject);
var
  lDlg: TdlgPhoenixVCLEditReportTimetable;
begin
  lDlg := TdlgPhoenixVCLEditReportTimetable.Create(self);
  try
    if not self.qryReportPlannerAPPUNTAMENTO_ORA.IsNull then
    begin
      lDlg.edTime.Time := self.qryReportPlannerAPPUNTAMENTO_ORA.AsDateTime;
      lDlg.edDate.DateTime := self.qryReportPlannerAPPUNTAMENTO_DATA.AsDateTime;
    end
    else
    begin
      lDlg.edDate.DateTime := Date();
    end;

    lDlg.edNote.Text := self.qryReportPlannerNOTE_PER_IL_TECNICO.Text;

    lDlg.ShowModal;

    if lDlg.ModalResult = mrOK then
      try
        qryReportPlanner.Edit;
        qryReportPlannerAPPUNTAMENTO_ORA.AsDateTime := lDlg.edTime.Time;
        qryReportPlannerAPPUNTAMENTO_DATA.AsDateTime := lDlg.edDate.DateTime;
        qryReportPlannerNOTE_PER_IL_TECNICO.Text := lDlg.edNote.Text;
        if qryReportPlannerSTATO.AsInteger = 0 then
          qryReportPlannerSTATO.AsInteger := 1
        else if qryReportPlannerSTATO.AsInteger = 5 then
          qryReportPlannerSTATO.AsInteger := 6;
        qryReportPlanner.Post;
      except
        on e: exception do
        begin
          self.qryReportPlanner.Cancel;
          raise
        end;
      end;
  finally
    lDlg.Free;
  end;

end;

procedure TdmVCLPhoenixPlannerController.actSelectAllExecute(Sender: TObject);
begin
  inherited;
  {
    qryElencoEventiWhatsApp.First;
    While not qryElencoEventiWhatsApp.Eof do
    begin
    if qryElencoEventiWhatsAppWANUMBER.AsString <> '' then
    begin
    qryElencoEventiWhatsApp.Edit;
    qryElencoEventiWhatsAppWA.AsString := 'F';
    qryElencoEventiWhatsApp.Post;
    end;
    qryElencoEventiWhatsApp.Next;
    end;
  }
end;

procedure TdmVCLPhoenixPlannerController.actSelectExecute(Sender: TObject);
begin
  inherited;
  {
    qryElencoEventiWhatsApp.Edit;
    qryElencoEventiWhatsAppWA.AsString := 'F';
    qryElencoEventiWhatsApp.Post;
  }
end;

procedure TdmVCLPhoenixPlannerController.actUndoMeetingExecute(Sender: TObject);
begin
  if JMessageDlg('Volete annullare appuntamento?') then
    try
      qryReportPlanner.Edit;
      qryReportPlannerAPPUNTAMENTO_ORA.Clear;
      qryReportPlannerAPPUNTAMENTO_DATA.Clear;
      if qryReportPlannerSTATO.AsInteger = 1 then
        qryReportPlannerSTATO.AsInteger := 0
      else if qryReportPlannerSTATO.AsInteger = 6 then
        qryReportPlannerSTATO.AsInteger := 5;
      qryReportPlanner.Post;
    except
      on e: exception do
      begin
        self.qryReportPlanner.Cancel;
        raise
      end;
    end;
end;

procedure TdmVCLPhoenixPlannerController.actWASendMessageExecute(Sender: TObject);
var
  lParams: TJanuaArray<string>;
begin
  var
  sGUID := StringReplace(qryElencoEventiWhatsAppJGUID.AsString, '{', '', []);
  sGUID := StringReplace(sGUID, '}', '', []);

  var
  lMessage := '';
  // qryElencoEventiWhatsAppcalcMessage.AsString;
  var
  lPhone := IfThen(FWATest, FWATestPhone, Trim(qryElencoEventiWhatsAppWANUMBER.AsString));
  lPhone := StringReplace(lPhone, ' ', '', [rfIgnoreCase, rfReplaceAll]);

  if lPhone = '' then
    JShowError('Non è presente un numero WhatsApp Valido')
  else
  begin
    var
    lWaNumber := lPhone;
    lPhone := '+39' + lWaNumber;
    var
    vTest := True;
    try
      var
      aStrings := TStringList.Create;
      try
        aStrings.Add(DateToStr(qryElencoEventiWhatsAppDALLE_ORE.AsDateTime));
        aStrings.Add(qryElencoEventiWhatsAppLOCATION.AsString);
        vTest := SendMSSWhatsAppMessage('', lPhone, True, aStrings.Text);
      finally
        aStrings.Free;
      end;
      if vTest and FGoogleSyncActive then
        WhatsAppSentDLL(sGUID);
    except
      on e: exception do
      begin
        vTest := False;
        JShowError('Errore invio WhatsApp a: ' + qryElencoEventiWhatsAppWANUMBER.AsString, e.Message);
      end;
    end;
    if vTest then
    begin
      qryElencoEventiWhatsApp.Edit;
      qryElencoEventiWhatsAppWA.AsString := 'F';
      qryElencoEventiWhatsApp.Post;

      spInsertWhatsAppMsg.ParamByName('wanumber').Value := lWaNumber;
      spInsertWhatsAppMsg.ParamByName('wamessage').Value := FJanuaAdvTwilio.MessageBody;
      spInsertWhatsAppMsg.ParamByName('in_out').Value := 0;
      spInsertWhatsAppMsg.ParamByName('wa_id').Value := FJanuaAdvTwilio.MessageSid;
      if qryElencoEventiWhatsAppSTATINO.AsInteger <> 0 then
        spInsertWhatsAppMsg.ParamByName('report_id').Value := qryElencoEventiWhatsAppSTATINO.AsInteger;
      spInsertWhatsAppMsg.ExecProc;
    end;

  end;
end;

procedure TdmVCLPhoenixPlannerController.actWASendMsgTestExecute(Sender: TObject);
begin
  var
  sGUID := StringReplace(qryElencoEventiWhatsAppJGUID.AsString, '{', '', []);
  sGUID := StringReplace(sGUID, '}', '', []);

  // By Default it uses Twilio Sender (note whene more senders will be supported this should be a case choice)
  var
  lMessage := StringReplace(cMessage, '{{1}}', DateToStr(qryElencoEventiWhatsAppSTARTTIME.AsDateTime),
    [rfIgnoreCase, rfReplaceAll]);
  lMessage := StringReplace(lMessage, '{{2}}', qryElencoEventiWhatsAppLOCATION.AsString,
    [rfIgnoreCase, rfReplaceAll]);

  var
  lPhone := JanuaInputText('Inserire cellulare test', 'Numero di Cellulare', WATestPhone);
  if lPhone = '' then
    JShowError('Non è presente un numero WhatsApp Valido')
  else
  begin
    lPhone := StringReplace(lPhone, ' ', '', [rfIgnoreCase, rfReplaceAll]);
    var
    lWaNumber := lPhone;
    if Pos('+39', lPhone) = 0 then
      lPhone := '+39' + lPhone;

    var
    aStrings := TStringList.Create;
    try
      aStrings.Add(DateToStr(qryElencoEventiWhatsAppSTARTTIME.AsDateTime));
      aStrings.Add(qryElencoEventiWhatsAppLOCATION.AsString);
      var
      lSent := SendMSSWhatsAppMessage('', lPhone, True, aStrings.Text);

      if lSent then
      begin
        if FGoogleSyncActive then
          WhatsAppSentDLL(sGUID);
        qryElencoEventiWhatsApp.Edit;
        qryElencoEventiWhatsAppWA.AsString := 'F';
        qryElencoEventiWhatsApp.Post;

        spInsertWhatsAppMsg.ParamByName('wanumber').Value := lWaNumber;
        spInsertWhatsAppMsg.ParamByName('wamessage').Value := FJanuaAdvTwilio.MessageBody;
        spInsertWhatsAppMsg.ParamByName('in_out').Value := 0;
        spInsertWhatsAppMsg.ParamByName('wa_id').Value := FJanuaAdvTwilio.MessageSid;
        if qryElencoEventiWhatsAppSTATINO.AsInteger <> 0 then
          spInsertWhatsAppMsg.ParamByName('report_id').Value := qryElencoEventiWhatsAppSTATINO.AsInteger;
        spInsertWhatsAppMsg.ExecProc;
      end;
    finally
      aStrings.Free;
    end;
  end;

end;

procedure TdmVCLPhoenixPlannerController.actWASetAsConfirmedExecute(Sender: TObject);
begin
  var
  sGUID := StringReplace(qryElencoEventiWhatsAppJGUID.AsString, '{', '', []);
  sGUID := StringReplace(sGUID, '}', '', []);

  If FGoogleSyncActive and JMessageDlg('Confermo come contattato: ' + qryElencoEventiWhatsAppSUMMARY.AsString)
  then
    ConfirmGoogleEventDLL(sGUID);

  qryElencoEventiWhatsApp.Edit;
  qryElencoEventiWhatsAppWA.AsString := 'T';
  qryElencoEventiWhatsApp.Post;
end;

procedure TdmVCLPhoenixPlannerController.actWASetAsMsgSentExecute(Sender: TObject);
begin
  var
  sGUID := StringReplace(qryElencoEventiWhatsAppJGUID.AsString, '{', '', []);
  sGUID := StringReplace(sGUID, '}', '', []);

  If JMessageDlg('Confermo come contattato: ' + qryElencoEventiWhatsAppSUMMARY.AsString) then
  begin
    if FGoogleSyncActive then
      WhatsAppSentDLL(sGUID);

    qryElencoEventiWhatsApp.Edit;
    qryElencoEventiWhatsAppWA.AsString := 'F';
    qryElencoEventiWhatsApp.Post;
  end;
end;

procedure TdmVCLPhoenixPlannerController.actWaSetExecute(Sender: TObject);
begin
  inherited;
  {
    qryElencoEventiWhatsApp.Edit;
    qryElencoEventiWhatsAppWA.AsString := 'T';
    qryElencoEventiWhatsApp.Post;
  }
end;

procedure TdmVCLPhoenixPlannerController.actWhatsAppExecute(Sender: TObject);
begin
  if FGoogleSyncActive then
    UpdateGoogleDLL;
  spUpdateWhatsApp.ExecProc;
  qryElencoEventiWhatsApp.Close;
  qryElencoEventiWhatsApp.ParamByName('DATE_FROM').AsDate := Date() + 1;
  qryElencoEventiWhatsApp.ParamByName('DATE_TO').AsDate := Date() + 2;
  qryElencoEventiWhatsApp.ParamByName('TECNICO').AsInteger := 0;
  qryElencoEventiWhatsApp.Open;

  Application.CreateForm(TdlgVCLPhoenixWAMessageList, dlgVCLPhoenixWAMessageList);
  try
    dlgVCLPhoenixWAMessageList.ShowModal;
    if FGoogleSyncActive then
      UpdateGoogleDLL;
    qryPersonalPlannerEvents.Close;
    qryPersonalPlannerEvents.Open;
  finally
    dlgVCLPhoenixWAMessageList.Free;
    dlgVCLPhoenixWAMessageList := nil;
  end;

end;

procedure TdmVCLPhoenixPlannerController.actWhatsAppMsgExecute(Sender: TObject);
begin
  SendWhatsAppMessage
end;

procedure TdmVCLPhoenixPlannerController.WAFilter(aWADateFrom: TDateTime; aWADateTo: TDateTime;
  aWATecnico: Integer; aWAFiltraTecnico: Boolean);
begin
  qryElencoEventiWhatsApp.Close;
  qryElencoEventiWhatsApp.ParamByName('DATE_FROM').AsDate := aWADateFrom;
  qryElencoEventiWhatsApp.ParamByName('DATE_TO').AsDate := aWADateTo;
  qryElencoEventiWhatsApp.ParamByName('TECNICO').AsInteger := IfThen(aWAFiltraTecnico, aWATecnico, 0);
  qryElencoEventiWhatsApp.Open;
end;

procedure TdmVCLPhoenixPlannerController.AddEvent;
var
  dlg: TdlgVCLPhoenixPlannerEvent;
  procedure FilterMeetingDefault;
  var
    lFilter: TRecordFilter;
  begin
    lFilter.TecnicoDB := FSelectedCalendarTec;
    lFilter.TecnicoCk := True; { not lkpGroups.Value.IsEmpty and ckbFilterTech.Checked; }
    lFilter.CAPCk := False;
    lFilter.ClienteID := -1;
    lFilter.ClienteCk := False;
    lFilter.Status := 5;
    FilterMeetingDialog(lFilter);
  end;

begin
  FSelectedCalendarTec := qryTecniciCalendarRESPONSABILE.AsInteger;
  if FSelectedDate < Date + 1 then
    FSelectedDate := Date + 1;

  OpenCalendarT(FSelectedDate, FSelectedCalendarTec);
  FilterMeetingDefault;
  dlg := TdlgVCLPhoenixPlannerEvent.Create(nil);
  try
    dlg.cboTecnici.Value := FSelectedCalendarTec.ToString;
    dlg.ShowModal;
    RefreshCalendarTech;
  finally
    dlg.Free;
    dlg := nil;
  end;
end;

function TdmVCLPhoenixPlannerController.AddTechEvent(const aShow: Boolean = True): TJanuaRecEvent;
var
  lDlg: TdlgPhoenixVCLEditReportTimetable;
  vTime: TDateTime;
  vID: Integer;
begin
  lDlg := TdlgPhoenixVCLEditReportTimetable.Create(self);
  try
    if not vtReportPlanner.FieldByName('APPUNTAMENTO_ORA').IsNull then
    begin
      lDlg.edTime.Time := vtReportPlanner.FieldByName('APPUNTAMENTO_ORA').AsDateTime;
      lDlg.edDate.DateTime := vtReportPlanner.FieldByName('APPUNTAMENTO_DATA').AsDateTime;
    end
    else
    begin
      lDlg.edDate.DateTime := SelectedDate;
    end;

    vTime := SelectedDate + EncodeTime(8, 30, 0, 0);

    if qryPersonalPlannerEvents.RecordCount > 0 then
    begin
      qryPersonalPlannerEvents.First;
      While not qryPersonalPlannerEvents.Eof do
      begin
        if qryPersonalPlannerEventsDALLE_ORE.AsDateTime > vTime then
          vTime := qryPersonalPlannerEventsDALLE_ORE.AsDateTime;
        qryPersonalPlannerEvents.Next;
      end;

      vTime := vTime + (1 / 24);
    end;

    lDlg.edTime.Time := vTime;

    lDlg.edRagioneSociale.Text := vtReportPlanner.FieldByName('DESCRIZIONE_SCHEDA').AsString;
    lDlg.edNote.Text := vtReportPlanner.FieldByName('NOTE_PER_IL_TECNICO').Text;
    vID := vtReportPlanner.FieldByName('CHIAVE').AsInteger;

    if aShow then
      lDlg.ShowModal;

    if not aShow or (lDlg.ModalResult = mrOK) then
      try
        var
        lTitle := lDlg.edRagioneSociale.Text;

        vtReportPlanner.Filtered := False;
        if (vID = vtReportPlanner.FieldByName('CHIAVE').AsInteger) or vtReportPlanner.Locate('CHIAVE', vID, [])
        then
        begin
          vtReportPlanner.Edit;
          // Forza l'update.
          vtReportPlanner.FieldByName('calcReportID').Clear;

          vtReportPlanner.FieldByName('APPUNTAMENTO_ORA').AsDateTime := lDlg.edTime.Time;
          vtReportPlanner.FieldByName('APPUNTAMENTO_DATA').AsDateTime := lDlg.edDate.DateTime;
          vtReportPlanner.FieldByName('NOTE_PER_IL_TECNICO').Text := lDlg.edNote.Text;

          if vtReportPlanner.FieldByName('STATO').AsInteger = 0 then
          begin
            vtReportPlanner.FieldByName('STATO').AsInteger := 1;
          end
          else if vtReportPlanner.FieldByName('STATO').AsInteger = 4 then
          begin
            // NON FA NULLA
          end
          else if vtReportPlanner.FieldByName('STATO').AsInteger = 5 then
          begin
            if not vtReportPlanner.FieldByName('APPUNTAMENTO_DATA').IsNull then
            begin
              vtReportPlanner.FieldByName('STATO').AsInteger := 6;
            end;
          end
          else if (vtReportPlanner.FieldByName('STATO').AsInteger = 6) or
            (vtReportPlanner.FieldByName('APPUNTAMENTO_DATA').Value = 0) then
          begin
            if vtReportPlanner.FieldByName('APPUNTAMENTO_DATA').IsNull then
            begin
              vtReportPlanner.FieldByName('STATO').AsInteger := 5;
            end;
          end
          else if vtReportPlanner.FieldByName('STATO').AsInteger = 1 then
          begin
            if vtReportPlanner.FieldByName('APPUNTAMENTO_DATA').IsNull or
              (vtReportPlanner.FieldByName('APPUNTAMENTO_DATA').Value = 0) then
            begin
              vtReportPlanner.FieldByName('STATO').AsInteger := 0;
            end;
          end;

          vtReportPlanner.FieldByName('calcReportID').Clear;

          vtReportPlanner.Post;

          qryReportPlanner.Filtered := False;
          if qryReportPlanner.Locate('CHIAVE', vID, []) then
          begin
            qryReportPlanner.Edit;
            qryReportPlanner.FieldByName('APPUNTAMENTO_ORA').AsDateTime := lDlg.edTime.Time;
            qryReportPlanner.FieldByName('APPUNTAMENTO_DATA').AsDateTime := lDlg.edDate.DateTime;
            qryReportPlanner.FieldByName('NOTE_PER_IL_TECNICO').Text := lDlg.edNote.Text;
            qryReportPlanner.Post;

            qryPersonalPlannerEvents.Append;
            // Chiave ora è impostata automaticamente dal programma (GenID)
            vTime := SumDateTime(lDlg.edDate.DateTime, lDlg.edTime.Time);
            qryPersonalPlannerEventsDALLE_ORE.AsDateTime := vTime;
            qryPersonalPlannerEventsALLE_ORE.AsDateTime := vTime + (1 / 24);
            qryPersonalPlannerEventsJGUID.AsString := TGUID.NewGuid.ToString();
            qryPersonalPlannerEventsTECNICO.AsInteger := TechID;
            qryPersonalPlannerEventsSTATINO.AsInteger := vtReportPlannerCHIAVE.AsInteger;
            // Subject
            qryPersonalPlannerEventsSUBJECT.AsString := lTitle; // vtReportPlannerDESCRIZIONE_SCHEDA.AsString;
            qryPersonalPlannerEventsICONA.AsInteger := 0;
            qryPersonalPlannerEventsNOTE.Text := lDlg.edNote.Text;

            if (qryTecniciCalendarRESPONSABILE.AsInteger = TechID) or
              qryTecniciCalendar.Locate('RESPONSABILE', TechID, []) then
            begin
              qryPersonalPlannerEventsTECNICO_SIGLA.AsString := qryTecniciCalendarSIGLA.AsString;
              qryPersonalPlannerEventsCALENDARIO.AsInteger := qryTecniciCalendarCALENDARIO.AsInteger;
              qryPersonalPlannerEventsCOLORE.AsInteger := qryTecniciCalendarDEFAULTCOLOR.AsInteger;
            end;

            qryPersonalPlannerEvents.Post;
          end;

          if (qryTecniciCalendarRESPONSABILE.AsInteger = TechID) or qryTecniciCalendar.Locate('RESPONSABILE',
            TechID, []) and FGoogleSyncActive then
          begin
            // Google Calendar Table
            // SELECT * FROM   GOOGLE_CALENDAR_EVENTS WHERE sync = 'F' and etag = '""';
            tabGoogleEvents.Append;
            tabGoogleEventsID.AsString := qryPersonalPlannerEventsJGUID.AsString;
            tabGoogleEventsETAG.AsString := '""';
            tabGoogleEventsSUMMARY.AsString := qryPersonalPlannerEventsSUBJECT.AsString;
            tabGoogleEventsDESCRIPTION.Text := lDlg.edNote.Text;
            tabGoogleEventsCALENDARID.AsString := qryTecniciCalendarGOOGLEID.AsString;
            tabGoogleEventsSTARTTIME.AsDateTime := qryPersonalPlannerEventsDALLE_ORE.AsDateTime;
            tabGoogleEventsENDTIME.AsDateTime := qryPersonalPlannerEventsALLE_ORE.AsDateTime;
            tabGoogleEventsLOCATION.AsString := qryReportPlannercalcIndirizzo.AsString;
            tabGoogleEventsCOLOR.AsInteger := 0;
            tabGoogleEventsISALLDAY.AsString := 'F';
            tabGoogleEventsRECURRENCE.AsString := 'F';
            tabGoogleEventsSYNC.AsString := 'F';
            tabGoogleEventsBACKGROUNDCOLOR.AsInteger := 22;
            tabGoogleEventsFOREGROUNDCOLOR.AsInteger := 0;
            tabGoogleEventsJGUID.AsString := qryPersonalPlannerEventsJGUID.AsString;
            tabGoogleEvents.Post;
            var
            lEventID := StringReplace(tabGoogleEventsJGUID.AsString, '{', '', []);
            lEventID := StringReplace(lEventID, '}', '', []);
            lEventID := CreateGoogleEventDLL(lEventID);

            tabGoogleEvents.Close;
            tabGoogleEvents.Open;
            if tabGoogleEvents.Locate('ID', lEventID, []) then
            begin
              Result.LoadFromDataset(tabGoogleEvents);
              vtGoogleEventsSearch.Append;
              Result.SaveToDataset(vtGoogleEventsSearch);
            end
            else
              Result.Clear;

            if lEventID <> '' then
            begin
              qryPersonalPlannerEvents.Edit;
              qryPersonalPlannerEventsGOOGLEID.AsString := lEventID;
              qryPersonalPlannerEvents.Post;
              qryReportPlanner.Edit;
              qryReportPlannerGCAL.AsString := 'G';
              qryReportPlanner.Post;
            end;

          end;
        end;

      except
        on e: exception do
        begin
          vtReportPlanner.Cancel;
          raise
        end;
      end;
  finally
    vtReportPlanner.Filtered := True;
    lDlg.Free;
  end;
end;

procedure TdmVCLPhoenixPlannerController.UpdateReportMsgStatus;
begin
  if qryReportPlannerWA_ID.AsString <> '' then
  begin
    qryLkpMessageStatus.Close;
    qryLkpMessageStatus.ParamByName('wa_id').AsString := qryReportPlannerWA_ID.AsString;
    qryLkpMessageStatus.Open;
    if (qryLkpMessageStatus.RecordCount > 0) and
      (qryReportPlannerWA_IMAGE.IsNull or qryReportPlannerWA_STATE.IsNull or
      (qryLkpMessageStatusWA_STATE.AsInteger <> qryReportPlannerWA_STATE.AsInteger)) then
    begin
      var
      lStream := TMemoryStream.Create;
      try
        qryLkpMessageStatusIMAGE.SaveToStream(lStream);
        qryReportPlanner.Edit;
        qryReportPlannerWA_STATE.AsInteger := qryLkpMessageStatusWA_STATE.AsInteger;
        qryReportPlannerWA_IMAGE.LoadFromStream(lStream);
        qryReportPlanner.Post;
      finally
        lStream.Free;
      end;
    end;
    qryLkpMessageStatus.Close;
  end;
end;

procedure TdmVCLPhoenixPlannerController.UpdateReportPlanner;
begin
  dsReportsPlanner.Enabled := False;
  Screen.Cursor := crHourGlass;
  try
    vtReportPlanner.Filtered := False;
    vtReportPlanner.Clear;
    qryReportPlanner.Close;
    spUpdateStatini.ExecProc;
    qryReportPlanner.Open;
    qryReportPlanner.Last;
    qryReportPlanner.First;

    While not qryReportPlanner.Eof do
    begin
      var
      vTest := False;

      // if not vtReportPlanner.Locate('CHIAVE', qryReportPlannerCHIAVE.Value, []) then
      // begin
      vtReportPlanner.Append;
      vtReportPlannerCHIAVE.Value := qryReportPlannerCHIAVE.Value;
      vTest := True;
      // end
      {
        else
        begin
        vTest := (vtReportPlannerDATA_INTERVENTO.Value <> qryReportPlannerDATA_INTERVENTO.Value) or
        (vtReportPlannerAPPUNTAMENTO_DATA.Value <> qryReportPlannerAPPUNTAMENTO_DATA.Value) or
        (vtReportPlannerAPPUNTAMENTO_ORA.Value <> qryReportPlannerAPPUNTAMENTO_ORA.Value) or
        (vtReportPlannerSTATO.Value <> qryReportPlannerSTATO.Value) or
        (vtReportPlannerAPPUNTAMENTO_DATA.IsNull <> qryReportPlannerAPPUNTAMENTO_DATA.IsNull) or
        (vtReportPlannerAPPUNTAMENTO_ORA.IsNull <> qryReportPlannerAPPUNTAMENTO_ORA.IsNull);
        if vTest then
        begin
        vtReportPlanner.Edit;
        vtReportPlanner.FieldByName('calcReportID').IsNull;
        end;
        end;

        if vTest then
      }
      begin
        var
        vFiliale := qryReportPlannerNOME.Value;
        // qryReportPlannerFILIALE.AsString;                                            ))))
        var
        vSede := qryReportPlannerDESCRIZIONE_SCHEDA.Value;

        vtReportPlannerDESCRIZIONE_SCHEDA.Value := vSede + IfThen((vFiliale = 'SEDE') or (vFiliale = vSede),
          '', ' ' + vFiliale);
        vtReportPlannerCLIENTE.Value := qryReportPlannerCLIENTE.Value;
        vtReportPlannerNOME.Value := qryReportPlannerNOME.Value;
        vtReportPlannerPROVINCIA.Value := qryReportPlannerPROVINCIA.Value;
        vtReportPlannerCAP.Value := qryReportPlannerCAP.Value;
        vtReportPlannerINDIRIZZO.Value := qryReportPlannerINDIRIZZO.Value;
        vtReportPlannerDATA_INTERVENTO.Value := qryReportPlannerDATA_INTERVENTO.Value;
        vtReportPlannerTECNICO_INTERVENTO.Value := qryReportPlannerTECNICO_INTERVENTO.Value;
        vtReportPlannerNOTE_PER_IL_TECNICO.Value := qryReportPlannerNOTE_PER_IL_TECNICO.Value;
        vtReportPlannerRESPONSABILE.Value := qryReportPlannerRESPONSABILE.Value;
        vtReportPlannerSTATO_LAVORAZIONE.Value := qryReportPlannerSTATO_LAVORAZIONE.Value;
        vtReportPlannerPRESA_IN_CARICO.Value := qryReportPlannerPRESA_IN_CARICO.Value;
        vtReportPlannerFORNITURA.Value := qryReportPlannerFORNITURA.Value;
        vtReportPlannerORDINARI.Value := qryReportPlannerORDINARI.Value;
        vtReportPlannerSTRAORDINARI.Value := qryReportPlannerSTRAORDINARI.Value;
        vtReportPlannerINTERVENTI.Value := qryReportPlannerINTERVENTI.Value;
        vtReportPlannerNOME_TECNICO.Value := qryReportPlannerNOME_TECNICO.Value;

        if not qryReportPlannerAPPUNTAMENTO_DATA.IsNull then
          vtReportPlannerAPPUNTAMENTO_DATA.Value := qryReportPlannerAPPUNTAMENTO_DATA.Value
        else
          vtReportPlannerAPPUNTAMENTO_DATA.Clear;

        if not qryReportPlannerAPPUNTAMENTO_ORA.IsNull then
          vtReportPlannerAPPUNTAMENTO_ORA.Value := qryReportPlannerAPPUNTAMENTO_ORA.Value
        else
          vtReportPlannerAPPUNTAMENTO_ORA.Clear;

        vtReportPlannerSTATO.Value := qryReportPlannerSTATO.Value;
        vtReportPlannerSTATINO.Value := qryReportPlannerSTATINO.Value;
        vtReportPlannerESTINTORI_ORDINARIO.Value := qryReportPlannerESTINTORI_ORDINARIO.Value;
        vtReportPlannerESTINTORI_STRAORDINARIO.Value := qryReportPlannerESTINTORI_STRAORDINARIO.Value;
        vtReportPlannerGRUPPI_ELETTR.Value := qryReportPlannerGRUPPI_ELETTR.Value;
        vtReportPlannerFUMI.Value := qryReportPlannerFUMI.Value;
        vtReportPlannerLUCI.Value := qryReportPlannerLUCI.Value;
        vtReportPlannerIDRANTI.Value := qryReportPlannerIDRANTI.Value;
        vtReportPlannerSPRINKLER.Value := qryReportPlannerSPRINKLER.Value;
        vtReportPlannerIMPIANTI_EL.Value := qryReportPlannerIMPIANTI_EL.Value;
        vtReportPlannerAMMINISTRATORE.Value := qryReportPlannerAMMINISTRATORE.Value;
        vtReportPlanner.Post;
      end;
      qryReportPlanner.Next;
    end;
    vtReportPlanner.Filtered := True;
  finally
    dsReportsPlanner.Enabled := True;
    Screen.Cursor := crDefault;
  end;
end;

procedure TdmVCLPhoenixPlannerController.CloneReportPlanner;
begin
  var
  vTest := qryReportPlanner.RecordCount;
  if vTest > 0 then
  begin
    qryReportPlanner.First;
    While not qryReportPlanner.Eof do
    begin
      vtReportPlanner.Append;
      vtReportPlannerCHIAVE.Value := qryReportPlannerCHIAVE.Value;

      var
      vFiliale := qryReportPlannerNOME.Value;
      // qryReportPlannerFILIALE.AsString;                                            ))))
      var
      vSede := qryReportPlannerDESCRIZIONE_SCHEDA.Value;

      vtReportPlannerDESCRIZIONE_SCHEDA.Value := vSede + IfThen((vFiliale = 'SEDE') or (vFiliale = vSede), '',
        ' ' + vFiliale);
      vtReportPlannerCLIENTE.Value := qryReportPlannerCLIENTE.Value;
      vtReportPlannerNOME.Value := qryReportPlannerNOME.Value;
      vtReportPlannerPROVINCIA.Value := qryReportPlannerPROVINCIA.Value;
      vtReportPlannerCAP.Value := qryReportPlannerCAP.Value;
      vtReportPlannerINDIRIZZO.Value := qryReportPlannerINDIRIZZO.Value;
      vtReportPlannerDATA_INTERVENTO.Value := qryReportPlannerDATA_INTERVENTO.Value;
      vtReportPlannerTECNICO_INTERVENTO.Value := qryReportPlannerTECNICO_INTERVENTO.Value;
      vtReportPlannerNOTE_PER_IL_TECNICO.Value := qryReportPlannerNOTE_PER_IL_TECNICO.Value;
      vtReportPlannerRESPONSABILE.Value := qryReportPlannerRESPONSABILE.Value;
      vtReportPlannerSTATO_LAVORAZIONE.Value := qryReportPlannerSTATO_LAVORAZIONE.Value;
      vtReportPlannerPRESA_IN_CARICO.Value := qryReportPlannerPRESA_IN_CARICO.Value;
      vtReportPlannerFORNITURA.Value := qryReportPlannerFORNITURA.Value;
      vtReportPlannerORDINARI.Value := qryReportPlannerORDINARI.Value;
      vtReportPlannerSTRAORDINARI.Value := qryReportPlannerSTRAORDINARI.Value;
      vtReportPlannerINTERVENTI.Value := qryReportPlannerINTERVENTI.Value;
      vtReportPlannerNOME_TECNICO.Value := qryReportPlannerNOME_TECNICO.Value;
      if not qryReportPlannerAPPUNTAMENTO_DATA.IsNull then
        vtReportPlannerAPPUNTAMENTO_DATA.Value := qryReportPlannerAPPUNTAMENTO_DATA.Value;
      if not vtReportPlannerAPPUNTAMENTO_ORA.IsNull then
        vtReportPlannerAPPUNTAMENTO_ORA.Value := qryReportPlannerAPPUNTAMENTO_ORA.Value;
      vtReportPlannerSTATO.Value := qryReportPlannerSTATO.Value;
      vtReportPlannerSTATINO.Value := qryReportPlannerSTATINO.Value;
      vtReportPlannerESTINTORI_ORDINARIO.Value := qryReportPlannerESTINTORI_ORDINARIO.Value;
      vtReportPlannerESTINTORI_STRAORDINARIO.Value := qryReportPlannerESTINTORI_STRAORDINARIO.Value;
      vtReportPlannerGRUPPI_ELETTR.Value := qryReportPlannerGRUPPI_ELETTR.Value;
      vtReportPlannerFUMI.Value := qryReportPlannerFUMI.Value;
      vtReportPlannerLUCI.Value := qryReportPlannerLUCI.Value;
      vtReportPlannerIDRANTI.Value := qryReportPlannerIDRANTI.Value;
      vtReportPlannerSPRINKLER.Value := qryReportPlannerSPRINKLER.Value;
      vtReportPlannerIMPIANTI_EL.Value := qryReportPlannerIMPIANTI_EL.Value;
      vtReportPlannerAMMINISTRATORE.Value := qryReportPlannerAMMINISTRATORE.Value;
      vtReportPlanner.Post;
      qryReportPlanner.Next;
    end;
  end;
end;

procedure TdmVCLPhoenixPlannerController.DataModuleCreate(Sender: TObject);
begin
  inherited;
  FGoogleSyncActive := False;
  FSearchCounter := 0;
  FWATest := False;
  FWATestPhone := '348 826 1954';
  FInsertingEvent := False;
  FGCalEventsDict := TDictionary<TGUID, TJanuaRecEvent>.Create;
  FCalendarsFilter2 := True;
  FCalendarsList2 := TStringList.Create;
  JMonitor := TObject.Create;
  lkpTecnici.Open;
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

  var
  aDay := DayOfWeek(Date + 1);
  aDay := 1 + IfThen(aDay >= 6, 7 - aDay, 0);
  FSelectedDate := Date + aDay;

  if FGoogleSyncActive then
    var
    vTest := InitializeDLL;

  LoadCalendarsFromDB := (
    procedure
    begin
      Stopwatch := TStopwatch.StartNew;
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
            vtGoogleCalendars.FieldByName('PRIMARY').AsBoolean :=
              (tabGoogleCalendarsISPRIMARY.AsString = 'T');
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
      Elapsed := Stopwatch.Elapsed;
      Seconds := Elapsed.TotalSeconds;
    end);

  LoadCalendarItemsFromDB := (

    procedure
    begin
      Async.Run<Boolean>(
        function: Boolean
        begin
          var
          lStopwatch := TStopwatch.StartNew;
          if not tabGoogleEvents.Active then
            tabGoogleEvents.Open;

          if tabGoogleEvents.RecordCount > 0 then
          begin
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
                vtGoogleEventsUSEDEFAULTREMINDERS.AsBoolean :=
                  (tabGoogleEventsUSEDEFAULTREMINDERS.Value = 'T');
                vtGoogleEventsSENDNOTIFICATIONS.AsBoolean := (tabGoogleEventsSENDNOTIFICATIONS.Value = 'T');
                vtGoogleEventsCALENDARID.Value := tabGoogleEventsCALENDARID.Value;
                vtGoogleEventsAttendees.Value := tabGoogleEventsATTENDEES.Value;
                vtGoogleEventsREMINDERS.Value := tabGoogleEventsREMINDERS.Value;
                vtGoogleEventsJGUID.Value := tabGoogleEventsJGUID.Value;
                vtGoogleEvents.Post;
              end;
              tabGoogleEvents.Next;
            end;
          end;
          vtGoogleEventsSearch.Assign(vtGoogleEvents);
          vtGoogleEventsSearch.Open;
          vtGoogleEventsSearch.Last;
          var
          lElapsed := lStopwatch.Elapsed;
          var
          lSeconds := Elapsed.TotalSeconds;
        end,
        procedure(const aValue: Boolean)
        begin
          // This is the "success" callback. Runs in the UI thread and
          // gets the result of the "background" anonymous method.
          vtGoogleEventsSearch.First;
          dsGCalendar.Enabled := True;
          dsGoogleEvents.Enabled := True;
          dslkpGCalendar.Enabled := True;
        end,
        procedure(const Ex: exception)
        begin
          // This is the "error" callback.
          // Runs in the UI thread and is called only if the
          // "background" anonymous method raises an exception.
          JShowError(Ex.Message);
        end);

    end);

  AfterLoadCalendars := (

    procedure
    begin
      qryTecniciCalendar.Open;
      dsCalendars.Enabled := True;
      dsCalendarEvents.Enabled := True;
      DBDaySourceCalendar.Active := True;
      DBDaySourceCalendar.Day := Date;
      Async.Run<Boolean>(
        function: Boolean
        begin
          // This is the "background" anonymous method. Runs in the
          // background thread, and its result is passed
          // to the "success" callback.
          // In this case the result is a String.
          Result := True;
          System.TMonitor.Enter(JMonitor);
          try
            Stopwatch := TStopwatch.StartNew;
            // Carico e metto in Cache nelle MemTable tutti i dataset che serviranno per la gestione del Cal.
            qryCAPTecnici.Open;
            qryCAPTecnici.Last;
            qryCAPTecnici.First;
            lkpTecnici.Open;
            lkpTecnici.Last;
            lkpTecnici.First;
            qryReportPlanner.Open;
            qryReportPlanner.Last;
            qryReportPlanner.First;
            // per la finestra di dialogo degli appuntamenti faccio le ricerche su un 'clone' della tabella
            // report Planner. Nota: il Clone mi serve principalmente per poter gestire le Immagini (icone)
            // Relative allo 'stato' del Rapportino ed allo stato del Calendario
            if not vtReportPlanner.Active then
              vtReportPlanner.Open;
            Elapsed := Stopwatch.Elapsed;
            Seconds := Elapsed.TotalSeconds;
          finally
            System.TMonitor.Exit(JMonitor);
          end;
        end,
        procedure(const aValue: Boolean)
        begin
          // This is the "success" callback. Runs in the UI thread and
          // gets the result of the "background" anonymous method.
          CloneReportPlanner;
        end,
        procedure(const Ex: exception)
        begin
          // This is the "error" callback.
          // Runs in the UI thread and is called only if the
          // "background" anonymous method raises an exception.
          JShowError(Ex.Message);
        end);
    end);
  { TestDLL; }
end;

procedure TdmVCLPhoenixPlannerController.DataModuleDestroy(Sender: TObject);
begin
  inherited;
  JMonitor.Free;
  JMonitor := nil;
  FCalendarsList2.Free;
  FCalendarsList2 := nil;
end;

procedure TdmVCLPhoenixPlannerController.DBDaySourceCalendar2FieldsToItem(Sender: TObject; Fields: TFields;
Item: TPlannerItem);
begin
  { The FieldsToItem event is called when records are read from the database
    and extra properties are set from database fields. With this code, any
    field from the database can be connected in a custom way to planner item
    properties.
  }
  Item.CaptionType := ctTimeText;
  // Fields.FieldByName('COLOR')
  if Assigned(ItemColorField2) and not ItemColorField2.IsNull and (ItemColorField2.AsInteger > 0) then
    Item.Color := TColor(ItemColorField2.AsInteger);
  Item.CaptionBkg := Item.Color;
  // Fields.FieldByName('IMAGE')
  if Assigned(ItemImageField2) and not ItemImageField2.IsNull and (ItemImageField2.AsInteger > -1) then
    Item.ImageID := ItemImageField2.AsInteger;
  // Fields.FieldByName('CAPTION')
  if Assigned(ItemCaptionField2) then
  begin
    if ItemCaptionField2.AsBoolean then
      Item.CaptionType := ctTimeText
    else
      Item.CaptionType := TCaptionType.ctNone;
  end;
end;

procedure TdmVCLPhoenixPlannerController.DeleteGoogleMeeting(const aGUID: string);
begin
  if FGoogleSyncActive then
  begin
    var
    sGUID := StringReplace(aGUID, '{', '', []);
    sGUID := StringReplace(sGUID, '}', '', []);
    DeleteGoogleEventDLL(sGUID);
    // dmVCLPhoenixPlannerController.qryPersonalPlannerEvents
    if qryPersonalPlannerEvents.Locate('JGUID', aGUID, []) then
    begin
      var
      vChiave := qryPersonalPlannerEventsSTATINO.AsInteger;
      vtReportPlanner.Filtered := False;
      if vtReportPlanner.Locate('CHIAVE', vChiave, []) then
      begin
        vtReportPlanner.Edit;
        // Forza l'update.
        vtReportPlanner.FieldByName('calcReportID').Clear;
        vtReportPlannerSTATO.AsInteger := vtReportPlannerSTATO.AsInteger - 1;
        vtReportPlannerAPPUNTAMENTO_DATA.Clear;
        vtReportPlannerAPPUNTAMENTO_ORA.Clear;
        vtReportPlanner.Post;
        // dmVCLPhoenixPlannerController.vtReportPlanner

      end;
      vtReportPlanner.Close;
      vtReportPlanner.Open;
      vtReportPlanner.Filtered := True;
    end;
    qryPersonalPlannerEvents.Close;
    qryPersonalPlannerEvents.Open;
    qryReportPlanner.Close;
    qryReportPlanner.Open;
  end;
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
            qryReportPlanner.Filter := qryReportPlanner.Filter + ' (STATO = 1 OR STATO = 5 OR STATO = 7)';
          end;
        2:
          begin
            CheckFilter;
            qryReportPlanner.Filter := qryReportPlanner.Filter + ' STATO = 4 ';
          end;
        3:
          begin
            CheckFilter;
            qryReportPlanner.Filter := qryReportPlanner.Filter + ' STATO = 6 ';
          end;
        4:
          begin
            CheckFilter;
            qryReportPlanner.Filter := qryReportPlanner.Filter + ' STATO = 0 ';
          end;
        5:
          begin
            CheckFilter;
            qryReportPlanner.Filter := qryReportPlanner.Filter + ' (STATO = 0 OR STATO = 6 OR STATO = 4) ';
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

procedure TdmVCLPhoenixPlannerController.FilterDialog;
  procedure CheckFilter;
  begin
    if qryReportPlanner.Filter > '' then
      qryReportPlanner.Filter := qryReportPlanner.Filter + ' AND ';
  end;

begin
  try
    try
      Inc(FSearchCounter);

      qryReportPlanner.Filter := '';
      qryReportPlanner.Filtered := False;

      if FSearchCounter >= 5 then
      begin
        dsReportsPlanner.Enabled := False;
        qryReportPlanner.Close;
        qryReportPlanner.Open;
        UpdateReportMsgStatus;
      end;

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
              qryReportPlanner.Filter := qryReportPlanner.Filter + ' (STATO = 1 OR STATO = 7 OR STATO = 5)';
            end;
          2:
            begin
              CheckFilter;
              qryReportPlanner.Filter := qryReportPlanner.Filter + ' STATO = 4 ';
            end;
          3:
            begin
              CheckFilter;
              qryReportPlanner.Filter := qryReportPlanner.Filter + ' STATO = 6 ';
            end;
          4:
            begin
              CheckFilter;
              qryReportPlanner.Filter := qryReportPlanner.Filter + ' STATO = 0 ';
            end;
          5:
            begin
              CheckFilter;
              qryReportPlanner.Filter := qryReportPlanner.Filter + ' (STATO = 0 OR STATO = 4 OR STATO = 6) ';
              qryReportPlanner.Filter := qryReportPlanner.Filter + 'AND APPUNTAMENTO_DATA IS NULL ';
            end;
        end;

        qryReportPlanner.Filtered := ReportDateFilter or CustomerFilter or TechFilter or CAPFilter or
          (FStateFilter > 0);

        if qryReportPlannerWA_ID.AsString > '' then
          UpdateReportMsgStatus;
      end;
    except
      on e: exception do
        raise exception.Create('Error Filtering ' + qryReportPlanner.Filter + sLineBreak + e.Message);
    end;
  finally
    dsReportsPlanner.Enabled := True;
  end;

end;

function TdmVCLPhoenixPlannerController.FilterGoogle(const aSearch: string): Integer;
begin
  var
  lSearch := StripString(aSearch);
  vtGoogleEventsSearch.Filter := 'SUMMARY LIKE ' + QuotedStr('%' + lSearch + '%');
  vtGoogleEventsSearch.Filtered := True;
  Result := vtGoogleEventsSearch.RecordCount;
end;

function TdmVCLPhoenixPlannerController.FilterGoogleCalendar(const aSearch: string): Integer;
begin
  vtGoogleEventsSearch.Filter := 'CALENDARID = ' + QuotedStr(aSearch);
  vtGoogleEventsSearch.Filtered := True;
  Result := vtGoogleEventsSearch.RecordCount;
end;

function TdmVCLPhoenixPlannerController.FilterGoogleCalendarSubject(const aSearch, aCalendar: string)
  : Integer;
begin
  var
  lSearch := 'SUMMARY LIKE ' + QuotedStr('%' + StripString(aSearch) + '%');
  vtGoogleEventsSearch.Filter := lSearch + IfThen(aCalendar = '', '',
    ' AND CALENDARID = ' + QuotedStr(aCalendar));
  vtGoogleEventsSearch.Filtered := True;
  Result := vtGoogleEventsSearch.RecordCount;
end;

procedure TdmVCLPhoenixPlannerController.FilterMeeting(const aFilter: TRecordFilter);
begin
  ReportDateFilter := False;

  CustomerFilter := aFilter.ClienteCk;
  TechFilter := aFilter.TecnicoCk;
  CAPFilter := aFilter.CAPCk;
  FStateFilter := aFilter.Status;

  TechID := aFilter.TecnicoDB;
  CustomerID := aFilter.ClienteID;
  CAP := aFilter.CAP;

  Filter;
end;

procedure TdmVCLPhoenixPlannerController.FilterMeetingDialog(const aFilter: TRecordFilter);
begin
  ReportDateFilter := aFilter.FilterDate;
  FReportDate := aFilter.Date;
  CustomerFilter := aFilter.ClienteCk;
  TechFilter := aFilter.TecnicoCk;
  CAPFilter := aFilter.CAPCk;
  FStateFilter := aFilter.Status;

  TechID := aFilter.TecnicoDB;
  CustomerID := aFilter.ClienteID;
  CAP := aFilter.CAP;

  FilterDialog;
end;

function TdmVCLPhoenixPlannerController.InsertEvent(const aStartDate, aEndDate: TDateTime; aSubject: string;
aStatino: Integer): TJanuaRecEvent;
begin
  if qryPersonalPlannerEvents.Locate('STATINO', aStatino, []) then
    try
      FInsertingEvent := True;
      qryPersonalPlannerEvents.Edit;
      qryPersonalPlannerEventsSUBJECT.AsString := aSubject;
      qryPersonalPlannerEventsDALLE_ORE.AsDateTime := aStartDate;
      qryPersonalPlannerEventsALLE_ORE.AsDateTime := aEndDate;
      qryPersonalPlannerEventsCOLORE.AsInteger := cRedColor;
      // qryTecniciCalendarDEFAULTCOLOR.AsInteger è stato sostituito dal colore Rosso
      qryPersonalPlannerEvents.Post;
      // Il record Google nasce 'non identificato' in quanto non è ancora stato salvato su Google
      Result.ID := '';
      Result.ETag := '';
      Result.Summary := qryPersonalPlannerEventsSUBJECT.AsString;
      Result.Description := qryPersonalPlannerEventsNOTE.AsString;
      Result.StartTime := qryPersonalPlannerEventsDALLE_ORE.AsDateTime;
      Result.EndTime := qryPersonalPlannerEventsALLE_ORE.AsDateTime;
      Result.Location := vtReportPlannercalcIndirizzo.AsString;
      if (qryTecniciCalendarRESPONSABILE.AsInteger = TechID) or qryTecniciCalendar.Locate('RESPONSABILE',
        TechID, []) then
        Result.CalendarID := qryTecniciCalendarGOOGLEID.AsString;
      Result.Visibility := 0;
      Result.Status := -1;
      Result.Recurrence := '';
      Result.RecurringID := '';
      Result.Visibility := 0;
      Result.Color := 0;
      Result.UseDefaultReminders := True;
      Result.SendNotifications := True;
      Result.IsAllDAy := False;
      Result.Attendees := '';
      Result.Reminders := '';
      Result.JGUID := qryPersonalPlannerEventsJGUID.AsString;
      Result.BackgroundColor := 22;
      Result.ForegroundColor := 0;
      Result.Sync := False;

      var
      vBool := True;
      var
      vTest := Result.GetAsJson;
      var
      vTest2 := '';
      if FGoogleSyncActive then
        try
          vTest2 := CreateGoogleEventDLL(vTest);
        except
          on e: exception do
          begin
            qryPersonalPlannerEvents.Delete;
            qryPersonalPlannerEvents.Close;
            qryPersonalPlannerEvents.Open;
            vBool := False;
            JShowError('Errore Inserimento Google Appuntamento: ' + aSubject, e.Message);
          end;
        end;

      if vBool then
      begin
        Result.SetAsJson(vTest2);
        Result.OldStartTime := Result.StartTime;
        Result.OldEndTime := Result.EndTime;

        FGCalEventsDict.Add(Result.GetGUID, Result);

        var
        vID := qryPersonalPlannerEventsSTATINO.AsInteger;

        if (vID = vtReportPlanner.FieldByName('CHIAVE').AsInteger) or vtReportPlanner.Locate('CHIAVE', vID, [])
        then
          try
            System.TMonitor.Enter(vtReportPlanner);
            vtReportPlanner.Edit;
            // Forza l'update.
            vtReportPlanner.FieldByName('calcReportID').Clear;

            vtReportPlanner.FieldByName('APPUNTAMENTO_ORA').AsDateTime :=
              Frac(qryPersonalPlannerEventsDALLE_ORE.AsDateTime);
            vtReportPlanner.FieldByName('APPUNTAMENTO_DATA').AsDateTime :=
              Int(qryPersonalPlannerEventsDALLE_ORE.AsDateTime);

            if vtReportPlanner.FieldByName('STATO').AsInteger = 0 then
            begin
              vtReportPlanner.FieldByName('STATO').AsInteger := 1;
            end
            else if vtReportPlanner.FieldByName('STATO').AsInteger = 5 then
            begin
              if not vtReportPlanner.FieldByName('APPUNTAMENTO_DATA').IsNull then
              begin
                vtReportPlanner.FieldByName('STATO').AsInteger := 6;
              end;
            end
            else if (vtReportPlanner.FieldByName('STATO').AsInteger = 6) or
              (vtReportPlanner.FieldByName('APPUNTAMENTO_DATA').Value = 0) then
            begin
              if vtReportPlanner.FieldByName('APPUNTAMENTO_DATA').IsNull then
              begin
                vtReportPlanner.FieldByName('STATO').AsInteger := 5;
              end;
            end
            else if vtReportPlanner.FieldByName('STATO').AsInteger = 1 then
            begin
              if vtReportPlanner.FieldByName('APPUNTAMENTO_DATA').IsNull or
                (vtReportPlanner.FieldByName('APPUNTAMENTO_DATA').Value = 0) then
              begin
                vtReportPlanner.FieldByName('STATO').AsInteger := 0;
              end;
              vtReportPlanner.FieldByName('calcReportID').Clear;
            end;
            vtReportPlanner.Post;
          finally
            System.TMonitor.Exit(vtReportPlanner);
          end;
      end;
    finally
      FInsertingEvent := False;
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

function TdmVCLPhoenixPlannerController.LocateGoogleMeeting(const aGUID: string): TJanuaRecEvent;
begin
  if not FGCalEventsDict.TryGetValue(StringToGUID(aGUID), Result) then
  begin
    var
    sGUID := StringReplace(aGUID, '{', '', []);
    sGUID := StringReplace(sGUID, '}', '', []);

    if tabGoogleEvents.Locate('JGUID', sGUID, []) or tabGoogleEvents.Locate('JGUID', aGUID, []) then
    begin
      Result.LoadFromDataset(tabGoogleEvents);
      FGCalEventsDict.Add(StringToGUID(aGUID), Result);
    end;
  end;

  PlannerEvent := Result;
end;

procedure TdmVCLPhoenixPlannerController.MenuButtonActionsExecute(Action: TBasicAction; var Handled: Boolean);
begin
  inherited;
  UndoMeeting
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

  qryPlannerEvents2.Close;
  qryPlannerEvents2.ParamByName('DATA_DAL').AsDateTime := aDateFrom;
  qryPlannerEvents2.ParamByName('DATA_AL').AsDateTime := aDateTo;
  qryPlannerEvents2.Open;

end;

procedure TdmVCLPhoenixPlannerController.OpenCalendarT(aDate: TDate; aTechID: Integer);
begin
  { SELECT E.* FROM CALENDARIO_EVENTI E
    where
    E.DALLE_ORE >= :DATA_DAL AND E.ALLE_ORE < :DATA_DAL + 1
    and E.TECNICO = :TECNICO }

  if (qryPersonalPlannerEvents.Params[0].AsDate <> aDate) or
    (qryPersonalPlannerEvents.Params[1].AsInteger <> aTechID) then
  begin
    qryPersonalPlannerEvents.Close;
    qryPersonalPlannerEvents.Params[0].AsDate := aDate;
    qryPersonalPlannerEvents.Params[1].AsInteger := aTechID;
    qryPersonalPlannerEvents.Open;
  end;

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
  // codice
end;

procedure TdmVCLPhoenixPlannerController.PhoenixUpdateGoogleEvents;
begin
  if (tabGoogleEventsID.AsString = vtGoogleEventsID.AsString) or
    tabGoogleEvents.Locate('ID', vtGoogleEventsID.AsString, []) then
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
    tabGoogleEventsREMINDERS.Value := vtGoogleEventsREMINDERS.Value;
    if not vtGoogleEventsJGUID.IsNull then
      tabGoogleEventsJGUID.Value := vtGoogleEventsJGUID.Value;
    tabGoogleEvents.Post;
  end;
end;

procedure TdmVCLPhoenixPlannerController.PlannerGoogleSync;
begin
  var
  lSearchString := qryPlannerEventsSUBJECT.AsString;
  var
  bTest := False;
  bTest := (FilterGoogle(lSearchString) > 0) or
    (FilterGoogleCalendar(qryPlannerEventslkpMailTecnico.AsString) > 0);

  if bTest then
  begin
    var
    dlgPhoenixVCLGoogleSync := TdlgPhoenixVCLGoogleSync.Create(nil);
    try
      dlgPhoenixVCLGoogleSync.edSearch.Text := lSearchString;
      dlgPhoenixVCLGoogleSync.ShowModal;
      if dlgPhoenixVCLGoogleSync.ModalResult = mrOK then
      begin
        qryPlannerEvents.Edit;
        qryPlannerEventsDALLE_ORE.AsDateTime := vtGoogleEventsSearchSTARTTIME2.AsDateTime;
        qryPlannerEventsCOLORE.AsInteger := vtGoogleEventsSearchCalcColor3.AsInteger;
        qryPlannerEventsALLE_ORE.AsDateTime := vtGoogleEventsSearchENDTIME3.AsDateTime;
        qryPlannerEventsSUBJECT.AsString := vtGoogleEventsSearchSUMMARY3.AsString;
        qryPlannerEventsNOTE.AsString := qryReportPlannerNOTE_PER_IL_TECNICO.AsString;
        qryPlannerEventsGOOGLEID.AsString := vtGoogleEventsSearchID3.AsString;
        qryPlannerEvents.Post;
        qryReportPlanner.Edit;
        qryReportPlannerGCAL.AsString := 'G';
        qryReportPlanner.Post;
      end;
    finally
      dlgPhoenixVCLGoogleSync.Free;
      dlgPhoenixVCLGoogleSync := nil;
    end;
  end;

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
      Inc(PlannerPosition);
    End;
    qryPlannerCalendars.Next;
  end;
  qryPlannerCalendars.Last;
  DBDaySourceCalendar.NumberOfResources := PlannerPosition;
  dsCalendarEvents.Enabled := True;
  DBDaySourceCalendar.Active := True;

  // Calendar 2 ---------------------------------------------------------------

  qryPlannerCalendars2.Open;

  // DBDaySource1
  DBDaySourceCalendar2.Active := False;
  DBDaySourceCalendar2.Day := Now;

  qryPlannerCalendars2.Open;
  qryPlannerCalendars2.First;
  PlannerPosition := 0;

  While not qryPlannerCalendars2.Eof do
  begin
    CalendarsList2.Add(qryPlannerCalendars2TECNICO_SIGLA.AsString);

    With DBDaySourceCalendar2.ResourceMap.Add Do
    Begin
      ResourceIndex := qryPlannerCalendars2CHIAVE.AsInteger;
      PositionIndex := PlannerPosition;
      DisplayName := qryPlannerCalendars2TECNICO_SIGLA.AsString;
      Inc(PlannerPosition);
    End;
    qryPlannerCalendars2.Next;
  end;
  qryPlannerCalendars2.Last;
  DBDaySourceCalendar2.NumberOfResources := PlannerPosition;
  dsCalendarEvents2.Enabled := True;
  DBDaySourceCalendar2.Active := True;

end;

procedure TdmVCLPhoenixPlannerController.qryElencoEventiWhatsAppCalcFields(DataSet: TDataSet);
begin
  inherited;
  var
  lMessage := StringReplace(cMessage, '$$date$$', DateToStr(qryElencoEventiWhatsAppDALLE_ORE.AsDateTime),
    [rfIgnoreCase, rfReplaceAll]);
  lMessage := StringReplace(lMessage, '$$address$$', qryElencoEventiWhatsAppLOCATION.AsString,
    [rfIgnoreCase, rfReplaceAll]);
  qryElencoEventiWhatsAppcalcMessage.AsString := lMessage;
end;

procedure TdmVCLPhoenixPlannerController.qryPersonalPlannerEventsAfterInsert(DataSet: TDataSet);
begin
  if qryPersonalPlannerEventsCHIAVE.IsNull then
  begin
    qryGenID.Close;
    qryGenID.Open;
    qryPersonalPlannerEventsCHIAVE.AsInteger := qryGenIDID.AsInteger;
    qryGenID.Close;
  end;

  if qryPersonalPlannerEventsSTATINO.AsInteger = 0 then
    qryPersonalPlannerEventsSTATINO.AsInteger := vtReportPlannerCHIAVE.AsInteger;

  var
  vTest := lkpTecniciCHIAVE.AsInteger;

  if (qryTecniciCalendarRESPONSABILE.AsInteger = TechID) or qryTecniciCalendar.Locate('RESPONSABILE',
    TechID, []) then
  begin
    qryPersonalPlannerEventsTECNICO_SIGLA.AsString := qryTecniciCalendarSIGLA.AsString;
    qryPersonalPlannerEventsCALENDARIO.AsInteger := qryTecniciCalendarCALENDARIO.AsInteger;
    qryPersonalPlannerEventsCOLORE.AsInteger := qryTecniciCalendarDEFAULTCOLOR.AsInteger;
    qryPersonalPlannerEventsGBACKCOLOR.AsInteger := qryTecniciCalendarDEFAULTCOLOR.AsInteger;
  end;

end;

procedure TdmVCLPhoenixPlannerController.qryPersonalPlannerEventsAfterPost(DataSet: TDataSet);
begin
  if not(FInsertingEvent or FInserting) then
  begin
    var
    aRecEvent := LocateGoogleMeeting(qryPersonalPlannerEventsJGUID.AsString);
    var
    vTest := False;
    vTest := aRecEvent.StartTime <> qryPersonalPlannerEventsDALLE_ORE.AsDateTime;
    vTest := vTest or (aRecEvent.EndTime <> qryPersonalPlannerEventsALLE_ORE.AsDateTime);
    vTest := vTest or (aRecEvent.Description <> qryPersonalPlannerEventsNOTE.AsString);

    if vTest then
    begin
      aRecEvent.OldStartTime := aRecEvent.StartTime;
      aRecEvent.StartTime := qryPersonalPlannerEventsDALLE_ORE.AsDateTime;
      aRecEvent.OldEndTime := aRecEvent.EndTime;
      aRecEvent.EndTime := qryPersonalPlannerEventsALLE_ORE.AsDateTime;
      aRecEvent.Description := qryPersonalPlannerEventsNOTE.AsString;
      var
      aJson := aRecEvent.GetAsJson;
      if FGoogleSyncActive then
      begin
        aJson := UpdateGoogleEventDLL(aJson);
        if aJson <> '' then
        begin
          aRecEvent.SetAsJson(aJson);
          FGCalEventsDict.AddOrSetValue(aRecEvent.GetGUID, aRecEvent);
        end;
      end;
    end;
  end;
  FInserting := False;
end;

procedure TdmVCLPhoenixPlannerController.qryPersonalPlannerEventsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  var
  aRecEvent := LocateGoogleMeeting(qryPersonalPlannerEventsJGUID.AsString);
  aRecEvent.RefID := qryPersonalPlannerEventsSTATINO.AsInteger;
  var
  sTest := aRecEvent.GetAsJson;
  if aRecEvent.JGUID = '' then
    aRecEvent.JGUID := qryPersonalPlannerEventsJGUID.AsString;

  if FGoogleSyncActive then
    DeleteGoogleEventDLL(sTest);

  if (qryPersonalPlannerEventsSTATINO.AsInteger > 0) then
  begin
    try
      vtReportPlanner.Filtered := False;

      if vtReportPlanner.Locate('CHIAVE', qryPersonalPlannerEventsSTATINO.AsInteger, []) then
      begin
        vtReportPlanner.Edit;
        if (vtReportPlannerSTATO.AsInteger in [1, 6]) then
        begin
          vtReportPlannerSTATO.AsInteger := vtReportPlannerSTATO.AsInteger - 1;
          vtReportPlanner.FieldByName('calcReportID').Clear;
        end;
        vtReportPlannerAPPUNTAMENTO_DATA.Clear;
        vtReportPlannerAPPUNTAMENTO_ORA.Clear;
        vtReportPlanner.Post;
      end;
    finally
      vtReportPlanner.Filtered := True;
    end;

  end;

  // Rimuovi l'elemento in base alla chiave  FGCalEventsDict.Remove(StringToGUID(aGUID), Result);
  if FGCalEventsDict.ContainsKey(StringToGUID(aRecEvent.JGUID)) then
    FGCalEventsDict.Remove(StringToGUID(aRecEvent.JGUID));
end;

procedure TdmVCLPhoenixPlannerController.qryPersonalPlannerEventsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  FInserting := True;
end;

procedure TdmVCLPhoenixPlannerController.qryPersonalPlannerEventsBeforePost(DataSet: TDataSet);
var
  aRecEvent: TJanuaRecEvent;
begin
  inherited;
  try
    if qryPersonalPlannerEvents.State = dsInsert then
    begin
      if qryPersonalPlannerEventsJGUID.IsNull or (qryPersonalPlannerEventsJGUID.AsString = '') then
        qryPersonalPlannerEventsJGUID.AsString := TGUID.NewGuid.ToString();

      qryPersonalPlannerEventsNOTE.AsString := vtReportPlannerNOTE_PER_IL_TECNICO.AsString;
      qryPersonalPlannerEventsSUBJECT.AsString := vtReportPlannerDESCRIZIONE_SCHEDA.AsString;

      qryPersonalPlannerEventsTECNICO.AsInteger := TechID;
      qryPersonalPlannerEventsSUBJECT.AsString := vtReportPlanner.FieldByName('DESCRIZIONE_SCHEDA').AsString;

      qryPersonalPlannerEventsICONA.AsInteger := 0;
    end
  except
    on e: exception do
    begin
      var
      lSubject := qryPersonalPlannerEventsSUBJECT.AsString;
      qryPersonalPlannerEvents.Cancel;
      raise exception.Create('Errore Aggiornamento Calendario Google di: ' + lSubject + sLineBreak +
        e.Message);
    end;
  end;
end;

procedure TdmVCLPhoenixPlannerController.qryReportPlannerAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if qryReportPlannerWA_ID.AsString > '' then
    UpdateReportMsgStatus;
end;

procedure TdmVCLPhoenixPlannerController.qryReportPlannerBeforePost(DataSet: TDataSet);
  procedure LoadImageFromImageList(Index: Integer);
  var
    Bitmap: TBitmap;
  begin
    if (Index >= 0) and (Index < SVGIconImageListIt.Count) then
    begin
      Bitmap := TBitmap.Create;
      try
        // SVGIconImageListIt
        JvImageList1.GetBitmap(Index, Bitmap);
        qryReportPlannerSTATO_IMMAGINE.Assign(Bitmap);
        // Copia l'immagine dal Bitmap al TImage
      finally
        Bitmap.Free;
      end;
    end
    else
      ShowMessage('Indice fuori intervallo!');
  end;

const
  green = 0;
  red = 1;
  orange = 2;
  blue = 3;
  white = 4;
begin
  // passaggio da stato da 0 ad 1 se è presente un appuntamento
  if (qryReportPlannerSTATO.AsInteger = 0) and not qryReportPlannerAPPUNTAMENTO_DATA.IsNull then
  begin
    qryReportPlannerSTATO.AsInteger := 1;
  end
  // passaggio da stato da 1 ad 0 se non è presente un appuntamento
  else if (qryReportPlannerSTATO.AsInteger = 1) and qryReportPlannerAPPUNTAMENTO_DATA.IsNull then
  begin
    qryReportPlannerSTATO.AsInteger := 0;
  end
  else if (qryReportPlannerSTATO.AsInteger = 4) and not qryReportPlannerAPPUNTAMENTO_DATA.IsNull then
  begin
    qryReportPlannerSTATO.AsInteger := 5;
  end
  else if (qryReportPlannerSTATO.AsInteger = 5) and qryReportPlannerAPPUNTAMENTO_DATA.IsNull then
  begin
    qryReportPlannerSTATO.AsInteger := 4;
  end
  else if (qryReportPlannerSTATO.AsInteger = 6) and not qryReportPlannerAPPUNTAMENTO_DATA.IsNull then
  begin
    qryReportPlannerSTATO.AsInteger := 7;
  end
  else if (qryReportPlannerSTATO.AsInteger = 7) and qryReportPlannerAPPUNTAMENTO_DATA.IsNull then
  begin
    qryReportPlannerSTATO.AsInteger := 6;
  end;

  with DataSet do
    try
      var
      Image := white;

      var
      sStato := 'Generato';

      var
      aStato := qryReportPlannerSTATO.AsInteger;

      case aStato of
        - 1:
          begin
            Image := red;
            sStato := 'Ritardo';
          end;
        0:
          begin
            Image := white;
            sStato := 'Generato';
          end;
        1:
          begin
            Image := blue;
            sStato := 'Programmato';
          end;
        4:
          begin
            Image := orange;
            sStato := 'In Lavorazione'
          end;
        5:
          begin
            Image := orange;
            sStato := 'Lavor. Progr.';
          end;
        6:
          begin
            Image := green;
            sStato := 'Pronti da Rest.';
          end;
        7:
          begin
            Image := blue;
            sStato := 'Rest. Program.';
          end;
      end;

      FieldByName('calcStato').AsString := sStato;

      {
        if not(qryReportPlannerAPPUNTAMENTO_DATA.IsNull or (qryReportPlannerAPPUNTAMENTO_DATA.AsDateTime = 0.0))
        and (qryReportPlannerAPPUNTAMENTO_DATA.AsDateTime < Date) then
        begin
        Image := red;
        sStato := 'Ritardo';
        end;
      }

      LoadImageFromImageList(Image);

      if qryReportPlannerAPPUNTAMENTO_DATA.IsNull then
      begin
        qryReportPlannercalcAppuntamentoDataOra.Clear;
      end
      else
      begin
        if vtReportPlannerAPPUNTAMENTO_ORA.IsNull then
          qryReportPlannercalcAppuntamentoDataOra.AsDateTime := qryReportPlannerAPPUNTAMENTO_DATA.AsDateTime
        else
          qryReportPlannercalcAppuntamentoDataOra.AsDateTime :=
            SumDateTime(qryReportPlannerAPPUNTAMENTO_DATA.AsDateTime,
            qryReportPlannerAPPUNTAMENTO_ORA.AsDateTime);
      end;
      var
      vTesto := qryReportPlannerINDIRIZZO.AsString + ', ' + qryReportPlannerCAP.AsString +
        qryReportPlannerCOMUNE.AsString;
      vTesto := StringReplace(vTesto, '''', '’', [rfReplaceAll]);
      qryReportPlannercalcIndirizzo.AsString := vTesto;
    except
      on e: exception do
      begin
        Raise exception.Create('qryReportPlanner.Post: ' + e.Message);
      end;
    end;

end;

procedure TdmVCLPhoenixPlannerController.qryReportPlannerCalcFields(DataSet: TDataSet);
begin
  if qryReportPlannerAPPUNTAMENTO_DATA.IsNull or (qryReportPlannerAPPUNTAMENTO_DATA.AsDateTime = 0) then
  begin
    qryReportPlannercalcAppuntamentoDataOra.Clear;
  end
  else
  begin
    if qryReportPlannerAPPUNTAMENTO_ORA.IsNull then
      qryReportPlannercalcAppuntamentoDataOra.AsDateTime := qryReportPlannerAPPUNTAMENTO_DATA.AsDateTime
    else
      qryReportPlannercalcAppuntamentoDataOra.AsDateTime :=
        SumDateTime(qryReportPlannerAPPUNTAMENTO_DATA.AsDateTime,
        qryReportPlannerAPPUNTAMENTO_ORA.AsDateTime);
  end;

  qryReportPlannercalcIndirizzo.AsString := qryReportPlannerINDIRIZZO.AsString + ', ' +
    qryReportPlannerCAP.AsString + ', ' + qryReportPlannerCOMUNE.AsString;

  var
  sStato := 'Generato';

  var
  aStato := qryReportPlannerSTATO.AsInteger;

  case aStato of
    - 1:
      begin
        sStato := 'Ritardo';
      end;
    0:
      begin
        sStato := 'Generato';
      end;
    1:
      begin
        sStato := 'Programmato';
      end;
    4:
      begin
        sStato := 'In Lavorazione'
      end;
    5:
      begin
        sStato := 'Lavor. Progr.';
      end;
    6:
      begin
        sStato := 'Pronti da Rest.';
      end;
    7:
      begin
        sStato := 'Rest. Program.';
      end;
  end;

  qryReportPlannercalcStato.AsString := sStato;

  { var
    vIcon := 1; // qryReportPlannerlkpMessageStatus.AsInteger + 1;

    if qryReportPlannerWA_ID.AsString <> '' then
    qryReportPlannercalStato.AsString := 'X'; }

end;

procedure TdmVCLPhoenixPlannerController.qryTechPlannedAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if FAutoFilterTech then
    FilterTech
end;

procedure TdmVCLPhoenixPlannerController.RefreshCalendarTech;
begin
  qryPlannerEvents.Close;
  qryPlannerEvents.Open;
end;

procedure TdmVCLPhoenixPlannerController.ReportGoogleSync;
  procedure FillGoogle;
  begin
    qryPlannerEvents.Edit;
    qryPlannerEventsDALLE_ORE.AsDateTime := vtGoogleEventsSearchSTARTTIME2.AsDateTime;
    qryPlannerEventsCOLORE.AsInteger := vtGoogleEventsSearchCalcColor3.AsInteger;
    qryPlannerEventsALLE_ORE.AsDateTime := vtGoogleEventsSearchENDTIME3.AsDateTime;
    qryPlannerEventsSUBJECT.AsString := vtGoogleEventsSearchSUMMARY3.AsString;
    qryPlannerEventsNOTE.AsString := qryReportPlannerNOTE_PER_IL_TECNICO.AsString;
    qryPlannerEventsGOOGLEID.AsString := vtGoogleEventsSearchID3.AsString;
    if qryPlannerEventsSTATINO.IsNull or (qryPlannerEventsSTATINO.AsInteger = 0) then
      qryPlannerEventsSTATINO.AsInteger := qryReportPlannerCHIAVE.AsInteger;
    qryPlannerEvents.Post;
    qryReportPlanner.Edit;
    qryReportPlannerGCAL.AsString := 'G';
    qryReportPlanner.Post;
  end;

begin
  var
  lSearchString := qryReportPlannerDESCRIZIONE_SCHEDA.AsString;
  var
  bTest := FilterGoogle(lSearchString) > 0;

  if not bTest AND (UpperCase(qryReportPlannerNOME.AsString) <> 'SEDE') AND
    (UpperCase(qryReportPlannerNOME.AsString) <> 'CONDOMINIO') AND
    (UpperCase(qryReportPlannerNOME.AsString) <> 'MAGAZZINO') then
  begin
    lSearchString := qryReportPlannerNOME.AsString;
    bTest := FilterGoogle(lSearchString) > 0;
  end;

  if not bTest then
  begin
    bTest := FilterGoogleCalendar(qryReportPlannerEMAIL_TECNICO.AsString) > 0;
    if (UpperCase(qryReportPlannerNOME.AsString) <> 'SEDE') AND
      (UpperCase(qryReportPlannerNOME.AsString) <> 'CONDOMINIO') AND
      (UpperCase(qryReportPlannerNOME.AsString) <> 'MAGAZZINO') then
      lSearchString := qryReportPlannerDESCRIZIONE_SCHEDA.AsString + ' ' + lSearchString;
  end;

  if bTest then
  begin
    var
    dlgPhoenixVCLGoogleSync := TdlgPhoenixVCLGoogleSync.Create(nil);
    try
      dlgPhoenixVCLGoogleSync.edSearch.Text := lSearchString;
      dlgPhoenixVCLGoogleSync.ShowModal;
      if dlgPhoenixVCLGoogleSync.ModalResult = mrOK then
      begin
        qryReportPlanner.Edit;
        qryReportPlannerAPPUNTAMENTO_DATA.AsDateTime := DateOf(vtGoogleEventsSearchSTARTTIME2.AsDateTime);
        qryReportPlannerAPPUNTAMENTO_ORA.AsDateTime := TimeOf(vtGoogleEventsSearchSTARTTIME2.AsDateTime);
        qryReportPlanner.Post;

        if not qryPlannerEvents.Active then
        begin
          qryPlannerEvents.Open;
          qryPlannerEvents.Last;
          qryPlannerEvents.First;
        end;

        qryPlannerEvents.Filtered := False;

        if qryPlannerEvents.Locate('STATINO', qryReportPlannerCHIAVE.AsInteger, []) then
          FillGoogle
        else if qryPlannerEvents.Locate('GOOGLEID', vtGoogleEventsSearchID3.AsString, []) then
          FillGoogle;

      end;
    finally
      dlgPhoenixVCLGoogleSync.Free;
      dlgPhoenixVCLGoogleSync := nil;
    end;
  end;
end;

procedure TdmVCLPhoenixPlannerController.SelectCalendars;
begin
  inherited;
  { TODO : Adeguare la lista Calendars a FCalendarsFilter }
end;

procedure TdmVCLPhoenixPlannerController.SelectCalendars2;
begin
  { TODO : Adeguare la lista Calendars2 a FCalendarsFilter2 }
end;

function TdmVCLPhoenixPlannerController.SendWhatsAppMessage: Boolean;
var
  // lSender: IJanuaSMSTwilio;
  lDlg: TdlgPhoenixVCLWhatsAppSMSMessage;
  lMeeting: TJanuaRecEvent;
  lTimeDlg: TdlgVCLInputDateTime;
begin
  // ---------------------------------------------------------------------------------------------------------
  // By Default it uses Twilio Sender (note whene more senders will be supported this should be a case choice)
  {
    var
    lMessage := StringReplace(cMessage, '$$date$$', lData, [rfIgnoreCase, rfReplaceAll]);
    lMessage := StringReplace(lMessage, '$$address$$', qryReportPlannercalcIndirizzo.AsString,
    [rfIgnoreCase, rfReplaceAll]);
  }

  qryCellulariStatino.Close;
  qryCellulariStatino.Params[0].AsInteger := qryReportPlannerCHIAVE.AsInteger;
  qryCellulariStatino.Open;
  var
  vStatino := qryReportPlannerCHIAVE.AsInteger;
  qryReportPlanner.Filtered := False;
  qryReportPlanner.Locate('CHIAVE', vStatino, []);
{$IFDEF DEBUG}
  var
  lTest := qryCellulariStatino.RecordCount;
{$ENDIF}
  if qryReportPlannerAPPUNTAMENTO_DATA.IsNull then
  begin
    lTimeDlg := TdlgVCLInputDateTime.Create(nil);
    try
      lTimeDlg.InputText := 'Data/Ora Appuntamento';
      lTimeDlg.FormCaption := qryReportPlannerDESCRIZIONE_SCHEDA.AsString;
      lTimeDlg.ShowModal;
      qryReportPlanner.Edit;
      qryReportPlannerAPPUNTAMENTO_DATA.AsDateTime := DateOf(lTimeDlg.Date);
      qryReportPlannerAPPUNTAMENTO_ORA.AsDateTime := TimeOf(lTimeDlg.Date);
      qryReportPlanner.Post;
    finally
      lTimeDlg.Free;
    end;
  end;

  lDlg := TdlgPhoenixVCLWhatsAppSMSMessage.Create(nil);
  try
    lDlg.WATemplate := cMessage;
    lMeeting.Summary := qryReportPlannerDESCRIZIONE_SCHEDA.AsString;
    lMeeting.Description := qryReportPlannerNOTE_PER_IL_TECNICO.AsString;
    lMeeting.StartTime := qryReportPlannerAPPUNTAMENTO_DATA.AsDateTime +
      qryReportPlannerAPPUNTAMENTO_ORA.AsDateTime;
    lMeeting.EndTime := qryReportPlannerAPPUNTAMENTO_DATA.AsDateTime +
      qryReportPlannerAPPUNTAMENTO_ORA.AsDateTime;
    lMeeting.Location := StringReplace(qryReportPlannercalcIndirizzo.AsString, '''', '’', [rfReplaceAll]);
    lDlg.Meeting := lMeeting;
    lDlg.ShowModal;
    if lDlg.ModalResult = mrOK then
    begin
      if lMeeting.StartTime <> qryReportPlannerAPPUNTAMENTO_DATA.AsDateTime then
      begin
        qryReportPlanner.Edit;
        qryReportPlannerAPPUNTAMENTO_DATA.AsDateTime := DateOf(lMeeting.StartTime);
        qryReportPlannerAPPUNTAMENTO_ORA.AsDateTime := TimeOf(lMeeting.StartTime);
        qryReportPlanner.Post;
      end;

      // lMessage := lDlg.Memo1.Lines.Text;
      var
      lPhone := '';
      if WATest then
        lPhone := JanuaInputText('Inserire cellulare test', 'Numero di Cellulare', WATestPhone)
      else
        lPhone := StringReplace(Trim(lDlg.edWAPhone.Text), ' ', '', [rfIgnoreCase, rfReplaceAll]);
      var
      lWaNumber := lPhone;
      Result := (Length(lPhone) > 7) and (Length(lPhone) <= 13);

      var
      lData := DateToStr(qryReportPlannerAPPUNTAMENTO_DATA.AsDateTime);

      var
      aList := TStringList.Create;
      var
      aVariables := '';
      try
        aList.Add(lData);
        aList.Add(lMeeting.Location);
        aVariables := aList.Text;
      finally
        aList.Free;
      end;

      if not Result then
        JShowError('Non è presente un numero WhatsApp Valido')
      else
      begin
        lPhone := StringReplace(lPhone, ' ', '', [rfIgnoreCase, rfReplaceAll]);
        if Pos('+39', lPhone) = 0 then
          lPhone := '+39' + lPhone;

        Result := SendMSSWhatsAppMessage('', lPhone, WATest, aVariables);
      end;

      { wa_id type of column whatsapp_messages.wa_id,
        report_id type of column whatsapp_messages.report_id }
      if Result then
        try
          spInsertWhatsAppMsg.ParamByName('wanumber').Value := lWaNumber;
          spInsertWhatsAppMsg.ParamByName('wamessage').Value := FJanuaAdvTwilio.MessageBody;
          spInsertWhatsAppMsg.ParamByName('in_out').Value := 0;
          spInsertWhatsAppMsg.ParamByName('wa_id').Value := FJanuaAdvTwilio.MessageSid;
          if vStatino <> 0 then
            spInsertWhatsAppMsg.ParamByName('report_id').Value := vStatino;
          spInsertWhatsAppMsg.ExecProc;
          qryReportPlanner.Edit;
          qryReportPlannerWA_ID.AsString := FJanuaAdvTwilio.MessageSid;
          qryReportPlanner.Post;
          Sleep(500);
          TwilioSync;
          UpdateReportMsgStatus;
        except
          on e: exception do
            raise exception.Create('Messaggio a ' + lDlg.edWAPhone.Text + ' non inviato causa Errore: ' +
              sLineBreak + e.Message);
        end
      else
      begin
        JShowError('Attenzione Errore nell''invio del messaggio: ' + JanuaAdvTwilio.LastError);
      end;
    end;

  finally
    lDlg.Free;
  end;
  qryReportPlanner.Filtered := True;
  qryReportPlanner.Locate('CHIAVE', vStatino, []);
end;

function TdmVCLPhoenixPlannerController.SendWhatsAppMessage(const aMeeting: TJanuaRecEvent): Boolean;
var
  // lSender: IJanuaSMSTwilio;
  lDlg: TdlgPhoenixVCLWhatsAppSMSMessage;
begin
  // ---------------------------------------------------------------------------------------------------------
  // By Default it uses Twilio Sender (note whene more senders will be supported this should be a case choice)
  var
  lMessage := StringReplace(cMessage, '$$date$$', DateToStr(aMeeting.StartTime),
    [rfIgnoreCase, rfReplaceAll]);
  lMessage := StringReplace(lMessage, '$$address$$', aMeeting.Location, [rfIgnoreCase, rfReplaceAll]);

  var
  aList := TStringList.Create;
  var
  aVariables := '';
  try
    aList.Add(DateToStr(aMeeting.StartTime));
    aList.Add(aMeeting.Location);
    aVariables := aList.Text;
  finally
    aList.Free;
  end;

  var
  sGUID := StringReplace(aMeeting.JGUID, '{', '', []);
  sGUID := StringReplace(sGUID, '}', '', []);

  var
  vStatino := 0;

  if qryPersonalPlannerEvents.Locate('JGUID', aMeeting.JGUID, []) or qryPersonalPlannerEvents.Locate('JGUID',
    sGUID, []) then
  begin
    qryCellulariStatino.Close;
    qryCellulariStatino.Params[0].AsInteger := qryPersonalPlannerEventsSTATINO.AsInteger;
    qryCellulariStatino.Open;
    vStatino := qryPersonalPlannerEventsSTATINO.AsInteger;
{$IFDEF DEBUG}
    var
    lTest := qryCellulariStatino.RecordCount;
{$ENDIF}
  end;

  lDlg := TdlgPhoenixVCLWhatsAppSMSMessage.Create(nil);
  try
    lDlg.WATemplate := cMessage;
    lDlg.Meeting := aMeeting;
    lDlg.ShowModal;
    if lDlg.ModalResult = mrOK then
    begin
      // lMessage := lDlg.Memo1.Lines.Text;

      var
      lPhone := '';
      if WATest then
        lPhone := JanuaInputText('Inserire cellulare test', 'Numero di Cellulare', WATestPhone)
      else
        lPhone := StringReplace(Trim(lDlg.edWAPhone.Text), ' ', '', [rfIgnoreCase, rfReplaceAll]);
      var
      lWaNumber := lPhone;
      Result := (Length(lPhone) > 7) and (Length(lPhone) <= 13);

      if not Result then
        JShowError('Non è presente un numero WhatsApp Valido')
      else
      begin
        lPhone := StringReplace(lPhone, ' ', '', [rfIgnoreCase, rfReplaceAll]);
        if Pos('+39', lPhone) = 0 then
          lPhone := '+39' + lPhone;

        Result := SendMSSWhatsAppMessage('', lPhone, WATest, aVariables);
      end;

      { wa_id type of column whatsapp_messages.wa_id,
        report_id type of column whatsapp_messages.report_id }
      if Result then
        try
          if FGoogleSyncActive then
            WhatsAppSentDLL(sGUID);

          qryPersonalPlannerEvents.Edit;
          qryPersonalPlannerEventsCOLORE.AsInteger := 7911679;
          qryPersonalPlannerEvents.Post;
          spInsertWhatsAppMsg.ParamByName('wanumber').Value := lWaNumber;
          spInsertWhatsAppMsg.ParamByName('wamessage').Value := FJanuaAdvTwilio.MessageBody;
          spInsertWhatsAppMsg.ParamByName('in_out').Value := 0;
          spInsertWhatsAppMsg.ParamByName('wa_id').Value := FJanuaAdvTwilio.MessageSid;
          if vStatino <> 0 then
            spInsertWhatsAppMsg.ParamByName('report_id').Value := vStatino;
          spInsertWhatsAppMsg.ExecProc;
        except
          on e: exception do
            raise exception.Create('Messaggio a ' + lDlg.edWAPhone.Text + ' non inviato causa Errore: ' +
              sLineBreak + e.Message);
        end;
    end;

  finally
    lDlg.Free;
  end;

  // SendMSSWhatsAppMessage(lMessage, '+393474065336'); // +393474065336  //3409111352

end;

procedure TdmVCLPhoenixPlannerController.SetAfterCalendarAction(const Value: TNotifyEvent);
begin
  FAfterCalendarAction := Value;
end;

procedure TdmVCLPhoenixPlannerController.SetAfterUpdateCal(const Value: TNotifyEvent);
begin
  FAfterUpdateCal := Value;
end;

procedure TdmVCLPhoenixPlannerController.SetCalendarsFilter2(const Value: Boolean);
begin
  if FCalendarsFilter2 <> Value then
  begin
    FCalendarsFilter2 := Value;
    SelectCalendars2;
  end;
end;

procedure TdmVCLPhoenixPlannerController.SetCalendarsList2(const Value: TStrings);
begin
  FCalendarsList2 := Value;
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

procedure TdmVCLPhoenixPlannerController.SetGoogleSyncActive(const Value: Boolean);
begin
  FGoogleSyncActive := Value;
end;

procedure TdmVCLPhoenixPlannerController.SetGoogleTest;
begin
  if FGoogleSyncActive then
    TestDLL;
end;

procedure TdmVCLPhoenixPlannerController.SetItemCaptionField2(const Value: TField);
begin
  FItemCaptionField2 := Value;
end;

procedure TdmVCLPhoenixPlannerController.SetItemColorField2(const Value: TField);
begin
  FItemColorField2 := Value;
end;

procedure TdmVCLPhoenixPlannerController.SetItemImageField2(const Value: TField);
begin
  FItemImageField2 := Value;
end;

procedure TdmVCLPhoenixPlannerController.SetPlannerDlg(const Value: TDBPlanner);
begin
  FPlannerDlg := Value;
end;

procedure TdmVCLPhoenixPlannerController.SetPlannerEvent(const Value: TJanuaRecEvent);
begin
  FPlannerEvent := Value;
end;

procedure TdmVCLPhoenixPlannerController.SetReportDate(const Value: TDateTime);
begin
  FReportDate := Value;
end;

procedure TdmVCLPhoenixPlannerController.SetReportDateFilter(const Value: Boolean);
begin
  FReportDateFilter := Value;
end;

procedure TdmVCLPhoenixPlannerController.SetSelectedCalendarTec(const Value: Integer);
begin
  if Value <> FSelectedCalendarTec then
  begin
    FSelectedCalendarTec := Value;
    OpenCalendarT(FSelectedDate, FSelectedCalendarTec);
  end;
end;

procedure TdmVCLPhoenixPlannerController.SetSelectedDate(const Value: TDate);
begin
  if Value <> FSelectedDate then
  begin
    FSelectedDate := Value;
    OpenCalendarT(FSelectedDate, FSelectedCalendarTec);
  end;
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
  if FTechID <> Value then
  begin
    FTechID := Value;
    { OpenCalendarT(FSelectedDate, FTechID); }
    Notify('TechID');
  end;
end;

procedure TdmVCLPhoenixPlannerController.Setup;
begin
  qryReportPlanner.Close;
  qryCustomers.Close;
  qryTech.Close;
  spSetStatinoStato.ExecProc;
  qryReportPlanner.Open;
  vtReportPlanner.Open;
  qryCustomers.Open;
  qryTech.Open;
  qryCAP.Open;
end;

procedure TdmVCLPhoenixPlannerController.SetvtReportPlannerDS(const Value: TDataSource);
begin
  FvtReportPlannerDS := Value;
end;

procedure TdmVCLPhoenixPlannerController.SetWATest(const Value: Boolean);
begin
  FWATest := Value;
end;

procedure TdmVCLPhoenixPlannerController.SetWATestPhone(const Value: string);
begin
  FWATestPhone := Value;
end;

procedure TdmVCLPhoenixPlannerController.TwilioSync;
begin
  var
  lDmWhatsApp := TdmPgTWilioSync.Create(nil);
  try
    lDmWhatsApp.SyncDBTwilio;
    lDmWhatsApp.SyncMessages;
    lDmWhatsApp.SyncStatus;
    lDmWhatsApp.StatiniStatus;
  finally
    lDmWhatsApp.Free;
    lDmWhatsApp := nil;
  end;
end;

procedure TdmVCLPhoenixPlannerController.FilterTech;
begin
  ReportDateFilter := False;
  CustomerFilter := False;
  TechFilter := True;
  FStateFilter := 5; // Non Assegnati
  TechID := qryTechPlannedRESPONSABILE.AsInteger;
end;

function TdmVCLPhoenixPlannerController.GetCalendarsList2Text: string;
begin
  if Assigned(CalendarsList2) then
    Result := CalendarsList2.Text;
end;

function TdmVCLPhoenixPlannerController.GoogleSync: string;
begin
  if FGoogleSyncActive then
    Result := UpdateGoogleDLL
  else Result := '';
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

function TdmVCLPhoenixPlannerController.UpdateGoogleMeeting(const aMeeting: TJanuaRecEvent): Boolean;
begin
  {
    if (qryPersonalPlannerEventsJGUID.AsString = aMeeting.JGUID) or qryPersonalPlannerEvents.Locate('JGUID',
    aMeeting.JGUID, []) then
    begin
    qryPersonalPlannerEvents.Edit;
    qryPersonalPlannerEventsDALLE_ORE.Value := aMeeting.StartTime;
    qryPersonalPlannerEventsALLE_ORE.Value := aMeeting.EndTime;
    qryPersonalPlannerEvents.Post;
    end;
  }
end;

procedure TdmVCLPhoenixPlannerController.vtGoogleEventsSearchBeforePost(DataSet: TDataSet);
begin
  inherited;
  // vtGoogleEventsSearchFilterSearch.AsString := StripString(qryPlannerEventsSUBJECT.AsString);

end;

procedure TdmVCLPhoenixPlannerController.vtReportPlannerBeforePost(DataSet: TDataSet);
  procedure LoadImageFromImageList(Index: Integer);
  var
    Bitmap: TBitmap;
  begin
    if (Index >= 0) and (Index < SVGIconImageListIt.Count) then
    begin
      Bitmap := TBitmap.Create;
      try
        // SVGIconImageListIt
        JvImageList1.GetBitmap(Index, Bitmap);
        vtReportPlanner.FieldByName('calcImage').Assign(Bitmap);
        // Copia l'immagine dal Bitmap al TImage
      finally
        Bitmap.Free;
      end;
    end
    else
      ShowMessage('Indice fuori intervallo!');
  end;

const
  green = 0;
  red = 1;
  orange = 2;
  blue = 3;
  white = 4;
begin
  try
    {
      if vtReportPlanner.FieldByName('calcReportID').IsNull or
      (vtReportPlanner.FieldByName('calcReportID').AsInteger <> vtReportPlanner.FieldByName('CHIAVE')
      .AsInteger) then
    }
    with DataSet do
      try
        var
        Image := white;

        var
        sStato := 'Generato';

        var
        aStato := FieldByName('STATO').AsInteger;

        case aStato of
          - 1:
            begin
              Image := red;
              sStato := 'Ritardo';
            end;
          0:
            begin
              Image := white;
              sStato := 'Generato';
            end;
          1:
            begin
              Image := blue;
              sStato := 'Programmato';
            end;
          4:
            begin
              Image := orange;
              sStato := 'In Lavorazione'
            end;
          5:
            begin
              Image := orange;
              sStato := 'Lavor. Progr.';
            end;
          6:
            begin
              Image := green;
              sStato := 'Pronti da Rest.';
            end;
          7:
            begin
              Image := blue;
              sStato := 'Rest. Program.';
            end;
        end;

        FieldByName('calcStato').AsString := sStato;

        if not(FieldByName('APPUNTAMENTO_DATA').IsNull or (FieldByName('APPUNTAMENTO_DATA').AsDateTime = 0.0))
          and (FieldByName('APPUNTAMENTO_DATA').AsDateTime < Date) then
        begin
          Image := red;
          sStato := 'Ritardo';
        end;

        LoadImageFromImageList(Image);
      finally
        FieldByName('calcReportID').AsInteger := FieldByName('CHIAVE').AsInteger;
      end;

    if vtReportPlannerAPPUNTAMENTO_DATA.IsNull then
    begin
      vtReportPlannercalcAppuntamentoDataOra.Clear;
    end
    else
    begin
      if vtReportPlannerAPPUNTAMENTO_ORA.IsNull then
        vtReportPlannercalcAppuntamentoDataOra.AsDateTime := vtReportPlannerAPPUNTAMENTO_DATA.AsDateTime
      else
        vtReportPlannercalcAppuntamentoDataOra.AsDateTime :=
          SumDateTime(vtReportPlannerAPPUNTAMENTO_DATA.AsDateTime,
          vtReportPlannerAPPUNTAMENTO_ORA.AsDateTime);
    end;

    vtReportPlannercalcIndirizzo.AsString := vtReportPlannerINDIRIZZO.AsString + ', ' +
      vtReportPlannerCAP.AsString + vtReportPlannerCOMUNE.AsString;
  except
    on e: exception do
    begin
      Raise exception.Create('vtReportPlanner.Post: ' + e.Message);
    end;
  end;
end;

end.
