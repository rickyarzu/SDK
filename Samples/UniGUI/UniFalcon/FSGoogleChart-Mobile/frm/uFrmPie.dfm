object frmPie: TfrmPie
  Left = 0
  Top = 0
  ClientHeight = 480
  ClientWidth = 320
  Caption = 'Pie'
  TitleButtons = <
    item
      ButtonId = 2
      Separator = True
    end
    item
      Caption = 'Load'
      ButtonId = 0
      IconCls = 'refresh'
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
    ChartType = PieChart
    ChartDataSet = CDS
    ChartOptions.Strings = (
      'pieHole: 0.5,'
      'legend: "bottom",')
    ChartFormat.Active = False
    ChartFormat.DecimalSymbol = ','
    ChartFormat.GroupingSymbom = '.'
    ChartFormat.NegativeColor = 'red'
    ChartFormat.NegativeParens = True
    ChartFormat.Prefix = 'R$'
    Align = alClient
  end
  object CDS: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 144
    Top = 152
  end
end
