object JanuaRestCloudDataModule: TJanuaRestCloudDataModule
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 317
  Width = 605
  object DataSource: TDataSource
    DataSet = FDMemTable1
    Left = 116
    Top = 212
  end
  object OAuth1_FitBit: TOAuth1Authenticator
    AccessTokenEndpoint = 'https://api.fitbit.com/oauth/access_token'
    RequestTokenEndpoint = 'https://api.fitbit.com/oauth/request_token'
    AuthenticationEndpoint = 'https://www.fitbit.com/oauth/authorize'
    CallbackEndpoint = 'oob'
    Left = 360
    Top = 108
  end
  object OAuth1_Twitter: TOAuth1Authenticator
    AccessTokenEndpoint = 'https://api.twitter.com/oauth/access_token'
    RequestTokenEndpoint = 'https://api.twitter.com/oauth/request_token'
    AuthenticationEndpoint = 'https://api.twitter.com/oauth/authenticate'
    CallbackEndpoint = 'oob'
    Left = 360
    Top = 44
  end
  object HTTPBasic_DelphiPRAXiS: THTTPBasicAuthenticator
    Username = 'BAAS'
    Password = 'test'
    Left = 480
    Top = 204
  end
  object OAuth2_GoogleTasks: TOAuth2Authenticator
    AccessTokenEndpoint = 'https://accounts.google.com/o/oauth2/token'
    AccessTokenExpiry = 41488.448189351900000000
    AuthorizationEndpoint = 'https://accounts.google.com/o/oauth2/auth'
    RedirectionEndpoint = 'urn:ietf:wg:oauth:2.0:oob'
    Scope = 'https://www.googleapis.com/auth/tasks'
    Left = 480
    Top = 132
    AccessTokenExpiryDate = 41488.4481893519d
  end
  object OAuth2_Facebook: TOAuth2Authenticator
    AuthorizationEndpoint = 'https://www.facebook.com/dialog/oauth'
    RedirectionEndpoint = 'https://www.facebook.com/connect/login_success.html'
    ResponseType = rtTOKEN
    Scope = 'user_about_me,user_birthday'
    Left = 480
    Top = 68
  end
  object OAuth2_Foursquare: TOAuth2Authenticator
    AccessTokenParamName = 'oauth_token'
    AuthorizationEndpoint = 'https://foursquare.com/oauth2/authenticate'
    ResponseType = rtTOKEN
    Left = 360
    Top = 236
  end
  object OAuth2_Dropbox: TOAuth2Authenticator
    AuthorizationEndpoint = 'https://www.dropbox.com/1/oauth2/authorize'
    ResponseType = rtTOKEN
    Left = 360
    Top = 172
  end
  object RESTResponseDataSetAdapter: TRESTResponseDataSetAdapter
    FieldDefs = <>
    Left = 112
    Top = 84
  end
  object RESTResponse: TRESTResponse
    Left = 112
    Top = 12
  end
  object RESTRequest: TRESTRequest
    Client = RESTClient
    Params = <>
    Response = RESTResponse
    OnAfterExecute = RESTRequestAfterExecute
    SynchronizedEvents = False
    Left = 200
    Top = 12
  end
  object RESTClient: TRESTClient
    Authenticator = OAuth1_FitBit
    Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Params = <>
    Left = 32
    Top = 12
  end
  object FDMemTable1: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 112
    Top = 152
  end
end
