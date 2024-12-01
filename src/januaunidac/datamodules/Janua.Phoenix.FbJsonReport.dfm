inherited dmFbPhoenixJsonReport: TdmFbPhoenixJsonReport
  Height = 575
  Width = 1039
  inherited JanuaUniConnection1: TJanuaUniConnection
    Connected = True
    Left = 96
    EncryptedPassword = '92FF9EFF8CFF8BFF9AFF8DFF94FF9AFF86FF'
  end
  inherited InterBaseUniProvider1: TInterBaseUniProvider
    Left = 208
    Top = 64
  end
  object qryStatini: TUniQuery
    Connection = JanuaUniConnection1
    SQL.Strings = (
      'select * from statini where chiave = :statino')
    Left = 392
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'statino'
        Value = nil
      end>
    object qryStatiniCHIAVE: TIntegerField
      FieldName = 'CHIAVE'
      Required = True
    end
    object qryStatiniCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object qryStatiniFILIALE: TIntegerField
      FieldName = 'FILIALE'
    end
    object qryStatiniTITOLO: TStringField
      FieldName = 'TITOLO'
      Size = 10
    end
    object qryStatiniRAGIONE_SOCIALE: TStringField
      FieldName = 'RAGIONE_SOCIALE'
      Size = 255
    end
    object qryStatiniINDIRIZZO: TStringField
      FieldName = 'INDIRIZZO'
      Size = 255
    end
    object qryStatiniCOMUNE: TStringField
      FieldName = 'COMUNE'
      Size = 255
    end
    object qryStatiniPROVINCIA: TStringField
      FieldName = 'PROVINCIA'
      FixedChar = True
      Size = 2
    end
    object qryStatiniCAP: TStringField
      FieldName = 'CAP'
      Size = 10
    end
    object qryStatiniTELEFONO: TStringField
      FieldName = 'TELEFONO'
      Size = 255
    end
    object qryStatiniCELLULARE: TStringField
      FieldName = 'CELLULARE'
      Size = 255
    end
    object qryStatiniNOTE: TBlobField
      FieldName = 'NOTE'
    end
    object qryStatiniORARIO_APERTURA_DAL1: TTimeField
      FieldName = 'ORARIO_APERTURA_DAL1'
    end
    object qryStatiniORARIO_APERTURA_DAL2: TTimeField
      FieldName = 'ORARIO_APERTURA_DAL2'
    end
    object qryStatiniORARIO_APERTURA_AL1: TTimeField
      FieldName = 'ORARIO_APERTURA_AL1'
    end
    object qryStatiniORARIO_APERTURA_AL2: TTimeField
      FieldName = 'ORARIO_APERTURA_AL2'
    end
    object qryStatiniCHIUSURA: TStringField
      FieldName = 'CHIUSURA'
      Size = 255
    end
    object qryStatiniFATTURA: TIntegerField
      FieldName = 'FATTURA'
    end
    object qryStatiniDATA_INTERVENTO: TDateField
      FieldName = 'DATA_INTERVENTO'
    end
    object qryStatiniGENERAZIONE_AUTOMATICA: TIntegerField
      FieldName = 'GENERAZIONE_AUTOMATICA'
    end
    object qryStatiniTECNICO_INTERVENTO: TIntegerField
      FieldName = 'TECNICO_INTERVENTO'
    end
    object qryStatiniSCANSIONE: TBlobField
      FieldName = 'SCANSIONE'
    end
    object qryStatiniREGISTRO: TBlobField
      FieldName = 'REGISTRO'
    end
    object qryStatiniNOTE_PER_IL_TECNICO: TBlobField
      FieldName = 'NOTE_PER_IL_TECNICO'
    end
    object qryStatiniSOSPESO: TStringField
      FieldName = 'SOSPESO'
      FixedChar = True
      Size = 1
    end
    object qryStatiniDA_ESPORTARE_SUL_WEB: TStringField
      FieldName = 'DA_ESPORTARE_SUL_WEB'
      FixedChar = True
      Size = 1
    end
    object qryStatiniRESPONSABILE: TIntegerField
      FieldName = 'RESPONSABILE'
    end
    object qryStatiniESPORTATO_SU_MOBILE: TStringField
      FieldName = 'ESPORTATO_SU_MOBILE'
      FixedChar = True
      Size = 1
    end
    object qryStatiniNOTE_DAL_TECNICO: TBlobField
      FieldName = 'NOTE_DAL_TECNICO'
    end
    object qryStatiniJSON_DA_MOBILE: TBlobField
      FieldName = 'JSON_DA_MOBILE'
    end
    object qryStatiniPDF_STATINO: TBlobField
      FieldName = 'PDF_STATINO'
    end
    object qryStatiniREGISTRO_IS_PDF: TStringField
      FieldName = 'REGISTRO_IS_PDF'
      FixedChar = True
      Size = 1
    end
    object qryStatiniVERBALE_PROVA_DINAMICA: TBlobField
      FieldName = 'VERBALE_PROVA_DINAMICA'
    end
    object qryStatiniVERBALE_MANICHETTE: TBlobField
      FieldName = 'VERBALE_MANICHETTE'
    end
    object qryStatiniPREVENTIVO: TIntegerField
      FieldName = 'PREVENTIVO'
    end
    object qryStatiniIGNORA_EVIDENZIAZIONE: TStringField
      FieldName = 'IGNORA_EVIDENZIAZIONE'
      FixedChar = True
      Size = 1
    end
    object qryStatiniANNULLATO_DA_TABLET: TStringField
      FieldName = 'ANNULLATO_DA_TABLET'
      FixedChar = True
      Size = 1
    end
    object qryStatiniMOBILEWARN_NUOVA_ATTREZZATURA: TStringField
      FieldName = 'MOBILEWARN_NUOVA_ATTREZZATURA'
      FixedChar = True
      Size = 1
    end
    object qryStatiniMOBILEWARN_ORDINARIA_RITIRATA: TStringField
      FieldName = 'MOBILEWARN_ORDINARIA_RITIRATA'
      FixedChar = True
      Size = 1
    end
    object qryStatiniMOBILEWARN_N_ORDIN_CONTROLLATA: TStringField
      FieldName = 'MOBILEWARN_N_ORDIN_CONTROLLATA'
      FixedChar = True
      Size = 1
    end
    object qryStatiniMOBILEWARN_SMALTIMENTO: TStringField
      FieldName = 'MOBILEWARN_SMALTIMENTO'
      FixedChar = True
      Size = 1
    end
    object qryStatiniSTATO_LAVORAZIONE: TStringField
      FieldName = 'STATO_LAVORAZIONE'
      FixedChar = True
      Size = 1
    end
    object qryStatiniDATA_CHIUSURA_DA_SERVER: TDateField
      FieldName = 'DATA_CHIUSURA_DA_SERVER'
    end
    object qryStatiniCHIUSURA_EXT: TStringField
      FieldName = 'CHIUSURA_EXT'
      Size = 50
    end
    object qryStatiniCHIUSURA_STATINO: TBlobField
      FieldName = 'CHIUSURA_STATINO'
    end
    object qryStatiniMOBILEWARN_NON_ESEGUITI: TStringField
      FieldName = 'MOBILEWARN_NON_ESEGUITI'
      FixedChar = True
      Size = 1
    end
    object qryStatiniPRESA_IN_CARICO: TStringField
      FieldName = 'PRESA_IN_CARICO'
      FixedChar = True
      Size = 1
    end
    object qryStatiniFORNITURA: TStringField
      FieldName = 'FORNITURA'
      FixedChar = True
      Size = 1
    end
    object qryStatiniAPPUNTAMENTO_DATA: TDateField
      FieldName = 'APPUNTAMENTO_DATA'
    end
    object qryStatiniAPPUNTAMENTO_ORA: TTimeField
      FieldName = 'APPUNTAMENTO_ORA'
    end
    object qryStatiniSTATO: TSmallintField
      FieldName = 'STATO'
    end
    object qryStatiniJGUID: TBytesField
      FieldName = 'JGUID'
    end
    object qryStatiniGCAL: TStringField
      FieldName = 'GCAL'
      FixedChar = True
      Size = 1
    end
    object qryStatiniWANUMBER: TStringField
      FieldName = 'WANUMBER'
    end
    object qryStatiniWA: TStringField
      FieldName = 'WA'
      FixedChar = True
      Size = 1
    end
  end
  object tbLuci: TUniTable
    TableName = 'STATINI_LUCI'
    Connection = JanuaUniConnection1
    MasterSource = dsStatini
    MasterFields = 'CHIAVE'
    DetailFields = 'STATINO'
    Left = 392
    Top = 200
  end
  object tbEstintori: TUniTable
    TableName = 'STATINI_ESTINTORI'
    Connection = JanuaUniConnection1
    MasterSource = dsStatini
    MasterFields = 'CHIAVE'
    DetailFields = 'STATINO'
    Left = 504
    Top = 200
  end
  object tbIdranti: TUniTable
    TableName = 'STATINI_IDRANTI'
    Connection = JanuaUniConnection1
    MasterSource = dsStatini
    MasterFields = 'CHIAVE'
    DetailFields = 'STATINO'
    Left = 304
    Top = 200
  end
  object tbBocchelli: TUniTable
    TableName = 'STATINI_BOCCHELLI'
    Connection = JanuaUniConnection1
    MasterSource = dsIdranti
    MasterFields = 'STATINO;CHIAVE'
    DetailFields = 'STATINO;IDRANTE'
    Left = 304
    Top = 344
  end
  object dsStatini: TUniDataSource
    DataSet = qryStatini
    Left = 392
    Top = 128
  end
  object dsIdranti: TUniDataSource
    DataSet = tbIdranti
    Left = 304
    Top = 272
  end
  object tbRilFumo: TUniTable
    TableName = 'STATINI_RILEVATORI_FUMO'
    Connection = JanuaUniConnection1
    MasterSource = dsStatini
    MasterFields = 'CHIAVE'
    DetailFields = 'STATINO'
    Left = 616
    Top = 200
  end
  object tbPorte: TUniTable
    TableName = 'STATINI_PORTE'
    Connection = JanuaUniConnection1
    MasterSource = dsStatini
    MasterFields = 'CHIAVE'
    DetailFields = 'STATINO'
    Left = 200
    Top = 200
  end
  object tbGruppi: TUniTable
    TableName = 'statini_gruppi_pressurizzazione'
    Connection = JanuaUniConnection1
    MasterSource = dsStatini
    MasterFields = 'CHIAVE'
    DetailFields = 'STATINO'
    Left = 24
    Top = 200
  end
  object tbElementi: TUniTable
    TableName = 'statini_elementi_elettrici'
    Connection = JanuaUniConnection1
    MasterSource = dsImpianti
    MasterFields = 'STATINO;CHIAVE'
    DetailFields = 'STATINO;IMPIANTO'
    Left = 112
    Top = 344
    object tbElementiSTATINO: TIntegerField
      FieldName = 'STATINO'
    end
    object tbElementiIMPIANTO: TIntegerField
      FieldName = 'IMPIANTO'
    end
    object tbElementiANOMALIA: TStringField
      FieldName = 'ANOMALIA'
      Size = 255
    end
    object tbElementiANOMALIA_APPROVATA: TStringField
      FieldName = 'ANOMALIA_APPROVATA'
      FixedChar = True
      Size = 1
    end
    object tbElementiANOMALIAONDOWNLOAD: TStringField
      FieldName = 'ANOMALIAONDOWNLOAD'
      Size = 255
    end
    object tbElementiANOMALIARISOLTA: TStringField
      FieldName = 'ANOMALIARISOLTA'
      FixedChar = True
      Size = 1
    end
    object tbElementiCHIAVE: TIntegerField
      FieldName = 'CHIAVE'
    end
    object tbElementiCONTROLLATO: TStringField
      FieldName = 'CONTROLLATO'
      FixedChar = True
      Size = 1
    end
    object tbElementiDATACONTROLLO: TDateField
      FieldName = 'DATACONTROLLO'
    end
    object tbElementiMARCA: TIntegerField
      FieldName = 'MARCA'
    end
    object tbElementiMODELLO: TStringField
      FieldName = 'MODELLO'
      Size = 255
    end
    object tbElementiORARIOCONTROLLO: TStringField
      FieldName = 'ORARIOCONTROLLO'
      Size = 255
    end
    object tbElementiPROGRESSIVO: TIntegerField
      FieldName = 'PROGRESSIVO'
    end
    object tbElementiSTATO: TStringField
      FieldName = 'STATO'
      Size = 255
    end
    object tbElementiTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object tbElementiTIPO_INTERVENTO: TStringField
      FieldName = 'TIPO_INTERVENTO'
      Size = 255
    end
    object tbElementiTECNICOCONTROLLO: TIntegerField
      FieldName = 'TECNICOCONTROLLO'
    end
    object tbElementiUBICAZIONE: TStringField
      FieldName = 'UBICAZIONE'
      Size = 255
    end
  end
  object tbImpianti: TUniTable
    TableName = 'statini_impianti_elettrici'
    Connection = JanuaUniConnection1
    MasterSource = dsStatini
    MasterFields = 'CHIAVE'
    DetailFields = 'STATINO'
    Left = 112
    Top = 200
    object tbImpiantiSTATINO: TIntegerField
      FieldName = 'STATINO'
    end
    object tbImpiantiCHIAVE: TIntegerField
      FieldName = 'CHIAVE'
    end
    object tbImpiantiDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 255
    end
    object tbImpiantiPREZZO: TIntegerField
      FieldName = 'PREZZO'
    end
    object tbImpiantiSTATO: TStringField
      FieldName = 'STATO'
      Size = 255
    end
    object tbImpiantiTIPO_VISITA: TStringField
      FieldName = 'TIPO_VISITA'
      Size = 255
    end
    object tbImpiantiUBICAZIONE: TStringField
      FieldName = 'UBICAZIONE'
      Size = 255
    end
  end
  object dsImpianti: TUniDataSource
    DataSet = tbImpianti
    Left = 112
    Top = 272
  end
end
