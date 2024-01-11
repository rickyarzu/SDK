object UniFormControlsLabels: TUniFormControlsLabels
  Left = 0
  Top = 0
  Width = 493
  Height = 380
  TabOrder = 0
  ParentRTL = False
  DesignSize = (
    493
    380)
  object UniContainerPanel1: TUniContainerPanel
    Left = 3
    Top = 3
    Width = 490
    Height = 374
    Hint = ''
    ParentColor = False
    Anchors = []
    TabOrder = 0
    object UniLabel1: TUniLabel
      Left = 24
      Top = 16
      Width = 35
      Height = 13
      Hint = ''
      Caption = 'Default'
      TabOrder = 0
    end
    object UniLabel2: TUniLabel
      Left = 24
      Top = 35
      Width = 71
      Height = 13
      Hint = ''
      Caption = 'Different Color'
      ParentFont = False
      Font.Color = clTeal
      ParentColor = False
      Color = clBtnFace
      TabOrder = 1
    end
    object UniLabel3: TUniLabel
      Left = 24
      Top = 54
      Width = 24
      Height = 13
      Hint = ''
      Caption = 'Bold'
      ParentFont = False
      Font.Style = [fsBold]
      TabOrder = 2
    end
    object UniLabel4: TUniLabel
      Left = 24
      Top = 73
      Width = 23
      Height = 13
      Hint = ''
      Caption = 'Italic'
      ParentFont = False
      Font.Style = [fsItalic]
      TabOrder = 3
    end
    object UniLabel5: TUniLabel
      Left = 24
      Top = 92
      Width = 45
      Height = 13
      Hint = ''
      Caption = 'Underline'
      ParentFont = False
      Font.Style = [fsUnderline]
      TabOrder = 4
    end
    object UniLabel6: TUniLabel
      Left = 24
      Top = 111
      Width = 45
      Height = 13
      Hint = ''
      Caption = 'StrikeOut'
      ParentFont = False
      Font.Style = [fsStrikeOut]
      TabOrder = 5
    end
    object UniLabel7: TUniLabel
      Left = 24
      Top = 130
      Width = 40
      Height = 13
      Hint = ''
      Enabled = False
      Caption = 'Disabled'
      TabOrder = 6
    end
    object UniLabel8: TUniLabel
      Left = 24
      Top = 149
      Width = 41
      Height = 13
      Hint = ''
      Caption = 'Clickable'
      ParentFont = False
      Font.Color = clHotLight
      TabOrder = 7
      OnDblClick = UniLabel8DblClick
    end
    object UniLabel9: TUniLabel
      Left = 24
      Top = 168
      Width = 354
      Height = 13
      Hint = ''
      TextConversion = txtHTML
      Caption = 
        '<a target="_blank" href="http://forums.unigui.com/">UniGui Forum' +
        '</a>'
      TabOrder = 8
    end
    object UniLabel11: TUniLabel
      Left = 24
      Top = 187
      Width = 190
      Height = 39
      Hint = ''
      Caption = 'Different Size'
      ParentFont = False
      Font.Height = -32
      TabOrder = 9
    end
    object UniLabel12: TUniLabel
      Left = 24
      Top = 232
      Width = 152
      Height = 23
      Hint = ''
      Caption = 'Different Font Type'
      ParentFont = False
      Font.Height = -16
      Font.Name = 'Comic Sans MS'
      TabOrder = 10
    end
  end
end
