inherited dmPhoenixIBLab: TdmPhoenixIBLab
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 439
  Width = 628
  inherited JanuaUniConnection1: TJanuaUniConnection
    SpecificOptions.Strings = (
      'InterBase.EnableMemos=True'
      'InterBase.UseUnicode=True')
    Options.DisconnectedMode = True
    Pooling = True
    Left = 72
    EncryptedPassword = '92FF9EFF8CFF8BFF9AFF8DFF94FF9AFF86FF'
  end
  inherited InterBaseUniProvider1: TInterBaseUniProvider
    Left = 72
  end
  object tbLabEstintori: TUniTable
    TableName = 'LABORATORIO_ESTINTORI'
    OrderFields = 'STATINO;ESTINTORE'
    Connection = JanuaUniConnection1
    Left = 72
    Top = 176
    object tbLabEstintoriSTATINO: TIntegerField
      FieldName = 'STATINO'
      Required = True
    end
    object tbLabEstintoriESTINTORE: TIntegerField
      FieldName = 'ESTINTORE'
      Required = True
    end
    object tbLabEstintoriTECNICO: TIntegerField
      FieldName = 'TECNICO'
    end
    object tbLabEstintoriDESCRIZIONE_STATINO: TWideStringField
      FieldName = 'DESCRIZIONE_STATINO'
      Size = 255
    end
    object tbLabEstintoriSTATO_STATINO: TWideStringField
      FieldName = 'STATO_STATINO'
      FixedChar = True
      Size = 1
    end
    object tbLabEstintoriDESCRIZIONE_ALTERNATIVA: TWideStringField
      FieldName = 'DESCRIZIONE_ALTERNATIVA'
      Size = 255
    end
    object tbLabEstintoriRESET_DATA_COLLAUDO: TWideStringField
      FieldName = 'RESET_DATA_COLLAUDO'
      FixedChar = True
      Size = 1
    end
    object tbLabEstintoriRESET_DATA_REVISIONE: TWideStringField
      FieldName = 'RESET_DATA_REVISIONE'
      FixedChar = True
      Size = 1
    end
    object tbLabEstintoriDATA_CONTROLLO: TDateField
      FieldName = 'DATA_CONTROLLO'
    end
    object tbLabEstintoriDATA_SMALTIMENTO: TDateField
      FieldName = 'DATA_SMALTIMENTO'
    end
    object tbLabEstintoriDATA_RESTITUZIONE: TDateField
      FieldName = 'DATA_RESTITUZIONE'
    end
    object tbLabEstintoriDATA_CONSEGNA: TDateField
      FieldName = 'DATA_CONSEGNA'
    end
    object tbLabEstintoriDATA_CONTROLLO_NEGATO: TDateField
      FieldName = 'DATA_CONTROLLO_NEGATO'
    end
    object tbLabEstintoriDATA_STARTUP_REV: TDateField
      FieldName = 'DATA_STARTUP_REV'
    end
    object tbLabEstintoriTIPO_ESTINTORE: TIntegerField
      FieldName = 'TIPO_ESTINTORE'
    end
    object tbLabEstintoriPROGRESSIVO: TIntegerField
      FieldName = 'PROGRESSIVO'
      Required = True
    end
    object tbLabEstintoriMATRICOLA: TWideStringField
      FieldName = 'MATRICOLA'
      Size = 255
    end
    object tbLabEstintoriANNO_COSTRUZIONE: TSmallintField
      FieldName = 'ANNO_COSTRUZIONE'
    end
    object tbLabEstintoriDATA_STARTUP_COL: TDateField
      FieldName = 'DATA_STARTUP_COL'
    end
    object tbLabEstintoriSTATO: TWideStringField
      FieldName = 'STATO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object tbLabEstintoriANOMALIA_APPROVATA: TWideStringField
      FieldName = 'ANOMALIA_APPROVATA'
      FixedChar = True
      Size = 1
    end
    object tbLabEstintoriANOMALIA: TWideStringField
      FieldName = 'ANOMALIA'
      Size = 255
    end
    object tbLabEstintoriUBICAZIONE: TWideStringField
      FieldName = 'UBICAZIONE'
      Size = 255
    end
    object tbLabEstintoriNOTE_TECNICO: TWideStringField
      FieldName = 'NOTE_TECNICO'
      Size = 255
    end
    object tbLabEstintoriID_NFC: TWideStringField
      FieldName = 'ID_NFC'
      Size = 100
    end
    object tbLabEstintoriMARCA: TIntegerField
      FieldName = 'MARCA'
    end
    object tbLabEstintoriTIPO_INTERVENTO: TWideStringField
      FieldName = 'TIPO_INTERVENTO'
      FixedChar = True
      Size = 1
    end
    object tbLabEstintoriPERIODICITA_COLLAUDO: TIntegerField
      FieldName = 'PERIODICITA_COLLAUDO'
    end
    object tbLabEstintoriPERIODICITA_REVISIONE: TIntegerField
      FieldName = 'PERIODICITA_REVISIONE'
    end
    object tbLabEstintoriANOMALIA_DOWNLOAD: TWideStringField
      FieldName = 'ANOMALIA_DOWNLOAD'
      Size = 255
    end
    object tbLabEstintoriRITIRATO: TWideStringField
      FieldName = 'RITIRATO'
      FixedChar = True
      Size = 1
    end
    object tbLabEstintoriDATA_RITIRO: TDateField
      FieldName = 'DATA_RITIRO'
    end
    object tbLabEstintoriORARIO_RITIRO: TDateField
      FieldName = 'ORARIO_RITIRO'
    end
    object tbLabEstintoriTECNIOO_RITIRO: TIntegerField
      FieldName = 'TECNIOO_RITIRO'
    end
    object tbLabEstintoriCONSEGNATO: TWideStringField
      FieldName = 'CONSEGNATO'
      FixedChar = True
      Size = 1
    end
    object tbLabEstintoriDATA_LAVORAZIONE: TDateField
      FieldName = 'DATA_LAVORAZIONE'
    end
  end
  object tbLabErrori: TUniTable
    TableName = 'LAB_ESTINTORI_ERROR'
    OrderFields = 'STATINO;ESTINTORE'
    Connection = JanuaUniConnection1
    Left = 72
    Top = 248
    object tbLabErroriSTATINO: TWideStringField
      FieldName = 'STATINO'
      Required = True
      Size = 255
    end
    object tbLabErroriESTINTORE: TWideStringField
      FieldName = 'ESTINTORE'
      Required = True
      Size = 255
    end
    object tbLabErroriTECNICO: TWideStringField
      FieldName = 'TECNICO'
      Size = 255
    end
    object tbLabErroriDESCRIZIONE_STATINO: TWideStringField
      FieldName = 'DESCRIZIONE_STATINO'
      Size = 255
    end
    object tbLabErroriSTATO_STATINO: TWideStringField
      FieldName = 'STATO_STATINO'
      FixedChar = True
      Size = 1
    end
    object tbLabErroriDESCRIZIONE_ALTERNATIVA: TWideStringField
      FieldName = 'DESCRIZIONE_ALTERNATIVA'
      Size = 255
    end
    object tbLabErroriRESET_DATA_COLLAUDO: TWideStringField
      FieldName = 'RESET_DATA_COLLAUDO'
      FixedChar = True
      Size = 1
    end
    object tbLabErroriRESET_DATA_REVISIONE: TWideStringField
      FieldName = 'RESET_DATA_REVISIONE'
      FixedChar = True
      Size = 1
    end
    object tbLabErroriDATA_CONTROLLO: TWideStringField
      FieldName = 'DATA_CONTROLLO'
      Size = 255
    end
    object tbLabErroriDATA_SMALTIMENTO: TWideStringField
      FieldName = 'DATA_SMALTIMENTO'
      Size = 255
    end
    object tbLabErroriDATA_RESTITUZIONE: TWideStringField
      FieldName = 'DATA_RESTITUZIONE'
      Size = 255
    end
    object tbLabErroriDATA_CONSEGNA: TWideStringField
      FieldName = 'DATA_CONSEGNA'
      Size = 255
    end
    object tbLabErroriDATA_CONTROLLO_NEGATO: TWideStringField
      FieldName = 'DATA_CONTROLLO_NEGATO'
      Size = 255
    end
    object tbLabErroriDATA_STARTUP_REV: TWideStringField
      FieldName = 'DATA_STARTUP_REV'
      Size = 255
    end
    object tbLabErroriTIPO_ESTINTORE: TWideStringField
      FieldName = 'TIPO_ESTINTORE'
      Size = 255
    end
    object tbLabErroriPROGRESSIVO: TWideStringField
      FieldName = 'PROGRESSIVO'
      Size = 255
    end
    object tbLabErroriMATRICOLA: TWideStringField
      FieldName = 'MATRICOLA'
      Size = 255
    end
    object tbLabErroriANNO_COSTRUZIONE: TWideStringField
      FieldName = 'ANNO_COSTRUZIONE'
      Size = 255
    end
    object tbLabErroriDATA_STARTUP_COL: TWideStringField
      FieldName = 'DATA_STARTUP_COL'
      Size = 255
    end
    object tbLabErroriSTATO: TWideStringField
      FieldName = 'STATO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object tbLabErroriANOMALIA_APPROVATA: TWideStringField
      FieldName = 'ANOMALIA_APPROVATA'
      FixedChar = True
      Size = 1
    end
    object tbLabErroriANOMALIA: TWideStringField
      FieldName = 'ANOMALIA'
      Size = 255
    end
    object tbLabErroriUBICAZIONE: TWideStringField
      FieldName = 'UBICAZIONE'
      Size = 255
    end
    object tbLabErroriNOTE_TECNICO: TWideStringField
      FieldName = 'NOTE_TECNICO'
      Size = 255
    end
    object tbLabErroriID_NFC: TWideStringField
      FieldName = 'ID_NFC'
      Size = 100
    end
    object tbLabErroriMARCA: TWideStringField
      FieldName = 'MARCA'
      Size = 255
    end
    object tbLabErroriTIPO_INTERVENTO: TWideStringField
      FieldName = 'TIPO_INTERVENTO'
      FixedChar = True
      Size = 1
    end
    object tbLabErroriPERIODICITA_COLLAUDO: TWideStringField
      FieldName = 'PERIODICITA_COLLAUDO'
      Size = 255
    end
    object tbLabErroriPERIODICITA_REVISIONE: TWideStringField
      FieldName = 'PERIODICITA_REVISIONE'
      Size = 255
    end
    object tbLabErroriANOMALIA_DOWNLOAD: TWideStringField
      FieldName = 'ANOMALIA_DOWNLOAD'
      Size = 255
    end
    object tbLabErroriRITIRATO: TWideStringField
      FieldName = 'RITIRATO'
      FixedChar = True
      Size = 1
    end
    object tbLabErroriDATA_RITIRO: TWideStringField
      FieldName = 'DATA_RITIRO'
      Size = 255
    end
    object tbLabErroriORARIO_RITIRO: TWideStringField
      FieldName = 'ORARIO_RITIRO'
      Size = 255
    end
    object tbLabErroriTECNIOO_RITIRO: TWideStringField
      FieldName = 'TECNIOO_RITIRO'
      Size = 255
    end
    object tbLabErroriCONSEGNATO: TWideStringField
      FieldName = 'CONSEGNATO'
      FixedChar = True
      Size = 1
    end
    object tbLabErroriDATA_LAVORAZIONE: TWideStringField
      FieldName = 'DATA_LAVORAZIONE'
      Size = 255
    end
    object tbLabErroriERROR_MESSAGE: TWideStringField
      FieldName = 'ERROR_MESSAGE'
      Size = 255
    end
  end
  object sqlDeleteEstintori: TUniSQL
    Connection = JanuaUniConnection1
    SQL.Strings = (
      'DELETE FROM LABORATORIO_ESTINTORI')
    Left = 208
    Top = 48
  end
  object sqlDeleteErrori: TUniSQL
    Connection = JanuaUniConnection1
    SQL.Strings = (
      'DELETE FROM LAB_ESTINTORI_ERROR')
    Left = 208
    Top = 112
  end
  object spSetStatoStatini: TUniStoredProc
    StoredProcName = 'SET_STATINI_STATO'
    SQL.Strings = (
      'EXECUTE PROCEDURE SET_STATINI_STATO')
    Connection = JanuaUniConnection1
    Left = 208
    Top = 176
    CommandStoredProcName = 'SET_STATINI_STATO'
  end
  object sqlUpdatePronti: TUniSQL
    Connection = JanuaUniConnection1
    SQL.Strings = (
      'UPDATE STATINI S SET STATO_LAVORAZIONE = '#39'P'#39' WHERE '
      ' JSON_DA_MOBILE IS NULL'
      ' AND STATO_LAVORAZIONE <> '#39'P'#39
      ' AND EXISTS'
      '  ('
      '   SELECT 1 FROM LABORATORIO_ESTINTORI L WHERE '
      '          DATA_LAVORAZIONE IS NOT NULL '
      '          AND STATINO = S.CHIAVE'
      '   );')
    Left = 536
    Top = 80
  end
  object sqlUpdateRitirati: TUniSQL
    Connection = JanuaUniConnection1
    SQL.Strings = (
      'UPDATE STATINI S SET STATO_LAVORAZIONE = '#39'R'#39
      'WHERE JSON_DA_MOBILE IS NULL'
      'AND (STATO_LAVORAZIONE <> '#39'R'#39') OR STATO_LAVORAZIONE IS NULL'
      'AND EXISTS'
      '('
      
        ' SELECT 1 FROM LABORATORIO_ESTINTORI L WHERE DATA_LAVORAZIONE IS' +
        '  NULL AND STATINO = S.CHIAVE'
      ' );')
    Left = 536
    Top = 160
  end
  object sqlDataStatini: TUniSQL
    Connection = JanuaUniConnection1
    SQL.Strings = (
      'UPDATE STATINI SET '
      '  APPUNTAMENTO_DATA = NULL, APPUNTAMENTO_ORA = NULL'
      ' WHERE '
      '  APPUNTAMENTO_DATA  IS NOT NULL AND'
      '  APPUNTAMENTO_DATA < CURRENT_DATE;')
    Left = 536
    Top = 240
  end
  object sqlWhatsApp: TUniSQL
    Connection = JanuaUniConnection1
    SQL.Strings = (
      'UPDATE statini S '
      'SET S.wa_id = NULL, S.wa_image = null,  '
      'S.wa_state = NULL '
      'WHERE '
      'S.wa_id IS NOT NULL '
      'AND'
      'S.appuntamento_data IS NULL;')
    Left = 536
    Top = 320
  end
  object qryMasterStatini: TUniQuery
    Connection = JanuaUniConnection1
    SQL.Strings = (
      
        ' select l.STATINO,  l.TECNICO, l.DESCRIZIONE_STATINO, l.STATO_ST' +
        'ATINO, COUNT(1) as Estintori,'
      
        's.comune, s.cap,  s.data_intervento, s.sospeso, s.stato_lavorazi' +
        'one, s.data_chiusura_da_server'
      
        'from LABORATORIO_ESTINTORI l JOIN STATINI s  ON l.statino = s.ch' +
        'iave'
      
        'GROUP BY l.STATINO,  l.TECNICO, l.DESCRIZIONE_STATINO, l.STATO_S' +
        'TATINO,'
      
        's.comune, s.cap,  s.data_intervento, s.sospeso, s.stato_lavorazi' +
        'one, s.data_chiusura_da_server'
      'order by l.statino desc')
    Left = 368
    Top = 56
  end
  object dsMasterStatini: TUniDataSource
    DataSet = qryMasterStatini
    Left = 368
    Top = 120
  end
  object qryDetailLabEstintori: TUniQuery
    Connection = JanuaUniConnection1
    SQL.Strings = (
      'select * from LABORATORIO_ESTINTORI where STATINO = :STATINO')
    MasterSource = dsMasterStatini
    MasterFields = 'STATINO'
    DetailFields = 'STATINO'
    Left = 368
    Top = 192
    ParamData = <
      item
        DataType = ftInteger
        Name = 'STATINO'
        ParamType = ptInput
        Value = nil
      end>
  end
  object sqlWaNumber: TUniSQL
    Connection = JanuaUniConnection1
    SQL.Strings = (
      'insert into WHATSAPP_NUMBERS (WANUMBER, WA_NAME)'
      'SELECT S.wanumber, MIN( S.ragione_sociale)'
      'FROM STATINI S WHERE S.wanumber IS NOT NULL AND NOT EXISTS'
      '(SELECT 1 FROM whatsapp_numbers N WHERE N.wanumber = S.wanumber)'
      'GROUP BY S.wanumber')
    Left = 368
    Top = 272
  end
end
