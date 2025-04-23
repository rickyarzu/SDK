unit Phoenix.VCL.NodoFatture;

interface

uses Windows, Messages, SysUtils, Classes,
  // VCL
  Graphics, Controls, Forms, Dialogs, System.ImageList, ImgList,
  StdCtrls, ExtCtrls, Mask, ComCtrls, DB, pFIBQuery,
  // QR
  QuickRpt, QrOldStampaFattura, QRExport, QRNewXLSXFilt, QRWebFilt, QRPDFFilt,
  // ZLibs
  Globale,
  ZTStringsFunct, ZStringConvFunct, ZMathFunct, QrStampaFattura, ZDateFunct,
  ZFIBPlusNodoGenerico2;

Const
  FATT_STATO_PAGATO: Integer = 1;
  FATT_STATO_NON_PAGATO: Integer = 2;
  FATT_STATO_INSOLUTO: Integer = 3;

type
  TInfoContrattiXArretrati = class(TObject)
  public
    Chiave, Amministratore: Integer;
  end;

  TNodoFattura = class(TNodoGenerico)
    Constructor Create(Frame: TFrame; TableName: String; ListFields: TStringList; TheQuery: TpFIBQuery);
    Procedure Assign(Source: TNodoFattura);
  private
    FNumero: Word;
    FAnno: Word;
    FIdContratto: Integer;
    FIdAmministratore: Integer;
    FTag: Integer;
    FNomeAmministratore: String;
    FRagioneSociale: String;
    FData: TDateTime;
    FNonNumerare: Boolean;
    FFatturaElettronica: Boolean;
    FLoadImage: Boolean;
    FChiediSeRimandareFattElett: Boolean;
    Procedure FEliminaVoci;
    Procedure FCanRecordRowRateFatture(Row: Integer; var CanRecord: Boolean);
    Function FReadGenerazioneAutomatica: Integer;
    Procedure FWriteGenerazioneAutomatica(Value: Integer);
    Procedure FSetNomeAmministratore;
  protected
    Function FGetNewElement: TNodoGenerico; OverRide;
    Procedure FRegistraDati(NewIdentificatore: Integer); OverRide;
    Function FReadDescrizione: String; OverRide;
    Procedure FEliminaDatiLegati; OverRide;
  published
    Property Numero: Word Read FNumero;
    Property FatturaElettronica: Boolean Read FFatturaElettronica;
    Property Anno: Word Read FAnno;
    Property NonNumerare: Boolean Read FNonNumerare Write FNonNumerare;
    Property IdContratto: Integer Read FIdContratto;
    Property LoadImage: Boolean Read FLoadImage Write FLoadImage;
    Property Tag: Integer Read FTag Write FTag;
    Property IdAmministratore: Integer Read FIdAmministratore;
    Property NomeAmministratore: String Read FNomeAmministratore;
    Property Generalita: String Read FRagioneSociale;
    Property Data: TDateTime Read FData;
    Property ChiediSeRimandareFattElett: Boolean Read FChiediSeRimandareFattElett
      Write FChiediSeRimandareFattElett;
    Property GenerazioneAutomatica: Integer Read FReadGenerazioneAutomatica Write FWriteGenerazioneAutomatica;
    Procedure FDisponiDati; OverRide;
    Procedure FBuildPositionWhenRecord; OverRide;
    Procedure Clear; OverRide;
    Procedure Nuovo; OverRide;
    Procedure AfterDisponi; OverRide;
    Procedure AbilitaInserimento(Abilita: Boolean; DoSetFocus: Boolean = True); OverRide;
    Function DatiStampabili: Boolean; OverRide;
    Function DatiModificabili: Boolean; OverRide;
    Function DatiEsportabiliSuPdf: Boolean; OverRide;
    Function DatiEliminabili: Boolean; OverRide;
    Procedure Stampa(Preview: Boolean = True; PrinterIndex: Integer = -1); OverRide;
    Procedure EsportaSuPdf(FileName: string); OverRide;
    Procedure AfterRegistra; OverRide;
    Procedure EsportaSuPdfFilter(var APdfFilter: { TQrPdfFilter } TQRPDFDocumentFilter;
      FileName: String); OverRide;
    Function DatiSospendibili: Boolean; OverRide;
    Procedure BeforeDisponi; OverRide;
    Procedure LoadPercentuali;
  end;

implementation

// Implementazione TNodoFattura
Constructor TNodoFattura.Create(Frame: TFrame; TableName: String; ListFields: TStringList;
  TheQuery: TpFIBQuery);
var
  ARegistraGriglia: TRegistraGriglia;
begin
  Inherited Create(Frame, TableName, ListFields, TheQuery);
  FNomeAmministratore := '-';
  FChiediSeRimandareFattElett := False;
  FLoadImage := True;
  FNonNumerare := False;
  if (TheQuery <> Nil) and (TheQuery.Open) and (not TheQuery.Eof) then
  begin
    FNumero := TheQuery.FieldByName('ID_FATTURA').AsInteger;
    FAnno := TheQuery.FieldByName('ANNO_FATTURA').AsInteger;
    FFatturaElettronica := TheQuery.FieldByName('FATTURA_ELETTRONICA').AsString = TRUE_VALUE;
    if TheQuery.FieldByName('ID_CLIENTE').IsNull then
    begin
      FIdAmministratore := TheQuery.FieldByName('ID_AMMINISTRATORE').AsInteger;
      FIdContratto := -1;
    end
    else
    begin
      FIdContratto := TheQuery.FieldByName('ID_CLIENTE').AsInteger;
      FIdAmministratore := -1;
    end;
    FRagioneSociale := TheQuery.FieldByName('GENERALITA_CLIENTE').AsString;
    FData := TheQuery.FieldByName('DATA_FATTURA').AsDate;
    FSetNomeAmministratore;
  end;
  if FFrame <> Nil then
  begin
    ARegistraGriglia := CreateNewRegistraGriglia(TFRAME_FATTURE(FFrame).GRID_RATE, TABLERateFatture,
      REFFldRateFatture, FIELDSRateFatture, 'DATA', False, '', Nil, FCanRecordRowRateFatture,
      TFRAME_FATTURE(FFrame).FOnGridRateSelectCell, COLOR_RIGHE_DISPARI, COLOR_RIGHE_PARI);
    ARegistraGriglia.GadgetFields := 'MOVIMENTO';
    ARegistraGriglia.AfterDisposeRow := TFRAME_FATTURE(FFrame).FOnDisponiRowRateCorrelate;
    ARegistraGriglia.OnEmptyRow := TFRAME_FATTURE(FFrame).FonGridRateEmptyRow;
  end;
end;

Procedure TNodoFattura.AfterRegistra;
var
  FrameFattura: TFRAME_FATTURE;
  NomeFile: String;
  ADialog: TDLG_INVIO_EMAILS;
  IdAmministratore: Integer;
  MailAmministratore: String;
  Chiave: Integer;
  ExportDlg: TDLG_EXPORT_TO_MOBILE;
begin
  FrameFattura := TFRAME_FATTURE(FFrame);
  try
    if FrameFattura <> Nil then
    begin
      if (not FrameFattura.FRegistraPerGenerazione) and (not SystemInformation.ImportazioneDaTabletInCorso)
      then
      begin
        // Controllo se deve reinviare la fattura in caso di statino precedentemente inviato
        With FQuery do
        begin
          CopyArrayInTStringList(SQL, ['SELECT *', ' FROM STATINI', ' WHERE (STATINI.FATTURA = ' +
            IntToStr(FIdentificatore) + ' OR ', '  STATINI.CHIAVE IN (SELECT STATINO FROM FATTURE_ARRETRATE',
            ' WHERE FATTURA = ' + IntToStr(FIdentificatore) + '))',
            '   AND STATINI.ESPORTATO_SU_MOBILE = ''T''', '   AND STATINI.JSON_DA_MOBILE IS NULL']);
          try
            ExecQuery;
            if not Eof then
            begin
              Chiave := FieldByName('CHIAVE').AsInteger;
              Close;
              ExportDlg := TDLG_EXPORT_TO_MOBILE.Create(Nil);
              try
                ExportDlg.Init(FQuery, True, Chiave);
                ExportDlg.ShowModal;
              finally
                ExportDlg.Free;
              end;
            end;
          finally
            if Open then
              Close;
          end;
        end;
      end;
      if FrameFattura.NumerataInQuestaSessione and (not FrameFattura.FRegistraPerGenerazione) then
      begin
        // Invio mail con stampa di cortesia della fattura al cliente
        NomeFile := DIRECTORY_APPLICATION_DATA + '\' + OnlyAlfaDigit(Descrizione) + '.pdf';
        EsportaSuPdf(NomeFile);
        if FileExists(NomeFile) then
        begin
          if FIdAmministratore = -1 then
            IdAmministratore := StrToInt(GetDescrizioneRecord(FQuery, TABLEContratti, 'AMMINISTRATORE',
              'CHIAVE', IntToStr(FIdContratto), '-1'))
          else
            IdAmministratore := FIdAmministratore;
          MailAmministratore := GetDescrizioneRecord(FQuery, TABLEAmministratori, 'EMAIL', 'CHIAVE',
            IntToStr(IdAmministratore), '');
          if not GlobalLibra.DeveloperMode then
          begin
            if MailAmministratore <> '' then
            begin
              ADialog := TDLG_INVIO_EMAILS.Create(Nil);
              ADialog.Init(FQuery);
              try
                ADialog.Add(Trim(FrameFattura.GENERALITA_INTESTATARIO.Text), MailAmministratore, Descrizione,
                  NomeFile, FIdentificatore);
                ADialog.BTN_INVIO_EMAILS.OnClick(Nil);
              finally
                ADialog.Free;
              end;
            end
            else
              _ShowMessage(CAPTION_CHIUDI, CAPTION_MESSAGE,
                'Impossibile inviare copia di cortesia. Mail amministratore non presente');
          end
          else
            _ShowMessage(CAPTION_CHIUDI, CAPTION_MESSAGE, 'Invio mail disabilitato in modalità sviluppatore')
        end;
      end;
    end;
  except
    on E: Exception do
    begin
      _ShowMessage(CAPTION_CHIUDI, CAPTION_MESSAGE, E.Message);
      _ShowMessage(CAPTION_CHIUDI, CAPTION_MESSAGE, E.Message);
    end;
  end;
end;

Function TNodoFattura.DatiModificabili;
begin
  Result := True;
end;

Function TNodoFattura.DatiEliminabili;
begin
  Result := False;
  if GlobalLibra.DeveloperMode then
  begin
    Result := True;
    Exit;
  end;

  if DatiModificabili then
  begin
    if FNumero = 0 then
      Result := True
    else
    begin
      With FQuery do
      begin
        FIBPlusChangeSQL(FQuery, ['SELECT MAX(CAST(ANNO_FATTURA AS INTEGER) * 10000 + ID_FATTURA) AS MAXIM',
          ' FROM FATTURE']);
        if FFatturaElettronica then
          FQuery.SQL.Add('WHERE FATTURA_ELETTRONICA = ''T''')
        else
          FQuery.SQL.Add('WHERE FATTURA_ELETTRONICA <> ''T''');
        try
          ExecQuery;
          Result := (RecordCount <> 0) and (FieldByName('MAXIM').AsInteger <= ((FAnno * 10000) + FNumero));
        except
          on E: Exception do
          begin
            _ShowMessage(CAPTION_CHIUDI, CAPTION_MESSAGE, E.Message);
            _ShowMessage(CAPTION_CHIUDI, CAPTION_MESSAGE,
              'Impossibile ottenere la numerazione delle fatture');
          end;
        end;
        Close;
      end;
    end;

    if Result then
    begin
      With FQuery do
      begin
        CopyArrayInTStringList(SQL, ['SELECT COUNT(*)', '  FROM RATE_FATTURA',
          ' WHERE FATTURA = ' + IntToStr(FIdentificatore), '   AND MOVIMENTO IS NOT NULL']);
        try
          ExecQuery;
          Result := Fields[0].AsInteger = 0;
        finally
          Close;
        end;
      end;
    end;
  end;

end;

Function TNodoFattura.DatiEsportabiliSuPdf: Boolean;
begin
  Result := True;
end;

Function TNodoFattura.DatiStampabili: Boolean;
begin
  Result := True;
end;

Function TNodoFattura.DatiSospendibili: Boolean;
begin
  Result := True;
end;

Procedure TNodoFattura.EsportaSuPdf(FileName: string);

  Procedure OldEsportaSuPdf;
  var
    QR_FATTURA: TQR_OLD_STAMPA_FATTURA;
    PdfFilter: TQRPDFDocumentFilter;
  begin
    Inherited EsportaSuPdf(FileName);
    QR_FATTURA := TQR_OLD_STAMPA_FATTURA.Create(Nil);
    QR_FATTURA.Init(FQuery, FIdentificatore);
    PdfFilter := Nil;
    try
      PdfFilter := TQRPDFDocumentFilter.Create(FileName);
      QR_FATTURA.ExportToFilter(PdfFilter);
    finally
      if Assigned(PdfFilter) then
        PdfFilter.Free;
      QR_FATTURA.Free;
    end;
  end;

var
  QR_FATTURA: TQR_STAMPA_FATTURA;
  PdfFilter: TQRPDFDocumentFilter;
begin
  Inherited EsportaSuPdf(FileName);
  if (Anno <> 0) and TappullaConteggiFattureXGorla(FData) then
    OldEsportaSuPdf
  else
  begin
    QR_FATTURA := TQR_STAMPA_FATTURA.Create(Nil);
    QR_FATTURA.Init(FQuery, FIdentificatore);
    PdfFilter := Nil;
    try
      PdfFilter := TQRPDFDocumentFilter.Create(FileName);
      QR_FATTURA.ExportToFilter(PdfFilter);
    finally
      if Assigned(PdfFilter) then
        PdfFilter.Free;
      QR_FATTURA.Free;
    end;
  end;
end;

Procedure TNodoFattura.EsportaSuPdfFilter(var APdfFilter: { TQrPdfFilter } TQRPDFDocumentFilter;
  FileName: string);

  Procedure OldEsportaSuPdfFilter;
  var
    QR_FATTURA: TQR_OLD_STAMPA_FATTURA;
    OldUnit: TQRUnit;
  begin
    Inherited EsportaSuPdfFilter(APdfFilter, FileName);
    QR_FATTURA := TQR_OLD_STAMPA_FATTURA.Create(Nil);
    QR_FATTURA.Init(FQuery, FIdentificatore);
    try
      if APdfFilter = Nil then
      begin
        APdfFilter := TQRPDFDocumentFilter.Create(FileName);
        OldUnit := QR_FATTURA.Units;
        QR_FATTURA.Units := Native;
        APdfFilter.Start(Trunc(QR_FATTURA.Page.Width), Trunc(QR_FATTURA.Page.Length), QR_FATTURA.Font);
        QR_FATTURA.Units := OldUnit;
      end;
      QR_FATTURA.ExportToFilter(APdfFilter);
    finally
      QR_FATTURA.Free;
    end;
  end;

var
  QR_FATTURA: TQR_STAMPA_FATTURA;
  OldUnit: TQRUnit;
begin
  Inherited EsportaSuPdfFilter(APdfFilter, FileName);
  if TappullaConteggiFattureXGorla(FData) then
    OldEsportaSuPdfFilter
  else
  begin
    QR_FATTURA := TQR_STAMPA_FATTURA.Create(Nil);
    QR_FATTURA.Init(FQuery, FIdentificatore);
    try
      if APdfFilter = Nil then
      begin
        APdfFilter := TQRPDFDocumentFilter.Create(FileName);
        OldUnit := QR_FATTURA.Units;
        QR_FATTURA.Units := Native;
        APdfFilter.Start(Trunc(QR_FATTURA.Page.Width), Trunc(QR_FATTURA.Page.Length), QR_FATTURA.Font);
        QR_FATTURA.Units := OldUnit;
      end;
      QR_FATTURA.ExportToFilter(APdfFilter);
    finally
      QR_FATTURA.Free;
    end;
  end;
end;

Procedure TNodoFattura.Stampa(Preview: Boolean = True; PrinterIndex: Integer = -1);

  Procedure OldStampa;
  var
    QR_FATTURA: TQR_OLD_STAMPA_FATTURA;
  begin
    Inherited Stampa;
    QR_FATTURA := TQR_OLD_STAMPA_FATTURA.Create(Nil);
    QR_FATTURA.Init(FQuery, FIdentificatore);
    try
      if Preview then
        QR_FATTURA.Preview
      else
      begin
        if PrinterIndex <> -1 then
          QR_FATTURA.PrinterSettings.PrinterIndex := PrinterIndex;
        QR_FATTURA.Print;
      end;
    finally
      QR_FATTURA.Free;
    end;
  end;

var
  QR_FATTURA: TQR_STAMPA_FATTURA;
begin
  Inherited Stampa;
  if (Anno <> 0) and TappullaConteggiFattureXGorla(FData) then
    OldStampa
  else
  begin
    QR_FATTURA := TQR_STAMPA_FATTURA.Create(Nil);
    QR_FATTURA.Init(FQuery, FIdentificatore);
    try
      if Preview then
        QR_FATTURA.Preview
      else
      begin
        if PrinterIndex <> -1 then
          QR_FATTURA.PrinterSettings.PrinterIndex := PrinterIndex;
        QR_FATTURA.Print;
      end;
    finally
      QR_FATTURA.Free;
    end;
  end;
end;

Procedure TNodoFattura.FBuildPositionWhenRecord;
var
  Amministratore: String;
begin
  FPosition.Level := 5;
  if FIdContratto <> -1 then
    Amministratore := GetDescrizioneRecord(FQuery, TABLEContratti, 'AMMINISTRATORE', 'CHIAVE',
      IntToStr(FIdContratto), '-1')
  else
    Amministratore := IntToStr(FIdAmministratore);
  if GetDescrizioneRecord(FQuery, TABLEAmministratori, 'AMMINISTRATORE_CONDOMINIO', 'CHIAVE', Amministratore,
    '<???>') <> TRUE_VALUE then
    FPosition.Identificatori[0] := ID_TUTTI_I_CLIENTI
  else
    FPosition.Identificatori[0] := ID_AMMINISTRATORI;
  FPosition.Identificatori[1] := StrToInt(Amministratore);
  FPosition.Identificatori[2] := ID_DOCUMENTI_GENERICI;
  FPosition.Identificatori[3] := ID_TUTTE_LE_FATTURE;
  FPosition.Identificatori[4] := FAnno;
  FPosition.Identificatori[5] := FIdentificatore;
end;

Procedure TNodoFattura.Nuovo;
var
  Y, M, D: Word;
begin
  Inherited Nuovo;
  TFRAME_FATTURE(FFrame).FSetFatturaAs(FATTURA_CLASSICA);
  TFRAME_FATTURE(FFrame).FAmministratore := False;
  TFRAME_FATTURE(FFrame).PageControl1.ActivePageIndex := 0;
  TFRAME_FATTURE(FFrame).PClearCliente;
  TFRAME_FATTURE(FFrame).FHideRate(FNonNumerare);
  DecodeDate(Date, Y, M, D);
  TFRAME_FATTURE(FFrame).Data.Value := Date;
  TFRAME_FATTURE(FFrame).Anno.Value := Y;
  TFRAME_FATTURE(FFrame).PGetLastId;
  if TFRAME_FATTURE(FFrame).COND_PAGAMENTO.Items.Count > 0 then
  begin
    TFRAME_FATTURE(FFrame).COND_PAGAMENTO.Text := TFRAME_FATTURE(FFrame).COND_PAGAMENTO.Items[0];
    TFRAME_FATTURE(FFrame).COND_PAGAMENTO.OnChange(Nil);
  end;
  TFRAME_FATTURE(FFrame).FAttivaNumerazione(not FNonNumerare);
  TFRAME_FATTURE(FFrame).FCheckImageSemaforo;
  TFRAME_FATTURE(FFrame).FNodoCorrelato := Self;
end;

Procedure TNodoFattura.FDisponiDati;
var
  OldFrameAbilitato: Boolean;
begin
  With FQuery, TFRAME_FATTURE(FFrame) do
  begin
    PIdFattura := FIdentificatore;
    FNodoCorrelato := Self;
    FIVASuggerita := FieldByName('IVA_SUGGERITA').AsInteger;
    FAttivaNumerazione((not FieldByName('ID_FATTURA').IsNull) and (not FieldByName('ANNO_FATTURA').IsNull));

    if Numero.Visible then
    begin
      Numero.Value := FieldByName('ID_FATTURA').AsInteger;
      OldFrameAbilitato := FFrameAbilitato;
      FFrameAbilitato := False;
      try
        Anno.Value := FieldByName('ANNO_FATTURA').AsInteger;
      finally
        FFrameAbilitato := OldFrameAbilitato;
      end;
      PROGRESSIVO_INVIO.Caption := GetProgressivoInvio(True, Trunc(Numero.Value), Trunc(Anno.Value));
    end;

    if FieldByName('BODY_FATTURA_ELETTRONICA').IsNull then
      BODY_FATTURA_ELETTRONICA.Lines.Clear
    else
      BODY_FATTURA_ELETTRONICA.Lines.Text := FieldByName('BODY_FATTURA_ELETTRONICA').AsString;
    FSetFatturaAs(SostBooleanWithInt(FieldByName('FATTURA_ELETTRONICA').AsString = TRUE_VALUE,
      FATTURA_ELETTRONICA, FATTURA_CLASSICA));
    FHideRate(not Numero.Visible);

    FCodEnteFatturaElettronica := FieldByName('COD_ENTE_FATTURA_ELETTRONICA').AsString;
    ESIGIBILITA_IVA.ItemIndex := ESIGIBILITA_IVA.Items.IndexOf
      (FATT_ESIG_IVA_DESCRIZ[FattElettGetEsigibilitaFromCodice(FieldByName('ESIGIBILITA_IVA').AsString)]);
    NATURA_IVA.ItemIndex := NATURA_IVA.Items.IndexOf
      (FATT_NATURA_PAGAMENTI[TFatturaNaturaPagamenti(FieldByName('NATURA_IVA').AsInteger)]);
    Data.Value := FieldByName('DATA_FATTURA').AsDateTime;
    if FieldByName('ID_AMMINISTRATORE').IsNull then
      GENERALITA_INTESTATARIO.Tag := FieldByName('ID_CLIENTE').AsInteger
    else
      GENERALITA_INTESTATARIO.Tag := FieldByName('ID_AMMINISTRATORE').AsInteger;
    GENERALITA_INTESTATARIO.Enabled := True;
    FAmministratore := not FieldByName('ID_AMMINISTRATORE').IsNull;
    TITOLO_INTESTATARIO.Text := FieldByName('TITOLO_CLIENTE').AsString;
    CAUSALE.Text := FieldByName('CAUSALE').AsString;
    if FieldByName('GENERAZIONE_AUTOMATICA').IsNull then
      GenerazioneAutomatica := -1
    else
      GenerazioneAutomatica := FieldByName('GENERAZIONE_AUTOMATICA').AsInteger;
    GENERALITA_INTESTATARIO.Text := FieldByName('GENERALITA_CLIENTE').AsString;
    INDIRIZZO_INTESTATARIO.Text := FieldByName('INDIRIZZO_CLIENTE').AsString;
    NR_CIVICO.Text := FieldByName('NR_CIVICO').AsString;
    COMUNE_INTESTATARIO.Text := FieldByName('COMUNE_CLIENTE').AsString;
    COD_FISCALE.Text := Trim(FieldByName('COD_FISCALE').AsString);
    PROVINCIA_INTESTATARIO.ItemIndex := PROVINCIA_INTESTATARIO.Items.IndexOf
      (ElencoProvince.GetNomeProvincia(FieldByName('PROVINCIA_CLIENTE').AsString));
    CAP_INTESTATARIO.Text := FieldByName('CAP_CLIENTE').AsString;
    PARTITA_IVA.Text := Trim(FieldByName('PARTITA_IVA').AsString);
    DESTINATARIO.Text := FieldByName('DESTINAZIONE').AsString;
    INDIRIZZO_DESTINATARIO.Text := FieldByName('INDIRIZZO_DESTINAZIONE').AsString;
    COMUNE_DESTINATARIO.Text := FieldByName('COMUNE_DESTINAZIONE').AsString;
    PROVINCIA_DESTINATARIO.ItemIndex := PROVINCIA_DESTINATARIO.Items.IndexOf
      (ElencoProvince.GetNomeProvincia(FieldByName('PROVINCIA_DESTINAZIONE').AsString));
    CAP_DESTINATARIO.Text := FieldByName('CAP_DESTINAZIONE').AsString;
    CK_INVIO_EMAIL.Checked := FieldByName('INVIO_EMAIL').AsString = TRUE_VALUE;
    BANCA_APPOGGIO.Text := FieldByName('BANCA_APPOGGIO').AsString;
    ABI.Text := FieldByName('ABI').AsString;
    CAB.Text := FieldByName('CAB').AsString;
    RITENUTA.Value := FieldByName('RITENUTA').AsInteger;
    CK_FATT_ELETT_INVIATA.Checked := FieldByName('FATT_ELETT_INVIATA').AsString = TRUE_VALUE;

    if FieldByName('DOC_CORR_TIPO').AsString = ID_CORRELATO_CONTRATTO then
      CK_DOC_CONTRATTO.Checked := True
    else
    begin
      if FieldByName('DOC_CORR_TIPO').AsString = ID_CORRELATO_ORDINE then
        CK_DOC_ORDINE.Checked := True
      else
        CK_DOC_NONE.Checked := True;
    end;
    DOC_COR_ID_DOCUMENTO.Text := FieldByName('DOC_CORR_ID_DOCUMENTO').AsString;
    DOC_COR_DATA.Value := FieldByName('DOC_CORR_DATA').AsDate;
    DOC_COR_VOCE_RIFERIMENTO.Text := FieldByName('DOC_CORR_VOCE_RIFERIMENTO').AsString;
    DOC_COR_CIG.Text := FieldByName('DOC_CORR_CIG').AsString;
    DOC_COR_CUP.Text := FieldByName('DOC_CORR_CUP').AsString;
    DOC_COR_CONVENZIONE.Text := FieldByName('DOC_CORR_CONVENZIONE').AsString;

    NOTA_IN_FATTURA.Text := FieldByName('NOTE_IN_FATTURA').AsString;
    CK_ESENTE_IVA.Checked := FieldByName('ESENTE_IVA').AsString = TRUE_VALUE;
    if FieldByName('COND_PAGAMENTO').IsNull then
      COND_PAGAMENTO.ItemIndex := -1
    else
      COND_PAGAMENTO.ItemIndex := COND_PAGAMENTO.Items.IndexOfObject
        (TObject(FieldByName('COND_PAGAMENTO').AsInteger));
    CK_PRESENTATA_IN_BANCA.Checked := FieldByName('RIC_PRESENTATA').AsString = TRUE_VALUE;
    RIF_ORDINE.Text := FieldByName('RIF_VOSTRO_ORDINE').AsString;
    if FieldByName('DATA_ORDINE').IsNull then
      DATA_ORDINE.Clear
    else
      DATA_ORDINE.Value := FieldByName('DATA_ORDINE').AsDate;
    Close;
    COND_PAGAMENTOChange(Nil);
    if FAmministratore then
      CopyArrayInTStringList(SQL, ['SELECT RAGIONE_SOCIALE AS NOME_AMMINISTRATORE', ' FROM AMMINISTRATORI',
        'WHERE AMMINISTRATORI.CHIAVE = ' + IntToStr(GENERALITA_INTESTATARIO.Tag)])
    else
      CopyArrayInTStringList(SQL, ['SELECT AMMINISTRATORI.RAGIONE_SOCIALE AS NOME_AMMINISTRATORE',
        ' FROM AMMINISTRATORI', 'WHERE AMMINISTRATORI.CHIAVE = ',
        '(SELECT MAX(AMMINISTRATORE) FROM CLIENTI WHERE CLIENTI.CHIAVE = ' +
        IntToStr(GENERALITA_INTESTATARIO.Tag) + ')']);
    try
      ExecQuery;
      LB_AMMINISTRATORE_REALE.Caption := FieldByName('NOME_AMMINISTRATORE').AsString;
    finally
      Close;
    end;
  end;

  With FQuery, TFRAME_FATTURE(FFrame) do
  begin
    CopyArrayInTStringList(SQL, ['SELECT *', '  FROM FATT_ELETT_COMUNICAZIONI_SDI',
      ' WHERE FATTURA = ' + IntToStr(FIdentificatore), ' ORDER BY (DATA_INVIO + ORA_INVIO) DESC']);
    try
      ExecQuery;
      while not Eof do
      begin
        if GRID_STATO_FATTURE.Cells[COL_STOR_FATT_DATA_INVIO, GRID_STATO_FATTURE.LastRow].Date <> 0.0 then
        begin
          GRID_STATO_FATTURE.RowCount := GRID_STATO_FATTURE.RowCount + 1;
          GRID_STATO_FATTURE.EmptyRow(GRID_STATO_FATTURE.LastRow);
        end;
        if FieldByName('ESITO').AsString = FATT_ELETT_DECORRENZA_TERMINI then
          GRID_STATO_FATTURE.Cells[COL_STOR_FATT_SITUAZIONE, GRID_STATO_FATTURE.LastRow].IndexList :=
            IMG_DECORRENZA_TERMINI
        else
        begin
          if FieldByName('ESITO').AsString = FATT_ELETT_ESITO_FATT_PROCESSO_OK then
            GRID_STATO_FATTURE.Cells[COL_STOR_FATT_SITUAZIONE, GRID_STATO_FATTURE.LastRow].IndexList :=
              SostBooleanWithInt(IsValidName(FieldByName('SCARTO').AsString), IMG_ERRORE_RECAPITO,
              IMG_ESITO_OK)
          else
          begin
            if (FieldByName('ESITO').AsString = FATT_ELETT_ESITO_FATT_SCARTATA) or
              (FieldByName('ESITO').AsString = FATT_ELETT_ESITO_FATT_XML_ERROR) or
              (FieldByName('ESITO').AsString = FATT_ELETT_ESITO_RIFIUTATA) then
              GRID_STATO_FATTURE.Cells[COL_STOR_FATT_SITUAZIONE, GRID_STATO_FATTURE.LastRow].IndexList :=
                IMG_ESITO_SCARTATO
            else
            begin
              if FieldByName('ESITO').AsString = FATT_ELETT_ESITO_OK_MANUALE then
                GRID_STATO_FATTURE.Cells[COL_STOR_FATT_SITUAZIONE, GRID_STATO_FATTURE.LastRow].IndexList :=
                  IMG_CORREZIONE_MANUALE
              else
                GRID_STATO_FATTURE.Cells[COL_STOR_FATT_SITUAZIONE, GRID_STATO_FATTURE.LastRow].IndexList :=
                  IMG_ESITO_ATTESA;
            end;
          end;
        end;
        GRID_STATO_FATTURE.Cells[COL_STOR_FATT_MOTIVAZIONE, GRID_STATO_FATTURE.LastRow].Lines.Text :=
          FieldByName('SCARTO').AsString;
        GRID_STATO_FATTURE.Cells[COL_STOR_FATT_DATA_INVIO, GRID_STATO_FATTURE.LastRow].Date :=
          FieldByName('DATA_INVIO').AsDate;
        GRID_STATO_FATTURE.Cells[COL_STOR_FATT_ORA_INVIO, GRID_STATO_FATTURE.LastRow].Time :=
          FieldByName('ORA_INVIO').AsTime;
        GRID_STATO_FATTURE.Cells[COL_STOR_FATT_DATA_RICEZIONE, GRID_STATO_FATTURE.LastRow].Date :=
          FieldByName('DATA_RICEZIONE').AsDate;
        GRID_STATO_FATTURE.Cells[COL_STOR_FATT_ORA_RICEZIONE, GRID_STATO_FATTURE.LastRow].Time :=
          FieldByName('ORA_RICEZIONE').AsTime;
        GRID_STATO_FATTURE.Cells[COL_STOR_FATT_DATA_CONSEGNA, GRID_STATO_FATTURE.LastRow].Date :=
          FieldByName('DATA_CONSEGNA').AsDate;
        GRID_STATO_FATTURE.Cells[COL_STOR_FATT_ORA_CONSEGNA, GRID_STATO_FATTURE.LastRow].Time :=
          FieldByName('ORA_CONSEGNA').AsTime;
        GRID_STATO_FATTURE.Cells[COL_STOR_FATT_DATA_ESITO, GRID_STATO_FATTURE.LastRow].Date :=
          FieldByName('DATA_ESITO').AsDate;
        GRID_STATO_FATTURE.Cells[COL_STOR_FATT_ORA_ESITO, GRID_STATO_FATTURE.LastRow].Time :=
          FieldByName('ORA_ESITO').AsTime;
        GRID_STATO_FATTURE.Cells[COL_STOR_FATT_NOME_SUPPORTO, GRID_STATO_FATTURE.LastRow].Text :=
          FieldByName('NOME_SUPPORTO').AsString;
        GRID_STATO_FATTURE.Cells[COL_STOR_FATT_NOME_PROGRESSIVO, GRID_STATO_FATTURE.LastRow].Text :=
          FieldByName('NOME_PROGRESSIVO').AsString;
        GRID_STATO_FATTURE.Cells[COL_STOR_FATT_CHIAVE, GRID_STATO_FATTURE.LastRow].Tag :=
          FieldByName('CHIAVE').AsInteger;
        GRID_STATO_FATTURE.Cells[COL_STOR_FATT_BTN_RICEVUTA, GRID_STATO_FATTURE.LastRow].Text := 'Ricevuta';
        Next;
      end;
    finally
      Close;
    end;
    FCheckImageSemaforo;
  end;

  With FQuery do
  begin
    CopyArrayInTStringList(SQL, ['SELECT COUNT(*) FROM NOTE_DI_CREDITO WHERE FATTURA_NON_RISCOSSA = ' +
      IntToStr(FIdentificatore)]);
    try
      ExecQuery;
      TFRAME_FATTURE(FFrame).FFatturaInsoluta := Fields[0].AsInteger > 0;
    finally
      Close;
    end;
  end;

  TFRAME_FATTURE(FFrame).ClearGridVoci;

  try
    With FQuery, TFRAME_FATTURE(FFrame) do
    begin
      FIBPlusChangeSQL(FQuery, ['SELECT * FROM VOCI_FATTURE', 'WHERE VOCI_FATTURE.FATTURA = ' +
        IntToStr(FIdentificatore), 'ORDER BY ORDINAMENTO']);
      ExecQuery;
      While not Eof do
      begin
        if not FieldByName('VOCE_VUOTA').IsNull then
        begin
          GRID_VOCI.Cells[COL_VOCE_VUOTA, GRID_VOCI.RowCount - 1].Tag := VOCE_VUOTA;
          PSetRowProperties(GRID_VOCI.RowCount - 1);
          GRID_VOCI.Cells[COL_KEY_PRODOTTO, GRID_VOCI.RowCount - 1].Tag := PRODOTTO_NON_ASSEGNATO;
          GRID_VOCI.Cells[COL_PRODOTTO, GRID_VOCI.RowCount - 1].Lines.Text :=
            FieldByName('VOCE_VUOTA').AsString;
          GRID_VOCI.Cells[COL_CODICE_A_BARRE, GRID_VOCI.RowCount - 1].Text := '';
          GRID_VOCI.Cells[COL_QUANTITA, GRID_VOCI.RowCount - 1].Numeric := 0.0;
          GRID_VOCI.Cells[COL_IVATO, GRID_VOCI.RowCount - 1].Numeric := 0.0;
          GRID_VOCI.Cells[COL_IMPORTO, GRID_VOCI.RowCount - 1].Numeric := 0.0;
          GRID_VOCI.Cells[COL_IVA, GRID_VOCI.RowCount - 1].Numeric := 0.0;
          GRID_VOCI.Cells[COL_SCONTO, GRID_VOCI.RowCount - 1].Numeric := 0.0;
          GRID_VOCI.Cells[COL_UDM, GRID_VOCI.RowCount - 1].Text := '';
          GRID_VOCI.Cells[COL_CODICE, GRID_VOCI.RowCount - 1].Text := '';
          GRID_VOCI.Cells[COL_TOTALE, GRID_VOCI.RowCount - 1].Numeric := 0.0;
          GRID_VOCI.Cells[COL_TOTALE_IVATO, GRID_VOCI.RowCount - 1].Numeric := 0.0;
        end
        else
        begin
          GRID_VOCI.Cells[COL_VOCE_VUOTA, GRID_VOCI.RowCount - 1].Tag := VOCE_NORMALE;
          if FieldByName('PRODOTTO').IsNull then
            GRID_VOCI.Cells[COL_KEY_PRODOTTO, GRID_VOCI.RowCount - 1].Tag := PRODOTTO_NON_ASSEGNATO
          else
            GRID_VOCI.Cells[COL_KEY_PRODOTTO, GRID_VOCI.RowCount - 1].Tag := FieldByName('PRODOTTO')
              .AsInteger;
          GRID_VOCI.Cells[COL_PRODOTTO, GRID_VOCI.RowCount - 1].Lines.Text :=
            FieldByName('DESCRIZIONE').AsString;
          GRID_VOCI.Cells[COL_CODICE_A_BARRE, GRID_VOCI.RowCount - 1].Text :=
            FieldByName('CODICE_A_BARRE').AsString;
          GRID_VOCI.Cells[COL_QUANTITA, GRID_VOCI.RowCount - 1].Numeric :=
            CentsToReal(FieldByName('QUANTITA').AsInteger);
          if FieldByName('IMPORTO_IVATO').AsString = TRUE_VALUE then
          begin
            GRID_VOCI.Cells[COL_IVATO, GRID_VOCI.RowCount - 1].Numeric :=
              CentsToReal(FieldByName('IMPORTO').AsInteger);
            GRID_VOCI.Cells[COL_IMPORTO, GRID_VOCI.RowCount - 1].Numeric :=
              GetImportoFromIvato(CentsToReal(FieldByName('IMPORTO').AsInteger),
              FieldByName('IVA').AsInteger);
            GRID_VOCI.Cells[COL_IMPORTO_IVATO, GRID_VOCI.RowCount - 1].Tag := VALUE_IMPORTO_IVATO;
          end
          else
          begin
            GRID_VOCI.Cells[COL_IMPORTO, GRID_VOCI.RowCount - 1].Numeric :=
              CentsToReal(FieldByName('IMPORTO').AsInteger);
            GRID_VOCI.Cells[COL_IVATO, GRID_VOCI.RowCount - 1].Numeric :=
              GetIvatoFromImporto(CentsToReal(FieldByName('IMPORTO').AsInteger),
              FieldByName('IVA').AsInteger);
            GRID_VOCI.Cells[COL_IMPORTO_IVATO, GRID_VOCI.RowCount - 1].Tag := VALUE_IMPORTO_NON_IVATO;
          end;
          GRID_VOCI.Cells[COL_IVA, GRID_VOCI.RowCount - 1].Numeric := FieldByName('IVA').AsInteger;
          GRID_VOCI.Cells[COL_SCONTO, GRID_VOCI.RowCount - 1].Numeric := FieldByName('SCONTO').AsInteger;
          GRID_VOCI.Cells[COL_UDM, GRID_VOCI.RowCount - 1].Text := FieldByName('UNITA_DI_MISURA').AsString;
          GRID_VOCI.Cells[COL_CODICE, GRID_VOCI.RowCount - 1].Text := FieldByName('CODICE').AsString;
          PCalculateTotRiga(GRID_VOCI.RowCount - 1);
        end;

        GRID_VOCI.RowCount := GRID_VOCI.RowCount + 1;
        FEmptyRow(GRID_VOCI.RowCount - 1);
        FQuery.Next;
      end;
      CalculateImponibile;
    end;
  finally
    FQuery.Close;
  end;

  try
    if FLoadImage then
      With FQuery, TFRAME_FATTURE(FFrame) do
      begin
        CopyArrayInTStringList(SQL,
          ['SELECT * FROM SCANSIONI_FATTURE WHERE FATTURA = :Fattura ORDER BY PAGINA']);
        ParamByName('Fattura').AsInteger := FIdentificatore;
        ExecQuery;
        while not Eof do
        begin
          if FieldByName('IS_PDF').AsString <> TRUE_VALUE then
          begin
            FieldByName('IMMAGINE').SaveToFile(DIRECTORY_APPLICATION_DATA + '\Immagine.jpg');
            SCANSIONE_FATTURA.AddFile(DIRECTORY_APPLICATION_DATA + '\Immagine.jpg',
              FieldByName('TESTO').AsString, FieldByName('CHIAVE').AsInteger, -1,
              SostBooleanWithInt(FieldByName('INVIA_SDI').AsString = TRUE_VALUE, 1, 0));
          end
          else
          begin
            FieldByName('IMMAGINE').SaveToFile(DIRECTORY_APPLICATION_DATA + '\Documento.pdf');
            SCANSIONE_FATTURA.AddFile(DIRECTORY_APPLICATION_DATA + '\Documento.pdf',
              FieldByName('TESTO').AsString, FieldByName('CHIAVE').AsInteger, -1,
              SostBooleanWithInt(FieldByName('INVIA_SDI').AsString = TRUE_VALUE, 1, 0));
          end;
          Next;
        end;
      end;
  finally
    FQuery.Close;
  end;

  TFRAME_FATTURE(FFrame).PEnableButtons;
end;

Procedure TNodoFattura.BeforeDisponi;
begin
  TFRAME_FATTURE(FFrame).FDisposizioneInCorso := True;
end;

Procedure TNodoFattura.AfterDisponi;
var
  ListaNote: TObjectList;
  FRAME_NOTE: TFRAME_NOTE_DI_CREDITO;
  i, j: Integer;
Const
  COLOR_NOTA_DI_CREDITO: TColor = $009694F3;
begin
  TFRAME_FATTURE(FFrame).FDisposizioneInCorso := False;
  With TFRAME_FATTURE(FFrame), FQuery do
  begin
    ListaNote := TObjectList.Create;
    for i := GRID_RATE.FixedRows to GRID_RATE.LastRow do
      GRID_RATE.Cells[COL_FATT_ATTIVA_RATE_IS_NOTA, i].Tag := ROW_IS_RATA;

    FRAME_NOTE := TFRAME_NOTE_DI_CREDITO.Create(Nil);
    try
      FRAME_NOTE.InitFrame(FQuery, Nil);
      CopyArrayInTStringList(SQL, ['SELECT * FROM NOTE_DI_CREDITO WHERE FATTURA_NON_RISCOSSA = ' +
        IntToStr(FIdentificatore)]);
      ExecQuery;
      while not Eof do
      begin
        ListaNote.Add(TNodoNotaDiCredito.Create(FRAME_NOTE, TABLENoteDiCredito, FIELDSNoteDiCredito, FQuery));
        Next;
      end;
      Close;
      for i := 0 to ListaNote.Count - 1 do
      begin
        TNodoNotaDiCredito(ListaNote[i]).Disponi;
        TRegistraGriglia(GRID_RATE.AObject).InsertNewRow(GRID_RATE.FixedRows);
        GRID_RATE.Cells[COL_FATT_ATTIVA_RATE_DATA, GRID_RATE.FixedRows].Date := FRAME_NOTE.Data.Value;
        GRID_RATE.Cells[COL_FATT_ATTIVA_RATE_IMPORTO, GRID_RATE.FixedRows].Numeric := FRAME_NOTE.TotaleNota;
        GRID_RATE.Cells[COL_FATT_ATTIVA_RATE_DATA_PAGAMENTO, GRID_RATE.FixedRows].Date := 0.0;
        GRID_RATE.Cells[COL_FATT_ATTIVA_RATE_DESCRIZIONE, GRID_RATE.FixedRows].Text :=
          TNodoNotaDiCredito(ListaNote[i]).Descrizione;
        GRID_RATE.Cells[COL_FATT_ATTIVA_RATE_CASSA_CONTANTI, GRID_RATE.FixedRows].BoolValue := False;
        GRID_RATE.Cells[COL_FATT_ATTIVA_RATE_CASSA_ASSEGNI, GRID_RATE.FixedRows].BoolValue := False;
        GRID_RATE.Cells[COL_FATT_ATTIVA_RATE_CONTO_CORRENTE, GRID_RATE.FixedRows].IndexList := -1;

        GRID_RATE.Cells[COL_FATT_ATTIVA_RATE_IS_NOTA, GRID_RATE.FixedRows].Tag := ROW_IS_NOTA;
        for j := GRID_RATE.FixedCols to GRID_RATE.LastCol do
        begin
          GRID_RATE.Cells[j, GRID_RATE.FixedRows].ReadOnly := True;
          GRID_RATE.Cells[j, GRID_RATE.FixedRows].Settings.Brush.Color := COLOR_NOTA_DI_CREDITO;
        end;

      end;
    finally
      ListaNote.Clear;
      ListaNote.Free;
      FRAME_NOTE.Free;
      if Open then
        Close;
    end;

    FCalculateStatoPagamento;
  end;

end;

Procedure TNodoFattura.Clear;
var
  Y, M, D: Word;
begin
  Inherited Clear;
  With TFRAME_FATTURE(FFrame) do
  begin
    Numero.Value := 0.0;
    FNumerataInQuestaSessione := False;
    FTotaleFattura := 0.0;
    FIVASuggerita := SystemInformation.IVA;
    FCorrelaAPreventivo.Clear;
    LB_AMMINISTRATORE_REALE.Caption := '-';
    BODY_FATTURA_ELETTRONICA.Lines.Clear;
    FCodEnteFatturaElettronica := '';
    FNodoCorrelato := Nil;
    FFatturaInsoluta := False;
    DecodeDate(Now, Y, M, D);
    try
      Anno.Value := Y;
    except
    end;
    SCANSIONE_FATTURA.Clear;
    CK_ESENTE_IVA.Checked := False;
    ClearGridVoci;
    CK_FATT_ELETT_INVIATA.Checked := False;
    CK_INVIO_EMAIL.Checked := True;
    CalculateImponibile;
    PIdFattura := -1;
    TITOLO_INTESTATARIO.Text := 'Spett.le';
    COND_PAGAMENTO.ItemIndex := -1;
    COND_PAGAMENTO.OnChange(Nil);
    PROGRESSIVO_INVIO.Caption := '???';
    GenerazioneAutomatica := -1;
    FCalculateStatoPagamento;
    FLsStatiniImportati.Clear;
    FLsOrdiniImportati.Clear;
    ESIGIBILITA_IVA.ItemIndex := ESIGIBILITA_IVA.Items.IndexOf(FATT_ESIG_IVA_DESCRIZ[ivaImmediata]);
    NATURA_IVA.ItemIndex := NATURA_IVA.Items.IndexOf(FATT_NATURA_PAGAMENTI[natNonDefinito]);
    CK_DOC_NONE.Checked := True;
    CK_DOC_NONE.OnClick(Nil);
    GRID_STATO_FATTURE.Clear;
  end;
end;

Procedure TNodoFattura.FCanRecordRowRateFatture(Row: Integer; var CanRecord: Boolean);
begin
  CanRecord := (TFRAME_FATTURE(FFrame).GRID_RATE.Cells[COL_FATT_ATTIVA_RATE_DATA, Row].Date <> 0) and
    (TFRAME_FATTURE(FFrame).GRID_RATE.Cells[COL_FATT_ATTIVA_RATE_IMPORTO, Row].Numeric <> 0.0) and
    (TFRAME_FATTURE(FFrame).GRID_RATE.Cells[COL_FATT_ATTIVA_RATE_IS_NOTA, Row].Tag <> ROW_IS_NOTA);
end;

Function TNodoFattura.FReadGenerazioneAutomatica: Integer;
begin
  Result := TFRAME_FATTURE(FFrame).LB_GENERAZIONE.Tag;
end;

Procedure TNodoFattura.FWriteGenerazioneAutomatica(Value: Integer);
begin
  TFRAME_FATTURE(FFrame).LB_GENERAZIONE.Tag := Value;
  if Value = -1 then
    TFRAME_FATTURE(FFrame).LB_GENERAZIONE.Caption := 'Manuale'
  else
    TFRAME_FATTURE(FFrame).LB_GENERAZIONE.Caption := MesiInItaliano[Value mod 100] + '/' +
      IntToStr(Value div 100);
end;

Function TNodoFattura.FGetNewElement: TNodoGenerico;
begin
  Result := TNodoFattura.Create(FFrame, FTableName, FListFields, FQuery);
end;

Procedure TNodoFattura.FSetNomeAmministratore;
var
  TmpQuery: TpFIBQuery;
begin
  TmpQuery := TpFIBQuery.Create(Nil);
  FIBPlusCopyConnectionParams(FQuery, TmpQuery);
  try
    if FIdAmministratore <> -1 then
      FNomeAmministratore := GetDescrizioneRecord(TmpQuery, TABLEAmministratori, 'RAGIONE_SOCIALE', 'CHIAVE',
        IntToStr(FIdAmministratore), '-');
    if FIdContratto <> -1 then
    begin
      CopyArrayInTStringList(TmpQuery.SQL, ['SELECT RAGIONE_SOCIALE', '  FROM AMMINISTRATORI',
        ' WHERE CHIAVE IN', '(SELECT AMMINISTRATORE', '   FROM CLIENTI',
        '  WHERE CHIAVE = ' + IntToStr(FIdContratto) + ')']);
      TmpQuery.ExecQuery;
      if not TmpQuery.Eof then
        FNomeAmministratore := TmpQuery.Fields[0].AsString;
    end;
  finally
    TmpQuery.Close;
    TmpQuery.Free;
  end;
end;

Procedure TNodoFattura.FRegistraDati(NewIdentificatore: Integer);
var
  i: Integer;
  TmpQuery: TpFIBQuery;
begin
  if FChiediSeRimandareFattElett then
    if TFRAME_FATTURE(FFrame).CK_FATT_ELETT_INVIATA.Checked and
      (TFRAME_FATTURE(FFrame).LB_SBARRA.Tag = FATTURA_ELETTRONICA) then
      TFRAME_FATTURE(FFrame).CK_FATT_ELETT_INVIATA.Checked :=
        not Conferma(CAPTION_MESSAGE, 'Inviare nuovamante la fattura elettronica?');

  SystemInformation.SomeFatturaRegistrata := True;

  if TFRAME_FATTURE(FFrame).Numero.Visible then
  begin
    TmpQuery := TpFIBQuery.Create(Nil);
    try
      FIBPlusCopyConnectionParams(FQuery, TmpQuery);
      CopyArrayInTStringList(TmpQuery.SQL,
        ['SELECT COUNT(*) FROM FATTURE WHERE ANNO_FATTURA = :Anno AND ID_FATTURA = :IdFattura AND FATTURA_ELETTRONICA = :FatturaElettronica']
        );
      TmpQuery.ParamByName('Anno').AsInteger := Trunc(TFRAME_FATTURE(FFrame).Anno.Value);
      TmpQuery.ParamByName('IdFattura').AsInteger := Trunc(TFRAME_FATTURE(FFrame).Numero.Value);
      TmpQuery.ParamByName('FatturaElettronica').AsString :=
        SostBoolean(TFRAME_FATTURE(FFrame).LB_SBARRA.Tag = FATTURA_ELETTRONICA, TRUE_VALUE, FALSE_VALUE);
      TmpQuery.ExecQuery;
      if IsNuovo then
      begin
        if TmpQuery.Fields[0].AsInteger > 0 then
          Raise Exception.Create('Fattura già inserita');
      end
      else
      begin
        if TmpQuery.Fields[0].AsInteger > 1 then
          Raise Exception.Create('Fattura già inserita');
      end;
    finally
      TmpQuery.Free;
    end;
  end;
  With FQuery, TFRAME_FATTURE(FFrame) do
  begin
    if (IsNuovo) and (NonNumerare) then
    begin
      ParamByName('ID_FATTURA').Clear;
      ParamByName('ANNO_FATTURA').Clear;
      ParamByName('FATT_ELETT_FOR_UNIQUE_KEY').Clear;
    end
    else
    begin
      if Numero.Visible then
      begin
        ParamByName('ID_FATTURA').AsInteger := Trunc(Numero.Value);
        ParamByName('ANNO_FATTURA').AsInteger := Trunc(Anno.Value);
        ParamByName('FATT_ELETT_FOR_UNIQUE_KEY').AsString := SostBoolean(LB_SBARRA.Tag = FATTURA_ELETTRONICA,
          TRUE_VALUE, FALSE_VALUE);
      end
      else
      begin
        ParamByName('ID_FATTURA').Clear;
        ParamByName('ANNO_FATTURA').Clear;
        ParamByName('FATT_ELETT_FOR_UNIQUE_KEY').Clear;
      end;
    end;
    ParamByName('DATA_FATTURA').AsDateTime := Data.Value;
    ParamByName('DA_ESPORTARE_SUL_WEB').AsString := TRUE_VALUE;
    ParamByName('ESENTE_IVA').AsString := SostBoolean(CK_ESENTE_IVA.Checked, TRUE_VALUE, FALSE_VALUE);
    ParamByName('NOTE_IN_FATTURA').AsString := NOTA_IN_FATTURA.Text;
    ParamByName('RITENUTA').AsInteger := Trunc(RITENUTA.Value);
    ParamByName('INVIO_EMAIL').AsString := SostBoolean(CK_INVIO_EMAIL.Checked, TRUE_VALUE, FALSE_VALUE);
    ParamByName('FATTURA_ELETTRONICA').AsString := SostBoolean(LB_SBARRA.Tag = FATTURA_ELETTRONICA,
      TRUE_VALUE, FALSE_VALUE);
    ParamByName('RIC_PRESENTATA').AsString := SostBoolean(CK_PRESENTATA_IN_BANCA.Checked, TRUE_VALUE,
      FALSE_VALUE);
    ParamByName('FATT_ELETT_INVIATA').AsString := SostBoolean(CK_FATT_ELETT_INVIATA.Checked, TRUE_VALUE,
      FALSE_VALUE);
    if FAmministratore then
    begin
      ParamByName('ID_AMMINISTRATORE').AsInteger := GENERALITA_INTESTATARIO.Tag;
      ParamByName('ID_CLIENTE').Clear;
    end
    else
    begin
      ParamByName('ID_CLIENTE').AsInteger := GENERALITA_INTESTATARIO.Tag;
      ParamByName('ID_AMMINISTRATORE').Clear;
    end;
    ParamByName('COD_ENTE_FATTURA_ELETTRONICA').AsString := FCodEnteFatturaElettronica;
    FIBPlusSaveTStrings(FQuery, 'BODY_FATTURA_ELETTRONICA', BODY_FATTURA_ELETTRONICA.Lines);
    ParamByName('TITOLO_CLIENTE').AsString := TITOLO_INTESTATARIO.Text;
    if LB_GENERAZIONE.Tag = -1 then
      ParamByName('GENERAZIONE_AUTOMATICA').Clear
    else
      ParamByName('GENERAZIONE_AUTOMATICA').AsInteger := LB_GENERAZIONE.Tag;
    ParamByName('GENERALITA_CLIENTE').AsString := GENERALITA_INTESTATARIO.Text;
    ParamByName('NR_CIVICO').AsString := NR_CIVICO.Text;
    ParamByName('ESIGIBILITA_IVA').AsString := FATT_ESIG_IVA_CODICI
      [FattElettGetEsigibilitaIVAFromDescrizione(ESIGIBILITA_IVA.Items[ESIGIBILITA_IVA.ItemIndex])];
    ParamByName('NATURA_IVA').AsInteger :=
      Integer(FattElettGetNaturaPagamentiFromDescrizione(NATURA_IVA.Items[NATURA_IVA.ItemIndex]));
    ParamByName('INDIRIZZO_CLIENTE').AsString := INDIRIZZO_INTESTATARIO.Text;
    ParamByName('COD_FISCALE').AsString := COD_FISCALE.Text;
    ParamByName('COMUNE_CLIENTE').AsString := COMUNE_INTESTATARIO.Text;
    if PROVINCIA_INTESTATARIO.ItemIndex = -1 then
      ParamByName('PROVINCIA_CLIENTE').Clear
    else
      ParamByName('PROVINCIA_CLIENTE').AsString :=
        ElencoProvince.GetTarga(PROVINCIA_INTESTATARIO.Items[PROVINCIA_INTESTATARIO.ItemIndex]);
    ParamByName('CAP_CLIENTE').AsString := CAP_INTESTATARIO.Text;
    ParamByName('PARTITA_IVA').AsString := PARTITA_IVA.Text;
    ParamByName('DESTINAZIONE').AsString := DESTINATARIO.Text;
    ParamByName('INDIRIZZO_DESTINAZIONE').AsString := INDIRIZZO_DESTINATARIO.Text;
    ParamByName('COMUNE_DESTINAZIONE').AsString := COMUNE_DESTINATARIO.Text;
    if PROVINCIA_DESTINATARIO.ItemIndex = -1 then
      ParamByName('PROVINCIA_DESTINAZIONE').Clear
    else
      ParamByName('PROVINCIA_DESTINAZIONE').AsString :=
        ElencoProvince.GetTarga(PROVINCIA_DESTINATARIO.Items[PROVINCIA_DESTINATARIO.ItemIndex]);
    ParamByName('CAP_DESTINAZIONE').AsString := CAP_DESTINATARIO.Text;
    ParamByName('BANCA_APPOGGIO').AsString := BANCA_APPOGGIO.Text;
    ParamByName('ABI').AsString := ABI.Text;
    ParamByName('CAB').AsString := CAB.Text;
    ParamByName('IVA_SUGGERITA').AsInteger := FIVASuggerita;
    ParamByName('DOC_CORR_ID_DOCUMENTO').AsString := DOC_COR_ID_DOCUMENTO.Text;
    ParamByName('DOC_CORR_DATA').AsDate := DOC_COR_DATA.Value;
    ParamByName('DOC_CORR_VOCE_RIFERIMENTO').AsString := DOC_COR_VOCE_RIFERIMENTO.Text;
    ParamByName('DOC_CORR_CIG').AsString := DOC_COR_CIG.Text;
    ParamByName('DOC_CORR_CUP').AsString := DOC_COR_CUP.Text;
    ParamByName('DOC_CORR_CONVENZIONE').AsString := DOC_COR_CONVENZIONE.Text;
    if CK_DOC_CONTRATTO.Checked then
      ParamByName('DOC_CORR_TIPO').AsString := ID_CORRELATO_CONTRATTO
    else
    begin
      if CK_DOC_ORDINE.Checked then
        ParamByName('DOC_CORR_TIPO').AsString := ID_CORRELATO_ORDINE
      else
        ParamByName('DOC_CORR_TIPO').AsString := ID_NO_DOC_CORRELATO;
    end;

    if COND_PAGAMENTO.ItemIndex = -1 then
      ParamByName('COND_PAGAMENTO').Clear
    else
      ParamByName('COND_PAGAMENTO').AsInteger :=
        Integer(COND_PAGAMENTO.Items.Objects[COND_PAGAMENTO.ItemIndex]);
    ParamByName('RIF_VOSTRO_ORDINE').AsString := RIF_ORDINE.Text;
    if not DATA_ORDINE.IsDateValid then
      ParamByName('DATA_ORDINE').Clear
    else
      ParamByName('DATA_ORDINE').AsDate := DATA_ORDINE.Value;
    FIBPlusSaveTStrings(FTheQuery, 'CAUSALE', CAUSALE.Lines);
    ExecQuery;
    FOrderChanged := (FNumero <> ParamByName('ID_FATTURA').AsInteger) or
      (FAnno <> ParamByName('ANNO_FATTURA').AsInteger);
    FNumero := ParamByName('ID_FATTURA').AsInteger;
    FAnno := ParamByName('ANNO_FATTURA').AsInteger;
    FFatturaElettronica := ParamByName('FATTURA_ELETTRONICA').AsString = TRUE_VALUE;
    if ParamByName('ID_CLIENTE').IsNull then
    begin
      FIdAmministratore := ParamByName('ID_AMMINISTRATORE').AsInteger;
      FIdContratto := -1;
    end
    else
    begin
      FIdContratto := ParamByName('ID_CLIENTE').AsInteger;
      FIdAmministratore := -1;
    end;
    FRagioneSociale := ParamByName('GENERALITA_CLIENTE').AsString;
    FData := ParamByName('DATA_FATTURA').AsDate;
    FSetNomeAmministratore;
  end;

  With FQuery, TFRAME_FATTURE(FFrame) do
  begin
    for i := 0 to FLsStatiniImportati.Count - 1 do
    begin
      CopyArrayInTStringList(SQL, ['UPDATE STATINI_DA_TABLET SET STATO = ''' +
        ID_DBASE_STATO_STATINI_DA_TABLET[stsGestito] + ''' WHERE CHIAVE = ' + FLsStatiniImportati[i]]);
      ExecQuery;
    end;
    for i := 0 to FLsOrdiniImportati.Count - 1 do
    begin
      CopyArrayInTStringList(SQL, ['UPDATE ORDINI_DA_TABLET SET GESTITO = ''T'' WHERE CHIAVE = ' +
        FLsOrdiniImportati[i]]);
      ExecQuery;
    end;
  end;

  With FQuery, TFRAME_FATTURE(FFrame) do
    for i := 0 to FCorrelaAPreventivo.Count - 1 do
    begin
      CopyArrayInTStringList(SQL, ['UPDATE PREVENTIVI ', ' SET FATTURA = ' + IntToStr(NewIdentificatore) +
        ' WHERE CHIAVE = ' + FCorrelaAPreventivo[i]]);
      ExecQuery;
    end;

  // Elimina le vecchie voci
  FEliminaVoci;

  With FQuery, TFRAME_FATTURE(FFrame) do
  begin
    for i := GRID_VOCI.FixedRows to GRID_VOCI.RowCount - 1 do
      if FCanRecordRow(i) then
      begin
        FIBPlusChangeSQL(FQuery, ['INSERT INTO VOCI_FATTURE ',
          '(FATTURA,CODICE,ORDINAMENTO,IMPORTO,QUANTITA,PRODOTTO,IVA,UNITA_DI_MISURA,CODICE_A_BARRE,IMPORTO_IVATO,SCONTO,VOCE_VUOTA,DESCRIZIONE)',
          ' VALUES',
          '(:FATTURA,:CODICE,:ORDINAMENTO,:IMPORTO,:QUANTITA,:PRODOTTO,:IVA,:UNITA_DI_MISURA,:CODICE_A_BARRE,:IMPORTO_IVATO,:SCONTO,:VOCE_VUOTA,:DESCRIZIONE)']
          );
        ParamByName('ORDINAMENTO').AsInteger := i - GRID_VOCI.FixedRows;
        ParamByName('FATTURA').AsInteger := NewIdentificatore;
        if GRID_VOCI.Cells[COL_IMPORTO_IVATO, i].Tag = VALUE_IMPORTO_NON_IVATO then
        begin
          ParamByName('IMPORTO').AsInteger := RealToCents(GRID_VOCI.Cells[COL_IMPORTO, i].Numeric);
          ParamByName('IMPORTO_IVATO').AsString := FALSE_VALUE
        end
        else
        begin
          ParamByName('IMPORTO').AsInteger := RealToCents(GRID_VOCI.Cells[COL_IVATO, i].Numeric);
          ParamByName('IMPORTO_IVATO').AsString := TRUE_VALUE
        end;
        ParamByName('QUANTITA').AsInteger := RealToCents(GRID_VOCI.Cells[COL_QUANTITA, i].Numeric);
        if IsSeparatore(i) then
        begin
          ParamByName('PRODOTTO').Clear;
          ParamByName('DESCRIZIONE').Clear;
        end
        else
        begin
          if GRID_VOCI.Cells[COL_KEY_PRODOTTO, i].Tag = PRODOTTO_NON_ASSEGNATO then
            ParamByName('PRODOTTO').Clear
          else
            ParamByName('PRODOTTO').AsInteger := GRID_VOCI.Cells[COL_KEY_PRODOTTO, i].Tag;
          ParamByName('DESCRIZIONE').AsString := GRID_VOCI.Cells[COL_PRODOTTO, i].Lines.Text;
        end;
        ParamByName('IVA').AsInteger := Trunc(GRID_VOCI.Cells[COL_IVA, i].Numeric);
        ParamByName('UNITA_DI_MISURA').AsString := GRID_VOCI.Cells[COL_UDM, i].Text;
        ParamByName('CODICE').AsString := GRID_VOCI.Cells[COL_CODICE, i].Text;
        ParamByName('CODICE_A_BARRE').AsString := GRID_VOCI.Cells[COL_CODICE_A_BARRE, i].Text;
        ParamByName('SCONTO').AsInteger := Trunc(GRID_VOCI.Cells[COL_SCONTO, i].Numeric);
        if IsSeparatore(i) then
          ParamByName('VOCE_VUOTA').AsString := GRID_VOCI.Cells[COL_PRODOTTO, i].Lines.Text
        else
          ParamByName('VOCE_VUOTA').Clear;
        ExecQuery;
      end;
  end;

  TFRAME_FATTURE(FFrame).FAddRataResiduo;
  TFRAME_FATTURE(FFrame).FNewIdentificatore := NewIdentificatore;
  TFRAME_FATTURE(FFrame).SCANSIONE_FATTURA.GetAllData;
end;

Function TNodoFattura.FReadDescrizione: String;
begin
  if FIdentificatore = -1 then
    Result := '<Nuova fattura>'
  else
  begin
    if FAnno = 0 then
      Result := 'Avviso di fattura - ' + FRagioneSociale
    else if FAnno >= 2019 then
      Result := 'Fattura nr. ' + GetProgressivoInvio(True, FNumero, FAnno) + ' - ' + FRagioneSociale
    else
      Result := 'Fattura nr. ' + FormatFloat('0000', FNumero) + SostBoolean(FFatturaElettronica, 'E/', '/') +
        FormatFloat('00', FAnno mod 100) + ' - ' + FRagioneSociale;
  end;
end;

Procedure TNodoFattura.FEliminaVoci;
begin
  With FQuery do
  begin
    FIBPlusChangeSQL(FQuery, ['DELETE FROM VOCI_FATTURE WHERE FATTURA = ' + IntToStr(FIdentificatore)]);
    ExecQuery;
  end;
end;

Procedure TNodoFattura.FEliminaDatiLegati;
begin
  With FQuery do
  begin
    FIBPlusChangeSQL(FQuery, ['UPDATE STATINI_DA_TABLET SET FATTURA = NULL WHERE FATTURA = ' +
      IntToStr(FIdentificatore)]);
    ExecQuery;
    FIBPlusChangeSQL(FQuery, ['UPDATE STATINI SET FATTURA = NULL WHERE FATTURA = ' +
      IntToStr(FIdentificatore)]);
    ExecQuery;
    FIBPlusChangeSQL(FQuery, ['DELETE FROM FATTURE_ARRETRATE WHERE FATTURA = ' + IntToStr(FIdentificatore)]);
    ExecQuery;
    FIBPlusChangeSQL(FQuery, ['UPDATE PREVENTIVI SET FATTURA = NULL WHERE FATTURA = ' +
      IntToStr(FIdentificatore)]);
    ExecQuery;
    FIBPlusChangeSQL(FQuery, ['DELETE FROM SCANSIONI_FATTURE WHERE FATTURA = ' + IntToStr(FIdentificatore)]);
    ExecQuery;
    FIBPlusChangeSQL(FQuery, ['DELETE FROM FATT_ELETT_COMUNICAZIONI_SDI WHERE FATTURA = ' +
      IntToStr(FIdentificatore)]);
    ExecQuery;
    FIBPlusChangeSQL(FQuery, ['DELETE FROM RATE_FATTURA WHERE FATTURA = ' + IntToStr(FIdentificatore)]);
    ExecQuery;
  end;
  FEliminaVoci;
end;

Procedure TNodoFattura.AbilitaInserimento(Abilita: Boolean; DoSetFocus: Boolean = True);
begin
  Inherited AbilitaInserimento(Abilita, DoSetFocus);
  TFRAME_FATTURE(FFrame).AbilitaEditing(Abilita);
  if DoSetFocus { Abilita } then
    TFRAME_FATTURE(FFrame).SetObjFocus;
end;

Procedure TNodoFattura.Assign(Source: TNodoFattura);
begin
  FIdentificatore := Source.Identificatore;
  FNumero := Source.Numero;
  FIdContratto := Source.IdContratto;
  FIdAmministratore := Source.IdAmministratore;
  FNomeAmministratore := Source.NomeAmministratore;
  FRagioneSociale := Source.Generalita;
  FAnno := Source.Anno;
  FFatturaElettronica := Source.FatturaElettronica;
  FData := Source.FData;
end;

end.
