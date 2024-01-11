object MainmForm: TMainmForm
  Left = 0
  Top = 0
  ClientHeight = 480
  ClientWidth = 320
  Caption = 'MainmForm'
  TitleButtons = <>
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimDBNavigator1: TUnimDBNavigator
    Left = 0
    Top = 0
    Width = 320
    Height = 47
    Hint = ''
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
    Align = alTop
    TabOrder = 0
  end
  object UnimDBGrid1: TUnimDBGrid
    Left = 0
    Top = 47
    Width = 320
    Height = 369
    Hint = ''
    Align = alClient
    DataSource = DataSource1
    OnColumnResize = UnimDBGrid1ColumnResize
    OnDrawColumnCell = UnimDBGrid1DrawColumnCell
    Columns = <
      item
        Title.Caption = 'Company'
        FieldName = 'Company'
        Width = 334
      end
      item
        Title.Caption = 'Addr1'
        FieldName = 'Addr1'
        Width = 334
      end
      item
        Title.Caption = 'City'
        FieldName = 'City'
        Width = 169
      end
      item
        Title.Caption = 'State'
        FieldName = 'State'
        Width = 224
      end
      item
        Title.Caption = 'Country'
        FieldName = 'Country'
        Width = 224
      end
      item
        Title.Caption = 'Phone'
        FieldName = 'Phone'
        Width = 169
      end
      item
        Title.Caption = 'Contact'
        FieldName = 'Contact'
        Width = 224
      end>
  end
  object UnimLabel1: TUnimLabel
    Left = 0
    Top = 416
    Width = 320
    Height = 64
    Hint = ''
    AutoSize = False
    Caption = 'You can change column size<br/> by Pinch / Unpinch'
    Align = alBottom
  end
  object DataSource1: TDataSource
    DataSet = UniMainModule.ClientDataSet1
    Left = 120
    Top = 120
  end
end
