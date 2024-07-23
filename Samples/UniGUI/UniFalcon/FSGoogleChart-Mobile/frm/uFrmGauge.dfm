object frmGauge: TfrmGauge
  Left = 0
  Top = 0
  ClientHeight = 480
  ClientWidth = 320
  Caption = 'Gauge'
  TitleButtons = <
    item
      ButtonId = 0
      IconCls = 'time'
    end>
  OnTitleButtonClick = UnimFormTitleButtonClick
  OnCreate = UnimFormCreate
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object GoogleChart: TUnimFSGoogleChart
    Left = 0
    Top = 0
    Width = 320
    Height = 480
    Hint = ''
    ChartType = Gauge
    ChartDataSet = CDS
    Align = alClient
  end
  object CDS: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 144
    Top = 168
  end
  object tmrRandom: TUniTimer
    Interval = 2000
    Enabled = False
    ClientEvent.Strings = (
      'function(sender)'
      '{'
      ' '
      '}')
    OnTimer = tmrRandomTimer
    Left = 147
    Top = 279
  end
end
