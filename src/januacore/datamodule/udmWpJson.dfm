object dmWpJson: TdmWpJson
  OldCreateOrder = False
  Height = 243
  Width = 338
  object RESTClient1: TRESTClient
    Authenticator = OAuth2Authenticator1
    Params = <>
    Left = 88
    Top = 72
  end
  object OAuth2Authenticator1: TOAuth2Authenticator
    TokenType = ttBEARER
    Left = 208
    Top = 40
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Method = rmPOST
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 208
    Top = 112
  end
  object RESTResponse1: TRESTResponse
    Left = 88
    Top = 152
  end
end
