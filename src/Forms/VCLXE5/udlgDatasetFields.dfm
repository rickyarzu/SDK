object dlgDatasetFields: TdlgDatasetFields
  Left = 692
  Top = 93
  Caption = 'Elenco Colonne'
  ClientHeight = 265
  ClientWidth = 314
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 224
    Width = 314
    Height = 41
    Align = alBottom
    Caption = 'Panel1'
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 120
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkOK
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 33
    Width = 314
    Height = 191
    Align = alClient
    DataSource = DataSource1
    Options = [dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'FIELDDESC'
        Width = 280
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 314
    Height = 33
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Align = alTop
    TabOrder = 2
  end
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'FIELDNAME'
        DataType = ftString
        Size = 256
      end
      item
        Name = 'FIELDDESC'
        DataType = ftString
        Size = 256
      end>
    IndexDefs = <
      item
        Name = 'ClientDataSet1Index1'
        Fields = 'FIELDDESC'
      end>
    IndexFieldNames = 'FIELDDESC'
    Params = <>
    StoreDefs = True
    Left = 88
    Top = 40
    Data = {
      560000009619E0BD010000001800000002000000000003000000560009464945
      4C444E414D450200490000000100055749445448020002000001094649454C44
      4445534302004900000001000557494454480200020000010000}
    object ClientDataSet1FIELDNAME: TStringField
      FieldName = 'FIELDNAME'
      Size = 256
    end
    object ClientDataSet1FIELDDESC: TStringField
      FieldName = 'FIELDDESC'
      Size = 256
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 88
    Top = 96
  end
end
