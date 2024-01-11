object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 541
  ClientWidth = 651
  Caption = 'MainForm'
  OldCreateOrder = False
  OnMouseDown = UniFormMouseDown
  MonitoredKeys.Keys = <>
  DesignSize = (
    651
    541)
  PixelsPerInch = 96
  TextHeight = 13
  object UniLabel1: TUniLabel
    Left = 236
    Top = 8
    Width = 142
    Height = 13
    Hint = ''
    Caption = 'Right Click anywhere on Form'
    Anchors = [akTop]
    TabOrder = 0
  end
  object UniPopupMenu1: TUniPopupMenu
    Left = 288
    Top = 120
    object CreateButton1: TUniMenuItem
      Caption = 'Create Button'
      OnClick = CreateButton1Click
    end
    object CreateEdit1: TUniMenuItem
      Caption = 'Create Edit'
      OnClick = CreateEdit1Click
    end
    object CreatePanel1: TUniMenuItem
      Caption = 'Create Panel'
      OnClick = CreatePanel1Click
    end
  end
end
