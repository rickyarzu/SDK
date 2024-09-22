inherited dmSocial: TdmSocial
  Height = 664
  Width = 536
  inherited PgErgoConnection: TJanuaUniConnection
    EncryptedPassword = '99FFCBFF91FF94FF8AFF93FFCFFF'
  end
  inherited spSetSchemaID: TUniStoredProc
    CommandStoredProcName = 'system.set_schema_id'
  end
  object spInsertMessage: TUniStoredProc
    StoredProcName = 'social.insert_message'
    SQL.Strings = (
      
        'SELECT social.insert_message(:in_from_id, :in_to_id, :in_subject' +
        ', :in_text)')
    Connection = PgErgoConnection
    Left = 224
    Top = 72
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'result'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'in_from_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'in_to_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'in_subject'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'in_text'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'social.insert_message:0'
  end
  object qryMessages: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT a.*, b.first_name, b.last_name,'
      
        '  c.first_name as receiver_first_name, c.last_name as receiver_l' +
        'ast_name'
      
        '  FROM social.messages a, system.db_users_profiles b, system.db_' +
        'users_profiles c'
      '  where'
      '  (to_id = :p_to_id  or :p_to_id = 0)'
      '  and '
      '  (from_id = :p_from_id or :p_from_id = 0)'
      '  and '
      '  a.from_id = b.db_user_id'
      '  and'
      '  c.db_user_id = a.to_id'
      '  and'
      '     ( '
      '      public.nvl(subject, '#39'%'#39') like :ricerca'
      '      or b.last_name  like :ricerca '
      '      or b.first_name like :ricerca '
      '      or :ricerca = '#39'%'#39'  or :ricerca = '#39'%%%'#39
      '      )'
      '       '
      'order by  msg_datetime desc, a.message_id desc'
      '  limit 20;')
    Left = 224
    Top = 184
    ParamData = <
      item
        DataType = ftInteger
        Name = 'p_to_id'
        ParamType = ptInput
        Value = 28
      end
      item
        DataType = ftInteger
        Name = 'p_from_id'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = 'ricerca'
        ParamType = ptInput
        Value = '%'
      end>
    object qryMessagesmessage_id: TLargeintField
      FieldName = 'message_id'
      Required = True
    end
    object qryMessagesfrom_id: TIntegerField
      FieldName = 'from_id'
      Required = True
    end
    object qryMessagesto_id: TIntegerField
      FieldName = 'to_id'
      Required = True
    end
    object qryMessagessubject: TWideStringField
      FieldName = 'subject'
      Size = 512
    end
    object qryMessagesmsg_text: TWideMemoField
      FieldName = 'msg_text'
      BlobType = ftWideMemo
    end
    object qryMessagesshorttext: TWideStringField
      FieldName = 'shorttext'
      Size = 4000
    end
    object qryMessagesmsg_datetime: TDateTimeField
      FieldName = 'msg_datetime'
    end
    object qryMessagesmsg_read: TBooleanField
      FieldName = 'msg_read'
      Required = True
    end
    object qryMessagesmsg_sent: TBooleanField
      FieldName = 'msg_sent'
      Required = True
    end
    object qryMessagesfirst_name: TWideStringField
      FieldName = 'first_name'
      ReadOnly = True
      Size = 128
    end
    object qryMessageslast_name: TWideStringField
      FieldName = 'last_name'
      ReadOnly = True
      Size = 128
    end
    object qryMessagesreceiver_first_name: TWideStringField
      FieldName = 'receiver_first_name'
      ReadOnly = True
      Size = 128
    end
    object qryMessagesreceiver_last_name: TWideStringField
      FieldName = 'receiver_last_name'
      ReadOnly = True
      Size = 128
    end
  end
  object spDeleteMessage: TUniStoredProc
    StoredProcName = 'DML_WEB_MESSAGES.DEL_WEB_MESSAGES'
    SQL.Strings = (
      'begin'
      '  DML_WEB_MESSAGES.DEL_WEB_MESSAGES(:IN_MESSAGE_ID);'
      'end;')
    Connection = PgErgoConnection
    Left = 224
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IN_MESSAGE_ID'
        Value = nil
      end>
    CommandStoredProcName = 'DML_WEB_MESSAGES.DEL_WEB_MESSAGES'
  end
  object qryMessageCount: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'select  count(1) as messages'
      ' from social.messages a'
      'where '
      '(a.to_id = :p_to_id or :p_to_id = 0)'
      'and'
      '(a.from_id = :p_from_id or :p_from_id = 0)'
      '  and'
      '     (subject like :ricerca'
      '     or :ricerca = '#39'%'#39')')
    Left = 224
    Top = 240
    ParamData = <
      item
        DataType = ftInteger
        Name = 'p_to_id'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'p_from_id'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = 'ricerca'
        ParamType = ptInput
        Value = '%'
      end>
    object qryMessageCountmessages: TLargeintField
      FieldName = 'messages'
      ReadOnly = True
    end
  end
  object qryMessagesNotRead: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'select  *'
      ' from social.messages a'
      'where '
      'a.to_id = :p_to and msg_read = false')
    Left = 224
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_to'
        Value = nil
      end>
    object qryMessagesNotReadmessage_id: TLargeintField
      FieldName = 'message_id'
      Required = True
    end
    object qryMessagesNotReadfrom_id: TIntegerField
      FieldName = 'from_id'
      Required = True
    end
    object qryMessagesNotReadto_id: TIntegerField
      FieldName = 'to_id'
      Required = True
    end
    object qryMessagesNotReadsubject: TWideStringField
      FieldName = 'subject'
      Size = 512
    end
    object qryMessagesNotReadmsg_text: TWideMemoField
      FieldName = 'msg_text'
      BlobType = ftWideMemo
    end
    object qryMessagesNotReadshorttext: TWideStringField
      FieldName = 'shorttext'
      Size = 4000
    end
    object qryMessagesNotReadmsg_datetime: TDateTimeField
      FieldName = 'msg_datetime'
    end
    object qryMessagesNotReadmsg_read: TBooleanField
      FieldName = 'msg_read'
      Required = True
    end
    object qryMessagesNotReadmsg_sent: TBooleanField
      FieldName = 'msg_sent'
      Required = True
    end
  end
  object qryDeleteMessage: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'delete'
      '  FROM social.messages a'
      '  where message_id = :p_message_id')
    Left = 224
    Top = 360
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'p_message_id'
        ParamType = ptInput
        Value = nil
      end>
  end
end
