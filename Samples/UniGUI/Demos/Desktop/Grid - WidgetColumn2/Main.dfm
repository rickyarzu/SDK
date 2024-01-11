object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 577
  ClientWidth = 1097
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniDBGrid1: TUniDBGrid
    Left = 0
    Top = 0
    Width = 1097
    Height = 577
    Hint = ''
    PagingBarAuxControl = UniDBNavigator1
    DataSource = UniMainModule.DataSource1
    LoadMask.Message = 'Loading data...'
    Align = alClient
    TabOrder = 0
    Columns = <
      item
        FieldName = 'Species No'
        Title.Caption = 'Species No'
        Width = 71
        ReadOnly = True
      end
      item
        WidgetColumn.Enabled = True
        WidgetColumn.Widget = UniButtonWidget1
        WidgetColumn.Height = 25
        FieldName = 'Common_Name'
        Title.Caption = 'Common Name'
        Width = 153
        ReadOnly = True
      end
      item
        FieldName = 'Category'
        Title.Caption = 'Category'
        Width = 131
        ReadOnly = True
      end
      item
        FieldName = 'Species Name'
        Title.Caption = 'Species Name'
        Width = 210
        Font.Charset = TURKISH_CHARSET
        ReadOnly = True
      end
      item
        WidgetColumn.Enabled = True
        WidgetColumn.Widget = UniProgressbarWidget1
        WidgetColumn.Height = 25
        FieldName = 'Length (cm)'
        Title.Caption = 'Length (cm)'
        Width = 106
        Font.Charset = TURKISH_CHARSET
        ReadOnly = True
      end
      item
        WidgetColumn.Enabled = True
        WidgetColumn.Widget = UniSliderWidget1
        WidgetColumn.AutoPost = True
        FieldName = 'Length_In'
        Title.Alignment = taCenter
        Title.Caption = 'Length (In)'
        Width = 129
        Font.Charset = TURKISH_CHARSET
      end
      item
        WidgetColumn.Enabled = True
        WidgetColumn.Widget = UniProgressbarWidget2
        WidgetColumn.Height = 25
        FieldName = 'Length_In'
        Title.Alignment = taCenter
        Title.Caption = 'Length (In)'
        Width = 97
        Font.Charset = TURKISH_CHARSET
        ReadOnly = True
      end
      item
        FieldName = 'Graphic'
        Title.Alignment = taCenter
        Title.Caption = 'Image'
        Width = 84
        Font.Charset = TURKISH_CHARSET
        ReadOnly = True
        ImageOptions.Visible = True
        ImageOptions.Height = 25
      end
      item
        WidgetColumn.Enabled = True
        WidgetColumn.Widget = UniSparklineLineWidget1
        WidgetColumn.Height = 25
        Title.Alignment = taCenter
        Title.Caption = 'Distribution'
        Width = 95
      end>
  end
  object UniHiddenPanel1: TUniHiddenPanel
    Left = 799
    Top = 160
    Width = 177
    Height = 321
    Hint = ''
    Visible = True
    object UniButtonWidget1: TUniButtonWidget
      Left = 32
      Top = 30
      Width = 120
      Hint = ''
      Images = UniMainModule.UniNativeImageList1
      ImageIndex = 0
      OnClick = UniButtonWidget1Click
      Caption = 'UniButtonWidget1'
    end
    object UniSliderWidget1: TUniSliderWidget
      Left = 32
      Top = 60
      Width = 120
      Hint = ''
    end
    object UniProgressbarWidget1: TUniProgressbarWidget
      Left = 32
      Top = 90
      Width = 120
      Hint = ''
      ShowValue = True
      Max = 200.000000000000000000
    end
    object UniProgressbarWidget2: TUniProgressbarWidget
      Left = 32
      Top = 122
      Width = 120
      Hint = ''
      ShowValue = True
      Max = 100.000000000000000000
    end
    object UniSparklineLineWidget1: TUniSparklineLineWidget
      Left = 32
      Top = 152
      Width = 120
      Hint = ''
      HighlightColor = clBlack
      OnGetData = UniSparklineLineWidget1GetData
    end
  end
  object UniDBNavigator1: TUniDBNavigator
    Left = 512
    Top = 544
    Width = 241
    Height = 25
    Hint = ''
    DataSource = UniMainModule.DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete, nbPost, nbCancel]
    IconSet = icsFontAwesome
    TabOrder = 2
  end
end
