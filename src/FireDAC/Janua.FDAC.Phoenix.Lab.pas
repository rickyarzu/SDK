unit Janua.FDAC.Phoenix.Lab;

interface

uses
  System.SysUtils, System.Classes, System.JSON, Data.DB,
  // DB
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Phys, FireDAC.DApt.Intf,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.DatS,
  FireDAC.Stan.Async, FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.DApt, FireDAC.Comp.UI,
  FireDAC.VCLUI.Login, FireDAC.Phys.IBBase, FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.Comp.DataSet,
  // Janua
  Janua.Core.Classes, Janua.REST.Types, Janua.Core.Types, Janua.Http.Types, Janua.REST.Intf,
  Janua.FDAC.Phoenix.Model;

type
  TdmFDACPhoenixLab = class(TdmFDACPhoenixModel)
    tbLabEstintori: TFDTable;
    tbLabEstintoriSTATINO: TIntegerField;
    tbLabEstintoriESTINTORE: TIntegerField;
    tbLabEstintoriTECNICO: TIntegerField;
    tbLabEstintoriDESCRIZIONE_STATINO: TStringField;
    tbLabEstintoriSTATO_STATINO: TStringField;
    tbLabEstintoriDESCRIZIONE_ALTERNATIVA: TStringField;
    tbLabEstintoriRESET_DATA_COLLAUDO: TStringField;
    tbLabEstintoriRESET_DATA_REVISIONE: TStringField;
    tbLabEstintoriDATA_CONTROLLO: TDateField;
    tbLabEstintoriDATA_SMALTIMENTO: TDateField;
    tbLabEstintoriDATA_RESTITUZIONE: TDateField;
    tbLabEstintoriDATA_CONSEGNA: TDateField;
    tbLabEstintoriDATA_CONTROLLO_NEGATO: TDateField;
    tbLabEstintoriDATA_STARTUP_REV: TDateField;
    tbLabEstintoriTIPO_ESTINTORE: TIntegerField;
    tbLabEstintoriPROGRESSIVO: TIntegerField;
    tbLabEstintoriMATRICOLA: TStringField;
    tbLabEstintoriANNO_COSTRUZIONE: TSmallintField;
    tbLabEstintoriDATA_STARTUP_COL: TDateField;
    tbLabEstintoriSTATO: TStringField;
    tbLabEstintoriANOMALIA_APPROVATA: TStringField;
    tbLabEstintoriANOMALIA: TStringField;
    tbLabEstintoriUBICAZIONE: TStringField;
    tbLabEstintoriNOTE_TECNICO: TStringField;
    tbLabEstintoriID_NFC: TStringField;
    tbLabEstintoriMARCA: TIntegerField;
    tbLabEstintoriTIPO_INTERVENTO: TStringField;
    tbLabEstintoriPERIODICITA_COLLAUDO: TIntegerField;
    tbLabEstintoriPERIODICITA_REVISIONE: TIntegerField;
    tbLabEstintoriANOMALIA_DOWNLOAD: TStringField;
    tbLabEstintoriRITIRATO: TStringField;
    tbLabEstintoriDATA_RITIRO: TDateField;
    tbLabEstintoriORARIO_RITIRO: TDateField;
    tbLabEstintoriTECNIOO_RITIRO: TIntegerField;
    tbLabEstintoriCONSEGNATO: TStringField;
    tbLabEstintoriDATA_LAVORAZIONE: TDateField;
    tbLabErrori: TFDTable;
    tbLabErroriSTATINO: TStringField;
    tbLabErroriESTINTORE: TStringField;
    tbLabErroriTECNICO: TStringField;
    tbLabErroriDESCRIZIONE_STATINO: TStringField;
    tbLabErroriSTATO_STATINO: TStringField;
    tbLabErroriDESCRIZIONE_ALTERNATIVA: TStringField;
    tbLabErroriRESET_DATA_COLLAUDO: TStringField;
    tbLabErroriRESET_DATA_REVISIONE: TStringField;
    tbLabErroriDATA_CONTROLLO: TStringField;
    tbLabErroriDATA_SMALTIMENTO: TStringField;
    tbLabErroriDATA_RESTITUZIONE: TStringField;
    tbLabErroriDATA_CONSEGNA: TStringField;
    tbLabErroriDATA_CONTROLLO_NEGATO: TStringField;
    tbLabErroriDATA_STARTUP_REV: TStringField;
    tbLabErroriTIPO_ESTINTORE: TStringField;
    tbLabErroriPROGRESSIVO: TStringField;
    tbLabErroriMATRICOLA: TStringField;
    tbLabErroriANNO_COSTRUZIONE: TStringField;
    tbLabErroriDATA_STARTUP_COL: TStringField;
    tbLabErroriSTATO: TStringField;
    tbLabErroriANOMALIA_APPROVATA: TStringField;
    tbLabErroriANOMALIA: TStringField;
    tbLabErroriUBICAZIONE: TStringField;
    tbLabErroriNOTE_TECNICO: TStringField;
    tbLabErroriID_NFC: TStringField;
    tbLabErroriMARCA: TStringField;
    tbLabErroriTIPO_INTERVENTO: TStringField;
    tbLabErroriPERIODICITA_COLLAUDO: TStringField;
    tbLabErroriPERIODICITA_REVISIONE: TStringField;
    tbLabErroriANOMALIA_DOWNLOAD: TStringField;
    tbLabErroriRITIRATO: TStringField;
    tbLabErroriDATA_RITIRO: TStringField;
    tbLabErroriORARIO_RITIRO: TStringField;
    tbLabErroriTECNIOO_RITIRO: TStringField;
    tbLabErroriCONSEGNATO: TStringField;
    tbLabErroriDATA_LAVORAZIONE: TStringField;
    tbLabErroriERROR_MESSAGE: TStringField;
    sqlDeleteEstintori: TFDCommand;
    FDTransaction1: TFDTransaction;
    sqlDeleteErrori: TFDCommand;
    qryMasterStatini: TFDQuery;
    dsMasterStatini: TDataSource;
    qryDetailLabEstintori: TFDQuery;
    qryDetailLabEstintoriSTATINO: TIntegerField;
    qryDetailLabEstintoriESTINTORE: TIntegerField;
    qryDetailLabEstintoriTECNICO: TIntegerField;
    qryDetailLabEstintoriDESCRIZIONE_STATINO: TStringField;
    qryDetailLabEstintoriSTATO_STATINO: TStringField;
    qryDetailLabEstintoriDESCRIZIONE_ALTERNATIVA: TStringField;
    qryDetailLabEstintoriRESET_DATA_COLLAUDO: TStringField;
    qryDetailLabEstintoriRESET_DATA_REVISIONE: TStringField;
    qryDetailLabEstintoriDATA_CONTROLLO: TDateField;
    qryDetailLabEstintoriDATA_SMALTIMENTO: TDateField;
    qryDetailLabEstintoriDATA_RESTITUZIONE: TDateField;
    qryDetailLabEstintoriDATA_CONSEGNA: TDateField;
    qryDetailLabEstintoriDATA_CONTROLLO_NEGATO: TDateField;
    qryDetailLabEstintoriDATA_STARTUP_REV: TDateField;
    qryDetailLabEstintoriTIPO_ESTINTORE: TIntegerField;
    qryDetailLabEstintoriPROGRESSIVO: TIntegerField;
    qryDetailLabEstintoriMATRICOLA: TStringField;
    qryDetailLabEstintoriANNO_COSTRUZIONE: TSmallintField;
    qryDetailLabEstintoriDATA_STARTUP_COL: TDateField;
    qryDetailLabEstintoriSTATO: TStringField;
    qryDetailLabEstintoriANOMALIA_APPROVATA: TStringField;
    qryDetailLabEstintoriANOMALIA: TStringField;
    qryDetailLabEstintoriUBICAZIONE: TStringField;
    qryDetailLabEstintoriNOTE_TECNICO: TStringField;
    qryDetailLabEstintoriID_NFC: TStringField;
    qryDetailLabEstintoriMARCA: TIntegerField;
    qryDetailLabEstintoriTIPO_INTERVENTO: TStringField;
    qryDetailLabEstintoriPERIODICITA_COLLAUDO: TIntegerField;
    qryDetailLabEstintoriPERIODICITA_REVISIONE: TIntegerField;
    qryDetailLabEstintoriANOMALIA_DOWNLOAD: TStringField;
    qryDetailLabEstintoriRITIRATO: TStringField;
    qryDetailLabEstintoriDATA_RITIRO: TDateField;
    qryDetailLabEstintoriORARIO_RITIRO: TDateField;
    qryDetailLabEstintoriTECNIOO_RITIRO: TIntegerField;
    qryDetailLabEstintoriCONSEGNATO: TStringField;
    qryDetailLabEstintoriDATA_LAVORAZIONE: TDateField;
    qryMasterStatiniSTATINO: TIntegerField;
    qryMasterStatiniTECNICO: TIntegerField;
    qryMasterStatiniDESCRIZIONE_STATINO: TStringField;
    qryMasterStatiniSTATO_STATINO: TStringField;
    qryMasterStatiniESTINTORI: TLargeintField;
    qryMasterStatiniCOMUNE: TStringField;
    qryMasterStatiniCAP: TStringField;
    qryMasterStatiniDATA_INTERVENTO: TDateField;
    qryMasterStatiniSOSPESO: TStringField;
    qryMasterStatiniSTATO_LAVORAZIONE: TStringField;
    qryMasterStatiniDATA_CHIUSURA_DA_SERVER: TDateField;
    sqlUpdatePronti: TFDCommand;
    sqlUpdateRitirati: TFDCommand;
    spSetStatoStatini: TFDStoredProc;
    sqlDataStatini: TFDCommand;
    tbLabEstintoriMOTIVO_RITIRO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    FReports: integer;
    FActual: integer;
    FLastError: string;
    FLabPassword: string;
    FLabUrl: string;
    FLabUserName: string;
    FRawResponse: string;
    FJsonResponse: string;
    FLog: TStrings;
    procedure SetActual(const Value: integer);
    procedure SetReports(const Value: integer);
    procedure SetLastError(const Value: string);
    procedure SetLabPassword(const Value: string);
    procedure SetLabUrl(const Value: string);
    procedure SetLabUserName(const Value: string);
    procedure SetRawResponse(const Value: string);
    procedure SetJsonResponse(const Value: string);
    procedure SetLog(const Value: TStrings);
    { Private declarations }
  public
    { Public declarations }
    function ElaborateList(aEstintore: TJsonObject; var Log: string): Boolean;
    procedure StoreError(aEstintore: TJsonObject);
    procedure Startup;
    procedure UpdateStatini;
    procedure StatoLavorazioni;
    procedure ElaborateJson;
    procedure Refresh;
    procedure UpdateData;
    property Actual: integer read FActual write SetActual;
    property Reports: integer read FReports write SetReports;
    property LastError: string read FLastError write SetLastError;
    property LabUserName: string read FLabUserName write SetLabUserName;
    property LabPassword: string read FLabPassword write SetLabPassword;
    property LabUrl: string read FLabUrl write SetLabUrl;
    property RawResponse: string read FRawResponse write SetRawResponse;
    property JsonResponse: string read FJsonResponse write SetJsonResponse;
    property Log: TStrings read FLog write SetLog;
  end;

var
  dmFDACPhoenixLab: TdmFDACPhoenixLab;

implementation

uses System.Variants, Spring,
  // Janua
  Janua.REST.Client, Janua.Core.JSON, Janua.Core.Functions, Janua.Application.Framework;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}
{ TdmFDACPhoenixLab }

procedure TdmFDACPhoenixLab.DataModuleCreate(Sender: TObject);
begin
  inherited;
  FLog := TStringList.Create;
  FActual := 0;
  FLabUserName := TJanuaCoreOS.ReadParam('Lab', 'UserName', '***!Admin');
  FLabPassword := TJanuaCoreOS.ReadParam('Lab', 'Password', '***!PhoenixFly');
  FLabUrl := TJanuaCoreOS.ReadParam('Lab', 'Url', 'https://www.assoantincendio.com');
end;

procedure TdmFDACPhoenixLab.DataModuleDestroy(Sender: TObject);
begin
  inherited;
  FLog.Free;
  FLog := nil;
end;

procedure TdmFDACPhoenixLab.ElaborateJson;
var
  lJson, lError: string;
  lJsonObject, lSpecifica: TJsonObject;
  lTemp, lSpecifiche: TJsonArray;
  I: integer;
begin
  lJsonObject := Janua.Core.JSON.JsonParse(RawResponse);
  try
    JsonValue(lJsonObject, 'SpecificheEstintori', lSpecifiche);
    Reports := lSpecifiche.Count;
    Startup;
    for I := 0 to lSpecifiche.Count - 1 do
    begin
      // Estraggo Specifica come 'stringa' dall'oggetto Json
      JsonExtract(lSpecifiche.Items[I] as TJsonObject, 'Specifica', lJson);
      // Converto Specifica da 'stringa' in oggetto Json
      lSpecifica := Janua.Core.JSON.JsonParse(lJson);
      // Inserisco Specifica come 'ogget' nell'oggetto Json
      JsonPair(lSpecifiche.Items[I] as TJsonObject, 'Specifica', lSpecifica as TJsonValue);
    end;
    FJsonResponse := JsonPretty(lJsonObject);
  finally
    lJsonObject.Free;
  end;

end;

function TdmFDACPhoenixLab.ElaborateList(aEstintore: TJsonObject; var Log: string): Boolean;
var
  lSpecifica: TJsonObject;
  lInt: integer;
  lStr: String;
  lID, lStat: string;
  lDate: TDateTime;
  fs: TFormatSettings;
  lBool: Boolean;

  procedure UpdateStringDate;
  begin
    var
    sTemp := lStr.Substring(5, 2);
    sTemp := LPad((sTemp.ToInteger + 1).ToString, 2, '0');
    lStr := lStr.Substring(0, 4) + '-' + sTemp + '-' + lStr.Substring(8, 2);
    lDate := StrToDate(lStr, fs);
  end;

begin
  Inc(FActual);
  fs := TFormatSettings.Create;
  fs.DateSeparator := '-';
  fs.ShortDateFormat := 'yy-MM-dd';
  fs.LongDateFormat := 'yyyy-MM-dd';
  fs.TimeSeparator := ':';
  fs.ShortTimeFormat := 'hh:nn:ss';
  try
    // Elaboro Estintore
    JsonValue(aEstintore, 'IdEstintore', lID);
    JsonValue(aEstintore, 'IdStatino', lStat);

    Result := lID <> '';
    Log := JsonPretty(aEstintore);
    if Result and IsNumeric(lStat) then
    begin
      if not tbLabEstintori.Active then
        tbLabEstintori.Open;
      (*
        if tbLabEstintori.Locate('ESTINTORE;STATINO', VarArrayOf([lID.ToInteger, lStat.ToInteger]), []) then
        tbLabEstintori.Edit
        else
      *)
      tbLabEstintori.Append;

      tbLabEstintoriESTINTORE.AsString := lID;
      tbLabEstintoriSTATINO.AsString := lStat;

      Log := Log + 'Elaborazione Estintore: ' + lID + sLineBreak;

      JsonValue(aEstintore, 'DescrStatino', lStr);
      tbLabEstintoriDESCRIZIONE_STATINO.AsString := lStr;
      JsonValue(aEstintore, 'Stato', lStr);
      tbLabEstintoriSTATO_STATINO.AsString := lStr;
      JsonValue(aEstintore, 'Tecnico', lStr);
      tbLabEstintoriTECNICO.AsString := lStr;
      JsonValue(aEstintore, 'StatinoOrdin', lStr);

      // Elaborazione Specifica
      JsonValue(aEstintore, 'Specifica', lSpecifica);

      JsonValue(lSpecifica, 'DATA_STARTUP_REV', lStr);
      if not lStr.IsEmpty and not lStr.Equals('null') then
      begin
        UpdateStringDate;
        tbLabEstintoriDATA_STARTUP_REV.AsDateTime := lDate;
      end;
      tbLabEstintoriDATA_STARTUP_REV.AsDateTime := lDate;
      // TIPO_ESTINTORE
      JsonValue(lSpecifica, 'TIPO_ESTINTORE', lStr);
      tbLabEstintoriTIPO_ESTINTORE.AsString := lStr;
      // PROGRESSIVO
      JsonValue(lSpecifica, 'PROGRESSIVO', lStr);
      tbLabEstintoriPROGRESSIVO.AsString := lStr;
      // MATRICOLA
      JsonValue(lSpecifica, 'MATRICOLA', lStr);
      tbLabEstintoriMATRICOLA.AsString := lStr;
      // ANNO_COSTRUZIONE
      JsonValue(lSpecifica, 'ANNO_COSTRUZIONE', lStr);
      tbLabEstintoriANNO_COSTRUZIONE.AsString := lStr;
      // DATA_STARTUP_COL
      JsonValue(lSpecifica, 'DATA_STARTUP_COL', lStr);
      if not lStr.IsEmpty and not lStr.Equals('null') then
      begin
        UpdateStringDate;
        tbLabEstintoriDATA_STARTUP_COL.AsDateTime := lDate;
      end;
      // STATO
      JsonValue(lSpecifica, 'STATO', lStr);
      tbLabEstintoriSTATO.AsString := lStr;
      // ANOMALIA_APPROVATA
      JsonValue(lSpecifica, 'ANOMALIA_APPROVATA', lStr);
      tbLabEstintoriANOMALIA_APPROVATA.AsString := lStr;
      // ANOMALIA
      JsonValue(lSpecifica, 'ANOMALIA', lStr);
      tbLabEstintoriANOMALIA.AsString := lStr;
      // UBICAZIONE
      JsonValue(lSpecifica, 'UBICAZIONE', lStr);
      tbLabEstintoriUBICAZIONE.AsString := lStr;
      // NOTE_TECNICO
      JsonValue(lSpecifica, 'NOTE_TECNICO', lStr);
      tbLabEstintoriNOTE_TECNICO.AsString := lStr;
      // ID_NFC
      JsonValue(lSpecifica, 'ID_NFC', lStr);
      tbLabEstintoriID_NFC.AsString := lStr;
      // MARCA
      JsonValue(lSpecifica, 'MARCA', lStr);
      if not lStr.IsEmpty and not lStr.Equals('null') then
        tbLabEstintoriMARCA.AsString := lStr;
      // TIPO_INTERVENTO
      JsonValue(lSpecifica, 'TIPO_INTERVENTO', lStr);
      tbLabEstintoriTIPO_INTERVENTO.AsString := lStr;
      // PERIODICITA_COLLAUDO
      JsonValue(lSpecifica, 'PERIODICITA_COLLAUDO', lInt);
      tbLabEstintoriPERIODICITA_COLLAUDO.AsInteger := lInt;
      // PERIODICITA_REVISIONE
      JsonValue(lSpecifica, 'PERIODICITA_REVISIONE', lInt);
      tbLabEstintoriPERIODICITA_REVISIONE.AsInteger := lInt;
      // AnomaliaOnDownload
      JsonValue(lSpecifica, 'AnomaliaOnDownload', lStr);
      tbLabEstintoriANOMALIA_DOWNLOAD.AsString := lStr;
      // Ritirato
      JsonValue(lSpecifica, 'Ritirato', lBool);
      tbLabEstintoriRITIRATO.AsBoolean := lBool;
      // DataRitiro
      JsonValue(lSpecifica, 'DataRitiro', lStr);
      if not lStr.IsEmpty and not lStr.Equals('null') then
      begin
        UpdateStringDate;
        tbLabEstintoriDATA_RITIRO.AsDateTime := lDate;
      end;
      // OrarioRitiro
      JsonValue(lSpecifica, 'OrarioRitiro', lStr);
      if not lStr.IsEmpty and not lStr.Equals('null') then
      begin
        lDate := StrToTime(lStr, fs);
        tbLabEstintoriORARIO_RITIRO.AsDateTime := lDate;
      end;
      // TecnicoRitiro
      JsonValue(lSpecifica, 'TecnicoRitiro', lInt);
      tbLabEstintoriTECNIOO_RITIRO.AsInteger := lInt;

      // MotivoRitiro
      JsonValue(lSpecifica, 'MotivoRitiro', lStr);
      if lStr <> '' then
      begin
        tbLabEstintoriMOTIVO_RITIRO.AsString := lStr;
      end;

      // Consegnato
      JsonValue(lSpecifica, 'Consegnato', lBool);
      tbLabEstintoriCONSEGNATO.AsBoolean := lBool;
      // DATA_LAVORAZIONE
      JsonValue(lSpecifica, 'DATA_LAVORAZIONE', lStr);
      if not lStr.IsEmpty and not lStr.Equals('null') then
      begin
        UpdateStringDate;
        tbLabEstintoriDATA_LAVORAZIONE.AsDateTime := lDate;
      end;
      tbLabEstintori.Post;
    end
    else
    begin
      Log := Log + sLineBreak + 'Trovato Statino da Tablet: ' + lStat;
    end;

  except
    on e: exception do
    begin
      tbLabEstintori.Cancel;
      FLastError := e.Message;
      Log := Log + sLineBreak + e.Message;
    end;
  end;

end;

procedure TdmFDACPhoenixLab.Refresh;
begin
  qryMasterStatini.Close;
  qryMasterStatini.Open;
  qryDetailLabEstintori.Close;
  qryDetailLabEstintori.Open;

end;

procedure TdmFDACPhoenixLab.SetActual(const Value: integer);
begin
  FActual := Value;
end;

procedure TdmFDACPhoenixLab.SetJsonResponse(const Value: string);
begin
  FJsonResponse := Value;
end;

procedure TdmFDACPhoenixLab.SetLabPassword(const Value: string);
begin
  FLabPassword := Value;
end;

procedure TdmFDACPhoenixLab.SetLabUrl(const Value: string);
begin
  FLabUrl := Value;
end;

procedure TdmFDACPhoenixLab.SetLabUserName(const Value: string);
begin
  FLabUserName := Value;
end;

procedure TdmFDACPhoenixLab.SetLastError(const Value: string);
begin
  FLastError := Value;
end;

procedure TdmFDACPhoenixLab.SetLog(const Value: TStrings);
begin
  FLog := Value;
end;

procedure TdmFDACPhoenixLab.SetRawResponse(const Value: string);
begin
  FRawResponse := Value;
end;

procedure TdmFDACPhoenixLab.SetReports(const Value: integer);
begin
  FReports := Value;
end;

procedure TdmFDACPhoenixLab.Startup;
begin
  tbLabEstintori.Close;
  FDTransaction1.StartTransaction;
  sqlDeleteEstintori.Execute;
  sqlDeleteErrori.Execute;
  FDTransaction1.Commit;
  tbLabEstintori.Open;
  var
  a := tbLabEstintori.RecordCount;
  tbLabErrori.Open;
end;

procedure TdmFDACPhoenixLab.StatoLavorazioni;
var
  // TRESTClient = class( IRESTClient)
  lClient: IJanuaRESTClient;
begin
  TJanuaApplication.RestClientConf.Username := FLabUserName;
  TJanuaApplication.RestClientConf.Password := FLabPassword;
  TJanuaApplication.RestClientConf.Server := FLabUrl;
  lClient := TJanuaRESTClient.Create;
  // https://www.assoantincendio.com/PhoenixMobile/PhxStatoLavorazioni.php?PhxAccount=***!Admin&PhxPassword=***!PhoenixFly
  lClient.PasswordParam := 'PhxPassword';
  lClient.UserParam := 'PhxAccount';
  lClient.SetMimeType(TJanuaMimeType.jmtTextPlain);
  lClient.AuthenticationType := Janua.REST.Types.TAuthenticationType.jatGetParams;
  if lClient.Execute(TJanuaHttpMethod.jhmGet, ['PhoenixMobile', 'PhxStatoLavorazioni.php']) then
    RawResponse := JsonPretty(lClient.Content);

end;

procedure TdmFDACPhoenixLab.StoreError(aEstintore: TJsonObject);
var
  lStr, Log: String;
  lID, lStat: string;
  lSpecifica: TJsonObject;
begin

  if Assigned(aEstintore) then
    try
      JsonValue(aEstintore, 'IdEstintore', lID);
      JsonValue(aEstintore, 'IdStatino', lStat);

      Log := JsonPretty(aEstintore);
      if not(lID.IsEmpty or lStat.IsEmpty) then
      begin
        if not tbLabErrori.Active then
          tbLabErrori.Open;

        (*
          if tbLabErrori.Locate('ESTINTORE;STATINO', VarArrayOf([lID, lStat]), []) then
          tbLabErrori.Edit
          else
        *)
        tbLabErrori.Append;

        tbLabErroriESTINTORE.AsString := lID;
        tbLabErroriSTATINO.AsString := lStat;

        JsonValue(aEstintore, 'DescrStatino', lStr);
        tbLabErroriDESCRIZIONE_STATINO.AsString := lStr;
        JsonValue(aEstintore, 'Stato', lStr);
        tbLabErroriSTATO_STATINO.AsString := lStr;
        JsonValue(aEstintore, 'Tecnico', lStr);
        tbLabErroriTECNICO.AsString := lStr;
        JsonValue(aEstintore, 'StatinoOrdin', lStr);

        // Elaborazione Specifica
        JsonValue(aEstintore, 'Specifica', lSpecifica);

        JsonValue(lSpecifica, 'DATA_STARTUP_REV', lStr);
        tbLabErroriDATA_STARTUP_REV.AsString := lStr;
        // TIPO_ESTINTORE
        JsonValue(lSpecifica, 'TIPO_ESTINTORE', lStr);
        tbLabErroriTIPO_ESTINTORE.AsString := lStr;
        // PROGRESSIVO
        JsonValue(lSpecifica, 'PROGRESSIVO', lStr);
        tbLabErroriPROGRESSIVO.AsString := lStr;
        // MATRICOLA
        JsonValue(lSpecifica, 'MATRICOLA', lStr);
        tbLabErroriMATRICOLA.AsString := lStr;
        // ANNO_COSTRUZIONE
        JsonValue(lSpecifica, 'ANNO_COSTRUZIONE', lStr);
        tbLabErroriANNO_COSTRUZIONE.AsString := lStr;
        // DATA_STARTUP_COL
        JsonValue(lSpecifica, 'DATA_STARTUP_COL', lStr);
        tbLabErroriDATA_STARTUP_COL.AsString := lStr;
        // STATO
        JsonValue(lSpecifica, 'STATO', lStr);
        tbLabErroriSTATO.AsString := lStr;
        // ANOMALIA_APPROVATA
        JsonValue(lSpecifica, 'ANOMALIA_APPROVATA', lStr);
        tbLabErroriANOMALIA_APPROVATA.AsString := lStr;
        // ANOMALIA
        JsonValue(lSpecifica, 'ANOMALIA', lStr);
        tbLabErroriANOMALIA.AsString := lStr;
        // UBICAZIONE
        JsonValue(lSpecifica, 'UBICAZIONE', lStr);
        tbLabErroriUBICAZIONE.AsString := lStr;
        // NOTE_TECNICO
        JsonValue(lSpecifica, 'NOTE_TECNICO', lStr);
        tbLabErroriNOTE_TECNICO.AsString := lStr;
        // ID_NFC
        JsonValue(lSpecifica, 'ID_NFC', lStr);
        tbLabErroriID_NFC.AsString := lStr;
        // MARCA
        JsonValue(lSpecifica, 'MARCA', lStr);
        tbLabErroriMARCA.AsString := lStr;
        // TIPO_INTERVENTO
        JsonValue(lSpecifica, 'TIPO_INTERVENTO', lStr);
        tbLabErroriTIPO_INTERVENTO.AsString := lStr;
        // PERIODICITA_COLLAUDO
        JsonValue(lSpecifica, 'PERIODICITA_COLLAUDO', lStr);
        tbLabErroriPERIODICITA_COLLAUDO.AsString := lStr;
        // PERIODICITA_REVISIONE
        JsonValue(lSpecifica, 'PERIODICITA_REVISIONE', lStr);
        tbLabErroriPERIODICITA_REVISIONE.AsString := lStr;
        // AnomaliaOnDownload
        JsonValue(lSpecifica, 'AnomaliaOnDownload', lStr);
        tbLabErroriANOMALIA_DOWNLOAD.AsString := lStr;
        // Ritirato
        JsonValue(lSpecifica, 'Ritirato', lStr);
        tbLabErroriRITIRATO.AsString := lStr;
        // DataRitiro
        JsonValue(lSpecifica, 'DataRitiro', lStr);
        tbLabErroriDATA_RITIRO.AsString := lStr;
        // OrarioRitiro
        JsonValue(lSpecifica, 'OrarioRitiro', lStr);
        tbLabErroriORARIO_RITIRO.AsString := lStr;
        // TecnicoRitiro
        JsonValue(lSpecifica, 'TecnicoRitiro', lStr);
        tbLabErroriTECNIOO_RITIRO.AsString := lStr;
        // MotivoRitiro
        JsonValue(lSpecifica, 'MotivoRitiro', lStr);

        // Consegnato
        JsonValue(lSpecifica, 'Consegnato', lStr);
        tbLabErroriCONSEGNATO.AsString := lStr;
        // DATA_LAVORAZIONE
        JsonValue(lSpecifica, 'DATA_LAVORAZIONE', lStr);
        tbLabErroriDATA_LAVORAZIONE.AsString := lStr;

        // FLastError
        tbLabErroriERROR_MESSAGE.AsString := FLastError;

        tbLabErrori.Post;
      end;
    except
      on e: exception do
      begin
        tbLabEstintori.Cancel;
        Log := Log + sLineBreak + e.Message;
      end;
    end;
end;

procedure TdmFDACPhoenixLab.UpdateData;
var
  lJson, lError: string;
  lJsonObject: TJsonObject;
  lSpecifiche: TJsonArray;
  I: integer;
begin
  lJsonObject := Janua.Core.JSON.JsonParse(JsonResponse);
  try
    JsonValue(lJsonObject, 'SpecificheEstintori', lSpecifiche);
    Reports := lSpecifiche.Count;
    Startup;
    for I := 0 to lSpecifiche.Count - 1 do
      // Invio l'Oggetto in Elaborazione
      ElaborateList(lSpecifiche.Items[I] as TJsonObject, lError);
    // JsonResponse := JsonPretty(lJsonObject);
  finally
    lJsonObject.Free;
  end;
  UpdateStatini;
end;

procedure TdmFDACPhoenixLab.UpdateStatini;
begin
  // FDTransaction1.StartTransaction;
  sqlUpdatePronti.Execute;
  sqlUpdateRitirati.Execute;
  sqlDataStatini.Execute;
  spSetStatoStatini.ExecProc;
  // self.FDTransaction1.Commit;
end;

end.
