object UniDatabaseSearchList: TUniDatabaseSearchList
  Left = 0
  Top = 0
  Width = 401
  Height = 575
  OnCreate = UniFrameCreate
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 401
    Height = 575
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    object UnimEdit1: TUnimEdit
      Left = 0
      Top = 0
      Width = 401
      Height = 47
      Hint = ''
      ShowHint = True
      ParentShowHint = False
      Align = alTop
      Anchors = [akLeft, akTop, akRight]
      Text = ''
      EmptyText = 'Enter at least one letter'
      FieldLabel = 'Search a City'
    end
    object UnimButton1: TUnimButton
      Left = 0
      Top = 47
      Width = 401
      Height = 40
      Hint = ''
      Align = alTop
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Search'
      UI = 'normal'
      OnClick = UnimButton1Click
    end
    object UnimList1: TUnimList
      Left = 0
      Top = 87
      Width = 401
      Height = 488
      Hint = ''
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      Grouped = True
      Striped = True
    end
  end
  object ClientDataSetSearch: TClientDataSet
    Aggregates = <>
    Filtered = True
    FilterOptions = [foCaseInsensitive]
    Params = <>
    Left = 144
    Top = 264
    object ClientDataSetSearchCustNo: TFloatField
      FieldName = 'CustNo'
    end
    object ClientDataSetSearchCompany: TStringField
      FieldName = 'Company'
      Size = 30
    end
    object ClientDataSetSearchAddr1: TStringField
      FieldName = 'Addr1'
      Size = 30
    end
    object ClientDataSetSearchAddr2: TStringField
      FieldName = 'Addr2'
      Size = 30
    end
    object ClientDataSetSearchCity: TStringField
      FieldName = 'City'
      Size = 15
    end
    object ClientDataSetSearchState: TStringField
      FieldName = 'State'
    end
    object ClientDataSetSearchZip: TStringField
      FieldName = 'Zip'
      Size = 10
    end
    object ClientDataSetSearchCountry: TStringField
      FieldName = 'Country'
    end
    object ClientDataSetSearchPhone: TStringField
      FieldName = 'Phone'
      Size = 15
    end
    object ClientDataSetSearchFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object ClientDataSetSearchTaxRate: TFloatField
      FieldName = 'TaxRate'
    end
    object ClientDataSetSearchContact: TStringField
      FieldName = 'Contact'
    end
    object ClientDataSetSearchLastInvoiceDate: TDateTimeField
      FieldName = 'LastInvoiceDate'
    end
  end
end
