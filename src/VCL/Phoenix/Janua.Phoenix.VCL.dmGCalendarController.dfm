inherited dmPhoenixVCLGCalendarController: TdmPhoenixVCLGCalendarController
  Height = 569
  Width = 987
  inherited JanuaUniConnection1: TJanuaUniConnection
    EncryptedPassword = '92FF9EFF8CFF8BFF9AFF8DFF94FF9AFF86FF'
  end
  inherited vtGoogleEvents: TVirtualTable
    Data = {
      0400170002004944010080000000000004004554414701008000000000000700
      53554D4D41525901000001000000000B004445534352495054494F4E27000000
      000000000900535441525454494D450B000000000000000700454E4454494D45
      0B000000000000000700435245415445440B0000000000000007005550444154
      45440B0000000000000008004953414C4C444159050000000000000008004C4F
      434154494F4E0100800000000000060053544154555302000000000000000A00
      5649534942494C49545903000000000000000A00524543555252454E43450100
      3C00000000000B00524543555252494E47494401003C00000000000800534551
      55454E434503000000000000000500434F4C4F52020000000000000013005553
      4544454641554C5452454D494E444552530500000000000000110053454E444E
      4F54494649434154494F4E5305000000000000000A0043414C454E4441524944
      01008000000000000900417474656E646565731000000000000000090052656D
      696E64657273100000000000000005004A475549442300260000000000090043
      616C63436F6C6F720300000000000000000000000000}
  end
  inherited lkpGCalendarAlias: TVirtualTable
    Data = {
      04000B0002004944010080000000000008004C4F434154494F4E010080000000
      0000070053554D4D415259010000010000000007005052494D41525905000000
      00000000080054494D455A4F4E4501003C00000000000500434F4C4F52020000
      00000000000A00464F52455F434F4C4F5203000000000000000B004445534352
      495054494F4E27000000000000000A004241434B5F434F4C4F52030000000000
      00000500414C494153010014000000000005004A475549442300260000000000
      000000000000}
  end
  inherited vtGoogleCalendars: TVirtualTable
    Data = {
      04000B0002004944010080000000000008004C4F434154494F4E010080000000
      0000070053554D4D415259010000010000000007005052494D41525905000000
      00000000080054494D455A4F4E4501003C00000000000500434F4C4F52020000
      00000000000A00464F52455F434F4C4F5203000000000000000B004445534352
      495054494F4E27000000000000000A004241434B5F434F4C4F52030000000000
      00000500414C494153010014000000000005004A475549442300260000000000
      000000000000}
  end
  object tabGoogleCalendars: TUniTable
    TableName = 'GOOGLE_CALENDARS'
    DataTypeMap = <
      item
        FieldName = 'JGUID'
        FieldType = ftGuid
      end
      item
        FieldName = 'DESCRIPTION'
        FieldType = ftWideMemo
      end>
    Connection = JanuaUniConnection1
    Left = 528
    Top = 136
    object tabGoogleCalendarsID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 128
    end
    object tabGoogleCalendarsLOCATION: TStringField
      FieldName = 'LOCATION'
      Size = 128
    end
    object tabGoogleCalendarsSUMMARY: TStringField
      FieldName = 'SUMMARY'
      Size = 256
    end
    object tabGoogleCalendarsTIMEZONE: TStringField
      FieldName = 'TIMEZONE'
      Size = 60
    end
    object tabGoogleCalendarsCOLOR: TSmallintField
      FieldName = 'COLOR'
    end
    object tabGoogleCalendarsBACK_COLOR: TIntegerField
      FieldName = 'BACK_COLOR'
    end
    object tabGoogleCalendarsFORE_COLOR: TIntegerField
      FieldName = 'FORE_COLOR'
    end
    object tabGoogleCalendarsISPRIMARY: TStringField
      FieldName = 'ISPRIMARY'
      FixedChar = True
      Size = 1
    end
    object tabGoogleCalendarsALIAS: TStringField
      FieldName = 'ALIAS'
    end
    object tabGoogleCalendarsJGUID: TGuidField
      FieldName = 'JGUID'
      FixedChar = True
      Size = 38
    end
    object tabGoogleCalendarsDESCRIPTION: TWideMemoField
      FieldName = 'DESCRIPTION'
      BlobType = ftWideMemo
    end
  end
  object tabGoogleEvents: TUniTable
    TableName = 'GOOGLE_CALENDAR_EVENTS'
    DataTypeMap = <
      item
        FieldName = 'DESCRIPTION'
        FieldType = ftWideMemo
      end
      item
        FieldName = 'ATTENDEES'
        FieldType = ftWideMemo
      end
      item
        FieldName = 'REMINDERS'
        FieldType = ftWideMemo
      end
      item
        FieldName = 'JGUID'
        FieldType = ftGuid
      end>
    Connection = JanuaUniConnection1
    IndexFieldNames = 'ID'
    Left = 528
    Top = 200
    object tabGoogleEventsID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 128
    end
    object tabGoogleEventsETAG: TStringField
      FieldName = 'ETAG'
      Size = 128
    end
    object tabGoogleEventsSUMMARY: TStringField
      FieldName = 'SUMMARY'
      Size = 256
    end
    object tabGoogleEventsDESCRIPTION: TWideMemoField
      FieldName = 'DESCRIPTION'
      BlobType = ftWideMemo
    end
    object tabGoogleEventsSTARTTIME: TDateTimeField
      FieldName = 'STARTTIME'
    end
    object tabGoogleEventsENDTIME: TDateTimeField
      FieldName = 'ENDTIME'
    end
    object tabGoogleEventsCREATED: TDateTimeField
      FieldName = 'CREATED'
    end
    object tabGoogleEventsUPDATED: TDateTimeField
      FieldName = 'UPDATED'
    end
    object tabGoogleEventsLOCATION: TStringField
      FieldName = 'LOCATION'
      Size = 128
    end
    object tabGoogleEventsSTATUS: TSmallintField
      FieldName = 'STATUS'
    end
    object tabGoogleEventsSENDNOTIFICATIONS: TStringField
      FieldName = 'SENDNOTIFICATIONS'
      FixedChar = True
      Size = 1
    end
    object tabGoogleEventsVISIBILITY: TIntegerField
      FieldName = 'VISIBILITY'
    end
    object tabGoogleEventsRECURRENCE: TStringField
      FieldName = 'RECURRENCE'
      Size = 60
    end
    object tabGoogleEventsRECURRINGID: TStringField
      FieldName = 'RECURRINGID'
      Size = 60
    end
    object tabGoogleEventsSEQUENCE: TIntegerField
      FieldName = 'SEQUENCE'
    end
    object tabGoogleEventsCOLOR: TSmallintField
      FieldName = 'COLOR'
    end
    object tabGoogleEventsCALENDARID: TStringField
      FieldName = 'CALENDARID'
      Required = True
      Size = 128
    end
    object tabGoogleEventsATTENDEES: TWideMemoField
      FieldName = 'ATTENDEES'
      BlobType = ftWideMemo
    end
    object tabGoogleEventsREMINDERS: TWideMemoField
      FieldName = 'REMINDERS'
      BlobType = ftWideMemo
    end
    object tabGoogleEventsUSEDEFAULTREMINDERS: TStringField
      FieldName = 'USEDEFAULTREMINDERS'
      FixedChar = True
      Size = 1
    end
    object tabGoogleEventsISALLDAY: TStringField
      FieldName = 'ISALLDAY'
      FixedChar = True
      Size = 1
    end
    object tabGoogleEventsJGUID: TGuidField
      FieldName = 'JGUID'
      FixedChar = True
      Size = 38
    end
    object tabGoogleEventsBACKGROUNDCOLOR: TIntegerField
      FieldName = 'BACKGROUNDCOLOR'
    end
    object tabGoogleEventsFOREGROUNDCOLOR: TIntegerField
      FieldName = 'FOREGROUNDCOLOR'
    end
  end
  object qryGoogleEventsQueue: TUniQuery
    Connection = JanuaUniConnection1
    SQL.Strings = (
      
        'SELECT * FROM   GOOGLE_CALENDAR_EVENTS WHERE sync = '#39'F'#39' and etag' +
        ' = '#39'""'#39';')
    Left = 528
    Top = 264
    object qryGoogleEventsQueueID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 128
    end
    object qryGoogleEventsQueueETAG: TStringField
      FieldName = 'ETAG'
      Size = 128
    end
    object qryGoogleEventsQueueSUMMARY: TStringField
      FieldName = 'SUMMARY'
      Size = 256
    end
    object qryGoogleEventsQueueDESCRIPTION: TBlobField
      FieldName = 'DESCRIPTION'
    end
    object qryGoogleEventsQueueSTARTTIME: TDateTimeField
      FieldName = 'STARTTIME'
    end
    object qryGoogleEventsQueueENDTIME: TDateTimeField
      FieldName = 'ENDTIME'
    end
    object qryGoogleEventsQueueCREATED: TDateTimeField
      FieldName = 'CREATED'
    end
    object qryGoogleEventsQueueUPDATED: TDateTimeField
      FieldName = 'UPDATED'
    end
    object qryGoogleEventsQueueLOCATION: TStringField
      FieldName = 'LOCATION'
      Size = 128
    end
    object qryGoogleEventsQueueSTATUS: TSmallintField
      FieldName = 'STATUS'
    end
    object qryGoogleEventsQueueVISIBILITY: TIntegerField
      FieldName = 'VISIBILITY'
    end
    object qryGoogleEventsQueueRECURRENCE: TStringField
      FieldName = 'RECURRENCE'
      Size = 60
    end
    object qryGoogleEventsQueueRECURRINGID: TStringField
      FieldName = 'RECURRINGID'
      Size = 60
    end
    object qryGoogleEventsQueueSEQUENCE: TIntegerField
      FieldName = 'SEQUENCE'
    end
    object qryGoogleEventsQueueCOLOR: TSmallintField
      FieldName = 'COLOR'
    end
    object qryGoogleEventsQueueCALENDARID: TStringField
      FieldName = 'CALENDARID'
      Required = True
      Size = 128
    end
    object qryGoogleEventsQueueUSEDEFAULTREMINDERS: TStringField
      FieldName = 'USEDEFAULTREMINDERS'
      FixedChar = True
      Size = 1
    end
    object qryGoogleEventsQueueSENDNOTIFICATIONS: TStringField
      FieldName = 'SENDNOTIFICATIONS'
      FixedChar = True
      Size = 1
    end
    object qryGoogleEventsQueueISALLDAY: TStringField
      FieldName = 'ISALLDAY'
      FixedChar = True
      Size = 1
    end
    object qryGoogleEventsQueueATTENDEES: TBlobField
      FieldName = 'ATTENDEES'
    end
    object qryGoogleEventsQueueREMINDERS: TBlobField
      FieldName = 'REMINDERS'
    end
    object qryGoogleEventsQueueJGUID: TBytesField
      FieldName = 'JGUID'
    end
    object qryGoogleEventsQueueBACKGROUNDCOLOR: TIntegerField
      FieldName = 'BACKGROUNDCOLOR'
    end
    object qryGoogleEventsQueueFOREGROUNDCOLOR: TIntegerField
      FieldName = 'FOREGROUNDCOLOR'
    end
    object qryGoogleEventsQueueSYNC: TStringField
      FieldName = 'SYNC'
      FixedChar = True
      Size = 1
    end
  end
  object qryPlannerEvents: TUniQuery
    KeyFields = 'JGUID'
    SQLInsert.Strings = (
      'INSERT INTO CALENDARIO_EVENTI'
      
        '  (CHIAVE, STATINO, TECNICO, DALLE_ORE, ALLE_ORE, NOTE, SUBJECT,' +
        ' TECNICO_SIGLA, COLORE, JGUID, ICONA, GOOGLE_JSON, GFORECOLOR, G' +
        'BACKCOLOR, CALENDARIO, GOOGLEID)'
      'VALUES'
      
        '  (:CHIAVE, :STATINO, :TECNICO, :DALLE_ORE, :ALLE_ORE, :NOTE, :S' +
        'UBJECT, :TECNICO_SIGLA, :COLORE, :JGUID, :ICONA, :GOOGLE_JSON, :' +
        'GFORECOLOR, :GBACKCOLOR, :CALENDARIO, :GOOGLEID)')
    SQLDelete.Strings = (
      'DELETE FROM CALENDARIO_EVENTI'
      'WHERE'
      '  JGUID = :Old_JGUID')
    SQLUpdate.Strings = (
      'UPDATE CALENDARIO_EVENTI'
      'SET'
      
        '  CHIAVE = :CHIAVE, STATINO = :STATINO, TECNICO = :TECNICO, DALL' +
        'E_ORE = :DALLE_ORE, ALLE_ORE = :ALLE_ORE, NOTE = :NOTE, SUBJECT ' +
        '= :SUBJECT, TECNICO_SIGLA = :TECNICO_SIGLA, COLORE = :COLORE, JG' +
        'UID = :JGUID, ICONA = :ICONA, GOOGLE_JSON = :GOOGLE_JSON, GFOREC' +
        'OLOR = :GFORECOLOR, GBACKCOLOR = :GBACKCOLOR, CALENDARIO = :CALE' +
        'NDARIO, GOOGLEID = :GOOGLEID'
      'WHERE'
      '  JGUID = :Old_JGUID')
    SQLLock.Strings = (
      'SELECT NULL FROM CALENDARIO_EVENTI'
      'WHERE'
      'JGUID = :Old_JGUID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT CHIAVE, STATINO, TECNICO, DALLE_ORE, ALLE_ORE, NOTE, SUBJ' +
        'ECT, TECNICO_SIGLA, COLORE, JGUID, ICONA, GOOGLE_JSON, GFORECOLO' +
        'R, GBACKCOLOR, CALENDARIO, GOOGLEID FROM CALENDARIO_EVENTI'
      'WHERE'
      '  JGUID = :JGUID')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM CALENDARIO_EVENTI'
      ''
      ') q')
    DataTypeMap = <
      item
        FieldName = 'JGUID'
        FieldType = ftGuid
      end
      item
        FieldName = 'NOTE'
        FieldType = ftWideMemo
      end>
    Connection = JanuaUniConnection1
    SQL.Strings = (
      'SELECT E.* FROM '
      
        'CALENDARIO_EVENTI E LEFT JOIN CALENDARIO C ON E.CALENDARIO = C.C' +
        'HIAVE'
      'where '
      'C.GRUPPO_ID = '#39'T'#39
      'AND'
      'E.DALLE_ORE >= :DATA_DAL'
      'AND'
      'E.DALLE_ORE <= :DATA_AL'
      ';')
    FetchRows = 100
    Filtered = True
    IndexFieldNames = 'DALLE_ORE DESC'
    Left = 528
    Top = 336
    ParamData = <
      item
        DataType = ftDate
        Name = 'DATA_DAL'
        ParamType = ptInput
        Value = 45437d
      end
      item
        DataType = ftDate
        Name = 'DATA_AL'
        ParamType = ptInput
        Value = 45503d
      end>
    object qryPlannerEventsCHIAVE: TIntegerField
      FieldName = 'CHIAVE'
      Required = True
    end
    object qryPlannerEventsSTATINO: TIntegerField
      FieldName = 'STATINO'
    end
    object qryPlannerEventsTECNICO: TIntegerField
      FieldName = 'TECNICO'
      Required = True
    end
    object qryPlannerEventsDALLE_ORE: TDateTimeField
      FieldName = 'DALLE_ORE'
      Required = True
    end
    object qryPlannerEventsALLE_ORE: TDateTimeField
      FieldName = 'ALLE_ORE'
      Required = True
    end
    object qryPlannerEventsSUBJECT: TStringField
      FieldName = 'SUBJECT'
      Size = 256
    end
    object qryPlannerEventsNOTE: TWideMemoField
      FieldName = 'NOTE'
      BlobType = ftWideMemo
    end
    object qryPlannerEventsTECNICO_SIGLA: TStringField
      FieldName = 'TECNICO_SIGLA'
      Size = 12
    end
    object qryPlannerEventsCOLORE: TIntegerField
      FieldName = 'COLORE'
    end
    object qryPlannerEventsICONA: TSmallintField
      FieldName = 'ICONA'
    end
    object qryPlannerEventsGOOGLE_JSON: TBlobField
      FieldName = 'GOOGLE_JSON'
    end
    object qryPlannerEventsGFORECOLOR: TIntegerField
      FieldName = 'GFORECOLOR'
    end
    object qryPlannerEventsGBACKCOLOR: TIntegerField
      FieldName = 'GBACKCOLOR'
    end
    object qryPlannerEventsCALENDARIO: TIntegerField
      FieldName = 'CALENDARIO'
    end
    object qryPlannerEventsGOOGLEID: TStringField
      FieldName = 'GOOGLEID'
      Size = 128
    end
    object qryPlannerEventsJGUID: TGuidField
      FieldName = 'JGUID'
      FixedChar = True
      Size = 38
    end
    object qryPlannerEventslkpMailTecnico: TStringField
      FieldKind = fkLookup
      FieldName = 'lkpMailTecnico'
      LookupKeyFields = 'CHIAVE'
      LookupResultField = 'EMAIL'
      KeyFields = 'TECNICO'
      Size = 128
      Lookup = True
    end
  end
  object qryUpdatePlannerEvents: TUniQuery
    KeyFields = 'JGUID'
    SQLInsert.Strings = (
      'INSERT INTO CALENDARIO_EVENTI'
      
        '  (CHIAVE, STATINO, TECNICO, DALLE_ORE, ALLE_ORE, NOTE, SUBJECT,' +
        ' TECNICO_SIGLA, COLORE, JGUID, ICONA, GOOGLE_JSON, GFORECOLOR, G' +
        'BACKCOLOR, CALENDARIO, GOOGLEID)'
      'VALUES'
      
        '  (:CHIAVE, :STATINO, :TECNICO, :DALLE_ORE, :ALLE_ORE, :NOTE, :S' +
        'UBJECT, :TECNICO_SIGLA, :COLORE, :JGUID, :ICONA, :GOOGLE_JSON, :' +
        'GFORECOLOR, :GBACKCOLOR, :CALENDARIO, :GOOGLEID)')
    SQLDelete.Strings = (
      'DELETE FROM CALENDARIO_EVENTI'
      'WHERE'
      '  JGUID = :Old_JGUID')
    SQLUpdate.Strings = (
      'UPDATE CALENDARIO_EVENTI'
      'SET'
      
        '  CHIAVE = :CHIAVE, STATINO = :STATINO, TECNICO = :TECNICO, DALL' +
        'E_ORE = :DALLE_ORE, ALLE_ORE = :ALLE_ORE, NOTE = :NOTE, SUBJECT ' +
        '= :SUBJECT, TECNICO_SIGLA = :TECNICO_SIGLA, COLORE = :COLORE, JG' +
        'UID = :JGUID, ICONA = :ICONA, GOOGLE_JSON = :GOOGLE_JSON, GFOREC' +
        'OLOR = :GFORECOLOR, GBACKCOLOR = :GBACKCOLOR, CALENDARIO = :CALE' +
        'NDARIO, GOOGLEID = :GOOGLEID'
      'WHERE'
      '  JGUID = :Old_JGUID')
    SQLLock.Strings = (
      'SELECT NULL FROM CALENDARIO_EVENTI'
      'WHERE'
      'JGUID = :Old_JGUID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT CHIAVE, STATINO, TECNICO, DALLE_ORE, ALLE_ORE, NOTE, SUBJ' +
        'ECT, TECNICO_SIGLA, COLORE, JGUID, ICONA, GOOGLE_JSON, GFORECOLO' +
        'R, GBACKCOLOR, CALENDARIO, GOOGLEID FROM CALENDARIO_EVENTI'
      'WHERE'
      '  JGUID = :JGUID')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM CALENDARIO_EVENTI'
      ''
      ') q')
    DataTypeMap = <
      item
        FieldName = 'JGUID'
        FieldType = ftGuid
      end
      item
        FieldName = 'NOTE'
        FieldType = ftWideMemo
      end>
    Connection = JanuaUniConnection1
    SQL.Strings = (
      'SELECT E.* FROM '
      
        'CALENDARIO_EVENTI E LEFT JOIN CALENDARIO C ON E.CALENDARIO = C.C' +
        'HIAVE'
      'where '
      'C.GRUPPO_ID = '#39'T'#39
      'AND'
      'E.DALLE_ORE >= :DATA_DAL'
      'AND'
      'E.DALLE_ORE <= :DATA_AL'
      ';')
    FetchRows = 100
    Filtered = True
    IndexFieldNames = 'DALLE_ORE DESC'
    Left = 528
    Top = 408
    ParamData = <
      item
        DataType = ftDate
        Name = 'DATA_DAL'
        ParamType = ptInput
        Value = 45437d
      end
      item
        DataType = ftDate
        Name = 'DATA_AL'
        ParamType = ptInput
        Value = 45503d
      end>
    object IntegerField1: TIntegerField
      FieldName = 'CHIAVE'
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'STATINO'
    end
    object IntegerField3: TIntegerField
      FieldName = 'TECNICO'
      Required = True
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'DALLE_ORE'
      Required = True
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'ALLE_ORE'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'SUBJECT'
      Size = 256
    end
    object WideMemoField1: TWideMemoField
      FieldName = 'NOTE'
      BlobType = ftWideMemo
    end
    object StringField2: TStringField
      FieldName = 'TECNICO_SIGLA'
      Size = 12
    end
    object IntegerField4: TIntegerField
      FieldName = 'COLORE'
    end
    object SmallintField1: TSmallintField
      FieldName = 'ICONA'
    end
    object BlobField1: TBlobField
      FieldName = 'GOOGLE_JSON'
    end
    object IntegerField5: TIntegerField
      FieldName = 'GFORECOLOR'
    end
    object IntegerField6: TIntegerField
      FieldName = 'GBACKCOLOR'
    end
    object IntegerField7: TIntegerField
      FieldName = 'CALENDARIO'
    end
    object StringField3: TStringField
      FieldName = 'GOOGLEID'
      Size = 128
    end
    object GuidField1: TGuidField
      FieldName = 'JGUID'
      FixedChar = True
      Size = 38
    end
    object StringField4: TStringField
      FieldKind = fkLookup
      FieldName = 'lkpMailTecnico'
      LookupKeyFields = 'CHIAVE'
      LookupResultField = 'EMAIL'
      KeyFields = 'TECNICO'
      Size = 128
      Lookup = True
    end
  end
end
