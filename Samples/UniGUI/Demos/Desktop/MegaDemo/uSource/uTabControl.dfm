object uTabControlFrame: TuTabControlFrame
  Left = 0
  Top = 0
  Width = 538
  Height = 383
  OnCreate = UniFrameCreate
  Align = alNone
  Anchors = [akLeft, akTop]
  ShowHint = False
  Visible = True
  TabOrder = 0
  ParentFont = False
  object UniTabControl1: TUniTabControl
    Left = 32
    Top = 32
    Width = 480
    Height = 300
    TabIndex = 0
    Tabs.Strings = (
      'Tab0'
      'Tab1'
      'Tab2')
    OnChange = UniTabControl1Change
    TabOrder = 0
    object UniLabel1: TUniLabel
      Left = 176
      Top = 144
      Width = 95
      Height = 23
      Caption = 'UniLabel1'
      ParentFont = False
      Font.Height = -19
      Font.Style = [fsBold]
      Color = clBtnFace
    end
  end
end
