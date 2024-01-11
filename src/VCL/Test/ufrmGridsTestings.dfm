object frmVCLTestGrids: TfrmVCLTestGrids
  Left = 0
  Top = 0
  Caption = 'VCL Test Grids'
  ClientHeight = 686
  ClientWidth = 1020
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pgGrids: TPageControl
    Left = 0
    Top = 0
    Width = 1020
    Height = 686
    ActivePage = tabOriginalWoll2Woll
    Align = alClient
    TabOrder = 0
    object tabOriginalWoll2Woll: TTabSheet
      Caption = 'OriginalWoll2Woll'
      object pnlOriginalWoll2Woll: TPanel
        Left = 0
        Top = 0
        Width = 1012
        Height = 41
        Align = alTop
        TabOrder = 0
        object btnTrueFalse: TButton
          Left = 1
          Top = 1
          Width = 141
          Height = 39
          Align = alLeft
          Caption = 'Bool Operators'
          TabOrder = 0
          OnClick = btnTrueFalseClick
        end
      end
      object pnlWoll2WollMainGrid: TPanel
        Left = 0
        Top = 41
        Width = 1012
        Height = 41
        Align = alTop
        Caption = 'Grid with Standard Default Data Configuration'
        TabOrder = 1
        object dbnavWoll2Woll: TDBNavigator
          Left = 142
          Top = 1
          Width = 200
          Height = 39
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbPost]
          Align = alLeft
          Flat = True
          TabOrder = 0
        end
        object btnWoll2WollSetup: TButton
          Left = 1
          Top = 1
          Width = 141
          Height = 39
          Align = alLeft
          Caption = 'Setup Environment'
          TabOrder = 1
          OnClick = btnWoll2WollSetupClick
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 82
        Width = 1012
        Height = 41
        Align = alTop
        Caption = 'Grid with Cusotm Data Configuration'
        TabOrder = 2
        object DBNavigator1: TDBNavigator
          Left = 142
          Top = 1
          Width = 200
          Height = 39
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbPost]
          Align = alLeft
          Flat = True
          TabOrder = 0
        end
        object btnWoll2WollCustomizeGrid: TButton
          Left = 1
          Top = 1
          Width = 141
          Height = 39
          Align = alLeft
          Caption = 'Customize Grid'
          TabOrder = 1
          OnClick = btnWoll2WollCustomizeGridClick
        end
      end
      object grdCustom: TwwDBGrid
        Left = 0
        Top = 123
        Width = 1012
        Height = 111
        IniAttributes.FileName = 'delphi32.ini.ini'
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alTop
        DataSource = dsCustomGrid
        TabOrder = 3
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
      end
      object pnlWoll2WollGridByCode: TPanel
        Left = 0
        Top = 234
        Width = 1012
        Height = 41
        Align = alTop
        Caption = 'Grid By Code on TDataset'
        TabOrder = 5
        object DBNavigator2: TDBNavigator
          Left = 142
          Top = 1
          Width = 200
          Height = 39
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbPost]
          Align = alLeft
          Flat = True
          TabOrder = 0
        end
        object btnDatasetGridCode: TButton
          Left = 1
          Top = 1
          Width = 141
          Height = 39
          Align = alLeft
          Caption = 'Customize IJanuaDataset'
          TabOrder = 1
          OnClick = btnWoll2WollCustomizeGridClick
        end
      end
      object pnlWoll2Woll: TPanel
        Left = 0
        Top = 275
        Width = 1012
        Height = 41
        Align = alTop
        Caption = 'Grid AutoSet with IJanuaGridFields Definitions'
        TabOrder = 4
        object DBNavigator3: TDBNavigator
          Left = 142
          Top = 1
          Width = 200
          Height = 39
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbPost]
          Align = alLeft
          Flat = True
          TabOrder = 0
        end
        object btnGridIJanuaRecordSet: TButton
          Left = 1
          Top = 1
          Width = 141
          Height = 39
          Align = alLeft
          Caption = 'Customize IJanuaRecordSet'
          TabOrder = 1
          OnClick = btnWoll2WollCustomizeGridClick
        end
      end
      object wwDBGrid4: TwwDBGrid
        Left = 0
        Top = 316
        Width = 1012
        Height = 342
        IniAttributes.FileName = 'delphi32.ini.ini'
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        TabOrder = 6
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
    end
    object TabSheet3: TTabSheet
      Caption = 'TabSheet3'
      ImageIndex = 2
    end
  end
  object dsAnagraphTest: TDataSource
    Left = 464
    Top = 128
  end
  object dsCustomGrid: TDataSource
    Left = 464
    Top = 280
  end
end
