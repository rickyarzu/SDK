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
    Height = 224
    Hint = ''
    Legend.Alignment = uaBottom
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    ExplicitLeft = 88
    ExplicitTop = 56
    object UnimBarSeries1: TUnimBarSeries
      Title = 'UnimBarSeries1'
    end
    object UnimBarSeries2: TUnimBarSeries
      Title = 'UnimBarSeries2'
      Brush.Color = clYellow
    end
  end
  object UnimChart2: TUnimChart
    Left = 0
    Top = 224
    Width = 320
    Height = 256
    Hint = ''
    Legend.Alignment = uaBottom
    Align = alBottom
    Anchors = [akLeft, akRight, akBottom]
    object UnimRadarSeries1: TUnimRadarSeries
      Title = 'UnimRadarSeries1'
      Brush.Opacity = 0.500000000000000000
      Pen.Color = clRed
    end
    object UnimRadarSeries2: TUnimRadarSeries
      Title = 'UnimRadarSeries2'
      Brush.Opacity = 0.500000000000000000
      Pen.Color = clGreen
      Left = 65520
      Top = 65520
    end
  end
end
