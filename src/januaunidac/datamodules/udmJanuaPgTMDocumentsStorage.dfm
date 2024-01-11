inherited dmJanuaPgTMDocumentsStorage: TdmJanuaPgTMDocumentsStorage
  OldCreateOrder = False
  Height = 440
  Width = 453
  inherited PgErgoConnection: TJanuaUniConnection
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  inherited qryDocHeads: TUniQuery
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'p_doc_id'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'p_db_schema_id'
        ParamType = ptInput
        Value = 33
      end
      item
        DataType = ftWideString
        Name = 'p_search_name'
        ParamType = ptInput
        Value = '%'
      end
      item
        DataType = ftSmallint
        Name = 'p_type_id'
        ParamType = ptInput
        Value = 16
      end>
  end
  inherited qryDocRows: TUniQuery
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id'
        ParamType = ptInput
        Value = 308
      end
      item
        DataType = ftSmallint
        Name = 'type_id'
        ParamType = ptInput
        Value = 0
      end>
  end
  inherited qryDocAttachments: TUniQuery
    Left = 312
  end
  inherited qryVatAmounts: TUniQuery
    Left = 80
    Top = 360
  end
  inherited lkpDocTypes: TUniQuery
    Left = 312
    Top = 192
  end
  inherited lkpSystemUsers: TUniQuery
    Left = 312
    Top = 248
  end
  object qryDocCosts: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO documents.rows'
      
        '  (id, doc_id, item_id, row_date, inout, model, code, descriptio' +
        'n, price, vat_id, vat_rate, discount_rate, discount_comm_rate, d' +
        'iscount_ext_rate, quantity, secondhand, dimension_id1, dimension' +
        '_id2, dimensions_id3, currency_id, exchange_rate, position, deli' +
        'very_date, barcode, delivered_qty, sample_qty, is_sample, ref_co' +
        'de, doc_origin_id, row_origin_id, anagrams_ref_id, collector_poi' +
        'nts, collector_points_forfait, package_type_id, jguid, ordered_q' +
        'ty, pallets, weight_on_delivery, weight_on_order, weight_on_ship' +
        'ping, volume, doc_origin_number, doc_origin_date, customs_doc_re' +
        'f, customs_doc_type_id, purchase_order, insert_date, update_date' +
        ', user_insert, user_update, size_weight, size_length, size_heigh' +
        't, inventory_qty, inventory_weight, customs_doc_cin, customs_doc' +
        '_date, supplier_id, doc_origin__number, db_schema_id, doc_head_j' +
        'guid, item_jguid, container_status, rights, invoice_number, cust' +
        'om_field_1, custom_field_2, invoice_amount, custom_field_3, json' +
        '_nested_table, invoice_date, importexport, type_id, is_descripti' +
        'on, exchange_rage, freight_qty, amount, vat_code, freight_rate, ' +
        'vat_description, currency_code, currency_description, flg_descri' +
        'ption)'
      'VALUES'
      
        '  (:id, :doc_id, :item_id, :row_date, :inout, :model, :code, :de' +
        'scription, :price, :vat_id, :vat_rate, :discount_rate, :discount' +
        '_comm_rate, :discount_ext_rate, :quantity, :secondhand, :dimensi' +
        'on_id1, :dimension_id2, :dimensions_id3, :currency_id, :exchange' +
        '_rate, :position, :delivery_date, :barcode, :delivered_qty, :sam' +
        'ple_qty, :is_sample, :ref_code, :doc_origin_id, :row_origin_id, ' +
        ':anagrams_ref_id, :collector_points, :collector_points_forfait, ' +
        ':package_type_id, :jguid, :ordered_qty, :pallets, :weight_on_del' +
        'ivery, :weight_on_order, :weight_on_shipping, :volume, :doc_orig' +
        'in_number, :doc_origin_date, :customs_doc_ref, :customs_doc_type' +
        '_id, :purchase_order, :insert_date, :update_date, :user_insert, ' +
        ':user_update, :size_weight, :size_length, :size_height, :invento' +
        'ry_qty, :inventory_weight, :customs_doc_cin, :customs_doc_date, ' +
        ':supplier_id, :doc_origin__number, :db_schema_id, :doc_head_jgui' +
        'd, :item_jguid, :container_status, :rights, :invoice_number, :cu' +
        'stom_field_1, :custom_field_2, :invoice_amount, :custom_field_3,' +
        ' :json_nested_table, :invoice_date, :importexport, :type_id, :is' +
        '_description, :exchange_rage, :freight_qty, :amount, :vat_code, ' +
        ':freight_rate, :vat_description, :currency_code, :currency_descr' +
        'iption, :flg_description)')
    SQLDelete.Strings = (
      'DELETE FROM documents.rows'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE documents.rows'
      'SET'
      
        '  id = :id, doc_id = :doc_id, item_id = :item_id, row_date = :ro' +
        'w_date, inout = :inout, model = :model, code = :code, descriptio' +
        'n = :description, price = :price, vat_id = :vat_id, vat_rate = :' +
        'vat_rate, discount_rate = :discount_rate, discount_comm_rate = :' +
        'discount_comm_rate, discount_ext_rate = :discount_ext_rate, quan' +
        'tity = :quantity, secondhand = :secondhand, dimension_id1 = :dim' +
        'ension_id1, dimension_id2 = :dimension_id2, dimensions_id3 = :di' +
        'mensions_id3, currency_id = :currency_id, exchange_rate = :excha' +
        'nge_rate, position = :position, delivery_date = :delivery_date, ' +
        'barcode = :barcode, delivered_qty = :delivered_qty, sample_qty =' +
        ' :sample_qty, is_sample = :is_sample, ref_code = :ref_code, doc_' +
        'origin_id = :doc_origin_id, row_origin_id = :row_origin_id, anag' +
        'rams_ref_id = :anagrams_ref_id, collector_points = :collector_po' +
        'ints, collector_points_forfait = :collector_points_forfait, pack' +
        'age_type_id = :package_type_id, jguid = :jguid, ordered_qty = :o' +
        'rdered_qty, pallets = :pallets, weight_on_delivery = :weight_on_' +
        'delivery, weight_on_order = :weight_on_order, weight_on_shipping' +
        ' = :weight_on_shipping, volume = :volume, doc_origin_number = :d' +
        'oc_origin_number, doc_origin_date = :doc_origin_date, customs_do' +
        'c_ref = :customs_doc_ref, customs_doc_type_id = :customs_doc_typ' +
        'e_id, purchase_order = :purchase_order, insert_date = :insert_da' +
        'te, update_date = :update_date, user_insert = :user_insert, user' +
        '_update = :user_update, size_weight = :size_weight, size_length ' +
        '= :size_length, size_height = :size_height, inventory_qty = :inv' +
        'entory_qty, inventory_weight = :inventory_weight, customs_doc_ci' +
        'n = :customs_doc_cin, customs_doc_date = :customs_doc_date, supp' +
        'lier_id = :supplier_id, doc_origin__number = :doc_origin__number' +
        ', db_schema_id = :db_schema_id, doc_head_jguid = :doc_head_jguid' +
        ', item_jguid = :item_jguid, container_status = :container_status' +
        ', rights = :rights, invoice_number = :invoice_number, custom_fie' +
        'ld_1 = :custom_field_1, custom_field_2 = :custom_field_2, invoic' +
        'e_amount = :invoice_amount, custom_field_3 = :custom_field_3, js' +
        'on_nested_table = :json_nested_table, invoice_date = :invoice_da' +
        'te, importexport = :importexport, type_id = :type_id, is_descrip' +
        'tion = :is_description, exchange_rage = :exchange_rage, freight_' +
        'qty = :freight_qty, amount = :amount, vat_code = :vat_code, frei' +
        'ght_rate = :freight_rate, vat_description = :vat_description, cu' +
        'rrency_code = :currency_code, currency_description = :currency_d' +
        'escription, flg_description = :flg_description'
      'WHERE'
      '  id = :Old_id')
    SQLLock.Strings = (
      'SELECT * FROM documents.rows'
      'WHERE'
      '  id = :Old_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id, doc_id, item_id, row_date, inout, model, code, descri' +
        'ption, price, vat_id, vat_rate, discount_rate, discount_comm_rat' +
        'e, discount_ext_rate, quantity, secondhand, dimension_id1, dimen' +
        'sion_id2, dimensions_id3, currency_id, exchange_rate, position, ' +
        'delivery_date, barcode, delivered_qty, sample_qty, is_sample, re' +
        'f_code, doc_origin_id, row_origin_id, anagrams_ref_id, collector' +
        '_points, collector_points_forfait, package_type_id, jguid, order' +
        'ed_qty, pallets, weight_on_delivery, weight_on_order, weight_on_' +
        'shipping, volume, doc_origin_number, doc_origin_date, customs_do' +
        'c_ref, customs_doc_type_id, purchase_order, insert_date, update_' +
        'date, user_insert, user_update, size_weight, size_length, size_h' +
        'eight, inventory_qty, inventory_weight, customs_doc_cin, customs' +
        '_doc_date, supplier_id, doc_origin__number, db_schema_id, doc_he' +
        'ad_jguid, item_jguid, container_status, rights, invoice_number, ' +
        'custom_field_1, custom_field_2, invoice_amount, custom_field_3, ' +
        'json_nested_table, invoice_date, importexport, type_id, is_descr' +
        'iption, exchange_rage, freight_qty, amount, vat_code, freight_ra' +
        'te, vat_description, currency_code, currency_description, flg_de' +
        'scription FROM documents.rows'
      'WHERE'
      '  id = :id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM documents.rows'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from documents.rows '
      'where '
      'doc_id = :id'
      'and'
      '(type_id = :type_id or :type_id = 0)')
    MasterFields = 'id'
    DetailFields = 'doc_id'
    Left = 80
    Top = 296
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id'
        ParamType = ptInput
        Value = 308
      end
      item
        DataType = ftUnknown
        Name = 'type_id'
        Value = nil
      end>
    object LargeintField1: TLargeintField
      FieldName = 'id'
      Required = True
    end
    object LargeintField2: TLargeintField
      FieldName = 'doc_id'
      Required = True
    end
    object LargeintField3: TLargeintField
      FieldName = 'item_id'
      Required = True
    end
    object WideMemoField1: TWideMemoField
      FieldName = 'description'
      BlobType = ftWideMemo
    end
    object SmallintField7: TSmallintField
      FieldName = 'position'
    end
    object FloatField9: TFloatField
      FieldName = 'sample_qty'
    end
    object LargeintField4: TLargeintField
      FieldName = 'doc_origin_id'
    end
    object LargeintField5: TLargeintField
      FieldName = 'row_origin_id'
    end
    object SmallintField8: TSmallintField
      FieldName = 'collector_points'
    end
    object SmallintField9: TSmallintField
      FieldName = 'collector_points_forfait'
    end
    object SmallintField10: TSmallintField
      FieldName = 'package_type_id'
    end
    object FloatField10: TFloatField
      FieldName = 'ordered_qty'
    end
    object SmallintField11: TSmallintField
      FieldName = 'pallets'
    end
    object FloatField11: TFloatField
      FieldName = 'weight_on_delivery'
    end
    object FloatField12: TFloatField
      FieldName = 'weight_on_order'
    end
    object FloatField13: TFloatField
      FieldName = 'weight_on_shipping'
    end
    object FloatField14: TFloatField
      FieldName = 'volume'
    end
    object DateField2: TDateField
      FieldName = 'doc_origin_date'
    end
    object SmallintField12: TSmallintField
      FieldName = 'customs_doc_type_id'
    end
    object SQLTimeStampField3: TDateTimeField
      FieldName = 'update_date'
    end
    object FloatField15: TFloatField
      FieldName = 'size_weight'
    end
    object FloatField16: TFloatField
      FieldName = 'size_length'
    end
    object FloatField17: TFloatField
      FieldName = 'size_height'
    end
    object FloatField18: TFloatField
      FieldName = 'inventory_qty'
    end
    object FloatField19: TFloatField
      FieldName = 'inventory_weight'
    end
    object DateField3: TDateField
      FieldName = 'customs_doc_date'
    end
    object IntegerField5: TIntegerField
      FieldName = 'db_schema_id'
    end
    object GuidField2: TGuidField
      FieldName = 'doc_head_jguid'
      Size = 38
    end
    object GuidField3: TGuidField
      FieldName = 'item_jguid'
      Size = 38
    end
    object CurrencyField1: TCurrencyField
      FieldName = 'rights'
    end
    object CurrencyField2: TCurrencyField
      FieldName = 'invoice_amount'
    end
    object WideMemoField2: TWideMemoField
      FieldName = 'json_nested_table'
      BlobType = ftWideMemo
    end
    object DateField4: TDateField
      FieldName = 'invoice_date'
    end
    object SmallintField13: TSmallintField
      FieldName = 'importexport'
    end
    object SmallintField14: TSmallintField
      FieldName = 'type_id'
    end
    object CurrencyField3: TCurrencyField
      FieldName = 'exchange_rage'
    end
    object FloatField20: TFloatField
      FieldName = 'freight_qty'
    end
    object CurrencyField4: TCurrencyField
      FieldName = 'amount'
      Required = True
    end
    object IntegerField6: TIntegerField
      FieldName = 'freight_rate'
    end
  end
  object qryDocIncomes: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO documents.rows'
      
        '  (id, doc_id, item_id, row_date, inout, model, code, descriptio' +
        'n, price, vat_id, vat_rate, discount_rate, discount_comm_rate, d' +
        'iscount_ext_rate, quantity, secondhand, dimension_id1, dimension' +
        '_id2, dimensions_id3, currency_id, exchange_rate, position, deli' +
        'very_date, barcode, delivered_qty, sample_qty, is_sample, ref_co' +
        'de, doc_origin_id, row_origin_id, anagrams_ref_id, collector_poi' +
        'nts, collector_points_forfait, package_type_id, jguid, ordered_q' +
        'ty, pallets, weight_on_delivery, weight_on_order, weight_on_ship' +
        'ping, volume, doc_origin_number, doc_origin_date, customs_doc_re' +
        'f, customs_doc_type_id, purchase_order, insert_date, update_date' +
        ', user_insert, user_update, size_weight, size_length, size_heigh' +
        't, inventory_qty, inventory_weight, customs_doc_cin, customs_doc' +
        '_date, supplier_id, doc_origin__number, db_schema_id, doc_head_j' +
        'guid, item_jguid, container_status, rights, invoice_number, cust' +
        'om_field_1, custom_field_2, invoice_amount, custom_field_3, json' +
        '_nested_table, invoice_date, importexport, type_id, is_descripti' +
        'on, exchange_rage, freight_qty, amount, vat_code, freight_rate, ' +
        'vat_description, currency_code, currency_description, flg_descri' +
        'ption)'
      'VALUES'
      
        '  (:id, :doc_id, :item_id, :row_date, :inout, :model, :code, :de' +
        'scription, :price, :vat_id, :vat_rate, :discount_rate, :discount' +
        '_comm_rate, :discount_ext_rate, :quantity, :secondhand, :dimensi' +
        'on_id1, :dimension_id2, :dimensions_id3, :currency_id, :exchange' +
        '_rate, :position, :delivery_date, :barcode, :delivered_qty, :sam' +
        'ple_qty, :is_sample, :ref_code, :doc_origin_id, :row_origin_id, ' +
        ':anagrams_ref_id, :collector_points, :collector_points_forfait, ' +
        ':package_type_id, :jguid, :ordered_qty, :pallets, :weight_on_del' +
        'ivery, :weight_on_order, :weight_on_shipping, :volume, :doc_orig' +
        'in_number, :doc_origin_date, :customs_doc_ref, :customs_doc_type' +
        '_id, :purchase_order, :insert_date, :update_date, :user_insert, ' +
        ':user_update, :size_weight, :size_length, :size_height, :invento' +
        'ry_qty, :inventory_weight, :customs_doc_cin, :customs_doc_date, ' +
        ':supplier_id, :doc_origin__number, :db_schema_id, :doc_head_jgui' +
        'd, :item_jguid, :container_status, :rights, :invoice_number, :cu' +
        'stom_field_1, :custom_field_2, :invoice_amount, :custom_field_3,' +
        ' :json_nested_table, :invoice_date, :importexport, :type_id, :is' +
        '_description, :exchange_rage, :freight_qty, :amount, :vat_code, ' +
        ':freight_rate, :vat_description, :currency_code, :currency_descr' +
        'iption, :flg_description)')
    SQLDelete.Strings = (
      'DELETE FROM documents.rows'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE documents.rows'
      'SET'
      
        '  id = :id, doc_id = :doc_id, item_id = :item_id, row_date = :ro' +
        'w_date, inout = :inout, model = :model, code = :code, descriptio' +
        'n = :description, price = :price, vat_id = :vat_id, vat_rate = :' +
        'vat_rate, discount_rate = :discount_rate, discount_comm_rate = :' +
        'discount_comm_rate, discount_ext_rate = :discount_ext_rate, quan' +
        'tity = :quantity, secondhand = :secondhand, dimension_id1 = :dim' +
        'ension_id1, dimension_id2 = :dimension_id2, dimensions_id3 = :di' +
        'mensions_id3, currency_id = :currency_id, exchange_rate = :excha' +
        'nge_rate, position = :position, delivery_date = :delivery_date, ' +
        'barcode = :barcode, delivered_qty = :delivered_qty, sample_qty =' +
        ' :sample_qty, is_sample = :is_sample, ref_code = :ref_code, doc_' +
        'origin_id = :doc_origin_id, row_origin_id = :row_origin_id, anag' +
        'rams_ref_id = :anagrams_ref_id, collector_points = :collector_po' +
        'ints, collector_points_forfait = :collector_points_forfait, pack' +
        'age_type_id = :package_type_id, jguid = :jguid, ordered_qty = :o' +
        'rdered_qty, pallets = :pallets, weight_on_delivery = :weight_on_' +
        'delivery, weight_on_order = :weight_on_order, weight_on_shipping' +
        ' = :weight_on_shipping, volume = :volume, doc_origin_number = :d' +
        'oc_origin_number, doc_origin_date = :doc_origin_date, customs_do' +
        'c_ref = :customs_doc_ref, customs_doc_type_id = :customs_doc_typ' +
        'e_id, purchase_order = :purchase_order, insert_date = :insert_da' +
        'te, update_date = :update_date, user_insert = :user_insert, user' +
        '_update = :user_update, size_weight = :size_weight, size_length ' +
        '= :size_length, size_height = :size_height, inventory_qty = :inv' +
        'entory_qty, inventory_weight = :inventory_weight, customs_doc_ci' +
        'n = :customs_doc_cin, customs_doc_date = :customs_doc_date, supp' +
        'lier_id = :supplier_id, doc_origin__number = :doc_origin__number' +
        ', db_schema_id = :db_schema_id, doc_head_jguid = :doc_head_jguid' +
        ', item_jguid = :item_jguid, container_status = :container_status' +
        ', rights = :rights, invoice_number = :invoice_number, custom_fie' +
        'ld_1 = :custom_field_1, custom_field_2 = :custom_field_2, invoic' +
        'e_amount = :invoice_amount, custom_field_3 = :custom_field_3, js' +
        'on_nested_table = :json_nested_table, invoice_date = :invoice_da' +
        'te, importexport = :importexport, type_id = :type_id, is_descrip' +
        'tion = :is_description, exchange_rage = :exchange_rage, freight_' +
        'qty = :freight_qty, amount = :amount, vat_code = :vat_code, frei' +
        'ght_rate = :freight_rate, vat_description = :vat_description, cu' +
        'rrency_code = :currency_code, currency_description = :currency_d' +
        'escription, flg_description = :flg_description'
      'WHERE'
      '  id = :Old_id')
    SQLLock.Strings = (
      'SELECT * FROM documents.rows'
      'WHERE'
      '  id = :Old_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id, doc_id, item_id, row_date, inout, model, code, descri' +
        'ption, price, vat_id, vat_rate, discount_rate, discount_comm_rat' +
        'e, discount_ext_rate, quantity, secondhand, dimension_id1, dimen' +
        'sion_id2, dimensions_id3, currency_id, exchange_rate, position, ' +
        'delivery_date, barcode, delivered_qty, sample_qty, is_sample, re' +
        'f_code, doc_origin_id, row_origin_id, anagrams_ref_id, collector' +
        '_points, collector_points_forfait, package_type_id, jguid, order' +
        'ed_qty, pallets, weight_on_delivery, weight_on_order, weight_on_' +
        'shipping, volume, doc_origin_number, doc_origin_date, customs_do' +
        'c_ref, customs_doc_type_id, purchase_order, insert_date, update_' +
        'date, user_insert, user_update, size_weight, size_length, size_h' +
        'eight, inventory_qty, inventory_weight, customs_doc_cin, customs' +
        '_doc_date, supplier_id, doc_origin__number, db_schema_id, doc_he' +
        'ad_jguid, item_jguid, container_status, rights, invoice_number, ' +
        'custom_field_1, custom_field_2, invoice_amount, custom_field_3, ' +
        'json_nested_table, invoice_date, importexport, type_id, is_descr' +
        'iption, exchange_rage, freight_qty, amount, vat_code, freight_ra' +
        'te, vat_description, currency_code, currency_description, flg_de' +
        'scription FROM documents.rows'
      'WHERE'
      '  id = :id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM documents.rows'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from documents.rows '
      'where '
      'doc_id = :id'
      'and'
      '(type_id = :type_id or :type_id = 0)')
    MasterFields = 'id'
    DetailFields = 'doc_id'
    Left = 184
    Top = 264
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id'
        ParamType = ptInput
        Value = 308
      end
      item
        DataType = ftUnknown
        Name = 'type_id'
        Value = nil
      end>
    object LargeintField6: TLargeintField
      FieldName = 'id'
      Required = True
    end
    object LargeintField7: TLargeintField
      FieldName = 'doc_id'
      Required = True
    end
    object LargeintField8: TLargeintField
      FieldName = 'item_id'
      Required = True
    end
    object DateField5: TDateField
      FieldName = 'row_date'
      Required = True
    end
    object SmallintField15: TSmallintField
      FieldName = 'inout'
      Required = True
    end
    object WideMemoField3: TWideMemoField
      FieldName = 'description'
      BlobType = ftWideMemo
    end
    object FloatField21: TFloatField
      FieldName = 'price'
      Required = True
    end
    object SmallintField16: TSmallintField
      FieldName = 'vat_id'
    end
    object FloatField22: TFloatField
      FieldName = 'vat_rate'
      Required = True
    end
    object FloatField23: TFloatField
      FieldName = 'discount_rate'
      Required = True
    end
    object FloatField24: TFloatField
      FieldName = 'discount_comm_rate'
      Required = True
    end
    object FloatField25: TFloatField
      FieldName = 'discount_ext_rate'
      Required = True
    end
    object FloatField26: TFloatField
      FieldName = 'quantity'
      Required = True
    end
    object SmallintField17: TSmallintField
      FieldName = 'dimension_id1'
    end
    object SmallintField18: TSmallintField
      FieldName = 'dimension_id2'
    end
    object SmallintField19: TSmallintField
      FieldName = 'dimensions_id3'
    end
    object SmallintField20: TSmallintField
      FieldName = 'currency_id'
    end
    object FloatField27: TFloatField
      FieldName = 'exchange_rate'
    end
    object SmallintField21: TSmallintField
      FieldName = 'position'
    end
    object SQLTimeStampField4: TDateTimeField
      FieldName = 'delivery_date'
    end
    object FloatField28: TFloatField
      FieldName = 'delivered_qty'
    end
    object FloatField29: TFloatField
      FieldName = 'sample_qty'
    end
    object LargeintField9: TLargeintField
      FieldName = 'doc_origin_id'
    end
    object LargeintField10: TLargeintField
      FieldName = 'row_origin_id'
    end
    object IntegerField7: TIntegerField
      FieldName = 'anagrams_ref_id'
    end
    object SmallintField22: TSmallintField
      FieldName = 'collector_points'
    end
    object SmallintField23: TSmallintField
      FieldName = 'collector_points_forfait'
    end
    object SmallintField24: TSmallintField
      FieldName = 'package_type_id'
    end
    object GuidField4: TGuidField
      FieldName = 'jguid'
      Required = True
      Size = 38
    end
    object FloatField30: TFloatField
      FieldName = 'ordered_qty'
    end
    object SmallintField25: TSmallintField
      FieldName = 'pallets'
    end
    object FloatField31: TFloatField
      FieldName = 'weight_on_delivery'
    end
    object FloatField32: TFloatField
      FieldName = 'weight_on_order'
    end
    object FloatField33: TFloatField
      FieldName = 'weight_on_shipping'
    end
    object FloatField34: TFloatField
      FieldName = 'volume'
    end
    object DateField6: TDateField
      FieldName = 'doc_origin_date'
    end
    object SmallintField26: TSmallintField
      FieldName = 'customs_doc_type_id'
    end
    object WideStringField25: TWideStringField
      FieldName = 'purchase_order'
      Size = 30
    end
    object SQLTimeStampField5: TDateTimeField
      FieldName = 'insert_date'
    end
    object SQLTimeStampField6: TDateTimeField
      FieldName = 'update_date'
    end
    object IntegerField8: TIntegerField
      FieldName = 'user_insert'
    end
    object IntegerField9: TIntegerField
      FieldName = 'user_update'
    end
    object FloatField35: TFloatField
      FieldName = 'size_weight'
    end
    object FloatField36: TFloatField
      FieldName = 'size_length'
    end
    object FloatField37: TFloatField
      FieldName = 'size_height'
    end
    object FloatField38: TFloatField
      FieldName = 'inventory_qty'
    end
    object FloatField39: TFloatField
      FieldName = 'inventory_weight'
    end
    object WideStringField26: TWideStringField
      FieldName = 'customs_doc_cin'
      FixedChar = True
      Size = 1
    end
    object DateField7: TDateField
      FieldName = 'customs_doc_date'
    end
    object IntegerField10: TIntegerField
      FieldName = 'supplier_id'
    end
    object WideStringField27: TWideStringField
      FieldName = 'doc_origin__number'
      Size = 128
    end
    object IntegerField11: TIntegerField
      FieldName = 'db_schema_id'
    end
    object GuidField5: TGuidField
      FieldName = 'doc_head_jguid'
      Size = 38
    end
    object GuidField6: TGuidField
      FieldName = 'item_jguid'
      Size = 38
    end
    object WideStringField28: TWideStringField
      FieldName = 'container_status'
      Size = 1
    end
    object CurrencyField5: TCurrencyField
      FieldName = 'rights'
    end
    object WideStringField29: TWideStringField
      FieldName = 'invoice_number'
      Size = 128
    end
    object WideStringField30: TWideStringField
      FieldName = 'custom_field_1'
      Size = 128
    end
    object WideStringField31: TWideStringField
      FieldName = 'custom_field_2'
      Size = 128
    end
    object CurrencyField6: TCurrencyField
      FieldName = 'invoice_amount'
    end
    object WideStringField32: TWideStringField
      FieldName = 'custom_field_3'
      Size = 128
    end
    object WideMemoField4: TWideMemoField
      FieldName = 'json_nested_table'
      BlobType = ftWideMemo
    end
    object DateField8: TDateField
      FieldName = 'invoice_date'
    end
    object SmallintField27: TSmallintField
      FieldName = 'importexport'
    end
    object SmallintField28: TSmallintField
      FieldName = 'type_id'
    end
    object BooleanField6: TBooleanField
      FieldName = 'is_description'
    end
    object CurrencyField7: TCurrencyField
      FieldName = 'exchange_rage'
    end
    object FloatField40: TFloatField
      FieldName = 'freight_qty'
    end
    object CurrencyField8: TCurrencyField
      FieldName = 'amount'
      Required = True
    end
    object WideStringField33: TWideStringField
      FieldName = 'vat_code'
      Size = 12
    end
    object IntegerField12: TIntegerField
      FieldName = 'freight_rate'
    end
    object WideStringField34: TWideStringField
      FieldName = 'vat_description'
      Size = 25
    end
    object WideStringField35: TWideStringField
      FieldName = 'currency_description'
      Size = 16
    end
    object WideStringField36: TWideStringField
      FieldName = 'currency_code'
      Size = 6
    end
  end
end
