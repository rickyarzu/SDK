object frmBar: TfrmBar
  Left = 0
  Top = 0
  ClientHeight = 480
  ClientWidth = 320
  Caption = 'Bar'
  TitleButtons = <>
  OnCreate = UnimFormCreate
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object GoogleChart: TUnimFSGoogleChart
    AlignWithMargins = True
    Left = 5
    Top = 5
    Width = 310
    Height = 470
    Hint = ''
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    ChartType = Bar
    ChartDataSet = CDS
    ChartOptions.Strings = (
      'legend: { position: "bottom" },'
      'orientation: "vertical",')
    ChartFormat.Active = True
    ChartFormat.DecimalSymbol = ','
    ChartFormat.GroupingSymbom = '.'
    ChartFormat.NegativeColor = 'red'
    ChartFormat.NegativeParens = True
    ChartFormat.Prefix = 'R$'
    Align = alClient
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 320
    ExplicitHeight = 480
  end
  object CDS: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 144
    Top = 152
  end
end
