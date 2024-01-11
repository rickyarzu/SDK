object frmJanuaCoreMail: TfrmJanuaCoreMail
  Left = 0
  Top = 0
  Caption = 'Janua Core Mail'
  ClientHeight = 495
  ClientWidth = 782
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 782
    Height = 495
    ActivePage = tabMailHtml
    Align = alClient
    TabOrder = 0
    object tabMailSettings: TTabSheet
      Caption = 'Test Invio Mail'
    end
    object tabMailHtml: TTabSheet
      Caption = 'Html Text'
      ImageIndex = 1
    end
    object TabSheet3: TTabSheet
      Caption = 'Html Preview'
      ImageIndex = 2
    end
  end
  object JanuaMailSender1: TJanuaMailSender
    LogToFile = False
    ApplicationType = jatDefault
    Language = jlaNone
    Sent = False
    MailEncoding = jmeHTML
    VerifiedServer = False
    CustomMailTest = False
    MailEncryption = jmsNone
    Encryption = False
    Left = 220
    Top = 128
  end
  object JanuaCoreLogger1: TJanuaCoreLogger
    Component = Owner
    LogType = jltError
    AutoFileName = True
    IsCustomServer = False
    ErrorFileName = 'Error'
    LogFileName = 'Log'
    ApplicationType = jatDefault
    Left = 224
    Top = 200
  end
  object JanuaCoreOS1: TJanuaCoreOS
    AppName = 'JanuaTest'
    Log.Strings = (
      '29/08/2016 19:06:24'
      'FWildCard =\'
      '29/08/2016 19:06:24'
      'FDocDirectory =C:\Users\ergom\Documents'
      '29/08/2016 19:06:24'
      'FTempPath =C:\Users\ergom\AppData\Local\Temp\'
      '29/08/2016 19:06:24'
      'FHomePath =C:\Users\ergom\AppData\Roaming')
    HasErrors = False
    CustomServer = False
    Active = False
    ConfigDataset = ConfigDataset.Owner
    Left = 224
    Top = 264
  end
  object VirtualTable1: TVirtualTable
    FieldDefs = <
      item
        Name = 'Test1'
        DataType = ftString
        Size = 256
      end
      item
        Name = 'Test2'
        DataType = ftInteger
      end
      item
        Name = 'Test3'
        DataType = ftMemo
      end>
    Left = 328
    Top = 224
    Data = {
      0300030005005465737431010000010000000005005465737432030000000000
      000005005465737433100000000000000000000100000003000000756E6F0400
      00000100000003000000756E6F}
    object TStringField
      FieldName = 'Test1'
      Size = 256
    end
    object TIntegerField
      FieldName = 'Test2'
    end
    object TMemoField
      FieldName = 'Test3'
      BlobType = ftMemo
    end
  end
end
