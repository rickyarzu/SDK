object Form8: TForm8
  Left = 0
  Top = 0
  Caption = 'Form8'
  ClientHeight = 573
  ClientWidth = 937
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 937
    Height = 65
    Align = alTop
    TabOrder = 0
    object Edit1: TEdit
      Left = 24
      Top = 23
      Width = 521
      Height = 21
      TabOrder = 0
      Text = 'Edit1'
    end
    object Button1: TButton
      Left = 551
      Top = 21
      Width = 138
      Height = 25
      Caption = 'Cerca'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object WebGMaps1: TWebGMaps
    Left = 0
    Top = 86
    Width = 937
    Height = 487
    Align = alClient
    Clusters = <>
    Markers = <>
    Polylines = <>
    Polygons = <>
    Directions = <>
    MapOptions.DefaultLatitude = 48.859040000000000000
    MapOptions.DefaultLongitude = 2.294297000000000000
    StreetViewOptions.DefaultLatitude = 48.859040000000000000
    StreetViewOptions.DefaultLongitude = 2.294297000000000000
    MapPersist.Location = mplInifile
    MapPersist.Key = 'WebGMaps'
    MapPersist.Section = 'MapBounds'
    TabOrder = 1
    Version = '2.6.0.0'
    object CRDBGrid1: TCRDBGrid
      Left = 0
      Top = 0
      Width = 385
      Height = 487
      Align = alLeft
      DataSource = PgDataSource1
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'an_last_name'
          Width = 184
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'latitude'
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'longitude'
          Width = 77
          Visible = True
        end>
    end
  end
  object DBEdit1: TDBEdit
    Left = 0
    Top = 65
    Width = 937
    Height = 21
    Align = alTop
    DataField = 'bigaddress'
    DataSource = PgDataSource1
    TabOrder = 2
  end
  object JanuaStreetMap1: TJanuaStreetMap
    LogToFile = False
    ApplicationType = jatDefault
    Language = jlaNone
    TestMode = False
    Left = 464
    Top = 192
  end
  object AdvJSONMemoStyler1: TAdvJSONMemoStyler
    CommentStyle.TextColor = clNavy
    CommentStyle.BkColor = clWhite
    CommentStyle.Style = [fsItalic]
    NumberStyle.TextColor = clFuchsia
    NumberStyle.BkColor = clWhite
    NumberStyle.Style = [fsBold]
    HighlightStyle.TextColor = clWhite
    HighlightStyle.BkColor = clRed
    HighlightStyle.Style = [fsBold]
    AllStyles = <
      item
        KeyWords.Strings = (
          'false'
          'null'
          'true')
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        BGColor = clWhite
        StyleType = stKeyword
        BracketStart = #0
        BracketEnd = #0
        Info = 'JSON Standard Default'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clWhite
        StyleType = stBracket
        BracketStart = #39
        BracketEnd = #39
        Info = 'Simple Quote'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clWhite
        StyleType = stBracket
        BracketStart = '"'
        BracketEnd = '"'
        Info = 'Double Quote'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clWhite
        StyleType = stSymbol
        BracketStart = #0
        BracketEnd = #0
        Symbols = ',:(){}[]='
        Info = 'Symbols'
      end>
    HintParameter.TextColor = clBlack
    HintParameter.BkColor = clInfoBk
    HintParameter.HintCharStart = '('
    HintParameter.HintCharEnd = ')'
    HintParameter.HintCharDelimiter = ';'
    HintParameter.HintClassDelimiter = '.'
    HintParameter.HintCharWriteDelimiter = ','
    HexIdentifier = '0x'
    Description = 'JSON'
    Filter = 'JSON Files (*.json)|*.json'
    DefaultExtension = '.json'
    StylerName = 'JSON'
    Extensions = 'json'
    RegionDefinitions = <
      item
        Identifier = '{'
        RegionStart = '{'
        RegionEnd = '}'
        RegionType = rtClosed
        ShowComments = False
      end>
    Left = 248
    Top = 201
  end
  object PgConnection1: TJanuaUniConnection
    Username = 'ergo'
    Server = 'pg.januaservers.com'
    Database = 'ergomercator'
    Schema = 'anagraph'
    Connected = True
    Left = 464
    Top = 296
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  object PgQuery1: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'address'
        FieldType = ftWideString
        FieldLength = 2048
        IgnoreErrors = True
      end
      item
        FieldName = 'bigaddress'
        FieldType = ftWideString
        FieldLength = 2048
        IgnoreErrors = True
      end>
    SQLInsert.Strings = (
      'INSERT INTO anagraph.anagraphs'
      '  (anagraph_id, latitude, longitude)'
      'VALUES'
      '  (:anagraph_id, :latitude, :longitude)')
    SQLDelete.Strings = (
      'DELETE FROM anagraph.anagraphs'
      'WHERE'
      '  anagraph_id = :Old_anagraph_id')
    SQLUpdate.Strings = (
      'UPDATE anagraph.anagraphs'
      'SET'
      
        '  anagraph_id = :anagraph_id, latitude = :latitude, longitude = ' +
        ':longitude'
      'WHERE'
      '  anagraph_id = :Old_anagraph_id')
    SQLRefresh.Strings = (
      'SELECT anagraph_id, latitude, longitude FROM anagraph.anagraphs'
      'WHERE'
      '  anagraph_id = :anagraph_id')
    SQLLock.Strings = (
      'SELECT * FROM anagraph.anagraphs'
      'WHERE'
      '  anagraph_id = :Old_anagraph_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM anagraph.anagraphs'
      ''
      ') t')
    Connection = PgConnection1
    SQL.Strings = (
      'select '
      'anagraph_id, an_last_name, '
      'an_address || '#39' '#39' || an_town as address, '
      
        'an_address || '#39' '#39' || an_postal_code || '#39' '#39' || an_town as bigaddr' +
        'ess, '
      'latitude, longitude'
      'from anagraph.anagraphs where an_main_group_id = 6')
    Left = 56
    Top = 256
    object PgQuery1anagraph_id: TIntegerField
      FieldName = 'anagraph_id'
      Required = True
    end
    object PgQuery1address: TWideStringField
      FieldName = 'address'
      ReadOnly = True
      Size = 2048
    end
    object PgQuery1latitude: TFloatField
      FieldName = 'latitude'
    end
    object PgQuery1longitude: TFloatField
      FieldName = 'longitude'
    end
    object PgQuery1an_last_name: TStringField
      FieldName = 'an_last_name'
      Required = True
      Size = 128
    end
    object PgQuery1bigaddress: TWideStringField
      FieldName = 'bigaddress'
      ReadOnly = True
      Size = 2048
    end
  end
  object PgDataSource1: TUniDataSource
    DataSet = PgQuery1
    Left = 56
    Top = 192
  end
  object WebGMapsGeocoding1: TWebGMapsGeocoding
    Version = '1.0.1.0'
    Left = 464
    Top = 240
  end
end
