object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 669
  ClientWidth = 888
  Caption = 'PDF Viewer'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  AlignmentControl = uniAlignmentClient
  Layout = 'border'
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel1: TUniPanel
    Left = 88
    Top = 64
    Width = 256
    Height = 553
    Hint = ''
    CreateOrder = 1
    TabOrder = 1
    TitleVisible = True
    TitleAlign = taCenter
    Title = 'PDF List'
    Caption = 'UniPanel1'
    Collapsible = True
    Layout = 'fit'
    LayoutConfig.Height = '0'
    LayoutConfig.Split = True
    LayoutConfig.Region = 'west'
    object UniButton2: TUniButton
      Left = 1
      Top = 1
      Width = 254
      Height = 25
      Hint = ''
      CreateOrder = 3
      Caption = 'Open in a New Form'
      Align = alTop
      TabOrder = 1
      OnClick = UniButton2Click
    end
    object UniListBox1: TUniListBox
      Left = 1
      Top = 26
      Width = 254
      Height = 526
      Hint = ''
      CreateOrder = 4
      Align = alClient
      TabOrder = 2
      OnChange = UniListBox1Change
      ExplicitHeight = 103
    end
  end
  object UniURLFrame1: TUniURLFrame
    Left = 417
    Top = 0
    Width = 410
    Height = 627
    Hint = ''
    CreateOrder = 2
    LayoutConfig.Height = '0'
    LayoutConfig.Region = 'center'
    TabOrder = 0
    ParentColor = False
    Color = clBtnFace
  end
end
