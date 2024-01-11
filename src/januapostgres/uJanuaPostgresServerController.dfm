object JanuaPostgresServerController: TJanuaPostgresServerController
  OldCreateOrder = False
  Height = 399
  Width = 556
  object JanuaCoreOS1: TJanuaCoreOS
    Left = 72
    Top = 24
  end
  object JanuaMailSender1: TJanuaMailSender
    Verbose = False
    LogToFile = False
    JanuaLogger = JanuaCoreLogger1
    Language = jlaNone
    TestMode = False
    Sent = False
    MailEncoding = jmeHTML
    VerifiedServer = False
    CustomMailTest = False
    MailEncryption = jmsNone
    Encryption = False
    Left = 72
    Top = 80
  end
  object JanuaApplicationProfile1: TJanuaApplicationProfile
    Verbose = True
    JanuaLogger = JanuaCoreLogger1
    Language = jlaNone
    ApplicationFramework = jafServerDatasnap
    Protocol = jptFtp
    ProtocolAsets = jptFtp
    AssetsUrl = 'cdn.ergomercator.com'
    Left = 72
    Top = 144
  end
  object JanuaCoreLogger1: TJanuaCoreLogger
    Component = Owner
    LogType = jltError
    AutoFileName = True
    IsCustomServer = False
    ErrorFileName = 'Error'
    LogFileName = 'Log'
    Left = 72
    Top = 208
  end
  object JanuaIBAN1: TJanuaIBAN
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    isoCountry = jicNNN
    Left = 208
    Top = 40
  end
  object JanuaBarcode1: TJanuaBarcode
    BarcodeType = jbtEAN13
    AutoCalc = False
    Left = 208
    Top = 96
  end
  object JanuaParamsReader1: TJanuaParamsReader
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    Left = 72
    Top = 272
  end
  object JanuaVatCode1: TJanuaVatCode
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    isoCountry = jicItalia
    Specification = 
      'La partita iva italiana deve essere di 11 caratteri questa '#232' inv' +
      'ece di: 0'
    isOK = False
    Error = 'Attenzione inserita partita iva di lunghezza errata!'
    Left = 208
    Top = 160
  end
  object JanuaFiscalCode1: TJanuaFiscalCode
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    VatCode = 'rdnrcr70p04i480z'
    isoCountry = jicItalia
    Specification = 
      'La partita iva italiana deve essere di 11 caratteri questa '#232' inv' +
      'ece di: 16'
    isOK = False
    Error = 'Attenzione inserita partita iva di lunghezza errata!'
    Left = 208
    Top = 224
  end
  object JanuaPostgresSystem1: TJanuaPostgresSystem
    LogToFile = False
    JanuaLogger = JanuaCoreLogger1
    Language = jlaNone
    TestMode = False
    Connected = False
    JanuaMailSender = JanuaMailSender1
    ApplicationProfile = JanuaApplicationProfile1
    KeepAlive = False
    SessionID = 0
    LoadedProfile = False
    Left = 352
    Top = 56
  end
end
