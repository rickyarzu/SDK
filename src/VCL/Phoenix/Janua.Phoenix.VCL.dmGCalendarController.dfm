inherited dmPhoenixVCLGCalendarController: TdmPhoenixVCLGCalendarController
  Height = 553
  Width = 754
  inherited JanuaUniConnection1: TJanuaUniConnection
    EncryptedPassword = '92FF9EFF8CFF8BFF9AFF8DFF94FF9AFF86FF'
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
  inherited vtGoogleColors: TVirtualTable
    Data = {
      040003000200494402000000000000000A004241434B5F434F4C4F5203000000
      000000000A00464F52455F434F4C4F520300000000000000000000000000}
  end
  inherited vtGoogleEvents: TVirtualTable
    Data = {
      04001A0002004944010080000000000004004554414701008000000000000700
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
      616C63436F6C6F7203000000000000000F004241434B47524F554E44434F4C4F
      5203000000000000000F00464F524547524F554E44434F4C4F52030000000000
      0000040053594E430100010000000000000000000000}
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
    BeforePost = tabGoogleEventsBeforePost
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
    object tabGoogleEventsSYNC: TStringField
      FieldName = 'SYNC'
      FixedChar = True
      Size = 1
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
    Top = 400
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
      'CALENDARIO_EVENTI E where uuid_to_char(JGUID) = :GUID'
      ';')
    FetchRows = 100
    Filtered = True
    IndexFieldNames = 'DALLE_ORE DESC'
    Left = 528
    Top = 328
    ParamData = <
      item
        DataType = ftString
        Name = 'GUID'
        Value = 'F3C93E19-8124-4D74-95BA-9FE0E5E119F7'
      end>
    object qryUpdatePlannerEventsCHIAVE: TIntegerField
      FieldName = 'CHIAVE'
      Required = True
    end
    object qryUpdatePlannerEventsSTATINO: TIntegerField
      FieldName = 'STATINO'
    end
    object qryUpdatePlannerEventsTECNICO: TIntegerField
      FieldName = 'TECNICO'
    end
    object qryUpdatePlannerEventsDALLE_ORE: TDateTimeField
      FieldName = 'DALLE_ORE'
      Required = True
    end
    object qryUpdatePlannerEventsALLE_ORE: TDateTimeField
      FieldName = 'ALLE_ORE'
      Required = True
    end
    object qryUpdatePlannerEventsNOTE: TWideMemoField
      FieldName = 'NOTE'
      BlobType = ftWideMemo
    end
    object qryUpdatePlannerEventsSUBJECT: TStringField
      FieldName = 'SUBJECT'
      Size = 256
    end
    object qryUpdatePlannerEventsTECNICO_SIGLA: TStringField
      FieldName = 'TECNICO_SIGLA'
      Size = 12
    end
    object qryUpdatePlannerEventsCOLORE: TIntegerField
      FieldName = 'COLORE'
    end
    object qryUpdatePlannerEventsJGUID: TGuidField
      FieldName = 'JGUID'
      FixedChar = True
      Size = 38
    end
    object qryUpdatePlannerEventsICONA: TSmallintField
      FieldName = 'ICONA'
    end
    object qryUpdatePlannerEventsGOOGLE_JSON: TBlobField
      FieldName = 'GOOGLE_JSON'
    end
    object qryUpdatePlannerEventsGFORECOLOR: TIntegerField
      FieldName = 'GFORECOLOR'
    end
    object qryUpdatePlannerEventsGBACKCOLOR: TIntegerField
      FieldName = 'GBACKCOLOR'
    end
    object qryUpdatePlannerEventsCALENDARIO: TIntegerField
      FieldName = 'CALENDARIO'
    end
    object qryUpdatePlannerEventsGOOGLEID: TStringField
      FieldName = 'GOOGLEID'
      Size = 128
    end
  end
  object qryGoogleEvent: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO GOOGLE_CALENDAR_EVENTS'
      
        '  (ID, ETAG, SUMMARY, DESCRIPTION, STARTTIME, ENDTIME, CREATED, ' +
        'UPDATED, LOCATION, STATUS, VISIBILITY, RECURRENCE, RECURRINGID, ' +
        'SEQUENCE, COLOR, CALENDARID, USEDEFAULTREMINDERS, SENDNOTIFICATI' +
        'ONS, ISALLDAY, ATTENDEES, REMINDERS, JGUID, BACKGROUNDCOLOR, FOR' +
        'EGROUNDCOLOR, SYNC)'
      'VALUES'
      
        '  (:ID, :ETAG, :SUMMARY, :DESCRIPTION, :STARTTIME, :ENDTIME, :CR' +
        'EATED, :UPDATED, :LOCATION, :STATUS, :VISIBILITY, :RECURRENCE, :' +
        'RECURRINGID, :SEQUENCE, :COLOR, :CALENDARID, :USEDEFAULTREMINDER' +
        'S, :SENDNOTIFICATIONS, :ISALLDAY, :ATTENDEES, :REMINDERS, :JGUID' +
        ', :BACKGROUNDCOLOR, :FOREGROUNDCOLOR, :SYNC)')
    SQLDelete.Strings = (
      'DELETE FROM GOOGLE_CALENDAR_EVENTS'
      'WHERE'
      '  JGUID = :Old_JGUID')
    SQLUpdate.Strings = (
      'UPDATE GOOGLE_CALENDAR_EVENTS'
      'SET'
      
        '  ID = :ID, ETAG = :ETAG, SUMMARY = :SUMMARY, DESCRIPTION = :DES' +
        'CRIPTION, STARTTIME = :STARTTIME, ENDTIME = :ENDTIME, CREATED = ' +
        ':CREATED, UPDATED = :UPDATED, LOCATION = :LOCATION, STATUS = :ST' +
        'ATUS, VISIBILITY = :VISIBILITY, RECURRENCE = :RECURRENCE, RECURR' +
        'INGID = :RECURRINGID, SEQUENCE = :SEQUENCE, COLOR = :COLOR, CALE' +
        'NDARID = :CALENDARID, USEDEFAULTREMINDERS = :USEDEFAULTREMINDERS' +
        ', SENDNOTIFICATIONS = :SENDNOTIFICATIONS, ISALLDAY = :ISALLDAY, ' +
        'ATTENDEES = :ATTENDEES, REMINDERS = :REMINDERS, JGUID = :JGUID, ' +
        'BACKGROUNDCOLOR = :BACKGROUNDCOLOR, FOREGROUNDCOLOR = :FOREGROUN' +
        'DCOLOR, SYNC = :SYNC'
      'WHERE'
      '  JGUID = :Old_JGUID')
    SQLLock.Strings = (
      'SELECT NULL FROM GOOGLE_CALENDAR_EVENTS'
      'WHERE'
      'JGUID = :Old_JGUID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT ID, ETAG, SUMMARY, DESCRIPTION, STARTTIME, ENDTIME, CREAT' +
        'ED, UPDATED, LOCATION, STATUS, VISIBILITY, RECURRENCE, RECURRING' +
        'ID, SEQUENCE, COLOR, CALENDARID, USEDEFAULTREMINDERS, SENDNOTIFI' +
        'CATIONS, ISALLDAY, ATTENDEES, REMINDERS, JGUID, BACKGROUNDCOLOR,' +
        ' FOREGROUNDCOLOR, SYNC FROM GOOGLE_CALENDAR_EVENTS'
      'WHERE'
      '  JGUID = :JGUID')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM GOOGLE_CALENDAR_EVENTS'
      ''
      ') q')
    DataTypeMap = <
      item
        FieldName = 'DESCRIPTION'
        FieldType = ftWideMemo
      end
      item
        FieldName = 'JGUID'
        FieldType = ftGuid
      end
      item
        FieldName = 'ATTENDEES'
        FieldType = ftWideMemo
      end
      item
        FieldName = 'REMINDERS'
        FieldType = ftWideMemo
      end>
    Connection = JanuaUniConnection1
    SQL.Strings = (
      'SELECT * FROM  GOOGLE_CALENDAR_EVENTS '
      'WHERE uuid_to_char(JGUID) = :GUID')
    Left = 648
    Top = 296
    ParamData = <
      item
        DataType = ftString
        Name = 'GUID'
        ParamType = ptInput
        Value = 'F3C93E19-8124-4D74-95BA-9FE0E5E119F7'
      end>
    object qryGoogleEventID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 128
    end
    object qryGoogleEventETAG: TStringField
      FieldName = 'ETAG'
      Size = 128
    end
    object qryGoogleEventSUMMARY: TStringField
      FieldName = 'SUMMARY'
      Size = 256
    end
    object qryGoogleEventSTARTTIME: TDateTimeField
      FieldName = 'STARTTIME'
    end
    object qryGoogleEventENDTIME: TDateTimeField
      FieldName = 'ENDTIME'
    end
    object qryGoogleEventCREATED: TDateTimeField
      FieldName = 'CREATED'
    end
    object qryGoogleEventUPDATED: TDateTimeField
      FieldName = 'UPDATED'
    end
    object qryGoogleEventLOCATION: TStringField
      FieldName = 'LOCATION'
      Size = 128
    end
    object qryGoogleEventSTATUS: TSmallintField
      FieldName = 'STATUS'
    end
    object qryGoogleEventVISIBILITY: TIntegerField
      FieldName = 'VISIBILITY'
    end
    object qryGoogleEventRECURRENCE: TStringField
      FieldName = 'RECURRENCE'
      Size = 60
    end
    object qryGoogleEventRECURRINGID: TStringField
      FieldName = 'RECURRINGID'
      Size = 60
    end
    object qryGoogleEventSEQUENCE: TIntegerField
      FieldName = 'SEQUENCE'
    end
    object qryGoogleEventCOLOR: TSmallintField
      FieldName = 'COLOR'
    end
    object qryGoogleEventCALENDARID: TStringField
      FieldName = 'CALENDARID'
      Required = True
      Size = 128
    end
    object qryGoogleEventUSEDEFAULTREMINDERS: TStringField
      FieldName = 'USEDEFAULTREMINDERS'
      FixedChar = True
      Size = 1
    end
    object qryGoogleEventSENDNOTIFICATIONS: TStringField
      FieldName = 'SENDNOTIFICATIONS'
      FixedChar = True
      Size = 1
    end
    object qryGoogleEventISALLDAY: TStringField
      FieldName = 'ISALLDAY'
      FixedChar = True
      Size = 1
    end
    object qryGoogleEventBACKGROUNDCOLOR: TIntegerField
      FieldName = 'BACKGROUNDCOLOR'
    end
    object qryGoogleEventFOREGROUNDCOLOR: TIntegerField
      FieldName = 'FOREGROUNDCOLOR'
    end
    object qryGoogleEventSYNC: TStringField
      FieldName = 'SYNC'
      FixedChar = True
      Size = 1
    end
    object qryGoogleEventDESCRIPTION: TWideMemoField
      FieldName = 'DESCRIPTION'
      BlobType = ftWideMemo
    end
    object qryGoogleEventATTENDEES: TWideMemoField
      FieldName = 'ATTENDEES'
      BlobType = ftWideMemo
    end
    object qryGoogleEventREMINDERS: TWideMemoField
      FieldName = 'REMINDERS'
      BlobType = ftWideMemo
    end
    object qryGoogleEventJGUID: TGuidField
      FieldName = 'JGUID'
      FixedChar = True
      Size = 38
    end
  end
  object qryRicercaStatino: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO STATINI'
      '  (APPUNTAMENTO_DATA, APPUNTAMENTO_ORA, STATO, JGUID, GCAL)'
      'VALUES'
      '  (:APPUNTAMENTO_DATA, :APPUNTAMENTO_ORA, :STATO, :JGUID, :GCAL)')
    SQLDelete.Strings = (
      'DELETE FROM STATINI'
      'WHERE'
      '  CHIAVE = :Old_CHIAVE')
    SQLUpdate.Strings = (
      'UPDATE STATINI'
      'SET'
      
        '  APPUNTAMENTO_DATA = :APPUNTAMENTO_DATA, APPUNTAMENTO_ORA = :AP' +
        'PUNTAMENTO_ORA, STATO = :STATO, JGUID = :JGUID, GCAL = :GCAL'
      'WHERE'
      '  CHIAVE = :Old_CHIAVE')
    SQLLock.Strings = (
      'SELECT NULL FROM STATINI'
      'WHERE'
      'CHIAVE = :Old_CHIAVE'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT APPUNTAMENTO_DATA, APPUNTAMENTO_ORA, STATO, JGUID, GCAL F' +
        'ROM STATINI'
      'WHERE'
      '  CHIAVE = :CHIAVE')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM STATINI'
      ''
      ') q')
    DataTypeMap = <
      item
        DBType = 416
        FieldType = ftWideMemo
      end
      item
        FieldName = 'NOTE_PER_IL_TECNICO'
        FieldType = ftWideMemo
      end>
    Connection = JanuaUniConnection1
    SQL.Strings = (
      'SELECT S.*'
      'FROM STATINI S where S.chiave = :statino'
      ';')
    FetchRows = 100
    Left = 648
    Top = 360
    ParamData = <
      item
        DataType = ftInteger
        Name = 'statino'
        ParamType = ptInput
        Value = nil
      end>
    object qryRicercaStatinoCHIAVE: TIntegerField
      FieldName = 'CHIAVE'
      Required = True
    end
    object qryRicercaStatinoCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object qryRicercaStatinoFILIALE: TIntegerField
      FieldName = 'FILIALE'
    end
    object qryRicercaStatinoTITOLO: TStringField
      FieldName = 'TITOLO'
      Size = 10
    end
    object qryRicercaStatinoRAGIONE_SOCIALE: TStringField
      FieldName = 'RAGIONE_SOCIALE'
      Size = 255
    end
    object qryRicercaStatinoINDIRIZZO: TStringField
      FieldName = 'INDIRIZZO'
      Size = 255
    end
    object qryRicercaStatinoCOMUNE: TStringField
      FieldName = 'COMUNE'
      Size = 255
    end
    object qryRicercaStatinoPROVINCIA: TStringField
      FieldName = 'PROVINCIA'
      FixedChar = True
      Size = 2
    end
    object qryRicercaStatinoCAP: TStringField
      FieldName = 'CAP'
      Size = 10
    end
    object qryRicercaStatinoTELEFONO: TStringField
      FieldName = 'TELEFONO'
      Size = 255
    end
    object qryRicercaStatinoCELLULARE: TStringField
      FieldName = 'CELLULARE'
      Size = 255
    end
    object qryRicercaStatinoNOTE: TBlobField
      FieldName = 'NOTE'
    end
    object qryRicercaStatinoORARIO_APERTURA_DAL1: TTimeField
      FieldName = 'ORARIO_APERTURA_DAL1'
    end
    object qryRicercaStatinoORARIO_APERTURA_DAL2: TTimeField
      FieldName = 'ORARIO_APERTURA_DAL2'
    end
    object qryRicercaStatinoORARIO_APERTURA_AL1: TTimeField
      FieldName = 'ORARIO_APERTURA_AL1'
    end
    object qryRicercaStatinoORARIO_APERTURA_AL2: TTimeField
      FieldName = 'ORARIO_APERTURA_AL2'
    end
    object qryRicercaStatinoCHIUSURA: TStringField
      FieldName = 'CHIUSURA'
      Size = 255
    end
    object qryRicercaStatinoFATTURA: TIntegerField
      FieldName = 'FATTURA'
    end
    object qryRicercaStatinoDATA_INTERVENTO: TDateField
      FieldName = 'DATA_INTERVENTO'
    end
    object qryRicercaStatinoGENERAZIONE_AUTOMATICA: TIntegerField
      FieldName = 'GENERAZIONE_AUTOMATICA'
    end
    object qryRicercaStatinoTECNICO_INTERVENTO: TIntegerField
      FieldName = 'TECNICO_INTERVENTO'
    end
    object qryRicercaStatinoSCANSIONE: TWideMemoField
      FieldName = 'SCANSIONE'
      BlobType = ftWideMemo
    end
    object qryRicercaStatinoREGISTRO: TWideMemoField
      FieldName = 'REGISTRO'
      BlobType = ftWideMemo
    end
    object qryRicercaStatinoNOTE_PER_IL_TECNICO: TWideMemoField
      FieldName = 'NOTE_PER_IL_TECNICO'
      BlobType = ftWideMemo
    end
    object qryRicercaStatinoSOSPESO: TStringField
      FieldName = 'SOSPESO'
      FixedChar = True
      Size = 1
    end
    object qryRicercaStatinoDA_ESPORTARE_SUL_WEB: TStringField
      FieldName = 'DA_ESPORTARE_SUL_WEB'
      FixedChar = True
      Size = 1
    end
    object qryRicercaStatinoRESPONSABILE: TIntegerField
      FieldName = 'RESPONSABILE'
    end
    object qryRicercaStatinoESPORTATO_SU_MOBILE: TStringField
      FieldName = 'ESPORTATO_SU_MOBILE'
      FixedChar = True
      Size = 1
    end
    object qryRicercaStatinoNOTE_DAL_TECNICO: TBlobField
      FieldName = 'NOTE_DAL_TECNICO'
    end
    object qryRicercaStatinoJSON_DA_MOBILE: TBlobField
      FieldName = 'JSON_DA_MOBILE'
    end
    object qryRicercaStatinoPDF_STATINO: TBlobField
      FieldName = 'PDF_STATINO'
    end
    object qryRicercaStatinoREGISTRO_IS_PDF: TStringField
      FieldName = 'REGISTRO_IS_PDF'
      FixedChar = True
      Size = 1
    end
    object qryRicercaStatinoVERBALE_PROVA_DINAMICA: TBlobField
      FieldName = 'VERBALE_PROVA_DINAMICA'
    end
    object qryRicercaStatinoVERBALE_MANICHETTE: TBlobField
      FieldName = 'VERBALE_MANICHETTE'
    end
    object qryRicercaStatinoPREVENTIVO: TIntegerField
      FieldName = 'PREVENTIVO'
    end
    object qryRicercaStatinoIGNORA_EVIDENZIAZIONE: TStringField
      FieldName = 'IGNORA_EVIDENZIAZIONE'
      FixedChar = True
      Size = 1
    end
    object qryRicercaStatinoANNULLATO_DA_TABLET: TStringField
      FieldName = 'ANNULLATO_DA_TABLET'
      FixedChar = True
      Size = 1
    end
    object qryRicercaStatinoMOBILEWARN_NUOVA_ATTREZZATURA: TStringField
      FieldName = 'MOBILEWARN_NUOVA_ATTREZZATURA'
      FixedChar = True
      Size = 1
    end
    object qryRicercaStatinoMOBILEWARN_ORDINARIA_RITIRATA: TStringField
      FieldName = 'MOBILEWARN_ORDINARIA_RITIRATA'
      FixedChar = True
      Size = 1
    end
    object qryRicercaStatinoMOBILEWARN_N_ORDIN_CONTROLLATA: TStringField
      FieldName = 'MOBILEWARN_N_ORDIN_CONTROLLATA'
      FixedChar = True
      Size = 1
    end
    object qryRicercaStatinoMOBILEWARN_SMALTIMENTO: TStringField
      FieldName = 'MOBILEWARN_SMALTIMENTO'
      FixedChar = True
      Size = 1
    end
    object qryRicercaStatinoSTATO_LAVORAZIONE: TStringField
      FieldName = 'STATO_LAVORAZIONE'
      FixedChar = True
      Size = 1
    end
    object qryRicercaStatinoDATA_CHIUSURA_DA_SERVER: TDateField
      FieldName = 'DATA_CHIUSURA_DA_SERVER'
    end
    object qryRicercaStatinoCHIUSURA_EXT: TStringField
      FieldName = 'CHIUSURA_EXT'
      Size = 50
    end
    object qryRicercaStatinoCHIUSURA_STATINO: TWideMemoField
      FieldName = 'CHIUSURA_STATINO'
      BlobType = ftWideMemo
    end
    object qryRicercaStatinoMOBILEWARN_NON_ESEGUITI: TStringField
      FieldName = 'MOBILEWARN_NON_ESEGUITI'
      FixedChar = True
      Size = 1
    end
    object qryRicercaStatinoPRESA_IN_CARICO: TStringField
      FieldName = 'PRESA_IN_CARICO'
      FixedChar = True
      Size = 1
    end
    object qryRicercaStatinoFORNITURA: TStringField
      FieldName = 'FORNITURA'
      FixedChar = True
      Size = 1
    end
    object qryRicercaStatinoAPPUNTAMENTO_DATA: TDateField
      FieldName = 'APPUNTAMENTO_DATA'
    end
    object qryRicercaStatinoAPPUNTAMENTO_ORA: TTimeField
      FieldName = 'APPUNTAMENTO_ORA'
    end
    object qryRicercaStatinoSTATO: TSmallintField
      FieldName = 'STATO'
    end
    object qryRicercaStatinoJGUID: TBytesField
      FieldName = 'JGUID'
    end
    object qryRicercaStatinoGCAL: TStringField
      FieldName = 'GCAL'
      FixedChar = True
      Size = 1
    end
  end
  object spGoogleSync: TUniStoredProc
    StoredProcName = 'GOOGLE_SYNC_PRC'
    SQL.Strings = (
      'EXECUTE PROCEDURE GOOGLE_SYNC_PRC')
    Connection = JanuaUniConnection1
    Left = 520
    Top = 472
    CommandStoredProcName = 'GOOGLE_SYNC_PRC'
  end
end
