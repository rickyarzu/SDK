object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 480
  ClientWidth = 1048
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniDBGrid1: TUniDBGrid
    Left = 0
    Top = 0
    Width = 1048
    Height = 480
    Hint = ''
    DataSource = UniMainModule.DataSource1
    LoadMask.Message = 'Loading data...'
    Align = alClient
    Font.Charset = TURKISH_CHARSET
    Font.Height = -13
    Font.Name = 'Verdana'
    ParentFont = False
    TabOrder = 0
    Columns = <
      item
        FieldName = 'CustNo'
        Title.Caption = 'CustNo'
        Width = 84
        Font.Charset = TURKISH_CHARSET
        Font.Name = 'Verdana'
      end
      item
        FieldName = 'Contact'
        Title.Caption = 'Contact'
        Width = 134
        Font.Charset = TURKISH_CHARSET
        Font.Name = 'Verdana'
      end
      item
        FieldName = 'Country'
        Title.Caption = 'Country'
        Width = 139
        Font.Charset = TURKISH_CHARSET
        Font.Name = 'Verdana'
      end
      item
        FieldName = 'LastInvoiceDate'
        Title.Caption = 'LastInvoiceDate'
        Width = 172
        Font.Charset = TURKISH_CHARSET
        Font.Name = 'Verdana'
      end
      item
        WidgetColumn.Enabled = True
        WidgetColumn.Widget = UniSparklineBarWidget1
        WidgetColumn.Height = 48
        Title.Alignment = taCenter
        Title.Caption = 'Orders'
        Width = 250
        Font.Charset = TURKISH_CHARSET
        Font.Name = 'Verdana'
      end>
  end
  object UniHiddenPanel1: TUniHiddenPanel
    Left = 800
    Top = 56
    Width = 177
    Height = 321
    Hint = ''
    Visible = True
    object UniSparklineBarWidget1: TUniSparklineBarWidget
      Left = 32
      Top = 48
      Width = 120
      Hint = ''
      TooltipSuffix = ' USD'
      HighlightColor = clBlack
      OnGetDataRecord = UniSparklineBarWidget1GetDataRecord
      ChartRangeMax = 30000
      BarWidth = 16
      BarColor = 4227072
    end
  end
end
