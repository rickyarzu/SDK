object dmJanuaSystem: TdmJanuaSystem
  OldCreateOrder = False
  Height = 159
  Width = 225
  object PublicRegistry: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'GROUP'
        DataType = ftWideString
        Size = 60
      end
      item
        Name = 'STRING'
        DataType = ftWideString
        Size = 60
      end
      item
        Name = 'VALUE'
        DataType = ftWideString
        Size = 2000
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 56
    Top = 72
    object PublicRegistryGROUP: TWideStringField
      FieldName = 'GROUP'
      Size = 60
    end
    object PublicRegistrySTRING: TWideStringField
      FieldName = 'STRING'
      Size = 60
    end
    object PublicRegistryVALUE: TWideStringField
      FieldName = 'VALUE'
      Size = 2000
    end
  end
  object Registry: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'GROUP'
        DataType = ftWideString
        Size = 60
      end
      item
        Name = 'STRING'
        DataType = ftWideString
        Size = 60
      end
      item
        Name = 'VALUE'
        DataType = ftWideString
        Size = 2000
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 56
    Top = 24
    object RegistryGROUP: TWideStringField
      FieldName = 'GROUP'
      Size = 60
    end
    object RegistrySTRING: TWideStringField
      FieldName = 'STRING'
      Size = 60
    end
    object RegistryVALUE: TWideStringField
      FieldName = 'VALUE'
      Size = 2000
    end
  end
end
