unit Janua.Phoenix.VCL.dmGCalendarController;

interface

uses
  // RTL
  System.SysUtils, System.Classes, System.Actions, System.Bindings.Helper, System.ImageList, System.UITypes,
  System.DateUtils, System.TypInfo, System.StrUtils, Windows, Winapi.ShellAPI, Spring, System.Math,
  // DB
  Data.DB, PostgreSQLUniProvider, UniProvider, InterBaseUniProvider, DBAccess, Uni, MemDS, VirtualTable,
  // VCL
  VCL.ActnList, VCL.ImgList, VCL.Controls, SVGIconImageListBase, SVGIconImageList, VCL.Dialogs,
  PictureContainer, VCL.Graphics, VCL.Forms,
  // Planner
  AdvPDFIO, AdvPlannerPDFIO, Planner, DBPlanner,
  // Cloud
  CloudCustomGoogle, CloudGoogleWin, CloudCustomGCalendar, CloudGCalendar, CloudBase, CloudBaseWin,
  CloudCustomLive, CloudLiveWin, CloudCustomLiveCalendar, CloudLiveCalendar, CloudCustomOutlook,
  CloudOutlookWin, CloudCustomOutlookCalendar, CloudOutlookCalendar, CloudWebDav, CloudvCal,
  PlanExGCalendar, PlanExLiveCalendar,
  // Inherited
  Janua.VCL.Planner.dmCustomController,
  // Januaproject
  Janua.Core.DataModule, JOrm.Cloud.GoogleCalendarEvents.Intf, JOrm.Cloud.GoogleCalendars.Intf,
  Janua.Bindings.Intf, Janua.Core.Types, JOrm.Planner.Timetable.Intf, Janua.Controls.Forms.Intf,
  Janua.VCL.Interposers, Janua.Core.Classes.Intf, Janua.Orm.Intf, Janua.Controls.Intf, Janua.Core.Classes,
  Janua.Components.Planner, Janua.Core.Commons, Janua.Cloud.Conf, Janua.Unidac.Connection, Janua.Cloud.Types,
  CloudSMS;

type
  TdmPhoenixVCLGCalendarController = class(TdmVCLPlannerCustomController, IJanuaDataModule, IJanuaBindable)
    tabGoogleCalendars: TUniTable;
    tabGoogleCalendarsID: TStringField;
    tabGoogleCalendarsLOCATION: TStringField;
    tabGoogleCalendarsSUMMARY: TStringField;
    tabGoogleCalendarsTIMEZONE: TStringField;
    tabGoogleCalendarsCOLOR: TSmallintField;
    tabGoogleCalendarsBACK_COLOR: TIntegerField;
    tabGoogleCalendarsFORE_COLOR: TIntegerField;
    tabGoogleCalendarsISPRIMARY: TStringField;
    tabGoogleCalendarsALIAS: TStringField;
    tabGoogleCalendarsJGUID: TGuidField;
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
    tabGoogleEventsSENDNOTIFICATIONS: TStringField;
    tabGoogleEventsVISIBILITY: TIntegerField;
    tabGoogleEventsRECURRENCE: TStringField;
    tabGoogleEventsRECURRINGID: TStringField;
    tabGoogleEventsSEQUENCE: TIntegerField;
    tabGoogleEventsCOLOR: TSmallintField;
    tabGoogleEventsCALENDARID: TStringField;
    tabGoogleEventsATTENDEES: TWideMemoField;
    tabGoogleEventsREMINDERS: TWideMemoField;
    tabGoogleEventsUSEDEFAULTREMINDERS: TStringField;
    tabGoogleEventsISALLDAY: TStringField;
    tabGoogleEventsJGUID: TGuidField;
    tabGoogleCalendarsDESCRIPTION: TWideMemoField;
    tabGoogleEventsBACKGROUNDCOLOR: TIntegerField;
    tabGoogleEventsFOREGROUNDCOLOR: TIntegerField;
    qryGoogleEventsQueue: TUniQuery;
    qryGoogleEventsQueueID: TStringField;
    qryGoogleEventsQueueETAG: TStringField;
    qryGoogleEventsQueueSUMMARY: TStringField;
    qryGoogleEventsQueueDESCRIPTION: TBlobField;
    qryGoogleEventsQueueSTARTTIME: TDateTimeField;
    qryGoogleEventsQueueENDTIME: TDateTimeField;
    qryGoogleEventsQueueCREATED: TDateTimeField;
    qryGoogleEventsQueueUPDATED: TDateTimeField;
    qryGoogleEventsQueueLOCATION: TStringField;
    qryGoogleEventsQueueSTATUS: TSmallintField;
    qryGoogleEventsQueueVISIBILITY: TIntegerField;
    qryGoogleEventsQueueRECURRENCE: TStringField;
    qryGoogleEventsQueueRECURRINGID: TStringField;
    qryGoogleEventsQueueSEQUENCE: TIntegerField;
    qryGoogleEventsQueueCOLOR: TSmallintField;
    qryGoogleEventsQueueCALENDARID: TStringField;
    qryGoogleEventsQueueUSEDEFAULTREMINDERS: TStringField;
    qryGoogleEventsQueueSENDNOTIFICATIONS: TStringField;
    qryGoogleEventsQueueISALLDAY: TStringField;
    qryGoogleEventsQueueATTENDEES: TBlobField;
    qryGoogleEventsQueueREMINDERS: TBlobField;
    qryGoogleEventsQueueJGUID: TBytesField;
    qryGoogleEventsQueueBACKGROUNDCOLOR: TIntegerField;
    qryGoogleEventsQueueFOREGROUNDCOLOR: TIntegerField;
    qryGoogleEventsQueueSYNC: TStringField;
    qryPlannerEvents: TUniQuery;
    qryPlannerEventsCHIAVE: TIntegerField;
    qryPlannerEventsSTATINO: TIntegerField;
    qryPlannerEventsTECNICO: TIntegerField;
    qryPlannerEventsDALLE_ORE: TDateTimeField;
    qryPlannerEventsALLE_ORE: TDateTimeField;
    qryPlannerEventsSUBJECT: TStringField;
    qryPlannerEventsNOTE: TWideMemoField;
    qryPlannerEventsTECNICO_SIGLA: TStringField;
    qryPlannerEventsCOLORE: TIntegerField;
    qryPlannerEventsICONA: TSmallintField;
    qryPlannerEventsGOOGLE_JSON: TBlobField;
    qryPlannerEventsGFORECOLOR: TIntegerField;
    qryPlannerEventsGBACKCOLOR: TIntegerField;
    qryPlannerEventsCALENDARIO: TIntegerField;
    qryPlannerEventsGOOGLEID: TStringField;
    qryPlannerEventsJGUID: TGuidField;
    qryPlannerEventslkpMailTecnico: TStringField;
    qryUpdatePlannerEvents: TUniQuery;
    qryUpdatePlannerEventsCHIAVE: TIntegerField;
    qryUpdatePlannerEventsSTATINO: TIntegerField;
    qryUpdatePlannerEventsTECNICO: TIntegerField;
    qryUpdatePlannerEventsDALLE_ORE: TDateTimeField;
    qryUpdatePlannerEventsALLE_ORE: TDateTimeField;
    qryUpdatePlannerEventsNOTE: TWideMemoField;
    qryUpdatePlannerEventsSUBJECT: TStringField;
    qryUpdatePlannerEventsTECNICO_SIGLA: TStringField;
    qryUpdatePlannerEventsCOLORE: TIntegerField;
    qryUpdatePlannerEventsJGUID: TGuidField;
    qryUpdatePlannerEventsICONA: TSmallintField;
    qryUpdatePlannerEventsGOOGLE_JSON: TBlobField;
    qryUpdatePlannerEventsGFORECOLOR: TIntegerField;
    qryUpdatePlannerEventsGBACKCOLOR: TIntegerField;
    qryUpdatePlannerEventsCALENDARIO: TIntegerField;
    qryUpdatePlannerEventsGOOGLEID: TStringField;
    qryGoogleEvent: TUniQuery;
    qryGoogleEventID: TStringField;
    qryGoogleEventETAG: TStringField;
    qryGoogleEventSUMMARY: TStringField;
    qryGoogleEventSTARTTIME: TDateTimeField;
    qryGoogleEventENDTIME: TDateTimeField;
    qryGoogleEventCREATED: TDateTimeField;
    qryGoogleEventUPDATED: TDateTimeField;
    qryGoogleEventLOCATION: TStringField;
    qryGoogleEventSTATUS: TSmallintField;
    qryGoogleEventVISIBILITY: TIntegerField;
    qryGoogleEventRECURRENCE: TStringField;
    qryGoogleEventRECURRINGID: TStringField;
    qryGoogleEventSEQUENCE: TIntegerField;
    qryGoogleEventCOLOR: TSmallintField;
    qryGoogleEventCALENDARID: TStringField;
    qryGoogleEventUSEDEFAULTREMINDERS: TStringField;
    qryGoogleEventSENDNOTIFICATIONS: TStringField;
    qryGoogleEventISALLDAY: TStringField;
    qryGoogleEventBACKGROUNDCOLOR: TIntegerField;
    qryGoogleEventFOREGROUNDCOLOR: TIntegerField;
    qryGoogleEventSYNC: TStringField;
    qryRicercaStatino: TUniQuery;
    qryGoogleEventDESCRIPTION: TWideMemoField;
    qryGoogleEventATTENDEES: TWideMemoField;
    qryGoogleEventREMINDERS: TWideMemoField;
    qryGoogleEventJGUID: TGuidField;
    qryRicercaStatinoCHIAVE: TIntegerField;
    qryRicercaStatinoCLIENTE: TIntegerField;
    qryRicercaStatinoFILIALE: TIntegerField;
    qryRicercaStatinoTITOLO: TStringField;
    qryRicercaStatinoRAGIONE_SOCIALE: TStringField;
    qryRicercaStatinoINDIRIZZO: TStringField;
    qryRicercaStatinoCOMUNE: TStringField;
    qryRicercaStatinoPROVINCIA: TStringField;
    qryRicercaStatinoCAP: TStringField;
    qryRicercaStatinoTELEFONO: TStringField;
    qryRicercaStatinoCELLULARE: TStringField;
    qryRicercaStatinoNOTE: TBlobField;
    qryRicercaStatinoORARIO_APERTURA_DAL1: TTimeField;
    qryRicercaStatinoORARIO_APERTURA_DAL2: TTimeField;
    qryRicercaStatinoORARIO_APERTURA_AL1: TTimeField;
    qryRicercaStatinoORARIO_APERTURA_AL2: TTimeField;
    qryRicercaStatinoCHIUSURA: TStringField;
    qryRicercaStatinoFATTURA: TIntegerField;
    qryRicercaStatinoDATA_INTERVENTO: TDateField;
    qryRicercaStatinoGENERAZIONE_AUTOMATICA: TIntegerField;
    qryRicercaStatinoTECNICO_INTERVENTO: TIntegerField;
    qryRicercaStatinoSCANSIONE: TWideMemoField;
    qryRicercaStatinoREGISTRO: TWideMemoField;
    qryRicercaStatinoNOTE_PER_IL_TECNICO: TWideMemoField;
    qryRicercaStatinoSOSPESO: TStringField;
    qryRicercaStatinoDA_ESPORTARE_SUL_WEB: TStringField;
    qryRicercaStatinoRESPONSABILE: TIntegerField;
    qryRicercaStatinoESPORTATO_SU_MOBILE: TStringField;
    qryRicercaStatinoNOTE_DAL_TECNICO: TBlobField;
    qryRicercaStatinoJSON_DA_MOBILE: TBlobField;
    qryRicercaStatinoPDF_STATINO: TBlobField;
    qryRicercaStatinoREGISTRO_IS_PDF: TStringField;
    qryRicercaStatinoVERBALE_PROVA_DINAMICA: TBlobField;
    qryRicercaStatinoVERBALE_MANICHETTE: TBlobField;
    qryRicercaStatinoPREVENTIVO: TIntegerField;
    qryRicercaStatinoIGNORA_EVIDENZIAZIONE: TStringField;
    qryRicercaStatinoANNULLATO_DA_TABLET: TStringField;
    qryRicercaStatinoMOBILEWARN_NUOVA_ATTREZZATURA: TStringField;
    qryRicercaStatinoMOBILEWARN_ORDINARIA_RITIRATA: TStringField;
    qryRicercaStatinoMOBILEWARN_N_ORDIN_CONTROLLATA: TStringField;
    qryRicercaStatinoMOBILEWARN_SMALTIMENTO: TStringField;
    qryRicercaStatinoSTATO_LAVORAZIONE: TStringField;
    qryRicercaStatinoDATA_CHIUSURA_DA_SERVER: TDateField;
    qryRicercaStatinoCHIUSURA_EXT: TStringField;
    qryRicercaStatinoCHIUSURA_STATINO: TWideMemoField;
    qryRicercaStatinoMOBILEWARN_NON_ESEGUITI: TStringField;
    qryRicercaStatinoPRESA_IN_CARICO: TStringField;
    qryRicercaStatinoFORNITURA: TStringField;
    qryRicercaStatinoAPPUNTAMENTO_DATA: TDateField;
    qryRicercaStatinoAPPUNTAMENTO_ORA: TTimeField;
    qryRicercaStatinoSTATO: TSmallintField;
    qryRicercaStatinoJGUID: TBytesField;
    qryRicercaStatinoGCAL: TStringField;
    tabGoogleEventsSYNC: TStringField;
    spGoogleSync: TUniStoredProc;
    tabGoogleEventsTemp: TUniTable;
    tabGoogleEventsTempID: TStringField;
    tabGoogleEventsTempETAG: TStringField;
    tabGoogleEventsTempSUMMARY: TStringField;
    tabGoogleEventsTempDESCRIPTION: TStringField;
    tabGoogleEventsTempSTARTTIME: TDateTimeField;
    tabGoogleEventsTempENDTIME: TDateTimeField;
    tabGoogleEventsTempCREATED: TDateTimeField;
    tabGoogleEventsTempUPDATED: TDateTimeField;
    tabGoogleEventsTempLOCATION: TStringField;
    tabGoogleEventsTempSTATUS: TSmallintField;
    tabGoogleEventsTempVISIBILITY: TIntegerField;
    tabGoogleEventsTempRECURRENCE: TStringField;
    tabGoogleEventsTempRECURRINGID: TStringField;
    tabGoogleEventsTempSEQUENCE: TIntegerField;
    tabGoogleEventsTempCOLOR: TSmallintField;
    tabGoogleEventsTempCALENDARID: TStringField;
    tabGoogleEventsTempUSEDEFAULTREMINDERS: TStringField;
    tabGoogleEventsTempSENDNOTIFICATIONS: TStringField;
    tabGoogleEventsTempISALLDAY: TStringField;
    tabGoogleEventsTempATTENDEES: TWideMemoField;
    tabGoogleEventsTempREMINDERS: TWideMemoField;
    tabGoogleEventsTempJGUID: TGuidField;
    tabGoogleEventsTempBACKGROUNDCOLOR: TIntegerField;
    tabGoogleEventsTempFOREGROUNDCOLOR: TIntegerField;
    tabGoogleEventsTempSYNC: TStringField;
    tabGoogleColors: TUniTable;
    tabGoogleColorsID: TSmallintField;
    tabGoogleColorsBACK_COLOR: TIntegerField;
    tabGoogleColorsFORE_COLOR: TIntegerField;
    tabEventColors: TUniTable;
    tabEventColorsID: TSmallintField;
    tabEventColorsBACK_COLOR: TIntegerField;
    tabEventColorsFORE_COLOR: TIntegerField;
    tabEventColorsDESCRIPTION: TStringField;
    qryGoogleEventsTemp: TUniQuery;
    qryGoogleEventsTempSUMMARY: TStringField;
    qryGoogleEventsTempALIAS: TStringField;
    qryGoogleEventsTempBACK_COLOR: TIntegerField;
    qryGoogleEventsTempCOLOR: TSmallintField;
    qryGoogleEventsTempBACKGROUND_COLOR: TIntegerField;
    qryGoogleEventsTempID: TStringField;
    qryGoogleEventsTempETAG: TStringField;
    qryGoogleEventsTempDESCRIPTION: TStringField;
    qryGoogleEventsTempSTARTTIME: TDateTimeField;
    qryGoogleEventsTempENDTIME: TDateTimeField;
    qryGoogleEventsTempCREATED: TDateTimeField;
    qryGoogleEventsTempUPDATED: TDateTimeField;
    qryGoogleEventsTempLOCATION: TStringField;
    qryGoogleEventsTempSTATUS: TSmallintField;
    qryGoogleEventsTempVISIBILITY: TIntegerField;
    qryGoogleEventsTempRECURRENCE: TStringField;
    qryGoogleEventsTempRECURRINGID: TStringField;
    qryGoogleEventsTempSEQUENCE: TIntegerField;
    qryGoogleEventsTempCALENDARID: TStringField;
    qryGoogleEventsTempUSEDEFAULTREMINDERS: TStringField;
    qryGoogleEventsTempSENDNOTIFICATIONS: TStringField;
    qryGoogleEventsTempISALLDAY: TStringField;
    qryGoogleEventsTempATTENDEES: TBlobField;
    qryGoogleEventsTempREMINDERS: TBlobField;
    qryGoogleEventsTempJGUID: TBytesField;
    qryGoogleEventsTempBACKGROUNDCOLOR: TIntegerField;
    qryGoogleEventsTempFOREGROUNDCOLOR: TIntegerField;
    qryGoogleEventsTempSYNC: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure tabGoogleEventsBeforePost(DataSet: TDataSet);
    procedure tabGoogleEventsTempBeforePost(DataSet: TDataSet);
  private
    bg: TColor;
    fg: TColor;
    Item: TGCalendarItem;
    FLog: TStringList;
    procedure PhoenixUpdateGoogleCalendars;
    procedure SetLog(const Value: TStringList);
  protected
    JMonitor: TObject;
    procedure FillGoogleCalendarItems; override;
    procedure InsertGoogleEventsQueue;
    procedure WriteGoogleEventsValues;
    procedure ReadGoogleEventsValues;
    procedure UpdateGoogleEventsQueue;

  public
    function AddNewGoogleItem(const aID: string): string;
    function DeleteGoogleItem(const aID: string): string;
    function UpdateGoogleItem(const aID: string): string;
    function ChangeCalendar(const aJson: string; aCalendar: string): string;
    procedure SetUpCalendarColors;

    procedure FillGoogleCalendars; override;
    procedure PlannerGoogleSync;
    procedure AddNewGoogleItems;
    procedure UpdateGoogleCalendarItem(Const I: Integer); override;
    function ConfirmMessage(const aID: string): string;
    function WhatsAppSentMessage(const aID: string): string;
    property Log: TStringList read FLog write SetLog;
  end;

var
  dmPhoenixVCLGCalendarController: TdmPhoenixVCLGCalendarController;

implementation

uses Janua.Core.AsyncTask;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}
{ TdmPhoenixVCLGCalendarController }

function TdmPhoenixVCLGCalendarController.AddNewGoogleItem(const aID: string): string;
var
  aRecEvent: TJanuaRecEvent;
  procedure UpdateStatino;
  begin
    { Stopwatch := TStopwatch.StartNew; }
    var
    sGUID := StringReplace(aRecEvent.JGUID, '{', '', []);
    sGUID := StringReplace(sGUID, '}', '', []);

    qryGoogleEvent.Close;
    qryGoogleEvent.Params[0].AsString := sGUID;
    qryGoogleEvent.Open;

    if qryGoogleEvent.RecordCount = 0 then
    begin
      qryGoogleEvent.Append;
      qryGoogleEvent.Edit;
      aRecEvent.SaveToDataset(qryGoogleEvent);
      qryGoogleEventID.AsString := Item.ID;
      qryGoogleEventETAG.AsString := Item.ETag;
      qryGoogleEventCREATED.AsDateTime := Item.Created;
      qryGoogleEventUPDATED.AsDateTime := Item.Updated;
      qryGoogleEventSYNC.AsString := 'T';
      qryGoogleEvent.Post;
    end
    else
    begin
      qryGoogleEvent.Edit;
      aRecEvent.SaveToDataset(qryGoogleEvent);
      qryGoogleEventID.AsString := Item.ID;
      qryGoogleEventETAG.AsString := Item.ETag;
      qryGoogleEventCREATED.AsDateTime := Item.Created;
      qryGoogleEventUPDATED.AsDateTime := Item.Updated;
      qryGoogleEventSYNC.AsString := 'T';
      qryGoogleEvent.Post;
    end;

    if (qryUpdatePlannerEvents.RecordCount = 0) or (qryUpdatePlannerEventsJGUID.AsString <> aRecEvent.JGUID)
    then
    begin
      qryUpdatePlannerEvents.Close;
      qryUpdatePlannerEvents.Params[0].AsString := sGUID;
      qryUpdatePlannerEvents.Open;
    end;
    if qryUpdatePlannerEvents.RecordCount > 0 then
    begin
      var
      vStatino := qryUpdatePlannerEventsSTATINO.AsInteger;
      if vStatino > 0 then
      begin
        qryRicercaStatino.Close;
        qryRicercaStatino.Params[0].AsInteger := vStatino;
        qryRicercaStatino.Open;
        if qryRicercaStatino.RecordCount = 1 then
        begin
          qryRicercaStatino.Edit;
          qryRicercaStatinoAPPUNTAMENTO_DATA.AsDateTime := Int(aRecEvent.StartTime);
          qryRicercaStatinoAPPUNTAMENTO_ORA.AsDateTime := aRecEvent.StartTime - Int(aRecEvent.StartTime);
          if aRecEvent.Description <> '' then
            qryRicercaStatinoNOTE_PER_IL_TECNICO.AsString := aRecEvent.Description;
          qryRicercaStatinoGCAL.AsString := 'G';
          if qryRicercaStatino.FieldByName('STATO').AsInteger = 0 then
            qryRicercaStatino.FieldByName('STATO').AsInteger := 1
          else if qryRicercaStatino.FieldByName('STATO').AsInteger = 5 then
            qryRicercaStatino.FieldByName('STATO').AsInteger := 6;
          qryRicercaStatino.Post;
        end;
      end;
    end;
  end;

begin
  aRecEvent.SetAsJson(aID);
  Item := AdvGCalendar1.Items.Add;
  Item.Summary := aRecEvent.Summary;
  Item.Description := aRecEvent.Description;
  Item.Location := aRecEvent.Location;
  Item.Color := TGItemColor.icBoldRed; // TGItemColor(aRecEvent.Color);
  Item.StartTime := aRecEvent.StartTime;
  Item.EndTime := aRecEvent.StartTime;
  Item.Visibility := CloudCustomGCalendar.TVisibility.viDefault;
  Item.IsAllDay := False;
  Item.CalendarID := aRecEvent.CalendarID;
  AdvGCalendar1.Add(Item);
  aRecEvent.ID := Item.ID;
  aRecEvent.ETag := Item.ETag;
  aRecEvent.Created := Item.Created;
  aRecEvent.Updated := Item.Updated;
  aRecEvent.Sync := True;
  Result := aRecEvent.GetAsJson;
  UpdateStatino;
  (*
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
    UpdateStatino;
    { Elapsed := Stopwatch.Elapsed;
    Seconds := Elapsed.TotalSeconds; }
    finally
    System.TMonitor.Exit(JMonitor);
    end;
    end,
    procedure(const aValue: Boolean)
    begin
    // This is the "success" callback. Runs in the UI thread and
    // gets the result of the "background" anonymous method.

    end,
    nil);
  *)

  {
    Item.Summary := qryGoogleEventSUMMARY.AsString;
    if qryGoogleEventDESCRIPTION.BlobSize > 0 then
    begin
    var
    aStream := TStringStream.Create;
    try
    qryGoogleEventDESCRIPTION.SaveToStream(aStream);
    Item.Description := aStream.DataString;
    finally
    aStream.Free;
    end;
    end;

    Item.Location := qryGoogleEventLOCATION.AsString;
    Item.Color := TGItemColor.icBoldRed; // TGItemColor(qryGoogleEventCOLOR.AsInteger);

    if qryGoogleEventISALLDAY.AsString = 'T' then
    begin
    var
    StartDate := qryGoogleEventSTARTTIME.AsDateTime;
    Item.StartTime := EncodeDateTime(YearOf(StartDate), MonthOf(StartDate), DayOf(StartDate), 0, 0, 0, 0);
    var
    EndDate := qryGoogleEventENDTIME.AsDateTime;
    Item.EndTime := EncodeDateTime(YearOf(EndDate), MonthOf(EndDate), DayOf(EndDate), 0, 0, 0, 0);
    Item.IsAllDay := true;
    end
    else
    begin
    Item.StartTime := qryGoogleEventSTARTTIME.AsDateTime;
    Item.EndTime := qryGoogleEventENDTIME.AsDateTime;
    Item.IsAllDay := False;
    end;


    Item.Visibility := CloudCustomGCalendar.TVisibility.viDefault;
    Item.CalendarID := qryGoogleEventCALENDARID.AsString;

    AdvGCalendar1.Add(Item);
    Result := Item.ID;


    qryGoogleEvent.Edit;
    qryGoogleEventID.AsString := Item.ID;
    qryGoogleEventETAG.AsString := Item.ETag;
    qryGoogleEventCREATED.AsDateTime := Item.Created;
    qryGoogleEventUPDATED.AsDateTime := Item.Updated;
    qryGoogleEventSYNC.AsString := 'T';
    qryGoogleEvent.Post;
  }

  { SELECT E.* FROM
    CALENDARIO_EVENTI E where uuid_to_char(JGUID) = :GUID }
end;

procedure TdmPhoenixVCLGCalendarController.AddNewGoogleItems;
begin
  qryGoogleEventsQueue.Open;
  while not qryGoogleEventsQueue.Eof do
  begin
    InsertGoogleEventsQueue;
    qryGoogleEventsQueue.Next;
  end;
end;

function TdmPhoenixVCLGCalendarController.ChangeCalendar(const aJson: string; aCalendar: string): string;
var
  lItem: TGCalendarItem;
  lCalendar: TGCalendar;
  lRecEvent: TJanuaRecEvent;
begin
  lRecEvent.SetAsJson(aJson);
  { ShowMessage('ARecEvent Set'); }

  var
  lCalendarID := lRecEvent.CalendarID;

  if AdvGCalendar1.Calendars.Count = 0 then
    AdvGCalendar1.GetCalendars();

  for var J := 0 to AdvGCalendar1.Calendars.Count - 1 do
  begin
    if AdvGCalendar1.Calendars[J].ID = lCalendarID then
      lCalendar := AdvGCalendar1.Calendars[J];
  end;

  { ShowMessage('Calendar: ' + aCalendarID); }

  Assert(Assigned(lCalendar), 'ACalendar Not Found');

  AdvGCalendar1.GetCalendar(lCalendar.ID, Min(lRecEvent.StartTime, lRecEvent.OldEndTime) - 1,
    Max(lRecEvent.EndTime, lRecEvent.OldEndTime) + 1);
  lItem := AdvGCalendar1.Items.Find(lRecEvent.ID);

  Assert(Assigned(lItem), 'Item Not Found');

  if Assigned(lItem) then
  begin
    lItem.CalendarID := aCalendar;
    AdvGCalendar1.Update(lItem);
    lRecEvent.ETag := lItem.ETag;
    lRecEvent.Updated := lItem.Updated;
  end;

  Result := lRecEvent.GetAsJson;

end;

// WhatsAppSentMessage
function TdmPhoenixVCLGCalendarController.WhatsAppSentMessage(const aID: string): string;
var
  aItem: TGCalendarItem;
  aCalendar: TGCalendar;
begin
  qryGoogleEvent.Close;
  qryGoogleEvent.Params[0].AsString := aID;
  qryGoogleEvent.Open;

  Result := '';

  if qryGoogleEvent.RecordCount > 0 then
  begin
    var
    aCalendarID := qryGoogleEventCALENDARID.AsString;

    if AdvGCalendar1.Calendars.Count = 0 then
      AdvGCalendar1.GetCalendars();

    for var J := 0 to AdvGCalendar1.Calendars.Count - 1 do
    begin
      if AdvGCalendar1.Calendars[J].ID = aCalendarID then
        aCalendar := AdvGCalendar1.Calendars[J];
    end;

    if Assigned(aCalendar) then
      AdvGCalendar1.GetCalendar(aCalendar.ID, qryGoogleEventSTARTTIME.AsDateTime - 1,
        qryGoogleEventENDTIME.AsDateTime + 1);

    aItem := AdvGCalendar1.Items.Find(qryGoogleEventID.AsString);
    if Assigned(aItem) then
    begin
      aItem.Color := TGItemColor.icOrange;
      AdvGCalendar1.Update(aItem);
    end;
  end;
end;


function TdmPhoenixVCLGCalendarController.ConfirmMessage(const aID: string): string;
var
  aItem: TGCalendarItem;
  aCalendar: TGCalendar;
begin
  qryGoogleEvent.Close;
  qryGoogleEvent.Params[0].AsString := aID;
  qryGoogleEvent.Open;

  Result := '';

  if qryGoogleEvent.RecordCount > 0 then
  begin
    var
    aCalendarID := qryGoogleEventCALENDARID.AsString;

    if AdvGCalendar1.Calendars.Count = 0 then
      AdvGCalendar1.GetCalendars();

    for var J := 0 to AdvGCalendar1.Calendars.Count - 1 do
    begin
      if AdvGCalendar1.Calendars[J].ID = aCalendarID then
        aCalendar := AdvGCalendar1.Calendars[J];
    end;

    if Assigned(aCalendar) then
      AdvGCalendar1.GetCalendar(aCalendar.ID, qryGoogleEventSTARTTIME.AsDateTime - 1,
        qryGoogleEventENDTIME.AsDateTime + 1);

    aItem := AdvGCalendar1.Items.Find(qryGoogleEventID.AsString);
    if Assigned(aItem) then
    begin
      aItem.Color := TGItemColor.icDefault;
      AdvGCalendar1.Update(aItem);
    end;
  end;
end;

procedure TdmPhoenixVCLGCalendarController.DataModuleCreate(Sender: TObject);
begin
  inherited;
  // Fields.FieldByName('CAPTION')
  ItemCaptionField := nil;
  // InternalDeleteItem - Associo la procedura Interna Per Cancellare una Scheda:
  DeleteItemFunc := InternalDeleteItem;
  // property GoogleCalendarInsertProc: TProc
  { GoogleCalendarInsertProc := PhoenixInsertGoogleCalendars; }

  dsCalendars.Enabled := False;
  dsGCalendar.Enabled := False;
  dsCalendarEvents.Enabled := False;
  dsGoogleEvents.Enabled := False;
  dslkpGCalendar.Enabled := False;

  JMonitor := TObject.Create;

  FLog := TStringList.Create;
end;

procedure TdmPhoenixVCLGCalendarController.DataModuleDestroy(Sender: TObject);
begin
  inherited;
  JMonitor.Free;
  JMonitor := nil;
  FLog.Free;
  FLog := nil;
end;

function TdmPhoenixVCLGCalendarController.DeleteGoogleItem(const aID: string): string;
var
  aItem: TGCalendarItem;
  aCalendar: TGCalendar;
  aRecEvent: TJanuaRecEvent;
  vStatino: Int64;

  procedure DeleteRecords;
  begin

    if vStatino > 0 then
    begin
      qryRicercaStatino.Close;
      qryRicercaStatino.Params[0].AsInteger := vStatino;
      qryRicercaStatino.Open;
      if qryRicercaStatino.RecordCount = 1 then
      begin
        qryRicercaStatino.Edit;
        if qryRicercaStatinoSTATO.AsInteger in [1, 6] then
          qryRicercaStatinoSTATO.AsInteger := qryRicercaStatinoSTATO.AsInteger - 1;
        qryRicercaStatinoAPPUNTAMENTO_DATA.Clear;
        qryRicercaStatinoAPPUNTAMENTO_ORA.Clear;
        qryRicercaStatinoGCAL.Clear;
        qryRicercaStatino.Post;
      end;
    end;

    { Stopwatch := TStopwatch.StartNew; }
    var
    sGUID := StringReplace(aRecEvent.JGUID, '{', '', []);
    sGUID := StringReplace(sGUID, '}', '', []);

    qryGoogleEvent.Close;
    qryGoogleEvent.Params[0].AsString := sGUID;
    qryGoogleEvent.Open;

    if qryGoogleEvent.RecordCount = 1 then
      qryGoogleEvent.Delete;
  end;

begin
  try
    aRecEvent.SetAsJson(aID);

    { ShowMessage('ARecEvent Set'); }
    vStatino := aRecEvent.RefID; { qryUpdatePlannerEventsSTATINO.AsInteger };

    if (aRecEvent.CalendarID <> '') and (aRecEvent.ID <> '') then
    begin

      var
      aCalendarID := aRecEvent.CalendarID;

      if AdvGCalendar1.Calendars.Count = 0 then
        AdvGCalendar1.GetCalendars();

      for var J := 0 to AdvGCalendar1.Calendars.Count - 1 do
      begin
        if AdvGCalendar1.Calendars[J].ID = aCalendarID then
          aCalendar := AdvGCalendar1.Calendars[J];
      end;

      FLog.Add('Search Calendar: ' + aCalendarID);
      FLog.Add('Found Calendar: ' + aCalendar.ID + ' ' + aCalendar.Summary + ' - ' + aCalendar.Description);

      { ShowMessage('Calendar: ' + aCalendarID); }

      Assert(Assigned(aCalendar), 'ACalendar Not Found');

      {
        ShowMessage('Arec.StartTime = ' + DateTimeToStr(aRecEvent.StartTime) + sLineBreak + //
        'Arec.OldStartTime = ' + DateTimeToStr(aRecEvent.OldStartTime) + sLineBreak + //
        'Arec.EndTime = ' + DateTimeToStr(aRecEvent.EndTime) + sLineBreak + //
        'Arec.OldEndTime = ' + DateTimeToStr(aRecEvent.OldEndTime));
      }

      FLog.Add('Arec.StartTime = ' + DateTimeToStr(aRecEvent.StartTime));
      FLog.Add('Arec.OldStartTime = ' + DateTimeToStr(aRecEvent.OldStartTime));
      FLog.Add('Arec.EndTime = ' + DateTimeToStr(aRecEvent.EndTime));
      FLog.Add('Arec.OldEndTime = ' + DateTimeToStr(aRecEvent.OldEndTime));

      var
      aStartTime := Int(aRecEvent.StartTime);
      if (aRecEvent.OldStartTime > 0) and (aRecEvent.OldStartTime < aStartTime) then
        aStartTime := Int(aRecEvent.OldStartTime);

      aStartTime := aStartTime - 1;

      var
      aEndTime := aRecEvent.EndTime;

      if (aRecEvent.OldEndTime > 0) and (aRecEvent.OldEndTime > aEndTime) then
        aEndTime := Int(aRecEvent.OldEndTime);

      aEndTime := aEndTime + 1;

      {
        ShowMessage('From: ' + DateTimeToStr(aStartTime));
        ShowMessage('To: ' + DateTimeToStr(aEndTime));
      }
      FLog.Add('From: ' + DateTimeToStr(aStartTime));
      FLog.Add('To: ' + DateTimeToStr(aEndTime));

      AdvGCalendar1.GetCalendar(aCalendar.ID, aStartTime, aEndTime + 1, 1000);
      {
        ShowMessage('Item : ' + aRecEvent.ID);
        ShowMessage('Items: ' + AdvGCalendar1.Items.Count.ToString);
      }
      FLog.Add('Item : ' + aRecEvent.ID);
      FLog.Add('Items: ' + AdvGCalendar1.Items.Count.ToString);

      for var I := 0 to AdvGCalendar1.Items.Count - 1 do
      begin
        FLog.Add('Item: ' + AdvGCalendar1.Items[I].ID);
        FLog.Add('--Summary: ' + AdvGCalendar1.Items[I].Summary);
        FLog.Add('--StartTime: ' + AdvGCalendar1.Items[I].StartTime.ToString);
      end;

      aItem := AdvGCalendar1.Items.Find(aRecEvent.ID);

      Assert(Assigned(aItem), 'Item Not Found Log: ' + sLineBreak + FLog.Text);

      if Assigned(aItem) then
        AdvGCalendar1.Delete(aItem);
    end;

    DeleteRecords;

    Result := aID;
  finally
    FLog.Clear;
  end;

  (*
    Async.Run<Boolean>(
    function: Boolean
    begin
    // This is the "background" anonymous method. Runs in the
    // background thread, and its result is passed
    // to the "success" callback.
    // In this case the result is a String.
    Result := True;
    if Assigned(JMonitor) then
    System.TMonitor.Enter(JMonitor);
    try

    finally
    if Assigned(JMonitor) then
    System.TMonitor.Exit(JMonitor);
    end;
    end,
    procedure(const aValue: Boolean)
    begin
    // This is the "success" callback. Runs in the UI thread and
    // gets the result of the "background" anonymous method.

    end,
    // nil to run default behaviour
    nil);
  *)
end;

procedure TdmPhoenixVCLGCalendarController.FillGoogleCalendarItems;
var
  I: Integer;
  rem: string;
begin
  Screen.Cursor := crHourGlass;

  if Assigned(Fgcal) then
  begin
    var
    vTestDate1 := DateTimeToStr(GCalStartDate);
    var
    vTestDate2 := DateTimeToStr(GCalEndDate);

    { ShowMessage(vTestDate1 + ' - ' + vTestDate2); }

    AdvGCalendar1.GetCalendar(Fgcal.ID, GCalStartDate, GCalEndDate, 1000);

    for I := 0 to AdvGCalendar1.Items.Count - 1 do
    begin
      tabGoogleEventsTemp.Append;
      tabGoogleEventsTempID.AsString := AdvGCalendar1.Items[I].ID;
      tabGoogleEventsTempETAG.AsString := AdvGCalendar1.Items[I].ETag;
      tabGoogleEventsTempCOLOR.Value := Ord(AdvGCalendar1.Items[I].Color { CurrentGCalendar.Color } );
      // Verificare come sono effettivamente calcolati bg ed fg?
      tabGoogleEventsTempBACKGROUNDCOLOR.AsInteger := bg;
      tabGoogleEventsTempFOREGROUNDCOLOR.AsInteger := fg;
      tabGoogleEventsTempCALENDARID.AsString := AdvGCalendar1.Items[I].CalendarID;
      tabGoogleEventsTempSTARTTIME.AsDateTime := AdvGCalendar1.Items[I].StartTime;
      tabGoogleEventsTempENDTIME.AsDateTime := AdvGCalendar1.Items[I].EndTime;
      tabGoogleEventsTempSUMMARY.AsString := AdvGCalendar1.Items[I].Summary;
      tabGoogleEventsTempDESCRIPTION.AsString := AdvGCalendar1.Items[I].Description;
      tabGoogleEventsTempCREATED.AsDateTime := AdvGCalendar1.Items[I].Created;
      tabGoogleEventsTempUPDATED.AsDateTime := AdvGCalendar1.Items[I].Updated;
      tabGoogleEventsTempISALLDAY.AsBoolean := AdvGCalendar1.Items[I].IsAllDay;
      tabGoogleEventsTempLOCATION.AsString := AdvGCalendar1.Items[I].Location;
      tabGoogleEventsTempSTATUS.AsInteger := Ord(AdvGCalendar1.Items[I].Status);
      tabGoogleEventsTempVISIBILITY.AsInteger := Ord(AdvGCalendar1.Items[I].Visibility);
      tabGoogleEventsTempRECURRENCE.AsString := AdvGCalendar1.Items[I].Recurrence;
      { TODO : Gestire gli Attendees in base all'Item Selezionato AdvGCalendar1.Items[i].Attendees; }
      tabGoogleEventsTempATTENDEES.AsString := '';
      { TODO : Gestire i Reminders in base all'Item Selezionato AdvGCalendar1.Items[i].Reminders; }
      tabGoogleEventsTempREMINDERS.AsString := '';
      tabGoogleEventsTemp.Post;
      (*
        if not tabGoogleEvents.Locate('ID', AdvGCalendar1.Items[I].ID, []) then
        begin
        tabGoogleEvents.Append;
        // edID.Text := gcal.ID;    edEtag.Text := gcal.
        tabGoogleEventsID.AsString := AdvGCalendar1.Items[I].ID;
        var
        lGUID := TGUID.Empty;
        CreateGUID(lGUID);
        tabGoogleEventsJGUID.AsGUID := lGUID;
        UpdateGoogleCalendarItem(I);
        tabGoogleEvents.Post;
        {$IFDEF DEBUG}
        var
        vTest := tabGoogleEventsCOLOR.AsInteger;
        {$ENDIF}
        end
        else
        begin
        var
        bTest := tabGoogleEventsETAG.AsString <> AdvGCalendar1.Items[I].ETag;
        if bTest then
        begin
        tabGoogleEvents.Edit;
        UpdateGoogleCalendarItem(I);
        tabGoogleEvents.Post;
        end;
        end; *)
    end;
  end;
  Screen.Cursor := crDefault;
end;

procedure TdmPhoenixVCLGCalendarController.FillGoogleCalendars;
var
  I, J, K: Integer;
  isPrimary: string;

  procedure CheckColors;
  begin
    for var I := 0 to AdvGCalendar1.CalendarColors.Count - 1 do
    begin
      if Ord(Fgcal.Color) = AdvGCalendar1.CalendarColors[I].ID then
      begin
        bg := AdvGCalendar1.CalendarColors[I].BackgroundColor;
        fg := AdvGCalendar1.CalendarColors[I].ForegroundColor;
      end;
    end;

    if Fgcal.BackgroundColor <> clNone then
      bg := Fgcal.BackgroundColor;
    if Fgcal.ForegroundColor <> clNone then
      fg := Fgcal.ForegroundColor;
  end;

  procedure EditCalendar;
  begin
    tabGoogleCalendarsID.Value := Fgcal.ID;
    if Fgcal.Description <> '' then
      tabGoogleCalendarsDESCRIPTION.AsString := Fgcal.Description;
    tabGoogleCalendarsLOCATION.AsString := Fgcal.Location;
    tabGoogleCalendarsSUMMARY.AsString := Fgcal.Summary;
    tabGoogleCalendarsISPRIMARY.AsString := IfThen(Fgcal.Primary, 'T', 'F');
    tabGoogleCalendarsTIMEZONE.AsString := Fgcal.TimeZone;
    tabGoogleCalendarsCOLOR.Value := Ord(Fgcal.Color);
    tabGoogleCalendarsFORE_COLOR.Value := fg;
    tabGoogleCalendarsBACK_COLOR.Value := bg;
    if tabGoogleCalendarsJGUID.Value = '' then
      tabGoogleCalendarsJGUID.Value := TGUID.NewGuid.ToString;
  end;

begin
  PlannerGoogleSync;
  if Assigned(AdvGCalendar1) then
  begin
    // Set custom Calendar as Google Calendar API
    CloudCalendar := ccGoogle;
    // Asks GCalendar to update Calendar List
    AdvGCalendar1.GetCalendars();
    // During Update DBDaySourceGCalendar must be Inactive
    DBDaySourceGCalendar.Active := False;
    // Day Source is 'today'
    DBDaySourceGCalendar.Day := Date;

    // Google CalendarList is a StringList not used 'for server updating'
    { FGoogleCalendarList.Clear; }
    I := 0;
    J := AdvGCalendar1.Calendars.Count - 1;
    K := tabGoogleCalendars.RecordCount;
    if J >= 0 then
    begin
      for I := 0 to J do
      begin
        Fgcal := AdvGCalendar1.Calendars[I];
        if Fgcal.Primary then
          isPrimary := ' (Primary)'
        else
          isPrimary := '';

        CheckColors;

        if not tabGoogleCalendars.Locate('ID', Fgcal.ID, []) then
        begin
          tabGoogleCalendars.Append;
          EditCalendar;
          tabGoogleCalendars.Post;
        end
        else if (tabGoogleCalendarsSUMMARY.AsString <> Fgcal.Summary) or
          (tabGoogleCalendarsFORE_COLOR.Value <> fg) or (tabGoogleCalendarsBACK_COLOR.Value <> bg) then
        begin
          tabGoogleCalendars.Edit;
          EditCalendar;
          tabGoogleCalendars.Post;
        end;

        FillGoogleCalendarItems;
      end;
    end;
  end;
  (* ************************ *)
  spGoogleSync.ExecProc;
end;

procedure TdmPhoenixVCLGCalendarController.InsertGoogleEventsQueue;
begin
  (*
    #### ETAG #####
    So if you make a event.get call and you get an event object back containing an etag back.
    The next time you make that call you again get an event object back containing an etag.
    If the etag is the same as the etag you had before then you know the data was not changed
    since the last time you checked it.
  *)

  Item := AdvGCalendar1.Items.Add;
  WriteGoogleEventsValues;
  AdvGCalendar1.Add(Item);

  qryGoogleEventsQueue.Edit;
  qryGoogleEventsQueueID.AsString := Item.ID;
  qryGoogleEventsQueueETAG.AsString := Item.ETag;
  qryGoogleEventsQueueCREATED.AsDateTime := Item.Created;
  qryGoogleEventsQueueUPDATED.AsDateTime := Item.Updated;
  qryGoogleEventsQueueSYNC.AsString := 'T';
  qryGoogleEventsQueue.Post;

  { SELECT E.* FROM
    CALENDARIO_EVENTI E where uuid_to_char(JGUID) = :GUID }

end;

procedure TdmPhoenixVCLGCalendarController.PhoenixUpdateGoogleCalendars;
begin
  if (tabGoogleEventsID.AsString = vtGoogleEventsID.AsString) or
    tabGoogleEvents.Locate('ID', vtGoogleEventsID.AsString, []) then
  begin
    if (tabGoogleEventsCALENDARID.Value <> vtGoogleEventsCALENDARID.Value) or
      (tabGoogleEventsSUMMARY.Value <> vtGoogleEventsSUMMARY.Value) or
      (tabGoogleEventsSTARTTIME.Value <> vtGoogleEventsSTARTTIME.Value) or
      (tabGoogleEventsENDTIME.Value <> vtGoogleEventsENDTIME.Value) then
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
      tabGoogleEventsUSEDEFAULTREMINDERS.Value := IfThen(vtGoogleEventsUSEDEFAULTREMINDERS.AsBoolean,
        'T', 'F');
      tabGoogleEventsSENDNOTIFICATIONS.Value := IfThen(vtGoogleEventsSENDNOTIFICATIONS.AsBoolean, 'T', 'F');
      tabGoogleEventsCALENDARID.Value := vtGoogleEventsCALENDARID.Value;
      tabGoogleEventsATTENDEES.Value := vtGoogleEventsAttendees.Value;
      tabGoogleEventsREMINDERS.Value := vtGoogleEventsREMINDERS.Value;
      if not vtGoogleEventsJGUID.IsNull then
        tabGoogleEventsJGUID.Value := vtGoogleEventsJGUID.Value;
      tabGoogleEvents.Post;
    end;
  end;
end;

procedure TdmPhoenixVCLGCalendarController.PlannerGoogleSync;
begin
  JanuaUniConnection1.Connected := True;

  tabGoogleCalendars.Open;
  tabGoogleCalendars.Last;
  tabGoogleCalendars.First;

  tabGoogleEvents.Open;
  tabGoogleEvents.Last;
  tabGoogleEvents.First;

  tabGoogleEventsTemp.Close;
  tabGoogleEventsTemp.Open;
  tabGoogleEventsTemp.Last;
  tabGoogleEventsTemp.First;

end;

procedure TdmPhoenixVCLGCalendarController.ReadGoogleEventsValues;
begin

end;

procedure TdmPhoenixVCLGCalendarController.SetLog(const Value: TStringList);
begin
  FLog := Value;
end;

procedure TdmPhoenixVCLGCalendarController.SetUpCalendarColors;
var
  TGC: TGColor;
  bg, fg: TColor;
begin
  if AdvGCalendar1.CalendarColors.Count = 0 then
    AdvGCalendar1.GetColors;

  if not tabEventColors.Active then
    tabEventColors.Open;

  for var I in AdvGCalendar1.ItemColors do
  begin
    TGC := TGColor(I);
    if not tabEventColors.Locate('ID', TGC.ID, []) then
    begin
      bg := TGC.BackgroundColor;
      fg := TGC.ForegroundColor;

      tabEventColors.Append;
      tabEventColorsID.AsInteger := TGC.ID;
      tabEventColorsBACK_COLOR.AsInteger := bg;
      tabEventColorsFORE_COLOR.AsInteger := fg;
      tabEventColorsDESCRIPTION.AsString := TGC.DisplayName;
      tabEventColors.Post;
    end;
  end;

end;

procedure TdmPhoenixVCLGCalendarController.tabGoogleEventsBeforePost(DataSet: TDataSet);
begin
  inherited;
  tabGoogleEventsSYNC.AsString := 'T';
end;

procedure TdmPhoenixVCLGCalendarController.tabGoogleEventsTempBeforePost(DataSet: TDataSet);
begin
  inherited;
  if tabGoogleEventsTempJGUID.IsNull then
    tabGoogleEventsTempJGUID.AsGuid := TGUID.NewGuid;
end;

procedure TdmPhoenixVCLGCalendarController.UpdateGoogleCalendarItem(const I: Integer);
begin
  tabGoogleEventsETAG.AsString := AdvGCalendar1.Items[I].ETag;
  tabGoogleEventsCOLOR.Value := Ord(AdvGCalendar1.Items[I].Color { CurrentGCalendar.Color } );
  tabGoogleEventsBACKGROUNDCOLOR.AsInteger := bg;
  tabGoogleEventsFOREGROUNDCOLOR.AsInteger := fg;
  tabGoogleEventsCALENDARID.AsString := AdvGCalendar1.Items[I].CalendarID;
  tabGoogleEventsSTARTTIME.AsDateTime := AdvGCalendar1.Items[I].StartTime;
  tabGoogleEventsENDTIME.AsDateTime := AdvGCalendar1.Items[I].EndTime;
  tabGoogleEventsSUMMARY.AsString := AdvGCalendar1.Items[I].Summary;
  tabGoogleEventsDESCRIPTION.AsString := AdvGCalendar1.Items[I].Description;
  tabGoogleEventsCREATED.AsDateTime := AdvGCalendar1.Items[I].Created;
  tabGoogleEventsUPDATED.AsDateTime := AdvGCalendar1.Items[I].Updated;
  tabGoogleEventsISALLDAY.AsBoolean := AdvGCalendar1.Items[I].IsAllDay;
  // IfThen(AdvGCalendar1.Items[i].IsAllDay , 'T', 'F');
  tabGoogleEventsLOCATION.AsString := AdvGCalendar1.Items[I].Location;
  tabGoogleEventsSTATUS.AsInteger := Ord(AdvGCalendar1.Items[I].Status);
  tabGoogleEventsVISIBILITY.AsInteger := Ord(AdvGCalendar1.Items[I].Visibility);
  tabGoogleEventsRECURRENCE.AsString := AdvGCalendar1.Items[I].Recurrence;
  { TODO : Gestire gli Attendees in base all'Item Selezionato AdvGCalendar1.Items[i].Attendees; }
  tabGoogleEventsATTENDEES.AsString := '';
  { TODO : Gestire i Reminders in base all'Item Selezionato AdvGCalendar1.Items[i].Reminders; }
  tabGoogleEventsREMINDERS.AsString := '';
end;

procedure TdmPhoenixVCLGCalendarController.UpdateGoogleEventsQueue;
begin

end;

function TdmPhoenixVCLGCalendarController.UpdateGoogleItem(const aID: string): string;
var
  aItem: TGCalendarItem;
  aCalendar: TGCalendar;
  aRecEvent: TJanuaRecEvent;
begin
  aRecEvent.SetAsJson(aID);
  { ShowMessage('ARecEvent Set'); }

  var
  aCalendarID := aRecEvent.CalendarID;

  if AdvGCalendar1.Calendars.Count = 0 then
    AdvGCalendar1.GetCalendars();

  for var J := 0 to AdvGCalendar1.Calendars.Count - 1 do
  begin
    if AdvGCalendar1.Calendars[J].ID = aCalendarID then
      aCalendar := AdvGCalendar1.Calendars[J];
  end;

  { ShowMessage('Calendar: ' + aCalendarID); }

  Assert(Assigned(aCalendar), 'ACalendar Not Found');

  AdvGCalendar1.GetCalendar(aCalendar.ID, Min(aRecEvent.StartTime, aRecEvent.OldEndTime) - 1,
    Max(aRecEvent.EndTime, aRecEvent.OldEndTime) + 1);
  aItem := AdvGCalendar1.Items.Find(aRecEvent.ID);

  Assert(Assigned(aItem), 'Item Not Found');

  if Assigned(aItem) then
  begin
    aItem.StartTime := aRecEvent.StartTime;
    aItem.EndTime := aRecEvent.EndTime;
    aItem.Description := aRecEvent.Description;
    AdvGCalendar1.Update(aItem);
    aRecEvent.ETag := aItem.ETag;
    aRecEvent.Updated := aItem.Updated;
  end;

  Result := aRecEvent.GetAsJson;

  { ShowMessage(Result); }

  Async.Run<Boolean>(
    function: Boolean
    begin
      // This is the "background" anonymous method. Runs in the
      // background thread, and its result is passed
      // to the "success" callback.
      // In this case the result is a String.
      Result := True;
      if Assigned(JMonitor) then
        System.TMonitor.Enter(JMonitor);
      try
        { Stopwatch := TStopwatch.StartNew; }
        var
        sGUID := StringReplace(aRecEvent.JGUID, '{', '', []);
        sGUID := StringReplace(sGUID, '}', '', []);

        qryGoogleEvent.Close;
        qryGoogleEvent.Params[0].AsString := sGUID;
        qryGoogleEvent.Open;

        if qryGoogleEvent.RecordCount = 0 then
        begin
          qryGoogleEvent.Edit;
          aRecEvent.SaveToDataset(qryGoogleEvent);
          qryGoogleEvent.Post;
        end;

        if not(qryUpdatePlannerEvents.RecordCount > 0) and
          not(qryUpdatePlannerEventsJGUID.AsString = aRecEvent.JGUID) then
        begin
          qryUpdatePlannerEvents.Close;
          qryUpdatePlannerEvents.Params[0].AsString := sGUID;
          qryUpdatePlannerEvents.Open;
        end;
        if qryUpdatePlannerEvents.RecordCount > 0 then
        begin
          var
          vStatino := qryUpdatePlannerEventsSTATINO.AsInteger;

          if vStatino > 0 then
          begin
            qryRicercaStatino.Close;
            qryRicercaStatino.Params[0].AsInteger := vStatino;
            qryRicercaStatino.Open;
            if qryRicercaStatino.RecordCount = 1 then
            begin
              qryRicercaStatino.Edit;
              qryRicercaStatinoAPPUNTAMENTO_DATA.AsDateTime := Int(aRecEvent.StartTime);
              qryRicercaStatinoAPPUNTAMENTO_ORA.AsDateTime := aRecEvent.StartTime - Int(aRecEvent.StartTime);
              qryRicercaStatinoNOTE_PER_IL_TECNICO.AsString := aRecEvent.Description;
              qryRicercaStatino.Post;
            end;
          end;
          { qryGoogleEvent.Delete; }
        end;
      finally
        if Assigned(JMonitor) then
          System.TMonitor.Exit(JMonitor);
      end;
    end,
    procedure(const aValue: Boolean)
    begin
      // This is the "success" callback. Runs in the UI thread and
      // gets the result of the "background" anonymous method.

    end,
  // nil to run default behaviour
  nil);

end;

procedure TdmPhoenixVCLGCalendarController.WriteGoogleEventsValues;
begin
  Item.Summary := qryGoogleEventsQueueSUMMARY.AsString;
  if qryGoogleEventsQueueDESCRIPTION.BlobSize > 0 then
  begin
    var
    aStream := TStringStream.Create;
    try
      qryGoogleEventsQueueDESCRIPTION.SaveToStream(aStream);
      Item.Description := aStream.DataString;
    finally
      aStream.Free;
    end;
  end;

  Item.Location := qryGoogleEventsQueueLOCATION.AsString;
  Item.Color := TGItemColor.icBoldRed;
  // TGItemColor(qryGoogleEventsQueueCOLOR.AsInteger);

  if qryGoogleEventsQueueISALLDAY.AsString = 'T' then
  begin
    var
    StartDate := qryGoogleEventsQueueSTARTTIME.AsDateTime;
    Item.StartTime := EncodeDateTime(YearOf(StartDate), MonthOf(StartDate), DayOf(StartDate), 0, 0, 0, 0);
    var
    EndDate := qryGoogleEventsQueueENDTIME.AsDateTime;
    Item.EndTime := EncodeDateTime(YearOf(EndDate), MonthOf(EndDate), DayOf(EndDate), 0, 0, 0, 0);
    Item.IsAllDay := True;
  end
  else
  begin
    Item.StartTime := qryGoogleEventsQueueSTARTTIME.AsDateTime;
    Item.EndTime := qryGoogleEventsQueueENDTIME.AsDateTime;
    Item.IsAllDay := False;
  end;

  Item.Visibility := CloudCustomGCalendar.TVisibility.viDefault;
  Item.CalendarID := qryGoogleEventsQueueCALENDARID.AsString;

end;

end.
