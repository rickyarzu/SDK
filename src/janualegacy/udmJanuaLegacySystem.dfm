object dmJanuaLegacySystem: TdmJanuaLegacySystem
  OldCreateOrder = False
  Height = 145
  Width = 136
  object Registry: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 56
    Top = 16
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
  object PublicRegistry: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 56
    Top = 80
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
end
