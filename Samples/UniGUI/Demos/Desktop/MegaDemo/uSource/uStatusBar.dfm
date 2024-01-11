object uStatusBarFrame: TuStatusBarFrame
  Left = 0
  Top = 0
  Width = 491
  Height = 325
  Color = clBtnFace
  Align = alNone
  Anchors = [akLeft, akTop]
  ShowHint = False
  Visible = True
  Font.Charset = DEFAULT_CHARSET
  Font.Height = -11
  Font.Name = 'Tahoma'
  TabOrder = 0
  DesignSize = (
    491
    325)
  object UniStatusBar1: TUniStatusBar
    Left = 0
    Top = 306
    Width = 491
    Height = 19
    Panels = <
      item
        Text = 'Panel0'
        Width = 100
      end
      item
        Text = 'Panel1'
        Width = 100
      end
      item
        Text = 'Panel2'
        Width = 100
      end
      item
        Text = 'Panel3'
        Width = 100
      end>
    SizeGrip = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBtnText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Align = alBottom
    Anchors = [akLeft, akRight, akBottom]
    ParentColor = False
    Color = clBtnFace
  end
  object UniButton1: TUniButton
    Left = 16
    Top = 275
    Width = 75
    Height = 25
    Caption = 'Click!'
    Anchors = [akLeft, akBottom]
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Height = -11
    Font.Name = 'Tahoma'
    TabOrder = 1
    OnClick = UniButton1Click
  end
end
