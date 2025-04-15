object WebModule1: TWebModule1
  Actions = <
    item
      Default = True
      Name = 'DefaultHandler'
      PathInfo = '/'
      OnAction = WebModule1DefaultHandlerAction
    end
    item
      MethodType = mtGet
      Name = 'Parametri'
      PathInfo = '/parametri'
      OnAction = WebModule1ParametriAction
    end>
  Height = 230
  Width = 415
end
