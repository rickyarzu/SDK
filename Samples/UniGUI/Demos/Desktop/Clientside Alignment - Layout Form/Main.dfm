object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 404
  ClientWidth = 635
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  AlignmentControl = uniAlignmentClient
  Layout = 'vbox'
  LayoutConfig.BodyPadding = '15'
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel1: TUniPanel
    Left = 70
    Top = 32
    Width = 417
    Height = 209
    Hint = ''
    TabOrder = 0
    TitleVisible = True
    Title = 'Form'
    Caption = ''
    Layout = 'form'
    LayoutConfig.Flex = 4
    LayoutConfig.BodyPadding = '5'
    LayoutConfig.Width = '100%'
    object UniEdit1: TUniEdit
      Left = 16
      Top = 3
      Width = 121
      Hint = ''
      CreateOrder = 1
      Text = ''
      TabOrder = 1
      EmptyText = 'First Name'
      FieldLabel = 'First Name'
    end
    object UniEdit2: TUniEdit
      Left = 16
      Top = 31
      Width = 121
      Hint = ''
      CreateOrder = 2
      Text = ''
      TabOrder = 2
      EmptyText = 'Last Name'
      FieldLabel = 'Last Name'
    end
    object UniEdit3: TUniEdit
      Left = 48
      Top = 59
      Width = 121
      Hint = ''
      CreateOrder = 3
      Text = ''
      TabOrder = 3
      EmptyText = 'Age'
      FieldLabel = 'Age'
    end
    object UniHTMLMemo1: TUniHTMLMemo
      Left = 16
      Top = 96
      Width = 345
      Height = 89
      Hint = ''
      Lines.Strings = (
        'UniHTMLMemo1')
      Color = clWindow
      TabOrder = 4
    end
  end
  object UniContainerPanel2: TUniContainerPanel
    Left = 160
    Top = 264
    Width = 256
    Height = 57
    Hint = ''
    ParentColor = False
    TabOrder = 1
    LayoutConfig.Flex = 1
    object UniButton1: TUniButton
      Left = 22
      Top = 3
      Width = 75
      Height = 25
      Hint = ''
      Caption = 'Send'
      TabOrder = 1
    end
    object UniButton2: TUniButton
      Left = 124
      Top = 3
      Width = 75
      Height = 25
      Hint = ''
      Caption = 'Clear'
      TabOrder = 2
    end
  end
end
