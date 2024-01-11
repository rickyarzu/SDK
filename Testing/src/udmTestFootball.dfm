inherited dmTestFootball: TdmTestFootball
  OldCreateOrder = True
  inherited JanuaCoreLogger1: TJanuaCoreLogger
    Component = Owner
  end
  object JanuaServerPgFootball1: TJanuaServerPgFootball
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    Connected = False
    KeepAlive = False
    SessionID = 0
    GoalRankingLimit = 0
    Left = 384
    Top = 136
  end
  object JanuaPgTemplateFootball1: TJanuaPgTemplateFootball
    Verbose = False
    LogToFile = False
    JanuaLogger = JanuaCoreLogger1
    Language = jlaItalian
    TestMode = False
    Connected = False
    JanuaMailSender = JanuaMailSender1
    KeepAlive = False
    NetHTTPRequest = NetHTTPRequest1
    SessionID = 0
    JanuaFileCache = JanuaFileCache1
    JanuaCloudOAuth = JanuaCloudOAuth1
    JanuaServerSystem = JanuaPostgresSystem
    UrlAssets = 'http://cdn.ergomercator.com/metronic_v4.7.5'
    RepositoryType = jrtJanuaDir
    PageTemplateFile = 'sportmediapage.html'
    FileNameFooter = 'pagefooter.html'
    FileNameHeader = 'pageheader.html'
    JanuaServerFootball = JanuaServerPgFootball1
    Left = 400
    Top = 184
  end
end
