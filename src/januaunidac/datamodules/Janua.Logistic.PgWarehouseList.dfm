inherited dmPgWarehouseList: TdmPgWarehouseList
  Height = 275
  Width = 417
  PixelsPerInch = 96
  inherited PgErgoConnection: TJanuaUniConnection
    Port = 5444
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  object qryLocations: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'select distinct location_name from documents.heads h '
      'where location_name is not null '
      'and length(trim(location_name)) > 2'
      'order by location_name asc ')
    Left = 72
    Top = 144
    object qryLocationslocation_name: TWideStringField
      FieldName = 'location_name'
      Size = 128
    end
  end
  object qrySuppliers: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'select '
      'anagraph_id, '
      'an_last_name'
      'from '
      'anagraph.anagraphs l'
      'where'
      '--an_main_group_id = 9 and'
      ' length(trim(an_last_name)) > 2'
      'and exists'
      
        '(select 1 from documents.heads h where h.holder_id = l.anagraph_' +
        'id )'
      'order by an_last_name')
    Left = 72
    Top = 208
    object qrySuppliersanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
      Required = True
    end
    object qrySuppliersan_last_name: TWideStringField
      FieldName = 'an_last_name'
      Required = True
      Size = 128
    end
  end
  object qryWarehouses: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'select anagraph_id, an_last_name '
      'from anagraph.anagraphs'
      'where'
      'an_main_group_id = 16'
      'order by an_last_name')
    Left = 184
    Top = 40
    object qryWarehousesanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
      Required = True
    end
    object qryWarehousesan_last_name: TWideStringField
      FieldName = 'an_last_name'
      Required = True
      Size = 128
    end
  end
  object qryInventoryList: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from logistic.inventory_view '
      'where '
      'warehouse_id = :warehouse_id '
      'and'
      '(holder_id = :holder_id or :holder_id = 0)'
      'and'
      
        '(location_name = :location_name or :location_name = '#39#39' or :locat' +
        'ion_name is null)'
      'and'
      '(inventory_qty > 0 or not :inventory)')
    Left = 184
    Top = 104
    ParamData = <
      item
        DataType = ftInteger
        Name = 'warehouse_id'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'holder_id'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftWideString
        Name = 'location_name'
        ParamType = ptInput
        Size = 128
        Value = nil
      end
      item
        DataType = ftBoolean
        Name = 'inventory'
        ParamType = ptInput
        Value = True
      end>
    object qryInventoryListid: TLargeintField
      FieldName = 'id'
    end
    object qryInventoryListdoc_id: TLargeintField
      FieldName = 'doc_id'
    end
    object qryInventoryListitem_id: TLargeintField
      FieldName = 'item_id'
    end
    object qryInventoryListrow_date: TDateField
      FieldName = 'row_date'
    end
    object qryInventoryListinout: TSmallintField
      FieldName = 'inout'
    end
    object qryInventoryListmodel: TWideStringField
      FieldName = 'model'
      Size = 128
    end
    object qryInventoryListprice: TFloatField
      FieldName = 'price'
    end
    object qryInventoryListdelivered_qty: TFloatField
      FieldName = 'delivered_qty'
    end
    object qryInventoryListsupplier_id: TIntegerField
      FieldName = 'supplier_id'
    end
    object qryInventoryListinventory_qty: TFloatField
      FieldName = 'inventory_qty'
    end
    object qryInventoryListwarehouse_location_id: TIntegerField
      FieldName = 'warehouse_location_id'
    end
    object qryInventoryListoffice_id: TIntegerField
      FieldName = 'office_id'
    end
    object qryInventoryListwarehouse_id: TIntegerField
      FieldName = 'warehouse_id'
    end
    object qryInventoryListholder_id: TIntegerField
      FieldName = 'holder_id'
    end
    object qryInventoryListholder_name: TWideStringField
      FieldName = 'holder_name'
      Size = 50
    end
    object qryInventoryListlocation_name: TWideStringField
      FieldName = 'location_name'
      Size = 128
    end
  end
end
