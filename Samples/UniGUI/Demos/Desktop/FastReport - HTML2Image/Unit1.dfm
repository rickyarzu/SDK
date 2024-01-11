object UniForm1: TUniForm1
  Left = 0
  Top = 0
  ClientHeight = 622
  ClientWidth = 690
  Caption = ''
  BorderStyle = bsNone
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnBeforeShow = UniFormBeforeShow
  PixelsPerInch = 96
  TextHeight = 13
  object UniURLFrame1: TUniURLFrame
    Left = 0
    Top = 0
    Width = 690
    Height = 622
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    ParentColor = False
    Color = clBtnFace
    object UniButton1: TUniButton
      Left = 0
      Top = 597
      Width = 690
      Height = 25
      Hint = ''
      Caption = 'Close'
      Anchors = [akLeft, akRight, akBottom]
      Align = alBottom
      TabOrder = 1
      OnClick = UniButton1Click
    end
  end
  object frxReport1: TfrxReport
    Version = '5.5.2'
    DataSet = frxDBDataset1
    DataSetName = 'frxDBDataset1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42333.649778981500000000
    ReportOptions.LastChange = 42920.499193969910000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 181
    Top = 176
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 41.574830000000000000
        Top = 16.000000000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          Left = 151.181200000000000000
          Top = 3.779530000000001000
          Width = 415.748300000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Invoice')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 230.551330000000000000
        Top = 233.000000000000000000
        Width = 718.110700000000000000
        RowCount = 1
        object Memo4: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 147.401670000000000000
          Top = 79.370129999999790000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSetName = 'ADOQuery1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."InvCustNum"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 147.401670000000000000
          Top = 109.606370000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSetName = 'ADOQuery1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."CustFName"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 3.779530000000000000
          Top = 79.370130000000020000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Customer Number:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 3.779530000000000000
          Top = 109.606370000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'First Name:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 147.401670000000000000
          Top = 136.063080000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSetName = 'ADOQuery1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."CustLName"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 147.401670000000000000
          Top = 166.299320000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSetName = 'ADOQuery1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."CustCoName"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 147.401670000000000000
          Top = 192.756030000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSetName = 'ADOQuery1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."CustAddr1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 3.779530000000000000
          Top = 136.063080000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSetName = 'ADOQuery1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Last Name:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 3.779530000000000000
          Top = 166.299320000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Company:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 3.779530000000000000
          Top = 192.756030000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Address:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Left = 551.811380000000000000
          Top = 3.779529999999994000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataSetName = 'ADOQuery1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."InvDate"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 551.811380000000000000
          Top = 30.236239999999900000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSetName = 'ADOQuery1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."InvNum"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 453.543600000000000000
          Top = 3.779529999999994000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Date:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 423.307360000000000000
          Top = 30.236239999999900000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSetName = 'ADOQuery1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Invoice Number:')
          ParentFont = False
        end
        object Gradient1: TfrxGradientView
          Top = 49.133889999999840000
          Width = 820.158010000000000000
          Height = 18.897650000000000000
          EndColor = clNavy
          Style = gsHorizontal
          Color = 12615808
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 95.031540000000010000
        Top = 78.000000000000000000
        Width = 718.110700000000000000
        object HTMLImage: TfrxPictureView
          Width = 718.000000000000000000
          Height = 99.000000000000000000
          Center = True
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 534.000000000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo23: TfrxMemoView
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."InvDetailProdNum"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 117.165430000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."InvDetailProdDescr"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 336.378170000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."InvDetailQty"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 453.543600000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."InvDetailProdPrice"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 566.929500000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[<frxDBDataset1."InvDetailQty">*<frxDBDataset1."InvDetailProdPri' +
              'ce">]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 484.000000000000000000
        Width = 718.110700000000000000
        object Memo22: TfrxMemoView
          Top = 7.559059999999988000
          Width = 113.385900000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16629143
          Memo.UTF8W = (
            'Product Number')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 117.165430000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16629143
          Memo.UTF8W = (
            'Product Description')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 336.378170000000000000
          Top = 7.559059999999988000
          Width = 113.385900000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16629143
          Memo.UTF8W = (
            'Item Count')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 453.543600000000000000
          Top = 7.559059999999988000
          Width = 109.606370000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16629143
          Memo.UTF8W = (
            'Unit Price')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 566.929500000000000000
          Top = 7.559059999999988000
          Width = 109.606370000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16629143
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
      end
      object DetailData2: TfrxDetailData
        FillType = ftBrush
        Height = 45.354360000000000000
        Top = 573.000000000000000000
        Width = 718.110700000000000000
        RowCount = 1
        object Memo18: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 566.929500000000000000
          Top = 22.677180000000020000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSetName = 'ADOQuery1'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."InvTotal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 566.929500000000000000
          Width = 109.606370000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16629143
          Memo.UTF8W = (
            'Grand Total')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 49.133890000000000000
        Top = 638.000000000000000000
        Width = 718.110700000000000000
        object Gradient2: TfrxGradientView
          Top = 30.236239999999950000
          Width = 820.157480314961000000
          Height = 18.897650000000000000
          EndColor = clNavy
          Style = gsHorizontal
          Color = 12615808
        end
        object Line1: TfrxLineView
          Width = 733.228820000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo16: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559060000000045000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'FMSoft Ltd.')
          ParentFont = False
        end
      end
    end
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 277
    Top = 182
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = True
    DataSource = UniMainModule.DataSource1
    BCDToCurrency = False
    Left = 365
    Top = 184
  end
  object frxGradientObject1: TfrxGradientObject
    Left = 472
    Top = 184
  end
end
