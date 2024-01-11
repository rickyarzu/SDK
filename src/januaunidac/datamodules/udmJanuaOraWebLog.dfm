inherited dmJanuaOraWebLog: TdmJanuaOraWebLog
  OldCreateOrder = True
  inherited OraErgoSession: TJanuaUniConnection
    Top = 192
    EncryptedPassword = '9AFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  object spWebLogRecord: TUniStoredProc
    StoredProcName = 'WEBLOGS.RECORDLOG'
    SQL.Strings = (
      'begin'
      
        '  :RESULT := WEBLOGS.RECORDLOG(:P_RAWHEADERS, :P_IPNUMBER, :P_IP' +
        'ADDRESS, :P_PATHINFO, :P_USERAGENT, :P_LANGUAGECODE, :P_REMOTEAD' +
        'DR, :P_HOSTNAME, :P_ISMOBILE, :P_BROWSERNAME, :P_RESX, :P_RESY);'
      'end;')
    Options.AutoPrepare = True
    Left = 64
    Top = 248
    ParamData = <
      item
        DataType = ftFloat
        Name = 'RESULT'
        ParamType = ptOutput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'P_RAWHEADERS'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'P_IPNUMBER'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'P_IPADDRESS'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'P_PATHINFO'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'P_USERAGENT'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'P_LANGUAGECODE'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'P_REMOTEADDR'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'P_HOSTNAME'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'P_ISMOBILE'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'P_BROWSERNAME'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'P_RESX'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'P_RESY'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'WEBLOGS.RECORDLOG'
  end
end
