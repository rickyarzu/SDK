object dmJanuaCoreTesting: TdmJanuaCoreTesting
  OldCreateOrder = False
  Height = 459
  Width = 428
  object NetHTTPClient1: TNetHTTPClient
    Asynchronous = False
    ConnectionTimeout = 60000
    ResponseTimeout = 60000
    AllowCookies = True
    HandleRedirects = True
    UserAgent = 'Embarcadero URI Client/1.0'
    Left = 56
    Top = 16
  end
  object NetHTTPRequest1: TNetHTTPRequest
    Asynchronous = False
    ConnectionTimeout = 0
    ResponseTimeout = 0
    Left = 56
    Top = 72
  end
  object vrtLogs: TVirtualTable
    Left = 56
    Top = 136
    Data = {04000000000000000000}
  end
  object vrtDBLogs: TVirtualTable
    Left = 56
    Top = 200
    Data = {04000000000000000000}
  end
  object JanuaVCLOS1: TJanuaVCLOS
    Left = 56
    Top = 264
  end
  object JanuaDBLogger1: TJanuaDBLogger
    Component = Owner
    LogType = jltError
    AutoFileName = True
    IsCustomServer = False
    ErrorFileName = 'Error'
    LogFileName = 'Log'
    OnLogMsg = JanuaDBLogger1LogMsg
    OnDBDatasetError = JanuaDBLogger1DBDatasetError
    Left = 57
    Top = 328
  end
  object JanuaDialog1: TJanuaDialog
    Verbose = False
    LogToFile = False
    JanuaLogger = JanuaDBLogger1
    Language = jlaNone
    TestMode = False
    DialogType = jdtWarning
    Left = 56
    Top = 392
  end
  object JanuaMailSender1: TJanuaMailSender
    Verbose = False
    LogToFile = False
    JanuaLogger = JanuaDBLogger1
    Language = jlaNone
    TestMode = False
    sSubject = 'prova Mail BDM'
    Sent = False
    MailPassword = 'T4nt0v4l4g4t.'
    MailUsername = 'rickyarzu@gmail.com'
    MailServer = 'smtp.gmail.com'
    MailEncoding = jmeHTML
    VerifiedServer = False
    ServerIP = '74.125.206.109'
    CustomMailTest = False
    MailEncryption = jmsNone
    Encryption = False
    Left = 184
    Top = 109
  end
  object JanuaPgConnection1: TJanuaPgConnection
    Verbose = False
    LogToFile = False
    JanuaLogger = JanuaDBLogger1
    Language = jlaNone
    TestMode = False
    Left = 184
    Top = 168
  end
  object JanuaVCLDBServerDialog1: TJanuaVCLDBServerDialog
    Verbose = False
    LogToFile = False
    JanuaLogger = JanuaDBLogger1
    Language = jlaNone
    TestMode = False
    JanuaDBConnection = JanuaPgConnection1
    JanuaDialogs = JanuaDialog1
    Left = 184
    Top = 232
  end
  object JanuaServerConf1: TJanuaServerConf
    Verbose = False
    LogToFile = False
    JanuaLogger = JanuaDBLogger1
    Language = jlaNone
    TestMode = False
    JanuaDBServerDialog = JanuaVCLDBServerDialog1
    Left = 184
    Top = 296
  end
  object JanuaPostgresSystem: TJanuaPostgresSystem
    Verbose = False
    LogToFile = False
    JanuaLogger = JanuaDBLogger1
    Language = jlaNone
    TestMode = False
    Connected = False
    JanuaMailSender = JanuaMailSender1
    KeepAlive = True
    NetHTTPRequest = NetHTTPRequest1
    SessionID = 0
    LoadedProfile = False
    Left = 320
    Top = 205
  end
  object JanuaServerPgFootball: TJanuaServerPgFootball
    Verbose = False
    LogToFile = False
    JanuaLogger = JanuaDBLogger1
    Language = jlaNone
    TestMode = False
    Connected = False
    JanuaMailSender = JanuaMailSender1
    KeepAlive = True
    NetHTTPRequest = NetHTTPRequest1
    SessionID = 0
    JanuaSystem = JanuaPostgresSystem
    TemplateName = 'dilettanttissimo'
    JanuaCms = JanuaServerPgCms
    GoalRankingLimit = 0
    Left = 320
    Top = 141
  end
  object JanuaServerPgCms: TJanuaServerPgCms
    Verbose = False
    LogToFile = False
    JanuaLogger = JanuaDBLogger1
    Language = jlaNone
    TestMode = False
    Connected = False
    JanuaMailSender = JanuaMailSender1
    KeepAlive = True
    NetHTTPRequest = NetHTTPRequest1
    SessionID = 0
    ThemeID = 0
    ShowMessage = False
    NumArticles = 0
    JanuaServerSystem = JanuaPostgresSystem
    JanuaGraphicMenu.Verbose = False
    JanuaGraphicMenu.KeepAlive = False
    JanuaGraphicMenu.id = 0
    Left = 320
    Top = 269
  end
  object JanuaPgStatisticsServer1: TJanuaPgStatisticsServer
    Verbose = False
    LogToFile = False
    JanuaLogger = JanuaDBLogger1
    Language = jlaNone
    TestMode = False
    Connected = False
    JanuaMailSender = JanuaMailSender1
    KeepAlive = False
    NetHTTPRequest = NetHTTPRequest1
    SessionID = 0
    JanuaServerSystem = JanuaPostgresSystem
    Left = 320
    Top = 336
  end
end
