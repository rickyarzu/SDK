inherited dmFbPhoenixJsonReport: TdmFbPhoenixJsonReport
  Height = 895
  Width = 860
  inherited JanuaUniConnection1: TJanuaUniConnection
    SpecificOptions.Strings = (
      'InterBase.UseUnicode=True')
    Options.DisconnectedMode = True
    Left = 96
    EncryptedPassword = '92FF9EFF8CFF8BFF9AFF8DFF94FF9AFF86FF'
  end
  inherited InterBaseUniProvider1: TInterBaseUniProvider
    Left = 192
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
    object tbLuciSTATINO: TIntegerField
      FieldName = 'STATINO'
    end
    object tbLuciANOMALIA: TStringField
      FieldName = 'ANOMALIA'
      Size = 255
    end
    object tbLuciANOMALIA_APPROVATA: TStringField
      FieldName = 'ANOMALIA_APPROVATA'
      FixedChar = True
      Size = 1
    end
    object tbLuciAUTONOMIA: TIntegerField
      FieldName = 'AUTONOMIA'
    end
    object tbLuciANOMALIAONDOWNLOAD: TStringField
      FieldName = 'ANOMALIAONDOWNLOAD'
      Size = 255
    end
    object tbLuciANOMALIARISOLTA: TStringField
      FieldName = 'ANOMALIARISOLTA'
      FixedChar = True
      Size = 1
    end
    object tbLuciCHIAVE: TIntegerField
      FieldName = 'CHIAVE'
    end
    object tbLuciCONSEGNATO: TStringField
      FieldName = 'CONSEGNATO'
      FixedChar = True
      Size = 1
    end
    object tbLuciCONTROLLATO: TStringField
      FieldName = 'CONTROLLATO'
      FixedChar = True
      Size = 1
    end
    object tbLuciDATACONTROLLO: TDateField
      FieldName = 'DATACONTROLLO'
    end
    object tbLuciID_NFC: TStringField
      FieldName = 'ID_NFC'
      Size = 255
    end
    object tbLuciMARCA: TIntegerField
      FieldName = 'MARCA'
    end
    object tbLuciMODELLO: TStringField
      FieldName = 'MODELLO'
      Size = 255
    end
    object tbLuciNOTE_TECNICO: TStringField
      FieldName = 'NOTE_TECNICO'
      Size = 255
    end
    object tbLuciORARIOCONTROLLO: TStringField
      FieldName = 'ORARIOCONTROLLO'
      Size = 255
    end
    object tbLuciPROGRESSIVO: TIntegerField
      FieldName = 'PROGRESSIVO'
    end
    object tbLuciSTATO: TStringField
      FieldName = 'STATO'
      Size = 255
    end
    object tbLuciTIPO_INTERVENTO: TStringField
      FieldName = 'TIPO_INTERVENTO'
      Size = 255
    end
    object tbLuciTIPO_LUCE: TIntegerField
      FieldName = 'TIPO_LUCE'
    end
    object tbLuciTECNICOCONTROLLO: TIntegerField
      FieldName = 'TECNICOCONTROLLO'
    end
    object tbLuciUBICAZIONE: TStringField
      FieldName = 'UBICAZIONE'
      Size = 255
    end
  end
  object tbEstintori: TUniTable
    TableName = 'STATINI_ESTINTORI'
    Connection = JanuaUniConnection1
    MasterSource = dsStatini
    MasterFields = 'CHIAVE'
    DetailFields = 'STATINO'
    Left = 504
    Top = 200
    object tbEstintoriSTATINO: TIntegerField
      FieldName = 'STATINO'
    end
    object tbEstintoriANNO_COSTRUZIONE: TStringField
      FieldName = 'ANNO_COSTRUZIONE'
      Size = 255
    end
    object tbEstintoriANOMALIA: TStringField
      FieldName = 'ANOMALIA'
      Size = 255
    end
    object tbEstintoriANOMALIA_APPROVATA: TStringField
      FieldName = 'ANOMALIA_APPROVATA'
      FixedChar = True
      Size = 1
    end
    object tbEstintoriAGGIUNTODAMOBILE: TStringField
      FieldName = 'AGGIUNTODAMOBILE'
      FixedChar = True
      Size = 1
    end
    object tbEstintoriANOMALIAONDOWNLOAD: TStringField
      FieldName = 'ANOMALIAONDOWNLOAD'
      Size = 255
    end
    object tbEstintoriANOMALIARISOLTA: TStringField
      FieldName = 'ANOMALIARISOLTA'
      FixedChar = True
      Size = 1
    end
    object tbEstintoriCHIAVE: TIntegerField
      FieldName = 'CHIAVE'
    end
    object tbEstintoriCONSEGNATO: TStringField
      FieldName = 'CONSEGNATO'
      FixedChar = True
      Size = 1
    end
    object tbEstintoriCONTROLLATO: TStringField
      FieldName = 'CONTROLLATO'
      FixedChar = True
      Size = 1
    end
    object tbEstintoriDATA_LAVORAZIONE: TDateField
      FieldName = 'DATA_LAVORAZIONE'
    end
    object tbEstintoriDATA_STARTUP_COL: TStringField
      FieldName = 'DATA_STARTUP_COL'
      Size = 255
    end
    object tbEstintoriDATA_STARTUP_REV: TStringField
      FieldName = 'DATA_STARTUP_REV'
      Size = 255
    end
    object tbEstintoriDATACONSEGNA: TDateField
      FieldName = 'DATACONSEGNA'
    end
    object tbEstintoriDATACONTROLLO: TDateField
      FieldName = 'DATACONTROLLO'
    end
    object tbEstintoriDATACONTROLLONEGATO: TDateField
      FieldName = 'DATACONTROLLONEGATO'
    end
    object tbEstintoriDATARESTITUZIONE: TDateField
      FieldName = 'DATARESTITUZIONE'
    end
    object tbEstintoriDATARITIRO: TDateField
      FieldName = 'DATARITIRO'
    end
    object tbEstintoriDATASMALTIMENTO: TDateField
      FieldName = 'DATASMALTIMENTO'
    end
    object tbEstintoriID_NFC: TStringField
      FieldName = 'ID_NFC'
      Size = 255
    end
    object tbEstintoriMARCA: TIntegerField
      FieldName = 'MARCA'
    end
    object tbEstintoriMATRICOLA: TStringField
      FieldName = 'MATRICOLA'
      Size = 255
    end
    object tbEstintoriMOTIVOCONTROLLONEGATO: TStringField
      FieldName = 'MOTIVOCONTROLLONEGATO'
      Size = 255
    end
    object tbEstintoriMOTIVORITIRO: TStringField
      FieldName = 'MOTIVORITIRO'
      Size = 255
    end
    object tbEstintoriNOTE_TECNICO: TStringField
      FieldName = 'NOTE_TECNICO'
      Size = 255
    end
    object tbEstintoriNONCONTROLLATO: TStringField
      FieldName = 'NONCONTROLLATO'
      FixedChar = True
      Size = 1
    end
    object tbEstintoriORARIOCONSEGNA: TStringField
      FieldName = 'ORARIOCONSEGNA'
      Size = 255
    end
    object tbEstintoriORARIOCONTROLLO: TStringField
      FieldName = 'ORARIOCONTROLLO'
      Size = 255
    end
    object tbEstintoriORARIOCONTROLLONEGATO: TStringField
      FieldName = 'ORARIOCONTROLLONEGATO'
      Size = 255
    end
    object tbEstintoriORARIORITIRO: TStringField
      FieldName = 'ORARIORITIRO'
      Size = 255
    end
    object tbEstintoriORARIOSMALTIMENTO: TStringField
      FieldName = 'ORARIOSMALTIMENTO'
      Size = 255
    end
    object tbEstintoriPERIODICITA_COLLAUDO: TIntegerField
      FieldName = 'PERIODICITA_COLLAUDO'
    end
    object tbEstintoriPERIODICITA_REVISIONE: TIntegerField
      FieldName = 'PERIODICITA_REVISIONE'
    end
    object tbEstintoriPROGRESSIVO: TIntegerField
      FieldName = 'PROGRESSIVO'
    end
    object tbEstintoriRESTITUITO: TStringField
      FieldName = 'RESTITUITO'
      FixedChar = True
      Size = 1
    end
    object tbEstintoriRITIRATO: TStringField
      FieldName = 'RITIRATO'
      FixedChar = True
      Size = 1
    end
    object tbEstintoriSTATO: TStringField
      FieldName = 'STATO'
      Size = 255
    end
    object tbEstintoriSMALTITO: TStringField
      FieldName = 'SMALTITO'
      FixedChar = True
      Size = 1
    end
    object tbEstintoriTIPO_ESTINTORE: TIntegerField
      FieldName = 'TIPO_ESTINTORE'
    end
    object tbEstintoriTIPO_INTERVENTO: TStringField
      FieldName = 'TIPO_INTERVENTO'
      Size = 255
    end
    object tbEstintoriTECNICOCONSEGNA: TIntegerField
      FieldName = 'TECNICOCONSEGNA'
    end
    object tbEstintoriTECNICOCONTROLLO: TIntegerField
      FieldName = 'TECNICOCONTROLLO'
    end
    object tbEstintoriTECNICOCONTROLLONEGATO: TIntegerField
      FieldName = 'TECNICOCONTROLLONEGATO'
    end
    object tbEstintoriTECNICORESTITUZIONE: TIntegerField
      FieldName = 'TECNICORESTITUZIONE'
    end
    object tbEstintoriTECNICORITIRO: TIntegerField
      FieldName = 'TECNICORITIRO'
    end
    object tbEstintoriTECNICOSMALTIMENTO: TIntegerField
      FieldName = 'TECNICOSMALTIMENTO'
    end
    object tbEstintoriUBICAZIONE: TStringField
      FieldName = 'UBICAZIONE'
      Size = 255
    end
  end
  object tbIdranti: TUniTable
    TableName = 'STATINI_IDRANTI'
    Connection = JanuaUniConnection1
    MasterSource = dsStatini
    MasterFields = 'CHIAVE'
    DetailFields = 'STATINO'
    Left = 304
    Top = 200
    object tbIdrantiSTATINO: TIntegerField
      FieldName = 'STATINO'
    end
    object tbIdrantiCHIAVE: TIntegerField
      FieldName = 'CHIAVE'
    end
    object tbIdrantiDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 255
    end
    object tbIdrantiPROVA_DINAMICA: TIntegerField
      FieldName = 'PROVA_DINAMICA'
    end
    object tbIdrantiQUANDO_PROVA_DINAMICA: TStringField
      FieldName = 'QUANDO_PROVA_DINAMICA'
      Size = 255
    end
    object tbIdrantiSTATO: TStringField
      FieldName = 'STATO'
      Size = 255
    end
    object tbIdrantiSUGGERIMENTOLUNGHMANICHETTA: TStringField
      FieldName = 'SUGGERIMENTOLUNGHMANICHETTA'
      Size = 255
    end
    object tbIdrantiSUGGERIMENTOTIPIBOCCHELLI: TStringField
      FieldName = 'SUGGERIMENTOTIPIBOCCHELLI'
      Size = 255
    end
    object tbIdrantiTIPO: TStringField
      FieldName = 'TIPO'
      Size = 255
    end
    object tbIdrantiTIPO_ATTACCO_MOTOPOMPA: TStringField
      FieldName = 'TIPO_ATTACCO_MOTOPOMPA'
      Size = 255
    end
    object tbIdrantiUBICAZIONE: TStringField
      FieldName = 'UBICAZIONE'
      Size = 255
    end
    object tbIdrantiUBICAZIONE_ATTACCO_MOTOPOMPA: TStringField
      FieldName = 'UBICAZIONE_ATTACCO_MOTOPOMPA'
      Size = 255
    end
    object tbIdrantiVALVOLA_INTERCETTAZIONE: TStringField
      FieldName = 'VALVOLA_INTERCETTAZIONE'
      Size = 255
    end
  end
  object tbBocchelli: TUniTable
    TableName = 'STATINI_BOCCHELLI'
    Connection = JanuaUniConnection1
    MasterSource = dsIdranti
    MasterFields = 'STATINO;CHIAVE'
    DetailFields = 'STATINO;IDRANTE'
    Left = 304
    Top = 344
    object tbBocchelliSTATINO: TIntegerField
      FieldName = 'STATINO'
    end
    object tbBocchelliIDRANTE: TIntegerField
      FieldName = 'IDRANTE'
    end
    object tbBocchelliANNO_MANICHETTA: TStringField
      FieldName = 'ANNO_MANICHETTA'
      Size = 255
    end
    object tbBocchelliANNO_PRESSATURA: TStringField
      FieldName = 'ANNO_PRESSATURA'
      Size = 255
    end
    object tbBocchelliANNO_STARTUP: TIntegerField
      FieldName = 'ANNO_STARTUP'
    end
    object tbBocchelliANOMALIA: TStringField
      FieldName = 'ANOMALIA'
      Size = 255
    end
    object tbBocchelliANOMALIA_APPROVATA: TStringField
      FieldName = 'ANOMALIA_APPROVATA'
      FixedChar = True
      Size = 1
    end
    object tbBocchelliANOMALIAONDOWNLOAD: TStringField
      FieldName = 'ANOMALIAONDOWNLOAD'
      Size = 255
    end
    object tbBocchelliANOMALIARISOLTA: TStringField
      FieldName = 'ANOMALIARISOLTA'
      FixedChar = True
      Size = 1
    end
    object tbBocchelliCHIAVE: TIntegerField
      FieldName = 'CHIAVE'
    end
    object tbBocchelliCONSEGNATO: TStringField
      FieldName = 'CONSEGNATO'
      FixedChar = True
      Size = 1
    end
    object tbBocchelliCONTROLLATO: TStringField
      FieldName = 'CONTROLLATO'
      FixedChar = True
      Size = 1
    end
    object tbBocchelliDATACONTROLLO: TDateField
      FieldName = 'DATACONTROLLO'
    end
    object tbBocchelliDATAPRESSATURA: TDateField
      FieldName = 'DATAPRESSATURA'
    end
    object tbBocchelliDATARITIRO: TDateField
      FieldName = 'DATARITIRO'
    end
    object tbBocchelliID_BOCCHELLO: TIntegerField
      FieldName = 'ID_BOCCHELLO'
    end
    object tbBocchelliID_NFC: TStringField
      FieldName = 'ID_NFC'
      Size = 255
    end
    object tbBocchelliLUNGHEZZA_MANICHETTA: TIntegerField
      FieldName = 'LUNGHEZZA_MANICHETTA'
    end
    object tbBocchelliMESE_PRESSATURA: TStringField
      FieldName = 'MESE_PRESSATURA'
      Size = 255
    end
    object tbBocchelliMESE_STARTUP: TIntegerField
      FieldName = 'MESE_STARTUP'
    end
    object tbBocchelliNOTE_TECNICO: TStringField
      FieldName = 'NOTE_TECNICO'
      Size = 255
    end
    object tbBocchelliORARIOCONTROLLO: TStringField
      FieldName = 'ORARIOCONTROLLO'
      Size = 255
    end
    object tbBocchelliORARIORITIRO: TStringField
      FieldName = 'ORARIORITIRO'
      Size = 255
    end
    object tbBocchelliPRESSATURAEFFETTUATA: TStringField
      FieldName = 'PRESSATURAEFFETTUATA'
      FixedChar = True
      Size = 1
    end
    object tbBocchelliRITIRATO: TStringField
      FieldName = 'RITIRATO'
      FixedChar = True
      Size = 1
    end
    object tbBocchelliSTATO: TStringField
      FieldName = 'STATO'
      Size = 255
    end
    object tbBocchelliTIPO_BOCCHELLO: TIntegerField
      FieldName = 'TIPO_BOCCHELLO'
    end
    object tbBocchelliTIPO_INTERVENTO: TStringField
      FieldName = 'TIPO_INTERVENTO'
      Size = 255
    end
    object tbBocchelliTIPO_LANCIA: TIntegerField
      FieldName = 'TIPO_LANCIA'
    end
    object tbBocchelliTECNICOCONTROLLO: TIntegerField
      FieldName = 'TECNICOCONTROLLO'
    end
    object tbBocchelliTECNICOPRESSATURA: TIntegerField
      FieldName = 'TECNICOPRESSATURA'
    end
    object tbBocchelliTECNICORITIRO: TIntegerField
      FieldName = 'TECNICORITIRO'
    end
    object tbBocchelliUBICAZIONE: TStringField
      FieldName = 'UBICAZIONE'
      Size = 255
    end
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
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CHIAVE'
        Value = nil
      end>
    object tbRilFumoSTATINO: TIntegerField
      FieldName = 'STATINO'
    end
    object tbRilFumoANOMALIA: TStringField
      FieldName = 'ANOMALIA'
      Size = 255
    end
    object tbRilFumoANOMALIA_APPROVATA: TStringField
      FieldName = 'ANOMALIA_APPROVATA'
      FixedChar = True
      Size = 1
    end
    object tbRilFumoANOMALIAONDOWNLOAD: TStringField
      FieldName = 'ANOMALIAONDOWNLOAD'
      Size = 255
    end
    object tbRilFumoANOMALIARISOLTA: TStringField
      FieldName = 'ANOMALIARISOLTA'
      FixedChar = True
      Size = 1
    end
    object tbRilFumoCHIAVE: TIntegerField
      FieldName = 'CHIAVE'
    end
    object tbRilFumoCONTROLLATO: TStringField
      FieldName = 'CONTROLLATO'
      FixedChar = True
      Size = 1
    end
    object tbRilFumoDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 255
    end
    object tbRilFumoDATACONTROLLO: TDateField
      FieldName = 'DATACONTROLLO'
    end
    object tbRilFumoID_NFC: TStringField
      FieldName = 'ID_NFC'
      Size = 255
    end
    object tbRilFumoMARCA_CENTRALE: TStringField
      FieldName = 'MARCA_CENTRALE'
      Size = 255
    end
    object tbRilFumoMARCA_RIL_LINEARI: TStringField
      FieldName = 'MARCA_RIL_LINEARI'
      Size = 255
    end
    object tbRilFumoNOTE_TECNICO: TStringField
      FieldName = 'NOTE_TECNICO'
      Size = 255
    end
    object tbRilFumoNONCONTROLLATO: TStringField
      FieldName = 'NONCONTROLLATO'
      FixedChar = True
      Size = 1
    end
    object tbRilFumoORARIOCONTROLLO: TStringField
      FieldName = 'ORARIOCONTROLLO'
      Size = 255
    end
    object tbRilFumoQUANTITA_BATTERIE: TStringField
      FieldName = 'QUANTITA_BATTERIE'
      Size = 255
    end
    object tbRilFumoQUANTITA_PANNELLI_OTT_ACUST: TStringField
      FieldName = 'QUANTITA_PANNELLI_OTT_ACUST'
      Size = 255
    end
    object tbRilFumoQUANTITA_PULSANTI: TStringField
      FieldName = 'QUANTITA_PULSANTI'
      Size = 255
    end
    object tbRilFumoQUANTITA_RILEVATORI: TStringField
      FieldName = 'QUANTITA_RILEVATORI'
      Size = 255
    end
    object tbRilFumoQUANTITA_RIL_LINEARI: TStringField
      FieldName = 'QUANTITA_RIL_LINEARI'
      Size = 255
    end
    object tbRilFumoSTATO: TStringField
      FieldName = 'STATO'
      Size = 255
    end
    object tbRilFumoTIPI_RILEVATORI_LINEARI_FUMI: TStringField
      FieldName = 'TIPI_RILEVATORI_LINEARI_FUMI'
      Size = 255
    end
    object tbRilFumoTIPO_BATTERIE: TDateField
      FieldName = 'TIPO_BATTERIE'
    end
    object tbRilFumoTIPO_CENTRALE: TStringField
      FieldName = 'TIPO_CENTRALE'
      Size = 255
    end
    object tbRilFumoTIPO_INTERVENTO: TStringField
      FieldName = 'TIPO_INTERVENTO'
      Size = 255
    end
    object tbRilFumoTIPO_RILEVATORI: TStringField
      FieldName = 'TIPO_RILEVATORI'
      Size = 255
    end
    object tbRilFumoTIPO_RIL_LINEARI: TStringField
      FieldName = 'TIPO_RIL_LINEARI'
      Size = 255
    end
    object tbRilFumoTECNICOCONTROLLO: TIntegerField
      FieldName = 'TECNICOCONTROLLO'
    end
    object tbRilFumoUBICAZIONE: TStringField
      FieldName = 'UBICAZIONE'
      Size = 255
    end
  end
  object tbPorte: TUniTable
    TableName = 'STATINI_PORTE'
    Connection = JanuaUniConnection1
    MasterSource = dsStatini
    MasterFields = 'CHIAVE'
    DetailFields = 'STATINO'
    Left = 200
    Top = 200
    object tbPorteSTATINO: TIntegerField
      FieldName = 'STATINO'
    end
    object tbPorteANNO_COSTRUZIONE: TIntegerField
      FieldName = 'ANNO_COSTRUZIONE'
    end
    object tbPorteANOMALIA: TStringField
      FieldName = 'ANOMALIA'
      Size = 255
    end
    object tbPorteANOMALIA_APPROVATA: TStringField
      FieldName = 'ANOMALIA_APPROVATA'
      FixedChar = True
      Size = 1
    end
    object tbPorteANTE: TStringField
      FieldName = 'ANTE'
      Size = 255
    end
    object tbPorteANOMALIAONDOWNLOAD: TStringField
      FieldName = 'ANOMALIAONDOWNLOAD'
      Size = 255
    end
    object tbPorteANOMALIARISOLTA: TStringField
      FieldName = 'ANOMALIARISOLTA'
      FixedChar = True
      Size = 1
    end
    object tbPorteCHIAVE: TIntegerField
      FieldName = 'CHIAVE'
    end
    object tbPorteCONSEGNATO: TStringField
      FieldName = 'CONSEGNATO'
      FixedChar = True
      Size = 1
    end
    object tbPorteCONTROLLATO: TStringField
      FieldName = 'CONTROLLATO'
      FixedChar = True
      Size = 1
    end
    object tbPorteDIMENSIONE: TStringField
      FieldName = 'DIMENSIONE'
      Size = 255
    end
    object tbPorteDATACONTROLLO: TDateField
      FieldName = 'DATACONTROLLO'
    end
    object tbPorteID_NFC: TStringField
      FieldName = 'ID_NFC'
      Size = 255
    end
    object tbPorteMARCA: TIntegerField
      FieldName = 'MARCA'
    end
    object tbPorteMARCA_MANIGLIONE: TIntegerField
      FieldName = 'MARCA_MANIGLIONE'
    end
    object tbPorteMATRICOLA: TStringField
      FieldName = 'MATRICOLA'
      Size = 255
    end
    object tbPorteNOTE_TECNICO: TStringField
      FieldName = 'NOTE_TECNICO'
      Size = 255
    end
    object tbPorteORARIOCONTROLLO: TStringField
      FieldName = 'ORARIOCONTROLLO'
      Size = 255
    end
    object tbPortePROGRESSIVO: TIntegerField
      FieldName = 'PROGRESSIVO'
    end
    object tbPorteSTATO: TStringField
      FieldName = 'STATO'
      Size = 255
    end
    object tbPorteTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object tbPorteTIPO_GUARNIZIONE: TIntegerField
      FieldName = 'TIPO_GUARNIZIONE'
    end
    object tbPorteTIPO_INSTALLAZIONE: TIntegerField
      FieldName = 'TIPO_INSTALLAZIONE'
    end
    object tbPorteTIPO_INTERVENTO: TStringField
      FieldName = 'TIPO_INTERVENTO'
      Size = 255
    end
    object tbPorteTIPO_MANIGLIA_ESTERNA: TIntegerField
      FieldName = 'TIPO_MANIGLIA_ESTERNA'
    end
    object tbPorteTIPO_MANIGLIONE: TIntegerField
      FieldName = 'TIPO_MANIGLIONE'
    end
    object tbPorteTIPO_SERRATURA_ANTA_PRINCIPALE: TIntegerField
      FieldName = 'TIPO_SERRATURA_ANTA_PRINCIPALE'
    end
    object tbPorteTIPO_SERRATURA_ANTA_SECONDARIA: TIntegerField
      FieldName = 'TIPO_SERRATURA_ANTA_SECONDARIA'
    end
    object tbPorteTECNICOCONTROLLO: TIntegerField
      FieldName = 'TECNICOCONTROLLO'
    end
    object tbPorteUBICAZIONE: TStringField
      FieldName = 'UBICAZIONE'
      Size = 255
    end
  end
  object tbGruppi: TUniTable
    TableName = 'statini_gruppi_pressurizzazione'
    Connection = JanuaUniConnection1
    MasterSource = dsStatini
    MasterFields = 'CHIAVE'
    DetailFields = 'STATINO'
    Left = 24
    Top = 200
    object tbGruppiSTATINO: TIntegerField
      FieldName = 'STATINO'
    end
    object tbGruppiANOMALIA: TStringField
      FieldName = 'ANOMALIA'
      Size = 255
    end
    object tbGruppiANOMALIA_APPROVATA: TStringField
      FieldName = 'ANOMALIA_APPROVATA'
      FixedChar = True
      Size = 1
    end
    object tbGruppiANOMALIAONDOWNLOAD: TStringField
      FieldName = 'ANOMALIAONDOWNLOAD'
      Size = 255
    end
    object tbGruppiANOMALIARISOLTA: TStringField
      FieldName = 'ANOMALIARISOLTA'
      FixedChar = True
      Size = 1
    end
    object tbGruppiCHIAVE: TIntegerField
      FieldName = 'CHIAVE'
    end
    object tbGruppiCONTROLLATO: TStringField
      FieldName = 'CONTROLLATO'
      FixedChar = True
      Size = 1
    end
    object tbGruppiDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 255
    end
    object tbGruppiDATACONTROLLO: TDateField
      FieldName = 'DATACONTROLLO'
    end
    object tbGruppiID_NFC: TStringField
      FieldName = 'ID_NFC'
      Size = 255
    end
    object tbGruppiMARCA_MISURATORE_PORTATA: TStringField
      FieldName = 'MARCA_MISURATORE_PORTATA'
      Size = 255
    end
    object tbGruppiMARCA_MOTOPOMPA: TStringField
      FieldName = 'MARCA_MOTOPOMPA'
      Size = 255
    end
    object tbGruppiMARCA_POMPA_JOCKEY: TStringField
      FieldName = 'MARCA_POMPA_JOCKEY'
      Size = 255
    end
    object tbGruppiMARCA_POMPA_PORTATA: TStringField
      FieldName = 'MARCA_POMPA_PORTATA'
      Size = 255
    end
    object tbGruppiMODELLO_MISURATORE_PORTATA: TStringField
      FieldName = 'MODELLO_MISURATORE_PORTATA'
      Size = 255
    end
    object tbGruppiMODELLO_MOTOPOMPA: TStringField
      FieldName = 'MODELLO_MOTOPOMPA'
      Size = 255
    end
    object tbGruppiMODELLO_POMPA_JOCKEY: TStringField
      FieldName = 'MODELLO_POMPA_JOCKEY'
      Size = 255
    end
    object tbGruppiMODELLO_POMPA_PORTATA: TStringField
      FieldName = 'MODELLO_POMPA_PORTATA'
      Size = 255
    end
    object tbGruppiNOTE: TStringField
      FieldName = 'NOTE'
      Size = 255
    end
    object tbGruppiNONCONTROLLATO: TStringField
      FieldName = 'NONCONTROLLATO'
      FixedChar = True
      Size = 1
    end
    object tbGruppiORARIOCONTROLLO: TStringField
      FieldName = 'ORARIOCONTROLLO'
      Size = 255
    end
    object tbGruppiSTATO: TStringField
      FieldName = 'STATO'
      Size = 255
    end
    object tbGruppiTIPO_BATTERIE: TStringField
      FieldName = 'TIPO_BATTERIE'
      Size = 255
    end
    object tbGruppiTIPO_INTERVENTO: TStringField
      FieldName = 'TIPO_INTERVENTO'
      Size = 255
    end
    object tbGruppiTIPO_MOTOPOMPA: TStringField
      FieldName = 'TIPO_MOTOPOMPA'
      Size = 255
    end
    object tbGruppiTIPO_POMPA_JOCKEY: TStringField
      FieldName = 'TIPO_POMPA_JOCKEY'
      Size = 255
    end
    object tbGruppiTIPO_POMPA_PORTATA: TStringField
      FieldName = 'TIPO_POMPA_PORTATA'
      Size = 255
    end
    object tbGruppiTIPO_STAZIONE: TStringField
      FieldName = 'TIPO_STAZIONE'
      Size = 255
    end
    object tbGruppiTIPO_VISITA: TStringField
      FieldName = 'TIPO_VISITA'
      Size = 255
    end
    object tbGruppiTECNICOCONTROLLO: TIntegerField
      FieldName = 'TECNICOCONTROLLO'
    end
    object tbGruppiVASI_ESPANSIONE: TStringField
      FieldName = 'VASI_ESPANSIONE'
      Size = 255
    end
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
  object qryStatiniLuci: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'JSON_DA_MOBILE'
        FieldType = ftWideMemo
      end>
    Connection = JanuaUniConnection1
    SQL.Strings = (
      
        'SELECT DISTINCT STATINO, S.ragione_sociale, S.indirizzo, S.data_' +
        'intervento, s.json_da_mobile'
      
        'From INTERVENTI_ATTREZZATURE  IAT JOIN STATINI S ON S.chiave = I' +
        'AT.statino'
      'WHERE IAT.tipo_attrezzatura = '#39'L'#39
      'ORDER BY STATINO DESC;')
    Active = True
    Left = 392
    Top = 448
    object qryStatiniLuciSTATINO: TIntegerField
      FieldName = 'STATINO'
    end
    object qryStatiniLuciRAGIONE_SOCIALE: TStringField
      FieldName = 'RAGIONE_SOCIALE'
      ReadOnly = True
      Size = 255
    end
    object qryStatiniLuciINDIRIZZO: TStringField
      FieldName = 'INDIRIZZO'
      ReadOnly = True
      Size = 255
    end
    object qryStatiniLuciDATA_INTERVENTO: TDateField
      FieldName = 'DATA_INTERVENTO'
      ReadOnly = True
    end
    object qryStatiniLuciJSON_DA_MOBILE: TWideMemoField
      FieldName = 'JSON_DA_MOBILE'
      ReadOnly = True
      BlobType = ftWideMemo
    end
  end
  object qryCheckListLuci: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'JSON_DA_MOBILE'
        FieldType = ftWideMemo
      end>
    Connection = JanuaUniConnection1
    SQL.Strings = (
      
        'select SCK.attrezzatura, SCK.checklist, DESCRIZIONE, TIPOLOGIA, ' +
        'ORDINAMENTO, ANOMALIE_CORRELATE, SOTTOCATEGORIA'
      'from CHECKLIST_ATTREZZATURE CKA'
      
        'JOIN STATO_CHECKLIST_ATTREZZATURE SCK ON SCK.checklist = CKA.chi' +
        'ave'
      'WHERE CKA.tipologia = '#39'L'#39' and SCK.attrezzatura = :ATTREZZATURA'
      'ORDER BY CKA.ordinamento')
    MasterSource = dsInterventiLuci
    MasterFields = 'ATTREZZATURA'
    DetailFields = 'ATTREZZATURA'
    Left = 392
    Top = 720
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ATTREZZATURA'
        ParamType = ptInput
        Value = 2089444
      end>
    object qryCheckListLuciATTREZZATURA: TIntegerField
      FieldName = 'ATTREZZATURA'
      Required = True
    end
    object qryCheckListLuciCHECKLIST: TIntegerField
      FieldName = 'CHECKLIST'
      Required = True
    end
    object qryCheckListLuciDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      ReadOnly = True
      Size = 255
    end
    object qryCheckListLuciTIPOLOGIA: TStringField
      FieldName = 'TIPOLOGIA'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryCheckListLuciORDINAMENTO: TSmallintField
      FieldName = 'ORDINAMENTO'
      ReadOnly = True
    end
    object qryCheckListLuciANOMALIE_CORRELATE: TBlobField
      FieldName = 'ANOMALIE_CORRELATE'
      ReadOnly = True
    end
    object qryCheckListLuciSOTTOCATEGORIA: TIntegerField
      FieldName = 'SOTTOCATEGORIA'
      ReadOnly = True
    end
  end
  object qryInterventiLuci: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'UBICAZIONE'
        FieldType = ftWideString
        FieldLength = 1024
      end
      item
        FieldName = 'ANOMALIA'
        FieldType = ftWideString
        FieldLength = 1024
      end>
    Connection = JanuaUniConnection1
    SQL.Strings = (
      
        'select IAT.CHIAVE, STATINO, ATTREZZATURA, TIPO_ATTREZZATURA, UBI' +
        'CAZIONE, PROGRESSIVO, IAT.ANOMALIA, TIPO, DATA_CONTROLLO, DATA_C' +
        'ONSEGNA,'
      
        '       PERIODI_NON_ORDINARI, DATA_CONTROLLO_NEGATO,  CLIENTE, FI' +
        'LIALE, TIPO_LUCE, MARCA, ANOMALIA_APPROVATA, MODELLO, AUTONOMIA,' +
        ' PREC_ANOMALIA,'
      
        '       TL.descrizione AS DES_TIPO_LUCE , marche_luci.descrizione' +
        ' AS DES_MARCA_LUCE'
      
        'FROM interventi_attrezzature IAT JOIN LUCI_CLIENTI L ON L.chiave' +
        ' = IAT.attrezzatura'
      
        'JOIN TIPO_LUCI TL ON TL.chiave = L.tipo_luce  JOIN marche_luci o' +
        'n marche_luci.chiave = l.marca'
      'WHERE IAT.tipo_attrezzatura = '#39'L'#39' AND STATINO = :STATINO'
      'ORDER BY IAT.statino desc,  L.progressivo;')
    MasterSource = dsStatiniLuci
    MasterFields = 'STATINO'
    DetailFields = 'STATINO'
    Left = 392
    Top = 584
    ParamData = <
      item
        DataType = ftInteger
        Name = 'STATINO'
        ParamType = ptInput
        Value = 2262863
      end>
    object qryInterventiLuciCHIAVE: TIntegerField
      FieldName = 'CHIAVE'
      Required = True
    end
    object qryInterventiLuciSTATINO: TIntegerField
      FieldName = 'STATINO'
    end
    object qryInterventiLuciATTREZZATURA: TIntegerField
      FieldName = 'ATTREZZATURA'
    end
    object qryInterventiLuciTIPO_ATTREZZATURA: TStringField
      FieldName = 'TIPO_ATTREZZATURA'
      FixedChar = True
      Size = 1
    end
    object qryInterventiLuciPROGRESSIVO: TIntegerField
      FieldName = 'PROGRESSIVO'
      ReadOnly = True
    end
    object qryInterventiLuciTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object qryInterventiLuciDATA_CONTROLLO: TDateField
      FieldName = 'DATA_CONTROLLO'
    end
    object qryInterventiLuciDATA_CONSEGNA: TDateField
      FieldName = 'DATA_CONSEGNA'
    end
    object qryInterventiLuciPERIODI_NON_ORDINARI: TStringField
      FieldName = 'PERIODI_NON_ORDINARI'
      FixedChar = True
      Size = 1
    end
    object qryInterventiLuciDATA_CONTROLLO_NEGATO: TDateField
      FieldName = 'DATA_CONTROLLO_NEGATO'
    end
    object qryInterventiLuciCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      ReadOnly = True
    end
    object qryInterventiLuciFILIALE: TIntegerField
      FieldName = 'FILIALE'
      ReadOnly = True
    end
    object qryInterventiLuciTIPO_LUCE: TIntegerField
      FieldName = 'TIPO_LUCE'
      ReadOnly = True
    end
    object qryInterventiLuciMARCA: TIntegerField
      FieldName = 'MARCA'
      ReadOnly = True
    end
    object qryInterventiLuciANOMALIA_APPROVATA: TStringField
      FieldName = 'ANOMALIA_APPROVATA'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryInterventiLuciMODELLO: TStringField
      FieldName = 'MODELLO'
      ReadOnly = True
      Size = 255
    end
    object qryInterventiLuciAUTONOMIA: TSmallintField
      FieldName = 'AUTONOMIA'
      ReadOnly = True
    end
    object qryInterventiLuciPREC_ANOMALIA: TBlobField
      FieldName = 'PREC_ANOMALIA'
      ReadOnly = True
    end
    object qryInterventiLuciDES_TIPO_LUCE: TStringField
      FieldName = 'DES_TIPO_LUCE'
      ReadOnly = True
      Size = 255
    end
    object qryInterventiLuciDES_MARCA_LUCE: TStringField
      FieldName = 'DES_MARCA_LUCE'
      ReadOnly = True
      Size = 255
    end
    object qryInterventiLuciUBICAZIONE: TWideStringField
      FieldName = 'UBICAZIONE'
      ReadOnly = True
      Size = 1024
    end
    object qryInterventiLuciANOMALIA: TWideStringField
      FieldName = 'ANOMALIA'
      Size = 1024
    end
  end
  object dsStatiniLuci: TUniDataSource
    DataSet = qryStatiniLuci
    Left = 392
    Top = 520
  end
  object dsInterventiLuci: TUniDataSource
    DataSet = qryInterventiLuci
    Left = 392
    Top = 656
  end
  object dsCheckListLuci: TUniDataSource
    DataSet = qryCheckListLuci
    Left = 392
    Top = 792
  end
end
