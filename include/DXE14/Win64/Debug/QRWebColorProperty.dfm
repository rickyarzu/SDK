object QRWebColorDialog: TQRWebColorDialog
  Left = 580
  Top = 291
  BorderStyle = bsDialog
  Caption = 'QRWebColor Setting'
  ClientHeight = 339
  ClientWidth = 427
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 8
    Top = 295
    Width = 118
    Height = 36
    Caption = 'Accept'
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 300
    Top = 295
    Width = 118
    Height = 36
    Caption = 'Cancel'
    OnClick = SpeedButton2Click
  end
  object QRColorBox1: TQRColorBox
    Left = 0
    Top = 0
    Width = 418
    Height = 281
    Color = clBlack
    BackgroundColor = clBtnFace
  end
end
