inherited frameSelectInteger: TframeSelectInteger
  Width = 179
  ExplicitWidth = 179
  object seInteger: TSpinEdit [0]
    AlignWithMargins = True
    Left = 3
    Top = 25
    Width = 173
    Height = 30
    Margins.Top = 0
    Align = alClient
    MaxValue = 0
    MinValue = 0
    TabOrder = 0
    Value = 0
    OnChange = seIntegerChange
  end
  inherited pnlFrameSelector: TPanel
    Width = 179
    TabOrder = 1
    inherited lbDisplayText: TLabel
      Width = 173
    end
  end
end
