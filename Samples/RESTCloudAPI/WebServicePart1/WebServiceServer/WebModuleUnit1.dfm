object WebModule1: TWebModule1
  OldCreateOrder = False
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
