object qrpAirWayBill: TqrpAirWayBill
  Left = 0
  Top = 0
  Width = 1285
  Height = 1070
  VertScrollBar.Range = 1800
  Caption = 'Air Way Bill'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object rpAWB: TQuickRep
    Left = 0
    Top = 8
    Width = 1111
    Height = 1572
    ShowingPreview = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = []
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Continuous = False
    Page.Values = (
      30.000000000000000000
      2970.000000000000000000
      30.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = True
    PrinterSettings.CustomBinCode = 15
    PrinterSettings.ExtendedDuplex = 1
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 1
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.MemoryLimit = 1000000
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 2
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 140
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PreviewWidth = 500
    PreviewHeight = 500
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stPDF
    PreviewLeft = 0
    PreviewTop = 0
    object DetailBand1: TQRBand
      Left = 53
      Top = 16
      Width = 1005
      Height = 1497
      Frame.Style = psInsideFrame
      AfterPrint = DetailBand1AfterPrint
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        2829.151785714286000000
        1899.330357142857000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRShape2: TQRShape
        Left = 0
        Top = 176
        Width = 1005
        Height = 161
        Size.Values = (
          304.270833333333400000
          0.000000000000000000
          332.382812500000000000
          1900.039062500000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape3: TQRShape
        Left = 0
        Top = 336
        Width = 1005
        Height = 145
        Size.Values = (
          274.032738095238100000
          0.000000000000000000
          635.000000000000000000
          1899.330357142857000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape4: TQRShape
        Left = 0
        Top = 471
        Width = 1005
        Height = 42
        Size.Values = (
          79.375000000000000000
          0.000000000000000000
          890.133928571428600000
          1899.330357142857000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape5: TQRShape
        Left = 0
        Top = 675
        Width = 1005
        Height = 562
        Size.Values = (
          1061.640625000000000000
          0.000000000000000000
          1276.614583333333000000
          1898.385416666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape6: TQRShape
        Left = 0
        Top = 1236
        Width = 1005
        Height = 87
        Size.Values = (
          165.364583333333300000
          0.000000000000000000
          2336.601562500000000000
          1898.385416666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape7: TQRShape
        Left = 0
        Top = 1453
        Width = 1005
        Height = 44
        Size.Values = (
          82.682291666666680000
          0.000000000000000000
          2746.705729166667000000
          1898.385416666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape8: TQRShape
        Left = 0
        Top = 551
        Width = 1005
        Height = 40
        Size.Values = (
          76.067708333333340000
          0.000000000000000000
          1041.796875000000000000
          1900.039062500000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape9: TQRShape
        Left = 0
        Top = 591
        Width = 1005
        Height = 87
        Size.Values = (
          163.710937500000000000
          0.000000000000000000
          1116.210937500000000000
          1900.039062500000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape10: TQRShape
        Left = -24
        Top = 0
        Width = 49
        Height = 31
        Size.Values = (
          58.586309523809540000
          -45.357142857142850000
          0.000000000000000000
          92.604166666666680000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape1: TQRShape
        Left = 0
        Top = 29
        Width = 1005
        Height = 151
        Size.Values = (
          285.750000000000000000
          0.000000000000000000
          55.562500000000000000
          1899.708333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape11: TQRShape
        Left = 24
        Top = 0
        Width = 49
        Height = 29
        Size.Values = (
          55.562500000000000000
          44.979166666666670000
          0.000000000000000000
          92.604166666666680000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object lbField1a: TQRLabel
        Left = 6
        Top = 1
        Width = 39
        Height = 27
        Size.Values = (
          51.026785714285720000
          11.339285714285710000
          1.889880952380953000
          73.705357142857140000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '057'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRShape13: TQRShape
        Left = 78
        Top = 0
        Width = 49
        Height = 29
        Size.Values = (
          55.562500000000000000
          148.166666666666700000
          0.000000000000000000
          92.604166666666680000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object lbField1b: TQRLabel
        Left = 56
        Top = 1
        Width = 39
        Height = 27
        Size.Values = (
          51.026785714285720000
          105.833333333333400000
          1.889880952380953000
          73.705357142857140000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'GOA'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object lbField1cPartial: TQRLabel
        Left = 111
        Top = 1
        Width = 102
        Height = 27
        Size.Values = (
          51.026785714285720000
          209.776785714285700000
          1.889880952380953000
          192.767857142857200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '82011521'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object lbField1c: TQRLabel
        Left = 832
        Top = 3
        Width = 167
        Height = 25
        Size.Values = (
          47.625000000000000000
          1571.625000000000000000
          5.291666666666667000
          314.854166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '057-82011521'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRShape14: TQRShape
        Left = 226
        Top = 29
        Width = 280
        Height = 43
        Size.Values = (
          81.028645833333320000
          426.640625000000000000
          54.570312499999990000
          529.166666666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Brush.Style = bsClear
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape16: TQRShape
        Left = 248
        Top = 431
        Width = 258
        Height = 41
        Frame.DrawTop = True
        Size.Values = (
          77.721354166666680000
          467.981770833333300000
          813.593750000000100000
          487.825520833333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Brush.Style = bsClear
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel1: TQRLabel
        Left = 262
        Top = 431
        Width = 236
        Height = 26
        Size.Values = (
          49.136904761904770000
          495.148809523809500000
          814.538690476190500000
          446.011904761904800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Account No.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRShape17: TQRShape
        Left = 0
        Top = 431
        Width = 248
        Height = 41
        Frame.DrawTop = True
        Size.Values = (
          77.721354166666680000
          0.000000000000000000
          813.593750000000100000
          467.981770833333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Brush.Style = bsClear
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object lbField32: TQRLabel
        Left = 5
        Top = 283
        Width = 479
        Height = 24
        Size.Values = (
          44.648437500000000000
          9.921875000000000000
          534.127604166666800000
          904.544270833333500000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Tel: 00971 43520555 '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object lbField33: TQRLabel
        Left = 5
        Top = 310
        Width = 479
        Height = 24
        Size.Values = (
          44.648437500000000000
          9.921875000000000000
          585.390625000000000000
          904.544270833333500000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'DUBAI  UAE'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel12: TQRLabel
        Left = 519
        Top = 35
        Width = 146
        Height = 28
        Size.Values = (
          52.916666666666660000
          981.604166666666800000
          66.145833333333340000
          275.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Air Waybill'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object QRLabel13: TQRLabel
        Left = 728
        Top = 41
        Width = 258
        Height = 17
        Size.Values = (
          31.750000000000000000
          1375.833333333333000000
          76.729166666666680000
          486.833333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Issued by'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRLabel14: TQRLabel
        Left = 3
        Top = 185
        Width = 203
        Height = 40
        Size.Values = (
          76.067708333333340000
          6.614583333333332000
          348.919270833333300000
          383.645833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Consignee'#39's Name and Address'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object lbIssuingCarrier: TQRLabel
        Left = 3
        Top = 339
        Width = 433
        Height = 26
        Size.Values = (
          49.609375000000000000
          6.614583333333332000
          639.960937500000100000
          818.554687500000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Issuing Carrier'#39's Agent Name and City'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object lbField4a: TQRLabel
        Left = 3
        Top = 370
        Width = 483
        Height = 24
        Size.Values = (
          44.648437500000000000
          6.614583333333332000
          699.492187500000000000
          912.812500000000100000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'INTERJET TRANSPORT / TAILOR MADE LOGISTIC'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel19: TQRLabel
        Left = 3
        Top = 431
        Width = 202
        Height = 16
        Size.Values = (
          29.765625000000000000
          6.614583333333332000
          815.247395833333500000
          381.992187500000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Agent'#39's IATA Code'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRLabel2: TQRLabel
        Left = 234
        Top = 32
        Width = 242
        Height = 17
        Size.Values = (
          32.127976190476190000
          442.232142857142800000
          60.476190476190480000
          457.351190476190500000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Shipper'#39's Account Number'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRLabel3: TQRLabel
        Left = 3
        Top = 35
        Width = 234
        Height = 26
        Size.Values = (
          49.609375000000000000
          6.614583333333332000
          66.145833333333340000
          441.523437500000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Shipper'#39's Name and Address'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object lbField2: TQRLabel
        Left = 8
        Top = 79
        Width = 481
        Height = 24
        Size.Values = (
          44.648437500000000000
          14.882812500000000000
          148.828125000000000000
          909.505208333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'TAILOR MADE LOGISTIC  SRL'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object lbField21: TQRLabel
        Left = 8
        Top = 103
        Width = 481
        Height = 24
        Size.Values = (
          45.357142857142850000
          15.119047619047620000
          194.657738095238100000
          909.032738095238300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'VIA RIVAROLO 2/A 16161 '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object lbField22: TQRLabel
        Left = 8
        Top = 128
        Width = 481
        Height = 24
        Size.Values = (
          45.357142857142850000
          15.119047619047620000
          241.904761904761900000
          909.032738095238300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'EUROPEAN VAT NUMBER IT023438109'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object lbField23: TQRLabel
        Left = 8
        Top = 155
        Width = 481
        Height = 24
        Size.Values = (
          45.357142857142850000
          15.119047619047620000
          292.931547619047700000
          909.032738095238300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'GENOVA ITALIA'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object lbField3: TQRLabel
        Left = 5
        Top = 233
        Width = 479
        Height = 24
        Size.Values = (
          44.648437500000000000
          9.921875000000000000
          439.869791666666800000
          904.544270833333500000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'SHARAF SHIPPING AG. DUBAI'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object lbField31: TQRLabel
        Left = 5
        Top = 258
        Width = 479
        Height = 24
        Size.Values = (
          44.648437500000000000
          9.921875000000000000
          487.825520833333400000
          904.544270833333500000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '3RD FL SHARAF BLDG AL MINA RD PO BO'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object lbField4b: TQRLabel
        Left = 3
        Top = 448
        Width = 202
        Height = 23
        Size.Values = (
          42.994791666666670000
          6.614583333333332000
          846.666666666666600000
          381.992187500000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '38.4.7044.001.3'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 3
        Top = 472
        Width = 494
        Height = 16
        Size.Values = (
          29.765625000000000000
          6.614583333333332000
          892.968750000000000000
          932.656250000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 
          'Airport of Departure (Addr. of first Carrier) and Requested Rout' +
          'ing'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRShape18: TQRShape
        Left = 0
        Top = 511
        Width = 1005
        Height = 41
        Size.Values = (
          77.721354166666680000
          0.000000000000000000
          965.729166666666800000
          1900.039062500000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape12: TQRShape
        Left = 481
        Top = 32
        Width = 49
        Height = 559
        Frame.Style = psClear
        Size.Values = (
          1056.679687500000000000
          909.505208333333400000
          61.184895833333340000
          92.604166666666680000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object lbIssuerVATCode: TQRLabel
        Left = 516
        Top = 155
        Width = 481
        Height = 24
        Size.Values = (
          44.648437500000000000
          975.651041666666800000
          292.695312500000000000
          909.505208333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'EUROPEAN VAT NUMBER FR01055861007'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object lbIssuerCodeTown: TQRLabel
        Left = 516
        Top = 128
        Width = 481
        Height = 24
        Size.Values = (
          44.648437500000000000
          975.651041666666800000
          241.432291666666700000
          909.505208333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'ROISSY CDG CEDEX'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object lbIssuerName: TQRLabel
        Left = 516
        Top = 79
        Width = 481
        Height = 24
        Size.Values = (
          44.648437500000000000
          975.651041666666800000
          148.828125000000000000
          909.505208333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'AIR FRANCE'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object lbIssuerAddress: TQRLabel
        Left = 516
        Top = 103
        Width = 481
        Height = 24
        Size.Values = (
          44.648437500000000000
          975.651041666666800000
          195.130208333333400000
          909.505208333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '45,RUE DE PARIS'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object lbField18: TQRLabel
        Left = 3
        Top = 490
        Width = 465
        Height = 23
        Size.Values = (
          42.994791666666670000
          6.614583333333332000
          926.041666666666800000
          878.085937500000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'GENOA, ITALY'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 3
        Top = 512
        Width = 18
        Height = 16
        Size.Values = (
          29.765625000000000000
          6.614583333333332000
          967.382812500000000000
          33.072916666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'To'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRLabel7: TQRLabel
        Left = 432
        Top = 2
        Width = 129
        Height = 25
        Size.Values = (
          47.955729166666670000
          816.901041666666800000
          3.307291666666666000
          243.085937500000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'SC72000163'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRShape19: TQRShape
        Left = 26
        Top = 512
        Width = 49
        Height = 40
        Frame.Style = psClear
        Size.Values = (
          76.067708333333340000
          49.609375000000000000
          967.382812500000000000
          92.604166666666680000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object lbField11a: TQRLabel
        Left = 3
        Top = 529
        Width = 38
        Height = 23
        Size.Values = (
          42.994791666666670000
          6.614583333333332000
          998.802083333333400000
          71.106770833333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'DXB'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object lbField11b: TQRLabel
        Left = 58
        Top = 512
        Width = 143
        Height = 16
        Size.Values = (
          29.765625000000000000
          109.140625000000000000
          967.382812500000000000
          269.544270833333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'by First Carrier'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRShape20: TQRShape
        Left = 323
        Top = 512
        Width = 29
        Height = 40
        Frame.Style = psClear
        Size.Values = (
          76.067708333333340000
          610.195312500000000000
          967.382812500000000000
          54.570312499999990000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel9: TQRLabel
        Left = 58
        Top = 529
        Width = 279
        Height = 23
        Size.Values = (
          42.994791666666670000
          109.140625000000000000
          998.802083333333400000
          527.513020833333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'AIR FRANCE'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRShape21: TQRShape
        Left = 367
        Top = 512
        Width = 29
        Height = 40
        Frame.Style = psClear
        Size.Values = (
          76.067708333333340000
          692.877604166666800000
          967.382812500000000000
          54.570312499999990000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel8: TQRLabel
        Left = 342
        Top = 529
        Width = 38
        Height = 23
        Size.Values = (
          42.994791666666670000
          646.575520833333500000
          998.802083333333400000
          71.106770833333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'DXB'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel10: TQRLabel
        Left = 342
        Top = 513
        Width = 19
        Height = 16
        Size.Values = (
          29.765625000000000000
          646.575520833333500000
          969.036458333333500000
          36.380208333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'To'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRLabel11: TQRLabel
        Left = 385
        Top = 513
        Width = 18
        Height = 16
        Size.Values = (
          29.765625000000000000
          727.604166666666800000
          969.036458333333500000
          33.072916666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'By'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRLabel5: TQRLabel
        Left = 516
        Top = 472
        Width = 494
        Height = 16
        Size.Values = (
          29.765625000000000000
          975.651041666666800000
          892.968750000000000000
          932.656250000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Customer'#39's reference number (Europenan VAT Code)'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRLabel24: TQRLabel
        Left = 516
        Top = 339
        Width = 479
        Height = 26
        Size.Values = (
          49.609375000000000000
          975.651041666666800000
          639.960937500000100000
          904.544270833333500000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Accounting Information'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRShape22: TQRShape
        Left = 401
        Top = 512
        Width = 29
        Height = 40
        Frame.Style = psClear
        Size.Values = (
          76.067708333333340000
          757.369791666666800000
          967.382812500000000000
          54.570312499999990000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel20: TQRLabel
        Left = 385
        Top = 529
        Width = 25
        Height = 23
        Size.Values = (
          42.994791666666670000
          727.604166666666800000
          998.802083333333400000
          46.302083333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'AX'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRShape23: TQRShape
        Left = 451
        Top = 513
        Width = 29
        Height = 40
        Frame.Style = psClear
        Size.Values = (
          76.067708333333340000
          851.627604166666800000
          969.036458333333500000
          54.570312499999990000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel26: TQRLabel
        Left = 421
        Top = 529
        Width = 38
        Height = 23
        Size.Values = (
          42.994791666666670000
          795.403645833333500000
          998.802083333333400000
          71.106770833333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'DXB'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel25: TQRLabel
        Left = 421
        Top = 513
        Width = 19
        Height = 16
        Size.Values = (
          29.765625000000000000
          795.403645833333500000
          969.036458333333500000
          36.380208333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'To'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRLabel27: TQRLabel
        Left = 470
        Top = 512
        Width = 18
        Height = 16
        Size.Values = (
          29.765625000000000000
          888.007812500000100000
          967.382812500000000000
          33.072916666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'By'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRLabel28: TQRLabel
        Left = 470
        Top = 529
        Width = 25
        Height = 23
        Size.Values = (
          42.994791666666670000
          888.007812500000100000
          998.802083333333400000
          46.302083333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'AX'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel29: TQRLabel
        Left = 512
        Top = 529
        Width = 38
        Height = 23
        Size.Values = (
          42.994791666666670000
          967.382812500000000000
          998.802083333333400000
          71.106770833333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'EUR'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRShape24: TQRShape
        Left = 551
        Top = 512
        Width = 29
        Height = 40
        Frame.Style = psClear
        Size.Values = (
          76.067708333333340000
          1041.796875000000000000
          967.382812500000000000
          54.570312499999990000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel30: TQRLabel
        Left = 512
        Top = 512
        Width = 51
        Height = 16
        Size.Values = (
          29.765625000000000000
          967.382812500000000000
          967.382812500000000000
          95.911458333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Currency'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRShape25: TQRShape
        Left = 597
        Top = 512
        Width = 29
        Height = 40
        Frame.Style = psClear
        Size.Values = (
          76.067708333333340000
          1127.786458333333000000
          967.382812500000000000
          54.570312499999990000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape27: TQRShape
        Left = 612
        Top = 510
        Width = 122
        Height = 40
        Frame.Style = psClear
        Size.Values = (
          76.067708333333340000
          1155.898437500000000000
          964.075520833333500000
          229.856770833333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel31: TQRLabel
        Left = 570
        Top = 512
        Width = 36
        Height = 16
        Size.Values = (
          29.765625000000000000
          1076.523437500000000000
          967.382812500000000000
          67.799479166666680000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'CHGS'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRLabel32: TQRLabel
        Left = 570
        Top = 533
        Width = 38
        Height = 23
        Size.Values = (
          42.994791666666670000
          1076.523437500000000000
          1007.070312500000000000
          71.106770833333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '   '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel33: TQRLabel
        Left = 570
        Top = 523
        Width = 36
        Height = 16
        Size.Values = (
          29.765625000000000000
          1076.523437500000000000
          988.880208333333500000
          67.799479166666680000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'code'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRLabel34: TQRLabel
        Left = 614
        Top = 512
        Width = 68
        Height = 16
        Size.Values = (
          29.765625000000000000
          1160.859375000000000000
          967.382812500000000000
          128.984375000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'WT/VAL'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRLabel35: TQRLabel
        Left = 614
        Top = 530
        Width = 27
        Height = 23
        Size.Values = (
          42.994791666666670000
          1160.859375000000000000
          1002.109375000000000000
          51.263020833333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'PP'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRShape26: TQRShape
        Left = 671
        Top = 512
        Width = 4
        Height = 40
        Frame.Style = psClear
        Size.Values = (
          76.067708333333340000
          1268.346354166667000000
          967.382812500000000000
          8.268229166666668000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape28: TQRShape
        Left = 640
        Top = 531
        Width = 4
        Height = 21
        Frame.Style = psClear
        Size.Values = (
          39.687500000000000000
          1210.468750000000000000
          1003.763020833333000000
          8.268229166666668000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel36: TQRLabel
        Left = 675
        Top = 530
        Width = 27
        Height = 23
        Size.Values = (
          42.994791666666670000
          1276.614583333333000000
          1002.109375000000000000
          51.263020833333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'PP'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel37: TQRLabel
        Left = 675
        Top = 512
        Width = 60
        Height = 16
        Size.Values = (
          29.765625000000000000
          1276.614583333333000000
          967.382812500000000000
          114.101562500000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Other'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRShape29: TQRShape
        Left = 732
        Top = 512
        Width = 4
        Height = 40
        Frame.Style = psClear
        Size.Values = (
          76.067708333333340000
          1382.447916666667000000
          967.382812500000000000
          8.268229166666668000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape30: TQRShape
        Left = 698
        Top = 531
        Width = 4
        Height = 21
        Frame.Style = psClear
        Size.Values = (
          39.687500000000000000
          1319.609375000000000000
          1003.763020833333000000
          8.268229166666668000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape31: TQRShape
        Left = 868
        Top = 512
        Width = 4
        Height = 40
        Frame.Style = psClear
        Size.Values = (
          76.067708333333340000
          1640.416666666667000000
          967.382812500000000000
          8.268229166666668000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape32: TQRShape
        Left = 406
        Top = 568
        Width = 4
        Height = 23
        Frame.Style = psClear
        Size.Values = (
          42.994791666666670000
          767.291666666666800000
          1073.216145833333000000
          8.268229166666668000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel38: TQRLabel
        Left = 735
        Top = 512
        Width = 130
        Height = 16
        Size.Values = (
          29.765625000000000000
          1389.062500000000000000
          967.382812500000000000
          246.393229166666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Declared Value for Carrier'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -8
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 6
      end
      object QRLabel39: TQRLabel
        Left = 873
        Top = 512
        Width = 130
        Height = 16
        Size.Values = (
          29.765625000000000000
          1650.338541666667000000
          967.382812500000000000
          246.393229166666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Declared Value for Custom'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -8
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 6
      end
      object QRLabel41: TQRLabel
        Left = 741
        Top = 529
        Width = 122
        Height = 23
        Size.Values = (
          42.994791666666670000
          1400.638020833333000000
          998.802083333333400000
          229.856770833333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '0.0'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel42: TQRLabel
        Left = 878
        Top = 529
        Width = 122
        Height = 23
        Size.Values = (
          42.994791666666670000
          1658.606770833333000000
          998.802083333333400000
          229.856770833333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '0.0'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object lbField19a: TQRLabel
        Left = 343
        Top = 568
        Width = 62
        Height = 23
        Size.Values = (
          42.994791666666670000
          648.229166666666600000
          1073.216145833333000000
          117.408854166666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'AF662'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel44: TQRLabel
        Left = 3
        Top = 552
        Width = 152
        Height = 16
        Size.Values = (
          29.765625000000000000
          6.614583333333332000
          1043.450520833333000000
          287.734375000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Airport of Destination'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRLabel45: TQRLabel
        Left = 3
        Top = 568
        Width = 203
        Height = 23
        Size.Values = (
          42.994791666666670000
          6.614583333333332000
          1073.216145833333000000
          383.645833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'DUBAI, U.A.E.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRShape33: TQRShape
        Left = 336
        Top = 550
        Width = 4
        Height = 40
        Frame.Style = psClear
        Size.Values = (
          76.067708333333340000
          635.000000000000000000
          1040.143229166667000000
          8.268229166666668000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel46: TQRLabel
        Left = 410
        Top = 568
        Width = 94
        Height = 23
        Size.Values = (
          42.994791666666670000
          775.559895833333500000
          1073.216145833333000000
          178.593750000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '28/01/20'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel47: TQRLabel
        Left = 346
        Top = 552
        Width = 152
        Height = 16
        Size.Values = (
          29.765625000000000000
          653.190104166666800000
          1043.450520833333000000
          287.734375000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Requested Flight/Date'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRMemo1: TQRMemo
        Left = 511
        Top = 186
        Width = 483
        Height = 144
        Size.Values = (
          272.851562500000000000
          965.729166666666800000
          352.226562500000000000
          912.812500000000100000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = []
        Lines.Strings = (
          
            'It is agreed that the goods desorbed herein are accepted in appa' +
            'rent good order and condition (except as noted) for carriage SUB' +
            'JECT TO THE CONDITIONS or CONTRACT ON THE REVERSE HEREOF. ALL GO' +
            'ODS WAY BE CARRIED BY ANY OTHER MEANS INCLUDING ROAD OR ANY OTHE' +
            'R CARRIER UNLESS SPECIFIC CONTRARY INSTRUCTIONS ARE GIVEN HEREON' +
            ' BY THE SHIPPER. AND SHIPPER AGREES THAT THE SHIPMENT MAY BE CAR' +
            'RIED VIA INTERMEDIATE STOPPING PLACES WHICH THE CARRIER DEEMS AP' +
            'PROPRIATE. THE SHIPPER'#39'S ATTENTION IS DRAWN TO THE NOTICE CONCER' +
            'NING CARRIER'#8217'S LIMITATION OF LIABILITY, Shipper may increase suc' +
            'h limitation of liability by declaring a higher value for carria' +
            'ge and paying a supplemental charge if required.'#9)
        ParentFont = False
        Transparent = True
        FullJustify = True
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRLabel40: TQRLabel
        Left = 510
        Top = 552
        Width = 129
        Height = 16
        Size.Values = (
          29.765625000000000000
          964.075520833333500000
          1043.450520833333000000
          243.085937500000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Amount of Insurance'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRShape34: TQRShape
        Left = 671
        Top = 550
        Width = 4
        Height = 40
        Frame.Style = psClear
        Size.Values = (
          76.067708333333340000
          1268.346354166667000000
          1040.143229166667000000
          8.268229166666668000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRMemo2: TQRMemo
        Left = 679
        Top = 552
        Width = 319
        Height = 39
        Size.Values = (
          72.760416666666680000
          1283.229166666667000000
          1043.450520833333000000
          603.580729166666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Calibri'
        Font.Style = []
        Lines.Strings = (
          
            'INSURANCE - if carrier offers insurance and such insurance is re' +
            'quested in accondance with the conditions thereof indicate amo- ' +
            'unt to be insured in figures in box marked "Amount of Insurance"')
        ParentFont = False
        Transparent = True
        FullJustify = True
        MaxBreakChars = 0
        FontSize = 6
      end
      object QRLabel43: TQRLabel
        Left = 3
        Top = 591
        Width = 152
        Height = 16
        Size.Values = (
          29.765625000000000000
          6.614583333333332000
          1117.864583333333000000
          287.734375000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Handling Information'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object lbH1_H3: TQRMemo
        Left = 3
        Top = 612
        Width = 662
        Height = 53
        Size.Values = (
          100.872395833333300000
          6.614583333333332000
          1157.552083333333000000
          1250.156250000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        Lines.Strings = (
          'N.1 PIECE MARKED ADD/ATTACHED ENVELOPE WITH INVOICE'
          'PLS ADV CNEE UPON ARRIVAL  Ph 00971 43520555'
          'EQUATION'
          '')
        ParentFont = False
        Transparent = True
        FullJustify = True
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRShape35: TQRShape
        Left = 0
        Top = 1323
        Width = 1005
        Height = 131
        Size.Values = (
          248.046875000000000000
          0.000000000000000000
          2500.312500000000000000
          1898.385416666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape36: TQRShape
        Left = 350
        Top = 1236
        Width = 1
        Height = 261
        Frame.Style = psClear
        Size.Values = (
          492.786458333333300000
          661.458333333333400000
          2336.601562500000000000
          1.653645833333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape37: TQRShape
        Left = 175
        Top = 1236
        Width = 1
        Height = 261
        Frame.Style = psClear
        Size.Values = (
          492.786458333333300000
          330.729166666666700000
          2336.601562500000000000
          1.653645833333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape38: TQRShape
        Left = 35
        Top = 1454
        Width = 106
        Height = 19
        Size.Values = (
          36.380208333333340000
          66.145833333333340000
          2748.359375000000000000
          200.091145833333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel48: TQRLabel
        Left = 37
        Top = 1455
        Width = 102
        Height = 16
        Size.Values = (
          29.765625000000000000
          69.453125000000000000
          2750.013020833334000000
          193.476562500000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Total Prepaid'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRShape39: TQRShape
        Left = 210
        Top = 1454
        Width = 106
        Height = 19
        Size.Values = (
          36.380208333333340000
          396.875000000000000000
          2748.359375000000000000
          200.091145833333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel49: TQRLabel
        Left = 212
        Top = 1455
        Width = 102
        Height = 16
        Size.Values = (
          29.765625000000000000
          400.182291666666700000
          2750.013020833334000000
          193.476562500000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Total Collect'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRShape40: TQRShape
        Left = 0
        Top = 1410
        Width = 352
        Height = 1
        Frame.Style = psClear
        Size.Values = (
          1.653645833333333000
          0.000000000000000000
          2665.677083333333000000
          664.765625000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape15: TQRShape
        Left = 224
        Top = 180
        Width = 282
        Height = 43
        Size.Values = (
          81.028645833333320000
          423.333333333333300000
          340.651041666666800000
          532.473958333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Brush.Style = bsClear
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object lbField4c2: TQRLabel
        Left = 229
        Top = 186
        Width = 269
        Height = 24
        Size.Values = (
          44.648437500000000000
          433.255208333333400000
          352.226562500000000000
          507.669270833333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'M/V "MSC BELLISSIMA"'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object lbField7: TQRMemo
        Left = 516
        Top = 370
        Width = 479
        Height = 95
        Size.Values = (
          180.247395833333400000
          975.651041666666800000
          699.492187500000000000
          904.544270833333500000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        Lines.Strings = (
          'N.1 PIECE MARKED ADD/ATTACHED ENVELOPE WITH INVOICE'
          'PLS ADV CNEE UPON ARRIVAL  Ph 00971 43520555'
          'EQUATION'
          '')
        ParentFont = False
        Transparent = True
        FullJustify = True
        MaxBreakChars = 0
        FontSize = 8
      end
      object lbField33a: TQRLabel
        Left = 0
        Top = 1474
        Width = 164
        Height = 23
        Size.Values = (
          42.994791666666670000
          0.000000000000000000
          2784.739583333334000000
          309.231770833333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '331,70'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object lbField33b: TQRLabel
        Left = 181
        Top = 1474
        Width = 164
        Height = 23
        Size.Values = (
          42.994791666666670000
          342.304687500000000000
          2784.739583333334000000
          309.231770833333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '0,0'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object Field32a: TQRLabel
        Left = 5
        Top = 1432
        Width = 164
        Height = 23
        Size.Values = (
          43.467261904761910000
          9.449404761904763000
          2706.309523809524000000
          309.940476190476200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ''
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRShape41: TQRShape
        Left = 37
        Top = 1410
        Width = 279
        Height = 21
        Size.Values = (
          39.687500000000000000
          69.453125000000000000
          2665.677083333333000000
          527.513020833333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel50: TQRLabel
        Left = 54
        Top = 1410
        Width = 242
        Height = 16
        Size.Values = (
          30.238095238095240000
          102.053571428571400000
          2664.732142857143000000
          457.351190476190500000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Total Other Charges Due Carrier'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRShape42: TQRShape
        Left = 35
        Top = 1369
        Width = 279
        Height = 21
        Size.Values = (
          39.687500000000000000
          66.145833333333340000
          2586.302083333334000000
          527.513020833333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Field31a: TQRLabel
        Left = 5
        Top = 1390
        Width = 164
        Height = 23
        Size.Values = (
          42.994791666666670000
          9.921875000000000000
          2625.989583333334000000
          309.231770833333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ''
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel18: TQRLabel
        Left = 54
        Top = 1369
        Width = 242
        Height = 16
        Size.Values = (
          29.765625000000000000
          102.526041666666700000
          2587.955729166667000000
          458.059895833333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Total Other Charges Due Agent'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRShape43: TQRShape
        Left = 0
        Top = 1369
        Width = 352
        Height = 1
        Frame.Style = psClear
        Size.Values = (
          1.653645833333333000
          0.000000000000000000
          2586.302083333334000000
          664.765625000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object Field32b: TQRLabel
        Left = 181
        Top = 1432
        Width = 164
        Height = 23
        Size.Values = (
          42.994791666666670000
          342.304687500000000000
          2705.364583333334000000
          309.231770833333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '   '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRShape44: TQRShape
        Left = 0
        Top = 1279
        Width = 352
        Height = 1
        Frame.Style = psClear
        Size.Values = (
          1.653645833333333000
          0.000000000000000000
          2417.630208333333000000
          664.765625000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape45: TQRShape
        Left = 121
        Top = 1323
        Width = 106
        Height = 19
        Size.Values = (
          36.380208333333340000
          228.203125000000000000
          2500.312500000000000000
          200.091145833333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel17: TQRLabel
        Left = 131
        Top = 1323
        Width = 82
        Height = 16
        Size.Values = (
          29.765625000000000000
          248.046875000000000000
          2500.312500000000000000
          155.442708333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Tax'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRShape46: TQRShape
        Left = 111
        Top = 1279
        Width = 130
        Height = 19
        Size.Values = (
          36.380208333333340000
          210.013020833333400000
          2417.630208333333000000
          246.393229166666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel53: TQRLabel
        Left = 121
        Top = 1280
        Width = 102
        Height = 16
        Size.Values = (
          29.765625000000000000
          228.203125000000000000
          2419.283854166667000000
          191.822916666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Valutation Charge'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object Field31b: TQRLabel
        Left = 181
        Top = 1390
        Width = 164
        Height = 23
        Size.Values = (
          42.994791666666670000
          342.304687500000000000
          2625.989583333334000000
          309.231770833333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ''
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object Field30a: TQRLabel
        Left = 6
        Top = 1347
        Width = 164
        Height = 23
        Size.Values = (
          42.994791666666670000
          11.575520833333330000
          2546.614583333333000000
          309.231770833333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ''
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object Field30b: TQRLabel
        Left = 181
        Top = 1347
        Width = 164
        Height = 23
        Size.Values = (
          42.994791666666670000
          342.304687500000000000
          2544.960937500000000000
          309.231770833333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ''
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRShape47: TQRShape
        Left = 123
        Top = 1236
        Width = 102
        Height = 19
        Size.Values = (
          36.380208333333340000
          233.164062500000000000
          2336.601562500000000000
          191.822916666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Field29a: TQRLabel
        Left = 5
        Top = 1301
        Width = 164
        Height = 23
        Size.Values = (
          42.994791666666670000
          9.921875000000000000
          2458.971354166667000000
          309.231770833333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ''
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object Field29b: TQRLabel
        Left = 181
        Top = 1301
        Width = 164
        Height = 23
        Size.Values = (
          42.994791666666670000
          342.304687500000000000
          2458.971354166667000000
          309.231770833333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ''
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object labelField: TQRLabel
        Left = 131
        Top = 1238
        Width = 82
        Height = 16
        Size.Values = (
          29.765625000000000000
          248.046875000000000000
          2339.908854166667000000
          155.442708333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Weight Charge'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRShape48: TQRShape
        Left = 68
        Top = 1236
        Width = 56
        Height = 19
        Size.Values = (
          36.380208333333340000
          128.984375000000000000
          2336.601562500000000000
          105.833333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object labelPrepaid: TQRLabel
        Left = 70
        Top = 1238
        Width = 49
        Height = 16
        Size.Values = (
          29.765625000000000000
          132.291666666666700000
          2339.908854166667000000
          92.604166666666680000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Prepaid'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRShape49: TQRShape
        Left = 222
        Top = 1236
        Width = 56
        Height = 19
        Size.Values = (
          36.380208333333340000
          420.026041666666800000
          2336.601562500000000000
          105.833333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Collect: TQRLabel
        Left = 227
        Top = 1238
        Width = 49
        Height = 16
        Size.Values = (
          29.765625000000000000
          428.294270833333400000
          2339.908854166667000000
          92.604166666666680000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Collect'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object Field28a: TQRLabel
        Left = 6
        Top = 1257
        Width = 164
        Height = 23
        Size.Values = (
          42.994791666666670000
          11.575520833333330000
          2376.289062500000000000
          309.231770833333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '1008,99'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object Field28b: TQRLabel
        Left = 181
        Top = 1257
        Width = 164
        Height = 23
        Size.Values = (
          42.994791666666670000
          342.304687500000000000
          2376.289062500000000000
          309.231770833333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '0'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel61: TQRLabel
        Left = 367
        Top = 1238
        Width = 82
        Height = 16
        Size.Values = (
          29.765625000000000000
          692.877604166666800000
          2339.908854166667000000
          155.442708333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Other Charges'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object MemOtherCharges: TQRMemo
        Left = 367
        Top = 1259
        Width = 621
        Height = 59
        Size.Values = (
          110.794270833333300000
          692.877604166666800000
          2379.596354166667000000
          1174.088541666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        Lines.Strings = (
          'IAT 0,70 - DOC 11,00')
        ParentFont = False
        Transparent = True
        FullJustify = True
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRShape50: TQRShape
        Left = 0
        Top = 723
        Width = 1002
        Height = 3
        Size.Values = (
          6.614583333333332000
          0.000000000000000000
          1365.911458333333000000
          1893.424479166667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape51: TQRShape
        Left = 54
        Top = 675
        Width = 3
        Height = 562
        Size.Values = (
          1061.640625000000000000
          102.526041666666700000
          1276.614583333333000000
          6.614583333333332000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRMemo3: TQRMemo
        Left = 9
        Top = 677
        Width = 40
        Height = 44
        Size.Values = (
          82.682291666666680000
          16.536458333333330000
          1279.921875000000000000
          76.067708333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = []
        Lines.Strings = (
          'No of'
          'Pieces'
          'RCP')
        ParentFont = False
        Transparent = True
        FullJustify = True
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRShape52: TQRShape
        Left = 140
        Top = 675
        Width = 3
        Height = 562
        Size.Values = (
          1061.640625000000000000
          264.583333333333400000
          1276.614583333333000000
          6.614583333333332000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRMemo4: TQRMemo
        Left = 58
        Top = 677
        Width = 70
        Height = 44
        Size.Values = (
          82.682291666666680000
          109.140625000000000000
          1279.921875000000000000
          132.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = []
        Lines.Strings = (
          'Gross'
          'Weight')
        ParentFont = False
        Transparent = True
        FullJustify = True
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRShape53: TQRShape
        Left = 163
        Top = 675
        Width = 3
        Height = 536
        Size.Values = (
          1013.684895833333000000
          307.578125000000000000
          1276.614583333333000000
          6.614583333333332000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape54: TQRShape
        Left = 250
        Top = 675
        Width = 3
        Height = 536
        Size.Values = (
          1012.031250000000000000
          472.942708333333300000
          1276.614583333333000000
          6.614583333333332000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape55: TQRShape
        Left = 0
        Top = 1208
        Width = 1002
        Height = 3
        Size.Values = (
          6.614583333333332000
          0.000000000000000000
          2282.031250000000000000
          1893.424479166667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel21: TQRLabel
        Left = 171
        Top = 677
        Width = 74
        Height = 16
        Size.Values = (
          29.765625000000000000
          324.114583333333300000
          1279.921875000000000000
          138.906250000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Rate Class'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRLabel22: TQRLabel
        Left = 171
        Top = 707
        Width = 74
        Height = 16
        Size.Values = (
          29.765625000000000000
          324.114583333333300000
          1336.145833333333000000
          138.906250000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Commodity'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRLabel23: TQRLabel
        Left = 259
        Top = 677
        Width = 74
        Height = 16
        Size.Values = (
          29.765625000000000000
          489.479166666666800000
          1279.921875000000000000
          138.906250000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Chargeable'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRLabel62: TQRLabel
        Left = 262
        Top = 707
        Width = 74
        Height = 16
        Size.Values = (
          29.765625000000000000
          496.093750000000000000
          1336.145833333333000000
          138.906250000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Weight'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRShape56: TQRShape
        Left = 350
        Top = 675
        Width = 3
        Height = 536
        Size.Values = (
          1012.031250000000000000
          661.458333333333400000
          1276.614583333333000000
          6.614583333333332000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object field19a: TQRMemo
        Left = 3
        Top = 732
        Width = 49
        Height = 471
        Size.Values = (
          889.661458333333500000
          6.614583333333332000
          1382.447916666667000000
          92.604166666666680000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        Lines.Strings = (
          '2'
          ''
          ''
          ''
          ''
          ''
          ''
          ''
          ''
          ''
          ''
          ''
          '13')
        ParentFont = False
        Transparent = True
        FullJustify = True
        MaxBreakChars = 0
        FontSize = 9
      end
      object Field20a: TQRMemo
        Left = 58
        Top = 731
        Width = 72
        Height = 471
        Size.Values = (
          890.133928571428600000
          109.613095238095200000
          1381.502976190476000000
          136.071428571428600000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        Lines.Strings = (
          '49,00')
        ParentFont = False
        Transparent = True
        FullJustify = True
        MaxBreakChars = 0
        FontSize = 9
      end
      object lbKg: TQRLabel
        Left = 143
        Top = 677
        Width = 21
        Height = 16
        Size.Values = (
          29.765625000000000000
          269.544270833333400000
          1279.921875000000000000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Kg'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRLabel63: TQRLabel
        Left = 143
        Top = 707
        Width = 21
        Height = 16
        Size.Values = (
          29.765625000000000000
          269.544270833333400000
          1336.145833333333000000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Lb'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object Field21: TQRMemo
        Left = 149
        Top = 732
        Width = 12
        Height = 471
        Size.Values = (
          889.661458333333500000
          281.119791666666700000
          1382.447916666667000000
          23.151041666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        Lines.Strings = (
          'K')
        ParentFont = False
        Transparent = True
        FullJustify = True
        MaxBreakChars = 0
        FontSize = 9
      end
      object Field22: TQRMemo
        Left = 173
        Top = 732
        Width = 72
        Height = 471
        Size.Values = (
          889.661458333333500000
          327.421875000000000000
          1382.447916666667000000
          135.598958333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        Lines.Strings = (
          'M')
        ParentFont = False
        Transparent = True
        FullJustify = True
        MaxBreakChars = 0
        FontSize = 9
      end
      object Field24: TQRMemo
        Left = 256
        Top = 732
        Width = 89
        Height = 471
        Size.Values = (
          889.661458333333500000
          482.864583333333400000
          1382.447916666667000000
          168.671875000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        Lines.Strings = (
          '101,90')
        ParentFont = False
        Transparent = True
        FullJustify = True
        MaxBreakChars = 0
        FontSize = 9
      end
      object lbRate: TQRLabel
        Left = 359
        Top = 677
        Width = 90
        Height = 16
        Size.Values = (
          29.765625000000000000
          677.994791666666800000
          1279.921875000000000000
          170.325520833333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Rate'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRLabel64: TQRLabel
        Left = 359
        Top = 707
        Width = 90
        Height = 16
        Size.Values = (
          29.765625000000000000
          677.994791666666800000
          1336.145833333333000000
          170.325520833333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Charge'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object Field25: TQRMemo
        Left = 359
        Top = 732
        Width = 86
        Height = 471
        Size.Values = (
          889.661458333333500000
          677.994791666666800000
          1382.447916666667000000
          162.057291666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        Lines.Strings = (
          '9,99'
          '')
        ParentFont = False
        Transparent = True
        FullJustify = True
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRShape57: TQRShape
        Left = 451
        Top = 675
        Width = 3
        Height = 562
        Size.Values = (
          1061.640625000000000000
          851.627604166666800000
          1276.614583333333000000
          6.614583333333332000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel65: TQRLabel
        Left = 459
        Top = 693
        Width = 112
        Height = 16
        Size.Values = (
          29.765625000000000000
          868.164062500000000000
          1309.687500000000000000
          211.666666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Total'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRShape58: TQRShape
        Left = 577
        Top = 675
        Width = 3
        Height = 562
        Size.Values = (
          1061.640625000000000000
          1089.752604166667000000
          1276.614583333333000000
          6.614583333333332000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object Field26a: TQRMemo
        Left = 459
        Top = 732
        Width = 112
        Height = 471
        Size.Values = (
          889.661458333333500000
          868.164062500000000000
          1382.447916666667000000
          211.666666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        Lines.Strings = (
          '1008,99')
        ParentFont = False
        Transparent = True
        FullJustify = True
        MaxBreakChars = 0
        FontSize = 9
      end
      object lbNature: TQRLabel
        Left = 585
        Top = 682
        Width = 410
        Height = 16
        Size.Values = (
          29.765625000000000000
          1106.289062500000000000
          1289.843750000000000000
          773.906250000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Nature and quantity of goods'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRLabel66: TQRLabel
        Left = 585
        Top = 707
        Width = 410
        Height = 16
        Size.Values = (
          29.765625000000000000
          1106.289062500000000000
          1336.145833333333000000
          773.906250000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '(incl. dimension or volume)'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object Field27: TQRMemo
        Left = 585
        Top = 732
        Width = 388
        Height = 471
        Size.Values = (
          889.661458333333500000
          1106.289062500000000000
          1382.447916666667000000
          734.218750000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        Lines.Strings = (
          'SHIP'#39'S SPARE PARTS'
          'BATTERIES NOT RESTRICTED'
          'AS PER SPECIAL PROVISION'
          'A199'
          'IN TRANSIT TO M/V FREIGHT'
          'MARGIE'
          'HD CODE 9930'
          'COUNTRY OF ORIGIN ITALY'
          'CM. 120X80X53-60X40X41')
        ParentFont = False
        Transparent = True
        FullJustify = True
        MaxBreakChars = 0
        FontSize = 9
      end
      object sumField19a: TQRLabel
        Left = 3
        Top = 1213
        Width = 49
        Height = 23
        Size.Values = (
          42.994791666666670000
          6.614583333333332000
          2291.953125000000000000
          92.604166666666680000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '2'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object sumField20a: TQRLabel
        Left = 63
        Top = 1213
        Width = 72
        Height = 23
        Size.Values = (
          42.994791666666670000
          119.062500000000000000
          2291.953125000000000000
          135.598958333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '49,00'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object sumField26a: TQRLabel
        Left = 459
        Top = 1213
        Width = 112
        Height = 23
        Size.Values = (
          42.994791666666670000
          868.164062500000000000
          2291.953125000000000000
          211.666666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '1008,99'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRShape59: TQRShape
        Left = 368
        Top = 1410
        Width = 612
        Height = 1
        Frame.Style = psClear
        Size.Values = (
          1.653645833333333000
          694.531250000000000000
          2665.677083333333000000
          1157.552083333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Brush.Style = bsClear
        Pen.Color = clGray
        Pen.Style = psDash
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object lbSignature: TQRLabel
        Left = 623
        Top = 1417
        Width = 351
        Height = 20
        Size.Values = (
          38.033854166666670000
          1177.395833333333000000
          2677.252604166667000000
          663.111979166666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Signature of Shipper or his Agent'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRShape60: TQRShape
        Left = 368
        Top = 1479
        Width = 612
        Height = 1
        Frame.Style = psClear
        Size.Values = (
          1.653645833333333000
          694.531250000000000000
          2794.661458333333000000
          1157.552083333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Brush.Style = bsClear
        Pen.Color = clGray
        Pen.Style = psDash
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel54: TQRLabel
        Left = 383
        Top = 1480
        Width = 111
        Height = 16
        Size.Values = (
          29.765625000000000000
          724.296875000000000000
          2797.968750000000000000
          210.013020833333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Executed on (date) '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRLabel55: TQRLabel
        Left = 571
        Top = 1480
        Width = 111
        Height = 16
        Size.Values = (
          29.765625000000000000
          1079.830729166667000000
          2797.968750000000000000
          210.013020833333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'at (Place)'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRLabel56: TQRLabel
        Left = 735
        Top = 1480
        Width = 239
        Height = 16
        Size.Values = (
          29.765625000000000000
          1389.062500000000000000
          2797.968750000000000000
          451.445312500000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Signature of issuing Carrier or itsAgent'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRLabel57: TQRLabel
        Left = 370
        Top = 1456
        Width = 128
        Height = 23
        Size.Values = (
          42.994791666666670000
          699.492187500000000000
          2751.666666666667000000
          241.432291666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '24/01/2020'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel58: TQRLabel
        Left = 525
        Top = 1456
        Width = 193
        Height = 23
        Size.Values = (
          42.994791666666670000
          992.187500000000000000
          2751.666666666667000000
          365.455729166666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Genova'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel59: TQRLabel
        Left = 724
        Top = 1456
        Width = 264
        Height = 22
        Size.Values = (
          41.341145833333340000
          1367.565104166667000000
          2751.666666666667000000
          499.401041666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Tailor Made Logistic Srl'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Bradley Hand ITC'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRMemo5: TQRMemo
        Left = 357
        Top = 1329
        Width = 646
        Height = 59
        Size.Values = (
          110.794270833333300000
          674.687500000000000000
          2511.888020833333000000
          1220.390625000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -7
        Font.Name = 'Calibri'
        Font.Style = []
        Lines.Strings = (
          
            'Shipper certifies that the particulars on the face hereof are co' +
            'rrect and that insofar as any part of the consignment containsda' +
            'ngerous goods, such part is properly described by name and is on' +
            ' proper conditionfor carriage by air according to the applicable' +
            ' Dangerous goods regulations.'
          
            'Il mittente dichiara che le indicazioni contenute sul fronte del' +
            'la LTA sono esatte, e che qualora un parte della spedizione cont' +
            'enga merci pericolose, tale parte '#232' debitamente indicata ed '#232' ne' +
            'lle condizioni richieste ai fini del trasporto per via aerea sec' +
            'ondo le norme sulle Merci Pericolose.')
        ParentFont = False
        Transparent = True
        FullJustify = True
        MaxBreakChars = 0
        FontSize = 5
      end
      object QRLabel51: TQRLabel
        Left = 368
        Top = 1383
        Width = 351
        Height = 22
        Size.Values = (
          41.341145833333340000
          694.531250000000000000
          2614.414062500000000000
          663.111979166666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Tailor Made Logistic Srl'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Bradley Hand ITC'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object lbInsuranceAmount: TQRLabel
        Left = 536
        Top = 568
        Width = 122
        Height = 23
        Size.Values = (
          42.994791666666670000
          1012.031250000000000000
          1073.216145833333000000
          229.856770833333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '0.0'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
    end
    object QRLabel60: TQRLabel
      Left = 123
      Top = 1518
      Width = 447
      Height = 23
      Size.Values = (
        42.994791666666670000
        231.510416666666700000
        2869.075520833333000000
        845.013020833333500000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Caption = 'ORIGINAL 3 (FOR SHIPPER)'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRLabel68: TQRLabel
      Left = 860
      Top = 1517
      Width = 166
      Height = 25
      Size.Values = (
        47.955729166666670000
        1625.533854166667000000
        2867.421875000000000000
        314.192708333333400000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Caption = '057-82011521'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 11
    end
  end
  object QRPDFFilter1: TQRPDFFilter
    CompressionOn = False
    Fonthandling = False
    TextEncoding = AnsiEncoding
    Codepage = '1252'
    SuppressDateTime = False
    Left = 1136
    Top = 248
  end
end
