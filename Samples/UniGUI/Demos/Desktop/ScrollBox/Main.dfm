object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 479
  ClientWidth = 754
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniScrollBox1: TUniScrollBox
    Left = 24
    Top = 24
    Width = 393
    Height = 345
    Hint = ''
    ScrollHeight = 537
    ScrollWidth = 640
    object UniButton1: TUniButton
      Left = 16
      Top = 512
      Width = 75
      Height = 25
      Hint = ''
      Caption = 'UniButton1'
      TabOrder = 0
    end
    object UniButton2: TUniButton
      Left = 512
      Top = 16
      Width = 75
      Height = 25
      Hint = ''
      Caption = 'UniButton2'
      TabOrder = 1
    end
    object UniButton3: TUniButton
      Left = 24
      Top = 16
      Width = 75
      Height = 25
      Hint = ''
      Caption = 'UniButton3'
      TabOrder = 2
    end
    object UniDBGrid1: TUniDBGrid
      Left = 320
      Top = 242
      Width = 320
      Height = 160
      Hint = ''
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      LoadMask.Message = 'Loading data...'
      TabOrder = 3
    end
  end
  object UniScrollBox2: TUniScrollBox
    Left = 448
    Top = 24
    Width = 241
    Height = 345
    Hint = ''
    Color = 14221232
    ScrollHeight = 537
    ScrollWidth = 155
    object UniBitBtn1: TUniBitBtn
      Left = 80
      Top = 512
      Width = 75
      Height = 25
      Hint = ''
      Caption = 'UniBitBtn1'
      TabOrder = 0
    end
  end
end
