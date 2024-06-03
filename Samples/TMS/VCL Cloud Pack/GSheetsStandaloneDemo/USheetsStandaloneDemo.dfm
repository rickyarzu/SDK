object Form9: TForm9
  Left = 0
  Top = 0
  Caption = 'Google Sheets Demo'
  ClientHeight = 687
  ClientWidth = 1006
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 1006
    Height = 60
    Align = alTop
    TabOrder = 0
    object lblErrorMsg: TLabel
      Left = 571
      Top = 12
      Width = 6
      Height = 23
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnConnect: TButton
      Left = 13
      Top = 10
      Width = 97
      Height = 25
      Caption = 'Connect'
      TabOrder = 0
      OnClick = btnConnectClick
    end
    object Button1: TButton
      Left = 116
      Top = 10
      Width = 97
      Height = 25
      Caption = 'Disconnect'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 145
    Width = 1006
    Height = 542
    Align = alClient
    TabOrder = 1
    object Panel2: TPanel
      Left = 2
      Top = 15
      Width = 1002
      Height = 525
      Align = alClient
      TabOrder = 0
      DesignSize = (
        1002
        525)
      object Label3: TLabel
        Left = 8
        Top = 12
        Width = 48
        Height = 13
        Caption = 'Workbook'
      end
      object Label4: TLabel
        Left = 7
        Top = 36
        Width = 33
        Height = 13
        Caption = 'Sheets'
      end
      object StringGrid1: TStringGrid
        Left = 8
        Top = 120
        Width = 985
        Height = 398
        Anchors = [akLeft, akTop, akBottom]
        TabOrder = 0
        OnClick = StringGrid1Click
        ColWidths = (
          64
          64
          64
          64
          64)
        RowHeights = (
          24
          24
          24
          24
          24)
      end
      object btnAddRow: TButton
        Left = 69
        Top = 89
        Width = 167
        Height = 25
        Caption = 'Add row'
        TabOrder = 1
        OnClick = btnAddRowClick
      end
      object btBrowser: TButton
        Left = 242
        Top = 90
        Width = 167
        Height = 25
        Caption = 'Display in browser'
        TabOrder = 2
        OnClick = btBrowserClick
      end
      object btUpdateCell: TButton
        Left = 242
        Top = 59
        Width = 167
        Height = 25
        Caption = 'Update selected cell'
        TabOrder = 3
        OnClick = btUpdateCellClick
      end
      object edCellValue: TEdit
        Left = 69
        Top = 61
        Width = 166
        Height = 21
        TabOrder = 4
      end
      object cbSheets: TComboBox
        Left = 69
        Top = 32
        Width = 167
        Height = 21
        Style = csDropDownList
        TabOrder = 5
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 60
    Width = 1006
    Height = 85
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 13
      Top = 52
      Width = 20
      Height = 13
      Caption = 'Title'
    end
    object Label2: TLabel
      Left = 13
      Top = 23
      Width = 53
      Height = 13
      Caption = 'Workbooks'
    end
    object cbWorkBooks: TComboBox
      Left = 72
      Top = 20
      Width = 166
      Height = 21
      Style = csDropDownList
      TabOrder = 0
    end
    object txtTitle: TEdit
      Left = 72
      Top = 49
      Width = 166
      Height = 21
      TabOrder = 1
    end
    object btnCreateWorkbook: TButton
      Left = 244
      Top = 47
      Width = 167
      Height = 25
      Caption = 'Create Workbook'
      TabOrder = 2
      OnClick = btnCreateWorkbookClick
    end
    object btLoadWorkbook: TButton
      Left = 244
      Top = 18
      Width = 167
      Height = 25
      Caption = 'Load Workbook'
      TabOrder = 3
      OnClick = btLoadWorkbookClick
    end
  end
  object AdvGSheets1: TAdvGSheets
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackURL = 'http://127.0.0.1:8889/'
    App.CallBackPort = 8889
    PersistTokens.Location = plIniFile
    Scopes.Strings = (
      'https://www.googleapis.com/auth/drive'
      'https://www.googleapis.com/auth/drive.file'
      'https://spreadsheets.google.com/feeds')
    OnReceivedAccessToken = AdvGSheets1ReceivedAccessToken
    AuthFormSettings.Caption = 'Authorize'
    AuthFormSettings.Width = 900
    AuthFormSettings.Height = 600
    Left = 808
    Top = 8
  end
end
