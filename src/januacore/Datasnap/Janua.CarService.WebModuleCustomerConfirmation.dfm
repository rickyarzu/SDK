object wmCarserviceCustomerConfirmation: TwmCarserviceCustomerConfirmation
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
      Name = 'PostHandler'
      PathInfo = '/'
      OnAction = wmCarserviceCustomerConfirmationPostHandlerAction
    end>
  Height = 230
  Width = 415
end
