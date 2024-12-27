unit Janua.Phoenix.dmIBLabSync;

interface

uses
  System.SysUtils, System.Classes, System.JSON,
  // DB
  UniProvider, InterBaseUniProvider, Data.DB, DBAccess, Uni,
  //
  Vcl.Graphics,
  // Janua
  Janua.Core.Classes, Janua.REST.Types, Janua.Core.Types, Janua.Http.Types, Janua.REST.Intf,
  Janua.Unidac.Connection, Janua.Interbase.dmModel, Janua.Phoenix.dmIBModel, MemDS, System.ImageList,
  Vcl.ImgList, JvImageList;

type
  TdmPhoenixIBLab = class(TdmPhoenixIBModel)
    tbLabEstintori: TUniTable;
    tbLabEstintoriSTATINO: TIntegerField;
    tbLabEstintoriESTINTORE: TIntegerField;
    tbLabEstintoriTECNICO: TIntegerField;
    tbLabEstintoriDESCRIZIONE_STATINO: TWideStringField;
    tbLabEstintoriSTATO_STATINO: TWideStringField;
    tbLabEstintoriDESCRIZIONE_ALTERNATIVA: TWideStringField;
    tbLabEstintoriRESET_DATA_COLLAUDO: TWideStringField;
    tbLabEstintoriRESET_DATA_REVISIONE: TWideStringField;
    tbLabEstintoriDATA_CONTROLLO: TDateField;
    tbLabEstintoriDATA_SMALTIMENTO: TDateField;
    tbLabEstintoriDATA_RESTITUZIONE: TDateField;
    tbLabEstintoriDATA_CONSEGNA: TDateField;
    tbLabEstintoriDATA_CONTROLLO_NEGATO: TDateField;
    tbLabEstintoriDATA_STARTUP_REV: TDateField;
    tbLabEstintoriTIPO_ESTINTORE: TIntegerField;
    tbLabEstintoriPROGRESSIVO: TIntegerField;
    tbLabEstintoriMATRICOLA: TWideStringField;
    tbLabEstintoriANNO_COSTRUZIONE: TSmallintField;
    tbLabEstintoriDATA_STARTUP_COL: TDateField;
    tbLabEstintoriSTATO: TWideStringField;
    tbLabEstintoriANOMALIA_APPROVATA: TWideStringField;
    tbLabEstintoriANOMALIA: TWideStringField;
    tbLabEstintoriUBICAZIONE: TWideStringField;
    tbLabEstintoriNOTE_TECNICO: TWideStringField;
    tbLabEstintoriID_NFC: TWideStringField;
    tbLabEstintoriMARCA: TIntegerField;
    tbLabEstintoriTIPO_INTERVENTO: TWideStringField;
    tbLabEstintoriPERIODICITA_COLLAUDO: TIntegerField;
    tbLabEstintoriPERIODICITA_REVISIONE: TIntegerField;
    tbLabEstintoriANOMALIA_DOWNLOAD: TWideStringField;
    tbLabEstintoriRITIRATO: TWideStringField;
    tbLabEstintoriDATA_RITIRO: TDateField;
    tbLabEstintoriORARIO_RITIRO: TDateField;
    tbLabEstintoriTECNIOO_RITIRO: TIntegerField;
    tbLabEstintoriCONSEGNATO: TWideStringField;
    tbLabEstintoriDATA_LAVORAZIONE: TDateField;
    tbLabErrori: TUniTable;
    tbLabErroriSTATINO: TWideStringField;
    tbLabErroriESTINTORE: TWideStringField;
    tbLabErroriTECNICO: TWideStringField;
    tbLabErroriDESCRIZIONE_STATINO: TWideStringField;
    tbLabErroriSTATO_STATINO: TWideStringField;
    tbLabErroriDESCRIZIONE_ALTERNATIVA: TWideStringField;
    tbLabErroriRESET_DATA_COLLAUDO: TWideStringField;
    tbLabErroriRESET_DATA_REVISIONE: TWideStringField;
    tbLabErroriDATA_CONTROLLO: TWideStringField;
    tbLabErroriDATA_SMALTIMENTO: TWideStringField;
    tbLabErroriDATA_RESTITUZIONE: TWideStringField;
    tbLabErroriDATA_CONSEGNA: TWideStringField;
    tbLabErroriDATA_CONTROLLO_NEGATO: TWideStringField;
    tbLabErroriDATA_STARTUP_REV: TWideStringField;
    tbLabErroriTIPO_ESTINTORE: TWideStringField;
    tbLabErroriPROGRESSIVO: TWideStringField;
    tbLabErroriMATRICOLA: TWideStringField;
    tbLabErroriANNO_COSTRUZIONE: TWideStringField;
    tbLabErroriDATA_STARTUP_COL: TWideStringField;
    tbLabErroriSTATO: TWideStringField;
    tbLabErroriANOMALIA_APPROVATA: TWideStringField;
    tbLabErroriANOMALIA: TWideStringField;
    tbLabErroriUBICAZIONE: TWideStringField;
    tbLabErroriNOTE_TECNICO: TWideStringField;
    tbLabErroriID_NFC: TWideStringField;
    tbLabErroriMARCA: TWideStringField;
    tbLabErroriTIPO_INTERVENTO: TWideStringField;
    tbLabErroriPERIODICITA_COLLAUDO: TWideStringField;
    tbLabErroriPERIODICITA_REVISIONE: TWideStringField;
    tbLabErroriANOMALIA_DOWNLOAD: TWideStringField;
    tbLabErroriRITIRATO: TWideStringField;
    tbLabErroriDATA_RITIRO: TWideStringField;
    tbLabErroriORARIO_RITIRO: TWideStringField;
    tbLabErroriTECNIOO_RITIRO: TWideStringField;
    tbLabErroriCONSEGNATO: TWideStringField;
    tbLabErroriDATA_LAVORAZIONE: TWideStringField;
    tbLabErroriERROR_MESSAGE: TWideStringField;
    sqlDeleteEstintori: TUniSQL;
    sqlDeleteErrori: TUniSQL;
    spSetStatoStatini: TUniStoredProc;
    sqlUpdatePronti: TUniSQL;
    sqlUpdateRitirati: TUniSQL;
    sqlDataStatini: TUniSQL;
    sqlWhatsApp: TUniSQL;
    qryMasterStatini: TUniQuery;
    dsMasterStatini: TUniDataSource;
    qryDetailLabEstintori: TUniQuery;
    sqlWaNumber: TUniSQL;
    qryReportPlanner: TUniQuery;
    qryReportPlannerCHIAVE: TIntegerField;
    qryReportPlannerSTATO_IMMAGINE: TBlobField;
    qryReportPlannerWA_ID: TWideStringField;
    qryReportPlannerSTATO: TSmallintField;
    qryReportPlannerWA_STATE: TSmallintField;
    qryReportPlannerWA_IMAGE: TBlobField;
    qryReportPlannerAPPUNTAMENTO_DATA: TDateField;
    qryReportPlannerAPPUNTAMENTO_ORA: TTimeField;
    JvImageList1: TJvImageList;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure qryReportPlannerBeforePost(DataSet: TDataSet);
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
  public
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
  dmPhoenixIBLab: TdmPhoenixIBLab;

implementation

uses System.Variants, Spring, System.StrUtils,
  // Janua
  Janua.REST.Client, Janua.Core.JSON, Janua.Core.Functions, Janua.Application.Framework;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TdmPhoenixIBLab.DataModuleCreate(Sender: TObject);
begin
  inherited;
  FLog := TStringList.Create;
  FActual := 0;
  FLabUserName := TJanuaCoreOS.ReadParam('Lab', 'UserName', '***!Admin');
  FLabPassword := TJanuaCoreOS.ReadParam('Lab', 'Password', '***!PhoenixFly');
  FLabUrl := TJanuaCoreOS.ReadParam('Lab', 'Url', 'https://www.assoantincendio.com');
end;

procedure TdmPhoenixIBLab.DataModuleDestroy(Sender: TObject);
begin
  inherited;
  FLog.Free;
  FLog := nil;
end;

// ---------------------------------------------------------------------------------------------

procedure TdmPhoenixIBLab.ElaborateJson;
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

function TdmPhoenixIBLab.ElaborateList(aEstintore: TJsonObject; var Log: string): Boolean;
var
  lSpecifica: TJsonObject;
  lInt: integer;
  lStr: String;
  lID, lStat: string;
  lDate: TDateTime;
  fs: TFormatSettings;
  lBool: Boolean;

  function ConvertiStringaInData(const Input: string; out Data: TDateTime): Boolean;
  var
    Parti: TArray<string>;
    Anno, Mese, Giorno: integer;
  begin
    Result := False;
    try
      // Dividi la stringa usando '-' come separatore
      Parti := SplitString(Input, '-');

      // Controlla che ci siano esattamente 3 parti
      if Length(Parti) <> 3 then
        Exit;

      // Controlla che tutte le parti siano numeri e converti in interi
      if not TryStrToInt(Parti[0], Anno) then
        Exit;
      if not TryStrToInt(Parti[1], Mese) then
        Exit;
      if not TryStrToInt(Parti[2], Giorno) then
        Exit;

      Inc(Mese);

      // Verifica che anno, mese e giorno siano validi
      if (Anno < 1) or (Mese < 1) or (Mese > 12) or (Giorno < 1) or (Giorno > 31) then
        Exit;

      // Crea la data usando EncodeDate (controlla la validità della combinazione)
      Data := EncodeDate(Anno, Mese, Giorno);
      Result := True;
    except
      // Gestione errori (ad esempio data non valida)
      Result := False;
    end;
  end;

  procedure UpdateStringDate;
  begin
    var
    iPos := Pos(lStr, '-');
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
      if not lStr.IsEmpty and not lStr.Equals('null') and ConvertiStringaInData(lStr, lDate) then
        tbLabEstintoriDATA_STARTUP_REV.AsDateTime := lDate;

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
      if not lStr.IsEmpty and not lStr.Equals('null') and ConvertiStringaInData(lStr, lDate) then
        tbLabEstintoriDATA_STARTUP_COL.AsDateTime := lDate;

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
      if not lStr.IsEmpty and not lStr.Equals('null') and ConvertiStringaInData(lStr, lDate) then
        tbLabEstintoriDATA_RITIRO.AsDateTime := lDate;
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
      // Consegnato
      JsonValue(lSpecifica, 'Consegnato', lBool);
      tbLabEstintoriCONSEGNATO.AsBoolean := lBool;
      // DATA_LAVORAZIONE
      JsonValue(lSpecifica, 'DATA_LAVORAZIONE', lStr);
      if not lStr.IsEmpty and not lStr.Equals('null') and ConvertiStringaInData(lStr, lDate) then
        tbLabEstintoriDATA_LAVORAZIONE.AsDateTime := lDate;
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

procedure TdmPhoenixIBLab.qryReportPlannerBeforePost(DataSet: TDataSet);
  procedure LoadImageFromImageList(Index: integer);
  var
    Bitmap: TBitmap;
  begin
    if (Index >= 0) and (Index < JvImageList1.Count) then
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
  end;

const
  green = 0;
  red = 1;
  orange = 2;
  blue = 3;
  white = 4;
begin
  if (qryReportPlannerSTATO.AsInteger = 0) and not qryReportPlannerAPPUNTAMENTO_DATA.IsNull then
  begin
    qryReportPlannerSTATO.AsInteger := 1;
  end
  else if qryReportPlannerSTATO.AsInteger = 4 then
  begin
    {
      if not qryReportPlannerAPPUNTAMENTO_DATA.IsNull then
      begin
      if not JMessageDlg('Rapportino non pronto, volete comunque prenotare appuntamento?') then
      qryReportPlanner.Cancel;
      end;
    }
  end
  else if qryReportPlannerSTATO.AsInteger = 5 then
  begin
    if not qryReportPlannerAPPUNTAMENTO_DATA.IsNull then
    begin
      qryReportPlannerSTATO.AsInteger := 6;
    end;
  end
  else if (qryReportPlannerSTATO.AsInteger = 6) then
  begin
    if qryReportPlannerAPPUNTAMENTO_DATA.IsNull or (qryReportPlannerAPPUNTAMENTO_DATA.Value = 0) then
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
  end;

  with DataSet do
    try
      var
      Image := white;

      var
      aStato := qryReportPlannerSTATO.AsInteger;

      case aStato of
        - 1:
          begin
            Image := red;
          end;
        0:
          begin
            Image := white;
          end;
        1:
          begin
            Image := blue;
          end;
        4:
          begin
            Image := orange;
          end;
        5:
          begin
            Image := green;
          end;
        6:
          begin
            Image := blue;
          end;
      end;

      if not(qryReportPlannerAPPUNTAMENTO_DATA.IsNull or (qryReportPlannerAPPUNTAMENTO_DATA.AsDateTime = 0.0))
        and (qryReportPlannerAPPUNTAMENTO_DATA.AsDateTime < Date) then
      begin
        Image := red;
      end;

      LoadImageFromImageList(Image);

    except
      on e: exception do
      begin
        Raise exception.Create('qryReportPlanner.Post: ' + e.Message);
      end;
    end;

end;

procedure TdmPhoenixIBLab.Refresh;
begin
  qryMasterStatini.Close;
  qryMasterStatini.Open;
  qryDetailLabEstintori.Close;
  qryDetailLabEstintori.Open;

end;

procedure TdmPhoenixIBLab.SetActual(const Value: integer);
begin
  FActual := Value;
end;

procedure TdmPhoenixIBLab.SetJsonResponse(const Value: string);
begin
  FJsonResponse := Value;
end;

procedure TdmPhoenixIBLab.SetLabPassword(const Value: string);
begin
  FLabPassword := Value;
end;

procedure TdmPhoenixIBLab.SetLabUrl(const Value: string);
begin
  FLabUrl := Value;
end;

procedure TdmPhoenixIBLab.SetLabUserName(const Value: string);
begin
  FLabUserName := Value;
end;

procedure TdmPhoenixIBLab.SetLastError(const Value: string);
begin
  FLastError := Value;
end;

procedure TdmPhoenixIBLab.SetLog(const Value: TStrings);
begin
  FLog := Value;
end;

procedure TdmPhoenixIBLab.SetRawResponse(const Value: string);
begin
  FRawResponse := Value;
end;

procedure TdmPhoenixIBLab.SetReports(const Value: integer);
begin
  FReports := Value;
end;

procedure TdmPhoenixIBLab.Startup;
begin
  tbLabEstintori.Close;
  sqlDeleteEstintori.Execute;
  sqlDeleteErrori.Execute;
  tbLabEstintori.Open;
  var
  a := tbLabEstintori.RecordCount;
  tbLabErrori.Open;
end;

procedure TdmPhoenixIBLab.StatoLavorazioni;
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

procedure TdmPhoenixIBLab.StoreError(aEstintore: TJsonObject);
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

procedure TdmPhoenixIBLab.UpdateData;
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

procedure TdmPhoenixIBLab.UpdateStatini;
begin
  // FDTransaction1.StartTransaction;
  sqlUpdatePronti.Execute;
  sqlUpdateRitirati.Execute;
  sqlDataStatini.Execute;
  spSetStatoStatini.ExecProc;
  sqlWhatsApp.Execute;
  sqlWaNumber.Execute;

  qryReportPlanner.Open;
  try
    qryReportPlanner.First;
    while not qryReportPlanner.Eof do
    begin
      qryReportPlanner.Edit;
      qryReportPlannerSTATO.AsInteger := qryReportPlannerSTATO.AsInteger;
      qryReportPlanner.Post;
      qryReportPlanner.Next;
    end;
  finally
    qryReportPlanner.Close;
  end;

end;


// ---------------------------------------------------------------------------------------------------------

end.
