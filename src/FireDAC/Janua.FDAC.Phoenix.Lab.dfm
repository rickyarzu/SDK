inherited dmFDACPhoenixLab: TdmFDACPhoenixLab
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 476
  Width = 542
  inherited FDConnectionPhoenix: TFDConnection
    LoginDialog = nil
    LoginPrompt = False
  end
  object tbLabEstintori: TFDTable
    IndexFieldNames = 'STATINO;ESTINTORE'
    Connection = FDConnectionPhoenix
    Transaction = FDTransaction1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'LABORATORIO_ESTINTORI'
    Left = 240
    Top = 40
    object tbLabEstintoriSTATINO: TIntegerField
      FieldName = 'STATINO'
      Origin = 'STATINO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbLabEstintoriESTINTORE: TIntegerField
      FieldName = 'ESTINTORE'
      Origin = 'ESTINTORE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbLabEstintoriTECNICO: TIntegerField
      FieldName = 'TECNICO'
      Origin = 'TECNICO'
    end
    object tbLabEstintoriDESCRIZIONE_STATINO: TStringField
      FieldName = 'DESCRIZIONE_STATINO'
      Origin = 'DESCRIZIONE_STATINO'
      Size = 255
    end
    object tbLabEstintoriSTATO_STATINO: TStringField
      FieldName = 'STATO_STATINO'
      Origin = 'STATO_STATINO'
      FixedChar = True
      Size = 1
    end
    object tbLabEstintoriDESCRIZIONE_ALTERNATIVA: TStringField
      FieldName = 'DESCRIZIONE_ALTERNATIVA'
      Origin = 'DESCRIZIONE_ALTERNATIVA'
      Size = 255
    end
    object tbLabEstintoriRESET_DATA_COLLAUDO: TStringField
      FieldName = 'RESET_DATA_COLLAUDO'
      Origin = 'RESET_DATA_COLLAUDO'
      FixedChar = True
      Size = 1
    end
    object tbLabEstintoriRESET_DATA_REVISIONE: TStringField
      FieldName = 'RESET_DATA_REVISIONE'
      Origin = 'RESET_DATA_REVISIONE'
      FixedChar = True
      Size = 1
    end
    object tbLabEstintoriDATA_CONTROLLO: TDateField
      FieldName = 'DATA_CONTROLLO'
      Origin = 'DATA_CONTROLLO'
    end
    object tbLabEstintoriDATA_SMALTIMENTO: TDateField
      FieldName = 'DATA_SMALTIMENTO'
      Origin = 'DATA_SMALTIMENTO'
    end
    object tbLabEstintoriDATA_RESTITUZIONE: TDateField
      FieldName = 'DATA_RESTITUZIONE'
      Origin = 'DATA_RESTITUZIONE'
    end
    object tbLabEstintoriDATA_CONSEGNA: TDateField
      FieldName = 'DATA_CONSEGNA'
      Origin = 'DATA_CONSEGNA'
    end
    object tbLabEstintoriDATA_CONTROLLO_NEGATO: TDateField
      FieldName = 'DATA_CONTROLLO_NEGATO'
      Origin = 'DATA_CONTROLLO_NEGATO'
    end
    object tbLabEstintoriDATA_STARTUP_REV: TDateField
      FieldName = 'DATA_STARTUP_REV'
      Origin = 'DATA_STARTUP_REV'
    end
    object tbLabEstintoriTIPO_ESTINTORE: TIntegerField
      FieldName = 'TIPO_ESTINTORE'
      Origin = 'TIPO_ESTINTORE'
    end
    object tbLabEstintoriPROGRESSIVO: TIntegerField
      FieldName = 'PROGRESSIVO'
      Origin = 'PROGRESSIVO'
      Required = True
    end
    object tbLabEstintoriMATRICOLA: TStringField
      FieldName = 'MATRICOLA'
      Origin = 'MATRICOLA'
      Size = 255
    end
    object tbLabEstintoriANNO_COSTRUZIONE: TSmallintField
      FieldName = 'ANNO_COSTRUZIONE'
      Origin = 'ANNO_COSTRUZIONE'
    end
    object tbLabEstintoriDATA_STARTUP_COL: TDateField
      FieldName = 'DATA_STARTUP_COL'
      Origin = 'DATA_STARTUP_COL'
    end
    object tbLabEstintoriSTATO: TStringField
      FieldName = 'STATO'
      Origin = 'STATO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object tbLabEstintoriANOMALIA_APPROVATA: TStringField
      FieldName = 'ANOMALIA_APPROVATA'
      Origin = 'ANOMALIA_APPROVATA'
      FixedChar = True
      Size = 1
    end
    object tbLabEstintoriANOMALIA: TStringField
      FieldName = 'ANOMALIA'
      Origin = 'ANOMALIA'
      Size = 255
    end
    object tbLabEstintoriUBICAZIONE: TStringField
      FieldName = 'UBICAZIONE'
      Origin = 'UBICAZIONE'
      Size = 255
    end
    object tbLabEstintoriNOTE_TECNICO: TStringField
      FieldName = 'NOTE_TECNICO'
      Origin = 'NOTE_TECNICO'
      Size = 255
    end
    object tbLabEstintoriID_NFC: TStringField
      FieldName = 'ID_NFC'
      Origin = 'ID_NFC'
      Size = 100
    end
    object tbLabEstintoriMARCA: TIntegerField
      FieldName = 'MARCA'
      Origin = 'MARCA'
    end
    object tbLabEstintoriTIPO_INTERVENTO: TStringField
      FieldName = 'TIPO_INTERVENTO'
      Origin = 'TIPO_INTERVENTO'
      FixedChar = True
      Size = 1
    end
    object tbLabEstintoriPERIODICITA_COLLAUDO: TIntegerField
      FieldName = 'PERIODICITA_COLLAUDO'
      Origin = 'PERIODICITA_COLLAUDO'
    end
    object tbLabEstintoriPERIODICITA_REVISIONE: TIntegerField
      FieldName = 'PERIODICITA_REVISIONE'
      Origin = 'PERIODICITA_REVISIONE'
    end
    object tbLabEstintoriANOMALIA_DOWNLOAD: TStringField
      FieldName = 'ANOMALIA_DOWNLOAD'
      Origin = 'ANOMALIA_DOWNLOAD'
      Size = 255
    end
    object tbLabEstintoriRITIRATO: TStringField
      FieldName = 'RITIRATO'
      Origin = 'RITIRATO'
      FixedChar = True
      Size = 1
    end
    object tbLabEstintoriDATA_RITIRO: TDateField
      FieldName = 'DATA_RITIRO'
      Origin = 'DATA_RITIRO'
    end
    object tbLabEstintoriORARIO_RITIRO: TDateField
      FieldName = 'ORARIO_RITIRO'
      Origin = 'ORARIO_RITIRO'
    end
    object tbLabEstintoriTECNIOO_RITIRO: TIntegerField
      FieldName = 'TECNIOO_RITIRO'
      Origin = 'TECNIOO_RITIRO'
    end
    object tbLabEstintoriCONSEGNATO: TStringField
      FieldName = 'CONSEGNATO'
      Origin = 'CONSEGNATO'
      FixedChar = True
      Size = 1
    end
    object tbLabEstintoriDATA_LAVORAZIONE: TDateField
      FieldName = 'DATA_LAVORAZIONE'
      Origin = 'DATA_LAVORAZIONE'
    end
    object tbLabEstintoriMOTIVO_RITIRO: TStringField
      FieldName = 'MOTIVO_RITIRO'
      Origin = 'MOTIVO_RITIRO'
      Size = 128
    end
  end
  object tbLabErrori: TFDTable
    IndexFieldNames = 'STATINO;ESTINTORE'
    Connection = FDConnectionPhoenix
    Transaction = FDTransaction1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'LAB_ESTINTORI_ERROR'
    Left = 240
    Top = 112
    object tbLabErroriSTATINO: TStringField
      FieldName = 'STATINO'
      Origin = 'STATINO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 255
    end
    object tbLabErroriESTINTORE: TStringField
      FieldName = 'ESTINTORE'
      Origin = 'ESTINTORE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 255
    end
    object tbLabErroriTECNICO: TStringField
      FieldName = 'TECNICO'
      Origin = 'TECNICO'
      Size = 255
    end
    object tbLabErroriDESCRIZIONE_STATINO: TStringField
      FieldName = 'DESCRIZIONE_STATINO'
      Origin = 'DESCRIZIONE_STATINO'
      Size = 255
    end
    object tbLabErroriSTATO_STATINO: TStringField
      FieldName = 'STATO_STATINO'
      Origin = 'STATO_STATINO'
      FixedChar = True
      Size = 1
    end
    object tbLabErroriDESCRIZIONE_ALTERNATIVA: TStringField
      FieldName = 'DESCRIZIONE_ALTERNATIVA'
      Origin = 'DESCRIZIONE_ALTERNATIVA'
      Size = 255
    end
    object tbLabErroriRESET_DATA_COLLAUDO: TStringField
      FieldName = 'RESET_DATA_COLLAUDO'
      Origin = 'RESET_DATA_COLLAUDO'
      FixedChar = True
      Size = 1
    end
    object tbLabErroriRESET_DATA_REVISIONE: TStringField
      FieldName = 'RESET_DATA_REVISIONE'
      Origin = 'RESET_DATA_REVISIONE'
      FixedChar = True
      Size = 1
    end
    object tbLabErroriDATA_CONTROLLO: TStringField
      FieldName = 'DATA_CONTROLLO'
      Origin = 'DATA_CONTROLLO'
      Size = 255
    end
    object tbLabErroriDATA_SMALTIMENTO: TStringField
      FieldName = 'DATA_SMALTIMENTO'
      Origin = 'DATA_SMALTIMENTO'
      Size = 255
    end
    object tbLabErroriDATA_RESTITUZIONE: TStringField
      FieldName = 'DATA_RESTITUZIONE'
      Origin = 'DATA_RESTITUZIONE'
      Size = 255
    end
    object tbLabErroriDATA_CONSEGNA: TStringField
      FieldName = 'DATA_CONSEGNA'
      Origin = 'DATA_CONSEGNA'
      Size = 255
    end
    object tbLabErroriDATA_CONTROLLO_NEGATO: TStringField
      FieldName = 'DATA_CONTROLLO_NEGATO'
      Origin = 'DATA_CONTROLLO_NEGATO'
      Size = 255
    end
    object tbLabErroriDATA_STARTUP_REV: TStringField
      FieldName = 'DATA_STARTUP_REV'
      Origin = 'DATA_STARTUP_REV'
      Size = 255
    end
    object tbLabErroriTIPO_ESTINTORE: TStringField
      FieldName = 'TIPO_ESTINTORE'
      Origin = 'TIPO_ESTINTORE'
      Size = 255
    end
    object tbLabErroriPROGRESSIVO: TStringField
      FieldName = 'PROGRESSIVO'
      Origin = 'PROGRESSIVO'
      Size = 255
    end
    object tbLabErroriMATRICOLA: TStringField
      FieldName = 'MATRICOLA'
      Origin = 'MATRICOLA'
      Size = 255
    end
    object tbLabErroriANNO_COSTRUZIONE: TStringField
      FieldName = 'ANNO_COSTRUZIONE'
      Origin = 'ANNO_COSTRUZIONE'
      Size = 255
    end
    object tbLabErroriDATA_STARTUP_COL: TStringField
      FieldName = 'DATA_STARTUP_COL'
      Origin = 'DATA_STARTUP_COL'
      Size = 255
    end
    object tbLabErroriSTATO: TStringField
      FieldName = 'STATO'
      Origin = 'STATO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object tbLabErroriANOMALIA_APPROVATA: TStringField
      FieldName = 'ANOMALIA_APPROVATA'
      Origin = 'ANOMALIA_APPROVATA'
      FixedChar = True
      Size = 1
    end
    object tbLabErroriANOMALIA: TStringField
      FieldName = 'ANOMALIA'
      Origin = 'ANOMALIA'
      Size = 255
    end
    object tbLabErroriUBICAZIONE: TStringField
      FieldName = 'UBICAZIONE'
      Origin = 'UBICAZIONE'
      Size = 255
    end
    object tbLabErroriNOTE_TECNICO: TStringField
      FieldName = 'NOTE_TECNICO'
      Origin = 'NOTE_TECNICO'
      Size = 255
    end
    object tbLabErroriID_NFC: TStringField
      FieldName = 'ID_NFC'
      Origin = 'ID_NFC'
      Size = 100
    end
    object tbLabErroriMARCA: TStringField
      FieldName = 'MARCA'
      Origin = 'MARCA'
      Size = 255
    end
    object tbLabErroriTIPO_INTERVENTO: TStringField
      FieldName = 'TIPO_INTERVENTO'
      Origin = 'TIPO_INTERVENTO'
      FixedChar = True
      Size = 1
    end
    object tbLabErroriPERIODICITA_COLLAUDO: TStringField
      FieldName = 'PERIODICITA_COLLAUDO'
      Origin = 'PERIODICITA_COLLAUDO'
      Size = 255
    end
    object tbLabErroriPERIODICITA_REVISIONE: TStringField
      FieldName = 'PERIODICITA_REVISIONE'
      Origin = 'PERIODICITA_REVISIONE'
      Size = 255
    end
    object tbLabErroriANOMALIA_DOWNLOAD: TStringField
      FieldName = 'ANOMALIA_DOWNLOAD'
      Origin = 'ANOMALIA_DOWNLOAD'
      Size = 255
    end
    object tbLabErroriRITIRATO: TStringField
      FieldName = 'RITIRATO'
      Origin = 'RITIRATO'
      FixedChar = True
      Size = 1
    end
    object tbLabErroriDATA_RITIRO: TStringField
      FieldName = 'DATA_RITIRO'
      Origin = 'DATA_RITIRO'
      Size = 255
    end
    object tbLabErroriORARIO_RITIRO: TStringField
      FieldName = 'ORARIO_RITIRO'
      Origin = 'ORARIO_RITIRO'
      Size = 255
    end
    object tbLabErroriTECNIOO_RITIRO: TStringField
      FieldName = 'TECNIOO_RITIRO'
      Origin = 'TECNIOO_RITIRO'
      Size = 255
    end
    object tbLabErroriCONSEGNATO: TStringField
      FieldName = 'CONSEGNATO'
      Origin = 'CONSEGNATO'
      FixedChar = True
      Size = 1
    end
    object tbLabErroriDATA_LAVORAZIONE: TStringField
      FieldName = 'DATA_LAVORAZIONE'
      Origin = 'DATA_LAVORAZIONE'
      Size = 255
    end
    object tbLabErroriERROR_MESSAGE: TStringField
      FieldName = 'ERROR_MESSAGE'
      Origin = 'ERROR_MESSAGE'
      Size = 255
    end
  end
  object sqlDeleteEstintori: TFDCommand
    Connection = FDConnectionPhoenix
    Transaction = FDTransaction1
    CommandText.Strings = (
      'DELETE FROM LABORATORIO_ESTINTORI')
    Left = 240
    Top = 192
  end
  object FDTransaction1: TFDTransaction
    Connection = FDConnectionPhoenix
    Left = 80
    Top = 216
  end
  object sqlDeleteErrori: TFDCommand
    Connection = FDConnectionPhoenix
    Transaction = FDTransaction1
    CommandText.Strings = (
      'DELETE FROM LAB_ESTINTORI_ERROR')
    Left = 240
    Top = 264
  end
  object qryMasterStatini: TFDQuery
    Connection = FDConnectionPhoenix
    Transaction = FDTransaction1
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
    Left = 424
    Top = 16
    object qryMasterStatiniSTATINO: TIntegerField
      FieldName = 'STATINO'
      Origin = 'STATINO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMasterStatiniTECNICO: TIntegerField
      FieldName = 'TECNICO'
      Origin = 'TECNICO'
    end
    object qryMasterStatiniDESCRIZIONE_STATINO: TStringField
      FieldName = 'DESCRIZIONE_STATINO'
      Origin = 'DESCRIZIONE_STATINO'
      Size = 255
    end
    object qryMasterStatiniSTATO_STATINO: TStringField
      FieldName = 'STATO_STATINO'
      Origin = 'STATO_STATINO'
      FixedChar = True
      Size = 1
    end
    object qryMasterStatiniESTINTORI: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'ESTINTORI'
      Origin = 'ESTINTORI'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryMasterStatiniCOMUNE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COMUNE'
      Origin = 'COMUNE'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
    object qryMasterStatiniCAP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CAP'
      Origin = 'CAP'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object qryMasterStatiniDATA_INTERVENTO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_INTERVENTO'
      Origin = 'DATA_INTERVENTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryMasterStatiniSOSPESO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SOSPESO'
      Origin = 'SOSPESO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryMasterStatiniSTATO_LAVORAZIONE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATO_LAVORAZIONE'
      Origin = 'STATO_LAVORAZIONE'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryMasterStatiniDATA_CHIUSURA_DA_SERVER: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_CHIUSURA_DA_SERVER'
      Origin = 'DATA_CHIUSURA_DA_SERVER'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object dsMasterStatini: TDataSource
    DataSet = qryMasterStatini
    Left = 424
    Top = 80
  end
  object qryDetailLabEstintori: TFDQuery
    MasterSource = dsMasterStatini
    MasterFields = 'STATINO'
    DetailFields = 'STATINO'
    Connection = FDConnectionPhoenix
    Transaction = FDTransaction1
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      ' select * from LABORATORIO_ESTINTORI where STATINO = :STATINO')
    Left = 424
    Top = 152
    ParamData = <
      item
        Name = 'STATINO'
        DataType = ftInteger
        ParamType = ptInput
        Value = 2123222
      end>
    object qryDetailLabEstintoriSTATINO: TIntegerField
      FieldName = 'STATINO'
      Origin = 'STATINO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDetailLabEstintoriESTINTORE: TIntegerField
      FieldName = 'ESTINTORE'
      Origin = 'ESTINTORE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDetailLabEstintoriTECNICO: TIntegerField
      FieldName = 'TECNICO'
      Origin = 'TECNICO'
    end
    object qryDetailLabEstintoriDESCRIZIONE_STATINO: TStringField
      FieldName = 'DESCRIZIONE_STATINO'
      Origin = 'DESCRIZIONE_STATINO'
      Size = 255
    end
    object qryDetailLabEstintoriSTATO_STATINO: TStringField
      FieldName = 'STATO_STATINO'
      Origin = 'STATO_STATINO'
      FixedChar = True
      Size = 1
    end
    object qryDetailLabEstintoriDESCRIZIONE_ALTERNATIVA: TStringField
      FieldName = 'DESCRIZIONE_ALTERNATIVA'
      Origin = 'DESCRIZIONE_ALTERNATIVA'
      Size = 255
    end
    object qryDetailLabEstintoriRESET_DATA_COLLAUDO: TStringField
      FieldName = 'RESET_DATA_COLLAUDO'
      Origin = 'RESET_DATA_COLLAUDO'
      FixedChar = True
      Size = 1
    end
    object qryDetailLabEstintoriRESET_DATA_REVISIONE: TStringField
      FieldName = 'RESET_DATA_REVISIONE'
      Origin = 'RESET_DATA_REVISIONE'
      FixedChar = True
      Size = 1
    end
    object qryDetailLabEstintoriDATA_CONTROLLO: TDateField
      FieldName = 'DATA_CONTROLLO'
      Origin = 'DATA_CONTROLLO'
    end
    object qryDetailLabEstintoriDATA_SMALTIMENTO: TDateField
      FieldName = 'DATA_SMALTIMENTO'
      Origin = 'DATA_SMALTIMENTO'
    end
    object qryDetailLabEstintoriDATA_RESTITUZIONE: TDateField
      FieldName = 'DATA_RESTITUZIONE'
      Origin = 'DATA_RESTITUZIONE'
    end
    object qryDetailLabEstintoriDATA_CONSEGNA: TDateField
      FieldName = 'DATA_CONSEGNA'
      Origin = 'DATA_CONSEGNA'
    end
    object qryDetailLabEstintoriDATA_CONTROLLO_NEGATO: TDateField
      FieldName = 'DATA_CONTROLLO_NEGATO'
      Origin = 'DATA_CONTROLLO_NEGATO'
    end
    object qryDetailLabEstintoriDATA_STARTUP_REV: TDateField
      FieldName = 'DATA_STARTUP_REV'
      Origin = 'DATA_STARTUP_REV'
    end
    object qryDetailLabEstintoriTIPO_ESTINTORE: TIntegerField
      FieldName = 'TIPO_ESTINTORE'
      Origin = 'TIPO_ESTINTORE'
    end
    object qryDetailLabEstintoriPROGRESSIVO: TIntegerField
      FieldName = 'PROGRESSIVO'
      Origin = 'PROGRESSIVO'
      Required = True
    end
    object qryDetailLabEstintoriMATRICOLA: TStringField
      FieldName = 'MATRICOLA'
      Origin = 'MATRICOLA'
      Size = 255
    end
    object qryDetailLabEstintoriANNO_COSTRUZIONE: TSmallintField
      FieldName = 'ANNO_COSTRUZIONE'
      Origin = 'ANNO_COSTRUZIONE'
    end
    object qryDetailLabEstintoriDATA_STARTUP_COL: TDateField
      FieldName = 'DATA_STARTUP_COL'
      Origin = 'DATA_STARTUP_COL'
    end
    object qryDetailLabEstintoriSTATO: TStringField
      FieldName = 'STATO'
      Origin = 'STATO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryDetailLabEstintoriANOMALIA_APPROVATA: TStringField
      FieldName = 'ANOMALIA_APPROVATA'
      Origin = 'ANOMALIA_APPROVATA'
      FixedChar = True
      Size = 1
    end
    object qryDetailLabEstintoriANOMALIA: TStringField
      FieldName = 'ANOMALIA'
      Origin = 'ANOMALIA'
      Size = 255
    end
    object qryDetailLabEstintoriUBICAZIONE: TStringField
      FieldName = 'UBICAZIONE'
      Origin = 'UBICAZIONE'
      Size = 255
    end
    object qryDetailLabEstintoriNOTE_TECNICO: TStringField
      FieldName = 'NOTE_TECNICO'
      Origin = 'NOTE_TECNICO'
      Size = 255
    end
    object qryDetailLabEstintoriID_NFC: TStringField
      FieldName = 'ID_NFC'
      Origin = 'ID_NFC'
      Size = 100
    end
    object qryDetailLabEstintoriMARCA: TIntegerField
      FieldName = 'MARCA'
      Origin = 'MARCA'
    end
    object qryDetailLabEstintoriTIPO_INTERVENTO: TStringField
      FieldName = 'TIPO_INTERVENTO'
      Origin = 'TIPO_INTERVENTO'
      FixedChar = True
      Size = 1
    end
    object qryDetailLabEstintoriPERIODICITA_COLLAUDO: TIntegerField
      FieldName = 'PERIODICITA_COLLAUDO'
      Origin = 'PERIODICITA_COLLAUDO'
    end
    object qryDetailLabEstintoriPERIODICITA_REVISIONE: TIntegerField
      FieldName = 'PERIODICITA_REVISIONE'
      Origin = 'PERIODICITA_REVISIONE'
    end
    object qryDetailLabEstintoriANOMALIA_DOWNLOAD: TStringField
      FieldName = 'ANOMALIA_DOWNLOAD'
      Origin = 'ANOMALIA_DOWNLOAD'
      Size = 255
    end
    object qryDetailLabEstintoriRITIRATO: TStringField
      FieldName = 'RITIRATO'
      Origin = 'RITIRATO'
      FixedChar = True
      Size = 1
    end
    object qryDetailLabEstintoriDATA_RITIRO: TDateField
      FieldName = 'DATA_RITIRO'
      Origin = 'DATA_RITIRO'
    end
    object qryDetailLabEstintoriORARIO_RITIRO: TDateField
      FieldName = 'ORARIO_RITIRO'
      Origin = 'ORARIO_RITIRO'
    end
    object qryDetailLabEstintoriTECNIOO_RITIRO: TIntegerField
      FieldName = 'TECNIOO_RITIRO'
      Origin = 'TECNIOO_RITIRO'
    end
    object qryDetailLabEstintoriCONSEGNATO: TStringField
      FieldName = 'CONSEGNATO'
      Origin = 'CONSEGNATO'
      FixedChar = True
      Size = 1
    end
    object qryDetailLabEstintoriDATA_LAVORAZIONE: TDateField
      FieldName = 'DATA_LAVORAZIONE'
      Origin = 'DATA_LAVORAZIONE'
    end
  end
  object sqlUpdatePronti: TFDCommand
    Connection = FDConnectionPhoenix
    Transaction = FDTransaction1
    CommandText.Strings = (
      
        'UPDATE STATINI SET STATO_LAVORAZIONE = '#39'P'#39' WHERE JSON_DA_MOBILE ' +
        'IS NULL AND CHIAVE IN'
      '('
      
        ' SELECT DISTINCT STATINO FROM LABORATORIO_ESTINTORI WHERE DATA_L' +
        'AVORAZIONE IS NOT NULL'
      ' );')
    Left = 424
    Top = 224
  end
  object sqlUpdateRitirati: TFDCommand
    Connection = FDConnectionPhoenix
    Transaction = FDTransaction1
    CommandText.Strings = (
      
        'UPDATE STATINI SET STATO_LAVORAZIONE = '#39'R'#39' WHERE JSON_DA_MOBILE ' +
        'IS NULL AND CHIAVE IN'
      '('
      
        ' SELECT DISTINCT STATINO FROM LABORATORIO_ESTINTORI WHERE DATA_L' +
        'AVORAZIONE IS  NULL'
      ' );')
    Left = 424
    Top = 304
  end
  object spSetStatoStatini: TFDStoredProc
    Connection = FDConnectionPhoenix
    StoredProcName = 'SET_STATINI_STATO'
    Left = 240
    Top = 344
  end
  object sqlDataStatini: TFDCommand
    Connection = FDConnectionPhoenix
    CommandText.Strings = (
      
        '     UPDATE STATINI SET APPUNTAMENTO_DATA = NULL, APPUNTAMENTO_O' +
        'RA = NULL'
      '        WHERE APPUNTAMENTO_DATA < CURRENT_DATE;')
    Left = 424
    Top = 392
  end
end
