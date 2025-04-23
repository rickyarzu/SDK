-- CLIENTI NON CONFERMATI DEL MESE ---------------------------------------
SELECT CLIENTI.*
  FROM CLIENTI
WHERE ((CLIENTI.VISITA_FATTURAZIONE_ORDINARIA = :Mese)
OR MOD(CLIENTI.VISITA_FATTURAZIONE_ORDINARIA + 6,12) = :Mese)
AND NON_CONFERMATO = 'T'
ORDER BY DESCRIZIONE_SCHEDA

-- ELENCO DEI PREVENTIVI SOSTITUZIONE -------------------------------------- **** DEPRECATO *******
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
--ESTINTORI_CLIENTI---------------------------------------------------------------------------------------------------------------------------------

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
   
 --PORTE_CLIENTI---------------------------------------------------------------------------------------------------------------------------------
if TContratto(TmpNode.Data).FAttrezzatureAbilitate.Porte then
	SELECT * FROM PORTE_CLIENTI WHERE CLIENTE = :IdContratto AND STATO =  'A' /* ID_ATTREZZATURA_ATTIVA */ 
					AND FILIALE = :IdFiliale;
 --BOCCHELLI---------------------------------------------------------------------------------------------------------------------------------
 SELECT * FROM BOCCHELLI,IDRANTI_CLIENTI
                 WHERE IDRANTI_CLIENTI.CHIAVE = BOCCHELLI.IDRANTE
                AND IDRANTI_CLIENTI.CLIENTE = :IdContratto AND IDRANTI_CLIENTI.STATO = 'A' /* ID_ATTREZZATURA_ATTIVA */ 
                AND BOCCHELLI.STATO  = 'A' /* ID_ATTREZZATURA_ATTIVA */ 
                AND IDRANTI_CLIENTI.FILIALE = :IdFiliale;
				
              TmpQuery.ParamByName('IdContratto').AsInteger := TSingoloIntero(TmpNode.Data).Value;
              TmpQuery.ParamByName('IdFiliale').AsInteger := TSingoloIntero(TmpNode2.Data).Value;
 --LUCI_CLIENTI---------------------------------------------------------------------------------------------------------------------------------
 if TContratto(TmpNode.Data).FAttrezzatureAbilitate.Luci then			  
	SELECT * FROM LUCI_CLIENTI WHERE CLIENTE = :IdContratto AND STATO =  'A' /* ID_ATTREZZATURA_ATTIVA */ 
					AND FILIALE = :IdFiliale;		
 --FUMO_CLIENTI---------------------------------------------------------------------------------------------------------------------------------
 if TContratto(TmpNode.Data).FAttrezzatureAbilitate.Fumi then
 	SELECT * FROM FUMO_CLIENTI WHERE CLIENTE = :IdContratto AND STATO =  'A' /* ID_ATTREZZATURA_ATTIVA */ 
					AND FILIALE = :IdFiliale;
 --IDRANTI_CLIENTI---------------------------------------------------------------------------------------------------------------------------------
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
  --Mese Estintore Verifica-------------------------------------------------------------------------------------------------------------------------------
  
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
    SELECT PERIODICITA_REVISIONE, PERIODICITA_COLLAUDO FROM CAT_ESTINTORI WHERE CHIAVE = :IdCatEstintore;

        ValiditaCollaudo := AQuery.FieldByName('PERIODICITA_COLLAUDO').AsInteger;
        ValiditaRevisione := AQuery.FieldByName('PERIODICITA_REVISIONE').AsInteger;
		
  if ValiditaCollaudo <> 0 then
    LastCollaudo := SumMonth(DataStartupColl, ValiditaCollaudo)
  else
    LastCollaudo := DataStartupColl;

  if ValiditaRevisione <> 0 then
    LastRevisione := SumMonth(DataStartupRev, ValiditaRevisione)
  else
    LastRevisione := DataStartupRev;
end;
 
--Mese ATTREZZATURE Verifica-------------------------------------------------------------------------------------------------------------------------------

  Procedure CheckMeseAttrezzatura(MESE: Integer; NodoAttrezzatura: TTreeNode);
  var
    AContratto: TContratto;
    AnAttrezzatura: TAttrezzatura;
    PrimaVisita: Boolean;
    DescrFattura: String;
  begin
    AnAttrezzatura := TAttrezzatura(TmpNode.Data);
    AContratto := TContratto(GetAncestor(TmpNode, 0).Data);
    PrimaVisita := MESE = AContratto.MesePrimaVisita;
    if PrimaVisita then
    begin
      case AnAttrezzatura.Tipo of
        attPorte:
          DescrFattura := 'Manutenzione ordinaria porta tagliafuoco';
        attSprinkler:
          DescrFattura := 'Manutenzione ordinaria sprinkler';
        attFumi:
          DescrFattura := 'Manutenzione ordinaria impianto rivelazione incendi';
        attLuci:
          DescrFattura := 'Manutenzione ordinaria impianto luci';
      else
        DescrFattura := '???';
      end;
      AContratto.AddVoceFattura(TVoceDaFatturare.Create(False, '', AnAttrezzatura.Tipo, DescrFattura, True,
        TmpNode.Parent.Parent.Text, AnAttrezzatura.Ubicazione, -1, cntOrdinario, False));
    end
    else
      AContratto.AddVoceFattura(TVoceDaFatturare.Create(False, '', AnAttrezzatura.Tipo, DescrFattura, False,
        TmpNode.Parent.Parent.Text, AnAttrezzatura.Ubicazione, -1, cntOrdinario, False));
  end;

--Mese ATTREZZATURE Verifica-------------------------------------------------------------------------------------------------------------------------------

  Procedure CheckMeseAttrezzatura(MESE: Integer; NodoAttrezzatura: TTreeNode);
  var
    AContratto: TContratto;
    AnAttrezzatura: TAttrezzatura;
    PrimaVisita: Boolean;
    DescrFattura: String;
  begin
    AnAttrezzatura := TAttrezzatura(TmpNode.Data);
    AContratto := TContratto(GetAncestor(TmpNode, 0).Data);
    PrimaVisita := MESE = AContratto.MesePrimaVisita;
    if PrimaVisita then
    begin
      case AnAttrezzatura.Tipo of
        attPorte:
          DescrFattura := 'Manutenzione ordinaria porta tagliafuoco';
        attSprinkler:
          DescrFattura := 'Manutenzione ordinaria sprinkler';
        attFumi:
          DescrFattura := 'Manutenzione ordinaria impianto rivelazione incendi';
        attLuci:
          DescrFattura := 'Manutenzione ordinaria impianto luci';
      else
        DescrFattura := '???';
      end;
      AContratto.AddVoceFattura(TVoceDaFatturare.Create(False, '', AnAttrezzatura.Tipo, DescrFattura, True,
        TmpNode.Parent.Parent.Text, AnAttrezzatura.Ubicazione, -1, cntOrdinario, False));
    end
    else
      AContratto.AddVoceFattura(TVoceDaFatturare.Create(False, '', AnAttrezzatura.Tipo, DescrFattura, False,
        TmpNode.Parent.Parent.Text, AnAttrezzatura.Ubicazione, -1, cntOrdinario, False));
  end;


--Bocchelli -----------------------------------------------------------------------------------------------------------------------------------------------
  Procedure CheckMeseBocchello(MESE, ANNO: Integer; NodoBocchello: TTreeNode);
  var
    ScadenzaVicina: TDateTime;
    ScadenzaLontana: TDateTime;
    PrimaVisita: Boolean;
    ABocchello: TBocchello;
    AContratto: TContratto;
  begin
    ABocchello := TBocchello(TmpNode.Data);
    AContratto := TContratto(GetAncestor(TmpNode, 0).Data);
    GetUltimiCollBocchello(FQuery, ABocchello.DataStartupColl, ABocchello.DataCollaudo);

    PrimaVisita := MESE = AContratto.MesePrimaVisita;

    ScadenzaVicina := EncodeDate(ANNO, MESE, 1);
    ScadenzaLontana := ScadenzaVicina;
    ScadenzaVicina := SumMonth(ScadenzaVicina, 2);
    ScadenzaLontana := SumMonth(ScadenzaLontana, 8);
    ScadenzaVicina := GetLastDateMonth(GetMonth(ScadenzaVicina), GetYear(ScadenzaVicina));
    ScadenzaLontana := GetLastDateMonth(GetMonth(ScadenzaLontana), GetYear(ScadenzaLontana));

    if (ScadenzaVicina >= ABocchello.DataCollaudo) and (ABocchello.DataStartupColl <> ABocchello.DataCollaudo)
    then
    begin
      TmpNode.Text := TmpNode.Text + ' - ' + 'Collaudo';
      ABocchello.DaCollaudare := True;
      AContratto.AddVoceFattura(TVoceDaFatturare.Create(False, '', attBocchelli, 'Collaudo sistema idranti',
        PrimaVisita, TmpNode.Parent.Parent.Text, ABocchello.Ubicazione, -1, cntCollaudo, False));
    end
    else
    begin
      TmpNode.Text := TmpNode.Text + ' - ' + 'Ordinario';
      if PrimaVisita then
        AContratto.AddVoceFattura(TVoceDaFatturare.Create(False, '', attBocchelli,
          'Manutenzione ordinaria idranti', PrimaVisita, TmpNode.Parent.Parent.Text, ABocchello.Ubicazione,
          -1, cntOrdinario, False))
      else
        AContratto.AddVoceFattura(TVoceDaFatturare.Create(False, '', attBocchelli,
          'Manutenzione ordinaria idranti', False, TmpNode.Parent.Parent.Text, ABocchello.Ubicazione, -1,
          cntOrdinario, False));
    end;
  end;
  
 --Impianti Elettrici -----------------------------------------------------------------------------------------------------------------------------------------------
 Procedure HandleImpiantiElettrici;

    IsTheRightMonth: Boolean;
    Mesi: Array [01 .. 04] of Integer;
    i: Integer;
    Contratto: TContratto;
    TmpQuery: TpFIBQuery;
    TmpString: String;

        SELECT * FROM ELEMENTI_IMPIANTI_ELETTRICI WHERE IMPIANTO = :IdImpianto;
		
        SELECT IMPIANTI_ELETTRICI_CLIENTI.FILIALE AS FILIALE_IMPIANTO,
             IMPIANTI_ELETTRICI_CLIENTI.CHIAVE AS CHIAVE_IMPIANTO,
             IMPIANTI_ELETTRICI_CLIENTI.DESCRIZIONE AS DESCRIZIONE_IMPIANTO,
             IMPIANTI_ELETTRICI_CLIENTI.TIPO_VISITA AS IMPIANTI_ELETTRICI_TIPO_VISITE,
             CLIENTI.*,FILIALI_CLIENTI.NOME AS DESCRIZIONE_FILIALE,
             FILIALI_CLIENTI.CHIAVE AS CHIAVE_FILIALE,
             AMMINISTRATORI.ENTE_PUBBLICO AS ENTE_PUBBLICO,
             AMMINISTRATORI.RAGIONE_SOCIALE AS NOME_AMMINISTRATORE
          FROM CLIENTI,IMPIANTI_ELETTRICI_CLIENTI,AMMINISTRATORI,FILIALI_CLIENTI
           WHERE CLIENTI.CHIAVE = IMPIANTI_ELETTRICI_CLIENTI.CLIENTE
           AND AMMINISTRATORI.CHIAVE = CLIENTI.AMMINISTRATORE  AND CLIENTI.DISDETTATO <> 'T'
           AND CLIENTI.SOSPENSIONE_TEMPORANEA <> 'T'
           AND CLIENTI.IMPIANTI_ELETTRICI_VISIBILI = 'T'
           AND FILIALI_CLIENTI.ESCLUDI_DA_GENERAZIONE <> 'T'
           AND FILIALI_CLIENTI.CHIAVE = IMPIANTI_ELETTRICI_CLIENTI.FILIALE
           AND IMPIANTI_ELETTRICI_CLIENTI.STATO = 'A';
		   
          while not Eof do
          begin
            FillChar(Mesi, SizeOf(Mesi), 0);
            Mesi[1] := FieldByName('VISITA_FATTURAZIONE_ORDINARIA').AsInteger;
            Mesi[2] := (FieldByName('VISITA_FATTURAZIONE_ORDINARIA').AsInteger + 6) mod 12;
            if FieldByName('IMPIANTI_ELETTRICI_TIPO_VISITE').AsString <> ID_PERIODO_GRP_SPR_SEMESTRALE then
            begin
              // Trimestrale
              Mesi[3] := (FieldByName('VISITA_FATTURAZIONE_ORDINARIA').AsInteger + 3) mod 12;
              Mesi[4] := (FieldByName('VISITA_FATTURAZIONE_ORDINARIA').AsInteger + 9) mod 12;
            end;
            for i := Low(Mesi) to High(Mesi) do
              if Mesi[i] = 0 then
                Mesi[i] := 12;
            IsTheRightMonth := FieldByName('IMPIANTI_ELETTRICI_TIPO_VISITE')
              .AsString = ID_PERIODO_GRP_SPR_MENSILE;
            if not IsTheRightMonth then
              for i := Low(Mesi) to High(Mesi) do
                IsTheRightMonth := IsTheRightMonth or (MESE.ItemIndex + 1 = Mesi[i]);
            if IsTheRightMonth then
            begin
              TmpQuery.ParamByName('IdImpianto').AsInteger := FieldByName('CHIAVE_IMPIANTO').AsInteger;
              try
                TmpQuery.ExecQuery;
                while not TmpQuery.Eof do
                begin
                  TmpString := FieldByName('DESCRIZIONE_IMPIANTO').AsString + ' - Prog. ' +
                    TmpQuery.FieldByName('PROGRESSIVO').AsString;
                  TREE_LOG.Items.AddChildObject(GetNodoPeriodicitaMensile(Contratto, nodImpiantiElettrici),
                    TmpString, TElemImpiantoElettrico.Create(TmpQuery.FieldByName('CHIAVE').AsInteger,
                    TmpString));
                  TmpQuery.Next;
                end;
              finally
                TmpQuery.Close;
              end;
              Contratto.AddVoceFattura(TVoceDaFatturare.Create(False, '', attImpiantoElettrico,
                FieldByName('DESCRIZIONE_IMPIANTO').AsString, True, FieldByName('DESCRIZIONE_FILIALE')
                .AsString, 'Ubicazione', -1, cntControlloImpElettricoPeriodico, False,
                FieldByName('CHIAVE_IMPIANTO').AsInteger));
            end;
          end;
