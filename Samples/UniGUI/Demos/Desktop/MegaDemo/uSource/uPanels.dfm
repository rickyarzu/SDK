object uPanelsFrame: TuPanelsFrame
  Left = 0
  Top = 0
  Width = 499
  Height = 486
  Align = alNone
  Anchors = [akLeft, akTop]
  ShowHint = False
  Visible = True
  TabOrder = 0
  object UniPanel1: TUniPanel
    Left = 32
    Top = 32
    Width = 249
    Height = 137
    BorderStyle = ubsFrameLowered
    Alignment = taCenter
    Caption = 'UniPanel1'
    Color = clSilver
    TabOrder = 0
    object UniMemo1: TUniMemo
      Left = 16
      Top = 16
      Width = 217
      Height = 105
      Lines.Strings = (
        'UniMemo1')
      ParentFont = False
      Color = clWindow
      TabOrder = 0
    end
  end
  object UniPanel2: TUniPanel
    Left = 32
    Top = 175
    Width = 249
    Height = 154
    BorderStyle = ubsFrameRaised
    Alignment = taCenter
    Caption = 'UniPanel2'
    Color = clGray
    TabOrder = 1
    object UniButton1: TUniButton
      Left = 88
      Top = 64
      Width = 75
      Height = 25
      Caption = 'UniButton1'
      ParentFont = False
      TabOrder = 0
    end
  end
  object UniPanel3: TUniPanel
    Left = 287
    Top = 32
    Width = 162
    Height = 137
    BorderStyle = ubsInset
    Alignment = taCenter
    Caption = 'UniPanel3'
    Color = clTeal
    TabOrder = 2
    object UniEdit1: TUniEdit
      Left = 24
      Top = 56
      Width = 121
      Height = 21
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      Text = 'UniEdit1'
      ParentFont = False
      TabOrder = 0
      Color = clWindow
    end
  end
  object UniPanel4: TUniPanel
    Left = 287
    Top = 175
    Width = 162
    Height = 154
    BorderStyle = ubsFrameRaised
    Alignment = taCenter
    Caption = 'UniPanel4'
    Color = clBtnFace
    TabOrder = 3
  end
  object UniPanel5: TUniPanel
    Left = 32
    Top = 335
    Width = 417
    Height = 90
    Alignment = taCenter
    Caption = 'UniPanel5'
    Color = clBtnFace
    TabOrder = 4
  end
  object UniButton2: TUniButton
    Left = 32
    Top = 431
    Width = 75
    Height = 25
    Caption = 'Colors'
    ParentFont = False
    TabOrder = 5
    OnClick = UniButton2Click
  end
end
