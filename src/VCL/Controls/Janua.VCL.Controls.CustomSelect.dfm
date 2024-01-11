inherited frameVCLCustomSelect: TframeVCLCustomSelect
  AlignWithMargins = True
  inherited pnlFrameSelector: TPanel
    TabOrder = 1
    inherited lbDisplayText: TLabel
      Width = 274
      Margins.Bottom = 3
      Caption = 'Lookup Combo'
      ExplicitWidth = 102
    end
  end
  object cboLookup: TJvDBLookupCombo
    AlignWithMargins = True
    Left = 3
    Top = 25
    Width = 274
    Height = 29
    Margins.Top = 0
    Align = alClient
    LookupField = 'Key'
    LookupDisplay = 'Value'
    LookupSource = dsLookup
    TabOrder = 0
    OnCloseUp = cboLookupCloseUp
  end
  object memLookupTable: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 208
    Top = 16
    object memLookupTableKey: TStringField
      FieldName = 'Key'
      Size = 128
    end
    object memLookupTableValue: TStringField
      FieldName = 'Value'
      Size = 256
    end
  end
  object dsLookup: TDataSource
    DataSet = memLookupTable
    Left = 128
    Top = 16
  end
end
