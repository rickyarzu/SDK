inherited dmMail: TdmMail
  Height = 573
  Width = 745
  inherited PgErgoConnection: TJanuaUniConnection
    EncryptedPassword = '99FFCBFF91FF94FF8AFF93FFCFFF'
  end
  inherited spSetSchemaID: TUniStoredProc
    CommandStoredProcName = 'system.set_schema_id'
  end
  object qryMail: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT * '
      'FROM '
      '   mail.mail_send '
      'WHERE'
      '   MS_SEND_ID = :ms_send_id and db_user_id = :db_user_id')
    Left = 232
    Top = 56
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ms_send_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'db_user_id'
        ParamType = ptInput
        Value = nil
      end>
    object qryMailms_send_id: TLargeintField
      FieldName = 'ms_send_id'
      Required = True
    end
    object qryMaildb_user_id: TIntegerField
      FieldName = 'db_user_id'
    end
    object qryMaildb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryMailms_to: TWideStringField
      FieldName = 'ms_to'
      Required = True
      Size = 256
    end
    object qryMailms_cc: TWideStringField
      FieldName = 'ms_cc'
      Size = 256
    end
    object qryMailms_bcc: TWideStringField
      FieldName = 'ms_bcc'
      Size = 256
    end
    object qryMailms_text: TWideStringField
      FieldName = 'ms_text'
      Size = 2048
    end
    object qryMailms_object: TWideStringField
      FieldName = 'ms_object'
      Size = 1024
    end
    object qryMailuser_insert: TWideStringField
      FieldName = 'user_insert'
      Size = 30
    end
    object qryMailuser_update: TWideStringField
      FieldName = 'user_update'
      Size = 30
    end
    object qryMailms_owner: TWideStringField
      FieldName = 'ms_owner'
      Required = True
      Size = 30
    end
    object qryMailms_sent: TWideStringField
      FieldName = 'ms_sent'
      Size = 3
    end
    object qryMailms_from: TWideStringField
      FieldName = 'ms_from'
      Size = 256
    end
    object qryMailms_from_addr: TWideStringField
      FieldName = 'ms_from_addr'
      Size = 256
    end
  end
  object tbMailAttach: TUniTable
    TableName = 'mail.attachments'
    Connection = PgErgoConnection
    MasterFields = 'MS_SEND_ID'
    DetailFields = 'MS_SEND_ID'
    Left = 232
    Top = 117
    object tbMailAttachms_send_id: TLargeintField
      FieldName = 'ms_send_id'
    end
    object tbMailAttachattach_id: TLargeintField
      FieldName = 'attach_id'
      Required = True
    end
    object tbMailAttachfilename: TWideStringField
      FieldName = 'filename'
      Size = 512
    end
    object tbMailAttachattachment: TBlobField
      FieldName = 'attachment'
    end
  end
  object dsMail: TDataSource
    DataSet = qryMail
    Left = 232
    Top = 173
  end
  object qryMailSeq: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT nextval(mail.mail_seq), Now();')
    Left = 232
    Top = 237
    object qryMailSeqNEXTVAL: TFMTBCDField
      FieldName = 'NEXTVAL'
      Precision = 32
      Size = 32
    end
  end
end
