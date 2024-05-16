object WebModuleTestPostGet: TWebModuleTestPostGet
  Actions = <
    item
      Default = True
      MethodType = mtGet
      Name = 'DefaultGet'
      PathInfo = '/'
      OnAction = WebModule1DefaultHandlerAction
    end
    item
      MethodType = mtPost
      Name = 'DefaultPost'
      OnAction = WebModule1DefaultPostAction
    end>
  Height = 404
  Width = 467
end
