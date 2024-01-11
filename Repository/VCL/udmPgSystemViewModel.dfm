object dmPgSystemViewModel: TdmPgSystemViewModel
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 411
  Width = 546
  object dsSearchDBUsersProfiles: TDataSource
    OnDataChange = dsSearchDBUsersProfilesDataChange
    Left = 208
    Top = 88
  end
  object ActionListSystem: TActionList
    Left = 208
    Top = 168
    object actUserAdd: TAction
      Category = 'Users'
      Caption = 'Inserisci Nuovo Utente'
      Enabled = False
    end
    object actUserPayment: TAction
      Category = 'Users'
      Caption = 'Attiva Abbonamento'
      Enabled = False
      OnExecute = actUserPaymentExecute
    end
    object actUserPaymentRevoke: TAction
      Category = 'Users'
      Caption = 'Revoca Abbonamento'
      Enabled = False
    end
  end
  object JanuaDialog1: TJanuaDialog
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    DialogType = jdtWarning
    Left = 208
    Top = 240
  end
  object JanuaPostgresSystem1: TJanuaPostgresSystem
    Verbose = False
    LogToFile = False
    JanuaLogger = JanuaCoreLogger1
    Language = jlaNone
    TestMode = False
    Connected = False
    JanuaMailSender = JanuaMailSender1
    KeepAlive = False
    NetHTTPRequest = NetHTTPRequest1
    SessionID = 0
    LoginDialog = JanuaDialogLogin1
    LoadedProfile = False
    Left = 104
    Top = 264
  end
  object JanuaCoreLogger1: TJanuaCoreLogger
    Component = Owner
    LogType = jltError
    AutoFileName = True
    IsCustomServer = False
    ErrorFileName = 'Error'
    LogFileName = 'Log'
    Left = 200
    Top = 312
  end
  object JanuaMailSender1: TJanuaMailSender
    Verbose = False
    LogToFile = False
    JanuaLogger = JanuaCoreLogger1
    Language = jlaNone
    TestMode = False
    Sent = False
    MailEncoding = jmeHTML
    Logger = JanuaCoreLogger1
    VerifiedServer = False
    CustomMailTest = False
    MailEncryption = jmsNone
    Encryption = False
    Left = 296
    Top = 264
  end
  object NetHTTPRequest1: TNetHTTPRequest
    Asynchronous = False
    ConnectionTimeout = 0
    ResponseTimeout = 0
    Left = 104
    Top = 112
  end
  object NetHTTPClient1: TNetHTTPClient
    Asynchronous = False
    ConnectionTimeout = 60000
    ResponseTimeout = 60000
    HandleRedirects = True
    AllowCookies = True
    UserAgent = 'Embarcadero URI Client/1.0'
    Left = 304
    Top = 112
  end
  object JanuaDialogLogin1: TJanuaDialogLogin
    Verbose = False
    LogToFile = False
    JanuaLogger = JanuaCoreLogger1
    Language = jlaNone
    TestMode = False
    ShowCancelButton = False
    ShowServerButton = False
    SetServer = False
    ImageWidth = 0
    ImageHeight = 0
    CustomImage = False
    Left = 104
    Top = 48
  end
  object DBUserSearch: TDBUserBindable
    Verbose = False
    LogToFile = False
    JanuaLogger = JanuaCoreLogger1
    Language = jlaNone
    TestMode = False
    SearchDataSource = dsSearchDBUsersProfiles
    SearchIndex = 0
    DBUserID = 0
    Left = 304
    Top = 48
  end
  object JanuaInputNumber1: TJanuaInputNumber
    Caption = 'Importo pagato dal Cliente'
    DisplayText = 'Inserire Importo'
    Left = 296
    Top = 200
  end
end
