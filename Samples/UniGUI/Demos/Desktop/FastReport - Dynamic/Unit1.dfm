object UniForm1: TUniForm1
  Left = 0
  Top = 0
  ClientHeight = 614
  ClientWidth = 690
  Caption = ''
  BorderStyle = bsNone
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnBeforeShow = UniFormBeforeShow
  PixelsPerInch = 96
  TextHeight = 13
  object UniURLFrame1: TUniURLFrame
    Left = 0
    Top = 0
    Width = 690
    Height = 614
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    ParentColor = False
    Color = clBtnFace
    object UniButton1: TUniButton
      Left = 0
      Top = 589
      Width = 690
      Height = 25
      Hint = ''
      Caption = 'Close'
      Anchors = [akLeft, akRight, akBottom]
      Align = alBottom
      TabOrder = 1
      OnClick = UniButton1Click
    end
  end
end
