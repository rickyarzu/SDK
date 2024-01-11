object uFormsFrame: TuFormsFrame
  Left = 0
  Top = 0
  Width = 472
  Height = 315
  Color = clBtnFace
  Align = alNone
  Anchors = [akLeft, akTop]
  ShowHint = False
  Visible = True
  Font.Charset = DEFAULT_CHARSET
  Font.Height = -11
  Font.Name = 'Tahoma'
  TabOrder = 0
  object UniButton1: TUniButton
    Left = 80
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Form'
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Height = -11
    Font.Name = 'Tahoma'
    TabOrder = 0
    OnClick = UniButton1Click
  end
  object UniButton2: TUniButton
    Left = 80
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Modal Form'
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Height = -11
    Font.Name = 'Tahoma'
    TabOrder = 1
    OnClick = UniButton2Click
  end
  object UniButton3: TUniButton
    Left = 80
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Dialog Form'
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Height = -11
    Font.Name = 'Tahoma'
    TabOrder = 2
    OnClick = UniButton3Click
  end
  object UniButton4: TUniButton
    Left = 80
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Align'
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Height = -11
    Font.Name = 'Tahoma'
    TabOrder = 3
    OnClick = UniButton4Click
  end
  object UniButton5: TUniButton
    Left = 80
    Top = 232
    Width = 75
    Height = 25
    Caption = 'Anchor'
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Height = -11
    Font.Name = 'Tahoma'
    TabOrder = 4
    OnClick = UniButton5Click
  end
end
