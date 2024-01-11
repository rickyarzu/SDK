object dlgVCLRestConnections: TdlgVCLRestConnections
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Url Test'
  ClientHeight = 387
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object DBText1: TDBText
    Left = 0
    Top = 263
    Width = 505
    Height = 17
    Align = alBottom
    DataField = 'ConnectionUrl'
    DataSource = dsUrl
    ExplicitLeft = 16
    ExplicitTop = 62
    ExplicitWidth = 385
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 505
    Height = 25
    DataSource = dsUrl
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 501
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 280
    Width = 505
    Height = 107
    Align = alBottom
    TabOrder = 1
    object lbUrl: TLabel
      Left = 16
      Top = 6
      Width = 15
      Height = 15
      Caption = 'Url'
    end
    object lbResource: TLabel
      Left = 216
      Top = 6
      Width = 48
      Height = 15
      Caption = 'Resource'
    end
    object lbPort: TLabel
      Left = 407
      Top = 6
      Width = 22
      Height = 15
      Caption = 'Port'
    end
    object btnOK: TBitBtn
      Left = 407
      Top = 72
      Width = 82
      Height = 25
      Caption = 'OK'
      ModalResult = 1
      TabOrder = 0
    end
    object edUrl: TDBEdit
      Left = 16
      Top = 24
      Width = 185
      Height = 23
      DataField = 'base_url'
      DataSource = dsUrl
      TabOrder = 1
    end
    object edResource: TDBEdit
      Left = 216
      Top = 24
      Width = 185
      Height = 23
      DataField = 'api_uri'
      DataSource = dsUrl
      TabOrder = 2
    end
    object DBEdit1: TDBEdit
      Left = 407
      Top = 24
      Width = 65
      Height = 23
      DataField = 'port'
      DataSource = dsUrl
      TabOrder = 3
    end
    object DBEdit2: TDBEdit
      Left = 16
      Top = 72
      Width = 185
      Height = 23
      DataField = 'Username'
      DataSource = dsUrl
      TabOrder = 4
    end
    object DBEdit3: TDBEdit
      Left = 216
      Top = 72
      Width = 185
      Height = 23
      DataField = 'Password'
      DataSource = dsUrl
      TabOrder = 5
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 25
    Width = 505
    Height = 238
    Align = alClient
    DataSource = dsUrl
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'base_url'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'api_uri'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'port'
        Visible = True
      end>
  end
  object dsUrl: TDataSource
    DataSet = dmRestUrlSettings.memConnections
    Left = 144
    Top = 56
  end
end
