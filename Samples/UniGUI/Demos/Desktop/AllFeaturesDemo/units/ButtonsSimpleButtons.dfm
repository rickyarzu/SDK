object UniButtonsSimpleButtons: TUniButtonsSimpleButtons
  Left = 0
  Top = 0
  Width = 629
  Height = 525
  TabOrder = 0
  ParentRTL = False
  DesignSize = (
    629
    525)
  object UniContainerPanel1: TUniContainerPanel
    Left = 113
    Top = 93
    Width = 409
    Height = 345
    Hint = ''
    ParentColor = False
    Anchors = []
    TabOrder = 0
    object UniButton1: TUniButton
      Left = 24
      Top = 16
      Width = 100
      Height = 25
      Hint = ''
      Caption = 'UniButton1'
      TabOrder = 0
    end
    object UniButton2: TUniButton
      Left = 128
      Top = 16
      Width = 100
      Height = 25
      Hint = ''
      Caption = 'UniButton2'
      ParentFont = False
      Font.Style = [fsItalic]
      TabOrder = 1
    end
    object UniButton3: TUniButton
      Left = 232
      Top = 16
      Width = 100
      Height = 25
      Hint = ''
      Caption = 'UniButton3'
      ParentFont = False
      Font.Style = [fsBold, fsItalic]
      TabOrder = 2
    end
    object UniButton4: TUniButton
      Left = 24
      Top = 64
      Width = 100
      Height = 25
      Hint = ''
      Caption = 'UniButton4'
      ParentFont = False
      Font.Style = [fsBold]
      TabOrder = 3
    end
    object UniButton5: TUniButton
      Left = 24
      Top = 112
      Width = 120
      Height = 73
      Hint = ''
      Caption = 'UniButton5'
      ParentFont = False
      Font.Height = -16
      Font.Style = [fsBold]
      TabOrder = 4
    end
    object UniButton6: TUniButton
      Left = 24
      Top = 208
      Width = 120
      Height = 25
      Hint = ''
      Caption = 'UniButton6'
      ParentFont = False
      Font.Color = clGreen
      TabOrder = 5
    end
    object UniButton7: TUniButton
      Left = 128
      Top = 64
      Width = 100
      Height = 25
      Hint = ''
      Enabled = False
      Caption = 'Disabled Button'
      TabOrder = 7
    end
  end
end
