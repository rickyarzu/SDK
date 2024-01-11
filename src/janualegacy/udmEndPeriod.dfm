object dmEndPeriod: TdmEndPeriod
  Height = 334
  Width = 547
  object spChiusuraCE: TUniStoredProc
    StoredProcName = 'PD_PKG.TOTAL_AMOUNT_PROFITLOSS'
    SQL.Strings = (
      'begin'
      '  PD_PKG.TOTAL_AMOUNT_PROFITLOSS(:P_YEAR);'
      'end;')
    Connection = OraSession1
    Left = 56
    Top = 232
    ParamData = <
      item
        DataType = ftString
        Name = 'P_YEAR'
        ParamType = ptInput
        Value = nil
      end>
  end
  object spChiusuraCliFor: TUniStoredProc
    StoredProcName = 'PD_PKG.TOTAL_AMOUNT_CUSTSUPP'
    SQL.Strings = (
      'begin'
      '  PD_PKG.TOTAL_AMOUNT_CUSTSUPP(:P_YEAR);'
      'end;')
    Connection = OraSession1
    Left = 56
    Top = 32
    ParamData = <
      item
        DataType = ftString
        Name = 'P_YEAR'
        ParamType = ptInput
        Value = nil
      end>
  end
  object spUtilePerdita: TUniStoredProc
    StoredProcName = 'PD_PKG.PROFITLOSSCALULATION'
    SQL.Strings = (
      'begin'
      '  PD_PKG.PROFITLOSSCALULATION(:P_YEAR);'
      'end;')
    Connection = OraSession1
    Left = 56
    Top = 80
    ParamData = <
      item
        DataType = ftString
        Name = 'P_YEAR'
        ParamType = ptInput
        Value = nil
      end>
  end
  object spChiusuraBilancio: TUniStoredProc
    StoredProcName = 'PD_PKG.TOTAL_AMOUNT_BALANCE'
    SQL.Strings = (
      'begin'
      '  PD_PKG.TOTAL_AMOUNT_BALANCE(:P_YEAR);'
      'end;')
    Connection = OraSession1
    Left = 56
    Top = 128
    ParamData = <
      item
        DataType = ftString
        Name = 'P_YEAR'
        ParamType = ptInput
        Value = nil
      end>
  end
  object spAperturaBilancio: TUniStoredProc
    StoredProcName = 'PD_PKG.OPEN_BALANCE'
    SQL.Strings = (
      'begin'
      '  PD_PKG.OPEN_BALANCE(:P_YEAR);'
      'end;')
    Connection = OraSession1
    Left = 56
    Top = 176
    ParamData = <
      item
        DataType = ftString
        Name = 'P_YEAR'
        ParamType = ptInput
        Value = nil
      end>
  end
  object OraSession1: TJanuaUniConnection
    SchemaParamKey = 'system.db_schema_id'
    SchemaParams = <>
    Left = 448
    Top = 48
  end
end
