object UniFormControlsEditEvents: TUniFormControlsEditEvents
  Left = 0
  Top = 0
  Width = 518
  Height = 376
  OnCreate = UniFrameCreate
  TabOrder = 0
  ParentRTL = False
  DesignSize = (
    518
    376)
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 515
    Height = 369
    Hint = ''
    ParentColor = False
    Anchors = []
    TabOrder = 0
    DesignSize = (
      515
      369)
    object UniEdit1: TUniEdit
      Left = 144
      Top = 19
      Width = 121
      Hint = ''
      Text = ''
      Anchors = []
      TabOrder = 0
      OnChange = UniEdit1Change
    end
    object UniLabel1: TUniLabel
      Left = 40
      Top = 25
      Width = 41
      Height = 13
      Hint = ''
      Caption = 'Change:'
      Anchors = []
      TabOrder = 24
    end
    object UniEdit2: TUniEdit
      Left = 296
      Top = 16
      Width = 121
      Hint = ''
      Text = ''
      Anchors = []
      TabOrder = 1
      ReadOnly = True
    end
    object UniEdit3: TUniEdit
      Left = 144
      Top = 47
      Width = 121
      Hint = ''
      Text = 'Click This'
      Anchors = []
      TabOrder = 2
      ReadOnly = True
      OnClick = UniEdit3Click
    end
    object UniEdit4: TUniEdit
      Left = 296
      Top = 47
      Width = 121
      Hint = ''
      Text = ''
      Anchors = []
      TabOrder = 3
      ReadOnly = True
    end
    object UniEdit5: TUniEdit
      Left = 144
      Top = 75
      Width = 121
      Hint = ''
      Text = 'Double Click This'
      Anchors = []
      TabOrder = 4
      ReadOnly = True
      OnDblClick = UniEdit5DblClick
    end
    object UniEdit6: TUniEdit
      Left = 296
      Top = 75
      Width = 121
      Hint = ''
      Text = ''
      Anchors = []
      TabOrder = 5
      ReadOnly = True
    end
    object UniLabel2: TUniLabel
      Left = 40
      Top = 56
      Width = 25
      Height = 13
      Hint = ''
      Caption = 'Click:'
      Anchors = []
      TabOrder = 25
    end
    object UniLabel3: TUniLabel
      Left = 40
      Top = 84
      Width = 61
      Height = 13
      Hint = ''
      Caption = 'Double Click:'
      Anchors = []
      TabOrder = 26
    end
    object UniEdit10: TUniEdit
      Left = 296
      Top = 131
      Width = 121
      Hint = ''
      Text = ''
      Anchors = []
      TabOrder = 9
      ReadOnly = True
    end
    object UniEdit11: TUniEdit
      Left = 144
      Top = 159
      Width = 121
      Hint = ''
      Text = 'Down F2 Key'
      Anchors = []
      TabOrder = 10
      OnKeyDown = UniEdit11KeyDown
    end
    object UniEdit12: TUniEdit
      Left = 296
      Top = 159
      Width = 121
      Hint = ''
      Text = ''
      Anchors = []
      TabOrder = 11
      ReadOnly = True
    end
    object UniEdit13: TUniEdit
      Left = 144
      Top = 187
      Width = 121
      Hint = ''
      Text = 'Press a'
      Anchors = []
      TabOrder = 12
      ReadOnly = True
      OnKeyPress = UniEdit13KeyPress
    end
    object UniEdit14: TUniEdit
      Left = 296
      Top = 187
      Width = 121
      Hint = ''
      Text = ''
      Anchors = []
      TabOrder = 13
    end
    object UniEdit15: TUniEdit
      Left = 144
      Top = 215
      Width = 121
      Hint = ''
      Text = 'Up F2 Key'
      Anchors = []
      TabOrder = 14
      ReadOnly = True
      OnKeyUp = UniEdit15KeyUp
    end
    object UniEdit16: TUniEdit
      Left = 296
      Top = 215
      Width = 121
      Hint = ''
      Text = ''
      Anchors = []
      TabOrder = 15
      ReadOnly = True
    end
    object UniEdit7: TUniEdit
      Left = 144
      Top = 103
      Width = 121
      Hint = ''
      Text = 'Enter This Edit'
      Anchors = []
      TabOrder = 6
      ReadOnly = True
      OnEnter = UniEdit7Enter
    end
    object UniEdit8: TUniEdit
      Left = 296
      Top = 103
      Width = 121
      Hint = ''
      Text = ''
      Anchors = []
      TabOrder = 7
      ReadOnly = True
    end
    object UniEdit9: TUniEdit
      Left = 144
      Top = 131
      Width = 121
      Hint = ''
      Text = 'Exit This Edit'
      Anchors = []
      TabOrder = 8
      ReadOnly = True
      OnExit = UniEdit9Exit
    end
    object UniLabel4: TUniLabel
      Left = 40
      Top = 112
      Width = 30
      Height = 13
      Hint = ''
      Caption = 'Enter:'
      Anchors = []
      TabOrder = 27
    end
    object UniLabel5: TUniLabel
      Left = 40
      Top = 140
      Width = 22
      Height = 13
      Hint = ''
      Caption = 'Exit:'
      Anchors = []
      TabOrder = 28
    end
    object UniLabel6: TUniLabel
      Left = 40
      Top = 168
      Width = 52
      Height = 13
      Hint = ''
      Caption = 'Key Down:'
      Anchors = []
      TabOrder = 29
    end
    object UniLabel7: TUniLabel
      Left = 40
      Top = 196
      Width = 51
      Height = 13
      Hint = ''
      Caption = 'Key Press:'
      Anchors = []
      TabOrder = 30
    end
    object UniLabel8: TUniLabel
      Left = 40
      Top = 224
      Width = 38
      Height = 13
      Hint = ''
      Caption = 'Key Up:'
      Anchors = []
      TabOrder = 31
    end
    object UniEdit17: TUniEdit
      Left = 144
      Top = 243
      Width = 121
      Hint = ''
      Text = 'Right Button Down'
      Anchors = []
      TabOrder = 16
      ReadOnly = True
      OnMouseDown = UniEdit17MouseDown
    end
    object UniEdit18: TUniEdit
      Left = 296
      Top = 243
      Width = 121
      Hint = ''
      Text = ''
      Anchors = []
      TabOrder = 17
      ReadOnly = True
    end
    object UniEdit19: TUniEdit
      Left = 144
      Top = 271
      Width = 121
      Hint = ''
      Text = 'Right Button Up'
      Anchors = []
      TabOrder = 18
      ReadOnly = True
      OnMouseUp = UniEdit19MouseUp
    end
    object UniEdit20: TUniEdit
      Left = 296
      Top = 271
      Width = 121
      Hint = ''
      Text = ''
      Anchors = []
      TabOrder = 19
      ReadOnly = True
    end
    object UniEdit21: TUniEdit
      Left = 144
      Top = 299
      Width = 121
      Hint = ''
      Text = 'Enter The Mouse'
      Anchors = []
      TabOrder = 20
      ReadOnly = True
      OnMouseEnter = UniEdit21MouseEnter
    end
    object UniEdit22: TUniEdit
      Left = 296
      Top = 299
      Width = 121
      Hint = ''
      Text = ''
      Anchors = []
      TabOrder = 21
      ReadOnly = True
    end
    object UniEdit23: TUniEdit
      Left = 144
      Top = 327
      Width = 121
      Hint = ''
      Text = 'Leave The Mouse'
      Anchors = []
      TabOrder = 22
      ReadOnly = True
      OnMouseLeave = UniEdit23MouseLeave
    end
    object UniEdit24: TUniEdit
      Left = 296
      Top = 327
      Width = 121
      Hint = ''
      Text = ''
      Anchors = []
      TabOrder = 23
      ReadOnly = True
    end
    object UniLabel10: TUniLabel
      Left = 40
      Top = 280
      Width = 75
      Height = 13
      Hint = ''
      Caption = 'Mouse Click Up:'
      Anchors = []
      TabOrder = 32
    end
    object UniLabel11: TUniLabel
      Left = 40
      Top = 308
      Width = 64
      Height = 13
      Hint = ''
      Caption = 'Mouse Enter:'
      Anchors = []
      TabOrder = 33
    end
    object UniLabel12: TUniLabel
      Left = 40
      Top = 336
      Width = 67
      Height = 13
      Hint = ''
      Caption = 'Mouse Leave:'
      Anchors = []
      TabOrder = 34
    end
    object UniLabel9: TUniLabel
      Left = 40
      Top = 252
      Width = 89
      Height = 13
      Hint = ''
      Caption = 'Mouse Click Down:'
      Anchors = []
      TabOrder = 35
    end
  end
end
