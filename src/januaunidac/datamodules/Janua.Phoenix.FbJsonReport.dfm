inherited dmFbPhoenixJsonReport: TdmFbPhoenixJsonReport
  Height = 880
  Width = 1268
  inherited JanuaUniConnection1: TJanuaUniConnection
    SpecificOptions.Strings = (
      'InterBase.UseUnicode=True')
    Options.DisconnectedMode = True
    Pooling = True
    Left = 128
    EncryptedPassword = '92FF9EFF8CFF8BFF9AFF8DFF94FF9AFF86FF'
  end
  inherited InterBaseUniProvider1: TInterBaseUniProvider
    Left = 224
    Top = 64
  end
  object qryStatini: TUniQuery
    Connection = JanuaUniConnection1
    SQL.Strings = (
      'select * from statini where chiave = :statino')
    Left = 424
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
    object qryStatiniTITOLO: TWideStringField
      FieldName = 'TITOLO'
      Size = 10
    end
    object qryStatiniRAGIONE_SOCIALE: TWideStringField
      FieldName = 'RAGIONE_SOCIALE'
      Size = 255
    end
    object qryStatiniINDIRIZZO: TWideStringField
      FieldName = 'INDIRIZZO'
      Size = 255
    end
    object qryStatiniCOMUNE: TWideStringField
      FieldName = 'COMUNE'
      Size = 255
    end
    object qryStatiniPROVINCIA: TWideStringField
      FieldName = 'PROVINCIA'
      FixedChar = True
      Size = 2
    end
    object qryStatiniCAP: TWideStringField
      FieldName = 'CAP'
      Size = 10
    end
    object qryStatiniTELEFONO: TWideStringField
      FieldName = 'TELEFONO'
      Size = 255
    end
    object qryStatiniCELLULARE: TWideStringField
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
    object qryStatiniCHIUSURA: TWideStringField
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
    object qryStatiniSOSPESO: TWideStringField
      FieldName = 'SOSPESO'
      FixedChar = True
      Size = 1
    end
    object qryStatiniDA_ESPORTARE_SUL_WEB: TWideStringField
      FieldName = 'DA_ESPORTARE_SUL_WEB'
      FixedChar = True
      Size = 1
    end
    object qryStatiniRESPONSABILE: TIntegerField
      FieldName = 'RESPONSABILE'
    end
    object qryStatiniESPORTATO_SU_MOBILE: TWideStringField
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
    object qryStatiniREGISTRO_IS_PDF: TWideStringField
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
    object qryStatiniIGNORA_EVIDENZIAZIONE: TWideStringField
      FieldName = 'IGNORA_EVIDENZIAZIONE'
      FixedChar = True
      Size = 1
    end
    object qryStatiniANNULLATO_DA_TABLET: TWideStringField
      FieldName = 'ANNULLATO_DA_TABLET'
      FixedChar = True
      Size = 1
    end
    object qryStatiniMOBILEWARN_NUOVA_ATTREZZATURA: TWideStringField
      FieldName = 'MOBILEWARN_NUOVA_ATTREZZATURA'
      FixedChar = True
      Size = 1
    end
    object qryStatiniMOBILEWARN_ORDINARIA_RITIRATA: TWideStringField
      FieldName = 'MOBILEWARN_ORDINARIA_RITIRATA'
      FixedChar = True
      Size = 1
    end
    object qryStatiniMOBILEWARN_N_ORDIN_CONTROLLATA: TWideStringField
      FieldName = 'MOBILEWARN_N_ORDIN_CONTROLLATA'
      FixedChar = True
      Size = 1
    end
    object qryStatiniMOBILEWARN_SMALTIMENTO: TWideStringField
      FieldName = 'MOBILEWARN_SMALTIMENTO'
      FixedChar = True
      Size = 1
    end
    object qryStatiniSTATO_LAVORAZIONE: TWideStringField
      FieldName = 'STATO_LAVORAZIONE'
      FixedChar = True
      Size = 1
    end
    object qryStatiniDATA_CHIUSURA_DA_SERVER: TDateField
      FieldName = 'DATA_CHIUSURA_DA_SERVER'
    end
    object qryStatiniCHIUSURA_EXT: TWideStringField
      FieldName = 'CHIUSURA_EXT'
      Size = 50
    end
    object qryStatiniCHIUSURA_STATINO: TBlobField
      FieldName = 'CHIUSURA_STATINO'
    end
    object qryStatiniMOBILEWARN_NON_ESEGUITI: TWideStringField
      FieldName = 'MOBILEWARN_NON_ESEGUITI'
      FixedChar = True
      Size = 1
    end
    object qryStatiniPRESA_IN_CARICO: TWideStringField
      FieldName = 'PRESA_IN_CARICO'
      FixedChar = True
      Size = 1
    end
    object qryStatiniFORNITURA: TWideStringField
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
    object qryStatiniGCAL: TWideStringField
      FieldName = 'GCAL'
      FixedChar = True
      Size = 1
    end
    object qryStatiniWANUMBER: TWideStringField
      FieldName = 'WANUMBER'
    end
    object qryStatiniWA: TWideStringField
      FieldName = 'WA'
      FixedChar = True
      Size = 1
    end
    object qryStatiniSTATO_IMMAGINE: TBlobField
      FieldName = 'STATO_IMMAGINE'
    end
    object qryStatiniWA_ID: TWideStringField
      FieldName = 'WA_ID'
      Size = 128
    end
    object qryStatiniWA_IMAGE: TBlobField
      FieldName = 'WA_IMAGE'
    end
    object qryStatiniWA_STATE: TSmallintField
      FieldName = 'WA_STATE'
    end
  end
  object tbLuci: TUniTable
    TableName = 'STATINI_LUCI'
    Connection = JanuaUniConnection1
    MasterSource = dsStatini
    MasterFields = 'CHIAVE'
    DetailFields = 'STATINO'
    Left = 568
    Top = 208
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
    Left = 704
    Top = 208
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
    Left = 416
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
    Left = 416
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
    Left = 424
    Top = 128
  end
  object dsIdranti: TUniDataSource
    DataSet = tbIdranti
    Left = 416
    Top = 272
  end
  object tbRilFumo: TUniTable
    TableName = 'STATINI_RILEVATORI_FUMO'
    Connection = JanuaUniConnection1
    MasterSource = dsStatini
    MasterFields = 'CHIAVE'
    DetailFields = 'STATINO'
    Left = 840
    Top = 208
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
    Left = 288
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
    Left = 56
    Top = 200
    object tbGruppiSTATINO: TIntegerField
      FieldName = 'STATINO'
    end
    object tbGruppiANOMALIA: TWideStringField
      FieldName = 'ANOMALIA'
      Size = 255
    end
    object tbGruppiANOMALIA_APPROVATA: TWideStringField
      FieldName = 'ANOMALIA_APPROVATA'
      FixedChar = True
      Size = 1
    end
    object tbGruppiANOMALIAONDOWNLOAD: TWideStringField
      FieldName = 'ANOMALIAONDOWNLOAD'
      Size = 255
    end
    object tbGruppiANOMALIARISOLTA: TWideStringField
      FieldName = 'ANOMALIARISOLTA'
      FixedChar = True
      Size = 1
    end
    object tbGruppiCHIAVE: TIntegerField
      FieldName = 'CHIAVE'
    end
    object tbGruppiCONTROLLATO: TWideStringField
      FieldName = 'CONTROLLATO'
      FixedChar = True
      Size = 1
    end
    object tbGruppiDESCRIZIONE: TWideStringField
      FieldName = 'DESCRIZIONE'
      Size = 255
    end
    object tbGruppiDATACONTROLLO: TDateField
      FieldName = 'DATACONTROLLO'
    end
    object tbGruppiID_NFC: TWideStringField
      FieldName = 'ID_NFC'
      Size = 255
    end
    object tbGruppiMARCA_MISURATORE_PORTATA: TWideStringField
      FieldName = 'MARCA_MISURATORE_PORTATA'
      Size = 255
    end
    object tbGruppiMARCA_MOTOPOMPA: TWideStringField
      FieldName = 'MARCA_MOTOPOMPA'
      Size = 255
    end
    object tbGruppiMARCA_POMPA_JOCKEY: TWideStringField
      FieldName = 'MARCA_POMPA_JOCKEY'
      Size = 255
    end
    object tbGruppiMARCA_POMPA_PORTATA: TWideStringField
      FieldName = 'MARCA_POMPA_PORTATA'
      Size = 255
    end
    object tbGruppiMODELLO_MISURATORE_PORTATA: TWideStringField
      FieldName = 'MODELLO_MISURATORE_PORTATA'
      Size = 255
    end
    object tbGruppiMODELLO_MOTOPOMPA: TWideStringField
      FieldName = 'MODELLO_MOTOPOMPA'
      Size = 255
    end
    object tbGruppiMODELLO_POMPA_JOCKEY: TWideStringField
      FieldName = 'MODELLO_POMPA_JOCKEY'
      Size = 255
    end
    object tbGruppiMODELLO_POMPA_PORTATA: TWideStringField
      FieldName = 'MODELLO_POMPA_PORTATA'
      Size = 255
    end
    object tbGruppiNOTE: TWideStringField
      FieldName = 'NOTE'
      Size = 255
    end
    object tbGruppiNONCONTROLLATO: TWideStringField
      FieldName = 'NONCONTROLLATO'
      FixedChar = True
      Size = 1
    end
    object tbGruppiORARIOCONTROLLO: TWideStringField
      FieldName = 'ORARIOCONTROLLO'
      Size = 255
    end
    object tbGruppiSTATO: TWideStringField
      FieldName = 'STATO'
      Size = 255
    end
    object tbGruppiTIPO_BATTERIE: TWideStringField
      FieldName = 'TIPO_BATTERIE'
      Size = 255
    end
    object tbGruppiTIPO_INTERVENTO: TWideStringField
      FieldName = 'TIPO_INTERVENTO'
      Size = 255
    end
    object tbGruppiTIPO_MOTOPOMPA: TWideStringField
      FieldName = 'TIPO_MOTOPOMPA'
      Size = 255
    end
    object tbGruppiTIPO_POMPA_JOCKEY: TWideStringField
      FieldName = 'TIPO_POMPA_JOCKEY'
      Size = 255
    end
    object tbGruppiTIPO_POMPA_PORTATA: TWideStringField
      FieldName = 'TIPO_POMPA_PORTATA'
      Size = 255
    end
    object tbGruppiTIPO_STAZIONE: TWideStringField
      FieldName = 'TIPO_STAZIONE'
      Size = 255
    end
    object tbGruppiTIPO_VISITA: TWideStringField
      FieldName = 'TIPO_VISITA'
      Size = 255
    end
    object tbGruppiTECNICOCONTROLLO: TIntegerField
      FieldName = 'TECNICOCONTROLLO'
    end
    object tbGruppiVASI_ESPANSIONE: TWideStringField
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
    Left = 176
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
    Left = 176
    Top = 200
    object tbImpiantiSTATINO: TIntegerField
      FieldName = 'STATINO'
    end
    object tbImpiantiCHIAVE: TIntegerField
      FieldName = 'CHIAVE'
    end
    object tbImpiantiDESCRIZIONE: TWideStringField
      FieldName = 'DESCRIZIONE'
      Size = 255
    end
    object tbImpiantiPREZZO: TIntegerField
      FieldName = 'PREZZO'
    end
    object tbImpiantiSTATO: TWideStringField
      FieldName = 'STATO'
      Size = 255
    end
    object tbImpiantiTIPO_VISITA: TWideStringField
      FieldName = 'TIPO_VISITA'
      Size = 255
    end
    object tbImpiantiUBICAZIONE: TWideStringField
      FieldName = 'UBICAZIONE'
      Size = 255
    end
  end
  object dsImpianti: TUniDataSource
    DataSet = tbImpianti
    Left = 176
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
      'WHERE IAT.tipo_attrezzatura = '#39'L'#39'  and s.stato = 9'
      'ORDER BY STATINO DESC;')
    Left = 568
    Top = 456
    object qryStatiniLuciSTATINO: TIntegerField
      FieldName = 'STATINO'
    end
    object qryStatiniLuciRAGIONE_SOCIALE: TWideStringField
      FieldName = 'RAGIONE_SOCIALE'
      ReadOnly = True
      Size = 255
    end
    object qryStatiniLuciINDIRIZZO: TWideStringField
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
    Left = 568
    Top = 736
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
    object qryCheckListLuciDESCRIZIONE: TWideStringField
      FieldName = 'DESCRIZIONE'
      ReadOnly = True
      Size = 255
    end
    object qryCheckListLuciTIPOLOGIA: TWideStringField
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
    SQLInsert.Strings = (
      'INSERT INTO INTERVENTI_ATTREZZATURE'
      
        '  (ANOMALIAONDOWNLOAD, ANOMALIARISOLTA, CONTROLLATO, DATACONTROL' +
        'LO, NONCONTROLLATO, ORARIOCONTROLLO, TIPO_INTERVENTO, TIPO_VISIT' +
        'A, TECNICOCONTROLLO, CONSEGNATO, ANOMALIA_RISOLTA_TABLET)'
      'VALUES'
      
        '  (:ANOMALIAONDOWNLOAD, :ANOMALIARISOLTA, :CONTROLLATO, :DATACON' +
        'TROLLO, :NONCONTROLLATO, :ORARIOCONTROLLO, :TIPO_INTERVENTO, :TI' +
        'PO_VISITA, :TECNICOCONTROLLO, :CONSEGNATO, :ANOMALIA_RISOLTA_TAB' +
        'LET)')
    SQLDelete.Strings = (
      'DELETE FROM INTERVENTI_ATTREZZATURE'
      'WHERE'
      '  CHIAVE = :Old_CHIAVE')
    SQLUpdate.Strings = (
      'UPDATE INTERVENTI_ATTREZZATURE'
      'SET'
      
        '  ANOMALIAONDOWNLOAD = :ANOMALIAONDOWNLOAD, ANOMALIARISOLTA = :A' +
        'NOMALIARISOLTA, CONTROLLATO = :CONTROLLATO, DATACONTROLLO = :DAT' +
        'ACONTROLLO, NONCONTROLLATO = :NONCONTROLLATO, ORARIOCONTROLLO = ' +
        ':ORARIOCONTROLLO, TIPO_INTERVENTO = :TIPO_INTERVENTO, TIPO_VISIT' +
        'A = :TIPO_VISITA, TECNICOCONTROLLO = :TECNICOCONTROLLO, CONSEGNA' +
        'TO = :CONSEGNATO, ANOMALIA_RISOLTA_TABLET = :ANOMALIA_RISOLTA_TA' +
        'BLET'
      'WHERE'
      '  CHIAVE = :Old_CHIAVE')
    SQLLock.Strings = (
      'SELECT NULL FROM INTERVENTI_ATTREZZATURE'
      'WHERE'
      'CHIAVE = :Old_CHIAVE'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT ANOMALIAONDOWNLOAD, ANOMALIARISOLTA, CONTROLLATO, DATACON' +
        'TROLLO, NONCONTROLLATO, ORARIOCONTROLLO, TIPO_INTERVENTO, TIPO_V' +
        'ISITA, TECNICOCONTROLLO, CONSEGNATO, ANOMALIA_RISOLTA_TABLET FRO' +
        'M INTERVENTI_ATTREZZATURE'
      'WHERE'
      '  CHIAVE = :CHIAVE')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM INTERVENTI_ATTREZZATURE'
      ''
      ') q')
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
      'select IAT.*, L.*,'
      
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
    Left = 568
    Top = 600
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
    object qryInterventiLuciTIPO_ATTREZZATURA: TWideStringField
      FieldName = 'TIPO_ATTREZZATURA'
      FixedChar = True
      Size = 1
    end
    object qryInterventiLuciANOMALIA: TWideStringField
      FieldName = 'ANOMALIA'
      Size = 1024
    end
    object qryInterventiLuciTIPO: TWideStringField
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
    object qryInterventiLuciANOMALIA_ON_DOWNLOAD: TWideStringField
      FieldName = 'ANOMALIA_ON_DOWNLOAD'
      Size = 256
    end
    object qryInterventiLuciTECNICO_CONTROLLO: TIntegerField
      FieldName = 'TECNICO_CONTROLLO'
    end
    object qryInterventiLuciANOMALIAONDOWNLOAD: TWideStringField
      FieldName = 'ANOMALIAONDOWNLOAD'
      Size = 255
    end
    object qryInterventiLuciANOMALIARISOLTA: TWideStringField
      FieldName = 'ANOMALIARISOLTA'
      FixedChar = True
      Size = 1
    end
    object qryInterventiLuciCONTROLLATO: TWideStringField
      FieldName = 'CONTROLLATO'
      FixedChar = True
      Size = 1
    end
    object qryInterventiLuciDATACONTROLLO: TDateField
      FieldName = 'DATACONTROLLO'
    end
    object qryInterventiLuciNONCONTROLLATO: TWideStringField
      FieldName = 'NONCONTROLLATO'
      FixedChar = True
      Size = 1
    end
    object qryInterventiLuciORARIOCONTROLLO: TWideStringField
      FieldName = 'ORARIOCONTROLLO'
      Size = 255
    end
    object qryInterventiLuciTIPO_INTERVENTO: TWideStringField
      FieldName = 'TIPO_INTERVENTO'
      Size = 255
    end
    object qryInterventiLuciTIPO_VISITA: TWideStringField
      FieldName = 'TIPO_VISITA'
      Size = 255
    end
    object qryInterventiLuciTECNICOCONTROLLO: TIntegerField
      FieldName = 'TECNICOCONTROLLO'
    end
    object qryInterventiLuciCONSEGNATO: TWideStringField
      FieldName = 'CONSEGNATO'
      FixedChar = True
      Size = 1
    end
    object qryInterventiLuciPERIODI_NON_ORDINARI: TWideStringField
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
    object qryInterventiLuciUBICAZIONE: TWideStringField
      FieldName = 'UBICAZIONE'
      ReadOnly = True
      Size = 1024
    end
    object qryInterventiLuciPROGRESSIVO: TIntegerField
      FieldName = 'PROGRESSIVO'
      ReadOnly = True
    end
    object qryInterventiLuciSTATO: TWideStringField
      FieldName = 'STATO'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryInterventiLuciRINNOVATO_DA: TIntegerField
      FieldName = 'RINNOVATO_DA'
      ReadOnly = True
    end
    object qryInterventiLuciANOMALIA_APPROVATA: TWideStringField
      FieldName = 'ANOMALIA_APPROVATA'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryInterventiLuciMODELLO: TWideStringField
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
    object qryInterventiLuciNOTE_TECNICO: TBlobField
      FieldName = 'NOTE_TECNICO'
      ReadOnly = True
    end
    object qryInterventiLuciID_NFC: TWideStringField
      FieldName = 'ID_NFC'
      ReadOnly = True
      Size = 100
    end
    object qryInterventiLuciJGUID: TBytesField
      FieldName = 'JGUID'
      ReadOnly = True
    end
    object qryInterventiLuciDES_TIPO_LUCE: TWideStringField
      FieldName = 'DES_TIPO_LUCE'
      ReadOnly = True
      Size = 255
    end
    object qryInterventiLuciDES_MARCA_LUCE: TWideStringField
      FieldName = 'DES_MARCA_LUCE'
      ReadOnly = True
      Size = 255
    end
    object qryInterventiLuciANOMALIA_RISOLTA_TABLET: TWideStringField
      FieldName = 'ANOMALIA_RISOLTA_TABLET'
      FixedChar = True
      Size = 1
    end
    object qryInterventiLuciCHIAVE_1: TIntegerField
      FieldName = 'CHIAVE_1'
      ReadOnly = True
      Required = True
    end
    object qryInterventiLuciANOMALIA_1: TWideMemoField
      FieldName = 'ANOMALIA_1'
      ReadOnly = True
      BlobType = ftWideMemo
    end
  end
  object dsStatiniLuci: TUniDataSource
    DataSet = qryStatiniLuci
    Left = 568
    Top = 528
  end
  object dsInterventiLuci: TUniDataSource
    DataSet = qryInterventiLuci
    Left = 568
    Top = 672
  end
  object dsCheckListLuci: TUniDataSource
    DataSet = qryCheckListLuci
    Left = 568
    Top = 808
  end
  object qryStatiniEstintori: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'JSON_DA_MOBILE'
        FieldType = ftWideMemo
      end>
    Connection = JanuaUniConnection1
    SQL.Strings = (
      
        'SELECT DISTINCT STATINO, S.ragione_sociale, S.indirizzo, S.data_' +
        'intervento, s.json_da_mobile'
      
        'From INTERVENTI_ESTINTORI IAT JOIN STATINI S ON S.chiave = IAT.s' +
        'tatino'
      'WHERE s.stato = 9'
      'ORDER BY STATINO DESC;')
    Left = 704
    Top = 456
    object qryStatiniEstintoriSTATINO: TIntegerField
      FieldName = 'STATINO'
    end
    object qryStatiniEstintoriRAGIONE_SOCIALE: TWideStringField
      FieldName = 'RAGIONE_SOCIALE'
      ReadOnly = True
      Size = 255
    end
    object qryStatiniEstintoriINDIRIZZO: TWideStringField
      FieldName = 'INDIRIZZO'
      ReadOnly = True
      Size = 255
    end
    object qryStatiniEstintoriDATA_INTERVENTO: TDateField
      FieldName = 'DATA_INTERVENTO'
      ReadOnly = True
    end
    object qryStatiniEstintoriJSON_DA_MOBILE: TWideMemoField
      FieldName = 'JSON_DA_MOBILE'
      ReadOnly = True
      BlobType = ftWideMemo
    end
  end
  object qryStatiniFumo: TUniQuery
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
      'WHERE IAT.tipo_attrezzatura = '#39'F'#39'  and s.stato = 9'
      'ORDER BY STATINO DESC;')
    Left = 840
    Top = 456
    object qryStatiniFumoSTATINO: TIntegerField
      FieldName = 'STATINO'
    end
    object qryStatiniFumoRAGIONE_SOCIALE: TWideStringField
      FieldName = 'RAGIONE_SOCIALE'
      ReadOnly = True
      Size = 255
    end
    object qryStatiniFumoINDIRIZZO: TWideStringField
      FieldName = 'INDIRIZZO'
      ReadOnly = True
      Size = 255
    end
    object qryStatiniFumoDATA_INTERVENTO: TDateField
      FieldName = 'DATA_INTERVENTO'
      ReadOnly = True
    end
    object qryStatiniFumoJSON_DA_MOBILE: TWideMemoField
      FieldName = 'JSON_DA_MOBILE'
      ReadOnly = True
      BlobType = ftWideMemo
    end
  end
  object qryStatiniIdranti: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'JSON_DA_MOBILE'
        FieldType = ftWideMemo
      end>
    Connection = JanuaUniConnection1
    SQL.Strings = (
      
        'SELECT DISTINCT STATINO, S.ragione_sociale, S.indirizzo, S.data_' +
        'intervento, s.json_da_mobile'
      
        'From INTERVENTI_IDRANTI IAT JOIN STATINI S ON S.chiave = IAT.sta' +
        'tino'
      'WHERE  s.stato = 9'
      'ORDER BY STATINO DESC;')
    Left = 448
    Top = 456
    object qryStatiniIdrantiSTATINO: TIntegerField
      FieldName = 'STATINO'
    end
    object qryStatiniIdrantiRAGIONE_SOCIALE: TWideStringField
      FieldName = 'RAGIONE_SOCIALE'
      ReadOnly = True
      Size = 255
    end
    object qryStatiniIdrantiINDIRIZZO: TWideStringField
      FieldName = 'INDIRIZZO'
      ReadOnly = True
      Size = 255
    end
    object qryStatiniIdrantiDATA_INTERVENTO: TDateField
      FieldName = 'DATA_INTERVENTO'
      ReadOnly = True
    end
    object qryStatiniIdrantiJSON_DA_MOBILE: TWideMemoField
      FieldName = 'JSON_DA_MOBILE'
      ReadOnly = True
      BlobType = ftWideMemo
    end
  end
  object qryStatiniPorte: TUniQuery
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
      'WHERE IAT.tipo_attrezzatura = '#39'P'#39'  and s.stato = 9'
      'ORDER BY STATINO DESC;')
    Left = 320
    Top = 456
    object qryStatiniPorteSTATINO: TIntegerField
      FieldName = 'STATINO'
    end
    object qryStatiniPorteRAGIONE_SOCIALE: TWideStringField
      FieldName = 'RAGIONE_SOCIALE'
      ReadOnly = True
      Size = 255
    end
    object qryStatiniPorteINDIRIZZO: TWideStringField
      FieldName = 'INDIRIZZO'
      ReadOnly = True
      Size = 255
    end
    object qryStatiniPorteDATA_INTERVENTO: TDateField
      FieldName = 'DATA_INTERVENTO'
      ReadOnly = True
    end
    object qryStatiniPorteJSON_DA_MOBILE: TWideMemoField
      FieldName = 'JSON_DA_MOBILE'
      ReadOnly = True
      BlobType = ftWideMemo
    end
  end
  object qryStatiniImpianti: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'JSON_DA_MOBILE'
        FieldType = ftWideMemo
      end>
    Connection = JanuaUniConnection1
    SQL.Strings = (
      
        'SELECT DISTINCT STATINO, S.ragione_sociale, S.indirizzo, S.data_' +
        'intervento, s.json_da_mobile'
      
        'From INTERVENTI_IMPIANTI_ELETTRICI IAT JOIN STATINI S ON S.chiav' +
        'e = IAT.statino'
      'WHERE  s.stato = 9'
      'ORDER BY STATINO DESC;')
    Left = 184
    Top = 456
    object qryStatiniImpiantiSTATINO: TIntegerField
      FieldName = 'STATINO'
    end
    object qryStatiniImpiantiRAGIONE_SOCIALE: TWideStringField
      FieldName = 'RAGIONE_SOCIALE'
      ReadOnly = True
      Size = 255
    end
    object qryStatiniImpiantiINDIRIZZO: TWideStringField
      FieldName = 'INDIRIZZO'
      ReadOnly = True
      Size = 255
    end
    object qryStatiniImpiantiDATA_INTERVENTO: TDateField
      FieldName = 'DATA_INTERVENTO'
      ReadOnly = True
    end
    object qryStatiniImpiantiJSON_DA_MOBILE: TWideMemoField
      FieldName = 'JSON_DA_MOBILE'
      ReadOnly = True
      BlobType = ftWideMemo
    end
  end
  object qryStatiniGruppi: TUniQuery
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
      'WHERE IAT.tipo_attrezzatura = '#39'G'#39' and s.stato = 9'
      'ORDER BY STATINO DESC;')
    Left = 56
    Top = 456
    object qryStatiniGruppiSTATINO: TIntegerField
      FieldName = 'STATINO'
    end
    object qryStatiniGruppiRAGIONE_SOCIALE: TWideStringField
      FieldName = 'RAGIONE_SOCIALE'
      ReadOnly = True
      Size = 255
    end
    object qryStatiniGruppiINDIRIZZO: TWideStringField
      FieldName = 'INDIRIZZO'
      ReadOnly = True
      Size = 255
    end
    object qryStatiniGruppiDATA_INTERVENTO: TDateField
      FieldName = 'DATA_INTERVENTO'
      ReadOnly = True
    end
    object qryStatiniGruppiJSON_DA_MOBILE: TWideMemoField
      FieldName = 'JSON_DA_MOBILE'
      ReadOnly = True
      BlobType = ftWideMemo
    end
  end
  object dsStatiniGruppi: TUniDataSource
    DataSet = qryStatiniGruppi
    Left = 56
    Top = 528
  end
  object dsStatiniImpianti: TUniDataSource
    DataSet = qryStatiniImpianti
    Left = 184
    Top = 528
  end
  object dsStatiniPorte: TUniDataSource
    DataSet = qryStatiniPorte
    Left = 320
    Top = 528
  end
  object dsStatiniIdranti: TUniDataSource
    DataSet = qryStatiniIdranti
    Left = 448
    Top = 528
  end
  object dsStatiniEstintori: TUniDataSource
    DataSet = qryStatiniEstintori
    Left = 704
    Top = 528
  end
  object dsStatiniFumo: TUniDataSource
    DataSet = qryStatiniFumo
    Left = 840
    Top = 528
  end
  object qryStatiniSprinkler: TUniQuery
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
      'WHERE IAT.tipo_attrezzatura = '#39'S'#39'  and s.stato = 9'
      'ORDER BY STATINO DESC;')
    Left = 992
    Top = 456
    object IntegerField1: TIntegerField
      FieldName = 'STATINO'
    end
    object WideStringField1: TWideStringField
      FieldName = 'RAGIONE_SOCIALE'
      ReadOnly = True
      Size = 255
    end
    object WideStringField2: TWideStringField
      FieldName = 'INDIRIZZO'
      ReadOnly = True
      Size = 255
    end
    object DateField1: TDateField
      FieldName = 'DATA_INTERVENTO'
      ReadOnly = True
    end
    object WideMemoField1: TWideMemoField
      FieldName = 'JSON_DA_MOBILE'
      ReadOnly = True
      BlobType = ftWideMemo
    end
  end
  object DSStatiniSprinkler: TUniDataSource
    DataSet = qryStatiniSprinkler
    Left = 984
    Top = 528
  end
  object qryInterventiGruppi: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO INTERVENTI_ATTREZZATURE'
      
        '  (ANOMALIAONDOWNLOAD, ANOMALIARISOLTA, CONTROLLATO, DATACONTROL' +
        'LO, NONCONTROLLATO, ORARIOCONTROLLO, TECNICOCONTROLLO, CONSEGNAT' +
        'O, ANOMALIA_RISOLTA_TABLET)'
      'VALUES'
      
        '  (:ANOMALIAONDOWNLOAD, :ANOMALIARISOLTA, :CONTROLLATO, :DATACON' +
        'TROLLO, :NONCONTROLLATO, :ORARIOCONTROLLO, :TECNICOCONTROLLO, :C' +
        'ONSEGNATO, :ANOMALIA_RISOLTA_TABLET)')
    SQLDelete.Strings = (
      'DELETE FROM INTERVENTI_ATTREZZATURE'
      'WHERE'
      '  STATINO = :Old_STATINO')
    SQLUpdate.Strings = (
      'UPDATE INTERVENTI_ATTREZZATURE'
      'SET'
      
        '  ANOMALIAONDOWNLOAD = :ANOMALIAONDOWNLOAD, ANOMALIARISOLTA = :A' +
        'NOMALIARISOLTA, CONTROLLATO = :CONTROLLATO, DATACONTROLLO = :DAT' +
        'ACONTROLLO, NONCONTROLLATO = :NONCONTROLLATO, ORARIOCONTROLLO = ' +
        ':ORARIOCONTROLLO, TECNICOCONTROLLO = :TECNICOCONTROLLO, CONSEGNA' +
        'TO = :CONSEGNATO, ANOMALIA_RISOLTA_TABLET = :ANOMALIA_RISOLTA_TA' +
        'BLET'
      'WHERE'
      '  STATINO = :Old_STATINO')
    SQLLock.Strings = (
      'SELECT NULL FROM INTERVENTI_ATTREZZATURE'
      'WHERE'
      'STATINO = :Old_STATINO'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT ANOMALIAONDOWNLOAD, ANOMALIARISOLTA, CONTROLLATO, DATACON' +
        'TROLLO, NONCONTROLLATO, ORARIOCONTROLLO, TECNICOCONTROLLO, CONSE' +
        'GNATO, ANOMALIA_RISOLTA_TABLET FROM INTERVENTI_ATTREZZATURE'
      'WHERE'
      '  STATINO = :STATINO')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM INTERVENTI_ATTREZZATURE'
      ''
      ') q')
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
      'select IAT.*, GPA.*'
      
        'FROM interventi_attrezzature IAT JOIN GRUPPO_PRESSURIZZAZIONE_CL' +
        'IENTI GPA ON GPA.chiave = IAT.attrezzatura'
      'WHERE IAT.tipo_attrezzatura = '#39'G'#39
      '      AND STATINO = :STATINO'
      'ORDER BY IAT.statino desc;')
    MasterSource = dsStatiniGruppi
    MasterFields = 'STATINO'
    DetailFields = 'STATINO'
    Left = 56
    Top = 600
    ParamData = <
      item
        DataType = ftInteger
        Name = 'STATINO'
        ParamType = ptInput
        Value = 2262863
      end>
    object qryInterventiGruppiCHIAVE: TIntegerField
      FieldName = 'CHIAVE'
      Required = True
    end
    object qryInterventiGruppiSTATINO: TIntegerField
      FieldName = 'STATINO'
    end
    object qryInterventiGruppiATTREZZATURA: TIntegerField
      FieldName = 'ATTREZZATURA'
    end
    object qryInterventiGruppiTIPO_ATTREZZATURA: TWideStringField
      FieldName = 'TIPO_ATTREZZATURA'
      FixedChar = True
      Size = 1
    end
    object qryInterventiGruppiANOMALIA: TWideStringField
      FieldName = 'ANOMALIA'
      Size = 1024
    end
    object qryInterventiGruppiTIPO: TWideStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object qryInterventiGruppiDATA_CONTROLLO: TDateField
      FieldName = 'DATA_CONTROLLO'
    end
    object qryInterventiGruppiDATA_CONSEGNA: TDateField
      FieldName = 'DATA_CONSEGNA'
    end
    object qryInterventiGruppiPERIODI_NON_ORDINARI: TWideStringField
      FieldName = 'PERIODI_NON_ORDINARI'
      FixedChar = True
      Size = 1
    end
    object qryInterventiGruppiDATA_CONTROLLO_NEGATO: TDateField
      FieldName = 'DATA_CONTROLLO_NEGATO'
    end
    object qryInterventiGruppiANOMALIA_ON_DOWNLOAD: TWideStringField
      FieldName = 'ANOMALIA_ON_DOWNLOAD'
      Size = 256
    end
    object qryInterventiGruppiTECNICO_CONTROLLO: TIntegerField
      FieldName = 'TECNICO_CONTROLLO'
    end
    object qryInterventiGruppiANOMALIAONDOWNLOAD: TWideStringField
      FieldName = 'ANOMALIAONDOWNLOAD'
      Size = 255
    end
    object qryInterventiGruppiANOMALIARISOLTA: TWideStringField
      FieldName = 'ANOMALIARISOLTA'
      FixedChar = True
      Size = 1
    end
    object qryInterventiGruppiCONTROLLATO: TWideStringField
      FieldName = 'CONTROLLATO'
      FixedChar = True
      Size = 1
    end
    object qryInterventiGruppiDATACONTROLLO: TDateField
      FieldName = 'DATACONTROLLO'
    end
    object qryInterventiGruppiNONCONTROLLATO: TWideStringField
      FieldName = 'NONCONTROLLATO'
      FixedChar = True
      Size = 1
    end
    object qryInterventiGruppiORARIOCONTROLLO: TWideStringField
      FieldName = 'ORARIOCONTROLLO'
      Size = 255
    end
    object qryInterventiGruppiTIPO_INTERVENTO: TWideStringField
      FieldName = 'TIPO_INTERVENTO'
      Size = 255
    end
    object qryInterventiGruppiTIPO_VISITA: TWideStringField
      FieldName = 'TIPO_VISITA'
      Size = 255
    end
    object qryInterventiGruppiTECNICOCONTROLLO: TIntegerField
      FieldName = 'TECNICOCONTROLLO'
    end
    object qryInterventiGruppiCONSEGNATO: TWideStringField
      FieldName = 'CONSEGNATO'
      FixedChar = True
      Size = 1
    end
    object qryInterventiGruppiDESCRIZIONE: TWideStringField
      FieldName = 'DESCRIZIONE'
      ReadOnly = True
      Size = 255
    end
    object qryInterventiGruppiTIPO_STAZIONE: TWideStringField
      FieldName = 'TIPO_STAZIONE'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryInterventiGruppiTIPO_BATTERIE: TIntegerField
      FieldName = 'TIPO_BATTERIE'
      ReadOnly = True
    end
    object qryInterventiGruppiMARCA_POMPA_JOCKEY: TWideStringField
      FieldName = 'MARCA_POMPA_JOCKEY'
      ReadOnly = True
      Size = 255
    end
    object qryInterventiGruppiTIPO_POMPA_JOCKEY: TWideStringField
      FieldName = 'TIPO_POMPA_JOCKEY'
      ReadOnly = True
      Size = 255
    end
    object qryInterventiGruppiMODELLO_POMPA_JOCKEY: TWideStringField
      FieldName = 'MODELLO_POMPA_JOCKEY'
      ReadOnly = True
      Size = 255
    end
    object qryInterventiGruppiMARCA_POMPA_PORTATA: TWideStringField
      FieldName = 'MARCA_POMPA_PORTATA'
      ReadOnly = True
      Size = 255
    end
    object qryInterventiGruppiTIPO_POMPA_PORTATA: TWideStringField
      FieldName = 'TIPO_POMPA_PORTATA'
      ReadOnly = True
      Size = 255
    end
    object qryInterventiGruppiMODELLO_POMPA_PORTATA: TWideStringField
      FieldName = 'MODELLO_POMPA_PORTATA'
      ReadOnly = True
      Size = 255
    end
    object qryInterventiGruppiMARCA_MOTOPOMPA: TWideStringField
      FieldName = 'MARCA_MOTOPOMPA'
      ReadOnly = True
      Size = 255
    end
    object qryInterventiGruppiTIPO_MOTOPOMPA: TWideStringField
      FieldName = 'TIPO_MOTOPOMPA'
      ReadOnly = True
      Size = 255
    end
    object qryInterventiGruppiMODELLO_MOTOPOMPA: TWideStringField
      FieldName = 'MODELLO_MOTOPOMPA'
      ReadOnly = True
      Size = 255
    end
    object qryInterventiGruppiVASI_ESPANSIONE: TWideStringField
      FieldName = 'VASI_ESPANSIONE'
      ReadOnly = True
      Size = 255
    end
    object qryInterventiGruppiMARCA_MISURATORE_PORTATA: TWideStringField
      FieldName = 'MARCA_MISURATORE_PORTATA'
      ReadOnly = True
      Size = 255
    end
    object qryInterventiGruppiMODELLO_MISURATORE_PORTATA: TWideStringField
      FieldName = 'MODELLO_MISURATORE_PORTATA'
      ReadOnly = True
      Size = 255
    end
    object qryInterventiGruppiANOMALIA_APPROVATA: TWideStringField
      FieldName = 'ANOMALIA_APPROVATA'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryInterventiGruppiNOTE: TBlobField
      FieldName = 'NOTE'
      ReadOnly = True
    end
    object qryInterventiGruppiSOSPESO: TWideStringField
      FieldName = 'SOSPESO'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryInterventiGruppiFILIALE: TIntegerField
      FieldName = 'FILIALE'
      ReadOnly = True
    end
    object qryInterventiGruppiSTATO: TWideStringField
      FieldName = 'STATO'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryInterventiGruppiRINNOVATO_DA: TIntegerField
      FieldName = 'RINNOVATO_DA'
      ReadOnly = True
    end
    object qryInterventiGruppiPREC_ANOMALIA: TBlobField
      FieldName = 'PREC_ANOMALIA'
      ReadOnly = True
    end
    object qryInterventiGruppiID_NFC: TWideStringField
      FieldName = 'ID_NFC'
      ReadOnly = True
      Size = 100
    end
    object qryInterventiGruppiCHIAVE_1: TIntegerField
      FieldName = 'CHIAVE_1'
      ReadOnly = True
      Required = True
    end
    object qryInterventiGruppiCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      ReadOnly = True
    end
    object qryInterventiGruppiANOMALIA_1: TWideMemoField
      FieldName = 'ANOMALIA_1'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qryInterventiGruppiANOMALIA_RISOLTA_TABLET: TWideStringField
      FieldName = 'ANOMALIA_RISOLTA_TABLET'
      FixedChar = True
      Size = 1
    end
  end
  object dsInterventiGruppi: TUniDataSource
    DataSet = qryInterventiGruppi
    Left = 48
    Top = 672
  end
  object qryInterventiPorte: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO INTERVENTI_ATTREZZATURE'
      
        '  (ANOMALIAONDOWNLOAD, ANOMALIARISOLTA, CONTROLLATO, DATACONTROL' +
        'LO, NONCONTROLLATO, ORARIOCONTROLLO, TECNICOCONTROLLO, CONSEGNAT' +
        'O)'
      'VALUES'
      
        '  (:ANOMALIAONDOWNLOAD, :ANOMALIARISOLTA, :CONTROLLATO, :DATACON' +
        'TROLLO, :NONCONTROLLATO, :ORARIOCONTROLLO, :TECNICOCONTROLLO, :C' +
        'ONSEGNATO)')
    SQLDelete.Strings = (
      'DELETE FROM INTERVENTI_ATTREZZATURE'
      'WHERE'
      '  CHIAVE = :Old_CHIAVE')
    SQLUpdate.Strings = (
      'UPDATE INTERVENTI_ATTREZZATURE'
      'SET'
      
        '  ANOMALIAONDOWNLOAD = :ANOMALIAONDOWNLOAD, ANOMALIARISOLTA = :A' +
        'NOMALIARISOLTA, CONTROLLATO = :CONTROLLATO, DATACONTROLLO = :DAT' +
        'ACONTROLLO, NONCONTROLLATO = :NONCONTROLLATO, ORARIOCONTROLLO = ' +
        ':ORARIOCONTROLLO, TECNICOCONTROLLO = :TECNICOCONTROLLO, CONSEGNA' +
        'TO = :CONSEGNATO'
      'WHERE'
      '  CHIAVE = :Old_CHIAVE')
    SQLLock.Strings = (
      'SELECT NULL FROM INTERVENTI_ATTREZZATURE'
      'WHERE'
      'CHIAVE = :Old_CHIAVE'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT ANOMALIAONDOWNLOAD, ANOMALIARISOLTA, CONTROLLATO, DATACON' +
        'TROLLO, NONCONTROLLATO, ORARIOCONTROLLO, TECNICOCONTROLLO, CONSE' +
        'GNATO FROM INTERVENTI_ATTREZZATURE'
      'WHERE'
      '  CHIAVE = :CHIAVE')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM INTERVENTI_ATTREZZATURE'
      ''
      ') q')
    DataTypeMap = <
      item
        FieldName = 'ANOMALIA'
        FieldType = ftWideString
        FieldLength = 300
      end
      item
        FieldName = 'NOTE_TECNICO'
        FieldType = ftWideString
        FieldLength = 300
      end
      item
        FieldName = 'UBICAZIONE'
        FieldType = ftWideString
        FieldLength = 300
      end>
    Connection = JanuaUniConnection1
    SQL.Strings = (
      'select IAT.*, PC.*'
      
        'FROM interventi_attrezzature IAT JOIN PORTE_CLIENTI PC ON PC.chi' +
        'ave = IAT.attrezzatura'
      'WHERE IAT.tipo_attrezzatura = '#39'P'#39' and STATINO = :STATINO'
      'ORDER BY IAT.statino desc;')
    MasterSource = dsStatiniPorte
    MasterFields = 'STATINO'
    DetailFields = 'STATINO'
    Left = 320
    Top = 600
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'STATINO'
        Value = nil
      end>
    object qryInterventiPorteCHIAVE: TIntegerField
      FieldName = 'CHIAVE'
      ReadOnly = True
      Required = True
    end
    object qryInterventiPorteSTATINO: TIntegerField
      FieldName = 'STATINO'
      ReadOnly = True
    end
    object qryInterventiPorteATTREZZATURA: TIntegerField
      FieldName = 'ATTREZZATURA'
      ReadOnly = True
    end
    object qryInterventiPorteTIPO_ATTREZZATURA: TWideStringField
      FieldName = 'TIPO_ATTREZZATURA'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryInterventiPorteANOMALIA: TWideStringField
      FieldName = 'ANOMALIA'
      ReadOnly = True
      Size = 300
    end
    object qryInterventiPorteTIPO: TWideStringField
      FieldName = 'TIPO'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryInterventiPorteDATA_CONTROLLO: TDateField
      FieldName = 'DATA_CONTROLLO'
      ReadOnly = True
    end
    object qryInterventiPorteDATA_CONSEGNA: TDateField
      FieldName = 'DATA_CONSEGNA'
      ReadOnly = True
    end
    object qryInterventiPorteANOMALIA_ON_DOWNLOAD: TWideStringField
      FieldName = 'ANOMALIA_ON_DOWNLOAD'
      ReadOnly = True
      Size = 256
    end
    object qryInterventiPorteTECNICO_CONTROLLO: TIntegerField
      FieldName = 'TECNICO_CONTROLLO'
      ReadOnly = True
    end
    object qryInterventiPorteANOMALIAONDOWNLOAD: TWideStringField
      FieldName = 'ANOMALIAONDOWNLOAD'
      ReadOnly = True
      Size = 255
    end
    object qryInterventiPorteANOMALIARISOLTA: TWideStringField
      FieldName = 'ANOMALIARISOLTA'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryInterventiPorteCONTROLLATO: TWideStringField
      FieldName = 'CONTROLLATO'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryInterventiPorteDATACONTROLLO: TDateField
      FieldName = 'DATACONTROLLO'
      ReadOnly = True
    end
    object qryInterventiPorteNONCONTROLLATO: TWideStringField
      FieldName = 'NONCONTROLLATO'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryInterventiPorteORARIOCONTROLLO: TWideStringField
      FieldName = 'ORARIOCONTROLLO'
      ReadOnly = True
      Size = 255
    end
    object qryInterventiPorteTIPO_INTERVENTO: TWideStringField
      FieldName = 'TIPO_INTERVENTO'
      ReadOnly = True
      Size = 255
    end
    object qryInterventiPorteTIPO_VISITA: TWideStringField
      FieldName = 'TIPO_VISITA'
      ReadOnly = True
      Size = 255
    end
    object qryInterventiPorteTECNICOCONTROLLO: TIntegerField
      FieldName = 'TECNICOCONTROLLO'
      ReadOnly = True
    end
    object qryInterventiPorteCONSEGNATO: TWideStringField
      FieldName = 'CONSEGNATO'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryInterventiPortePERIODI_NON_ORDINARI: TWideStringField
      FieldName = 'PERIODI_NON_ORDINARI'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryInterventiPorteDATA_CONTROLLO_NEGATO: TDateField
      FieldName = 'DATA_CONTROLLO_NEGATO'
      ReadOnly = True
    end
    object qryInterventiPorteCHIAVE_1: TIntegerField
      FieldName = 'CHIAVE_1'
      Required = True
    end
    object qryInterventiPorteCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object qryInterventiPorteFILIALE: TIntegerField
      FieldName = 'FILIALE'
    end
    object qryInterventiPorteTIPO_1: TIntegerField
      FieldName = 'TIPO_1'
    end
    object qryInterventiPorteMATRICOLA: TWideStringField
      FieldName = 'MATRICOLA'
      Size = 255
    end
    object qryInterventiPorteANNO_COSTRUZIONE: TSmallintField
      FieldName = 'ANNO_COSTRUZIONE'
    end
    object qryInterventiPorteANTE: TWideStringField
      FieldName = 'ANTE'
      FixedChar = True
      Size = 1
    end
    object qryInterventiPorteMARCA: TIntegerField
      FieldName = 'MARCA'
    end
    object qryInterventiPorteMARCA_MANIGLIONE: TIntegerField
      FieldName = 'MARCA_MANIGLIONE'
    end
    object qryInterventiPorteTIPO_MANIGLIONE: TIntegerField
      FieldName = 'TIPO_MANIGLIONE'
    end
    object qryInterventiPorteTIPO_SERRATURA_ANTA_PRINCIPALE: TIntegerField
      FieldName = 'TIPO_SERRATURA_ANTA_PRINCIPALE'
    end
    object qryInterventiPorteTIPO_SERRATURA_ANTA_SECONDARIA: TIntegerField
      FieldName = 'TIPO_SERRATURA_ANTA_SECONDARIA'
    end
    object qryInterventiPorteTIPO_MANIGLIA_ESTERNA: TIntegerField
      FieldName = 'TIPO_MANIGLIA_ESTERNA'
    end
    object qryInterventiPorteTIPO_GUARNIZIONE: TIntegerField
      FieldName = 'TIPO_GUARNIZIONE'
    end
    object qryInterventiPorteUBICAZIONE_1: TWideMemoField
      FieldName = 'UBICAZIONE_1'
      BlobType = ftWideMemo
    end
    object qryInterventiPortePROGRESSIVO: TIntegerField
      FieldName = 'PROGRESSIVO'
    end
    object qryInterventiPorteSTATO: TWideStringField
      FieldName = 'STATO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryInterventiPorteRINNOVATO_DA: TIntegerField
      FieldName = 'RINNOVATO_DA'
    end
    object qryInterventiPorteANOMALIA_APPROVATA: TWideStringField
      FieldName = 'ANOMALIA_APPROVATA'
      FixedChar = True
      Size = 1
    end
    object qryInterventiPorteANOMALIA_1: TWideMemoField
      FieldName = 'ANOMALIA_1'
      BlobType = ftWideMemo
    end
    object qryInterventiPorteTIPO_INSTALLAZIONE: TIntegerField
      FieldName = 'TIPO_INSTALLAZIONE'
    end
    object qryInterventiPorteDIMENSIONE: TWideStringField
      FieldName = 'DIMENSIONE'
      Size = 255
    end
    object qryInterventiPortePREC_ANOMALIA: TBlobField
      FieldName = 'PREC_ANOMALIA'
    end
    object qryInterventiPorteNOTE_TECNICO: TWideStringField
      FieldName = 'NOTE_TECNICO'
      Size = 300
    end
    object qryInterventiPorteID_NFC: TWideStringField
      FieldName = 'ID_NFC'
      Size = 100
    end
    object qryInterventiPorteJGUID: TBytesField
      FieldName = 'JGUID'
    end
  end
  object dsInterventiPorte: TUniDataSource
    DataSet = qryInterventiPorte
    Left = 320
    Top = 672
  end
  object qryInterventiSprinkler: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO INTERVENTI_ATTREZZATURE'
      
        '  (ANOMALIA_ON_DOWNLOAD, TECNICO_CONTROLLO, ANOMALIAONDOWNLOAD, ' +
        'ANOMALIARISOLTA, CONTROLLATO, DATACONTROLLO, NONCONTROLLATO, ORA' +
        'RIOCONTROLLO, TIPO_INTERVENTO, TIPO_VISITA, TECNICOCONTROLLO, CO' +
        'NSEGNATO)'
      'VALUES'
      
        '  (:ANOMALIA_ON_DOWNLOAD, :TECNICO_CONTROLLO, :ANOMALIAONDOWNLOA' +
        'D, :ANOMALIARISOLTA, :CONTROLLATO, :DATACONTROLLO, :NONCONTROLLA' +
        'TO, :ORARIOCONTROLLO, :TIPO_INTERVENTO, :TIPO_VISITA, :TECNICOCO' +
        'NTROLLO, :CONSEGNATO)')
    SQLDelete.Strings = (
      'DELETE FROM INTERVENTI_ATTREZZATURE'
      'WHERE'
      '  CHIAVE = :Old_CHIAVE')
    SQLUpdate.Strings = (
      'UPDATE INTERVENTI_ATTREZZATURE'
      'SET'
      
        '  ANOMALIA_ON_DOWNLOAD = :ANOMALIA_ON_DOWNLOAD, TECNICO_CONTROLL' +
        'O = :TECNICO_CONTROLLO, ANOMALIAONDOWNLOAD = :ANOMALIAONDOWNLOAD' +
        ', ANOMALIARISOLTA = :ANOMALIARISOLTA, CONTROLLATO = :CONTROLLATO' +
        ', DATACONTROLLO = :DATACONTROLLO, NONCONTROLLATO = :NONCONTROLLA' +
        'TO, ORARIOCONTROLLO = :ORARIOCONTROLLO, TIPO_INTERVENTO = :TIPO_' +
        'INTERVENTO, TIPO_VISITA = :TIPO_VISITA, TECNICOCONTROLLO = :TECN' +
        'ICOCONTROLLO, CONSEGNATO = :CONSEGNATO'
      'WHERE'
      '  CHIAVE = :Old_CHIAVE')
    SQLLock.Strings = (
      'SELECT NULL FROM INTERVENTI_ATTREZZATURE'
      'WHERE'
      'CHIAVE = :Old_CHIAVE'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT ANOMALIA_ON_DOWNLOAD, TECNICO_CONTROLLO, ANOMALIAONDOWNLO' +
        'AD, ANOMALIARISOLTA, CONTROLLATO, DATACONTROLLO, NONCONTROLLATO,' +
        ' ORARIOCONTROLLO, TIPO_INTERVENTO, TIPO_VISITA, TECNICOCONTROLLO' +
        ', CONSEGNATO FROM INTERVENTI_ATTREZZATURE'
      'WHERE'
      '  CHIAVE = :CHIAVE')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM INTERVENTI_ATTREZZATURE'
      ''
      ') q')
    DataTypeMap = <
      item
        FieldName = 'ANOMALIA'
        FieldType = ftWideString
        FieldLength = 300
      end
      item
        FieldName = 'UBICAZIONE'
        FieldType = ftWideString
        FieldLength = 200
      end>
    Connection = JanuaUniConnection1
    SQL.Strings = (
      'select IAT.*, SC.*'
      
        'FROM interventi_attrezzature IAT JOIN SPRINKLER_CLIENTI SC ON SC' +
        '.chiave = IAT.attrezzatura'
      'WHERE IAT.tipo_attrezzatura = '#39'S'#39' and STATINO = :STATINO'
      'ORDER BY IAT.statino desc;')
    MasterSource = DSStatiniSprinkler
    MasterFields = 'STATINO'
    DetailFields = 'STATINO'
    Left = 984
    Top = 600
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'STATINO'
        Value = nil
      end>
    object qryInterventiSprinklerDESCRIZIONE: TWideStringField
      FieldName = 'DESCRIZIONE'
      ReadOnly = True
      Size = 255
    end
    object qryInterventiSprinklerUBICAZIONE: TWideStringField
      FieldName = 'UBICAZIONE'
      ReadOnly = True
      Size = 200
    end
    object qryInterventiSprinklerANOMALIA: TWideStringField
      FieldName = 'ANOMALIA'
      Size = 300
    end
    object qryInterventiSprinklerMODELLO: TWideStringField
      FieldName = 'MODELLO'
      ReadOnly = True
      Size = 255
    end
    object qryInterventiSprinklerCHIAVE: TIntegerField
      FieldName = 'CHIAVE'
      Required = True
    end
    object qryInterventiSprinklerSTATINO: TIntegerField
      FieldName = 'STATINO'
    end
    object qryInterventiSprinklerATTREZZATURA: TIntegerField
      FieldName = 'ATTREZZATURA'
    end
    object qryInterventiSprinklerTIPO: TWideStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object qryInterventiSprinklerDATA_CONTROLLO: TDateField
      FieldName = 'DATA_CONTROLLO'
    end
    object qryInterventiSprinklerDATA_CONSEGNA: TDateField
      FieldName = 'DATA_CONSEGNA'
    end
    object qryInterventiSprinklerPERIODI_NON_ORDINARI: TWideStringField
      FieldName = 'PERIODI_NON_ORDINARI'
      FixedChar = True
      Size = 1
    end
    object qryInterventiSprinklerDATA_CONTROLLO_NEGATO: TDateField
      FieldName = 'DATA_CONTROLLO_NEGATO'
    end
    object qryInterventiSprinklerMARCA: TIntegerField
      FieldName = 'MARCA'
      ReadOnly = True
    end
    object qryInterventiSprinklerTARATURA_VALVOLE: TSmallintField
      FieldName = 'TARATURA_VALVOLE'
      ReadOnly = True
    end
    object qryInterventiSprinklerVALVOLE_RICAMBIO: TWideStringField
      FieldName = 'VALVOLE_RICAMBIO'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryInterventiSprinklerSTATO: TWideStringField
      FieldName = 'STATO'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryInterventiSprinklerRINNOVATO_DA: TIntegerField
      FieldName = 'RINNOVATO_DA'
      ReadOnly = True
    end
    object qryInterventiSprinklerANOMALIA_APPROVATA: TWideStringField
      FieldName = 'ANOMALIA_APPROVATA'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryInterventiSprinklerCOMPRESSORE: TWideStringField
      FieldName = 'COMPRESSORE'
      ReadOnly = True
      Size = 255
    end
    object qryInterventiSprinklerNOTE: TBlobField
      FieldName = 'NOTE'
      ReadOnly = True
    end
    object qryInterventiSprinklerQUANTITA_VALVOLE: TWideStringField
      FieldName = 'QUANTITA_VALVOLE'
      ReadOnly = True
      Size = 255
    end
    object qryInterventiSprinklerPREC_ANOMALIA: TBlobField
      FieldName = 'PREC_ANOMALIA'
      ReadOnly = True
    end
    object qryInterventiSprinklerTIPO_ATTREZZATURA: TWideStringField
      FieldName = 'TIPO_ATTREZZATURA'
      FixedChar = True
      Size = 1
    end
    object qryInterventiSprinklerANOMALIA_ON_DOWNLOAD: TWideStringField
      FieldName = 'ANOMALIA_ON_DOWNLOAD'
      Size = 256
    end
    object qryInterventiSprinklerTECNICO_CONTROLLO: TIntegerField
      FieldName = 'TECNICO_CONTROLLO'
    end
    object qryInterventiSprinklerANOMALIAONDOWNLOAD: TWideStringField
      FieldName = 'ANOMALIAONDOWNLOAD'
      Size = 255
    end
    object qryInterventiSprinklerANOMALIARISOLTA: TWideStringField
      FieldName = 'ANOMALIARISOLTA'
      FixedChar = True
      Size = 1
    end
    object qryInterventiSprinklerCONTROLLATO: TWideStringField
      FieldName = 'CONTROLLATO'
      FixedChar = True
      Size = 1
    end
    object qryInterventiSprinklerDATACONTROLLO: TDateField
      FieldName = 'DATACONTROLLO'
    end
    object qryInterventiSprinklerNONCONTROLLATO: TWideStringField
      FieldName = 'NONCONTROLLATO'
      FixedChar = True
      Size = 1
    end
    object qryInterventiSprinklerORARIOCONTROLLO: TWideStringField
      FieldName = 'ORARIOCONTROLLO'
      Size = 255
    end
    object qryInterventiSprinklerTIPO_INTERVENTO: TWideStringField
      FieldName = 'TIPO_INTERVENTO'
      Size = 255
    end
    object qryInterventiSprinklerTIPO_VISITA: TWideStringField
      FieldName = 'TIPO_VISITA'
      Size = 255
    end
    object qryInterventiSprinklerTECNICOCONTROLLO: TIntegerField
      FieldName = 'TECNICOCONTROLLO'
    end
    object qryInterventiSprinklerCONSEGNATO: TWideStringField
      FieldName = 'CONSEGNATO'
      FixedChar = True
      Size = 1
    end
    object qryInterventiSprinklerANOMALIA_RISOLTA_TABLET: TWideStringField
      FieldName = 'ANOMALIA_RISOLTA_TABLET'
      FixedChar = True
      Size = 1
    end
    object qryInterventiSprinklerCHIAVE_1: TIntegerField
      FieldName = 'CHIAVE_1'
      ReadOnly = True
      Required = True
    end
    object qryInterventiSprinklerCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      ReadOnly = True
    end
    object qryInterventiSprinklerFILIALE: TIntegerField
      FieldName = 'FILIALE'
      ReadOnly = True
    end
    object qryInterventiSprinklerTIPO_1: TIntegerField
      FieldName = 'TIPO_1'
      ReadOnly = True
    end
    object qryInterventiSprinklerANOMALIA_1: TWideMemoField
      FieldName = 'ANOMALIA_1'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qryInterventiSprinklerID_NFC: TWideStringField
      FieldName = 'ID_NFC'
      ReadOnly = True
      Size = 100
    end
    object qryInterventiSprinklerJGUID: TBytesField
      FieldName = 'JGUID'
      ReadOnly = True
    end
  end
  object dsInterventiSprinkler: TUniDataSource
    DataSet = qryInterventiSprinkler
    Left = 984
    Top = 672
  end
  object qryInterventiEstintori: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO INTERVENTI_ESTINTORI'
      
        '  (DATACONSEGNA, DATACONTROLLO, DATACONTROLLONEGATO, DATARESTITU' +
        'ZIONE, DATARITIRO, DATASMALTIMENTO, MOTIVOCONTROLLONEGATO, MOTIV' +
        'ORITIRO, NONCONTROLLATO, ORARIOCONSEGNA, ORARIOCONTROLLO, ORARIO' +
        'CONTROLLONEGATO, ORARIORITIRO, ORARIOSMALTIMENTO, RESTITUITO, RI' +
        'TIRATO, SMALTITO, TECNICOCONSEGNA, TECNICOCONTROLLONEGATO, TECNI' +
        'CORITIRO, TECNICOSMALTIMENTO)'
      'VALUES'
      
        '  (:DATACONSEGNA, :DATACONTROLLO, :DATACONTROLLONEGATO, :DATARES' +
        'TITUZIONE, :DATARITIRO, :DATASMALTIMENTO, :MOTIVOCONTROLLONEGATO' +
        ', :MOTIVORITIRO, :NONCONTROLLATO, :ORARIOCONSEGNA, :ORARIOCONTRO' +
        'LLO, :ORARIOCONTROLLONEGATO, :ORARIORITIRO, :ORARIOSMALTIMENTO, ' +
        ':RESTITUITO, :RITIRATO, :SMALTITO, :TECNICOCONSEGNA, :TECNICOCON' +
        'TROLLONEGATO, :TECNICORITIRO, :TECNICOSMALTIMENTO)')
    SQLDelete.Strings = (
      'DELETE FROM INTERVENTI_ESTINTORI'
      'WHERE'
      '  CHIAVE = :Old_CHIAVE')
    SQLUpdate.Strings = (
      'UPDATE INTERVENTI_ESTINTORI'
      'SET'
      
        '  DATACONSEGNA = :DATACONSEGNA, DATACONTROLLO = :DATACONTROLLO, ' +
        'DATACONTROLLONEGATO = :DATACONTROLLONEGATO, DATARESTITUZIONE = :' +
        'DATARESTITUZIONE, DATARITIRO = :DATARITIRO, DATASMALTIMENTO = :D' +
        'ATASMALTIMENTO, MOTIVOCONTROLLONEGATO = :MOTIVOCONTROLLONEGATO, ' +
        'MOTIVORITIRO = :MOTIVORITIRO, NONCONTROLLATO = :NONCONTROLLATO, ' +
        'ORARIOCONSEGNA = :ORARIOCONSEGNA, ORARIOCONTROLLO = :ORARIOCONTR' +
        'OLLO, ORARIOCONTROLLONEGATO = :ORARIOCONTROLLONEGATO, ORARIORITI' +
        'RO = :ORARIORITIRO, ORARIOSMALTIMENTO = :ORARIOSMALTIMENTO, REST' +
        'ITUITO = :RESTITUITO, RITIRATO = :RITIRATO, SMALTITO = :SMALTITO' +
        ', TECNICOCONSEGNA = :TECNICOCONSEGNA, TECNICOCONTROLLONEGATO = :' +
        'TECNICOCONTROLLONEGATO, TECNICORITIRO = :TECNICORITIRO, TECNICOS' +
        'MALTIMENTO = :TECNICOSMALTIMENTO'
      'WHERE'
      '  CHIAVE = :Old_CHIAVE')
    SQLLock.Strings = (
      'SELECT NULL FROM INTERVENTI_ESTINTORI'
      'WHERE'
      'CHIAVE = :Old_CHIAVE'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT DATACONSEGNA, DATACONTROLLO, DATACONTROLLONEGATO, DATARES' +
        'TITUZIONE, DATARITIRO, DATASMALTIMENTO, MOTIVOCONTROLLONEGATO, M' +
        'OTIVORITIRO, NONCONTROLLATO, ORARIOCONSEGNA, ORARIOCONTROLLO, OR' +
        'ARIOCONTROLLONEGATO, ORARIORITIRO, ORARIOSMALTIMENTO, RESTITUITO' +
        ', RITIRATO, SMALTITO, TECNICOCONSEGNA, TECNICOCONTROLLONEGATO, T' +
        'ECNICORITIRO, TECNICOSMALTIMENTO FROM INTERVENTI_ESTINTORI'
      'WHERE'
      '  CHIAVE = :CHIAVE')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM INTERVENTI_ESTINTORI'
      ''
      ') q')
    DataTypeMap = <
      item
        FieldName = 'ANOMALIA'
        FieldType = ftWideString
        FieldLength = 400
      end
      item
        FieldName = 'UBICAZIONE'
        FieldType = ftWideString
        FieldLength = 400
      end>
    Connection = JanuaUniConnection1
    SQL.Strings = (
      
        'select  IE.*, EC.*,  CATE.descrizione, CATE.classe_fuoco, ME.DES' +
        'CRIZIONE AS DESCRIZIONE_MARCA '
      
        'from INTERVENTI_ESTINTORI IE  JOIN estintori_clienti EC ON IE.es' +
        'tintore = EC.chiave'
      
        '      LEFT outer JOIN MARCHE_ESTINTORI ME ON ME.chiave = EC.marc' +
        'a'
      '      JOIN cat_estintori CATE ON CATE.chiave = EC.tipo_estintore'
      'WHERE IE.STATINO = :STATINO'
      'ORDER BY EC.progressivo')
    MasterSource = dsStatiniEstintori
    Left = 704
    Top = 600
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'STATINO'
        Value = nil
      end>
    object qryInterventiEstintoriCHIAVE: TIntegerField
      FieldName = 'CHIAVE'
      Required = True
    end
    object qryInterventiEstintoriSTATINO: TIntegerField
      FieldName = 'STATINO'
    end
    object qryInterventiEstintoriESTINTORE: TIntegerField
      FieldName = 'ESTINTORE'
    end
    object qryInterventiEstintoriTIPO: TWideStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object qryInterventiEstintoriDESCRIZIONE_ALTERNATIVA: TWideStringField
      FieldName = 'DESCRIZIONE_ALTERNATIVA'
      Size = 255
    end
    object qryInterventiEstintoriRESET_DATA_COLLAUDO: TWideStringField
      FieldName = 'RESET_DATA_COLLAUDO'
      FixedChar = True
      Size = 1
    end
    object qryInterventiEstintoriRESET_DATA_REVISIONE: TWideStringField
      FieldName = 'RESET_DATA_REVISIONE'
      FixedChar = True
      Size = 1
    end
    object qryInterventiEstintoriANOMALIA: TWideStringField
      FieldName = 'ANOMALIA'
      Size = 400
    end
    object qryInterventiEstintoriDATA_CONTROLLO: TDateField
      FieldName = 'DATA_CONTROLLO'
    end
    object qryInterventiEstintoriDATA_RITIRO: TDateField
      FieldName = 'DATA_RITIRO'
    end
    object qryInterventiEstintoriDATA_SMALTIMENTO: TDateField
      FieldName = 'DATA_SMALTIMENTO'
    end
    object qryInterventiEstintoriDATA_RESTITUZIONE: TDateField
      FieldName = 'DATA_RESTITUZIONE'
    end
    object qryInterventiEstintoriDATA_CONSEGNA: TDateField
      FieldName = 'DATA_CONSEGNA'
    end
    object qryInterventiEstintoriDATA_CONTROLLO_NEGATO: TDateField
      FieldName = 'DATA_CONTROLLO_NEGATO'
    end
    object qryInterventiEstintoriTECNICOCONTROLLO: TIntegerField
      FieldName = 'TECNICOCONTROLLO'
    end
    object qryInterventiEstintoriTECNICORESTITUZIONE: TIntegerField
      FieldName = 'TECNICORESTITUZIONE'
    end
    object qryInterventiEstintoriAGGIUNTODAMOBILE: TWideStringField
      FieldName = 'AGGIUNTODAMOBILE'
      FixedChar = True
      Size = 1
    end
    object qryInterventiEstintoriANOMALIAONDOWNLOAD: TWideStringField
      FieldName = 'ANOMALIAONDOWNLOAD'
      Size = 255
    end
    object qryInterventiEstintoriANOMALIARISOLTA: TWideStringField
      FieldName = 'ANOMALIARISOLTA'
      FixedChar = True
      Size = 1
    end
    object qryInterventiEstintoriCONSEGNATO: TWideStringField
      FieldName = 'CONSEGNATO'
      FixedChar = True
      Size = 1
    end
    object qryInterventiEstintoriCONTROLLATO: TWideStringField
      FieldName = 'CONTROLLATO'
      FixedChar = True
      Size = 1
    end
    object qryInterventiEstintoriDATA_LAVORAZIONE: TDateField
      FieldName = 'DATA_LAVORAZIONE'
    end
    object qryInterventiEstintoriDATACONSEGNA: TDateField
      FieldName = 'DATACONSEGNA'
    end
    object qryInterventiEstintoriDATACONTROLLO: TDateField
      FieldName = 'DATACONTROLLO'
    end
    object qryInterventiEstintoriDATACONTROLLONEGATO: TDateField
      FieldName = 'DATACONTROLLONEGATO'
    end
    object qryInterventiEstintoriDATARESTITUZIONE: TDateField
      FieldName = 'DATARESTITUZIONE'
    end
    object qryInterventiEstintoriDATARITIRO: TDateField
      FieldName = 'DATARITIRO'
    end
    object qryInterventiEstintoriDATASMALTIMENTO: TDateField
      FieldName = 'DATASMALTIMENTO'
    end
    object qryInterventiEstintoriMOTIVOCONTROLLONEGATO: TWideStringField
      FieldName = 'MOTIVOCONTROLLONEGATO'
      Size = 255
    end
    object qryInterventiEstintoriMOTIVORITIRO: TWideStringField
      FieldName = 'MOTIVORITIRO'
      Size = 255
    end
    object qryInterventiEstintoriNONCONTROLLATO: TWideStringField
      FieldName = 'NONCONTROLLATO'
      FixedChar = True
      Size = 1
    end
    object qryInterventiEstintoriORARIOCONSEGNA: TWideStringField
      FieldName = 'ORARIOCONSEGNA'
      Size = 255
    end
    object qryInterventiEstintoriORARIOCONTROLLO: TWideStringField
      FieldName = 'ORARIOCONTROLLO'
      Size = 255
    end
    object qryInterventiEstintoriORARIOCONTROLLONEGATO: TWideStringField
      FieldName = 'ORARIOCONTROLLONEGATO'
      Size = 255
    end
    object qryInterventiEstintoriORARIORITIRO: TWideStringField
      FieldName = 'ORARIORITIRO'
      Size = 255
    end
    object qryInterventiEstintoriORARIOSMALTIMENTO: TWideStringField
      FieldName = 'ORARIOSMALTIMENTO'
      Size = 255
    end
    object qryInterventiEstintoriPERIODICITA_COLLAUDO: TIntegerField
      FieldName = 'PERIODICITA_COLLAUDO'
    end
    object qryInterventiEstintoriPERIODICITA_REVISIONE: TIntegerField
      FieldName = 'PERIODICITA_REVISIONE'
    end
    object qryInterventiEstintoriRESTITUITO: TWideStringField
      FieldName = 'RESTITUITO'
      FixedChar = True
      Size = 1
    end
    object qryInterventiEstintoriRITIRATO: TWideStringField
      FieldName = 'RITIRATO'
      FixedChar = True
      Size = 1
    end
    object qryInterventiEstintoriSMALTITO: TWideStringField
      FieldName = 'SMALTITO'
      FixedChar = True
      Size = 1
    end
    object qryInterventiEstintoriTIPO_INTERVENTO: TWideStringField
      FieldName = 'TIPO_INTERVENTO'
      Size = 255
    end
    object qryInterventiEstintoriTECNICOCONSEGNA: TIntegerField
      FieldName = 'TECNICOCONSEGNA'
    end
    object qryInterventiEstintoriTECNICOCONTROLLONEGATO: TIntegerField
      FieldName = 'TECNICOCONTROLLONEGATO'
    end
    object qryInterventiEstintoriTECNICORITIRO: TIntegerField
      FieldName = 'TECNICORITIRO'
    end
    object qryInterventiEstintoriTECNICOSMALTIMENTO: TIntegerField
      FieldName = 'TECNICOSMALTIMENTO'
    end
    object qryInterventiEstintoriCHIAVE_1: TIntegerField
      FieldName = 'CHIAVE_1'
      ReadOnly = True
      Required = True
    end
    object qryInterventiEstintoriCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      ReadOnly = True
    end
    object qryInterventiEstintoriFILIALE: TIntegerField
      FieldName = 'FILIALE'
      ReadOnly = True
    end
    object qryInterventiEstintoriDATA_STARTUP_REV: TDateField
      FieldName = 'DATA_STARTUP_REV'
      ReadOnly = True
    end
    object qryInterventiEstintoriTIPO_ESTINTORE: TIntegerField
      FieldName = 'TIPO_ESTINTORE'
      ReadOnly = True
    end
    object qryInterventiEstintoriPROGRESSIVO: TIntegerField
      FieldName = 'PROGRESSIVO'
      ReadOnly = True
      Required = True
    end
    object qryInterventiEstintoriMATRICOLA: TWideStringField
      FieldName = 'MATRICOLA'
      ReadOnly = True
      Size = 255
    end
    object qryInterventiEstintoriANNO_COSTRUZIONE: TSmallintField
      FieldName = 'ANNO_COSTRUZIONE'
      ReadOnly = True
    end
    object qryInterventiEstintoriDATA_STARTUP_COL: TDateField
      FieldName = 'DATA_STARTUP_COL'
      ReadOnly = True
    end
    object qryInterventiEstintoriSTATO: TWideStringField
      FieldName = 'STATO'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryInterventiEstintoriRINNOVATO_DA: TIntegerField
      FieldName = 'RINNOVATO_DA'
      ReadOnly = True
    end
    object qryInterventiEstintoriANOMALIA_APPROVATA: TWideStringField
      FieldName = 'ANOMALIA_APPROVATA'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryInterventiEstintoriANOMALIA_1: TWideMemoField
      FieldName = 'ANOMALIA_1'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qryInterventiEstintoriUBICAZIONE: TWideStringField
      FieldName = 'UBICAZIONE'
      ReadOnly = True
      Size = 400
    end
    object qryInterventiEstintoriPREC_ANOMALIA: TBlobField
      FieldName = 'PREC_ANOMALIA'
      ReadOnly = True
    end
    object qryInterventiEstintoriNOTE_TECNICO: TBlobField
      FieldName = 'NOTE_TECNICO'
      ReadOnly = True
    end
    object qryInterventiEstintoriID_NFC: TWideStringField
      FieldName = 'ID_NFC'
      ReadOnly = True
      Size = 100
    end
    object qryInterventiEstintoriMARCA: TIntegerField
      FieldName = 'MARCA'
      ReadOnly = True
    end
    object qryInterventiEstintoriJGUID: TBytesField
      FieldName = 'JGUID'
      ReadOnly = True
    end
    object qryInterventiEstintoriDESCRIZIONE: TWideStringField
      FieldName = 'DESCRIZIONE'
      ReadOnly = True
      Size = 255
    end
    object qryInterventiEstintoriCLASSE_FUOCO: TWideStringField
      FieldName = 'CLASSE_FUOCO'
      ReadOnly = True
      Size = 30
    end
    object qryInterventiEstintoriDESCRIZIONE_MARCA: TWideStringField
      FieldName = 'DESCRIZIONE_MARCA'
      ReadOnly = True
      Size = 255
    end
  end
  object dsInterventiEstintori: TUniDataSource
    DataSet = qryInterventiEstintori
    Left = 704
    Top = 672
  end
  object qryEstintoriSintesi: TUniQuery
    Connection = JanuaUniConnection1
    SQL.Strings = (
      'select CATE.descrizione'
      
        '       , SUM(CASE WHEN IE.TIPO = '#39'O'#39' THEN 1 ELSE 0 END) AS ORDIN' +
        'ARIO'
      
        '       , SUM(CASE WHEN IE.TIPO = '#39'R'#39' THEN 1 ELSE 0 END) AS REVIS' +
        'IONE'
      
        '       , SUM(CASE WHEN IE.TIPO = '#39'C'#39' THEN 1 ELSE 0 END) AS COLLA' +
        'UDO'
      
        '       , SUM(CASE WHEN IE.TIPO = '#39'-'#39' THEN 1 ELSE 0 END) AS SOSTI' +
        'TUZIONE'
      
        '       , SUM(CASE WHEN IE.TIPO = '#39'@'#39' THEN 1 ELSE 0 END) AS RICAR' +
        'ICA'
      
        '       , SUM(CASE WHEN IE.TIPO = '#39'A'#39' THEN 1 ELSE 0 END) AS RIPAR' +
        'AZIONE'
      ''
      
        '--  CATE.classe_fuoco, EC.ubicazione, EC.anno_costruzione, ME.DE' +
        'SCRIZIONE AS MARCA,  IE.CHIAVE, IE.STATINO, ESTINTORE, IE.TIPO T' +
        'IPO_I,  IE.ANOMALIA,'
      
        '--      RESET_DATA_COLLAUDO, RESET_DATA_REVISIONE, DATA_CONTROLL' +
        'O, DATA_RITIRO, DATA_SMALTIMENTO, DATA_RESTITUZIONE, DATA_CONSEG' +
        'NA, DATA_CONTROLLO_NEGATO, DESCRIZIONE_ALTERNATIVA'
      
        'from INTERVENTI_ESTINTORI IE  JOIN estintori_clienti EC ON IE.es' +
        'tintore = EC.chiave'
      '      JOIN cat_estintori CATE ON CATE.chiave = EC.tipo_estintore'
      '      -- where ie.statino = 2263121'
      'GROUP BY CATE.descrizione;')
    Left = 704
    Top = 736
    object qryEstintoriSintesiDESCRIZIONE: TWideStringField
      DisplayWidth = 80
      FieldName = 'DESCRIZIONE'
      Size = 255
    end
    object qryEstintoriSintesiORDINARIO: TLargeintField
      FieldName = 'ORDINARIO'
      ReadOnly = True
    end
    object qryEstintoriSintesiREVISIONE: TLargeintField
      FieldName = 'REVISIONE'
      ReadOnly = True
    end
    object qryEstintoriSintesiCOLLAUDO: TLargeintField
      FieldName = 'COLLAUDO'
      ReadOnly = True
    end
    object qryEstintoriSintesiSOSTITUZIONE: TLargeintField
      FieldName = 'SOSTITUZIONE'
      ReadOnly = True
    end
    object qryEstintoriSintesiRICARICA: TLargeintField
      FieldName = 'RICARICA'
      ReadOnly = True
    end
    object qryEstintoriSintesiRIPARAZIONE: TLargeintField
      FieldName = 'RIPARAZIONE'
      ReadOnly = True
    end
  end
  object dsEstintoriSintesi: TUniDataSource
    DataSet = qryEstintoriSintesi
    Left = 704
    Top = 808
  end
  object dsSintesiReport: TUniDataSource
    DataSet = qrySintesiReport
    Left = 1136
    Top = 528
  end
  object qrySintesiReport: TUniQuery
    Connection = JanuaUniConnection1
    SQL.Strings = (
      'SELECT * FROM  INTERVENTI_STATINI_DETTAGLIO '
      'WHERE STATINO = :STATINO'
      'ORDER BY  POS, DESCRIZIONE')
    Left = 1136
    Top = 456
    ParamData = <
      item
        DataType = ftInteger
        Name = 'STATINO'
        ParamType = ptInput
        Value = nil
      end>
    object qrySintesiReportPOS: TIntegerField
      FieldName = 'POS'
      ReadOnly = True
    end
    object qrySintesiReportDESCRIZIONE: TWideStringField
      DisplayWidth = 128
      FieldName = 'DESCRIZIONE'
      ReadOnly = True
      Size = 256
    end
    object qrySintesiReportORDINARIO: TLargeintField
      FieldName = 'ORDINARIO'
      ReadOnly = True
    end
    object qrySintesiReportREVISIONE: TLargeintField
      FieldName = 'REVISIONE'
      ReadOnly = True
    end
    object qrySintesiReportCOLLAUDO: TLargeintField
      FieldName = 'COLLAUDO'
      ReadOnly = True
    end
    object qrySintesiReportSOSTITUZIONE: TLargeintField
      FieldName = 'SOSTITUZIONE'
      ReadOnly = True
    end
    object qrySintesiReportRICARICA: TLargeintField
      FieldName = 'RICARICA'
      ReadOnly = True
    end
    object qrySintesiReportRIPARAZIONE: TLargeintField
      FieldName = 'RIPARAZIONE'
      ReadOnly = True
    end
    object qrySintesiReportNON_ESEGUITE: TLargeintField
      FieldName = 'NON_ESEGUITE'
      ReadOnly = True
    end
    object qrySintesiReportSTATINO: TIntegerField
      FieldName = 'STATINO'
    end
    object qrySintesiReportCONTROLLI: TLargeintField
      FieldName = 'CONTROLLI'
    end
    object qrySintesiReportPRESSATURA: TLargeintField
      FieldName = 'PRESSATURA'
    end
    object qrySintesiReportNUOVI: TLargeintField
      FieldName = 'NUOVI'
    end
  end
  object qryInterventiImpianti: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO INTERVENTI_IMPIANTI_ELETTRICI'
      
        '  (ANOMALIAONDOWNLOAD, ANOMALIARISOLTA, CONTROLLATO, DATACONTROL' +
        'LO, ORARIOCONTROLLO, TIPO_INTERVENTO, TECNICOCONTROLLO)'
      'VALUES'
      
        '  (:ANOMALIAONDOWNLOAD, :ANOMALIARISOLTA, :CONTROLLATO, :DATACON' +
        'TROLLO, :ORARIOCONTROLLO, :TIPO_INTERVENTO, :TECNICOCONTROLLO)')
    SQLDelete.Strings = (
      'DELETE FROM INTERVENTI_IMPIANTI_ELETTRICI'
      'WHERE'
      '  CHIAVE = :Old_CHIAVE')
    SQLUpdate.Strings = (
      'UPDATE INTERVENTI_IMPIANTI_ELETTRICI'
      'SET'
      
        '  ANOMALIAONDOWNLOAD = :ANOMALIAONDOWNLOAD, ANOMALIARISOLTA = :A' +
        'NOMALIARISOLTA, CONTROLLATO = :CONTROLLATO, DATACONTROLLO = :DAT' +
        'ACONTROLLO, ORARIOCONTROLLO = :ORARIOCONTROLLO, TIPO_INTERVENTO ' +
        '= :TIPO_INTERVENTO, TECNICOCONTROLLO = :TECNICOCONTROLLO'
      'WHERE'
      '  CHIAVE = :Old_CHIAVE')
    SQLLock.Strings = (
      'SELECT NULL FROM INTERVENTI_IMPIANTI_ELETTRICI'
      'WHERE'
      'CHIAVE = :Old_CHIAVE'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT ANOMALIAONDOWNLOAD, ANOMALIARISOLTA, CONTROLLATO, DATACON' +
        'TROLLO, ORARIOCONTROLLO, TIPO_INTERVENTO, TECNICOCONTROLLO FROM ' +
        'INTERVENTI_IMPIANTI_ELETTRICI'
      'WHERE'
      '  CHIAVE = :CHIAVE')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM INTERVENTI_IMPIANTI_ELETTRICI'
      ''
      ') q')
    Connection = JanuaUniConnection1
    SQL.Strings = (
      'select  IE.*, EL.*'
      
        'from INTERVENTI_IMPIANTI_ELETTRICI IE JOIN ELEMENTI_IMPIANTI_ELE' +
        'TTRICI EL ON EL.chiave = IE.elemento_impianto_elettrico'
      '     JOIN TIPI_ELEM_IMPIANTI_ELETTRICI TP ON TP.chiave = EL.tipo'
      '     WHERE STATINO = :STATINO'
      '     ORDER BY PROGRESSIVO')
    MasterSource = dsStatiniImpianti
    MasterFields = 'STATINO'
    DetailFields = 'STATINO'
    Left = 184
    Top = 600
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'STATINO'
        Value = nil
      end>
    object qryInterventiImpiantiCHIAVE: TIntegerField
      FieldName = 'CHIAVE'
      Required = True
    end
    object qryInterventiImpiantiSTATINO: TIntegerField
      FieldName = 'STATINO'
    end
    object qryInterventiImpiantiELEMENTO_IMPIANTO_ELETTRICO: TIntegerField
      FieldName = 'ELEMENTO_IMPIANTO_ELETTRICO'
    end
    object qryInterventiImpiantiANOMALIA: TBlobField
      FieldName = 'ANOMALIA'
    end
    object qryInterventiImpiantiDATA_CONTROLLO: TDateField
      FieldName = 'DATA_CONTROLLO'
    end
    object qryInterventiImpiantiTIPO: TWideStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object qryInterventiImpiantiDATA_CONSEGNA: TDateField
      FieldName = 'DATA_CONSEGNA'
    end
    object qryInterventiImpiantiDESCRIZIONE_ALTERNATIVA: TWideStringField
      FieldName = 'DESCRIZIONE_ALTERNATIVA'
      Size = 255
    end
    object qryInterventiImpiantiDATA_CONTROLLO_NEGATO: TDateField
      FieldName = 'DATA_CONTROLLO_NEGATO'
    end
    object qryInterventiImpiantiANOMALIAONDOWNLOAD: TWideStringField
      FieldName = 'ANOMALIAONDOWNLOAD'
      Size = 255
    end
    object qryInterventiImpiantiANOMALIARISOLTA: TWideStringField
      FieldName = 'ANOMALIARISOLTA'
      FixedChar = True
      Size = 1
    end
    object qryInterventiImpiantiCONTROLLATO: TWideStringField
      FieldName = 'CONTROLLATO'
      FixedChar = True
      Size = 1
    end
    object qryInterventiImpiantiDATACONTROLLO: TDateField
      FieldName = 'DATACONTROLLO'
    end
    object qryInterventiImpiantiORARIOCONTROLLO: TWideStringField
      FieldName = 'ORARIOCONTROLLO'
      Size = 255
    end
    object qryInterventiImpiantiTIPO_INTERVENTO: TWideStringField
      FieldName = 'TIPO_INTERVENTO'
      Size = 255
    end
    object qryInterventiImpiantiTECNICOCONTROLLO: TIntegerField
      FieldName = 'TECNICOCONTROLLO'
    end
    object qryInterventiImpiantiCHIAVE_1: TIntegerField
      FieldName = 'CHIAVE_1'
      ReadOnly = True
      Required = True
    end
    object qryInterventiImpiantiIMPIANTO: TIntegerField
      FieldName = 'IMPIANTO'
      ReadOnly = True
    end
    object qryInterventiImpiantiPROGRESSIVO: TIntegerField
      FieldName = 'PROGRESSIVO'
      ReadOnly = True
    end
    object qryInterventiImpiantiTIPO_1: TIntegerField
      FieldName = 'TIPO_1'
      ReadOnly = True
    end
    object qryInterventiImpiantiMARCA: TIntegerField
      FieldName = 'MARCA'
      ReadOnly = True
    end
    object qryInterventiImpiantiMODELLO: TWideStringField
      FieldName = 'MODELLO'
      ReadOnly = True
      Size = 255
    end
    object qryInterventiImpiantiUBICAZIONE: TBlobField
      FieldName = 'UBICAZIONE'
      ReadOnly = True
    end
    object qryInterventiImpiantiRINNOVATO_DA: TIntegerField
      FieldName = 'RINNOVATO_DA'
      ReadOnly = True
    end
    object qryInterventiImpiantiANOMALIA_APPROVATA: TWideStringField
      FieldName = 'ANOMALIA_APPROVATA'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryInterventiImpiantiANOMALIA_1: TBlobField
      FieldName = 'ANOMALIA_1'
      ReadOnly = True
    end
    object qryInterventiImpiantiSTATO: TWideStringField
      FieldName = 'STATO'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryInterventiImpiantiPREC_ANOMALIA: TBlobField
      FieldName = 'PREC_ANOMALIA'
      ReadOnly = True
    end
    object qryInterventiImpiantiNOTE_TECNICO: TBlobField
      FieldName = 'NOTE_TECNICO'
      ReadOnly = True
    end
    object qryInterventiImpiantiID_NFC: TWideStringField
      FieldName = 'ID_NFC'
      ReadOnly = True
      Size = 100
    end
  end
  object dsInterventiImpianti: TUniDataSource
    DataSet = qryInterventiImpianti
    Left = 184
    Top = 672
  end
  object qryInterventiIdranti: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO INTERVENTI_IDRANTI'
      
        '  (ANOMALIAONDOWNLOAD, ANOMALIARISOLTA, CONSEGNATO, CONTROLLATO,' +
        ' DATACONTROLLO, DATAPRESSATURA, DATARITIRO, NOTE_TECNICO, ORARIO' +
        'CONTROLLO, ORARIORITIRO, PRESSATURAEFFETTUATA, RITIRATO, TECNICO' +
        'CONTROLLO, TECNICOPRESSATURA, TECNICORITIRO)'
      'VALUES'
      
        '  (:ANOMALIAONDOWNLOAD, :ANOMALIARISOLTA, :CONSEGNATO, :CONTROLL' +
        'ATO, :DATACONTROLLO, :DATAPRESSATURA, :DATARITIRO, :NOTE_TECNICO' +
        ', :ORARIOCONTROLLO, :ORARIORITIRO, :PRESSATURAEFFETTUATA, :RITIR' +
        'ATO, :TECNICOCONTROLLO, :TECNICOPRESSATURA, :TECNICORITIRO)')
    SQLDelete.Strings = (
      'DELETE FROM INTERVENTI_IDRANTI'
      'WHERE'
      '  CHIAVE = :Old_CHIAVE')
    SQLUpdate.Strings = (
      'UPDATE INTERVENTI_IDRANTI'
      'SET'
      
        '  ANOMALIAONDOWNLOAD = :ANOMALIAONDOWNLOAD, ANOMALIARISOLTA = :A' +
        'NOMALIARISOLTA, CONSEGNATO = :CONSEGNATO, CONTROLLATO = :CONTROL' +
        'LATO, DATACONTROLLO = :DATACONTROLLO, DATAPRESSATURA = :DATAPRES' +
        'SATURA, DATARITIRO = :DATARITIRO, NOTE_TECNICO = :NOTE_TECNICO, ' +
        'ORARIOCONTROLLO = :ORARIOCONTROLLO, ORARIORITIRO = :ORARIORITIRO' +
        ', PRESSATURAEFFETTUATA = :PRESSATURAEFFETTUATA, RITIRATO = :RITI' +
        'RATO, TECNICOCONTROLLO = :TECNICOCONTROLLO, TECNICOPRESSATURA = ' +
        ':TECNICOPRESSATURA, TECNICORITIRO = :TECNICORITIRO'
      'WHERE'
      '  CHIAVE = :Old_CHIAVE')
    SQLLock.Strings = (
      'SELECT NULL FROM INTERVENTI_IDRANTI'
      'WHERE'
      'CHIAVE = :Old_CHIAVE'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT ANOMALIAONDOWNLOAD, ANOMALIARISOLTA, CONSEGNATO, CONTROLL' +
        'ATO, DATACONTROLLO, DATAPRESSATURA, DATARITIRO, NOTE_TECNICO, OR' +
        'ARIOCONTROLLO, ORARIORITIRO, PRESSATURAEFFETTUATA, RITIRATO, TEC' +
        'NICOCONTROLLO, TECNICOPRESSATURA, TECNICORITIRO FROM INTERVENTI_' +
        'IDRANTI'
      'WHERE'
      '  CHIAVE = :CHIAVE')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM INTERVENTI_IDRANTI'
      ''
      ') q')
    DataTypeMap = <
      item
        FieldName = 'ANOMALIA'
        FieldType = ftWideString
        FieldLength = 300
      end
      item
        FieldName = 'NOTE_TECNICO'
        FieldType = ftWideString
        FieldLength = 300
      end
      item
        FieldName = 'UBICAZIONE'
        FieldType = ftWideString
        FieldLength = 300
      end>
    Connection = JanuaUniConnection1
    SQL.Strings = (
      'select  ID.*, B.*, '
      
        '        IC.UBICAZIONE AS UBICAZIONE_IDRANTE, IC.DESCRIZIONE AS D' +
        'ESCRIZIONE_IDRANTE, IC.prova_dinamica, IC.ubicazione_attacco_mot' +
        'opompA'
      
        'from INTERVENTI_IDRANTI ID JOIN BOCCHELLI B ON B.chiave = ID.boc' +
        'chello'
      
        '     JOIN TIPO_BOCCHELLI TB ON TB.chiave = coalesce(B.tipo_bocch' +
        'ello, 0)'
      
        '     JOIN TIPO_LANCIA TL ON TL.chiave = coalesce( B.tipo_lancia ' +
        ', 0)'
      '     JOIN IDRANTI_CLIENTI IC ON IC.chiave = B.idrante'
      'WHERE STATINO = :STATINO'
      'ORDER BY ID_BOCCHELLO')
    MasterSource = dsStatiniIdranti
    MasterFields = 'STATINO'
    DetailFields = 'STATINO'
    Left = 448
    Top = 600
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'STATINO'
        Value = nil
      end>
    object qryInterventiIdrantiID_BOCCHELLO: TIntegerField
      FieldName = 'ID_BOCCHELLO'
    end
    object qryInterventiIdrantiUBICAZIONE: TWideStringField
      FieldName = 'UBICAZIONE'
      Size = 300
    end
    object qryInterventiIdrantiDES_BOCCHELLO: TWideStringField
      FieldName = 'DES_BOCCHELLO'
      ReadOnly = True
      Size = 255
    end
    object qryInterventiIdrantiTIPO_LANCIA: TWideStringField
      FieldName = 'TIPO_LANCIA'
      ReadOnly = True
      Size = 255
    end
    object qryInterventiIdrantiUBICAZIONE_IDRANTE: TBlobField
      FieldName = 'UBICAZIONE_IDRANTE'
      ReadOnly = True
    end
    object qryInterventiIdrantiDESCRIZIONE_IDRANTE: TWideStringField
      FieldName = 'DESCRIZIONE_IDRANTE'
      ReadOnly = True
      Size = 255
    end
    object qryInterventiIdrantiPROVA_DINAMICA: TIntegerField
      FieldName = 'PROVA_DINAMICA'
      ReadOnly = True
    end
    object qryInterventiIdrantiTIPO_ATTACCO_MOTOPOMPA: TWideStringField
      FieldName = 'TIPO_ATTACCO_MOTOPOMPA'
      ReadOnly = True
      Size = 255
    end
    object qryInterventiIdrantiTIPO: TWideStringField
      FieldName = 'TIPO'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryInterventiIdrantiDESCRIZIONE_ALTERNATIVA: TWideStringField
      FieldName = 'DESCRIZIONE_ALTERNATIVA'
      ReadOnly = True
      Size = 255
    end
    object qryInterventiIdrantiRESET_DATA_COLLAUDO: TWideStringField
      FieldName = 'RESET_DATA_COLLAUDO'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryInterventiIdrantiANOMALIA: TWideStringField
      FieldName = 'ANOMALIA'
      ReadOnly = True
      Size = 300
    end
    object qryInterventiIdrantiDATA_CONTROLLO: TDateField
      FieldName = 'DATA_CONTROLLO'
      ReadOnly = True
    end
    object qryInterventiIdrantiDATA_RITIRO: TDateField
      FieldName = 'DATA_RITIRO'
      ReadOnly = True
    end
    object qryInterventiIdrantiDATA_SMALTIMENTO: TDateField
      FieldName = 'DATA_SMALTIMENTO'
      ReadOnly = True
    end
    object qryInterventiIdrantiDATA_RESTITUZIONE: TDateField
      FieldName = 'DATA_RESTITUZIONE'
      ReadOnly = True
    end
    object qryInterventiIdrantiDATA_CONSEGNA: TDateField
      FieldName = 'DATA_CONSEGNA'
      ReadOnly = True
    end
    object qryInterventiIdrantiDATA_PRESSATURA: TDateField
      FieldName = 'DATA_PRESSATURA'
      ReadOnly = True
    end
    object qryInterventiIdrantiDATA_CONTROLLO_NEGATO: TDateField
      FieldName = 'DATA_CONTROLLO_NEGATO'
      ReadOnly = True
    end
    object qryInterventiIdrantiIDRANTE: TIntegerField
      FieldName = 'IDRANTE'
    end
    object qryInterventiIdrantiTIPO_BOCCHELLO: TIntegerField
      FieldName = 'TIPO_BOCCHELLO'
    end
    object qryInterventiIdrantiTIPO_LANCIA_1: TIntegerField
      FieldName = 'TIPO_LANCIA_1'
    end
    object qryInterventiIdrantiLUNGHEZZA_MANICHETTA: TIntegerField
      FieldName = 'LUNGHEZZA_MANICHETTA'
    end
    object qryInterventiIdrantiMESE_STARTUP: TSmallintField
      FieldName = 'MESE_STARTUP'
    end
    object qryInterventiIdrantiANNO_STARTUP: TSmallintField
      FieldName = 'ANNO_STARTUP'
    end
    object qryInterventiIdrantiANNO_MANICHETTA: TSmallintField
      FieldName = 'ANNO_MANICHETTA'
    end
    object qryInterventiIdrantiRINNOVATO_DA: TIntegerField
      FieldName = 'RINNOVATO_DA'
    end
    object qryInterventiIdrantiANOMALIA_APPROVATA: TWideStringField
      FieldName = 'ANOMALIA_APPROVATA'
      FixedChar = True
      Size = 1
    end
    object qryInterventiIdrantiANOMALIA_1: TWideMemoField
      FieldName = 'ANOMALIA_1'
      BlobType = ftWideMemo
    end
    object qryInterventiIdrantiSTATO: TWideStringField
      FieldName = 'STATO'
      FixedChar = True
      Size = 1
    end
    object qryInterventiIdrantiPREC_ANOMALIA: TBlobField
      FieldName = 'PREC_ANOMALIA'
    end
    object qryInterventiIdrantiNOTE_TECNICO: TWideStringField
      FieldName = 'NOTE_TECNICO'
      Size = 300
    end
    object qryInterventiIdrantiMESE_PRESSATURA: TSmallintField
      FieldName = 'MESE_PRESSATURA'
    end
    object qryInterventiIdrantiANNO_PRESSATURA: TSmallintField
      FieldName = 'ANNO_PRESSATURA'
    end
    object qryInterventiIdrantiBOCCHELLO: TIntegerField
      FieldName = 'BOCCHELLO'
      ReadOnly = True
    end
    object qryInterventiIdrantiCHIAVE: TIntegerField
      FieldName = 'CHIAVE'
      ReadOnly = True
      Required = True
    end
    object qryInterventiIdrantiSTATINO: TIntegerField
      FieldName = 'STATINO'
      ReadOnly = True
    end
    object qryInterventiIdrantiANOMALIAONDOWNLOAD: TWideStringField
      FieldName = 'ANOMALIAONDOWNLOAD'
      Size = 255
    end
    object qryInterventiIdrantiANOMALIARISOLTA: TWideStringField
      FieldName = 'ANOMALIARISOLTA'
      FixedChar = True
      Size = 1
    end
    object qryInterventiIdrantiCONSEGNATO: TWideStringField
      FieldName = 'CONSEGNATO'
      FixedChar = True
      Size = 1
    end
    object qryInterventiIdrantiCONTROLLATO: TWideStringField
      FieldName = 'CONTROLLATO'
      FixedChar = True
      Size = 1
    end
    object qryInterventiIdrantiDATACONTROLLO: TDateField
      FieldName = 'DATACONTROLLO'
    end
    object qryInterventiIdrantiDATAPRESSATURA: TDateField
      FieldName = 'DATAPRESSATURA'
    end
    object qryInterventiIdrantiDATARITIRO: TDateField
      FieldName = 'DATARITIRO'
    end
    object qryInterventiIdrantiORARIOCONTROLLO: TWideStringField
      FieldName = 'ORARIOCONTROLLO'
      Size = 255
    end
    object qryInterventiIdrantiORARIORITIRO: TWideStringField
      FieldName = 'ORARIORITIRO'
      Size = 255
    end
    object qryInterventiIdrantiPRESSATURAEFFETTUATA: TWideStringField
      FieldName = 'PRESSATURAEFFETTUATA'
      FixedChar = True
      Size = 1
    end
    object qryInterventiIdrantiRITIRATO: TWideStringField
      FieldName = 'RITIRATO'
      FixedChar = True
      Size = 1
    end
    object qryInterventiIdrantiTECNICOCONTROLLO: TIntegerField
      FieldName = 'TECNICOCONTROLLO'
    end
    object qryInterventiIdrantiTECNICOPRESSATURA: TIntegerField
      FieldName = 'TECNICOPRESSATURA'
    end
    object qryInterventiIdrantiTECNICORITIRO: TIntegerField
      FieldName = 'TECNICORITIRO'
    end
    object qryInterventiIdrantiTIPO_INTERVENTO: TWideStringField
      FieldName = 'TIPO_INTERVENTO'
      Size = 255
    end
    object qryInterventiIdrantiID_NFC: TWideStringField
      FieldName = 'ID_NFC'
      ReadOnly = True
      Size = 100
    end
    object qryInterventiIdrantiUBICAZIONE_ATTACCO_MOTOPOMPA: TWideStringField
      FieldName = 'UBICAZIONE_ATTACCO_MOTOPOMPA'
      ReadOnly = True
      Size = 255
    end
  end
  object dsInterventiIdranti: TUniDataSource
    DataSet = qryInterventiIdranti
    Left = 448
    Top = 672
  end
  object qryInterventiFumi: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO INTERVENTI_ATTREZZATURE'
      
        '  (ANOMALIAONDOWNLOAD, ANOMALIARISOLTA, CONTROLLATO, DATACONTROL' +
        'LO, NONCONTROLLATO, ORARIOCONTROLLO, TIPO_INTERVENTO, TIPO_VISIT' +
        'A, TECNICOCONTROLLO, CONSEGNATO)'
      'VALUES'
      
        '  (:ANOMALIAONDOWNLOAD, :ANOMALIARISOLTA, :CONTROLLATO, :DATACON' +
        'TROLLO, :NONCONTROLLATO, :ORARIOCONTROLLO, :TIPO_INTERVENTO, :TI' +
        'PO_VISITA, :TECNICOCONTROLLO, :CONSEGNATO)')
    SQLDelete.Strings = (
      'DELETE FROM INTERVENTI_ATTREZZATURE'
      'WHERE'
      '  CHIAVE = :Old_CHIAVE')
    SQLUpdate.Strings = (
      'UPDATE INTERVENTI_ATTREZZATURE'
      'SET'
      
        '  ANOMALIAONDOWNLOAD = :ANOMALIAONDOWNLOAD, ANOMALIARISOLTA = :A' +
        'NOMALIARISOLTA, CONTROLLATO = :CONTROLLATO, DATACONTROLLO = :DAT' +
        'ACONTROLLO, NONCONTROLLATO = :NONCONTROLLATO, ORARIOCONTROLLO = ' +
        ':ORARIOCONTROLLO, TIPO_INTERVENTO = :TIPO_INTERVENTO, TIPO_VISIT' +
        'A = :TIPO_VISITA, TECNICOCONTROLLO = :TECNICOCONTROLLO, CONSEGNA' +
        'TO = :CONSEGNATO'
      'WHERE'
      '  CHIAVE = :Old_CHIAVE')
    SQLLock.Strings = (
      'SELECT NULL FROM INTERVENTI_ATTREZZATURE'
      'WHERE'
      'CHIAVE = :Old_CHIAVE'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT ANOMALIAONDOWNLOAD, ANOMALIARISOLTA, CONTROLLATO, DATACON' +
        'TROLLO, NONCONTROLLATO, ORARIOCONTROLLO, TIPO_INTERVENTO, TIPO_V' +
        'ISITA, TECNICOCONTROLLO, CONSEGNATO FROM INTERVENTI_ATTREZZATURE'
      'WHERE'
      '  CHIAVE = :CHIAVE')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM INTERVENTI_ATTREZZATURE'
      ''
      ') q')
    Connection = JanuaUniConnection1
    SQL.Strings = (
      'select IAT.*,    FC.*'
      
        'FROM interventi_attrezzature IAT JOIN FUMO_CLIENTI FC ON FC.chia' +
        've = IAT.attrezzatura'
      'WHERE IAT.tipo_attrezzatura = '#39'F'#39
      'AND IAT.statino = :STATINO'
      'ORDER BY FC.UBICAZIONE')
    MasterSource = dsStatiniFumo
    MasterFields = 'STATINO'
    DetailFields = 'STATINO'
    Left = 832
    Top = 600
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'STATINO'
        Value = nil
      end>
    object qryInterventiFumiCHIAVE: TIntegerField
      FieldName = 'CHIAVE'
      Required = True
    end
    object qryInterventiFumiSTATINO: TIntegerField
      FieldName = 'STATINO'
    end
    object qryInterventiFumiATTREZZATURA: TIntegerField
      FieldName = 'ATTREZZATURA'
    end
    object qryInterventiFumiTIPO_ATTREZZATURA: TWideStringField
      FieldName = 'TIPO_ATTREZZATURA'
      FixedChar = True
      Size = 1
    end
    object qryInterventiFumiANOMALIA: TBlobField
      FieldName = 'ANOMALIA'
    end
    object qryInterventiFumiTIPO: TWideStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object qryInterventiFumiDATA_CONTROLLO: TDateField
      FieldName = 'DATA_CONTROLLO'
    end
    object qryInterventiFumiDATA_CONSEGNA: TDateField
      FieldName = 'DATA_CONSEGNA'
    end
    object qryInterventiFumiANOMALIA_ON_DOWNLOAD: TWideStringField
      FieldName = 'ANOMALIA_ON_DOWNLOAD'
      Size = 256
    end
    object qryInterventiFumiTECNICO_CONTROLLO: TIntegerField
      FieldName = 'TECNICO_CONTROLLO'
    end
    object qryInterventiFumiANOMALIAONDOWNLOAD: TWideStringField
      FieldName = 'ANOMALIAONDOWNLOAD'
      Size = 255
    end
    object qryInterventiFumiANOMALIARISOLTA: TWideStringField
      FieldName = 'ANOMALIARISOLTA'
      FixedChar = True
      Size = 1
    end
    object qryInterventiFumiCONTROLLATO: TWideStringField
      FieldName = 'CONTROLLATO'
      FixedChar = True
      Size = 1
    end
    object qryInterventiFumiDATACONTROLLO: TDateField
      FieldName = 'DATACONTROLLO'
    end
    object qryInterventiFumiNONCONTROLLATO: TWideStringField
      FieldName = 'NONCONTROLLATO'
      FixedChar = True
      Size = 1
    end
    object qryInterventiFumiORARIOCONTROLLO: TWideStringField
      FieldName = 'ORARIOCONTROLLO'
      Size = 255
    end
    object qryInterventiFumiTIPO_INTERVENTO: TWideStringField
      FieldName = 'TIPO_INTERVENTO'
      Size = 255
    end
    object qryInterventiFumiTIPO_VISITA: TWideStringField
      FieldName = 'TIPO_VISITA'
      Size = 255
    end
    object qryInterventiFumiTECNICOCONTROLLO: TIntegerField
      FieldName = 'TECNICOCONTROLLO'
    end
    object qryInterventiFumiCONSEGNATO: TWideStringField
      FieldName = 'CONSEGNATO'
      FixedChar = True
      Size = 1
    end
    object qryInterventiFumiPERIODI_NON_ORDINARI: TWideStringField
      FieldName = 'PERIODI_NON_ORDINARI'
      FixedChar = True
      Size = 1
    end
    object qryInterventiFumiDATA_CONTROLLO_NEGATO: TDateField
      FieldName = 'DATA_CONTROLLO_NEGATO'
    end
    object qryInterventiFumiCHIAVE_1: TIntegerField
      FieldName = 'CHIAVE_1'
      ReadOnly = True
      Required = True
    end
    object qryInterventiFumiCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      ReadOnly = True
    end
    object qryInterventiFumiFILIALE: TIntegerField
      FieldName = 'FILIALE'
      ReadOnly = True
    end
    object qryInterventiFumiMARCA_CENTRALE: TIntegerField
      FieldName = 'MARCA_CENTRALE'
      ReadOnly = True
    end
    object qryInterventiFumiTIPO_CENTRALE: TIntegerField
      FieldName = 'TIPO_CENTRALE'
      ReadOnly = True
    end
    object qryInterventiFumiQUANTITA_BATTERIE: TIntegerField
      FieldName = 'QUANTITA_BATTERIE'
      ReadOnly = True
    end
    object qryInterventiFumiTIPO_BATTERIE: TIntegerField
      FieldName = 'TIPO_BATTERIE'
      ReadOnly = True
    end
    object qryInterventiFumiQUANTITA_RILEVATORI: TIntegerField
      FieldName = 'QUANTITA_RILEVATORI'
      ReadOnly = True
    end
    object qryInterventiFumiTIPO_RILEVATORI: TIntegerField
      FieldName = 'TIPO_RILEVATORI'
      ReadOnly = True
    end
    object qryInterventiFumiQUANTITA_RIL_LINEARI: TIntegerField
      FieldName = 'QUANTITA_RIL_LINEARI'
      ReadOnly = True
    end
    object qryInterventiFumiTIPO_RIL_LINEARI: TIntegerField
      FieldName = 'TIPO_RIL_LINEARI'
      ReadOnly = True
    end
    object qryInterventiFumiMARCA_RIL_LINEARI: TIntegerField
      FieldName = 'MARCA_RIL_LINEARI'
      ReadOnly = True
    end
    object qryInterventiFumiQUANTITA_PULSANTI: TIntegerField
      FieldName = 'QUANTITA_PULSANTI'
      ReadOnly = True
    end
    object qryInterventiFumiQUANTITA_PANNELLI_OTT_ACUST: TIntegerField
      FieldName = 'QUANTITA_PANNELLI_OTT_ACUST'
      ReadOnly = True
    end
    object qryInterventiFumiUBICAZIONE: TBlobField
      FieldName = 'UBICAZIONE'
      ReadOnly = True
    end
    object qryInterventiFumiSTATO: TWideStringField
      FieldName = 'STATO'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryInterventiFumiRINNOVATO_DA: TIntegerField
      FieldName = 'RINNOVATO_DA'
      ReadOnly = True
    end
    object qryInterventiFumiANOMALIA_APPROVATA: TWideStringField
      FieldName = 'ANOMALIA_APPROVATA'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryInterventiFumiANOMALIA_1: TBlobField
      FieldName = 'ANOMALIA_1'
      ReadOnly = True
    end
    object qryInterventiFumiDESCRIZIONE: TWideStringField
      FieldName = 'DESCRIZIONE'
      ReadOnly = True
      Size = 255
    end
    object qryInterventiFumiPREC_ANOMALIA: TBlobField
      FieldName = 'PREC_ANOMALIA'
      ReadOnly = True
    end
    object qryInterventiFumiNOTE_TECNICO: TBlobField
      FieldName = 'NOTE_TECNICO'
      ReadOnly = True
    end
    object qryInterventiFumiID_NFC: TWideStringField
      FieldName = 'ID_NFC'
      ReadOnly = True
      Size = 100
    end
    object qryInterventiFumiJGUID: TBytesField
      FieldName = 'JGUID'
      ReadOnly = True
    end
  end
  object dsInterventiFumi: TUniDataSource
    DataSet = qryInterventiFumi
    Left = 832
    Top = 672
  end
  object qElenco: TUniQuery
    Connection = JanuaUniConnection1
    SQL.Strings = (
      'select V.*, '
      'CHIAVE AS STATINO '
      'from  '
      'VISTA_RAPPORTINI_STAMPA V'
      'where '
      '(chiave = :chiave or :chiave = 0)'
      'AND'
      '(CONTRATTO LIKE :CONTRATTO)'
      '--AND'
      '--(AMMINISTRATORE LIKE :AMMINISTRATORE OR :AMMINISTRATORE = '#39#39')'
      'order by Chiave DEsc')
    Left = 1016
    Top = 208
    ParamData = <
      item
        DataType = ftInteger
        Name = 'chiave'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = 'CONTRATTO'
        Value = '%CITY%'
      end>
    object qElencoCHIAVE: TIntegerField
      FieldName = 'CHIAVE'
      Required = True
    end
    object qElencoAMMINISTRATORE: TWideStringField
      FieldName = 'AMMINISTRATORE'
      Size = 255
    end
    object qElencoCONTRATTO: TWideStringField
      FieldName = 'CONTRATTO'
      Size = 255
    end
    object qElencoLOCAZIONE: TWideStringField
      FieldName = 'LOCAZIONE'
      Size = 100
    end
    object qElencoNOME_TECNICO: TWideStringField
      FieldName = 'NOME_TECNICO'
      Size = 255
    end
    object qElencoINDIRIZZO_FILIALE: TWideStringField
      FieldName = 'INDIRIZZO_FILIALE'
      Size = 533
    end
    object qElencoCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object qElencoFILIALE: TIntegerField
      FieldName = 'FILIALE'
    end
    object qElencoTITOLO: TWideStringField
      FieldName = 'TITOLO'
      Size = 10
    end
    object qElencoRAGIONE_SOCIALE: TWideStringField
      FieldName = 'RAGIONE_SOCIALE'
      Size = 255
    end
    object qElencoINDIRIZZO: TWideStringField
      FieldName = 'INDIRIZZO'
      Size = 255
    end
    object qElencoCOMUNE: TWideStringField
      FieldName = 'COMUNE'
      Size = 255
    end
    object qElencoPROVINCIA: TWideStringField
      FieldName = 'PROVINCIA'
      FixedChar = True
      Size = 2
    end
    object qElencoCAP: TWideStringField
      FieldName = 'CAP'
      Size = 10
    end
    object qElencoTELEFONO: TWideStringField
      FieldName = 'TELEFONO'
      Size = 255
    end
    object qElencoCELLULARE: TWideStringField
      FieldName = 'CELLULARE'
      Size = 255
    end
    object qElencoNOTE: TBlobField
      FieldName = 'NOTE'
    end
    object qElencoORARIO_APERTURA_DAL1: TTimeField
      FieldName = 'ORARIO_APERTURA_DAL1'
    end
    object qElencoORARIO_APERTURA_DAL2: TTimeField
      FieldName = 'ORARIO_APERTURA_DAL2'
    end
    object qElencoORARIO_APERTURA_AL1: TTimeField
      FieldName = 'ORARIO_APERTURA_AL1'
    end
    object qElencoORARIO_APERTURA_AL2: TTimeField
      FieldName = 'ORARIO_APERTURA_AL2'
    end
    object qElencoCHIUSURA: TWideStringField
      FieldName = 'CHIUSURA'
      Size = 255
    end
    object qElencoFATTURA: TIntegerField
      FieldName = 'FATTURA'
    end
    object qElencoDATA_INTERVENTO: TDateField
      FieldName = 'DATA_INTERVENTO'
    end
    object qElencoGENERAZIONE_AUTOMATICA: TIntegerField
      FieldName = 'GENERAZIONE_AUTOMATICA'
    end
    object qElencoTECNICO_INTERVENTO: TIntegerField
      FieldName = 'TECNICO_INTERVENTO'
    end
    object qElencoSCANSIONE: TBlobField
      FieldName = 'SCANSIONE'
    end
    object qElencoREGISTRO: TBlobField
      FieldName = 'REGISTRO'
    end
    object qElencoNOTE_PER_IL_TECNICO: TBlobField
      FieldName = 'NOTE_PER_IL_TECNICO'
    end
    object qElencoSOSPESO: TWideStringField
      FieldName = 'SOSPESO'
      FixedChar = True
      Size = 1
    end
    object qElencoDA_ESPORTARE_SUL_WEB: TWideStringField
      FieldName = 'DA_ESPORTARE_SUL_WEB'
      FixedChar = True
      Size = 1
    end
    object qElencoRESPONSABILE: TIntegerField
      FieldName = 'RESPONSABILE'
    end
    object qElencoESPORTATO_SU_MOBILE: TWideStringField
      FieldName = 'ESPORTATO_SU_MOBILE'
      FixedChar = True
      Size = 1
    end
    object qElencoNOTE_DAL_TECNICO: TBlobField
      FieldName = 'NOTE_DAL_TECNICO'
    end
    object qElencoJSON_DA_MOBILE: TBlobField
      FieldName = 'JSON_DA_MOBILE'
    end
    object qElencoPDF_STATINO: TBlobField
      FieldName = 'PDF_STATINO'
    end
    object qElencoREGISTRO_IS_PDF: TWideStringField
      FieldName = 'REGISTRO_IS_PDF'
      FixedChar = True
      Size = 1
    end
    object qElencoVERBALE_PROVA_DINAMICA: TBlobField
      FieldName = 'VERBALE_PROVA_DINAMICA'
    end
    object qElencoVERBALE_MANICHETTE: TBlobField
      FieldName = 'VERBALE_MANICHETTE'
    end
    object qElencoPREVENTIVO: TIntegerField
      FieldName = 'PREVENTIVO'
    end
    object qElencoIGNORA_EVIDENZIAZIONE: TWideStringField
      FieldName = 'IGNORA_EVIDENZIAZIONE'
      FixedChar = True
      Size = 1
    end
    object qElencoANNULLATO_DA_TABLET: TWideStringField
      FieldName = 'ANNULLATO_DA_TABLET'
      FixedChar = True
      Size = 1
    end
    object qElencoMOBILEWARN_NUOVA_ATTREZZATURA: TWideStringField
      FieldName = 'MOBILEWARN_NUOVA_ATTREZZATURA'
      FixedChar = True
      Size = 1
    end
    object qElencoMOBILEWARN_ORDINARIA_RITIRATA: TWideStringField
      FieldName = 'MOBILEWARN_ORDINARIA_RITIRATA'
      FixedChar = True
      Size = 1
    end
    object qElencoMOBILEWARN_N_ORDIN_CONTROLLATA: TWideStringField
      FieldName = 'MOBILEWARN_N_ORDIN_CONTROLLATA'
      FixedChar = True
      Size = 1
    end
    object qElencoMOBILEWARN_SMALTIMENTO: TWideStringField
      FieldName = 'MOBILEWARN_SMALTIMENTO'
      FixedChar = True
      Size = 1
    end
    object qElencoSTATO_LAVORAZIONE: TWideStringField
      FieldName = 'STATO_LAVORAZIONE'
      FixedChar = True
      Size = 1
    end
    object qElencoDATA_CHIUSURA_DA_SERVER: TDateField
      FieldName = 'DATA_CHIUSURA_DA_SERVER'
    end
    object qElencoCHIUSURA_EXT: TWideStringField
      FieldName = 'CHIUSURA_EXT'
      Size = 50
    end
    object qElencoCHIUSURA_STATINO: TBlobField
      FieldName = 'CHIUSURA_STATINO'
    end
    object qElencoMOBILEWARN_NON_ESEGUITI: TWideStringField
      FieldName = 'MOBILEWARN_NON_ESEGUITI'
      FixedChar = True
      Size = 1
    end
    object qElencoPRESA_IN_CARICO: TWideStringField
      FieldName = 'PRESA_IN_CARICO'
      FixedChar = True
      Size = 1
    end
    object qElencoFORNITURA: TWideStringField
      FieldName = 'FORNITURA'
      FixedChar = True
      Size = 1
    end
    object qElencoAPPUNTAMENTO_DATA: TDateField
      FieldName = 'APPUNTAMENTO_DATA'
    end
    object qElencoAPPUNTAMENTO_ORA: TTimeField
      FieldName = 'APPUNTAMENTO_ORA'
    end
    object qElencoSTATO: TSmallintField
      FieldName = 'STATO'
    end
    object qElencoJGUID: TBytesField
      FieldName = 'JGUID'
    end
    object qElencoGCAL: TWideStringField
      FieldName = 'GCAL'
      FixedChar = True
      Size = 1
    end
    object qElencoWANUMBER: TWideStringField
      FieldName = 'WANUMBER'
    end
    object qElencoWA: TWideStringField
      FieldName = 'WA'
      FixedChar = True
      Size = 1
    end
    object qElencoSTATO_IMMAGINE: TBlobField
      FieldName = 'STATO_IMMAGINE'
    end
    object qElencoWA_ID: TWideStringField
      FieldName = 'WA_ID'
      Size = 128
    end
    object qElencoWA_IMAGE: TBlobField
      FieldName = 'WA_IMAGE'
    end
    object qElencoWA_STATE: TSmallintField
      FieldName = 'WA_STATE'
    end
    object qElencoMESE_INTERVENTO: TSmallintField
      FieldName = 'MESE_INTERVENTO'
    end
    object qElencoNOME_MESE: TWideStringField
      FieldName = 'NOME_MESE'
      Size = 19
    end
    object qElencoSTATINO: TIntegerField
      FieldName = 'STATINO'
    end
  end
  object qryStatiniNonCompilati: TUniQuery
    Connection = JanuaUniConnection1
    SQL.Strings = (
      'select * from statini where stato < 9'
      'order by RAGIONE_SOCIALE')
    Left = 568
    Top = 96
    object qryStatiniNonCompilatiCHIAVE: TIntegerField
      FieldName = 'CHIAVE'
      Required = True
    end
    object qryStatiniNonCompilatiCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object qryStatiniNonCompilatiFILIALE: TIntegerField
      FieldName = 'FILIALE'
    end
    object qryStatiniNonCompilatiTITOLO: TWideStringField
      FieldName = 'TITOLO'
      Size = 10
    end
    object qryStatiniNonCompilatiRAGIONE_SOCIALE: TWideStringField
      FieldName = 'RAGIONE_SOCIALE'
      Size = 255
    end
    object qryStatiniNonCompilatiINDIRIZZO: TWideStringField
      FieldName = 'INDIRIZZO'
      Size = 255
    end
    object qryStatiniNonCompilatiCOMUNE: TWideStringField
      FieldName = 'COMUNE'
      Size = 255
    end
    object qryStatiniNonCompilatiPROVINCIA: TWideStringField
      FieldName = 'PROVINCIA'
      FixedChar = True
      Size = 2
    end
    object qryStatiniNonCompilatiCAP: TWideStringField
      FieldName = 'CAP'
      Size = 10
    end
    object qryStatiniNonCompilatiTELEFONO: TWideStringField
      FieldName = 'TELEFONO'
      Size = 255
    end
    object qryStatiniNonCompilatiCELLULARE: TWideStringField
      FieldName = 'CELLULARE'
      Size = 255
    end
    object qryStatiniNonCompilatiNOTE: TBlobField
      FieldName = 'NOTE'
    end
    object qryStatiniNonCompilatiORARIO_APERTURA_DAL1: TTimeField
      FieldName = 'ORARIO_APERTURA_DAL1'
    end
    object qryStatiniNonCompilatiORARIO_APERTURA_DAL2: TTimeField
      FieldName = 'ORARIO_APERTURA_DAL2'
    end
    object qryStatiniNonCompilatiORARIO_APERTURA_AL1: TTimeField
      FieldName = 'ORARIO_APERTURA_AL1'
    end
    object qryStatiniNonCompilatiORARIO_APERTURA_AL2: TTimeField
      FieldName = 'ORARIO_APERTURA_AL2'
    end
    object qryStatiniNonCompilatiCHIUSURA: TWideStringField
      FieldName = 'CHIUSURA'
      Size = 255
    end
    object qryStatiniNonCompilatiFATTURA: TIntegerField
      FieldName = 'FATTURA'
    end
    object qryStatiniNonCompilatiDATA_INTERVENTO: TDateField
      FieldName = 'DATA_INTERVENTO'
    end
    object qryStatiniNonCompilatiGENERAZIONE_AUTOMATICA: TIntegerField
      FieldName = 'GENERAZIONE_AUTOMATICA'
    end
    object qryStatiniNonCompilatiTECNICO_INTERVENTO: TIntegerField
      FieldName = 'TECNICO_INTERVENTO'
    end
    object qryStatiniNonCompilatiSCANSIONE: TBlobField
      FieldName = 'SCANSIONE'
    end
    object qryStatiniNonCompilatiREGISTRO: TBlobField
      FieldName = 'REGISTRO'
    end
    object qryStatiniNonCompilatiNOTE_PER_IL_TECNICO: TBlobField
      FieldName = 'NOTE_PER_IL_TECNICO'
    end
    object qryStatiniNonCompilatiSOSPESO: TWideStringField
      FieldName = 'SOSPESO'
      FixedChar = True
      Size = 1
    end
    object qryStatiniNonCompilatiDA_ESPORTARE_SUL_WEB: TWideStringField
      FieldName = 'DA_ESPORTARE_SUL_WEB'
      FixedChar = True
      Size = 1
    end
    object qryStatiniNonCompilatiRESPONSABILE: TIntegerField
      FieldName = 'RESPONSABILE'
    end
    object qryStatiniNonCompilatiESPORTATO_SU_MOBILE: TWideStringField
      FieldName = 'ESPORTATO_SU_MOBILE'
      FixedChar = True
      Size = 1
    end
    object qryStatiniNonCompilatiNOTE_DAL_TECNICO: TBlobField
      FieldName = 'NOTE_DAL_TECNICO'
    end
    object qryStatiniNonCompilatiJSON_DA_MOBILE: TBlobField
      FieldName = 'JSON_DA_MOBILE'
    end
    object qryStatiniNonCompilatiPDF_STATINO: TBlobField
      FieldName = 'PDF_STATINO'
    end
    object qryStatiniNonCompilatiREGISTRO_IS_PDF: TWideStringField
      FieldName = 'REGISTRO_IS_PDF'
      FixedChar = True
      Size = 1
    end
    object qryStatiniNonCompilatiVERBALE_PROVA_DINAMICA: TBlobField
      FieldName = 'VERBALE_PROVA_DINAMICA'
    end
    object qryStatiniNonCompilatiVERBALE_MANICHETTE: TBlobField
      FieldName = 'VERBALE_MANICHETTE'
    end
    object qryStatiniNonCompilatiPREVENTIVO: TIntegerField
      FieldName = 'PREVENTIVO'
    end
    object qryStatiniNonCompilatiIGNORA_EVIDENZIAZIONE: TWideStringField
      FieldName = 'IGNORA_EVIDENZIAZIONE'
      FixedChar = True
      Size = 1
    end
    object qryStatiniNonCompilatiANNULLATO_DA_TABLET: TWideStringField
      FieldName = 'ANNULLATO_DA_TABLET'
      FixedChar = True
      Size = 1
    end
    object qryStatiniNonCompilatiMOBILEWARN_NUOVA_ATTREZZATURA: TWideStringField
      FieldName = 'MOBILEWARN_NUOVA_ATTREZZATURA'
      FixedChar = True
      Size = 1
    end
    object qryStatiniNonCompilatiMOBILEWARN_ORDINARIA_RITIRATA: TWideStringField
      FieldName = 'MOBILEWARN_ORDINARIA_RITIRATA'
      FixedChar = True
      Size = 1
    end
    object qryStatiniNonCompilatiMOBILEWARN_N_ORDIN_CONTROLLATA: TWideStringField
      FieldName = 'MOBILEWARN_N_ORDIN_CONTROLLATA'
      FixedChar = True
      Size = 1
    end
    object qryStatiniNonCompilatiMOBILEWARN_SMALTIMENTO: TWideStringField
      FieldName = 'MOBILEWARN_SMALTIMENTO'
      FixedChar = True
      Size = 1
    end
    object qryStatiniNonCompilatiSTATO_LAVORAZIONE: TWideStringField
      FieldName = 'STATO_LAVORAZIONE'
      FixedChar = True
      Size = 1
    end
    object qryStatiniNonCompilatiDATA_CHIUSURA_DA_SERVER: TDateField
      FieldName = 'DATA_CHIUSURA_DA_SERVER'
    end
    object qryStatiniNonCompilatiCHIUSURA_EXT: TWideStringField
      FieldName = 'CHIUSURA_EXT'
      Size = 50
    end
    object qryStatiniNonCompilatiCHIUSURA_STATINO: TBlobField
      FieldName = 'CHIUSURA_STATINO'
    end
    object qryStatiniNonCompilatiMOBILEWARN_NON_ESEGUITI: TWideStringField
      FieldName = 'MOBILEWARN_NON_ESEGUITI'
      FixedChar = True
      Size = 1
    end
    object qryStatiniNonCompilatiPRESA_IN_CARICO: TWideStringField
      FieldName = 'PRESA_IN_CARICO'
      FixedChar = True
      Size = 1
    end
    object qryStatiniNonCompilatiFORNITURA: TWideStringField
      FieldName = 'FORNITURA'
      FixedChar = True
      Size = 1
    end
    object qryStatiniNonCompilatiAPPUNTAMENTO_DATA: TDateField
      FieldName = 'APPUNTAMENTO_DATA'
    end
    object qryStatiniNonCompilatiAPPUNTAMENTO_ORA: TTimeField
      FieldName = 'APPUNTAMENTO_ORA'
    end
    object qryStatiniNonCompilatiSTATO: TSmallintField
      FieldName = 'STATO'
    end
    object qryStatiniNonCompilatiJGUID: TBytesField
      FieldName = 'JGUID'
    end
    object qryStatiniNonCompilatiGCAL: TWideStringField
      FieldName = 'GCAL'
      FixedChar = True
      Size = 1
    end
    object qryStatiniNonCompilatiWANUMBER: TWideStringField
      FieldName = 'WANUMBER'
    end
    object qryStatiniNonCompilatiWA: TWideStringField
      FieldName = 'WA'
      FixedChar = True
      Size = 1
    end
    object qryStatiniNonCompilatiSTATO_IMMAGINE: TBlobField
      FieldName = 'STATO_IMMAGINE'
    end
    object qryStatiniNonCompilatiWA_ID: TWideStringField
      FieldName = 'WA_ID'
      Size = 128
    end
    object qryStatiniNonCompilatiWA_IMAGE: TBlobField
      FieldName = 'WA_IMAGE'
    end
    object qryStatiniNonCompilatiWA_STATE: TSmallintField
      FieldName = 'WA_STATE'
    end
  end
end
