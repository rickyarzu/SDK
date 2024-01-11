object dmAppConf: TdmAppConf
  OldCreateOrder = False
  Height = 147
  Width = 311
  object JanuaCoreLogger1: TJanuaCoreLogger
    Component = Owner
    LogType = jltError
    AutoFileName = True
    IsCustomServer = False
    ErrorFileName = 'Error'
    LogFileName = 'Log'
    Left = 56
    Top = 16
  end
  object JanuaConf1: TJanuaConf
    ApplicationType = jatDefault
    Verbose = False
    LogToFile = False
    Language = jlaItalian
    TestMode = False
    JanuaOSConfiguration.Verbose = False
    JanuaOSConfiguration.Title = 'Janua Project Test Application'
    JanuaOSConfiguration.CustomServer = False
    JanuaOSConfiguration.ResolveToFile = True
    JanuaOSConfiguration.UseCurrentDir = True
    JanuaOSConfiguration.Directory = '.'
    JanuaOSConfiguration.LinuxHome = '/home/januapro/'
    JanuaOSConfiguration.HomeDirectory = johDefault
    Protocol = jptHttp
    AssetsUrl = 'http://cdn.ergomercator.com/metronic_v4.7.5'
    AppUrl = 'almanacco.settimanasport.com'
    JanuaServerConf.Verbose = False
    JanuaServerConf.Address = 'pg.januaservers.com'
    JanuaServerConf.Password = '3rg0m3rc4t0r'
    JanuaServerConf.Username = 'ergo'
    JanuaServerConf.Schema = 'system'
    JanuaServerConf.Port = 0
    JanuaServerConf.DatabaseName = 'ergomercator'
    JanuaServerConf.Direct = False
    JanuaServerConf.Directory = '.'
    Left = 144
    Top = 40
  end
end
