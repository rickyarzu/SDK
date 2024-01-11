object qrpTMLabels: TqrpTMLabels
  Left = 0
  Top = 0
  Caption = 'TMLabels'
  ClientHeight = 820
  ClientWidth = 985
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 8
    Top = 0
    Width = 799
    Height = 534
    ShowingPreview = False
    DataSet = fdDocumentRotw
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
    Page.Orientation = poLandscape
    Page.PaperSize = Custom
    Page.Continuous = False
    Page.Values = (
      50.000000000000000000
      1010.000000000000000000
      50.000000000000000000
      1510.000000000000000000
      50.000000000000000000
      50.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.MemoryLimit = 1000000
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
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
      Left = 26
      Top = 26
      Width = 746
      Height = 482
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      BeforePrint = DetailBand1BeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        910.922619047619100000
        1409.851190476190000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object lbBarcode: TQRLabel
        Left = 336
        Top = 434
        Width = 293
        Height = 47
        Size.Values = (
          88.824404761904760000
          635.000000000000000000
          820.208333333333500000
          553.735119047619100000)
        XLColumn = 0
        XLNumFormat = nfInteger
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '9771210107001'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 20
      end
      object QRQRDBBarcode1: TQRQRDBBarcode
        Left = 45
        Top = 347
        Width = 136
        Height = 137
        Size.Values = (
          259.291666666666700000
          84.666666666666680000
          656.166666666666800000
          256.645833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        BarcodeText = 'unset'
        BarcodeEncoding = qrAuto
        QuietZone = 0
        DataField = 'barcode'
        DataSet = fdDocumentRotw
      end
      object QrEan1: TQrEan
        Left = 266
        Top = 347
        Width = 447
        Height = 86
        Size.Values = (
          162.529761904761900000
          502.708333333333400000
          655.788690476190500000
          844.776785714285700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        BackgroundColor = clWhite
        Transparent = False
        ShowLabels = False
        StartStopLines = True
        TypBarCode = bcEan13
        LinesColor = clBlack
        Ean13AddUp = True
        FontAutoSize = True
        Security = False
        BarCode = '9771210107001'
        Angle = 0
        LabelMask = '__________________________________________________'
        AutoSize = True
        DisableEditor = False
        HorzLines.LinesCount = 0
        AutoCheckDigit = True
        Ean = {
          54504630045445616E00044C656674020003546F700200055769647468027B06
          4865696768740250074175746F496E63080B4175746F496E6346726F6D020009
          4175746F496E63546F02000F4261636B67726F756E64436F6C6F720707636C57
          686974650B5472616E73706172656E74080A53686F774C6162656C73080E5374
          61727453746F704C696E6573090A547970426172436F64650707626345616E31
          330A4C696E6573436F6C6F720707636C426C61636B0A45616E31334164645570
          090C466F6E744175746F53697A6509085365637572697479080C466F6E742E43
          686172736574070F44454641554C545F434841525345540A466F6E742E436F6C
          6F72070C636C57696E646F77546578740B466F6E742E48656967687402F30946
          6F6E742E4E616D650605417269616C0A466F6E742E5374796C650B0007426172
          436F6465060D39373731323130313037303031094C6162656C4D61736B06325F
          5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
          5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F0F43617074696F6E2E56697369626C
          65091443617074696F6E2E466F6E742E43686172736574070F44454641554C54
          5F434841525345541243617074696F6E2E466F6E742E436F6C6F72070C636C57
          696E646F77546578741343617074696F6E2E466F6E742E48656967687402F311
          43617074696F6E2E466F6E742E4E616D650605417269616C1243617074696F6E
          2E466F6E742E5374796C650B001143617074696F6E2E416C69676E6D656E7407
          0D74614C6566744A7573746966791543617074696F6E426F74746F6D2E566973
          69626C65091A43617074696F6E426F74746F6D2E466F6E742E43686172736574
          070F44454641554C545F434841525345541843617074696F6E426F74746F6D2E
          466F6E742E436F6C6F72070C636C57696E646F77546578741943617074696F6E
          426F74746F6D2E466F6E742E48656967687402F31743617074696F6E426F7474
          6F6D2E466F6E742E4E616D650605417269616C1843617074696F6E426F74746F
          6D2E466F6E742E5374796C650B001743617074696F6E426F74746F6D2E416C69
          676E6D656E74070D74614C6566744A75737469667914486F727A4C696E65732E
          4C696E6573436F756E7402000E4175746F436865636B4469676974090F517569
          65745A6F6E652E5374796C650707717A4C696E65731751756965745A6F6E652E
          496E64696361746F7253697A6502050E51756965745A6F6E652E4C6566740200
          0D51756965745A6F6E652E546F7002000F51756965745A6F6E652E5269676874
          02001051756965745A6F6E652E426F74746F6D02001151756965745A6F6E652E
          56697369626C65080000}
      end
      object GtQRShape3: TGtQRShape
        Left = 193
        Top = 0
        Width = 346
        Height = 86
        Frame.DrawBottom = True
        Frame.DrawRight = True
        Size.Values = (
          162.529761904761900000
          364.747023809523800000
          0.000000000000000000
          653.898809523809500000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object GtQRShape1: TGtQRShape
        Left = 0
        Top = 0
        Width = 210
        Height = 86
        Frame.DrawRight = True
        Size.Values = (
          162.529761904761900000
          0.000000000000000000
          0.000000000000000000
          396.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object lbDocumentDate: TQRLabel
        Left = 0
        Top = 25
        Width = 210
        Height = 34
        Size.Values = (
          64.255952380952380000
          0.000000000000000000
          47.247023809523810000
          396.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'lbDocumentDate'
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 0
        Top = 3
        Width = 210
        Height = 24
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          5.291666666666667000
          396.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Receipt Info'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGrayText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel3: TQRLabel
        Left = 218
        Top = 3
        Width = 308
        Height = 34
        Size.Values = (
          63.500000000000000000
          412.750000000000100000
          5.291666666666667000
          582.083333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Tailor Made Logistic S.r.l. '
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 218
        Top = 28
        Width = 308
        Height = 31
        Size.Values = (
          58.208333333333340000
          412.750000000000100000
          52.916666666666660000
          582.083333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'FORWARDING AGENTS'
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 218
        Top = 56
        Width = 308
        Height = 31
        Size.Values = (
          58.208333333333340000
          412.750000000000100000
          105.833333333333300000
          582.083333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'CUSTOMS BROKERS'
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object GtQRShape4: TGtQRShape
        Left = 0
        Top = 140
        Width = 746
        Height = 1
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          264.583333333333400000
          1410.229166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object GtQRShape5: TGtQRShape
        Left = 0
        Top = 190
        Width = 746
        Height = 1
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          359.833333333333400000
          1410.229166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel7: TQRLabel
        Left = 11
        Top = 146
        Width = 91
        Height = 41
        Size.Values = (
          76.729166666666680000
          21.166666666666670000
          275.166666666666700000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'SHIPPER / SUPPLIER'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGrayText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object lbHolder: TQRLabel
        Left = 111
        Top = 146
        Width = 619
        Height = 34
        Size.Values = (
          63.500000000000000000
          209.020833333333300000
          275.166666666666700000
          1169.458333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'SUPPLIER'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 14
      end
      object GtQRShape6: TGtQRShape
        Left = 0
        Top = 244
        Width = 746
        Height = 1
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          460.375000000000000000
          1410.229166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel8: TQRLabel
        Left = 11
        Top = 199
        Width = 91
        Height = 41
        Size.Values = (
          76.729166666666680000
          21.166666666666670000
          375.708333333333400000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'PURCHASE ORDER'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGrayText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object lbPONumber: TQRLabel
        Left = 111
        Top = 199
        Width = 619
        Height = 34
        Size.Values = (
          63.500000000000000000
          209.020833333333300000
          375.708333333333400000
          1169.458333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'P.O. NUMBER'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 14
      end
      object GtQRShape7: TGtQRShape
        Left = 0
        Top = 85
        Width = 746
        Height = 1
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          161.395833333333300000
          1410.229166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel6: TQRLabel
        Left = 11
        Top = 95
        Width = 91
        Height = 41
        Size.Values = (
          76.729166666666680000
          21.166666666666670000
          179.916666666666700000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'LOCATION / VESSEL'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGrayText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object lbLocationVesselName: TQRLabel
        Left = 111
        Top = 95
        Width = 619
        Height = 34
        Size.Values = (
          63.500000000000000000
          209.020833333333300000
          179.916666666666700000
          1169.458333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'WAREHOUSE LOCATION'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 14
      end
      object GtQRShape2: TGtQRShape
        Left = 0
        Top = 328
        Width = 746
        Height = 1
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          619.125000000000000000
          1410.229166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel9: TQRLabel
        Left = 11
        Top = 248
        Width = 91
        Height = 22
        Size.Values = (
          42.333333333333340000
          21.166666666666670000
          468.312500000000100000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'CARRIER'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGrayText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel10: TQRLabel
        Left = 296
        Top = 247
        Width = 91
        Height = 22
        Size.Values = (
          41.577380952380950000
          559.404761904761900000
          466.800595238095300000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        Caption = 'WEIGHT (KG)'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGrayText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel11: TQRLabel
        Left = 642
        Top = 247
        Width = 74
        Height = 22
        Size.Values = (
          41.577380952380950000
          1213.000000000000000000
          466.800595238095300000
          139.851190476190500000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'PACKAGES'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGrayText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel12: TQRLabel
        Left = 455
        Top = 247
        Width = 116
        Height = 22
        Size.Values = (
          41.577380952380950000
          859.895833333333400000
          466.800595238095300000
          219.226190476190500000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        Caption = 'SIZE ( L x W x H)'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGrayText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object GtQRShape8: TGtQRShape
        Left = 280
        Top = 244
        Width = 6
        Height = 84
        Size.Values = (
          158.750000000000000000
          529.166666666666800000
          460.375000000000000000
          10.583333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object lbCarrierName: TQRLabel
        Left = 7
        Top = 266
        Width = 270
        Height = 28
        Size.Values = (
          52.916666666666660000
          13.229166666666670000
          502.708333333333400000
          510.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'CARRIER NAME'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object lbCarrierTracking: TQRLabel
        Left = 7
        Top = 297
        Width = 270
        Height = 28
        Size.Values = (
          52.916666666666660000
          13.229166666666670000
          560.916666666666800000
          510.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'CARRIER NAME'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object lbWeight: TQRLabel
        Left = 297
        Top = 282
        Width = 83
        Height = 28
        Size.Values = (
          52.916666666666680000
          561.294642857142900000
          532.946428571428500000
          156.860119047619000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '4'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object lbWeigth: TQRLabel
        Left = 414
        Top = 282
        Width = 52
        Height = 28
        Size.Values = (
          52.916666666666680000
          782.410714285714200000
          532.946428571428500000
          98.273809523809540000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '800'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object QRLabel15: TQRLabel
        Left = 487
        Top = 282
        Width = 52
        Height = 28
        Size.Values = (
          52.916666666666680000
          920.372023809523800000
          532.946428571428500000
          98.273809523809540000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '800'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object QRLabel16: TQRLabel
        Left = 564
        Top = 282
        Width = 52
        Height = 28
        Size.Values = (
          52.916666666666680000
          1065.892857142857000000
          532.946428571428500000
          98.273809523809540000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '800'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object QRLabel17: TQRLabel
        Left = 472
        Top = 284
        Width = 10
        Height = 22
        Size.Values = (
          41.577380952380950000
          892.023809523809700000
          536.726190476190600000
          18.898809523809530000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        Caption = 'x'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGrayText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel18: TQRLabel
        Left = 545
        Top = 284
        Width = 10
        Height = 22
        Size.Values = (
          41.577380952380950000
          1029.985119047619000000
          536.726190476190600000
          18.898809523809530000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        Caption = 'x'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGrayText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object lbPackages: TQRLabel
        Left = 642
        Top = 282
        Width = 74
        Height = 28
        Size.Values = (
          52.916666666666680000
          1213.000000000000000000
          532.946428571428500000
          139.851190476190500000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '800'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object lbDocInfo: TQRLabel
        Left = 2
        Top = 55
        Width = 210
        Height = 34
        Size.Values = (
          64.255952380952380000
          3.779761904761905000
          103.943452380952400000
          396.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'lbDocumentDate'
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
    end
  end
  object JanuaBarcode1: TJanuaBarcode
    BarcodeType = jbtEAN13
    AutoCalc = False
    Barcode = '8001120598394'
    Left = 656
    Top = 176
  end
  object fdDocumentRotw: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 712
    Top = 128
    object fdDocumentRotwpos: TSmallintField
      FieldName = 'pos'
    end
    object fdDocumentRotwid: TIntegerField
      FieldName = 'id'
    end
    object fdDocumentRotwbarcode: TStringField
      FieldName = 'barcode'
      Size = 13
    end
    object fdDocumentRotwheight: TIntegerField
      FieldName = 'height'
    end
    object fdDocumentRotwwidth: TIntegerField
      FieldName = 'width'
    end
    object fdDocumentRotwlength: TIntegerField
      FieldName = 'length'
    end
    object fdDocumentRotwweight: TIntegerField
      FieldName = 'weight'
    end
    object fdDocumentRotwmodel: TStringField
      FieldName = 'model'
      Size = 128
    end
  end
end
