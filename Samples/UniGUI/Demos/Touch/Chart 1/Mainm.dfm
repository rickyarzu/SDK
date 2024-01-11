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
    Height = 232
    Hint = ''
    Legend.Alignment = uaBottom
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    object UnimLineSeries1: TUnimLineSeries
      Title = 'UnimLineSeries1'
      Pen.Color = clGreen
    end
    object UnimLineSeries2: TUnimLineSeries
      Title = 'UnimLineSeries2'
      Pen.Color = clBlue
    end
  end
  object UnimChart2: TUnimChart
    Left = 0
    Top = 232
    Width = 320
    Height = 248
    Hint = ''
    Legend.Alignment = uaBottom
    Align = alBottom
    Anchors = [akLeft, akRight, akBottom]
    object UnimPieSeries1: TUnimPieSeries
      Title = 'UnimPieSeries1'
      Colors.Strings = (
        '#0000FF'
        '#00FF00'
        '#FF0000'
        '#00FFFF'
        '#FFFF00'
        '#FF00FF')
    end
  end
end
