object MainmForm: TMainmForm
  Left = 0
  Top = 0
  ClientHeight = 353
  ClientWidth = 640
  Caption = 'MainmForm'
  TitleButtons = <>
  PixelsPerInch = 96
  TextHeight = 13
  DesignOrientation = True
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimToolBar1: TUnimToolBar
    Left = 0
    Top = 0
    Width = 640
    Height = 58
    Hint = ''
    ShowTitle = False
    Anchors = [akLeft, akTop, akRight]
    ShowCaptions = True
    Scrollable = True
    Caption = 'UnimToolBar1'
    ExplicitWidth = 400
    object UnimToolButton1: TUnimToolButton
      Left = 0
      Top = 0
      Width = 58
      Height = 58
      Hint = ''
      Caption = 'UnimToolButton1'
      ImageIndex = 0
      OnClick = UnimToolButton1Click
    end
    object UnimToolButton2: TUnimToolButton
      Left = 58
      Top = 0
      Width = 8
      Height = 58
      Hint = ''
      Style = tbsSeparator
      Caption = 'UnimToolButton2'
    end
    object UnimToolButton3: TUnimToolButton
      Left = 66
      Top = 0
      Width = 200
      Height = 58
      Hint = ''
      Style = tbsContainer
      Caption = 'UnimToolButton3'
      object UnimEdit1: TUnimEdit
        Left = 0
        Top = 0
        Width = 181
        Height = 58
        Hint = ''
        Align = alLeft
        Anchors = [akLeft, akTop, akBottom]
        Text = ''
        FieldLabel = 'Edit'
        OnChange = UnimEdit1Change
      end
    end
    object UnimToolButton4: TUnimToolButton
      Left = 266
      Top = 0
      Width = 263
      Height = 58
      Hint = ''
      Style = tbsContainer
      Caption = 'UnimToolButton4'
      object UnimSpinner1: TUnimSpinner
        Left = 0
        Top = 0
        Width = 238
        Height = 58
        Hint = ''
        Align = alLeft
        Anchors = [akLeft, akTop, akBottom]
        Step = 1.000000000000000000
        OnChange = UnimSpinner1Change
      end
    end
  end
  object UnimMemo1: TUnimMemo
    Left = 0
    Top = 58
    Width = 640
    Height = 179
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    Lines.Strings = (
      'UnimMemo1')
    ReadOnly = True
    ExplicitWidth = 400
    ExplicitHeight = 419
  end
  object UnimToolBar3: TUnimToolBar
    Left = 0
    Top = 237
    Width = 640
    Height = 58
    Hint = ''
    ShowTitle = False
    Align = alBottom
    Anchors = [akLeft, akRight, akBottom]
    ShowCaptions = True
    Scrollable = True
    Caption = 'UnimToolBar3'
    ExplicitTop = 477
    ExplicitWidth = 400
    object UnimToolButton8: TUnimToolButton
      Left = 0
      Top = 0
      Width = 222
      Height = 58
      Hint = ''
      Style = tbsContainer
      Caption = 'UnimToolButton8'
      object UnimSlider1: TUnimSlider
        Left = 0
        Top = 0
        Width = 222
        Height = 58
        Hint = ''
        Align = alClient
        Anchors = [akLeft, akTop, akRight, akBottom]
        OnChange = UnimSlider1Change
      end
    end
    object UnimToolButton9: TUnimToolButton
      Left = 222
      Top = 0
      Width = 228
      Height = 58
      Hint = ''
      Style = tbsContainer
      Caption = 'UnimToolButton9'
      object UnimNumberEdit1: TUnimNumberEdit
        Left = 0
        Top = 0
        Width = 225
        Height = 58
        Hint = ''
        Align = alLeft
        Anchors = [akLeft, akTop, akBottom]
        OnChange = UnimNumberEdit1Change
      end
    end
    object UnimToolButton10: TUnimToolButton
      Left = 450
      Top = 0
      Width = 58
      Height = 58
      Hint = ''
      Caption = 'UnimToolButton10'
    end
    object UnimToolButton11: TUnimToolButton
      Left = 508
      Top = 0
      Width = 117
      Height = 58
      Hint = ''
      Style = tbsContainer
      Caption = 'UnimToolButton11'
      object UnimLabel1: TUnimLabel
        Left = 0
        Top = 0
        Width = 117
        Height = 58
        Hint = ''
        Alignment = taCenter
        AutoSize = False
        Caption = 'Label1'
        Align = alClient
        Anchors = [akLeft, akTop, akRight, akBottom]
      end
    end
  end
  object UnimToolBar2: TUnimToolBar
    Left = 0
    Top = 295
    Width = 640
    Height = 58
    Hint = ''
    ShowTitle = False
    Align = alBottom
    Anchors = [akLeft, akRight, akBottom]
    Scrollable = True
    Caption = 'UnimToolBar2'
    ExplicitTop = 535
    ExplicitWidth = 400
    object UnimToolButton6: TUnimToolButton
      Left = 0
      Top = 0
      Width = 216
      Height = 58
      Hint = ''
      Style = tbsContainer
      Caption = 'UnimToolButton6'
      object UnimToggle1: TUnimToggle
        Left = 0
        Top = 0
        Width = 216
        Height = 58
        Hint = ''
        FieldLabel = 'Toggle'
        FieldLabelWidth = 45
        Align = alClient
        Anchors = [akLeft, akTop, akRight, akBottom]
        Toggled = True
        OnChange = UnimToggle1Change
      end
    end
    object UnimToolButton7: TUnimToolButton
      Left = 216
      Top = 0
      Width = 177
      Height = 58
      Hint = ''
      Style = tbsContainer
      Caption = 'UnimToolButton7'
      object UnimDatePicker1: TUnimDatePicker
        Left = 0
        Top = 0
        Width = 171
        Height = 58
        Hint = ''
        Align = alLeft
        Anchors = [akLeft, akTop, akBottom]
        DateFormat = 'dd/MM/yyyy'
        Date = 41997.000000000000000000
        OnChange = UnimDatePicker1Change
      end
    end
    object UnimToolButton5: TUnimToolButton
      Left = 393
      Top = 0
      Width = 194
      Height = 58
      Hint = ''
      Style = tbsContainer
      Caption = 'UnimToolButton5'
      object UnimEdit2: TUnimEdit
        Left = 0
        Top = 0
        Width = 177
        Height = 58
        Hint = ''
        Align = alLeft
        Anchors = [akLeft, akTop, akBottom]
        Text = 'UnimEdit2'
        OnChange = UnimEdit2Change
      end
    end
  end
end
