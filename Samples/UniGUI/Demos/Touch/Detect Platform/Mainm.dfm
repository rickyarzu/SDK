object MainmForm: TMainmForm
  Left = 0
  Top = 0
  ClientHeight = 480
  ClientWidth = 353
  Caption = 'MainmForm'
  AlignmentControl = uniAlignmentClient
  Layout = 'fit'
  LayoutAttribs.Align = 'start'
  LayoutAttribs.Pack = 'center'
  AutoHeight = False
  Scrollable = True
  TitleButtons = <>
  OnCreate = UnimFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 496
  PlatformData = {}
  object UnimPanel1: TUnimPanel
    Left = 40
    Top = 88
    Width = 256
    Height = 361
    Hint = ''
    LayoutAttribs.Align = 'center'
    LayoutAttribs.Pack = 'center'
    LayoutConfig.Padding = '50'
    object UnimLabel1: TUnimLabel
      Left = 31
      Top = 16
      Width = 225
      Height = 23
      Hint = ''
      Alignment = taCenter
      AutoSize = False
      Caption = 'Platform:'
    end
    object UnimLabel2: TUnimLabel
      Left = 28
      Top = 45
      Width = 225
      Height = 23
      Hint = ''
      Alignment = taCenter
      AutoSize = False
      Caption = 'Platform'
    end
    object UnimLabel3: TUnimLabel
      Left = 3
      Top = 103
      Width = 225
      Height = 23
      Hint = ''
      Alignment = taCenter
      AutoSize = False
      Caption = 'Device Type:'
      LayoutConfig.Margin = '20 0 0 0'
    end
    object UnimLabel4: TUnimLabel
      Left = 3
      Top = 132
      Width = 225
      Height = 23
      Hint = ''
      Alignment = taCenter
      AutoSize = False
      Caption = 'Device'
    end
    object UnimLabel7: TUnimLabel
      Left = 1
      Top = 188
      Width = 225
      Height = 23
      Hint = ''
      Alignment = taCenter
      AutoSize = False
      Caption = 'Model:'
      LayoutConfig.Margin = '20 0 0 0'
    end
    object UnimLabel8: TUnimLabel
      Left = 3
      Top = 217
      Width = 225
      Height = 23
      Hint = ''
      Alignment = taCenter
      AutoSize = False
      Caption = 'Model'
    end
    object UnimLabel5: TUnimLabel
      Left = 1
      Top = 268
      Width = 225
      Height = 23
      Hint = ''
      Alignment = taCenter
      AutoSize = False
      Caption = 'OS:'
      LayoutConfig.Margin = '20 0 0 0'
    end
    object UnimLabel6: TUnimLabel
      Left = 1
      Top = 297
      Width = 225
      Height = 23
      Hint = ''
      Alignment = taCenter
      AutoSize = False
      Caption = 'OS'
    end
  end
end
