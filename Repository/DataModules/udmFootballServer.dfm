inherited dmFootballServer: TdmFootballServer
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  inherited JanuaCoreLogger1: TJanuaCoreLogger
    Component = Owner
  end
  object JanuaServerPgFootball: TJanuaServerPgFootball
    Verbose = False
    LogToFile = False
    JanuaLogger = JanuaCoreLogger1
    Language = jlaItalian
    IsServer = True
    TestMode = False
    Connected = False
    JanuaMailSender = JanuaMailSender1
    KeepAlive = False
    NetHTTPRequest = NetHTTPRequest1
    SessionID = 0
    JanuaSystem = JanuaPostgresSystem
    TemplateName = 'dilettantissimo'
    JanuaCms = JanuaServerPgCms
    GoalRankingLimit = 0
    Left = 392
    Top = 248
  end
  object JanuaPgTemplateFootball1: TJanuaPgTemplateFootball
    Verbose = False
    LogToFile = False
    JanuaLogger = JanuaCoreLogger1
    Language = jlaNone
    IsServer = True
    TestMode = False
    DebugMode = True
    Connected = False
    JanuaMailSender = JanuaMailSender1
    KeepAlive = True
    NetHTTPRequest = NetHTTPRequest1
    SessionID = 0
    JanuaFileCache = JanuaFileCache1
    JanuaCloudOAuth = JanuaCloudOAuth1
    JanuaServerSystem = JanuaPostgresSystem
    UrlAssets = 'http://cdn.ergomercator.com/metronic_v4.7.5'
    RepositoryType = jrtJanuaDir
    LocalApp = True
    NameSpace = 'settimanasport.com'
    PageTemplateFile = 'sportmediapage.html'
    FileNameFooter = 'pagefooter.html'
    FileNameHeader = 'pageheader.html'
    JanuaServerFootball = JanuaServerPgFootball
    Left = 392
    Top = 48
  end
  object JanuaPgFootballWebController1: TJanuaPgFootballWebController
    Verbose = False
    LogToFile = False
    JanuaLogger = JanuaCoreLogger1
    Language = jlaNone
    IsServer = True
    TestMode = False
    DebugMode = True
    JanuaMailSender = JanuaMailSender1
    Mime.MimeString = 'application/json'
    Mime.MimeType = jmtApplicationJson
    Mime.Charset = jcsUnknown
    Mime.MimeList.Strings = (
      'application/json'
      'application/xml'
      'text/html'
      'text/css'
      'text/xml'
      'text/plain'
      'application/octet-stream'
      'application/javascript'
      '')
    SessionUID = 0
    Test = False
    LoginFailed = False
    JanuaSystem = JanuaPostgresSystem
    Persistent = True
    Latitude = 9.208092500000000000
    Longitude = 45.465523600000000000
    FacebookActionScopes = []
    JanuaCloudOAuth = JanuaCloudOAuth1
    JanuaServerFootball = JanuaServerPgFootball
    JanuaTemplateFootball = JanuaPgTemplateFootball1
    Left = 392
    Top = 176
  end
  object JanuaPgWebSessionFootball1: TJanuaPgWebSessionFootball
    Verbose = False
    LogToFile = False
    JanuaLogger = JanuaCoreLogger1
    Language = jlaNone
    IsServer = True
    TestMode = False
    DebugMode = True
    JanuaSystem = JanuaPostgresSystem
    Persistent = False
    JanuaFootballController = JanuaPgFootballWebController1
    JanuaPgFootballWebController = JanuaPgFootballWebController1
    Left = 392
    Top = 112
  end
end
