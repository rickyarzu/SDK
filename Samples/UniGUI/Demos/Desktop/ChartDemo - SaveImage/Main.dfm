object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 600
  ClientWidth = 872
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object UniChart1: TUniChart
    Left = 0
    Top = 25
    Width = 872
    Height = 575
    Hint = ''
    LayoutConfig.BodyPadding = '10'
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    OnChartImage = UniChart1ChartImage
    object UniPieSeries1: TUniPieSeries
      Colors.Strings = (
        '#0000FF'
        '#00FF00'
        '#FF0000'
        '#00FFFF'
        '#FFFF00'
        '#FF00FF')
    end
  end
  object UniButton1: TUniButton
    Left = 0
    Top = 0
    Width = 872
    Height = 25
    Hint = ''
    Caption = 'Save Image'
    Anchors = [akLeft, akTop, akRight]
    Align = alTop
    TabOrder = 1
    OnClick = UniButton1Click
  end
end
