object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 609
  ClientWidth = 985
  Caption = 'MainForm'
  OldCreateOrder = False
  OnClose = UniFormClose
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniProgressBar1: TUniProgressBar
    Left = 8
    Top = 98
    Width = 383
    Hint = ''
    Text = ''
    TabOrder = 0
  end
  object UniButton1: TUniButton
    Left = 71
    Top = 36
    Width = 129
    Height = 25
    Hint = ''
    Caption = 'Start!'
    TabOrder = 1
    ScreenMask.Enabled = True
    ScreenMask.Message = 'Initializing...'
    ScreenMask.Target = Owner
    OnClick = UniButton1Click
  end
  object UniSpinEdit1: TUniSpinEdit
    Left = 71
    Top = 8
    Width = 129
    Hint = ''
    Value = 100000
    MaxValue = 100000000
    MinValue = 1000
    TabOrder = 2
  end
  object UniButton2: TUniButton
    Left = 71
    Top = 67
    Width = 129
    Height = 25
    Hint = ''
    Enabled = False
    Caption = 'Cancel'
    TabOrder = 3
    OnClick = UniButton2Click
  end
  object UniChart1: TUniChart
    Left = 0
    Top = 128
    Width = 985
    Height = 481
    Hint = ''
    Title.Text.Strings = (
      'Sort Series')
    LayoutConfig.BodyPadding = '10'
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    TitleAlign = taCenter
    object UniLineSeries1: TUniLineSeries
      Title = 'Sort Status'
    end
  end
  object UniRadioGroup1: TUniRadioGroup
    Left = 206
    Top = 2
    Width = 185
    Height = 90
    Hint = ''
    Items.Strings = (
      'Bubble Sort'
      'Quick Sort')
    ItemIndex = 0
    Caption = 'Sort Method'
    TabOrder = 5
  end
  object UniLabel1: TUniLabel
    Left = 8
    Top = 13
    Width = 49
    Height = 13
    Hint = ''
    Caption = 'Array Size'
    TabOrder = 6
  end
end
