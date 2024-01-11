object QRWebColorDialog: TQRWebColorDialog
  Left = 580
  Top = 291
  BorderStyle = bsDialog
  Caption = 'QRWebColor Setting'
  ClientHeight = 406
  ClientWidth = 499
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 21
    Top = 333
    Width = 118
    Height = 36
    Caption = 'Accept'
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 338
    Top = 333
    Width = 118
    Height = 36
    Caption = 'Cancel'
    OnClick = SpeedButton2Click
  end
  object SpeedButton4: TSpeedButton
    Left = 15
    Top = 167
    Width = 26
    Height = 22
    Caption = '>'
    OnClick = SpeedButton2Click
  end
  object SpeedButton5: TSpeedButton
    Left = 430
    Top = 168
    Width = 26
    Height = 22
    Caption = '<'
    OnClick = SpeedButton2Click
  end
  object Label1: TLabel
    Left = 21
    Top = 218
    Width = 122
    Height = 21
    AutoSize = False
    Caption = 'RED      0'
  end
  object Label2: TLabel
    Left = 21
    Top = 241
    Width = 122
    Height = 21
    AutoSize = False
    Caption = 'GREEN  0'
  end
  object Label3: TLabel
    Left = 21
    Top = 268
    Width = 122
    Height = 21
    AutoSize = False
    Caption = 'BLUE     0'
  end
  object Panel1: TPanel
    Left = 217
    Top = 218
    Width = 95
    Height = 71
    Caption = 'Selected color'
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
  end
  object TrackBar1: TTrackBar
    Left = 8
    Top = 20
    Width = 463
    Height = 31
    Max = 255
    TabOrder = 1
  end
  object TrackBar2: TTrackBar
    Left = 8
    Top = 57
    Width = 463
    Height = 31
    Max = 255
    TabOrder = 2
  end
  object TrackBar3: TTrackBar
    Left = 8
    Top = 94
    Width = 463
    Height = 31
    Max = 255
    TabOrder = 3
  end
  object TrackBar4: TTrackBar
    Left = 8
    Top = 131
    Width = 463
    Height = 31
    Max = 200
    Position = 100
    TabOrder = 4
  end
end
