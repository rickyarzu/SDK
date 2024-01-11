object UniMaskUniMask: TUniMaskUniMask
  Left = 0
  Top = 0
  Width = 615
  Height = 423
  TabOrder = 0
  ParentRTL = False
  DesignSize = (
    615
    423)
  object UniContainerPanel1: TUniContainerPanel
    Left = 3
    Top = 3
    Width = 606
    Height = 414
    Hint = ''
    ParentColor = False
    Anchors = []
    ScreenMask.Enabled = True
    TabOrder = 0
    object UniPanel1: TUniPanel
      Left = 20
      Top = 24
      Width = 561
      Height = 185
      Hint = ''
      TabOrder = 0
      Caption = 'UniPanel1'
      object UniButton2: TUniButton
        Left = 24
        Top = 104
        Width = 125
        Height = 25
        Hint = ''
        Caption = 'Mask Form'
        TabOrder = 0
        ScreenMask.Enabled = True
        ScreenMask.Message = 'Demo Masked'
        ScreenMask.Target = Owner
        OnClick = UniButton1Click
      end
      object UniButton1: TUniButton
        Left = 24
        Top = 16
        Width = 125
        Height = 25
        Hint = ''
        Caption = 'Mask Panel'
        TabOrder = 1
        ScreenMask.Enabled = True
        ScreenMask.Message = 'Panel Masked...'
        ScreenMask.Target = UniPanel1
        OnClick = UniButton1Click
      end
    end
    object UniDBGrid1: TUniDBGrid
      Left = 196
      Top = 215
      Width = 385
      Height = 185
      Hint = ''
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgTabs, dgCancelOnExit]
      LoadMask.Message = 'Loading data...'
      TabOrder = 1
    end
    object UniButton4: TUniButton
      Left = 44
      Top = 224
      Width = 125
      Height = 25
      Hint = ''
      Caption = 'Mask DBGrid'
      TabOrder = 2
      ScreenMask.Enabled = True
      ScreenMask.Message = 'DBGrid Masked...'
      ScreenMask.Target = UniDBGrid1
      OnClick = UniButton1Click
    end
    object UniButton3: TUniButton
      Left = 44
      Top = 343
      Width = 120
      Height = 25
      Hint = ''
      Caption = 'No Message'
      TabOrder = 3
      ScreenMask.Enabled = True
      ScreenMask.ShowMessage = False
      ScreenMask.Color = 16744576
      OnClick = UniButton1Click
    end
    object UniButton5: TUniButton
      Left = 44
      Top = 279
      Width = 120
      Height = 25
      Hint = ''
      Caption = 'Different Color'
      TabOrder = 4
      ScreenMask.Enabled = True
      ScreenMask.Message = 'Please Wait...'
      ScreenMask.Color = 16744448
      OnClick = UniButton1Click
    end
  end
end
