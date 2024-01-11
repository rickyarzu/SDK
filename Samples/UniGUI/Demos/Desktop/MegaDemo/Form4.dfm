object UniForm4: TUniForm4
  Left = 0
  Top = 0
  ClientHeight = 330
  ClientWidth = 665
  Caption = 'Anchor'
  Color = clBtnFace
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  DesignSize = (
    665
    330)
  PixelsPerInch = 96
  TextHeight = 13
  object UniButton1: TUniButton
    Left = 8
    Top = 8
    Width = 120
    Height = 25
    Caption = '[akLeft,akTop]'
    TabOrder = 0
  end
  object UniButton2: TUniButton
    Left = 281
    Top = 8
    Width = 120
    Height = 25
    Caption = '[akTop]'
    Anchors = [akTop]
    TabOrder = 1
  end
  object UniButton3: TUniButton
    Left = 8
    Top = 297
    Width = 120
    Height = 25
    Caption = '[akLeft,akBottom]'
    Anchors = [akLeft, akBottom]
    TabOrder = 2
  end
  object UniButton4: TUniButton
    Left = 281
    Top = 130
    Width = 120
    Height = 25
    Caption = '[ ]'
    Anchors = []
    TabOrder = 3
  end
  object UniButton5: TUniButton
    Left = 537
    Top = 297
    Width = 120
    Height = 25
    Caption = '[akRight,akBottom]'
    Anchors = [akRight, akBottom]
    TabOrder = 4
  end
  object UniButton6: TUniButton
    Left = 537
    Top = 8
    Width = 120
    Height = 25
    Caption = '[akTop,akRight]'
    Anchors = [akTop, akRight]
    TabOrder = 5
  end
  object UniButton7: TUniButton
    Left = 281
    Top = 297
    Width = 120
    Height = 25
    Caption = '[akBottom]'
    Anchors = [akBottom]
    TabOrder = 6
  end
end
