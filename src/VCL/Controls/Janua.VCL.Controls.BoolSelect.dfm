inherited frameSelectBool: TframeSelectBool
  Width = 99
  ExplicitWidth = 99
  inherited pnlFrameSelector: TPanel
    Width = 99
    ExplicitWidth = 144
    inherited lbDisplayText: TLabel
      Width = 93
      Alignment = taCenter
      ExplicitLeft = 6
      ExplicitTop = 8
      ExplicitWidth = 138
    end
  end
  object chkCheckBox: TCheckBox
    Left = 40
    Top = 31
    Width = 24
    Height = 23
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
    OnClick = chkCheckBoxClick
    ExplicitWidth = 25
  end
end
