object UniGridsColumnLocking: TUniGridsColumnLocking
  Left = 0
  Top = 0
  Width = 1021
  Height = 561
  OnCreate = UniFrameCreate
  TabOrder = 0
  ParentRTL = False
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 1021
    Height = 561
    Hint = ''
    ParentColor = False
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 40
    ExplicitTop = 24
    ExplicitWidth = 929
    ExplicitHeight = 505
    object UniDBGrid1: TUniDBGrid
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 1015
      Height = 555
      Hint = ''
      HeaderTitle = 'Grid Column Locking'
      DataSource = DataSource1
      LoadMask.Message = 'Loading data...'
      ForceFit = True
      Align = alClient
      TabOrder = 0
      Columns = <
        item
          FieldName = 'CustNo'
          Title.Caption = 'CustNo'
          Width = 76
          Alignment = taRightJustify
          Locked = True
          Menu.MenuEnabled = False
        end
        item
          FieldName = 'Company'
          Title.Caption = 'Company'
          Width = 184
          Locked = True
          Menu.MenuEnabled = False
        end
        item
          FieldName = 'Addr1'
          Title.Caption = 'Addr1'
          Width = 184
          Menu.MenuEnabled = False
        end
        item
          FieldName = 'Addr2'
          Title.Caption = 'Addr2'
          Width = 184
          Menu.MenuEnabled = False
        end
        item
          FieldName = 'City'
          Title.Caption = 'City'
          Width = 94
          Menu.MenuEnabled = False
        end
        item
          FieldName = 'State'
          Title.Caption = 'State'
          Width = 124
          Menu.MenuEnabled = False
        end
        item
          FieldName = 'Zip'
          Title.Caption = 'Zip'
          Width = 76
          Menu.MenuEnabled = False
        end
        item
          FieldName = 'Country'
          Title.Caption = 'Country'
          Width = 124
          Menu.MenuEnabled = False
        end
        item
          FieldName = 'Phone'
          Title.Caption = 'Phone'
          Width = 94
          Menu.MenuEnabled = False
        end
        item
          FieldName = 'FAX'
          Title.Caption = 'FAX'
          Width = 94
          Menu.MenuEnabled = False
        end
        item
          FieldName = 'TaxRate'
          Title.Caption = 'TaxRate'
          Width = 58
          Alignment = taRightJustify
          Menu.MenuEnabled = False
        end
        item
          FieldName = 'Contact'
          Title.Caption = 'Contact'
          Width = 124
          Locked = True
          Menu.MenuEnabled = False
        end
        item
          FieldName = 'LastInvoiceDate'
          Title.Caption = 'LastInvoiceDate'
          Width = 112
          Menu.MenuEnabled = False
        end>
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 520
    Top = 480
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 336
    Top = 440
  end
end
