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
      ButtonId = 1
      IconCls = 'refresh'
    end>
  OnTitleButtonClick = UnimFormTitleButtonClick
  OnCreate = UnimFormCreate
  OnAfterShow = UnimFormAfterShow
  TextHeight = 15
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object Chart: TUnimFSKendoUI
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
    ChartTitle = 'FSKendoUI'
    ChartTitleVisible = False
    ChartTitleFontSize = 20
    ChartTitleFontName = 'sans-serif'
    ChartTheme = Default
    ChartType = Column
    ChartStacked = False
    ChartLegendPosition = Bottom
    ChartColorBackGround = '#fff'
    ChartImageBackGround = 
      'https://demos.telerik.com/kendo-ui/content/shared/styles/world-m' +
      'ap.png'
    ChartNameExport = 'chart'
    ChartSeriesStyle = Smooth
    Align = alClient
    ClientEvents.ExtEvents.Strings = (
      
        'resize=function resize(sender, eOpts) {   ajaxRequest(sender, "f' +
        's_chart_resize", []); } ')
    OnAjaxEvent = ChartAjaxEvent
    ExplicitLeft = 0
    ExplicitTop = 10
  end
  object CDS: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 152
    Top = 160
  end
end
