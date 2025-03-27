-- CLIENTI NON CONFERMATI DEL MESE ---------------------------------------
SELECT CLIENTI.*
  FROM CLIENTI
WHERE ((CLIENTI.VISITA_FATTURAZIONE_ORDINARIA = :Mese)
OR MOD(CLIENTI.VISITA_FATTURAZIONE_ORDINARIA + 6,12) = :Mese)
AND NON_CONFERMATO = 'T'
ORDER BY DESCRIZIONE_SCHEDA

-- ELENCO DEI PREVENTIVI SOSTITUZIONE --------------------------------------
SELECT PREVENTIVI_SOST_ESTINTORI.ESTINTORE AS CHIAVE_ESTINTORE,PREVENTIVI.STATO AS STATO_PREVENTIVO
  FROM PREVENTIVI_SOST_ESTINTORI,PREVENTIVI
  WHERE ESTINTORE IN 
   (SELECT CHIAVE FROM ESTINTORI_CLIENTI
     WHERE ESTINTORI_CLIENTI.STATO = 'A')
    AND PREVENTIVI.CHIAVE = PREVENTIVI_SOST_ESTINTORI.PREVENTIVO

-- CLIENTI ATTIVI DEL MESE -------------------------------------------------
SELECT CLIENTI.*,AMMINISTRATORI.RAGIONE_SOCIALE AS NOME_AMMINISTRATORE,
       AMMINISTRATORI.ENTE_PUBBLICO AS ENTE_PUBBLICO
  FROM CLIENTI,AMMINISTRATORI
 WHERE ((CLIENTI.VISITA_FATTURAZIONE_ORDINARIA = :Mese)
OR MOD(CLIENTI.VISITA_FATTURAZIONE_ORDINARIA + 6,12) = :Mese)
   AND (CLIENTI.DISDETTATO = 'F')
   AND (CLIENTI.SOSPENSIONE_TEMPORANEA <> 'T')
   AND (CLIENTI.MANUALE = 'F')
   AND (CLIENTI.NON_CONFERMATO = 'F')
   AND ((DATA_DIFFERITA IS NULL) OR (DATA_DIFFERITA <= :UltimoGiorno))
   AND (AMMINISTRATORI.CHIAVE = CLIENTI.AMMINISTRATORE)
ORDER BY AMMINISTRATORI.RAGIONE_SOCIALE,AMMINISTRATORI.CHIAVE,CLIENTI.RAGIONE_SOCIALE

--- NOTE: ULTIMO GIORNO = ULTIMO GIORNO DEL MESE (:MESE) ma cosa è Data Differita? A cosa Serve? 


---------- selezione delle filiali dei clienti per la generazione delle fatture ai clienti -----------------
SELECT * FROM FILIALI_CLIENTI
 WHERE CLIENTE = :IdContratto
  AND ESCLUDI_DA_GENERAZIONE <> 'T'
ORDER BY NOME

SELECT VOCI_PREVENTIVI.*,
      (SELECT ID_PREVENTIVO FROM PREVENTIVI WHERE PREVENTIVI.CHIAVE = VOCI_PREVENTIVI.PREVENTIVO),
      (SELECT ANNO_PREVENTIVO FROM PREVENTIVI WHERE PREVENTIVI.CHIAVE = VOCI_PREVENTIVI.PREVENTIVO),
      (SELECT DATA_PREVENTIVO FROM PREVENTIVI WHERE PREVENTIVI.CHIAVE = VOCI_PREVENTIVI.PREVENTIVO)
  FROM VOCI_PREVENTIVI
 WHERE PREVENTIVO IN (SELECT CHIAVE FROM PREVENTIVI
WHERE STATO = 'K' AND FATTURA IS NULL AND ID_CLIENTE = :IdContratto)
  AND VOCE_VUOTA IS NULL
ORDER BY PREVENTIVO,ORDINAMENTO

-- quindi gira anche i preventivi oltre alle filiali. 

TContratto(TmpNode.Data).AddVoceFattura(TVoceDaFatturare.Create(True, '', attNone,
    Somma_N_Stringhe([TmpQuery.FieldByName('DESCRIZIONE').AsString,
    TmpQuery.FieldByName('IMPORTO').AsString, TmpQuery.FieldByName('UNITA_DI_MISURA').AsString,
    TmpQuery.FieldByName('IVA').AsString, TmpQuery.FieldByName('IMPORTO_IVATO').AsString,
    TmpQuery.FieldByName('QUANTITA').AsString, TmpQuery.FieldByName('CODICE').AsString,
    TmpQuery.FieldByName('CODICE_A_BARRE').AsString, TmpQuery.FieldByName('SCONTO').AsString,
    SostBoolean(TmpQuery.FieldByName('PRODOTTO').IsNull, '-1', TmpQuery.FieldByName('PRODOTTO')
              .AsString)]), False, 'Conferma d''ordine nr. ' + TmpQuery.FieldByName('ID_PREVENTIVO').AsString
              + '/' + TmpQuery.FieldByName('ANNO_PREVENTIVO').AsString + ' ' + 'del ' +
              FormatDateTime('dd/mm/yyyy', TmpQuery.FieldByName('DATA_PREVENTIVO').AsDate), '', -1,
              cntOrdinario, False));
			  
-----  se il flag è K cioè Konfermato infila le righe in fattura


-- ... E GENERA TUTTI I NODI DELLE FILIALI CORRELATE E DELLE ATTREZZATURE ECCETTO IL GRUPPO DI PRESSURIZZAZIONE

SELECT * FROM FILIALI_CLIENTI
 WHERE CLIENTE = :IdContratto
  AND ESCLUDI_DA_GENERAZIONE <> 'T'
ORDER BY NOME
 --  // ... E GENERA TUTTI I NODI DELLE FILIALI CORRELATE E DELLE ATTREZZATURE ECCETTO IL GRUPPO DI PRESSURIZZAZIONE
 ---> Cicla sui nodi per ogni filiale ------
-----------------------------------------------------------------------------------------------------------------------------------

if TContratto(TmpNode.Data).FAttrezzatureAbilitate.Estintori then            
              TmpQuery.ParamByName('IdContratto').AsInteger := TSingoloIntero(TmpNode.Data).Value;
              TmpQuery.ParamByName('IdFiliale').AsInteger := TSingoloIntero(TmpNode2.Data).Value;

SELECT ESTINTORI_CLIENTI.*,CAT_ESTINTORI.CO2,CAT_ESTINTORI.SENZA_SCADENZA FROM ESTINTORI_CLIENTI,CAT_ESTINTORI
 WHERE ESTINTORI_CLIENTI.CLIENTE = :IdContratto
   AND ESTINTORI_CLIENTI.FILIALE = :IdFiliale
   AND CAT_ESTINTORI.PERIODICITA_COLLAUDO <> 0
   AND CAT_ESTINTORI.PERIODICITA_REVISIONE <> 0
   AND ESTINTORI_CLIENTI.STATO = 'A' /* ID_ATTREZZATURA_ATTIVA */ 
   AND ESTINTORI_CLIENTI.TIPO_ESTINTORE = CAT_ESTINTORI.CHIAVE
   
 -----------------------------------------------------------------------------------------------------------------------------------
if TContratto(TmpNode.Data).FAttrezzatureAbilitate.Porte then
	SELECT * FROM PORTE_CLIENTI WHERE CLIENTE = :IdContratto AND STATO =  'A' /* ID_ATTREZZATURA_ATTIVA */ 
					AND FILIALE = :IdFiliale;
 -----------------------------------------------------------------------------------------------------------------------------------
if TContratto(TmpNode.Data).FAttrezzatureAbilitate.Porte then
	SELECT * FROM PORTE_CLIENTI WHERE CLIENTE = :IdContratto AND STATO =  'A' /* ID_ATTREZZATURA_ATTIVA */ 
					AND FILIALE = :IdFiliale;
 -----------------------------------------------------------------------------------------------------------------------------------
 SELECT * FROM BOCCHELLI,IDRANTI_CLIENTI
                 WHERE IDRANTI_CLIENTI.CHIAVE = BOCCHELLI.IDRANTE
                AND IDRANTI_CLIENTI.CLIENTE = :IdContratto AND IDRANTI_CLIENTI.STATO = 'A' /* ID_ATTREZZATURA_ATTIVA */ 
                AND BOCCHELLI.STATO  = 'A' /* ID_ATTREZZATURA_ATTIVA */ 
                AND IDRANTI_CLIENTI.FILIALE = :IdFiliale;
				
              TmpQuery.ParamByName('IdContratto').AsInteger := TSingoloIntero(TmpNode.Data).Value;
              TmpQuery.ParamByName('IdFiliale').AsInteger := TSingoloIntero(TmpNode2.Data).Value;
 -----------------------------------------------------------------------------------------------------------------------------------
 if TContratto(TmpNode.Data).FAttrezzatureAbilitate.Luci then			  
	SELECT * FROM PORTE_CLIENTI WHERE CLIENTE = :IdContratto AND STATO =  'A' /* ID_ATTREZZATURA_ATTIVA */ 
					AND FILIALE = :IdFiliale;		
 -----------------------------------------------------------------------------------------------------------------------------------
 if TContratto(TmpNode.Data).FAttrezzatureAbilitate.Fumi then
 	SELECT * FROM LUCI_CLIENTI WHERE CLIENTE = :IdContratto AND STATO =  'A' /* ID_ATTREZZATURA_ATTIVA */ 
					AND FILIALE = :IdFiliale;
 -----------------------------------------------------------------------------------------------------------------------------------
 --- prova dinamica 
  Procedure AddProveDinamicaInFattura(AQuery: TpFIBQuery; MESE: Integer; NodoContratto: TTreeNode);
  var
    PrimaVisita: Boolean;
    AContratto: TContratto;
  begin
    AContratto := TContratto(NodoContratto.Data);
    PrimaVisita := MESE = AContratto.MesePrimaVisita;
    if PrimaVisita then
    begin
	
      SELECT IDRANTI_CLIENTI.DESCRIZIONE AS DESCRIZIONE_IDRANTE, IDRANTI_CLIENTI.CHIAVE AS CHIAVE_IDRANTE, FILIALI_CLIENTI.NOME AS NOME_FILIALE,
        FROM IDRANTI_CLIENTI,FILIALI_CLIENTI WHERE IDRANTI_CLIENTI.FILIALE = FILIALI_CLIENTI.CHIAVE 
           AND IDRANTI_CLIENTI.PROVA_DINAMICA <> 0,
           AND FILIALI_CLIENTI.ESCLUDI_DA_GENERAZIONE <> 'T' AND IDRANTI_CLIENTI.STATO =  'A' /* ID_ATTREZZATURA_ATTIVA */ 
          AND IDRANTI_CLIENTI.CLIENTE = :IdCliente;
		  
      AQuery.ParamByName('IdCliente').AsInteger := AContratto.Chiave;
      try
        AQuery.ExecQuery;
        while not AQuery.Eof do
        begin
          AContratto.AddVoceFattura(TVoceDaFatturare.Create(False, '', attIdrante,
            'Impianto idrante ' + AQuery.FieldByName('DESCRIZIONE_IDRANTE').AsString, True,
            AQuery.FieldByName('NOME_FILIALE').AsString, '', AQuery.FieldByName('CHIAVE_IDRANTE').AsInteger,
            cntProvaDinamica, False));
          AQuery.Next;
        end;
      finally
        AQuery.Close;
      end;
    end;
  end;
  ---------------------------------------------------------------------------------------------------------------------------------
  
  Procedure CheckMeseEstintore(MESE, ANNO: Integer; NodoEstintore: TTreeNode);
  var
    ScadenzaRevQuestaVisita: TDateTime;
    ScadenzaRevProxVisita: TDateTime;
    MomentoAttuale: TDateTime;
    PrimaVisita: Boolean;
    AnEstintore: TEstintore;
    AContratto: TContratto;
    PeriodicitaCollaudo: Integer;
    PeriodicitaRevisione: Integer;
    Y, M, D: Word;
    // SostituzioneAdded      : Boolean;
  begin
    AnEstintore := TEstintore(NodoEstintore.Data);
    AContratto := TContratto(GetAncestor(NodoEstintore, 0).Data);
    GetUltimiCollRevEstintore(FQuery, AnEstintore.Categoria, AnEstintore.Chiave, AnEstintore.DataStartupColl,
      AnEstintore.DataStartupRev, AnEstintore.DataCollaudo, AnEstintore.DataRevisione, PeriodicitaCollaudo,
      PeriodicitaRevisione);

    PrimaVisita := MESE = AContratto.MesePrimaVisita;

    MomentoAttuale := EncodeDate(ANNO, MESE, 1);
    ScadenzaRevQuestaVisita := SumMonth(MomentoAttuale, 3);
    ScadenzaRevProxVisita := SumMonth(MomentoAttuale, 9);
    DecodeDate(ScadenzaRevQuestaVisita, Y, M, D);
    ScadenzaRevQuestaVisita := EncodeDate(Y, M, GetLengthMonth(M, Y));
    DecodeDate(ScadenzaRevProxVisita, Y, M, D);
    ScadenzaRevProxVisita := EncodeDate(Y, M, GetLengthMonth(M, Y));

    AnEstintore.FuoriServizio := AnEstintore.Scaduto(MomentoAttuale);

    -- Se siamo nella seconda visita dell'anno di sostituzione la effettuiamo
    DecodeDate(AnEstintore.DataSostituzione, Y, M, D);
    if (ANNO > Y) or ((ANNO = Y) and (MESE >= 6)) then
      AnEstintore.DaSostituire := True;

    -- Impostazione delle voci della fattura
    if AnEstintore.DaSostituire then
    begin
      AContratto.AddVoceFattura(TVoceDaFatturare.Create(False, AnEstintore.Matricola, attEstintore,
        'Sostituzione', False, TmpNode.Parent.Parent.Text, AnEstintore.Ubicazione, AnEstintore.Categoria,
        cntSostituzione, AnEstintore.EstintoreCO2));
      AContratto.AddVoceFattura(TVoceDaFatturare.Create(False, AnEstintore.Matricola, attEstintore,
        'Smaltimento', False, TmpNode.Parent.Parent.Text, AnEstintore.Ubicazione, AnEstintore.Categoria,
        cntSmaltimento, AnEstintore.EstintoreCO2));
      NodoEstintore.Text := NodoEstintore.Text + ' - ' + 'DA SOSTITUIRE';
    end
    else
    begin
      if AnEstintore.FuoriServizio then
        TmpNode.Text := TmpNode.Text + ' - FUORI SERVIZIO'
      else
      begin
        if ScadenzaRevQuestaVisita >= AnEstintore.DataCollaudo then
        begin
          TmpNode.Text := TmpNode.Text + ' - Revisione,Collaudo';
          AnEstintore.DaCollaudare := True;
          AnEstintore.DaRevisionare := True;
          AContratto.AddVoceFattura(TVoceDaFatturare.Create(False, AnEstintore.Matricola, attEstintore,
            'Nr.' + ' ' + IntToStr(AnEstintore.Progressivo), PrimaVisita, TmpNode.Parent.Parent.Text,
            AnEstintore.Ubicazione, AnEstintore.Categoria, cntRevisione, AnEstintore.EstintoreCO2));
          AContratto.AddVoceFattura(TVoceDaFatturare.Create(False, AnEstintore.Matricola, attEstintore,
            'Nr.' + ' ' + IntToStr(AnEstintore.Progressivo), PrimaVisita, TmpNode.Parent.Parent.Text,
            AnEstintore.Ubicazione, AnEstintore.Categoria, cntCollaudo, AnEstintore.EstintoreCO2));
        end
        else
        begin
          if ScadenzaRevQuestaVisita >= AnEstintore.DataRevisione then
          begin
            TmpNode.Text := TmpNode.Text + ' - Revisione';
            AnEstintore.DaRevisionare := True;
            AContratto.AddVoceFattura(TVoceDaFatturare.Create(False, AnEstintore.Matricola, attEstintore,
              'Nr. ' + IntToStr(AnEstintore.Progressivo), PrimaVisita, TmpNode.Parent.Parent.Text,
              AnEstintore.Ubicazione, AnEstintore.Categoria, cntRevisione, AnEstintore.EstintoreCO2));
            if AnEstintore.FEstintoreCO2 then
              AContratto.AddVoceFattura(TVoceDaFatturare.Create(False, AnEstintore.Matricola, attEstintore,
                'Nr. ' + IntToStr(AnEstintore.Progressivo), PrimaVisita, TmpNode.Parent.Parent.Text,
                AnEstintore.Ubicazione, AnEstintore.Categoria, cntSostituzioneValvolaEstintori,
                AnEstintore.EstintoreCO2));
          end
          else
          begin
            TmpNode.Text := TmpNode.Text + ' - ' + 'Ordinario';
            if PrimaVisita then
            begin
              AContratto.AddVoceFattura(TVoceDaFatturare.Create(False, AnEstintore.Matricola, attEstintore,
                'Nr. ' + IntToStr(AnEstintore.Progressivo), PrimaVisita, TmpNode.Parent.Parent.Text,
                AnEstintore.Ubicazione, AnEstintore.Categoria, cntOrdinario, AnEstintore.EstintoreCO2));
            end
            else
              AContratto.AddVoceFattura(TVoceDaFatturare.Create(False, AnEstintore.Matricola, attEstintore,
                'Nr. ' + IntToStr(AnEstintore.Progressivo), False, TmpNode.Parent.Parent.Text,
                AnEstintore.Ubicazione, AnEstintore.Categoria, cntOrdinario, AnEstintore.EstintoreCO2));
          end;
        end;
      end;
    end;
	
	-------------------------------------------------------------------------------------------------------------------------------------
	
	Procedure GetUltimiCollRevEstintore(AQuery: TpFIBQuery; IdCatEstintore: Integer; IdEstintore: Integer;
  DataStartupColl: TDateTime; DataStartupRev: TDateTime; var LastCollaudo: TDateTime;
  var LastRevisione: TDateTime; var ValiditaCollaudo: Integer; var ValiditaRevisione: Integer;
  ListaPeriodicita: TStringList = Nil);
var
  Index: Integer;
begin
  ValiditaCollaudo := 0;
  ValiditaRevisione := 0;

  if IdCatEstintore = -1 then --// SOLO SE NON HO ALLA BASE LA CATEGORIA DELL'ESTINTORE
    SELECT TIPO_ESTINTORE INTO IdCatEstintore FROM ESTINTORI_CLIENTI WHERE CHIAVE = :IdEstintore;

  -- nell'esempio Sopra in realtà questa procedura viene chiamata passando sempre nil e quindi qui non ci passo mai!!!
  if ListaPeriodicita <> Nil then
  begin
    -- Ricerca in ListaPeriodicita in base alla 'Categoria Estintore' la 'Periodicità' ma cosa è una Periodicità?
    Index := ListaPeriodicita.IndexOf(IntToStr(IdCatEstintore));
    if Index <> -1 then
    begin
      ValiditaCollaudo := Integer(ListaPeriodicita.Objects[Index]) div 1000;
      ValiditaRevisione := Integer(ListaPeriodicita.Objects[Index]) mod 1000;
    end;
  end;

  -- di conseguenza visto sopra ValiditaCollaudo è sempre 0 in questo Ciclo 
  if (ValiditaCollaudo = 0) or (ValiditaRevisione = 0) then
  begin
    CopyArrayInTStringList(AQuery.SQL, ['SELECT PERIODICITA_REVISIONE,PERIODICITA_COLLAUDO',
      '  FROM CAT_ESTINTORI', 'WHERE CHIAVE = ' + IntToStr(IdCatEstintore)]);
    try
      AQuery.ExecQuery;
      if not AQuery.Eof then
      begin
        ValiditaCollaudo := AQuery.FieldByName('PERIODICITA_COLLAUDO').AsInteger;
        ValiditaRevisione := AQuery.FieldByName('PERIODICITA_REVISIONE').AsInteger;
        if ListaPeriodicita <> Nil then
        begin
          if ListaPeriodicita.IndexOf(IntToStr(IdCatEstintore)) = -1 then
            ListaPeriodicita.AddObject(IntToStr(IdCatEstintore),
              TObject(ValiditaCollaudo * 1000 + ValiditaRevisione));
        end;
      end;
    finally
      AQuery.Close;
    end;
  end;

  if ValiditaCollaudo <> 0 then
    LastCollaudo := SumMonth(DataStartupColl, ValiditaCollaudo)
  else
    LastCollaudo := DataStartupColl;

  if ValiditaRevisione <> 0 then
    LastRevisione := SumMonth(DataStartupRev, ValiditaRevisione)
  else
    LastRevisione := DataStartupRev;
end;
 