procedure TMAIN_FORM.MN_Ricerche_GenerazioneAutomaticaStatiniEFattureClick(Sender: TObject);
var
  ADialog: TDLG_GENERAZIONE_AUTOMATICA;
begin
  ADialog := TDLG_GENERAZIONE_AUTOMATICA.Create(Self);
  try
    ADialog.Init(QRY_GENERIC, FRAME_FATTURE, FRAME_STATINI, FRAME_PREVENTIVI);
    ADialog.ShowModal;
  finally
    ADialog.Free;
  end;
  MN_Visualizza_Refresh.OnClick(Nil);
end;

Procedure TDLG_GENERAZIONE_AUTOMATICA.Init(AQuery: TpFIBQuery; AFrameFatture: TFRAME_FATTURE;
  AFrameStatino: TFRAME_STATINO; AFramePreventivo: TFRAME_PREVENTIVI);
begin
  FQuery := AQuery;
  With FQuery do
  begin
    CopyArrayInTStringList(SQL,
      ['SELECT PREVENTIVI_SOST_ESTINTORI.ESTINTORE AS CHIAVE_ESTINTORE,PREVENTIVI.STATO AS STATO_PREVENTIVO',
      '  FROM PREVENTIVI_SOST_ESTINTORI,PREVENTIVI', '  WHERE ESTINTORE IN ',
      '   (SELECT CHIAVE FROM ESTINTORI_CLIENTI', '     WHERE ESTINTORI_CLIENTI.STATO = ''' + 
      'A' {ID_ATTREZZATURA_ATTIVA} + ''')',
      '    AND PREVENTIVI.CHIAVE = PREVENTIVI_SOST_ESTINTORI.PREVENTIVO']);
    try
      ExecQuery;
      while not Eof do
      begin
        if FieldByName('STATO_PREVENTIVO').AsString = 'K' {ID_PREVENTIVO_CONFERMATO} then
          FListaSostConfermate.Add(Pointer(FieldByName('CHIAVE_ESTINTORE').AsInteger));
        FListaSostPrevent.Add(Pointer(FieldByName('CHIAVE_ESTINTORE').AsInteger));
        Next;
      end;
    finally
      Close;
    end;
  end;
  FFRAME_FATTURE := AFrameFatture;
  FFRAME_STATINO := AFrameStatino;
  FFRAME_PREVENTIVO := AFramePreventivo;
  FRicalcoloMese;
  FEnableButtons;
end;

Procedure TDLG_GENERAZIONE_AUTOMATICA.FRicalcoloMese;
var
  TmpNode, TmpNode2: TTreeNode;
  TmpNode3: TTreeNode;
  
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
  
  Procedure AddProveDinamicaInFattura(AQuery: TpFIBQuery; MESE: Integer; NodoContratto: TTreeNode);
  var
    PrimaVisita: Boolean;
    AContratto: TContratto;
  begin
    AContratto := TContratto(NodoContratto.Data);
    PrimaVisita := MESE = AContratto.MesePrimaVisita;
    if PrimaVisita then
    begin
      CopyArrayInTStringList(AQuery.SQL, ['SELECT IDRANTI_CLIENTI.DESCRIZIONE AS DESCRIZIONE_IDRANTE,',
        '       IDRANTI_CLIENTI.CHIAVE AS CHIAVE_IDRANTE,', '       FILIALI_CLIENTI.NOME AS NOME_FILIALE',
        '  FROM IDRANTI_CLIENTI,FILIALI_CLIENTI', ' WHERE IDRANTI_CLIENTI.FILIALE = FILIALI_CLIENTI.CHIAVE',
        '   AND IDRANTI_CLIENTI.PROVA_DINAMICA <> 0',
        '   AND FILIALI_CLIENTI.ESCLUDI_DA_GENERAZIONE <> ''T''', '   AND IDRANTI_CLIENTI.STATO = ''' +
        ID_ATTREZZATURA_ATTIVA + '''', '   AND IDRANTI_CLIENTI.CLIENTE = :IdCliente']);
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
    
    // Se siamo nella seconda visita dell'anno di sostituzione la effettuiamo
    DecodeDate(AnEstintore.DataSostituzione, Y, M, D);
    if (ANNO > Y) or ((ANNO = Y) and (MESE >= 6)) then
      AnEstintore.DaSostituire := True;
      
    // Impostazione delle voci della fattura
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
    
    // NON CREA PIU' PREVENTIVI PER SOSTITUZIONE
    // if (not AnEstintore.DaSostituire) and (not AnEstintore.FuoriServizio) then
    // if FListaSostPrevent.IndexOf(Pointer(AnEstintore.Chiave)) = -1 then
    // if SumMonth(GetLastDateMonth(Mese,Anno),12) > AnEstintore.DataSostituzione then
    // begin
    // AContratto.AddVocePreventivo(TVocePreventivo.Create(TmpQuery,AContratto.Chiave,AnEstintore,True));
    // AContratto.AddVocePreventivo(TVocePreventivo.Create(TmpQuery,AContratto.Chiave,AnEstintore,False));
    // NodoEstintore.Text := NodoEstintore.Text + ' - PREVENTIVO SOSTITUZIONE ANNO SUCCESSIVO';
    // end;
    
  end;
  
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
  
  Function AbbreviazioneUbicazione(AQuery: TpFIBQuery): String;
  begin
    Result := Sinistra(StringReplace(AQuery.FieldByName('UBICAZIONE').AsString, #13, ' ',
      [rfReplaceAll]), 35);
  end;
  
Type
  TModRicercaNodo = (nodGruppo, nodSprinkler, nodImpiantiElettrici);
  
  Function GetNodoPeriodicitaMensile(var Contratto: TContratto; ModRicercaNodo: TModRicercaNodo): TTreeNode;
  var
    Descrizione: String;
    TmpNode: TTreeNode;
  begin
    With FQuery do
    begin
      Result := Nil;
      // CERCA IL NODO DEL CONTRATTO
      if TREE_LOG.Items.Count <> 0 then
      begin
        Result := TREE_LOG.Items[0];
        while Result <> Nil do
        begin
          if TContratto(Result.Data).FChiave = FieldByName('CHIAVE').AsInteger then
            break;
          Result := Result.getNextSibling;
        end;
      end;
      
      // SE NON TROVA IL NODO DEL CONTRATTO LO CREA INSERENDOLO IN ORDINE ALFABETICO NELL'ALBERO
      if Result = Nil then
      begin
        Descrizione := FieldByName('NOME_AMMINISTRATORE').AsString + ' - ' + FieldByName('DESCRIZIONE_SCHEDA')
          .AsString + ' - Solo gruppi di pressurizzazione';
        Contratto := TContratto.Create(FQuery, MESE.ItemIndex + 1, ANNO.Value);
        if TREE_LOG.Items.Count = 0 then
          Result := TREE_LOG.Items.AddObject(Nil, Descrizione, Contratto)
        else
        begin
          Result := TREE_LOG.Items[0];
          while Result <> Nil do
          begin
            if Result.Text > Descrizione then
            begin
              Result := TREE_LOG.Items.InsertObject(Result, Descrizione, Contratto);
              break;
            end;
            Result := Result.getNextSibling;
          end;
          if Result = Nil then
            Result := TREE_LOG.Items.AddObject(Nil, Descrizione, Contratto);
        end;
      end;
      
      // CERCA IL NODO DELLA FILIALE
      if Result = Nil then
        ShowMessage('ERRORE DI PROGRAMMAZIONE: Non riesco ad inserire il nuovo contratto')
      else
      begin
        Contratto := TContratto(Result.Data);
        TmpNode := Result.getFirstChild;
        while TmpNode <> Nil do
        begin
          if TSingoloIntero(TmpNode.Data).Value = FieldByName('CHIAVE_FILIALE').AsInteger then
            break;
          TmpNode := TmpNode.getNextSibling;
        end;
        if TmpNode = Nil then
          Result := TREE_LOG.Items.AddChildObject(Result, FieldByName('DESCRIZIONE_FILIALE').AsString,
            TSingoloIntero.Create(FieldByName('CHIAVE_FILIALE').AsInteger))
        else
          Result := TmpNode;
      end;
      
      // CERCA IL NODO DEL GRUPPO - SPRINKLER
      if Result = Nil then
        ShowMessage('ERRORE DI PROGRAMMAZIONE: Non riesco ad inserire la nuova filiale')
      else
      begin
        case ModRicercaNodo of
          nodGruppo:
            Descrizione := 'Gruppo pressurizzazione';
          nodSprinkler:
            Descrizione := 'Sprinkler';
          nodImpiantiElettrici:
            Descrizione := 'Impianti elettrici';
        end;
        TmpNode := Result.getFirstChild;
        while TmpNode <> Nil do
        begin
          if TmpNode.Text = Descrizione then
            break;
          TmpNode := TmpNode.getNextSibling;
        end;
        if TmpNode = Nil then
          Result := TREE_LOG.Items.AddChild(Result, Descrizione)
        else
          Result := TmpNode;
        if Result = Nil then
          ShowMessage
            ('ERRORE DI PROGRAMMAZIONE: Non riesco ad inserire il nodo dei gruppi di pressurizzazione')
      end;
    end;
  end;
  
  Procedure HandleImpiantiElettrici;
  var
    IsTheRightMonth: Boolean;
    Mesi: Array [01 .. 04] of Integer;
    i: Integer;
    Contratto: TContratto;
    TmpQuery: TpFIBQuery;
    TmpString: String;
  begin
    TmpQuery := TpFIBQuery.Create(Nil);
    FIBPlusCopyConnectionParams(FQuery, TmpQuery);
    try
      With FQuery do
      begin
        CopyArrayInTStringList(TmpQuery.SQL,
          ['SELECT * FROM ELEMENTI_IMPIANTI_ELETTRICI WHERE IMPIANTO = :IdImpianto']);
        CopyArrayInTStringList(SQL, ['SELECT IMPIANTI_ELETTRICI_CLIENTI.FILIALE AS FILIALE_IMPIANTO,',
          '       IMPIANTI_ELETTRICI_CLIENTI.CHIAVE AS CHIAVE_IMPIANTO,',
          '       IMPIANTI_ELETTRICI_CLIENTI.DESCRIZIONE AS DESCRIZIONE_IMPIANTO,',
          '       IMPIANTI_ELETTRICI_CLIENTI.TIPO_VISITA AS IMPIANTI_ELETTRICI_TIPO_VISITE,',
          '       CLIENTI.*,FILIALI_CLIENTI.NOME AS DESCRIZIONE_FILIALE,',
          '       FILIALI_CLIENTI.CHIAVE AS CHIAVE_FILIALE,',
          '       AMMINISTRATORI.ENTE_PUBBLICO AS ENTE_PUBBLICO,',
          '       AMMINISTRATORI.RAGIONE_SOCIALE AS NOME_AMMINISTRATORE',
          '  FROM CLIENTI,IMPIANTI_ELETTRICI_CLIENTI,AMMINISTRATORI,FILIALI_CLIENTI',
          ' WHERE CLIENTI.CHIAVE = IMPIANTI_ELETTRICI_CLIENTI.CLIENTE',
          '   AND AMMINISTRATORI.CHIAVE = CLIENTI.AMMINISTRATORE', '   AND CLIENTI.DISDETTATO <> ''T''',
          '   AND CLIENTI.SOSPENSIONE_TEMPORANEA <> ''T''',
          '   AND CLIENTI.IMPIANTI_ELETTRICI_VISIBILI = ''T''',
          '   AND FILIALI_CLIENTI.ESCLUDI_DA_GENERAZIONE <> ''T''',
          '   AND FILIALI_CLIENTI.CHIAVE = IMPIANTI_ELETTRICI_CLIENTI.FILIALE',
          '   AND IMPIANTI_ELETTRICI_CLIENTI.STATO = ''' + ID_ATTREZZATURA_ATTIVA + '''']);
        if GlobalLibra.DevFlag[KEY_CLIENTE_GENERAZIONE] <> '' then
          SQL.Add('AND AMMINISTRATORI.RAGIONE_SOCIALE LIKE ''%' + GlobalLibra.DevFlag
            [KEY_CLIENTE_GENERAZIONE] + '%''');
        try
          ExecQuery;
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
            Next;
          end;
        finally
          Close;
        end;
      end;
    finally
      TmpQuery.Free;
    end;
  end;
  
  Procedure HandleGruppiPressurizzazione;
  var
    IsTheRightMonth: Boolean;
    Mesi: Array [01 .. 04] of Integer;
    i: Integer;
    Contratto: TContratto;
    TipoControllo: TTipoControllo;
  begin
    With FQuery do
    begin
      CopyArrayInTStringList(SQL, ['SELECT GRUPPO_PRESSURIZZAZIONE_CLIENTI.FILIALE AS FILIALE_GRUPPO,',
        '       GRUPPO_PRESSURIZZAZIONE_CLIENTI.CHIAVE AS CHIAVE_GRUPPO,',
        '       GRUPPO_PRESSURIZZAZIONE_CLIENTI.DESCRIZIONE AS DESCRIZIONE_GRUPPO,',
        '       CLIENTI.*,FILIALI_CLIENTI.NOME AS DESCRIZIONE_FILIALE,',
        '       FILIALI_CLIENTI.CHIAVE AS CHIAVE_FILIALE,',
        '       AMMINISTRATORI.ENTE_PUBBLICO AS ENTE_PUBBLICO,',
        '       AMMINISTRATORI.RAGIONE_SOCIALE AS NOME_AMMINISTRATORE',
        '  FROM CLIENTI,GRUPPO_PRESSURIZZAZIONE_CLIENTI,AMMINISTRATORI,FILIALI_CLIENTI',
        ' WHERE CLIENTI.CHIAVE = GRUPPO_PRESSURIZZAZIONE_CLIENTI.CLIENTE',
        '   AND AMMINISTRATORI.CHIAVE = CLIENTI.AMMINISTRATORE', '   AND CLIENTI.DISDETTATO <> ''T''',
        '   AND CLIENTI.SOSPENSIONE_TEMPORANEA <> ''T''', '   AND CLIENTI.GRUPPO_PRESS_VISIBILE = ''T''',
        '   AND FILIALI_CLIENTI.ESCLUDI_DA_GENERAZIONE <> ''T''',
        '   AND FILIALI_CLIENTI.CHIAVE = GRUPPO_PRESSURIZZAZIONE_CLIENTI.FILIALE',
        '   AND GRUPPO_PRESSURIZZAZIONE_CLIENTI.STATO = ''' + ID_ATTREZZATURA_ATTIVA + '''']);
      if GlobalLibra.DevFlag[KEY_CLIENTE_GENERAZIONE] <> '' then
        SQL.Add('AND AMMINISTRATORI.RAGIONE_SOCIALE LIKE ''%' + GlobalLibra.DevFlag
          [KEY_CLIENTE_GENERAZIONE] + '%''');
      try
        ExecQuery;
        while not Eof do
        begin
          FillChar(Mesi, SizeOf(Mesi), 0);
          Mesi[1] := FieldByName('VISITA_FATTURAZIONE_ORDINARIA').AsInteger;
          Mesi[2] := (FieldByName('VISITA_FATTURAZIONE_ORDINARIA').AsInteger + 6) mod 12;
          if FieldByName('GRUPPO_TIPO_VISITE').AsString <> ID_PERIODO_GRP_SPR_SEMESTRALE then
          begin
            // Trimestrale
            Mesi[3] := (FieldByName('VISITA_FATTURAZIONE_ORDINARIA').AsInteger + 3) mod 12;
            Mesi[4] := (FieldByName('VISITA_FATTURAZIONE_ORDINARIA').AsInteger + 9) mod 12;
          end;
          for i := Low(Mesi) to High(Mesi) do
            if Mesi[i] = 0 then
              Mesi[i] := 12;
          IsTheRightMonth := FieldByName('GRUPPO_TIPO_VISITE').AsString = ID_PERIODO_GRP_SPR_MENSILE;
          if not IsTheRightMonth then
            for i := Low(Mesi) to High(Mesi) do
              IsTheRightMonth := IsTheRightMonth or (MESE.ItemIndex + 1 = Mesi[i]);
          if IsTheRightMonth then
          begin
            TREE_LOG.Items.AddChildObject(GetNodoPeriodicitaMensile(Contratto, nodGruppo),
              FieldByName('DESCRIZIONE_GRUPPO').AsString,
              TGruppoPress.Create(FieldByName('CHIAVE_GRUPPO').AsInteger, FieldByName('DESCRIZIONE_GRUPPO')
              .AsString));
            if (MESE.ItemIndex + 1) in [Mesi[1], Mesi[2]] then
              TipoControllo := cntControlloGruppoSemestrale
            else
            begin
              if (MESE.ItemIndex + 1) in [Mesi[3], Mesi[4]] then
                TipoControllo := cntControlloGruppoTrimestrale
              else
                TipoControllo := cntControlloGruppoMensile;
            end;
            Contratto.AddVoceFattura(TVoceDaFatturare.Create(False, '', attGruppo,
              FieldByName('DESCRIZIONE_GRUPPO').AsString, True, FieldByName('DESCRIZIONE_FILIALE').AsString,
              'Ubicazione', -1, TipoControllo, False));
          end;
          Next;
        end;
      finally
        Close;
      end;
    end;
  end;
  
  Procedure HandleSprinkler;
  var
    TipoVisita: String;
    Contratto: TContratto;
    TipoControllo: TTipoControllo;
  begin
    With FQuery do
    begin
      CopyArrayInTStringList(SQL, ['SELECT SPRINKLER_CLIENTI.FILIALE AS FILIALE_SPRINKLER,',
        '       SPRINKLER_CLIENTI.CHIAVE AS CHIAVE_SPRINKLER,',
        '       SPRINKLER_CLIENTI.CLIENTE,SPRINKLER_CLIENTI.UBICAZIONE,',
        '       SPRINKLER_CLIENTI.DESCRIZIONE AS DESCRIZIONE_SPRINKLER,', '       CLIENTI.*,',
        '       FILIALI_CLIENTI.NOME AS DESCRIZIONE_FILIALE,',
        '       FILIALI_CLIENTI.CHIAVE AS CHIAVE_FILIALE,',
        '       AMMINISTRATORI.ENTE_PUBBLICO AS ENTE_PUBBLICO,',
        '       AMMINISTRATORI.RAGIONE_SOCIALE AS NOME_AMMINISTRATORE',
        '  FROM CLIENTI,SPRINKLER_CLIENTI,AMMINISTRATORI,FILIALI_CLIENTI',
        ' WHERE CLIENTI.CHIAVE = SPRINKLER_CLIENTI.CLIENTE',
        '   AND AMMINISTRATORI.CHIAVE = CLIENTI.AMMINISTRATORE', '   AND CLIENTI.DISDETTATO <> ''T''',
        '   AND CLIENTI.SOSPENSIONE_TEMPORANEA <> ''T''', '   AND CLIENTI.SPRINKLER_VISIBILI = ''T''',
        '   AND FILIALI_CLIENTI.ESCLUDI_DA_GENERAZIONE <> ''T''',
        '   AND FILIALI_CLIENTI.CHIAVE = SPRINKLER_CLIENTI.FILIALE', '   AND SPRINKLER_CLIENTI.STATO = ''' +
        ID_ATTREZZATURA_ATTIVA + '''']);
      if GlobalLibra.DevFlag[KEY_CLIENTE_GENERAZIONE] <> '' then
        SQL.Add('AND AMMINISTRATORI.RAGIONE_SOCIALE LIKE ''%' + GlobalLibra.DevFlag
          [KEY_CLIENTE_GENERAZIONE] + '%''');
      try
        ExecQuery;
        while not Eof do
        begin
          TipoVisita := GetPeriodoControllo(FieldByName('VISITA_FATTURAZIONE_ORDINARIA').AsInteger,
            MESE.ItemIndex + 1);
          if (((TipoVisita = ID_PERIODO_GRP_SPR_TRIMESTRALE) and (FieldByName('SPRINKLER_TIPO_VISITE')
            .AsString = ID_PERIODO_GRP_SPR_TRIMESTRALE)) or (TipoVisita = ID_PERIODO_GRP_SPR_SEMESTRALE)) then
          begin
            TREE_LOG.Items.AddChildObject(GetNodoPeriodicitaMensile(Contratto, nodSprinkler),
              FieldByName('DESCRIZIONE_SPRINKLER').AsString, TAttrezzatura.Create(FQuery, attSprinkler));
            if TipoVisita = ID_PERIODO_GRP_SPR_TRIMESTRALE then
              TipoControllo := cntControlloSprinklerTrimestrale
            else
              TipoControllo := cntControlloSprinklerSemestrale;
            Contratto.AddVoceFattura(TVoceDaFatturare.Create(False, '', attSprinkler,
              FieldByName('DESCRIZIONE_SPRINKLER').AsString, True, FieldByName('DESCRIZIONE_FILIALE')
              .AsString, 'Ubicazione', -1, TipoControllo, False));
          end;
          Next;
        end;
      finally
        Close;
      end;
    end;
  end;
  
begin
  DisallocaAlberoComeOggetti(TREE_LOG);
  TREE_LOG.Items.Clear;
  With FQuery do
  begin
    // Carica tutti i contratti non confermati nell'apposita lista
    SetQueryNonConfermati(SQL, MESE.ItemIndex + 1);
    ParamByName('Mese').AsInteger := MESE.ItemIndex + 1;
    LS_CONTRATTI_NON_CONFERMATI.Items.Clear;
    try
      ExecQuery;
      While not Eof do
      begin
        LS_CONTRATTI_NON_CONFERMATI.Items.AddObject(FieldByName('DESCRIZIONE_SCHEDA').AsString,
          TObject(FieldByName('CHIAVE').AsInteger));
        Next;
      end;
    finally
      Close;
    end;
    // INSERISCE NELL'ALBERO TUTTI I CLIENTI
    CopyArrayInTStringList(SQL, ['SELECT CLIENTI.*,AMMINISTRATORI.RAGIONE_SOCIALE AS NOME_AMMINISTRATORE,',
      '       AMMINISTRATORI.ENTE_PUBBLICO AS ENTE_PUBBLICO', '  FROM CLIENTI,AMMINISTRATORI',
      ' WHERE ((CLIENTI.VISITA_FATTURAZIONE_ORDINARIA = :Mese)', SostBoolean((MESE.ItemIndex + 1) = 12,
      'OR (CLIENTI.VISITA_FATTURAZIONE_ORDINARIA = 6))',
      'OR MOD(CLIENTI.VISITA_FATTURAZIONE_ORDINARIA + 6,12) = :Mese)'), '   AND (CLIENTI.DISDETTATO = ''F'')',
      '   AND (CLIENTI.SOSPENSIONE_TEMPORANEA <> ''T'')', '   AND (CLIENTI.MANUALE = ''F'')',
      '   AND (CLIENTI.NON_CONFERMATO = ''F'')',
      '   AND ((DATA_DIFFERITA IS NULL) OR (DATA_DIFFERITA <= :UltimoGiorno))',
      '   AND (AMMINISTRATORI.CHIAVE = CLIENTI.AMMINISTRATORE)']);
    if GlobalLibra.DevFlag[KEY_CLIENTE_GENERAZIONE] <> '' then
      SQL.Add('AND AMMINISTRATORI.RAGIONE_SOCIALE LIKE ''%' + GlobalLibra.DevFlag
        [KEY_CLIENTE_GENERAZIONE] + '%''');
    SQL.Add('ORDER BY AMMINISTRATORI.RAGIONE_SOCIALE,AMMINISTRATORI.CHIAVE,CLIENTI.RAGIONE_SOCIALE');
    ParamByName('Mese').AsInteger := MESE.ItemIndex + 1;
    ParamByName('UltimoGiorno').AsDate := EncodeDate(ANNO.Value, MESE.ItemIndex + 1,
      GetLengthMonth(MESE.ItemIndex + 1, ANNO.Value));
    try
      ExecQuery;
      while not Eof do
      begin
        TREE_LOG.Items.AddObject(Nil, FieldByName('NOME_AMMINISTRATORE').AsString + ' - ' +
          FieldByName('DESCRIZIONE_SCHEDA').AsString + ' - ' +
          SostBoolean(FieldByName('VISITA_FATTURAZIONE_ORDINARIA').AsInteger = MESE.ItemIndex + 1,
          '(1° visita)', '(2° visita)'), TContratto.Create(FQuery, MESE.ItemIndex + 1, ANNO.Value));
        Next;
      end;
    finally
      Close;
    end;
    
    VOCI_FATTURA.Items.Clear;
    if TREE_LOG.Items.Count <> 0 then
    begin
      // PER TUTTI  I CLIENTI SELEZIONATI ...
      TmpNode := TREE_LOG.Items[0];
      CopyArrayInTStringList(SQL, ['SELECT * FROM FILIALI_CLIENTI', ' WHERE CLIENTE = :IdContratto',
        '  AND ESCLUDI_DA_GENERAZIONE <> ''T''', 'ORDER BY NOME']);
      FIBPlusCopyConnectionParams(FQuery, TmpQuery);
      while TmpNode <> Nil do
      begin
        ParamByName('IdContratto').AsInteger := TContratto(TmpNode.Data).Chiave;
        
        // ... CREA LE VOCI DELLA FATTURA RELATIVE AI PREVENTIVI CONFERMATI MA NON PAGATI PER QUEL CLIENTE ...
        CopyArrayInTStringList(TmpQuery.SQL, ['SELECT VOCI_PREVENTIVI.*,',
          '      (SELECT ID_PREVENTIVO FROM PREVENTIVI WHERE PREVENTIVI.CHIAVE = VOCI_PREVENTIVI.PREVENTIVO),',
          '      (SELECT ANNO_PREVENTIVO FROM PREVENTIVI WHERE PREVENTIVI.CHIAVE = VOCI_PREVENTIVI.PREVENTIVO),',
          '      (SELECT DATA_PREVENTIVO FROM PREVENTIVI WHERE PREVENTIVI.CHIAVE = VOCI_PREVENTIVI.PREVENTIVO)',
          '  FROM VOCI_PREVENTIVI', ' WHERE PREVENTIVO IN (SELECT CHIAVE FROM PREVENTIVI',
          WHERE_RICERCA_PREVENTIVI + ')', '  AND VOCE_VUOTA IS NULL', 'ORDER BY PREVENTIVO,ORDINAMENTO']);
        try
          TmpQuery.ParamByName('IdContratto').AsInteger := TContratto(TmpNode.Data).Chiave;
          TmpQuery.ExecQuery;
          While not TmpQuery.Eof do
          begin
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
            TmpQuery.Next;
          end;
        finally
          TmpQuery.Close;
        end;
        
        try
          // ... E GENERA TUTTI I NODI DELLE FILIALI CORRELATE E DELLE ATTREZZATURE ECCETTO IL GRUPPO DI PRESSURIZZAZIONE
          ExecQuery;
          while not Eof do
          begin
            TmpNode2 := TREE_LOG.Items.AddChildObject(TmpNode, FieldByName('NOME').AsString,
              TSingoloIntero.Create(FieldByName('CHIAVE').AsInteger));

            // ******************** CREAZIONE ESTINTORI
            TmpNode3 := TREE_LOG.Items.AddChild(TmpNode2, 'Estintori');
            if TContratto(TmpNode.Data).FAttrezzatureAbilitate.Estintori then
            begin
              CopyArrayInTStringList(TmpQuery.SQL,
                ['SELECT ESTINTORI_CLIENTI.*,CAT_ESTINTORI.CO2,CAT_ESTINTORI.SENZA_SCADENZA FROM ESTINTORI_CLIENTI,CAT_ESTINTORI',
                ' WHERE ESTINTORI_CLIENTI.CLIENTE = :IdContratto',
                '   AND ESTINTORI_CLIENTI.FILIALE = :IdFiliale',
                '   AND CAT_ESTINTORI.PERIODICITA_COLLAUDO <> 0',
                '   AND CAT_ESTINTORI.PERIODICITA_REVISIONE <> 0', '   AND ESTINTORI_CLIENTI.STATO = ''' +
                ID_ATTREZZATURA_ATTIVA + '''',
                '   AND ESTINTORI_CLIENTI.TIPO_ESTINTORE = CAT_ESTINTORI.CHIAVE']);
              TmpQuery.ParamByName('IdContratto').AsInteger := TSingoloIntero(TmpNode.Data).Value;
              TmpQuery.ParamByName('IdFiliale').AsInteger := TSingoloIntero(TmpNode2.Data).Value;
              try
                TmpQuery.ExecQuery;
                while not TmpQuery.Eof do
                begin
                  TREE_LOG.Items.AddChildObject(TmpNode3, 'Nr. ' + TmpQuery.FieldByName('PROGRESSIVO')
                    .AsString, TEstintore.Create(TmpQuery));
                  TmpQuery.Next;
                end;
              finally
                TmpQuery.Close;
              end;
            end;
            
            // ******************** CREAZIONE PORTE
            TmpNode3 := TREE_LOG.Items.AddChild(TmpNode2, 'Porte');
            if TContratto(TmpNode.Data).FAttrezzatureAbilitate.Porte then
            begin
              CopyArrayInTStringList(TmpQuery.SQL, ['SELECT * FROM PORTE_CLIENTI',
                ' WHERE CLIENTE = :IdContratto', '   AND STATO = ''' + ID_ATTREZZATURA_ATTIVA + '''',
                '   AND FILIALE = :IdFiliale']);
              TmpQuery.ParamByName('IdContratto').AsInteger := TSingoloIntero(TmpNode.Data).Value;
              TmpQuery.ParamByName('IdFiliale').AsInteger := TSingoloIntero(TmpNode2.Data).Value;
              try
                TmpQuery.ExecQuery;
                while not TmpQuery.Eof do
                begin
                  TREE_LOG.Items.AddChildObject(TmpNode3, AbbreviazioneUbicazione(TmpQuery),
                    TAttrezzatura.Create(TmpQuery, attPorte));
                  TmpQuery.Next;
                end;
              finally
                TmpQuery.Close;
              end;
            end;
            
            // ******************** CREAZIONE IDRANTI
            TmpNode3 := TREE_LOG.Items.AddChild(TmpNode2, 'Idranti');
            if TContratto(TmpNode.Data).FAttrezzatureAbilitate.Idranti then
            begin
              CopyArrayInTStringList(TmpQuery.SQL, ['SELECT * FROM BOCCHELLI,IDRANTI_CLIENTI',
                ' WHERE IDRANTI_CLIENTI.CHIAVE = BOCCHELLI.IDRANTE',
                '   AND IDRANTI_CLIENTI.CLIENTE = :IdContratto', '   AND IDRANTI_CLIENTI.STATO = ''' +
                ID_ATTREZZATURA_ATTIVA + '''', '   AND BOCCHELLI.STATO = ''' + ID_ATTREZZATURA_ATTIVA + '''',
                '   AND IDRANTI_CLIENTI.FILIALE = :IdFiliale']);
              TmpQuery.ParamByName('IdContratto').AsInteger := TSingoloIntero(TmpNode.Data).Value;
              TmpQuery.ParamByName('IdFiliale').AsInteger := TSingoloIntero(TmpNode2.Data).Value;
              try
                TmpQuery.ExecQuery;
                while not TmpQuery.Eof do
                begin
                  TREE_LOG.Items.AddChildObject(TmpNode3, AbbreviazioneUbicazione(TmpQuery),
                    TBocchello.Create(TmpQuery));
                  TmpQuery.Next;
                end;
              finally
                TmpQuery.Close;
              end;
            end;
            
            // ******************** CREAZIONE LUCI
            TmpNode3 := TREE_LOG.Items.AddChild(TmpNode2, 'Luci');
            if TContratto(TmpNode.Data).FAttrezzatureAbilitate.Luci then
            begin
              CopyArrayInTStringList(TmpQuery.SQL, ['SELECT * FROM LUCI_CLIENTI',
                ' WHERE CLIENTE = :IdContratto', '   AND STATO = ''' + ID_ATTREZZATURA_ATTIVA + '''',
                '   AND FILIALE = :IdFiliale']);
              TmpQuery.ParamByName('IdContratto').AsInteger := TSingoloIntero(TmpNode.Data).Value;
              TmpQuery.ParamByName('IdFiliale').AsInteger := TSingoloIntero(TmpNode2.Data).Value;
              try
                TmpQuery.ExecQuery;
                while not TmpQuery.Eof do
                begin
                  TREE_LOG.Items.AddChildObject(TmpNode3, AbbreviazioneUbicazione(TmpQuery),
                    TAttrezzatura.Create(TmpQuery, attLuci));
                  TmpQuery.Next;
                end;
              finally
                TmpQuery.Close;
              end;
            end;
            
            // ******************** CREAZIONE FUMI
            TmpNode3 := TREE_LOG.Items.AddChild(TmpNode2, 'Riv. incendi');
            if TContratto(TmpNode.Data).FAttrezzatureAbilitate.Fumi then
            begin
              CopyArrayInTStringList(TmpQuery.SQL, ['SELECT * FROM FUMO_CLIENTI',
                ' WHERE CLIENTE = :IdContratto', '   AND STATO = ''' + 'A' {ID_ATTREZZATURA_ATTIVA} + '''',
                '   AND FILIALE = :IdFiliale']);
              TmpQuery.ParamByName('IdContratto').AsInteger := TSingoloIntero(TmpNode.Data).Value;
              TmpQuery.ParamByName('IdFiliale').AsInteger := TSingoloIntero(TmpNode2.Data).Value;
              try
                TmpQuery.ExecQuery;
                while not TmpQuery.Eof do
                begin
                  TREE_LOG.Items.AddChildObject(TmpNode3, AbbreviazioneUbicazione(TmpQuery),
                    TAttrezzatura.Create(TmpQuery, attFumi));
                  TmpQuery.Next;
                end;
              finally
                TmpQuery.Close;
              end;
            end;
            
            Next;
          end;
        finally
          Close;
        end;
        TmpNode := TmpNode.getNextSibling;
      end;
      
      // ELABORAZIONE DEI CAMPI CALCOLATI
      TmpNode := TREE_LOG.Items[0];
      while TmpNode <> Nil do
      begin
        if TObject(TmpNode.Data) is TEstintore then
          CheckMeseEstintore(MESE.ItemIndex + 1, ANNO.Value, TmpNode);
        if TObject(TmpNode.Data) is TAttrezzatura then
          CheckMeseAttrezzatura(MESE.ItemIndex + 1, TmpNode);
        if TObject(TmpNode.Data) is TBocchello then
          CheckMeseBocchello(MESE.ItemIndex + 1, ANNO.Value, TmpNode);
        if TObject(TmpNode.Data) is TContratto then
          AddProveDinamicaInFattura(TmpQuery, MESE.ItemIndex + 1, TmpNode);
        TmpNode := TmpNode.GetNext;
      end;
    end;
    // AGGIUNTA DELL'ELABORAZIONE DEL GRUPPO DI PRESSURIZZAZIONE E DEGLI IMPIANTI SPRINKLER
    HandleSprinkler;
    HandleGruppiPressurizzazione;
    HandleImpiantiElettrici;
  end;
  if TREE_LOG.Items.Count <> 0 then
    TREE_LOG.Selected := TREE_LOG.Items[0];
  TREE_LOG.OnChange(Nil, TREE_LOG.Selected);
end;

