object dlgFootballNewSeason: TdlgFootballNewSeason
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Nuova Stagione'
  ClientHeight = 154
  ClientWidth = 452
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 37
    Width = 56
    Height = 13
    Caption = 'ID Stagione'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 86
    Top = 37
    Width = 72
    Height = 13
    Caption = 'Nome Stagione'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 356
    Top = 34
    Width = 68
    Height = 13
    Caption = 'Abbreviazione'
    FocusControl = DBEdit3
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 53
    Width = 56
    Height = 21
    DataField = 'season_id'
    DataSource = dmFootballPostgres.dsSeasons
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 86
    Top = 53
    Width = 264
    Height = 21
    DataField = 'season_des'
    DataSource = dmFootballPostgres.dsSeasons
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 356
    Top = 53
    Width = 69
    Height = 21
    DataField = 'season_code'
    DataSource = dmFootballPostgres.dsSeasons
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 238
    Top = 112
    Width = 88
    Height = 25
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Kind = bkOK
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 3
  end
  object BitBtn2: TBitBtn
    Left = 337
    Top = 112
    Width = 88
    Height = 25
    Caption = 'Annulla'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Kind = bkCancel
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 4
  end
end
