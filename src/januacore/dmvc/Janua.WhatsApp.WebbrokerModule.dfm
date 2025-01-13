object JanuaWhatSappWebBrokerModule: TJanuaWhatSappWebBrokerModule
  OnCreate = WebModuleCreate
  OnDestroy = WebModuleDestroy
  Actions = <
    item
      Default = True
      MethodType = mtGet
      Name = 'DefaultHandler'
      PathInfo = '/'
      OnAction = WebModule1DefaultHandlerAction
    end
    item
      MethodType = mtPost
      Name = 'WactWebhook'
      PathInfo = '/webhook'
      OnAction = WebModule1WactWebhookAction
    end
    item
      MethodType = mtPost
      Name = 'WactFallback'
      PathInfo = '/fallback'
      OnAction = WebModule1WactFallbackAction
    end
    item
      MethodType = mtPost
      Name = 'WactStatusCallback'
      PathInfo = '/status_callback'
      OnAction = WebModule1WactStatusCallbackAction
    end>
  Height = 337
  Width = 444
end
