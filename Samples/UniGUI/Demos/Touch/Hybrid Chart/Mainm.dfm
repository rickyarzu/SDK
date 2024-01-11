object MainmForm: TMainmForm
  Left = 0
  Top = 0
  ClientHeight = 480
  ClientWidth = 320
  Caption = 'MainmForm'
  TitleButtons = <>
  OnCreate = UnimFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimChart1: TUnimChart
    Left = 0
    Top = 0
    Width = 320
    Height = 433
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    ExplicitHeight = 480
    object UnimLineSeries1: TUnimLineSeries
      Title = 'Inflation'
      Pen.Color = clLime
      Pen.Width = 3
    end
    object UnimBarSeries1: TUnimBarSeries
      Title = 'Oil Price'
      Brush.Opacity = 0.500000000000000000
    end
  end
  object UnimButton1: TUnimButton
    Left = 0
    Top = 433
    Width = 320
    Height = 47
    Hint = ''
    Align = alBottom
    Anchors = [akLeft, akRight, akBottom]
    Caption = 'Change Values'
    OnClick = UnimButton1Click
    ExplicitLeft = 95
    ExplicitTop = 344
    ExplicitWidth = 225
  end
end
