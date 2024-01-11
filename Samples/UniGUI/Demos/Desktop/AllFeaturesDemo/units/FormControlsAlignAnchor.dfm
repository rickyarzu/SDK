object UniFormControlsAlignAnchor: TUniFormControlsAlignAnchor
  Left = 0
  Top = 0
  Width = 320
  Height = 240
  TabOrder = 0
  ParentRTL = False
  DesignSize = (
    320
    240)
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 317
    Height = 240
    Hint = ''
    ParentColor = False
    Anchors = []
    TabOrder = 0
    object UniGroupBox4: TUniGroupBox
      Left = 59
      Top = 40
      Width = 181
      Height = 152
      Hint = ''
      Caption = 'Form Interaction'
      TabOrder = 0
      object UniButton12: TUniButton
        Left = 21
        Top = 94
        Width = 128
        Height = 25
        Hint = ''
        Caption = 'Open Form Anchor'
        TabOrder = 1
        OnClick = UniButton12Click
      end
      object UniButton11: TUniButton
        Left = 21
        Top = 33
        Width = 128
        Height = 25
        Hint = ''
        Caption = 'Open Form Align'
        TabOrder = 2
        OnClick = UniButton11Click
      end
    end
  end
end
