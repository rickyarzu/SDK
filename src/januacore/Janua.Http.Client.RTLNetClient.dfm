object dmNetHTTPClient: TdmNetHTTPClient
  Height = 145
  Width = 271
  object NetHTTPClient1: TNetHTTPClient
    UserAgent = 'Embarcadero URI Client/1.0'
    Left = 72
    Top = 32
  end
  object NetHTTPRequest1: TNetHTTPRequest
    Client = NetHTTPClient1
    Left = 176
    Top = 64
  end
end
