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
    Height = 480
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    object UnimLineSeries1: TUnimLineSeries
      Title = 'UnimLineSeries1'
      Pen.Color = clBlue
    end
  end
end
