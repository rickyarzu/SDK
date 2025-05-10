object frameTestPrintAWBs: TframeTestPrintAWBs
  Left = 0
  Top = 0
  ClientHeight = 626
  ClientWidth = 1393
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  DesignSize = (
    1393
    626)
  TextHeight = 13
  object btnStartTest: TButton
    Left = 26
    Top = 3
    Width = 111
    Height = 33
    Caption = 'Start Test'
    TabOrder = 0
    OnClick = btnStartTestClick
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 82
    Width = 1343
    Height = 368
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dsHeads
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'year'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'office_id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'code'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'db_schema_id'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field1a'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field1b'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field1c'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cin'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field2'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field21'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field22'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field23'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field3'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field31'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field32'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field33'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field4a'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field4b'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field4c'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field4c2'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field4c3'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field5'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field6'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field7'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field8'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field8a'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field8b'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field8c'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field8d'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field8c1'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field8d1'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field8e'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field8f'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field8f1'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field9'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field10'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field11'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field12'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field13'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field14'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field15'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field16'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field17'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field28a'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field28b'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field29a'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field29b'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field30a'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field30b'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field31a'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field31b'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field32a'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field32b'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field33a'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field33b'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field34'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field35'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field36'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field37'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field38'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'hi1'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'hi2'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'hi3'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'codother1'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'codother2'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'codother3'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'codother4'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'codother5'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'codother6'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'codother7'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'codother8'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'codother9'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'amountother9'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'amountother8'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'amountother7'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'amountother6'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'amountother5'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'amountother4'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'amountother3'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'amountother2'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'amountother1'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fieldhead'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'partialmaster'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'partialmasteryear'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'currency_id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'awb_type_id'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jguid'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'netamount'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'progressive'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mawbcosts'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mawbothcosts'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'taxableweight'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'masterdate'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'estimateflight'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'effectiveflight'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'etdestimate'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'etdeffective'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'etaestimate'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'etaeffective'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'transportcost'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'containerseals'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'masternotes'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'awb_type'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'order_id'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'customs_doc_type'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'palletcost'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'year_number'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field19a'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'branchlog'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'deleted'
        Width = 64
        Visible = True
      end>
  end
  object grdRows: TDBGrid
    Left = 24
    Top = 455
    Width = 851
    Height = 196
    Anchors = [akLeft, akRight, akBottom]
    DataSource = dsRows
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'awb_id'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'row_pos'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field19a'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field20a'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field21'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field22'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field23'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field24'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field25'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field26a'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field27'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jguid'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'db_schema_id'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'deleted'
        Width = 64
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 26
    Top = 42
    Width = 250
    Height = 33
    DataSource = dsHeads
    TabOrder = 3
  end
  object btnPrint: TButton
    Left = 143
    Top = 3
    Width = 63
    Height = 33
    Caption = 'Print'
    Enabled = False
    TabOrder = 4
  end
  object DBMemo1: TDBMemo
    Left = 416
    Top = 4
    Width = 441
    Height = 72
    DataField = 'calc_field2'
    DataSource = dsHeads
    TabOrder = 5
  end
  object DBEdit1: TDBEdit
    Left = 282
    Top = 54
    Width = 128
    Height = 21
    DataField = 'field1c'
    DataSource = dsHeads
    TabOrder = 6
  end
  object Edit1: TEdit
    Left = 1210
    Top = 54
    Width = 157
    Height = 21
    Anchors = [akTop, akRight]
    CharCase = ecUpperCase
    TabOrder = 7
    TextHint = 'Enter Search Text'
    ExplicitLeft = 1212
  end
  object DBMemo2: TDBMemo
    Left = 885
    Top = 494
    Width = 223
    Height = 157
    Anchors = [akRight, akBottom]
    DataSource = dsRows
    TabOrder = 8
    ExplicitLeft = 887
    ExplicitTop = 502
  end
  object DBNavigator2: TDBNavigator
    Left = 881
    Top = 456
    Width = 224
    Height = 32
    DataSource = dsHeads
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
    Anchors = [akRight, akBottom]
    TabOrder = 9
    ExplicitLeft = 883
    ExplicitTop = 464
  end
  object btnEditDocument: TButton
    Left = 282
    Top = 3
    Width = 63
    Height = 33
    Caption = 'Edit'
    Enabled = False
    TabOrder = 10
  end
  object btnAddDocument: TButton
    Left = 351
    Top = 3
    Width = 63
    Height = 33
    Caption = 'Add'
    Enabled = False
    TabOrder = 11
  end
  object btnDel: TButton
    Left = 213
    Top = 3
    Width = 63
    Height = 33
    Caption = 'Del'
    Enabled = False
    TabOrder = 12
  end
  object DBMemo3: TDBMemo
    Left = 863
    Top = 3
    Width = 341
    Height = 72
    Anchors = [akLeft, akTop, akRight]
    DataSource = dsHeads
    TabOrder = 13
    ExplicitWidth = 343
  end
  object DBGrid2: TDBGrid
    Left = 1116
    Top = 455
    Width = 251
    Height = 196
    Anchors = [akLeft, akRight, akBottom]
    DataSource = dsSurcharges
    TabOrder = 14
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'code'
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lkpAWBSurcharges'
        Title.Caption = 'Description'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'amount'
        Width = 90
        Visible = True
      end>
  end
  object dsHeads: TDataSource
    DataSet = dmPgAWBsStorage.qryAWBs
    Left = 312
    Top = 192
  end
  object dsRows: TDataSource
    DataSet = dmPgAWBsStorage.qryAWBRows
    Left = 312
    Top = 248
  end
  object dsSurcharges: TDataSource
    DataSet = dmPgAWBsStorage.qryAWBSurcharges
    Left = 312
    Top = 304
  end
  object dsDocumentTypes: TDataSource
    DataSet = dmJanuaPgDocumentsStorage.qryDocType
    Left = 632
    Top = 224
  end
end
