object UniForm1: TUniForm1
  Left = 0
  Top = 0
  ClientHeight = 700
  ClientWidth = 635
  Caption = 'UniForm1'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnBeforeShow = UniFormBeforeShow
  PixelsPerInch = 96
  TextHeight = 13
  object UniButton1: TUniButton
    Left = 0
    Top = 675
    Width = 635
    Height = 25
    Hint = ''
    Caption = 'Close'
    ModalResult = 1
    Anchors = [akLeft, akRight, akBottom]
    Align = alBottom
    TabOrder = 0
  end
  object UniURLFrame1: TUniURLFrame
    Left = 0
    Top = 0
    Width = 635
    Height = 675
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
    ParentColor = False
    Color = clBtnFace
  end
end
