object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 533
  ClientWidth = 916
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  DesignSize = (
    916
    533)
  PixelsPerInch = 96
  TextHeight = 13
  object UniChart1: TUniChart
    Left = 8
    Top = 8
    Width = 900
    Height = 516
    Hint = ''
    Title.Text.Strings = (
      'Please click on series data to open details window.')
    LayoutConfig.BodyPadding = '10'
    Anchors = [akLeft, akTop, akRight, akBottom]
    OnSeriesClick = UniChart1SeriesClick
    object UniLineSeries1: TUniLineSeries
      Title = 'UniLineSeries1'
      MarkerConfig.Brush.Color = 4259584
      MarkerConfig.Brush.Default = False
      MarkerConfig.Shape = 'diamond'
      MarkerConfig.Width = 5
      MarkerConfig.Height = 5
    end
  end
end
