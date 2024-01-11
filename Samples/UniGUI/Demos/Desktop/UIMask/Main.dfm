object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 416
  ClientWidth = 592
  Caption = 'MainForm'
  Position = poDesktopCenter
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel1: TUniPanel
    Left = 8
    Top = 16
    Width = 561
    Height = 185
    Caption = 'UniPanel1'
    TabOrder = 0
    object UniButton2: TUniButton
      Left = 24
      Top = 112
      Width = 125
      Height = 25
      Caption = 'Mask Form'
      TabOrder = 0
      OnClick = UniButton1Click
    end
    object UniButton1: TUniButton
      Left = 24
      Top = 16
      Width = 125
      Height = 25
      Caption = 'Mask Panel'
      TabOrder = 1
      OnClick = UniButton1Click
    end
  end
  object UniDBGrid1: TUniDBGrid
    Left = 184
    Top = 216
    Width = 385
    Height = 185
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    LoadMask.Message = 'Loading data...'
    TabOrder = 1
  end
  object UniButton4: TUniButton
    Left = 32
    Top = 272
    Width = 125
    Height = 25
    Caption = 'Mask DBGrid'
    TabOrder = 2
    OnClick = UniButton1Click
  end
  object UniScreenMask4: TUniScreenMask
    AttachedControl = UniButton4
    Enabled = True
    DisplayMessage = 'DBGrid...'
    TargetControl = UniDBGrid1
    Left = 128
    Top = 312
  end
  object UniScreenMask2: TUniScreenMask
    AttachedControl = UniButton2
    Enabled = True
    DisplayMessage = 'Form is masked'
    TargetControl = Owner
    Left = 120
    Top = 160
  end
  object UniScreenMask1: TUniScreenMask
    AttachedControl = UniButton1
    Enabled = True
    TargetControl = UniPanel1
    Left = 120
    Top = 64
  end
end
