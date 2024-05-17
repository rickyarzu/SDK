object JanuaCarServiceCustConfWebBrokerService: TJanuaCarServiceCustConfWebBrokerService
  OnCreate = ServiceCreate
  OnDestroy = ServiceDestroy
  AllowPause = False
  DisplayName = 'Janua Pikapp Customer Service'
  OnStart = ServiceStart
  OnStop = ServiceStop
  Height = 480
  Width = 640
end
