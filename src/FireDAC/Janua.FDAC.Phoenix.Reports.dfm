object dmFDACPhoenixReports: TdmFDACPhoenixReports
  Height = 445
  Width = 670
  object FDConnection1: TFDConnection
    Params.Strings = (
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=sait.pasolutions.ru'
      'Port=3050'
      'Database=/opt/firebird/db/phoenix.fdb'
      'DriverID=FB')
    LoginDialog = FDGUIxLoginDialog1
    Left = 64
    Top = 24
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 64
    Top = 96
  end
  object FDGUIxLoginDialog1: TFDGUIxLoginDialog
    Provider = 'Forms'
    VisibleItems.Strings = (
      'User_Name'
      'Password'
      'Database'
      'Server'
      'Port')
    Left = 152
    Top = 48
  end
  object fdMemEstintori: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'CHIAVE'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CLIENTE'
        DataType = ftInteger
      end
      item
        Name = 'FILIALE'
        DataType = ftInteger
      end
      item
        Name = 'DATA_STARTUP_REV'
        DataType = ftDate
      end
      item
        Name = 'TIPO_ESTINTORE'
        DataType = ftInteger
      end
      item
        Name = 'PROGRESSIVO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'MATRICOLA'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'ANNO_COSTRUZIONE'
        DataType = ftSmallint
      end
      item
        Name = 'DATA_STARTUP_COL'
        DataType = ftDate
      end
      item
        Name = 'STATO'
        Attributes = [faRequired, faFixed]
        DataType = ftFixedChar
        Size = 1
      end
      item
        Name = 'RINNOVATO_DA'
        DataType = ftInteger
      end
      item
        Name = 'ANOMALIA_APPROVATA'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 1
      end
      item
        Name = 'ANOMALIA'
        DataType = ftMemo
      end
      item
        Name = 'UBICAZIONE'
        DataType = ftMemo
      end
      item
        Name = 'PREC_ANOMALIA'
        DataType = ftMemo
      end
      item
        Name = 'NOTE_TECNICO'
        DataType = ftMemo
      end
      item
        Name = 'ID_NFC'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'MARCA'
        DataType = ftInteger
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 1073741823
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 560
    Top = 56
    Content = {
      4144425310000000A2080000FF00010001FF02FF0304001C000000660064004D
      0065006D0045007300740069006E0074006F007200690005001C000000660064
      004D0065006D0045007300740069006E0074006F007200690006000000000007
      0000080032000000090000FF0AFF0B04000C0000004300480049004100560045
      0005000C0000004300480049004100560045000C00010000000E000D000F0001
      10000111000112000113000114000C000000430048004900410056004500FEFF
      0B04000E00000043004C00490045004E005400450005000E00000043004C0049
      0045004E00540045000C00020000000E000D000F000115000110000116000111
      000112000114000E00000043004C00490045004E0054004500FEFF0B04000E00
      0000460049004C00490041004C00450005000E000000460049004C0049004100
      4C0045000C00030000000E000D000F0001150001100001160001110001120001
      14000E000000460049004C00490041004C004500FEFF0B040020000000440041
      00540041005F0053005400410052005400550050005F00520045005600050020
      00000044004100540041005F0053005400410052005400550050005F00520045
      0056000C00040000000E0017000F000115000110000116000111000112000114
      002000000044004100540041005F0053005400410052005400550050005F0052
      0045005600FEFF0B04001C0000005400490050004F005F004500530054004900
      4E0054004F005200450005001C0000005400490050004F005F00450053005400
      49004E0054004F00520045000C00050000000E000D000F000115000110000116
      000111000112000114001C0000005400490050004F005F004500530054004900
      4E0054004F0052004500FEFF0B040016000000500052004F0047005200450053
      005300490056004F00050016000000500052004F004700520045005300530049
      0056004F000C00060000000E000D000F00011000011100011200011400160000
      00500052004F0047005200450053005300490056004F00FEFF0B040012000000
      4D00410054005200490043004F004C0041000500120000004D00410054005200
      490043004F004C0041000C00070000000E0018001900FF0000000F0001150001
      1000011600011100011200011400120000004D00410054005200490043004F00
      4C0041001A00FF000000FEFF0B04002000000041004E004E004F005F0043004F
      0053005400520055005A0049004F004E00450005002000000041004E004E004F
      005F0043004F0053005400520055005A0049004F004E0045000C00080000000E
      001B000F000115000110000116000111000112000114002000000041004E004E
      004F005F0043004F0053005400520055005A0049004F004E004500FEFF0B0400
      2000000044004100540041005F0053005400410052005400550050005F004300
      4F004C0005002000000044004100540041005F00530054004100520054005500
      50005F0043004F004C000C00090000000E0017000F0001150001100001160001
      11000112000114002000000044004100540041005F0053005400410052005400
      550050005F0043004F004C00FEFF0B04000A00000053005400410054004F0005
      000A00000053005400410054004F000C000A0000000E0018001900010000000F
      00011C000110000111000112000114000A00000053005400410054004F001A00
      01000000FEFF0B040018000000520049004E004E004F005600410054004F005F
      0044004100050018000000520049004E004E004F005600410054004F005F0044
      0041000C000B0000000E000D000F000115000110000116000111000112000114
      0018000000520049004E004E004F005600410054004F005F0044004100FEFF0B
      04002400000041004E004F004D0041004C00490041005F004100500050005200
      4F00560041005400410005002400000041004E004F004D0041004C0049004100
      5F0041005000500052004F0056004100540041000C000C0000000E0018001900
      010000000F00011500011C000110000116000111000112000114002400000041
      004E004F004D0041004C00490041005F0041005000500052004F005600410054
      0041001A0001000000FEFF0B04001000000041004E004F004D0041004C004900
      410005001000000041004E004F004D0041004C00490041000C000D0000000E00
      1D000F00011500011E000110000116000111000112000114001000000041004E
      004F004D0041004C0049004100FEFF0B04001400000055004200490043004100
      5A0049004F004E004500050014000000550042004900430041005A0049004F00
      4E0045000C000E0000000E001D000F00011500011E0001100001160001110001
      120001140014000000550042004900430041005A0049004F004E004500FEFF0B
      04001A00000050005200450043005F0041004E004F004D0041004C0049004100
      05001A00000050005200450043005F0041004E004F004D0041004C0049004100
      0C000F0000000E001D000F00011500011E000110000116000111000112000114
      001A00000050005200450043005F0041004E004F004D0041004C0049004100FE
      FF0B0400180000004E004F00540045005F005400450043004E00490043004F00
      0500180000004E004F00540045005F005400450043004E00490043004F000C00
      100000000E001D000F00011500011E0001100001160001110001120001140018
      0000004E004F00540045005F005400450043004E00490043004F00FEFF0B0400
      0C000000490044005F004E004600430005000C000000490044005F004E004600
      43000C00110000000E0018001900640000000F00011500011000011600011100
      0112000114000C000000490044005F004E00460043001A0064000000FEFF0B04
      000A0000004D00410052004300410005000A0000004D0041005200430041000C
      00120000000E000D000F000115000110000116000111000112000114000A0000
      004D004100520043004100FEFEFF1FFEFF20FEFF21FEFEFEFF22FEFF23FF24FE
      FEFE0E004D0061006E0061006700650072001E00550070006400610074006500
      73005200650067006900730074007200790012005400610062006C0065004C00
      6900730074000A005400610062006C00650008004E0061006D00650014005300
      6F0075007200630065004E0061006D0065000A00540061006200490044002400
      45006E0066006F0072006300650043006F006E00730074007200610069006E00
      740073001E004D0069006E0069006D0075006D00430061007000610063006900
      74007900180043006800650063006B004E006F0074004E0075006C006C001400
      43006F006C0075006D006E004C006900730074000C0043006F006C0075006D00
      6E00100053006F007500720063006500490044000E006400740049006E007400
      3300320010004400610074006100540079007000650014005300650061007200
      63006800610062006C0065000800420061007300650012004F0049006E005500
      7000640061007400650010004F0049006E00570068006500720065000C004F00
      49006E004B00650079001A004F0072006900670069006E0043006F006C004E00
      61006D006500120041006C006C006F0077004E0075006C006C0014004F004100
      6C006C006F0077004E0075006C006C000C006400740044006100740065001800
      6400740041006E007300690053007400720069006E0067000800530069007A00
      6500140053006F007500720063006500530069007A0065000E00640074004900
      6E007400310036001000460069007800650064004C0065006E000C0064007400
      4D0065006D006F00100042006C006F00620044006100740061001C0043006F00
      6E00730074007200610069006E0074004C006900730074001000560069006500
      77004C006900730074000E0052006F0077004C00690073007400180052006500
      6C006100740069006F006E004C006900730074001C0055007000640061007400
      650073004A006F00750072006E0061006C000E004300680061006E0067006500
      7300}
  end
  object qryRapportinoIdranti: TFDQuery
    Connection = FDConnection1
    Left = 280
    Top = 288
  end
  object tabEstintori: TFDTable
    Filtered = True
    Filter = 'CHIAVE = 0'
    IndexFieldNames = 'CHIAVE'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'ESTINTORI_CLIENTI'
    Left = 560
    Top = 120
    object tabEstintoriCHIAVE: TIntegerField
      FieldName = 'CHIAVE'
      Origin = 'CHIAVE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabEstintoriCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
    end
    object tabEstintoriFILIALE: TIntegerField
      FieldName = 'FILIALE'
      Origin = 'FILIALE'
    end
    object tabEstintoriDATA_STARTUP_REV: TDateField
      FieldName = 'DATA_STARTUP_REV'
      Origin = 'DATA_STARTUP_REV'
    end
    object tabEstintoriTIPO_ESTINTORE: TIntegerField
      FieldName = 'TIPO_ESTINTORE'
      Origin = 'TIPO_ESTINTORE'
    end
    object tabEstintoriPROGRESSIVO: TIntegerField
      FieldName = 'PROGRESSIVO'
      Origin = 'PROGRESSIVO'
      Required = True
    end
    object tabEstintoriMATRICOLA: TStringField
      FieldName = 'MATRICOLA'
      Origin = 'MATRICOLA'
      Size = 255
    end
    object tabEstintoriANNO_COSTRUZIONE: TSmallintField
      FieldName = 'ANNO_COSTRUZIONE'
      Origin = 'ANNO_COSTRUZIONE'
    end
    object tabEstintoriDATA_STARTUP_COL: TDateField
      FieldName = 'DATA_STARTUP_COL'
      Origin = 'DATA_STARTUP_COL'
    end
    object tabEstintoriSTATO: TStringField
      FieldName = 'STATO'
      Origin = 'STATO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object tabEstintoriRINNOVATO_DA: TIntegerField
      FieldName = 'RINNOVATO_DA'
      Origin = 'RINNOVATO_DA'
    end
    object tabEstintoriANOMALIA_APPROVATA: TStringField
      FieldName = 'ANOMALIA_APPROVATA'
      Origin = 'ANOMALIA_APPROVATA'
      FixedChar = True
      Size = 1
    end
    object tabEstintoriANOMALIA: TMemoField
      FieldName = 'ANOMALIA'
      Origin = 'ANOMALIA'
      BlobType = ftMemo
    end
    object tabEstintoriUBICAZIONE: TMemoField
      FieldName = 'UBICAZIONE'
      Origin = 'UBICAZIONE'
      BlobType = ftMemo
    end
    object tabEstintoriPREC_ANOMALIA: TMemoField
      FieldName = 'PREC_ANOMALIA'
      Origin = 'PREC_ANOMALIA'
      BlobType = ftMemo
    end
    object tabEstintoriNOTE_TECNICO: TMemoField
      FieldName = 'NOTE_TECNICO'
      Origin = 'NOTE_TECNICO'
      BlobType = ftMemo
    end
    object tabEstintoriID_NFC: TStringField
      FieldName = 'ID_NFC'
      Origin = 'ID_NFC'
      Size = 100
    end
    object tabEstintoriMARCA: TIntegerField
      FieldName = 'MARCA'
      Origin = 'MARCA'
    end
  end
  object qryRapportinoEstintori: TFDQuery
    Connection = FDConnection1
    Left = 176
    Top = 320
  end
  object qryRapportini: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT '
      '  CHIAVE,'
      '  CLIENTE,'
      '  FILIALE,'
      '  TITOLO,'
      '  RAGIONE_SOCIALE,'
      '  INDIRIZZO,'
      '  COMUNE,'
      '  PROVINCIA,'
      '  CAP,'
      '  TELEFONO,'
      '  CELLULARE,'
      '  NOTE,'
      '  ORARIO_APERTURA_DAL1,'
      '  ORARIO_APERTURA_DAL2,'
      '  ORARIO_APERTURA_AL1,'
      '  ORARIO_APERTURA_AL2,'
      '  CHIUSURA,'
      '  FATTURA,'
      '  DATA_INTERVENTO,'
      '  GENERAZIONE_AUTOMATICA,'
      '  TECNICO_INTERVENTO,'
      '  SCANSIONE,'
      '  REGISTRO,'
      '  NOTE_PER_IL_TECNICO,'
      '  SOSPESO,'
      '  DA_ESPORTARE_SUL_WEB,'
      '  RESPONSABILE,'
      '  ESPORTATO_SU_MOBILE,'
      '  NOTE_DAL_TECNICO,'
      '  JSON_DA_MOBILE,'
      '  PDF_STATINO,'
      '  REGISTRO_IS_PDF,'
      '  VERBALE_PROVA_DINAMICA,'
      '  VERBALE_MANICHETTE,'
      '  PREVENTIVO,'
      '  IGNORA_EVIDENZIAZIONE,'
      '  ANNULLATO_DA_TABLET,'
      '  MOBILEWARN_NUOVA_ATTREZZATURA,'
      '  MOBILEWARN_ORDINARIA_RITIRATA,'
      '  MOBILEWARN_N_ORDIN_CONTROLLATA,'
      '  MOBILEWARN_SMALTIMENTO,'
      '  STATO_LAVORAZIONE,'
      '  DATA_CHIUSURA_DA_SERVER,'
      '  CHIUSURA_EXT,'
      '  CHIUSURA_STATINO,'
      '  MOBILEWARN_NON_ESEGUITI,'
      '  PRESA_IN_CARICO,'
      '  FORNITURA'
      'FROM '
      '  STATINI '
      'WHERE '
      '  CHIAVE = :STATINO')
    Left = 192
    Top = 192
    ParamData = <
      item
        Name = 'STATINO'
        DataType = ftLargeint
        ParamType = ptInput
        Value = -1
      end>
    object qryRapportiniCHIAVE: TIntegerField
      FieldName = 'CHIAVE'
      Origin = 'CHIAVE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryRapportiniCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
    end
    object qryRapportiniFILIALE: TIntegerField
      FieldName = 'FILIALE'
      Origin = 'FILIALE'
    end
    object qryRapportiniTITOLO: TStringField
      FieldName = 'TITOLO'
      Origin = 'TITOLO'
      Size = 10
    end
    object qryRapportiniRAGIONE_SOCIALE: TStringField
      FieldName = 'RAGIONE_SOCIALE'
      Origin = 'RAGIONE_SOCIALE'
      Size = 255
    end
    object qryRapportiniINDIRIZZO: TStringField
      FieldName = 'INDIRIZZO'
      Origin = 'INDIRIZZO'
      Size = 255
    end
    object qryRapportiniCOMUNE: TStringField
      FieldName = 'COMUNE'
      Origin = 'COMUNE'
      Size = 255
    end
    object qryRapportiniPROVINCIA: TStringField
      FieldName = 'PROVINCIA'
      Origin = 'PROVINCIA'
      FixedChar = True
      Size = 2
    end
    object qryRapportiniCAP: TStringField
      FieldName = 'CAP'
      Origin = 'CAP'
      Size = 10
    end
    object qryRapportiniTELEFONO: TStringField
      FieldName = 'TELEFONO'
      Origin = 'TELEFONO'
      Size = 255
    end
    object qryRapportiniCELLULARE: TStringField
      FieldName = 'CELLULARE'
      Origin = 'CELLULARE'
      Size = 255
    end
    object qryRapportiniNOTE: TMemoField
      FieldName = 'NOTE'
      Origin = 'NOTE'
      BlobType = ftMemo
    end
    object qryRapportiniORARIO_APERTURA_DAL1: TTimeField
      FieldName = 'ORARIO_APERTURA_DAL1'
      Origin = 'ORARIO_APERTURA_DAL1'
    end
    object qryRapportiniORARIO_APERTURA_DAL2: TTimeField
      FieldName = 'ORARIO_APERTURA_DAL2'
      Origin = 'ORARIO_APERTURA_DAL2'
    end
    object qryRapportiniORARIO_APERTURA_AL1: TTimeField
      FieldName = 'ORARIO_APERTURA_AL1'
      Origin = 'ORARIO_APERTURA_AL1'
    end
    object qryRapportiniORARIO_APERTURA_AL2: TTimeField
      FieldName = 'ORARIO_APERTURA_AL2'
      Origin = 'ORARIO_APERTURA_AL2'
    end
    object qryRapportiniCHIUSURA: TStringField
      FieldName = 'CHIUSURA'
      Origin = 'CHIUSURA'
      Size = 255
    end
    object qryRapportiniFATTURA: TIntegerField
      FieldName = 'FATTURA'
      Origin = 'FATTURA'
    end
    object qryRapportiniDATA_INTERVENTO: TDateField
      FieldName = 'DATA_INTERVENTO'
      Origin = 'DATA_INTERVENTO'
    end
    object qryRapportiniGENERAZIONE_AUTOMATICA: TIntegerField
      FieldName = 'GENERAZIONE_AUTOMATICA'
      Origin = 'GENERAZIONE_AUTOMATICA'
    end
    object qryRapportiniTECNICO_INTERVENTO: TIntegerField
      FieldName = 'TECNICO_INTERVENTO'
      Origin = 'TECNICO_INTERVENTO'
    end
    object qryRapportiniSCANSIONE: TBlobField
      FieldName = 'SCANSIONE'
      Origin = 'SCANSIONE'
    end
    object qryRapportiniREGISTRO: TBlobField
      FieldName = 'REGISTRO'
      Origin = 'REGISTRO'
    end
    object qryRapportiniNOTE_PER_IL_TECNICO: TMemoField
      FieldName = 'NOTE_PER_IL_TECNICO'
      Origin = 'NOTE_PER_IL_TECNICO'
      BlobType = ftMemo
    end
    object qryRapportiniSOSPESO: TStringField
      FieldName = 'SOSPESO'
      Origin = 'SOSPESO'
      FixedChar = True
      Size = 1
    end
    object qryRapportiniDA_ESPORTARE_SUL_WEB: TStringField
      FieldName = 'DA_ESPORTARE_SUL_WEB'
      Origin = 'DA_ESPORTARE_SUL_WEB'
      FixedChar = True
      Size = 1
    end
    object qryRapportiniRESPONSABILE: TIntegerField
      FieldName = 'RESPONSABILE'
      Origin = 'RESPONSABILE'
    end
    object qryRapportiniESPORTATO_SU_MOBILE: TStringField
      FieldName = 'ESPORTATO_SU_MOBILE'
      Origin = 'ESPORTATO_SU_MOBILE'
      FixedChar = True
      Size = 1
    end
    object qryRapportiniNOTE_DAL_TECNICO: TMemoField
      FieldName = 'NOTE_DAL_TECNICO'
      Origin = 'NOTE_DAL_TECNICO'
      BlobType = ftMemo
    end
    object qryRapportiniJSON_DA_MOBILE: TMemoField
      FieldName = 'JSON_DA_MOBILE'
      Origin = 'JSON_DA_MOBILE'
      BlobType = ftMemo
    end
    object qryRapportiniPDF_STATINO: TMemoField
      FieldName = 'PDF_STATINO'
      Origin = 'PDF_STATINO'
      BlobType = ftMemo
    end
    object qryRapportiniREGISTRO_IS_PDF: TStringField
      FieldName = 'REGISTRO_IS_PDF'
      Origin = 'REGISTRO_IS_PDF'
      FixedChar = True
      Size = 1
    end
    object qryRapportiniVERBALE_PROVA_DINAMICA: TMemoField
      FieldName = 'VERBALE_PROVA_DINAMICA'
      Origin = 'VERBALE_PROVA_DINAMICA'
      BlobType = ftMemo
    end
    object qryRapportiniVERBALE_MANICHETTE: TMemoField
      FieldName = 'VERBALE_MANICHETTE'
      Origin = 'VERBALE_MANICHETTE'
      BlobType = ftMemo
    end
    object qryRapportiniPREVENTIVO: TIntegerField
      FieldName = 'PREVENTIVO'
      Origin = 'PREVENTIVO'
    end
    object qryRapportiniIGNORA_EVIDENZIAZIONE: TStringField
      FieldName = 'IGNORA_EVIDENZIAZIONE'
      Origin = 'IGNORA_EVIDENZIAZIONE'
      FixedChar = True
      Size = 1
    end
    object qryRapportiniANNULLATO_DA_TABLET: TStringField
      FieldName = 'ANNULLATO_DA_TABLET'
      Origin = 'ANNULLATO_DA_TABLET'
      FixedChar = True
      Size = 1
    end
    object qryRapportiniMOBILEWARN_NUOVA_ATTREZZATURA: TStringField
      FieldName = 'MOBILEWARN_NUOVA_ATTREZZATURA'
      Origin = 'MOBILEWARN_NUOVA_ATTREZZATURA'
      FixedChar = True
      Size = 1
    end
    object qryRapportiniMOBILEWARN_ORDINARIA_RITIRATA: TStringField
      FieldName = 'MOBILEWARN_ORDINARIA_RITIRATA'
      Origin = 'MOBILEWARN_ORDINARIA_RITIRATA'
      FixedChar = True
      Size = 1
    end
    object qryRapportiniMOBILEWARN_N_ORDIN_CONTROLLATA: TStringField
      FieldName = 'MOBILEWARN_N_ORDIN_CONTROLLATA'
      Origin = 'MOBILEWARN_N_ORDIN_CONTROLLATA'
      FixedChar = True
      Size = 1
    end
    object qryRapportiniMOBILEWARN_SMALTIMENTO: TStringField
      FieldName = 'MOBILEWARN_SMALTIMENTO'
      Origin = 'MOBILEWARN_SMALTIMENTO'
      FixedChar = True
      Size = 1
    end
    object qryRapportiniSTATO_LAVORAZIONE: TStringField
      FieldName = 'STATO_LAVORAZIONE'
      Origin = 'STATO_LAVORAZIONE'
      FixedChar = True
      Size = 1
    end
    object qryRapportiniDATA_CHIUSURA_DA_SERVER: TDateField
      FieldName = 'DATA_CHIUSURA_DA_SERVER'
      Origin = 'DATA_CHIUSURA_DA_SERVER'
    end
    object qryRapportiniCHIUSURA_EXT: TStringField
      FieldName = 'CHIUSURA_EXT'
      Origin = 'CHIUSURA_EXT'
      Size = 50
    end
    object qryRapportiniCHIUSURA_STATINO: TBlobField
      FieldName = 'CHIUSURA_STATINO'
      Origin = 'CHIUSURA_STATINO'
    end
    object qryRapportiniMOBILEWARN_NON_ESEGUITI: TStringField
      FieldName = 'MOBILEWARN_NON_ESEGUITI'
      Origin = 'MOBILEWARN_NON_ESEGUITI'
      FixedChar = True
      Size = 1
    end
    object qryRapportiniPRESA_IN_CARICO: TStringField
      FieldName = 'PRESA_IN_CARICO'
      Origin = 'PRESA_IN_CARICO'
      FixedChar = True
      Size = 1
    end
    object qryRapportiniFORNITURA: TStringField
      FieldName = 'FORNITURA'
      Origin = 'FORNITURA'
      FixedChar = True
      Size = 1
    end
  end
end
