inherited frameSelectFloat: TframeSelectFloat
  Width = 160
  ExplicitWidth = 160
  inherited pnlFrameSelector: TPanel
    Width = 160
    ExplicitWidth = 160
    inherited lbDisplayText: TLabel
      Width = 154
    end
  end
  object edFloat: TJvCalcEdit
    AlignWithMargins = True
    Left = 3
    Top = 28
    Width = 154
    Height = 26
    Align = alClient
    DisplayFormat = ',0.00'
    TabOrder = 1
    DecimalPlacesAlwaysShown = True
    OnChange = edFloatChange
    ExplicitHeight = 28
  end
end
