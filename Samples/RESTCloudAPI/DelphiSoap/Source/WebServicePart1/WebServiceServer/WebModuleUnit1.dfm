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
      Name = 'WebActionItemNumberGet'
      PathInfo = '/Number'
      OnAction = WebModule1WebActionItemNumberGetAction
    end>
  Height = 230
  Width = 415
end
