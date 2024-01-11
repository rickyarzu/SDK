object dmSendMail: TdmSendMail
  OldCreateOrder = False
  Height = 181
  Width = 396
  object Mail: TIdSMTP
    Host = 'mail.januaproject.it'
    Password = 'f4nkul0'
    SASLMechanisms = <>
    Username = 'riccardo.arduino@januaproject.it'
    Left = 224
    Top = 40
  end
  object MailMessage: TIdMessage
    AttachmentEncoding = 'UUE'
    BccList = <>
    CCList = <>
    Encoding = meDefault
    FromList = <
      item
      end>
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = True
    Left = 224
    Top = 88
  end
  object qryMail: TOraQuery
    KeyFields = 'ms_send_id'
    KeySequence = 'janua_public.mail_SEND_seq'
    SequenceMode = smInsert
    Session = sesTest
    SQL.Strings = (
      'SELECT * FROM JANUA_PUBLIC.MAIL_SEND WHERE MS_OWNER = :username')
    Left = 64
    Top = 40
    ParamData = <
      item
        DataType = ftString
        Name = 'username'
        ParamType = ptInput
      end>
    object qryMailMS_SEND_ID: TFloatField
      FieldName = 'MS_SEND_ID'
    end
    object qryMailMS_TO: TWideStringField
      FieldName = 'MS_TO'
      Size = 256
    end
    object qryMailMS_CC: TWideStringField
      FieldName = 'MS_CC'
      Size = 256
    end
    object qryMailMS_BCC: TWideStringField
      FieldName = 'MS_BCC'
      Size = 256
    end
    object qryMailMS_TEXT: TWideStringField
      FieldName = 'MS_TEXT'
      Size = 2048
    end
    object qryMailMS_OBJECT: TWideStringField
      FieldName = 'MS_OBJECT'
      Size = 1024
    end
    object qryMailINSERT_DATE: TDateTimeField
      FieldName = 'INSERT_DATE'
    end
    object qryMailUPDATE_DATE: TDateTimeField
      FieldName = 'UPDATE_DATE'
    end
    object qryMailUSER_INSERT: TWideStringField
      FieldName = 'USER_INSERT'
      Size = 30
    end
    object qryMailUSER_UPDATE: TWideStringField
      FieldName = 'USER_UPDATE'
      Size = 30
    end
    object qryMailMS_OWNER: TWideStringField
      FieldName = 'MS_OWNER'
      Size = 30
    end
    object qryMailMS_SENT: TWideStringField
      FieldName = 'MS_SENT'
      Size = 3
    end
  end
  object tbMailAttach: TOraTable
    TableName = 'janua_public.mail_attach'
    OrderFields = 'MAIL_ATTACH_ID'
    MasterFields = 'MS_SEND_ID'
    DetailFields = 'MS_SEND_ID'
    MasterSource = dsMail
    KeyFields = 'MAIL_ATTACH_ID'
    KeySequence = 'janua_public.mail_attach_seq'
    SequenceMode = smInsert
    Session = sesTest
    OnNewRecord = tbMailAttachNewRecord
    Left = 64
    Top = 88
    object tbMailAttachMS_SEND_ID: TFloatField
      FieldName = 'MS_SEND_ID'
    end
    object tbMailAttachMAIL_ATTACH_ID: TFloatField
      FieldName = 'MAIL_ATTACH_ID'
    end
    object tbMailAttachMAIL_ATTACH_FILENAME: TWideStringField
      FieldName = 'MAIL_ATTACH_FILENAME'
      Size = 256
    end
    object tbMailAttachMAIL_ATTACH_BLOB: TBlobField
      FieldName = 'MAIL_ATTACH_BLOB'
      BlobType = ftOraBlob
    end
  end
  object dsMail: TOraDataSource
    DataSet = qryMail
    Left = 144
    Top = 72
  end
  object sesTest: TOraSession
    Username = 'account'
    Password = 'f4nkul0'
    Server = 'janua'
    Left = 304
    Top = 72
  end
  object JanuaSystem1: TJanuaSystem
    Left = 144
    Top = 120
  end
  object JanuaDialog1: TJanuaDialog
    DialogType = jdtWarning
    Left = 144
    Top = 16
  end
end
