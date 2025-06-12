inherited dmJanuaPgDocumentsStorage: TdmJanuaPgDocumentsStorage
  Height = 420
  Width = 434
  inherited PgErgoConnection: TJanuaUniConnection
    Pooling = False
    Left = 184
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  object qryDocHeads: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO documents.heads_view'
      
        '  (id, type_id, in_out, doc_date, doc_number, reason, dest_addre' +
        'ss, dest_postal_code, dest_town, dest_state_province, dest_count' +
        'ry_iso, departure_date, delivery_methos, goods_description, pack' +
        'ages_number, total_weight, incoterms, delivery_charges, discount' +
        '_rate, anagraph_id, carrier_id, dest_state_province_id, dest_reg' +
        'ion_id, dest_town_id, currency_id, payment_terms_id, payment_ter' +
        'ms_des, package_description, payment_term_code, folder_id, doc_s' +
        'tate, holder_name, holder_id, holder_vat_id, holder_address, hol' +
        'der_postal_code, holder_town, holder_state_province, holder_coun' +
        'try_iso, delivery_rate_expense, holder_group_id, amount, net_amo' +
        'unt, financial_year, doc_origin_id, delivery_vat_id, delivery_va' +
        't_rate, accounted, insert_date, update_date, delivery_due_date, ' +
        'sent, arrival_date, payment_due_date, duties, paid, doc_fine, us' +
        'er_insert, user_update, doc_year, po_number_id, po_number, print' +
        'ed, contact_name, contact_email, contact_phone, office_id, wareh' +
        'ouse_location_id, jguid, notes1, notes2, notes3, db_schema_id, p' +
        'urchase_order_number, custom_field_1, custom_field_2, custom_fie' +
        'ld_3, custom_int_1, custom_int_2, custom_int_3, doc_ref_code, ca' +
        'rrier_expenses, registry_code, carrier_tracking_number, carrier_' +
        'expenses_currency_id, search_index, dest_name, carrier_name, loc' +
        'ation_name, goods_type_id, importexport, carrier_invoice_number,' +
        ' carrier_invoice_date, workflow_id, vessel_department_id, paymen' +
        't_term_id, an_code, ref_date, ref_code, stamp_duty, exchange_rat' +
        'e, conversion_date, work_code, work_date, deleted, dest_vat_numb' +
        'er, holder_vat_number, currency_code, currency_description, taxa' +
        'ble_amount, vat_taxes, assigned, inventory, location_code, vesse' +
        'l_id, vessel_name, vessel_code, carrier_currency_code, carrier_c' +
        'urrency_name)'
      'VALUES'
      
        '  (:id, :type_id, :in_out, :doc_date, :doc_number, :reason, :des' +
        't_address, :dest_postal_code, :dest_town, :dest_state_province, ' +
        ':dest_country_iso, :departure_date, :delivery_methos, :goods_des' +
        'cription, :packages_number, :total_weight, :incoterms, :delivery' +
        '_charges, :discount_rate, :anagraph_id, :carrier_id, :dest_state' +
        '_province_id, :dest_region_id, :dest_town_id, :currency_id, :pay' +
        'ment_terms_id, :payment_terms_des, :package_description, :paymen' +
        't_term_code, :folder_id, :doc_state, :holder_name, :holder_id, :' +
        'holder_vat_id, :holder_address, :holder_postal_code, :holder_tow' +
        'n, :holder_state_province, :holder_country_iso, :delivery_rate_e' +
        'xpense, :holder_group_id, :amount, :net_amount, :financial_year,' +
        ' :doc_origin_id, :delivery_vat_id, :delivery_vat_rate, :accounte' +
        'd, :insert_date, :update_date, :delivery_due_date, :sent, :arriv' +
        'al_date, :payment_due_date, :duties, :paid, :doc_fine, :user_ins' +
        'ert, :user_update, :doc_year, :po_number_id, :po_number, :printe' +
        'd, :contact_name, :contact_email, :contact_phone, :office_id, :w' +
        'arehouse_location_id, :jguid, :notes1, :notes2, :notes3, :db_sch' +
        'ema_id, :purchase_order_number, :custom_field_1, :custom_field_2' +
        ', :custom_field_3, :custom_int_1, :custom_int_2, :custom_int_3, ' +
        ':doc_ref_code, :carrier_expenses, :registry_code, :carrier_track' +
        'ing_number, :carrier_expenses_currency_id, :search_index, :dest_' +
        'name, :carrier_name, :location_name, :goods_type_id, :importexpo' +
        'rt, :carrier_invoice_number, :carrier_invoice_date, :workflow_id' +
        ', :vessel_department_id, :payment_term_id, :an_code, :ref_date, ' +
        ':ref_code, :stamp_duty, :exchange_rate, :conversion_date, :work_' +
        'code, :work_date, :deleted, :dest_vat_number, :holder_vat_number' +
        ', :currency_code, :currency_description, :taxable_amount, :vat_t' +
        'axes, :assigned, :inventory, :location_code, :vessel_id, :vessel' +
        '_name, :vessel_code, :carrier_currency_code, :carrier_currency_n' +
        'ame)')
    SQLDelete.Strings = (
      'DELETE FROM documents.heads_view'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLUpdate.Strings = (
      'UPDATE documents.heads_view'
      'SET'
      
        '  id = :id, type_id = :type_id, in_out = :in_out, doc_date = :do' +
        'c_date, doc_number = :doc_number, reason = :reason, dest_address' +
        ' = :dest_address, dest_postal_code = :dest_postal_code, dest_tow' +
        'n = :dest_town, dest_state_province = :dest_state_province, dest' +
        '_country_iso = :dest_country_iso, departure_date = :departure_da' +
        'te, delivery_methos = :delivery_methos, goods_description = :goo' +
        'ds_description, packages_number = :packages_number, total_weight' +
        ' = :total_weight, incoterms = :incoterms, delivery_charges = :de' +
        'livery_charges, discount_rate = :discount_rate, anagraph_id = :a' +
        'nagraph_id, carrier_id = :carrier_id, dest_state_province_id = :' +
        'dest_state_province_id, dest_region_id = :dest_region_id, dest_t' +
        'own_id = :dest_town_id, currency_id = :currency_id, payment_term' +
        's_id = :payment_terms_id, payment_terms_des = :payment_terms_des' +
        ', package_description = :package_description, payment_term_code ' +
        '= :payment_term_code, folder_id = :folder_id, doc_state = :doc_s' +
        'tate, holder_name = :holder_name, holder_id = :holder_id, holder' +
        '_vat_id = :holder_vat_id, holder_address = :holder_address, hold' +
        'er_postal_code = :holder_postal_code, holder_town = :holder_town' +
        ', holder_state_province = :holder_state_province, holder_country' +
        '_iso = :holder_country_iso, delivery_rate_expense = :delivery_ra' +
        'te_expense, holder_group_id = :holder_group_id, amount = :amount' +
        ', net_amount = :net_amount, financial_year = :financial_year, do' +
        'c_origin_id = :doc_origin_id, delivery_vat_id = :delivery_vat_id' +
        ', delivery_vat_rate = :delivery_vat_rate, accounted = :accounted' +
        ', insert_date = :insert_date, update_date = :update_date, delive' +
        'ry_due_date = :delivery_due_date, sent = :sent, arrival_date = :' +
        'arrival_date, payment_due_date = :payment_due_date, duties = :du' +
        'ties, paid = :paid, doc_fine = :doc_fine, user_insert = :user_in' +
        'sert, user_update = :user_update, doc_year = :doc_year, po_numbe' +
        'r_id = :po_number_id, po_number = :po_number, printed = :printed' +
        ', contact_name = :contact_name, contact_email = :contact_email, ' +
        'contact_phone = :contact_phone, office_id = :office_id, warehous' +
        'e_location_id = :warehouse_location_id, jguid = :jguid, notes1 =' +
        ' :notes1, notes2 = :notes2, notes3 = :notes3, db_schema_id = :db' +
        '_schema_id, purchase_order_number = :purchase_order_number, cust' +
        'om_field_1 = :custom_field_1, custom_field_2 = :custom_field_2, ' +
        'custom_field_3 = :custom_field_3, custom_int_1 = :custom_int_1, ' +
        'custom_int_2 = :custom_int_2, custom_int_3 = :custom_int_3, doc_' +
        'ref_code = :doc_ref_code, carrier_expenses = :carrier_expenses, ' +
        'registry_code = :registry_code, carrier_tracking_number = :carri' +
        'er_tracking_number, carrier_expenses_currency_id = :carrier_expe' +
        'nses_currency_id, search_index = :search_index, dest_name = :des' +
        't_name, carrier_name = :carrier_name, location_name = :location_' +
        'name, goods_type_id = :goods_type_id, importexport = :importexpo' +
        'rt, carrier_invoice_number = :carrier_invoice_number, carrier_in' +
        'voice_date = :carrier_invoice_date, workflow_id = :workflow_id, ' +
        'vessel_department_id = :vessel_department_id, payment_term_id = ' +
        ':payment_term_id, an_code = :an_code, ref_date = :ref_date, ref_' +
        'code = :ref_code, stamp_duty = :stamp_duty, exchange_rate = :exc' +
        'hange_rate, conversion_date = :conversion_date, work_code = :wor' +
        'k_code, work_date = :work_date, deleted = :deleted, dest_vat_num' +
        'ber = :dest_vat_number, holder_vat_number = :holder_vat_number, ' +
        'currency_code = :currency_code, currency_description = :currency' +
        '_description, taxable_amount = :taxable_amount, vat_taxes = :vat' +
        '_taxes, assigned = :assigned, inventory = :inventory, location_c' +
        'ode = :location_code, vessel_id = :vessel_id, vessel_name = :ves' +
        'sel_name, vessel_code = :vessel_code, carrier_currency_code = :c' +
        'arrier_currency_code, carrier_currency_name = :carrier_currency_' +
        'name'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLLock.Strings = (
      'SELECT * FROM documents.heads_view'
      'WHERE'
      '  jguid = :Old_jguid'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id, type_id, in_out, doc_date, doc_number, reason, dest_a' +
        'ddress, dest_postal_code, dest_town, dest_state_province, dest_c' +
        'ountry_iso, departure_date, delivery_methos, goods_description, ' +
        'packages_number, total_weight, incoterms, delivery_charges, disc' +
        'ount_rate, anagraph_id, carrier_id, dest_state_province_id, dest' +
        '_region_id, dest_town_id, currency_id, payment_terms_id, payment' +
        '_terms_des, package_description, payment_term_code, folder_id, d' +
        'oc_state, holder_name, holder_id, holder_vat_id, holder_address,' +
        ' holder_postal_code, holder_town, holder_state_province, holder_' +
        'country_iso, delivery_rate_expense, holder_group_id, amount, net' +
        '_amount, financial_year, doc_origin_id, delivery_vat_id, deliver' +
        'y_vat_rate, accounted, insert_date, update_date, delivery_due_da' +
        'te, sent, arrival_date, payment_due_date, duties, paid, doc_fine' +
        ', user_insert, user_update, doc_year, po_number_id, po_number, p' +
        'rinted, contact_name, contact_email, contact_phone, office_id, w' +
        'arehouse_location_id, jguid, notes1, notes2, notes3, db_schema_i' +
        'd, purchase_order_number, custom_field_1, custom_field_2, custom' +
        '_field_3, custom_int_1, custom_int_2, custom_int_3, doc_ref_code' +
        ', carrier_expenses, registry_code, carrier_tracking_number, carr' +
        'ier_expenses_currency_id, search_index, dest_name, carrier_name,' +
        ' location_name, goods_type_id, importexport, carrier_invoice_num' +
        'ber, carrier_invoice_date, workflow_id, vessel_department_id, pa' +
        'yment_term_id, an_code, ref_date, ref_code, stamp_duty, exchange' +
        '_rate, conversion_date, work_code, work_date, deleted, dest_vat_' +
        'number, holder_vat_number, currency_code, currency_description, ' +
        'taxable_amount, vat_taxes, assigned, inventory, location_code, v' +
        'essel_id, vessel_name, vessel_code, carrier_currency_code, carri' +
        'er_currency_name FROM documents.heads_view'
      'WHERE'
      '  jguid = :jguid')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM documents.heads_view'
      ''
      ') t')
    DataTypeMap = <
      item
        FieldName = 'index_guid'
        FieldType = ftString
        FieldLength = 40
      end
      item
        FieldName = 'shipment_des'
        FieldType = ftWideString
        FieldLength = 2048
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'select h.*, h.jguid::character varying as index_guid'
      ' from documents.heads_view h '
      'where'
      '(h.id = :p_doc_id or :p_doc_id = 0)'
      'and'
      '(db_schema_id = :p_db_schema_id or :p_db_schema_id = 0)'
      'and'
      '(search_index like :p_search_name or :p_search_name = '#39'%'#39')'
      'and'
      '(type_id = :p_group_id or :p_group_id = 0)'
      'and '
      
        '(:test or exists (select 1 from documents.rows r where r.doc_id ' +
        '= h.id))'
      'order by '
      'doc_year desc, doc_date desc, lpad(doc_number, 15, '#39'0'#39') desc')
    BeforeOpen = qryDocHeadsBeforeOpen
    AfterOpen = qryDocHeadsAfterOpen
    BeforePost = qryDocHeadsBeforePost
    AfterScroll = qryDocHeadsAfterScroll
    OnCalcFields = qryDocHeadsCalcFields
    Left = 184
    Top = 208
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
        Name = 'p_group_id'
        ParamType = ptInput
        Value = 16
      end
      item
        DataType = ftBoolean
        Name = 'test'
        ParamType = ptInput
        Value = True
      end>
    object qryDocHeadsid: TLargeintField
      FieldName = 'id'
      Required = True
    end
    object qryDocHeadstype_id: TSmallintField
      FieldName = 'type_id'
    end
    object qryDocHeadsin_out: TSmallintField
      FieldName = 'in_out'
    end
    object qryDocHeadsdoc_date: TDateField
      FieldName = 'doc_date'
    end
    object qryDocHeadsdoc_number: TWideStringField
      FieldName = 'doc_number'
      Size = 12
    end
    object qryDocHeadsreason: TSmallintField
      FieldName = 'reason'
    end
    object qryDocHeadsdest_address: TWideStringField
      FieldName = 'dest_address'
      Size = 200
    end
    object qryDocHeadsdest_postal_code: TWideStringField
      FieldName = 'dest_postal_code'
      Size = 5
    end
    object qryDocHeadsdest_town: TWideStringField
      FieldName = 'dest_town'
      Size = 40
    end
    object qryDocHeadsdest_state_province: TWideStringField
      FieldName = 'dest_state_province'
      Size = 2
    end
    object qryDocHeadsdest_country_iso: TWideStringField
      FieldName = 'dest_country_iso'
      Size = 3
    end
    object qryDocHeadsdeparture_date: TDateField
      FieldName = 'departure_date'
    end
    object qryDocHeadsdelivery_methos: TWideStringField
      FieldName = 'delivery_methos'
      Size = 15
    end
    object qryDocHeadsgoods_description: TWideStringField
      FieldName = 'goods_description'
      Size = 15
    end
    object qryDocHeadspackages_number: TSmallintField
      FieldName = 'packages_number'
    end
    object qryDocHeadstotal_weight: TFloatField
      FieldName = 'total_weight'
    end
    object qryDocHeadsincoterms: TWideStringField
      FieldName = 'incoterms'
      Size = 3
    end
    object qryDocHeadsdelivery_charges: TFloatField
      FieldName = 'delivery_charges'
    end
    object qryDocHeadsdiscount_rate: TFloatField
      FieldName = 'discount_rate'
    end
    object qryDocHeadsanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
    end
    object qryDocHeadscarrier_id: TIntegerField
      FieldName = 'carrier_id'
    end
    object qryDocHeadsdest_state_province_id: TIntegerField
      FieldName = 'dest_state_province_id'
    end
    object qryDocHeadsdest_region_id: TIntegerField
      FieldName = 'dest_region_id'
    end
    object qryDocHeadsdest_town_id: TIntegerField
      FieldName = 'dest_town_id'
    end
    object qryDocHeadscurrency_id: TSmallintField
      FieldName = 'currency_id'
    end
    object qryDocHeadspayment_terms_id: TSmallintField
      FieldName = 'payment_terms_id'
    end
    object qryDocHeadspayment_terms_des: TWideStringField
      FieldName = 'payment_terms_des'
      Size = 60
    end
    object qryDocHeadspackage_description: TWideStringField
      FieldName = 'package_description'
      Size = 15
    end
    object qryDocHeadspayment_term_code: TWideStringField
      FieldName = 'payment_term_code'
      Size = 8
    end
    object qryDocHeadsfolder_id: TLargeintField
      FieldName = 'folder_id'
    end
    object qryDocHeadsdoc_state: TSmallintField
      FieldName = 'doc_state'
    end
    object qryDocHeadsholder_name: TWideStringField
      FieldName = 'holder_name'
      Size = 50
    end
    object qryDocHeadsholder_id: TIntegerField
      FieldName = 'holder_id'
    end
    object qryDocHeadsholder_vat_id: TWideStringField
      FieldName = 'holder_vat_id'
      Size = 15
    end
    object qryDocHeadsholder_address: TWideStringField
      FieldName = 'holder_address'
      Size = 200
    end
    object qryDocHeadsholder_postal_code: TWideStringField
      FieldName = 'holder_postal_code'
      Size = 5
    end
    object qryDocHeadsholder_town: TWideStringField
      FieldName = 'holder_town'
      Size = 40
    end
    object qryDocHeadsholder_state_province: TWideStringField
      FieldName = 'holder_state_province'
      Size = 2
    end
    object qryDocHeadsholder_country_iso: TWideStringField
      FieldName = 'holder_country_iso'
      Size = 3
    end
    object qryDocHeadsdelivery_rate_expense: TFloatField
      FieldName = 'delivery_rate_expense'
    end
    object qryDocHeadsholder_group_id: TSmallintField
      FieldName = 'holder_group_id'
    end
    object qryDocHeadsamount: TFloatField
      FieldName = 'amount'
    end
    object qryDocHeadsnet_amount: TFloatField
      FieldName = 'net_amount'
    end
    object qryDocHeadsfinancial_year: TWideStringField
      FieldName = 'financial_year'
      Size = 10
    end
    object qryDocHeadsdoc_origin_id: TFloatField
      FieldName = 'doc_origin_id'
    end
    object qryDocHeadsdelivery_vat_id: TSmallintField
      FieldName = 'delivery_vat_id'
    end
    object qryDocHeadsdelivery_vat_rate: TFloatField
      FieldName = 'delivery_vat_rate'
    end
    object qryDocHeadsaccounted: TBooleanField
      FieldName = 'accounted'
    end
    object qryDocHeadsinsert_date: TDateField
      FieldName = 'insert_date'
    end
    object qryDocHeadsupdate_date: TDateField
      FieldName = 'update_date'
    end
    object qryDocHeadsdelivery_due_date: TDateField
      FieldName = 'delivery_due_date'
    end
    object qryDocHeadssent: TBooleanField
      FieldName = 'sent'
    end
    object qryDocHeadsarrival_date: TDateField
      FieldName = 'arrival_date'
    end
    object qryDocHeadspayment_due_date: TDateField
      FieldName = 'payment_due_date'
    end
    object qryDocHeadsduties: TFloatField
      FieldName = 'duties'
    end
    object qryDocHeadspaid: TBooleanField
      FieldName = 'paid'
    end
    object qryDocHeadsdoc_fine: TFloatField
      FieldName = 'doc_fine'
    end
    object qryDocHeadsuser_insert: TIntegerField
      FieldName = 'user_insert'
    end
    object qryDocHeadsuser_update: TIntegerField
      FieldName = 'user_update'
    end
    object qryDocHeadsdoc_year: TFloatField
      FieldName = 'doc_year'
    end
    object qryDocHeadspo_number_id: TLargeintField
      FieldName = 'po_number_id'
    end
    object qryDocHeadspo_number: TWideStringField
      FieldName = 'po_number'
      Size = 60
    end
    object qryDocHeadsprinted: TBooleanField
      FieldName = 'printed'
    end
    object qryDocHeadscontact_name: TWideStringField
      FieldName = 'contact_name'
      Size = 128
    end
    object qryDocHeadscontact_email: TWideStringField
      FieldName = 'contact_email'
      Size = 70
    end
    object qryDocHeadscontact_phone: TWideStringField
      FieldName = 'contact_phone'
    end
    object qryDocHeadsoffice_id: TIntegerField
      FieldName = 'office_id'
    end
    object qryDocHeadswarehouse_location_id: TIntegerField
      FieldName = 'warehouse_location_id'
    end
    object qryDocHeadsjguid: TGuidField
      FieldName = 'jguid'
      Size = 38
    end
    object qryDocHeadsnotes1: TWideMemoField
      FieldName = 'notes1'
      BlobType = ftWideMemo
    end
    object qryDocHeadsnotes2: TWideMemoField
      FieldName = 'notes2'
      BlobType = ftWideMemo
    end
    object qryDocHeadsnotes3: TWideMemoField
      FieldName = 'notes3'
      BlobType = ftWideMemo
    end
    object qryDocHeadsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryDocHeadspurchase_order_number: TWideStringField
      FieldName = 'purchase_order_number'
      Size = 128
    end
    object qryDocHeadscustom_field_1: TWideStringField
      FieldName = 'custom_field_1'
      Size = 128
    end
    object qryDocHeadscustom_field_2: TWideStringField
      FieldName = 'custom_field_2'
      Size = 128
    end
    object qryDocHeadscustom_field_3: TWideStringField
      FieldName = 'custom_field_3'
      Size = 128
    end
    object qryDocHeadscustom_int_1: TIntegerField
      FieldName = 'custom_int_1'
    end
    object qryDocHeadscustom_int_2: TIntegerField
      FieldName = 'custom_int_2'
    end
    object qryDocHeadscustom_int_3: TIntegerField
      FieldName = 'custom_int_3'
    end
    object qryDocHeadsdoc_ref_code: TWideStringField
      FieldName = 'doc_ref_code'
      Size = 128
    end
    object qryDocHeadscarrier_expenses: TFloatField
      FieldName = 'carrier_expenses'
    end
    object qryDocHeadsregistry_code: TWideStringField
      FieldName = 'registry_code'
      Size = 12
    end
    object qryDocHeadscarrier_tracking_number: TWideStringField
      FieldName = 'carrier_tracking_number'
      Size = 128
    end
    object qryDocHeadscarrier_expenses_currency_id: TSmallintField
      FieldName = 'carrier_expenses_currency_id'
    end
    object qryDocHeadssearch_index: TWideStringField
      FieldName = 'search_index'
      Size = 2048
    end
    object qryDocHeadsdest_name: TWideStringField
      FieldName = 'dest_name'
      Size = 128
    end
    object qryDocHeadscarrier_name: TWideStringField
      FieldName = 'carrier_name'
      Size = 128
    end
    object qryDocHeadslocation_name: TWideStringField
      FieldName = 'location_name'
      Size = 128
    end
    object qryDocHeadsgoods_type_id: TSmallintField
      FieldName = 'goods_type_id'
    end
    object qryDocHeadsimportexport: TSmallintField
      FieldName = 'importexport'
    end
    object qryDocHeadscalc_number: TStringField
      FieldKind = fkCalculated
      FieldName = 'calc_number'
      Size = 128
      Calculated = True
    end
    object qryDocHeadsdest_town_postalcode: TStringField
      FieldKind = fkCalculated
      FieldName = 'dest_town_postalcode'
      Size = 128
      Calculated = True
    end
    object qryDocHeadscarrier_invoice_number: TWideStringField
      FieldName = 'carrier_invoice_number'
      Size = 60
    end
    object qryDocHeadscarrier_invoice_date: TDateField
      FieldName = 'carrier_invoice_date'
    end
    object qryDocHeadsworkflow_id: TLargeintField
      FieldName = 'workflow_id'
    end
    object qryDocHeadsvessel_department_id: TSmallintField
      FieldName = 'vessel_department_id'
    end
    object qryDocHeadspayment_term_id: TSmallintField
      FieldName = 'payment_term_id'
    end
    object qryDocHeadsan_code: TWideStringField
      FieldName = 'an_code'
      Size = 128
    end
    object qryDocHeadsref_date: TDateField
      FieldName = 'ref_date'
    end
    object qryDocHeadsref_code: TWideStringField
      FieldName = 'ref_code'
      Size = 256
    end
    object qryDocHeadsstamp_duty: TCurrencyField
      FieldName = 'stamp_duty'
    end
    object qryDocHeadsexchange_rate: TFloatField
      FieldName = 'exchange_rate'
    end
    object qryDocHeadsconversion_date: TDateField
      FieldName = 'conversion_date'
    end
    object qryDocHeadswork_code: TWideStringField
      FieldName = 'work_code'
      Size = 128
    end
    object qryDocHeadswork_date: TDateField
      FieldName = 'work_date'
    end
    object qryDocHeadsdeleted: TBooleanField
      FieldName = 'deleted'
      Required = True
    end
    object qryDocHeadsdest_vat_number: TWideStringField
      FieldName = 'dest_vat_number'
    end
    object qryDocHeadsholder_vat_number: TWideStringField
      FieldName = 'holder_vat_number'
    end
    object qryDocHeadscurrency_code: TWideStringField
      FieldName = 'currency_code'
      Size = 6
    end
    object qryDocHeadscurrency_description: TWideMemoField
      FieldName = 'currency_description'
      BlobType = ftWideMemo
    end
    object qryDocHeadstaxable_amount: TCurrencyField
      FieldName = 'taxable_amount'
    end
    object qryDocHeadsvat_taxes: TCurrencyField
      FieldName = 'vat_taxes'
    end
    object qryDocHeadscalc_desc_full_Address: TWideStringField
      FieldKind = fkCalculated
      FieldName = 'calc_dest_full_Address'
      Size = 2048
      Calculated = True
    end
    object qryDocHeadscalc_holder_full_address: TWideStringField
      FieldKind = fkCalculated
      FieldName = 'calc_holder_full_address'
      Size = 2048
      Calculated = True
    end
    object qryDocHeadsHolder_town_postalcode: TWideStringField
      FieldKind = fkCalculated
      FieldName = 'Holder_town_postalcode'
      Size = 128
      Calculated = True
    end
    object qryDocHeadsindex_guid: TStringField
      FieldName = 'index_guid'
      ReadOnly = True
      Size = 40
    end
    object qryDocHeadsassigned: TSmallintField
      FieldName = 'assigned'
    end
    object qryDocHeadsinventory: TBooleanField
      FieldName = 'inventory'
    end
    object qryDocHeadscarrier_currency_code: TWideStringField
      FieldName = 'carrier_currency_code'
      Size = 3
    end
    object qryDocHeadscarrier_currency_name: TWideStringField
      FieldName = 'carrier_currency_name'
      Size = 60
    end
    object qryDocHeadslocation_code: TWideStringField
      FieldName = 'location_code'
    end
    object qryDocHeadsvessel_id: TIntegerField
      FieldName = 'vessel_id'
    end
    object qryDocHeadsvessel_name: TWideStringField
      FieldName = 'vessel_name'
      Size = 128
    end
    object qryDocHeadsvessel_code: TWideStringField
      FieldName = 'vessel_code'
    end
    object qryDocHeadsshipment_des: TWideStringField
      FieldName = 'shipment_des'
      Size = 2048
    end
  end
  object qryDocRows: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO documents.rows_view'
      
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
        'ption, haz_class, supplier_name)'
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
        'iption, :flg_description, :haz_class, :supplier_name)')
    SQLDelete.Strings = (
      'DELETE FROM documents.rows_view'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLUpdate.Strings = (
      'UPDATE documents.rows_view'
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
        'escription, flg_description = :flg_description, haz_class = :haz' +
        '_class, supplier_name = :supplier_name'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLLock.Strings = (
      'SELECT * FROM documents.rows_view'
      'WHERE'
      '  jguid = :Old_jguid'
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
        'scription, haz_class, supplier_name FROM documents.rows_view'
      'WHERE'
      '  jguid = :jguid')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM documents.rows_view'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from documents.rows_view'
      'where '
      'doc_id = :id'
      'and'
      '(type_id = :p_type_id or :p_type_id = 0)')
    DetailFields = 'doc_id'
    BeforePost = qryDocRowsBeforePost
    OnCalcFields = qryDocRowsCalcFields
    Left = 184
    Top = 320
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id'
        ParamType = ptInput
        Value = 119536
      end
      item
        DataType = ftSmallint
        Name = 'p_type_id'
        ParamType = ptInput
        Value = 0
      end>
    object qryDocRowsid: TLargeintField
      FieldName = 'id'
    end
    object qryDocRowsdoc_id: TLargeintField
      FieldName = 'doc_id'
    end
    object qryDocRowsitem_id: TLargeintField
      FieldName = 'item_id'
    end
    object qryDocRowsrow_date: TDateField
      FieldName = 'row_date'
    end
    object qryDocRowsinout: TSmallintField
      FieldName = 'inout'
    end
    object qryDocRowsmodel: TWideStringField
      FieldName = 'model'
      Size = 128
    end
    object qryDocRowscode: TWideStringField
      FieldName = 'code'
      Size = 60
    end
    object qryDocRowsdescription: TWideMemoField
      FieldName = 'description'
      BlobType = ftWideMemo
    end
    object qryDocRowsprice: TFloatField
      FieldName = 'price'
    end
    object qryDocRowsvat_id: TSmallintField
      FieldName = 'vat_id'
    end
    object qryDocRowsvat_rate: TFloatField
      FieldName = 'vat_rate'
    end
    object qryDocRowsdiscount_rate: TFloatField
      FieldName = 'discount_rate'
    end
    object qryDocRowsdiscount_comm_rate: TFloatField
      FieldName = 'discount_comm_rate'
    end
    object qryDocRowsdiscount_ext_rate: TFloatField
      FieldName = 'discount_ext_rate'
    end
    object qryDocRowsquantity: TFloatField
      FieldName = 'quantity'
    end
    object qryDocRowssecondhand: TBooleanField
      FieldName = 'secondhand'
    end
    object qryDocRowsdimension_id1: TSmallintField
      FieldName = 'dimension_id1'
    end
    object qryDocRowsdimension_id2: TSmallintField
      FieldName = 'dimension_id2'
    end
    object qryDocRowsdimensions_id3: TSmallintField
      FieldName = 'dimensions_id3'
    end
    object qryDocRowscurrency_id: TSmallintField
      FieldName = 'currency_id'
    end
    object qryDocRowsexchange_rate: TFloatField
      FieldName = 'exchange_rate'
    end
    object qryDocRowsposition: TSmallintField
      FieldName = 'position'
    end
    object qryDocRowsdelivery_date: TDateTimeField
      FieldName = 'delivery_date'
    end
    object qryDocRowsbarcode: TWideStringField
      FieldName = 'barcode'
      Size = 128
    end
    object qryDocRowsdelivered_qty: TFloatField
      FieldName = 'delivered_qty'
    end
    object qryDocRowssample_qty: TFloatField
      FieldName = 'sample_qty'
    end
    object qryDocRowsis_sample: TBooleanField
      FieldName = 'is_sample'
    end
    object qryDocRowsref_code: TWideStringField
      FieldName = 'ref_code'
      Size = 128
    end
    object qryDocRowsdoc_origin_id: TLargeintField
      FieldName = 'doc_origin_id'
    end
    object qryDocRowsrow_origin_id: TLargeintField
      FieldName = 'row_origin_id'
    end
    object qryDocRowsanagrams_ref_id: TIntegerField
      FieldName = 'anagrams_ref_id'
    end
    object qryDocRowscollector_points: TSmallintField
      FieldName = 'collector_points'
    end
    object qryDocRowscollector_points_forfait: TSmallintField
      FieldName = 'collector_points_forfait'
    end
    object qryDocRowspackage_type_id: TSmallintField
      FieldName = 'package_type_id'
    end
    object qryDocRowsjguid: TGuidField
      FieldName = 'jguid'
      Size = 38
    end
    object qryDocRowsordered_qty: TFloatField
      FieldName = 'ordered_qty'
    end
    object qryDocRowspallets: TSmallintField
      FieldName = 'pallets'
    end
    object qryDocRowsweight_on_delivery: TFloatField
      FieldName = 'weight_on_delivery'
    end
    object qryDocRowsweight_on_order: TFloatField
      FieldName = 'weight_on_order'
    end
    object qryDocRowsweight_on_shipping: TFloatField
      FieldName = 'weight_on_shipping'
    end
    object qryDocRowsvolume: TFloatField
      FieldName = 'volume'
    end
    object qryDocRowsdoc_origin_number: TWideStringField
      FieldName = 'doc_origin_number'
      Size = 128
    end
    object qryDocRowsdoc_origin_date: TDateField
      FieldName = 'doc_origin_date'
    end
    object qryDocRowscustoms_doc_ref: TWideStringField
      FieldName = 'customs_doc_ref'
      Size = 128
    end
    object qryDocRowscustoms_doc_type_id: TSmallintField
      FieldName = 'customs_doc_type_id'
    end
    object qryDocRowspurchase_order: TWideStringField
      FieldName = 'purchase_order'
      Size = 30
    end
    object qryDocRowsuser_insert: TIntegerField
      FieldName = 'user_insert'
    end
    object qryDocRowsuser_update: TIntegerField
      FieldName = 'user_update'
    end
    object qryDocRowssize_weight: TFloatField
      FieldName = 'size_weight'
    end
    object qryDocRowssize_length: TFloatField
      FieldName = 'size_length'
    end
    object qryDocRowssize_height: TFloatField
      FieldName = 'size_height'
    end
    object qryDocRowsinventory_qty: TFloatField
      FieldName = 'inventory_qty'
    end
    object qryDocRowsinventory_weight: TFloatField
      FieldName = 'inventory_weight'
    end
    object qryDocRowscustoms_doc_cin: TWideStringField
      FieldName = 'customs_doc_cin'
      FixedChar = True
      Size = 1
    end
    object qryDocRowscustoms_doc_date: TDateField
      FieldName = 'customs_doc_date'
    end
    object qryDocRowssupplier_id: TIntegerField
      FieldName = 'supplier_id'
    end
    object qryDocRowsdoc_origin__number: TWideStringField
      FieldName = 'doc_origin__number'
      Size = 128
    end
    object qryDocRowsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryDocRowsdoc_head_jguid: TGuidField
      FieldName = 'doc_head_jguid'
      Size = 38
    end
    object qryDocRowsitem_jguid: TGuidField
      FieldName = 'item_jguid'
      Size = 38
    end
    object qryDocRowscontainer_status: TWideStringField
      FieldName = 'container_status'
      Size = 1
    end
    object qryDocRowsrights: TFloatField
      FieldName = 'rights'
    end
    object qryDocRowsinvoice_number: TWideStringField
      FieldName = 'invoice_number'
      Size = 128
    end
    object qryDocRowscustom_field_1: TWideStringField
      FieldName = 'custom_field_1'
      Size = 128
    end
    object qryDocRowscustom_field_2: TWideStringField
      FieldName = 'custom_field_2'
      Size = 128
    end
    object qryDocRowsinvoice_amount: TFloatField
      FieldName = 'invoice_amount'
    end
    object qryDocRowscustom_field_3: TWideStringField
      FieldName = 'custom_field_3'
      Size = 128
    end
    object qryDocRowsjson_nested_table: TWideMemoField
      FieldName = 'json_nested_table'
      BlobType = ftWideMemo
    end
    object qryDocRowsinvoice_date: TDateField
      FieldName = 'invoice_date'
    end
    object qryDocRowsimportexport: TSmallintField
      FieldName = 'importexport'
    end
    object qryDocRowstype_id: TSmallintField
      FieldName = 'type_id'
    end
    object qryDocRowsis_description: TBooleanField
      FieldName = 'is_description'
    end
    object qryDocRowsexchange_rage: TFloatField
      FieldName = 'exchange_rage'
    end
    object qryDocRowsfreight_qty: TFloatField
      FieldName = 'freight_qty'
    end
    object qryDocRowsamount: TCurrencyField
      FieldName = 'amount'
    end
    object qryDocRowsvat_code: TWideStringField
      FieldName = 'vat_code'
      Size = 12
    end
    object qryDocRowsfreight_rate: TIntegerField
      FieldName = 'freight_rate'
    end
    object qryDocRowsvat_description: TWideStringField
      FieldName = 'vat_description'
      Size = 25
    end
    object qryDocRowscurrency_code: TWideStringField
      FieldName = 'currency_code'
      Size = 6
    end
    object qryDocRowscurrency_description: TWideStringField
      FieldName = 'currency_description'
      Size = 16
    end
    object qryDocRowsflg_description: TBooleanField
      FieldName = 'flg_description'
    end
    object qryDocRowssupplier_name: TWideStringField
      FieldName = 'supplier_name'
      Size = 128
    end
    object qryDocRowscalc_size_description: TStringField
      FieldKind = fkCalculated
      FieldName = 'calc_size_descriptiion'
      Size = 128
      Calculated = True
    end
    object qryDocRowshaz_class: TWideStringField
      FieldName = 'haz_class'
    end
  end
  object qryDocType: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from documents.types'
      'where'
      'db_schema_id = :p_db_schema_id '
      'and'
      '(id = :p_group_id or :p_group_id = 0)')
    Left = 184
    Top = 144
    ParamData = <
      item
        DataType = ftInteger
        Name = 'p_db_schema_id'
        ParamType = ptInput
        Value = 33
      end
      item
        DataType = ftUnknown
        Name = 'p_group_id'
        Value = nil
      end>
    object qryDocTypeid: TSmallintField
      DisplayWidth = 10
      FieldName = 'id'
    end
    object qryDocTypedb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      Required = True
    end
    object qryDocTypecode: TWideStringField
      FieldName = 'code'
      Required = True
      Size = 12
    end
    object qryDocTypein_out: TFloatField
      FieldName = 'in_out'
      Required = True
    end
    object qryDocTypecash: TFloatField
      FieldName = 'cash'
      Required = True
    end
    object qryDocTypecredit: TFloatField
      FieldName = 'credit'
      Required = True
    end
    object qryDocTypedescription: TWideStringField
      FieldName = 'description'
      Size = 128
    end
    object qryDocTypeflg_order: TFloatField
      FieldName = 'flg_order'
      Required = True
    end
    object qryDocTypeflg_quotation: TFloatField
      FieldName = 'flg_quotation'
      Required = True
    end
    object qryDocTypeflg_customers: TFloatField
      FieldName = 'flg_customers'
      Required = True
    end
    object qryDocTypeflg_suppliers: TFloatField
      FieldName = 'flg_suppliers'
      Required = True
    end
    object qryDocTypecurrency_id: TSmallintField
      FieldName = 'currency_id'
    end
    object qryDocTypeis_accouting: TBooleanField
      FieldName = 'is_accouting'
    end
    object qryDocTypeac_group_code: TWideStringField
      FieldName = 'ac_group_code'
      Size = 3
    end
    object qryDocTypeac_ledger_code: TWideStringField
      FieldName = 'ac_ledger_code'
      Size = 3
    end
    object qryDocTypeac_subledger_code: TWideStringField
      FieldName = 'ac_subledger_code'
      Size = 10
    end
    object qryDocTypeac_group_vat_code: TWideStringField
      FieldName = 'ac_group_vat_code'
      Size = 3
    end
    object qryDocTypeac_ledger_vat_code: TWideStringField
      FieldName = 'ac_ledger_vat_code'
      Size = 3
    end
    object qryDocTypeac_subledger_vat_code: TWideStringField
      FieldName = 'ac_subledger_vat_code'
      Size = 10
    end
    object qryDocTypeac_group_taxable_amnt_code: TWideStringField
      FieldName = 'ac_group_taxable_amnt_code'
      Size = 3
    end
    object qryDocTypeac_ledger_taxable_amnt_code: TWideStringField
      FieldName = 'ac_ledger_taxable_amnt_code'
      Size = 3
    end
    object qryDocTypeac_subledger_taxable_amnt_code: TWideStringField
      FieldName = 'ac_subledger_taxable_amnt_code'
      Size = 3
    end
    object qryDocTypeac_text: TWideStringField
      FieldName = 'ac_text'
      Size = 256
    end
    object qryDocTypeac_entry: TBooleanField
      FieldName = 'ac_entry'
      Required = True
    end
    object qryDocTypeac_entry_pos: TWideStringField
      FieldName = 'ac_entry_pos'
      FixedChar = True
      Size = 1
    end
    object qryDocTypeac_vat_entry_pos: TWideStringField
      FieldName = 'ac_vat_entry_pos'
      FixedChar = True
      Size = 1
    end
    object qryDocTypeac_taxable_amnt_entry_pos: TWideStringField
      FieldName = 'ac_taxable_amnt_entry_pos'
      FixedChar = True
      Size = 1
    end
    object qryDocTypegroup_trans_fees_cod: TWideStringField
      FieldName = 'group_trans_fees_cod'
      Size = 3
    end
    object qryDocTypeledger_trans_fees_cod: TWideStringField
      FieldName = 'ledger_trans_fees_cod'
      Size = 3
    end
    object qryDocTypesubledger_trans_fees_cod: TWideStringField
      FieldName = 'subledger_trans_fees_cod'
      Size = 10
    end
    object qryDocTypeac_trans_fees_entry: TBooleanField
      FieldName = 'ac_trans_fees_entry'
      Required = True
    end
    object qryDocTypeiso_description: TWideStringField
      FieldName = 'iso_description'
      Size = 128
    end
    object qryDocTypean_group_id: TSmallintField
      FieldName = 'an_group_id'
    end
    object qryDocTypeuser_insert: TIntegerField
      FieldName = 'user_insert'
    end
    object qryDocTypeuser_update: TIntegerField
      FieldName = 'user_update'
    end
    object qryDocTypelocal: TBooleanField
      FieldName = 'local'
      Required = True
    end
    object qryDocTypedt_vat_registry: TWideStringField
      FieldName = 'dt_vat_registry'
      Size = 2
    end
    object qryDocTypebill_book: TBooleanField
      FieldName = 'bill_book'
      Required = True
    end
    object qryDocTypetype_group: TSmallintField
      FieldName = 'type_group'
    end
    object qryDocTypetype_anagraph_id: TIntegerField
      FieldName = 'type_anagraph_id'
    end
    object qryDocTypeshort_description: TWideStringField
      FieldName = 'short_description'
      Size = 30
    end
    object qryDocTypeNOSTRODOC: TWideStringField
      FieldName = 'NOSTRODOC'
      FixedChar = True
      Size = 1
    end
    object qryDocTypeCASSA: TWideStringField
      FieldName = 'CASSA'
      FixedChar = True
      Size = 1
    end
    object qryDocTypewarehouse_register: TFloatField
      FieldName = 'warehouse_register'
    end
    object qryDocTypereverse_doc_type: TSmallintField
      FieldName = 'reverse_doc_type'
    end
    object qryDocTypetype_group_id: TSmallintField
      FieldName = 'type_group_id'
    end
    object qryDocTypejguid: TGuidField
      FieldName = 'jguid'
      Size = 38
    end
    object qryDocTypecustoms_doc_date: TDateField
      FieldName = 'customs_doc_date'
    end
    object qryDocTypecustoms_doc_cin: TWideStringField
      FieldName = 'customs_doc_cin'
      FixedChar = True
      Size = 1
    end
    object qryDocTypeinsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
    object qryDocTypeupdate_date: TDateTimeField
      FieldName = 'update_date'
    end
  end
  object qryDocAttachments: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO documents.attachments_view'
      
        '  (doc_id, blob_id, blob_jguid, location, filename, description,' +
        ' context, extension, db_schema_id, flg_internet, jguid, deleted,' +
        ' blob_file, blob_size, blob_key, blob_filename, is_external, ins' +
        'ert_date, isresource, directory_id, db_user_id, directory_path)'
      'VALUES'
      
        '  (:doc_id, :blob_id, :blob_jguid, :location, :filename, :descri' +
        'ption, :context, :extension, :db_schema_id, :flg_internet, :jgui' +
        'd, :deleted, :blob_file, :blob_size, :blob_key, :blob_filename, ' +
        ':is_external, :insert_date, :isresource, :directory_id, :db_user' +
        '_id, :directory_path)')
    SQLDelete.Strings = (
      'DELETE FROM documents.attachments_view'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLUpdate.Strings = (
      'UPDATE documents.attachments_view'
      'SET'
      
        '  doc_id = :doc_id, blob_id = :blob_id, blob_jguid = :blob_jguid' +
        ', location = :location, filename = :filename, description = :des' +
        'cription, context = :context, extension = :extension, db_schema_' +
        'id = :db_schema_id, flg_internet = :flg_internet, jguid = :jguid' +
        ', deleted = :deleted, blob_file = :blob_file, blob_size = :blob_' +
        'size, blob_key = :blob_key, blob_filename = :blob_filename, is_e' +
        'xternal = :is_external, insert_date = :insert_date, isresource =' +
        ' :isresource, directory_id = :directory_id, db_user_id = :db_use' +
        'r_id, directory_path = :directory_path'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLLock.Strings = (
      'SELECT * FROM documents.attachments_view'
      'WHERE'
      '  jguid = :Old_jguid'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT doc_id, blob_id, blob_jguid, location, filename, descript' +
        'ion, context, extension, db_schema_id, flg_internet, jguid, dele' +
        'ted, blob_file, blob_size, blob_key, blob_filename, is_external,' +
        ' insert_date, isresource, directory_id, db_user_id, directory_pa' +
        'th FROM documents.attachments_view'
      'WHERE'
      '  jguid = :jguid')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM documents.attachments_view'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from documents.attachments_view'
      'where '
      'doc_id = :id')
    MasterFields = 'id'
    DetailFields = 'doc_id'
    BeforePost = qryDocAttachmentsBeforePost
    Left = 272
    Top = 352
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id'
        ParamType = ptInput
        Value = nil
      end>
    object qryDocAttachmentsdoc_id: TLargeintField
      FieldName = 'doc_id'
      Required = True
    end
    object qryDocAttachmentsblob_id: TLargeintField
      FieldName = 'blob_id'
    end
    object qryDocAttachmentsblob_jguid: TGuidField
      FieldName = 'blob_jguid'
      Size = 38
    end
    object qryDocAttachmentslocation: TWideStringField
      FieldName = 'location'
      Size = 1
    end
    object qryDocAttachmentsfilename: TWideStringField
      FieldName = 'filename'
      Size = 256
    end
    object qryDocAttachmentsdescription: TWideMemoField
      FieldName = 'description'
      BlobType = ftWideMemo
    end
    object qryDocAttachmentscontext: TWideMemoField
      FieldName = 'context'
      BlobType = ftWideMemo
    end
    object qryDocAttachmentsextension: TWideStringField
      FieldName = 'extension'
    end
    object qryDocAttachmentsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryDocAttachmentsflg_internet: TBooleanField
      FieldName = 'flg_internet'
    end
    object qryDocAttachmentsblob_file: TBlobField
      FieldName = 'blob_file'
    end
    object qryDocAttachmentsblob_size: TLargeintField
      FieldName = 'blob_size'
    end
    object qryDocAttachmentsblob_key: TWideStringField
      FieldName = 'blob_key'
      Size = 64
    end
    object qryDocAttachmentsblob_filename: TWideStringField
      FieldName = 'blob_filename'
      Size = 256
    end
    object qryDocAttachmentsis_external: TBooleanField
      FieldName = 'is_external'
    end
    object qryDocAttachmentsisresource: TBooleanField
      FieldName = 'isresource'
    end
    object qryDocAttachmentsjguid: TGuidField
      FieldName = 'jguid'
      Required = True
      Size = 38
    end
    object qryDocAttachmentsdirectory_id: TLargeintField
      FieldName = 'directory_id'
    end
    object qryDocAttachmentsdirectory_path: TWideStringField
      FieldName = 'directory_path'
      Size = 512
    end
    object qryDocAttachmentsdb_user_id: TIntegerField
      FieldName = 'db_user_id'
    end
    object qryDocAttachmentsdeleted: TBooleanField
      FieldName = 'deleted'
    end
  end
  object qryInventory: TUniQuery
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
        '_nested_table, invoice_date)'
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
        ' :json_nested_table, :invoice_date)')
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
        'te'
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
        'json_nested_table, invoice_date FROM documents.rows'
      'WHERE'
      '  id = :id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM documents.rows'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'select r.*, h.* '
      'from '
      '  documents.rows r,  documents.heads h'
      'where '
      '  doc_id = h.id'
      '  and'
      '  h.db_schema_id = :p_db_schema_id '
      '--  and'
      '--  (r.search_index like :p_search_name or :p_search_name = '#39'%'#39')'
      '  and'
      '  (h.type_id = :p_type_id or :P_type_id = 0)'
      'order by r.id desc'
      '')
    MasterFields = 'id'
    DetailFields = 'doc_id'
    Left = 328
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_db_schema_id'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'p_type_id'
        Value = nil
      end>
    object qryInventoryid: TLargeintField
      FieldName = 'id'
      Required = True
    end
    object qryInventorydoc_id: TLargeintField
      FieldName = 'doc_id'
      Required = True
    end
    object qryInventoryitem_id: TLargeintField
      FieldName = 'item_id'
      Required = True
    end
    object qryInventoryrow_date: TDateField
      FieldName = 'row_date'
      Required = True
    end
    object qryInventoryinout: TSmallintField
      FieldName = 'inout'
      Required = True
    end
    object qryInventorymodel: TWideStringField
      FieldName = 'model'
      Required = True
      Size = 128
    end
    object qryInventorycode: TWideStringField
      FieldName = 'code'
      Size = 60
    end
    object qryInventorydescription: TWideMemoField
      FieldName = 'description'
      BlobType = ftWideMemo
    end
    object qryInventoryprice: TFloatField
      FieldName = 'price'
      Required = True
    end
    object qryInventoryvat_id: TSmallintField
      FieldName = 'vat_id'
    end
    object qryInventoryvat_rate: TFloatField
      FieldName = 'vat_rate'
      Required = True
    end
    object qryInventorydiscount_rate: TFloatField
      FieldName = 'discount_rate'
      Required = True
    end
    object qryInventorydiscount_comm_rate: TFloatField
      FieldName = 'discount_comm_rate'
      Required = True
    end
    object qryInventorydiscount_ext_rate: TFloatField
      FieldName = 'discount_ext_rate'
      Required = True
    end
    object qryInventoryquantity: TFloatField
      FieldName = 'quantity'
      Required = True
    end
    object qryInventorysecondhand: TBooleanField
      FieldName = 'secondhand'
    end
    object qryInventorydimension_id1: TSmallintField
      FieldName = 'dimension_id1'
    end
    object qryInventorydimension_id2: TSmallintField
      FieldName = 'dimension_id2'
    end
    object qryInventorydimensions_id3: TSmallintField
      FieldName = 'dimensions_id3'
    end
    object qryInventorycurrency_id: TSmallintField
      FieldName = 'currency_id'
    end
    object qryInventoryexchange_rate: TFloatField
      FieldName = 'exchange_rate'
    end
    object qryInventoryposition: TSmallintField
      FieldName = 'position'
    end
    object qryInventorydelivery_date: TDateTimeField
      FieldName = 'delivery_date'
    end
    object qryInventorybarcode: TWideStringField
      FieldName = 'barcode'
      Size = 128
    end
    object qryInventorydelivered_qty: TFloatField
      FieldName = 'delivered_qty'
    end
    object qryInventorysample_qty: TFloatField
      FieldName = 'sample_qty'
    end
    object qryInventoryis_sample: TBooleanField
      FieldName = 'is_sample'
    end
    object qryInventoryref_code: TWideStringField
      FieldName = 'ref_code'
      Size = 128
    end
    object qryInventorydoc_origin_id: TLargeintField
      FieldName = 'doc_origin_id'
    end
    object qryInventoryrow_origin_id: TLargeintField
      FieldName = 'row_origin_id'
    end
    object qryInventoryanagrams_ref_id: TIntegerField
      FieldName = 'anagrams_ref_id'
    end
    object qryInventorycollector_points: TSmallintField
      FieldName = 'collector_points'
    end
    object qryInventorycollector_points_forfait: TSmallintField
      FieldName = 'collector_points_forfait'
    end
    object qryInventorypackage_type_id: TSmallintField
      FieldName = 'package_type_id'
    end
    object qryInventoryjguid: TGuidField
      FieldName = 'jguid'
      Required = True
      Size = 38
    end
    object qryInventoryordered_qty: TFloatField
      FieldName = 'ordered_qty'
    end
    object qryInventorypallets: TSmallintField
      FieldName = 'pallets'
    end
    object qryInventoryweight_on_delivery: TFloatField
      FieldName = 'weight_on_delivery'
    end
    object qryInventoryweight_on_order: TFloatField
      FieldName = 'weight_on_order'
    end
    object qryInventoryweight_on_shipping: TFloatField
      FieldName = 'weight_on_shipping'
    end
    object qryInventoryvolume: TFloatField
      FieldName = 'volume'
    end
    object qryInventorydoc_origin_number: TWideStringField
      FieldName = 'doc_origin_number'
      Size = 128
    end
    object qryInventorydoc_origin_date: TDateField
      FieldName = 'doc_origin_date'
    end
    object qryInventorycustoms_doc_ref: TWideStringField
      FieldName = 'customs_doc_ref'
      Size = 128
    end
    object qryInventorycustoms_doc_type_id: TSmallintField
      FieldName = 'customs_doc_type_id'
    end
    object qryInventorypurchase_order: TWideStringField
      FieldName = 'purchase_order'
      Size = 30
    end
    object qryInventoryinsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
    object qryInventoryupdate_date: TDateTimeField
      FieldName = 'update_date'
    end
    object qryInventoryuser_insert: TIntegerField
      FieldName = 'user_insert'
    end
    object qryInventoryuser_update: TIntegerField
      FieldName = 'user_update'
    end
    object qryInventorysize_weight: TFloatField
      FieldName = 'size_weight'
    end
    object qryInventorysize_length: TFloatField
      FieldName = 'size_length'
    end
    object qryInventorysize_height: TFloatField
      FieldName = 'size_height'
    end
    object qryInventoryinventory_qty: TFloatField
      FieldName = 'inventory_qty'
    end
    object qryInventoryinventory_weight: TFloatField
      FieldName = 'inventory_weight'
    end
    object qryInventorycustoms_doc_cin: TWideStringField
      FieldName = 'customs_doc_cin'
      FixedChar = True
      Size = 1
    end
    object qryInventorycustoms_doc_date: TDateField
      FieldName = 'customs_doc_date'
    end
    object qryInventorysupplier_id: TIntegerField
      FieldName = 'supplier_id'
    end
    object qryInventorydoc_origin__number: TWideStringField
      FieldName = 'doc_origin__number'
      Size = 128
    end
    object qryInventorydb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryInventorydoc_head_jguid: TGuidField
      FieldName = 'doc_head_jguid'
      Size = 38
    end
    object qryInventoryitem_jguid: TGuidField
      FieldName = 'item_jguid'
      Size = 38
    end
    object qryInventorycontainer_status: TWideStringField
      FieldName = 'container_status'
      Size = 1
    end
    object qryInventoryrights: TFloatField
      FieldName = 'rights'
    end
    object qryInventoryinvoice_number: TWideStringField
      FieldName = 'invoice_number'
      Size = 128
    end
    object qryInventorycustom_field_1: TWideStringField
      FieldName = 'custom_field_1'
      Size = 128
    end
    object qryInventorycustom_field_2: TWideStringField
      FieldName = 'custom_field_2'
      Size = 128
    end
    object qryInventoryinvoice_amount: TFloatField
      FieldName = 'invoice_amount'
    end
    object qryInventorycustom_field_3: TWideStringField
      FieldName = 'custom_field_3'
      Size = 128
    end
    object qryInventoryjson_nested_table: TWideMemoField
      FieldName = 'json_nested_table'
      BlobType = ftWideMemo
    end
    object qryInventoryinvoice_date: TDateField
      FieldName = 'invoice_date'
    end
    object qryInventoryimportexport: TSmallintField
      FieldName = 'importexport'
    end
    object qryInventorytype_id: TSmallintField
      FieldName = 'type_id'
    end
    object qryInventoryis_description: TBooleanField
      FieldName = 'is_description'
    end
    object qryInventoryexchange_rage: TFloatField
      FieldName = 'exchange_rage'
    end
    object qryInventoryfreight_qty: TFloatField
      FieldName = 'freight_qty'
    end
    object qryInventoryamount: TCurrencyField
      FieldName = 'amount'
    end
    object qryInventoryvat_code: TWideStringField
      FieldName = 'vat_code'
      Size = 12
    end
    object qryInventoryfreight_rate: TIntegerField
      FieldName = 'freight_rate'
    end
    object qryInventoryvat_description: TWideStringField
      FieldName = 'vat_description'
      Size = 25
    end
    object qryInventorycurrency_code: TWideStringField
      FieldName = 'currency_code'
      Size = 6
    end
    object qryInventorycurrency_description: TWideStringField
      FieldName = 'currency_description'
      Size = 16
    end
    object qryInventoryflg_description: TBooleanField
      FieldName = 'flg_description'
    end
    object qryInventoryid_1: TLargeintField
      FieldName = 'id_1'
      ReadOnly = True
      Required = True
    end
    object qryInventorytype_id_1: TSmallintField
      FieldName = 'type_id_1'
      ReadOnly = True
    end
    object qryInventoryin_out: TSmallintField
      FieldName = 'in_out'
      ReadOnly = True
    end
    object qryInventorydoc_date: TDateField
      FieldName = 'doc_date'
      ReadOnly = True
    end
    object qryInventorydoc_number: TWideStringField
      FieldName = 'doc_number'
      ReadOnly = True
      Size = 12
    end
    object qryInventoryreason: TSmallintField
      FieldName = 'reason'
      ReadOnly = True
    end
    object qryInventorydest_address: TWideStringField
      FieldName = 'dest_address'
      ReadOnly = True
      Size = 200
    end
    object qryInventorydest_postal_code: TWideStringField
      FieldName = 'dest_postal_code'
      ReadOnly = True
    end
    object qryInventorydest_town: TWideStringField
      FieldName = 'dest_town'
      ReadOnly = True
      Size = 128
    end
    object qryInventorydest_state_province: TWideStringField
      FieldName = 'dest_state_province'
      ReadOnly = True
      Size = 2
    end
    object qryInventorydest_country_iso: TWideStringField
      FieldName = 'dest_country_iso'
      ReadOnly = True
      Size = 3
    end
    object qryInventorydeparture_date: TDateField
      FieldName = 'departure_date'
      ReadOnly = True
    end
    object qryInventorydelivery_methos: TWideStringField
      FieldName = 'delivery_methos'
      ReadOnly = True
      Size = 15
    end
    object qryInventorygoods_description: TWideStringField
      FieldName = 'goods_description'
      ReadOnly = True
      Size = 15
    end
    object qryInventorypackages_number: TSmallintField
      FieldName = 'packages_number'
      ReadOnly = True
    end
    object qryInventorytotal_weight: TFloatField
      FieldName = 'total_weight'
      ReadOnly = True
    end
    object qryInventoryincoterms: TWideStringField
      FieldName = 'incoterms'
      ReadOnly = True
      Size = 3
    end
    object qryInventorydelivery_charges: TFloatField
      FieldName = 'delivery_charges'
      ReadOnly = True
    end
    object qryInventorydiscount_rate_1: TFloatField
      FieldName = 'discount_rate_1'
      ReadOnly = True
    end
    object qryInventoryanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
      ReadOnly = True
    end
    object qryInventorycarrier_id: TIntegerField
      FieldName = 'carrier_id'
      ReadOnly = True
    end
    object qryInventorydest_state_province_id: TIntegerField
      FieldName = 'dest_state_province_id'
      ReadOnly = True
    end
    object qryInventorydest_region_id: TIntegerField
      FieldName = 'dest_region_id'
      ReadOnly = True
    end
    object qryInventorydest_town_id: TIntegerField
      FieldName = 'dest_town_id'
      ReadOnly = True
    end
    object qryInventorycurrency_id_1: TSmallintField
      FieldName = 'currency_id_1'
      ReadOnly = True
    end
    object qryInventorypayment_terms_id: TSmallintField
      FieldName = 'payment_terms_id'
      ReadOnly = True
    end
    object qryInventorypayment_terms_des: TWideStringField
      FieldName = 'payment_terms_des'
      ReadOnly = True
      Size = 128
    end
    object qryInventorypackage_description: TWideStringField
      FieldName = 'package_description'
      ReadOnly = True
      Size = 15
    end
    object qryInventorypayment_term_code: TWideStringField
      FieldName = 'payment_term_code'
      ReadOnly = True
      Size = 8
    end
    object qryInventoryfolder_id: TLargeintField
      FieldName = 'folder_id'
      ReadOnly = True
    end
    object qryInventorydoc_state: TSmallintField
      FieldName = 'doc_state'
      ReadOnly = True
    end
    object qryInventoryholder_name: TWideStringField
      FieldName = 'holder_name'
      ReadOnly = True
      Size = 50
    end
    object qryInventoryholder_id: TIntegerField
      FieldName = 'holder_id'
      ReadOnly = True
    end
    object qryInventoryholder_vat_id: TWideStringField
      FieldName = 'holder_vat_id'
      ReadOnly = True
      Size = 15
    end
    object qryInventoryholder_address: TWideStringField
      FieldName = 'holder_address'
      ReadOnly = True
      Size = 200
    end
    object qryInventoryholder_postal_code: TWideStringField
      FieldName = 'holder_postal_code'
      ReadOnly = True
      Size = 30
    end
    object qryInventoryholder_town: TWideStringField
      FieldName = 'holder_town'
      ReadOnly = True
      Size = 40
    end
    object qryInventoryholder_state_province: TWideStringField
      FieldName = 'holder_state_province'
      ReadOnly = True
      Size = 2
    end
    object qryInventoryholder_country_iso: TWideStringField
      FieldName = 'holder_country_iso'
      ReadOnly = True
      Size = 3
    end
    object qryInventorydelivery_rate_expense: TFloatField
      FieldName = 'delivery_rate_expense'
      ReadOnly = True
    end
    object qryInventoryholder_group_id: TSmallintField
      FieldName = 'holder_group_id'
      ReadOnly = True
    end
    object qryInventoryamount_1: TFloatField
      FieldName = 'amount_1'
      ReadOnly = True
    end
    object qryInventorynet_amount: TFloatField
      FieldName = 'net_amount'
      ReadOnly = True
    end
    object qryInventoryfinancial_year: TWideStringField
      FieldName = 'financial_year'
      ReadOnly = True
      Size = 10
    end
    object qryInventorydoc_origin_id_1: TFloatField
      FieldName = 'doc_origin_id_1'
      ReadOnly = True
    end
    object qryInventorydelivery_vat_id: TSmallintField
      FieldName = 'delivery_vat_id'
      ReadOnly = True
    end
    object qryInventorydelivery_vat_rate: TFloatField
      FieldName = 'delivery_vat_rate'
      ReadOnly = True
    end
    object qryInventoryaccounted: TBooleanField
      FieldName = 'accounted'
      ReadOnly = True
    end
    object qryInventoryinsert_date_1: TDateField
      FieldName = 'insert_date_1'
      ReadOnly = True
    end
    object qryInventoryupdate_date_1: TDateField
      FieldName = 'update_date_1'
      ReadOnly = True
    end
    object qryInventorydelivery_due_date: TDateField
      FieldName = 'delivery_due_date'
      ReadOnly = True
    end
    object qryInventorysent: TBooleanField
      FieldName = 'sent'
      ReadOnly = True
    end
    object qryInventoryarrival_date: TDateField
      FieldName = 'arrival_date'
      ReadOnly = True
    end
    object qryInventorypayment_due_date: TDateField
      FieldName = 'payment_due_date'
      ReadOnly = True
    end
    object qryInventoryduties: TFloatField
      FieldName = 'duties'
      ReadOnly = True
    end
    object qryInventorypaid: TBooleanField
      FieldName = 'paid'
      ReadOnly = True
    end
    object qryInventorydoc_fine: TFloatField
      FieldName = 'doc_fine'
      ReadOnly = True
    end
    object qryInventoryuser_insert_1: TIntegerField
      FieldName = 'user_insert_1'
      ReadOnly = True
    end
    object qryInventoryuser_update_1: TIntegerField
      FieldName = 'user_update_1'
      ReadOnly = True
    end
    object qryInventorydoc_year: TFloatField
      FieldName = 'doc_year'
      ReadOnly = True
    end
    object qryInventorypo_number_id: TLargeintField
      FieldName = 'po_number_id'
      ReadOnly = True
    end
    object qryInventorypo_number: TWideStringField
      FieldName = 'po_number'
      ReadOnly = True
      Size = 128
    end
    object qryInventoryprinted: TBooleanField
      FieldName = 'printed'
      ReadOnly = True
    end
    object qryInventorycontact_name: TWideStringField
      FieldName = 'contact_name'
      ReadOnly = True
      Size = 128
    end
    object qryInventorycontact_email: TWideStringField
      FieldName = 'contact_email'
      ReadOnly = True
      Size = 70
    end
    object qryInventorycontact_phone: TWideStringField
      FieldName = 'contact_phone'
      ReadOnly = True
    end
    object qryInventoryoffice_id: TIntegerField
      FieldName = 'office_id'
      ReadOnly = True
    end
    object qryInventorywarehouse_location_id: TIntegerField
      FieldName = 'warehouse_location_id'
      ReadOnly = True
    end
    object qryInventoryjguid_1: TGuidField
      FieldName = 'jguid_1'
      ReadOnly = True
      Size = 38
    end
    object qryInventorynotes1: TWideMemoField
      FieldName = 'notes1'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qryInventorynotes2: TWideMemoField
      FieldName = 'notes2'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qryInventorynotes3: TWideMemoField
      FieldName = 'notes3'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qryInventorydb_schema_id_1: TIntegerField
      FieldName = 'db_schema_id_1'
      ReadOnly = True
    end
    object qryInventorypurchase_order_number: TWideStringField
      FieldName = 'purchase_order_number'
      ReadOnly = True
      Size = 128
    end
    object qryInventorycustom_field_1_1: TWideStringField
      FieldName = 'custom_field_1_1'
      ReadOnly = True
      Size = 128
    end
    object qryInventorycustom_field_2_1: TWideStringField
      FieldName = 'custom_field_2_1'
      ReadOnly = True
      Size = 128
    end
    object qryInventorycustom_field_3_1: TWideStringField
      FieldName = 'custom_field_3_1'
      ReadOnly = True
      Size = 128
    end
    object qryInventorycustom_int_1: TIntegerField
      FieldName = 'custom_int_1'
      ReadOnly = True
    end
    object qryInventorycustom_int_2: TIntegerField
      FieldName = 'custom_int_2'
      ReadOnly = True
    end
    object qryInventorycustom_int_3: TIntegerField
      FieldName = 'custom_int_3'
      ReadOnly = True
    end
    object qryInventorydoc_ref_code: TWideStringField
      FieldName = 'doc_ref_code'
      ReadOnly = True
      Size = 128
    end
    object qryInventorycarrier_expenses: TFloatField
      FieldName = 'carrier_expenses'
      ReadOnly = True
    end
    object qryInventoryregistry_code: TWideStringField
      FieldName = 'registry_code'
      ReadOnly = True
      Size = 12
    end
    object qryInventorycarrier_tracking_number: TWideStringField
      FieldName = 'carrier_tracking_number'
      ReadOnly = True
      Size = 128
    end
    object qryInventorycarrier_expenses_currency_id: TSmallintField
      FieldName = 'carrier_expenses_currency_id'
      ReadOnly = True
    end
    object qryInventorysearch_index: TWideStringField
      FieldName = 'search_index'
      ReadOnly = True
      Size = 2048
    end
    object qryInventorydest_name: TWideStringField
      FieldName = 'dest_name'
      ReadOnly = True
      Size = 128
    end
    object qryInventorycarrier_name: TWideStringField
      FieldName = 'carrier_name'
      ReadOnly = True
      Size = 128
    end
    object qryInventorylocation_name: TWideStringField
      FieldName = 'location_name'
      ReadOnly = True
      Size = 128
    end
    object qryInventorygoods_type_id: TSmallintField
      FieldName = 'goods_type_id'
      ReadOnly = True
    end
    object qryInventoryimportexport_1: TSmallintField
      FieldName = 'importexport_1'
      ReadOnly = True
    end
    object qryInventorycarrier_invoice_number: TWideStringField
      FieldName = 'carrier_invoice_number'
      ReadOnly = True
      Size = 60
    end
    object qryInventorycarrier_invoice_date: TDateField
      FieldName = 'carrier_invoice_date'
      ReadOnly = True
    end
    object qryInventoryworkflow_id: TLargeintField
      FieldName = 'workflow_id'
      ReadOnly = True
    end
    object qryInventoryvessel_department_id: TSmallintField
      FieldName = 'vessel_department_id'
      ReadOnly = True
    end
    object qryInventorypayment_term_id: TSmallintField
      FieldName = 'payment_term_id'
      ReadOnly = True
    end
    object qryInventoryan_code: TWideStringField
      FieldName = 'an_code'
      ReadOnly = True
      Size = 128
    end
    object qryInventoryref_date: TDateField
      FieldName = 'ref_date'
      ReadOnly = True
    end
    object qryInventoryref_code_1: TWideStringField
      FieldName = 'ref_code_1'
      ReadOnly = True
      Size = 256
    end
    object qryInventorystamp_duty: TFloatField
      FieldName = 'stamp_duty'
      ReadOnly = True
    end
    object qryInventoryexchange_rate_1: TFloatField
      FieldName = 'exchange_rate_1'
      ReadOnly = True
    end
    object qryInventoryconversion_date: TDateField
      FieldName = 'conversion_date'
      ReadOnly = True
    end
    object qryInventorywork_code: TWideStringField
      FieldName = 'work_code'
      ReadOnly = True
      Size = 128
    end
    object qryInventorywork_date: TDateField
      FieldName = 'work_date'
      ReadOnly = True
    end
    object qryInventorydeleted: TBooleanField
      FieldName = 'deleted'
      ReadOnly = True
      Required = True
    end
    object qryInventorydest_vat_number: TWideStringField
      FieldName = 'dest_vat_number'
      ReadOnly = True
    end
    object qryInventoryholder_vat_number: TWideStringField
      FieldName = 'holder_vat_number'
      ReadOnly = True
    end
    object qryInventorycurrency_code_1: TWideStringField
      FieldName = 'currency_code_1'
      ReadOnly = True
      Size = 6
    end
    object qryInventorycurrency_description_1: TWideMemoField
      FieldName = 'currency_description_1'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qryInventorytaxable_amount: TFloatField
      FieldName = 'taxable_amount'
      ReadOnly = True
    end
    object qryInventoryvat_taxes: TFloatField
      FieldName = 'vat_taxes'
      ReadOnly = True
    end
    object qryInventoryassigned: TSmallintField
      FieldName = 'assigned'
      ReadOnly = True
      Required = True
    end
    object qryInventoryinventory: TBooleanField
      FieldName = 'inventory'
      ReadOnly = True
      Required = True
    end
  end
  object qryVatAmounts: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO documents.vat_amounts'
      
        '  (doc_id, vat_id, taxable_amount, taxes, vat_rate, amount, vat_' +
        'description, jguid, vat_code)'
      'VALUES'
      
        '  (:doc_id, :vat_id, :taxable_amount, :taxes, :vat_rate, :amount' +
        ', :vat_description, :jguid, :vat_code)')
    SQLDelete.Strings = (
      'DELETE FROM documents.vat_amounts'
      'WHERE'
      '  doc_id = :Old_doc_id AND vat_id = :Old_vat_id')
    SQLUpdate.Strings = (
      'UPDATE documents.vat_amounts'
      'SET'
      
        '  doc_id = :doc_id, vat_id = :vat_id, taxable_amount = :taxable_' +
        'amount, taxes = :taxes, vat_rate = :vat_rate, amount = :amount, ' +
        'vat_description = :vat_description, jguid = :jguid, vat_code = :' +
        'vat_code'
      'WHERE'
      '  doc_id = :Old_doc_id AND vat_id = :Old_vat_id')
    SQLLock.Strings = (
      'SELECT * FROM documents.vat_amounts'
      'WHERE'
      '  doc_id = :Old_doc_id AND vat_id = :Old_vat_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT doc_id, vat_id, taxable_amount, taxes, vat_rate, amount, ' +
        'vat_description, jguid, vat_code FROM documents.vat_amounts'
      'WHERE'
      '  doc_id = :doc_id AND vat_id = :vat_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM documents.vat_amounts'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT '
      
        '    doc_id, vat_id, taxable_amount, taxes, vat_rate, amount, vat' +
        '_description, jguid, vat_code'
      'FROM'
      '    documents.vat_amounts s'
      'where'
      '   doc_id = :id')
    MasterFields = 'id'
    DetailFields = 'doc_id'
    Left = 96
    Top = 352
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id'
        ParamType = ptInput
        Value = nil
      end>
    object qryVatAmountsdoc_id: TLargeintField
      FieldName = 'doc_id'
      Required = True
    end
    object qryVatAmountsvat_id: TSmallintField
      FieldName = 'vat_id'
      Required = True
    end
    object qryVatAmountstaxable_amount: TCurrencyField
      FieldName = 'taxable_amount'
      Required = True
    end
    object qryVatAmountstaxes: TCurrencyField
      FieldName = 'taxes'
      Required = True
    end
    object qryVatAmountsvat_rate: TFloatField
      FieldName = 'vat_rate'
      Required = True
    end
    object qryVatAmountsamount: TCurrencyField
      FieldName = 'amount'
    end
    object qryVatAmountsvat_description: TWideStringField
      FieldName = 'vat_description'
      Size = 25
    end
    object qryVatAmountsjguid: TGuidField
      FieldName = 'jguid'
      Required = True
      Size = 38
    end
    object qryVatAmountsvat_code: TWideStringField
      FieldName = 'vat_code'
      Size = 12
    end
  end
  object lkpDocTypes: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from documents.types'
      'where'
      'db_schema_id = :p_db_schema_id '
      'and'
      '(type_group_id = :p_group_id or :p_group_id = 0)')
    Left = 328
    Top = 24
    ParamData = <
      item
        DataType = ftInteger
        Name = 'p_db_schema_id'
        ParamType = ptInput
        Value = 33
      end
      item
        DataType = ftSmallint
        Name = 'p_group_id'
        ParamType = ptInput
        Value = 0
      end>
    object lkpDocTypesid: TSmallintField
      FieldName = 'id'
      Required = True
    end
    object lkpDocTypesdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      Required = True
    end
    object lkpDocTypescode: TWideStringField
      FieldName = 'code'
      Required = True
      Size = 12
    end
    object lkpDocTypesin_out: TFloatField
      FieldName = 'in_out'
      Required = True
    end
    object lkpDocTypescash: TFloatField
      FieldName = 'cash'
      Required = True
    end
    object lkpDocTypescredit: TFloatField
      FieldName = 'credit'
      Required = True
    end
    object lkpDocTypesdescription: TWideStringField
      FieldName = 'description'
      Size = 128
    end
    object lkpDocTypesflg_order: TFloatField
      FieldName = 'flg_order'
      Required = True
    end
    object lkpDocTypesflg_quotation: TFloatField
      FieldName = 'flg_quotation'
      Required = True
    end
    object lkpDocTypesflg_customers: TFloatField
      FieldName = 'flg_customers'
      Required = True
    end
    object lkpDocTypesflg_suppliers: TFloatField
      FieldName = 'flg_suppliers'
      Required = True
    end
    object lkpDocTypescurrency_id: TSmallintField
      FieldName = 'currency_id'
    end
    object lkpDocTypesis_accouting: TBooleanField
      FieldName = 'is_accouting'
    end
    object lkpDocTypesac_group_code: TWideStringField
      FieldName = 'ac_group_code'
      Size = 3
    end
    object lkpDocTypesac_ledger_code: TWideStringField
      FieldName = 'ac_ledger_code'
      Size = 3
    end
    object lkpDocTypesac_subledger_code: TWideStringField
      FieldName = 'ac_subledger_code'
      Size = 10
    end
    object lkpDocTypesac_group_vat_code: TWideStringField
      FieldName = 'ac_group_vat_code'
      Size = 3
    end
    object lkpDocTypesac_ledger_vat_code: TWideStringField
      FieldName = 'ac_ledger_vat_code'
      Size = 3
    end
    object lkpDocTypesac_subledger_vat_code: TWideStringField
      FieldName = 'ac_subledger_vat_code'
      Size = 10
    end
    object lkpDocTypesac_group_taxable_amnt_code: TWideStringField
      FieldName = 'ac_group_taxable_amnt_code'
      Size = 3
    end
    object lkpDocTypesac_ledger_taxable_amnt_code: TWideStringField
      FieldName = 'ac_ledger_taxable_amnt_code'
      Size = 3
    end
    object lkpDocTypesac_subledger_taxable_amnt_code: TWideStringField
      FieldName = 'ac_subledger_taxable_amnt_code'
      Size = 3
    end
    object lkpDocTypesac_text: TWideStringField
      FieldName = 'ac_text'
      Size = 256
    end
    object lkpDocTypesac_entry: TBooleanField
      FieldName = 'ac_entry'
      Required = True
    end
    object lkpDocTypesac_entry_pos: TWideStringField
      FieldName = 'ac_entry_pos'
      FixedChar = True
      Size = 1
    end
    object lkpDocTypesac_vat_entry_pos: TWideStringField
      FieldName = 'ac_vat_entry_pos'
      FixedChar = True
      Size = 1
    end
    object lkpDocTypesac_taxable_amnt_entry_pos: TWideStringField
      FieldName = 'ac_taxable_amnt_entry_pos'
      FixedChar = True
      Size = 1
    end
    object lkpDocTypesgroup_trans_fees_cod: TWideStringField
      FieldName = 'group_trans_fees_cod'
      Size = 3
    end
    object lkpDocTypesledger_trans_fees_cod: TWideStringField
      FieldName = 'ledger_trans_fees_cod'
      Size = 3
    end
    object lkpDocTypessubledger_trans_fees_cod: TWideStringField
      FieldName = 'subledger_trans_fees_cod'
      Size = 10
    end
    object lkpDocTypesac_trans_fees_entry: TBooleanField
      FieldName = 'ac_trans_fees_entry'
      Required = True
    end
    object lkpDocTypesiso_description: TWideStringField
      FieldName = 'iso_description'
      Size = 128
    end
    object lkpDocTypesan_group_id: TSmallintField
      FieldName = 'an_group_id'
    end
    object lkpDocTypesinsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
    object lkpDocTypesupdate_date: TDateTimeField
      FieldName = 'update_date'
    end
    object lkpDocTypesuser_insert: TIntegerField
      FieldName = 'user_insert'
    end
    object lkpDocTypesuser_update: TIntegerField
      FieldName = 'user_update'
    end
    object lkpDocTypeslocal: TBooleanField
      FieldName = 'local'
      Required = True
    end
    object lkpDocTypesdt_vat_registry: TWideStringField
      FieldName = 'dt_vat_registry'
      Size = 2
    end
    object lkpDocTypesbill_book: TBooleanField
      FieldName = 'bill_book'
      Required = True
    end
    object lkpDocTypestype_group: TSmallintField
      FieldName = 'type_group'
    end
    object lkpDocTypestype_anagraph_id: TIntegerField
      FieldName = 'type_anagraph_id'
    end
    object lkpDocTypesshort_description: TWideStringField
      FieldName = 'short_description'
      Size = 30
    end
    object lkpDocTypesNOSTRODOC: TWideStringField
      FieldName = 'NOSTRODOC'
      FixedChar = True
      Size = 1
    end
    object lkpDocTypesCASSA: TWideStringField
      FieldName = 'CASSA'
      FixedChar = True
      Size = 1
    end
    object lkpDocTypeswarehouse_register: TFloatField
      FieldName = 'warehouse_register'
    end
    object lkpDocTypesreverse_doc_type: TSmallintField
      FieldName = 'reverse_doc_type'
    end
    object lkpDocTypestype_group_id: TSmallintField
      FieldName = 'type_group_id'
    end
    object lkpDocTypesjguid: TGuidField
      FieldName = 'jguid'
      Size = 38
    end
    object lkpDocTypescustoms_doc_date: TDateField
      FieldName = 'customs_doc_date'
    end
    object lkpDocTypescustoms_doc_cin: TWideStringField
      FieldName = 'customs_doc_cin'
      FixedChar = True
      Size = 1
    end
  end
  object lkpSystemUsers: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT db_user_id, email, username'
      'FROM "system".db_users'
      'where'
      'db_schema_id = :p_db_schema_id ')
    BeforeOpen = lkpSystemUsersBeforeOpen
    Left = 328
    Top = 88
    ParamData = <
      item
        DataType = ftInteger
        Name = 'p_db_schema_id'
        ParamType = ptInput
        Value = 33
      end>
    object lkpSystemUsersdb_user_id: TIntegerField
      FieldName = 'db_user_id'
      Required = True
    end
    object lkpSystemUsersemail: TWideStringField
      FieldName = 'email'
      Required = True
      Size = 256
    end
    object lkpSystemUsersusername: TWideStringField
      FieldName = 'username'
      Required = True
      Size = 128
    end
  end
  object qryHeadNextval: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'select nextval('#39'documents.documents_seq'#39') as nextval')
    Left = 80
    Top = 168
    object qryHeadNextvalnextval: TLargeintField
      FieldName = 'nextval'
      ReadOnly = True
    end
  end
  object qryRowsNextval: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'select nextval('#39'documents.rows_seq'#39') as nextval')
    Left = 80
    Top = 240
    object qryRowsNextvalnextval: TLargeintField
      FieldName = 'nextval'
      ReadOnly = True
    end
  end
  object qryDocCharges: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO documents.rows_view'
      
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
        'ption, supplier_name)'
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
        'iption, :flg_description, :supplier_name)')
    SQLDelete.Strings = (
      'DELETE FROM documents.rows_view'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLUpdate.Strings = (
      'UPDATE documents.rows_view'
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
        'escription, flg_description = :flg_description, supplier_name = ' +
        ':supplier_name'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLLock.Strings = (
      'SELECT * FROM documents.rows_view'
      'WHERE'
      '  jguid = :Old_jguid'
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
        'scription, supplier_name FROM documents.rows_view'
      'WHERE'
      '  jguid = :jguid')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM documents.rows_view'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from documents.rows_view'
      'where '
      'doc_id = :id'
      'and'
      '(type_id = :p_type_id or :p_type_id = 0)')
    DetailFields = 'doc_id'
    BeforePost = qryDocChargesBeforePost
    Left = 184
    Top = 264
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id'
        ParamType = ptInput
        Value = 118557
      end
      item
        DataType = ftSmallint
        Name = 'p_type_id'
        ParamType = ptInput
        Value = 4
      end>
    object qryDocChargesid: TLargeintField
      FieldName = 'id'
    end
    object qryDocChargesdoc_id: TLargeintField
      FieldName = 'doc_id'
    end
    object qryDocChargesitem_id: TLargeintField
      FieldName = 'item_id'
    end
    object qryDocChargesrow_date: TDateField
      FieldName = 'row_date'
    end
    object qryDocChargesinout: TSmallintField
      FieldName = 'inout'
    end
    object qryDocChargesmodel: TWideStringField
      FieldName = 'model'
      Size = 128
    end
    object qryDocChargescode: TWideStringField
      FieldName = 'code'
      Size = 60
    end
    object qryDocChargesdescription: TWideMemoField
      FieldName = 'description'
      BlobType = ftWideMemo
    end
    object qryDocChargesprice: TFloatField
      FieldName = 'price'
    end
    object qryDocChargesvat_id: TSmallintField
      FieldName = 'vat_id'
    end
    object qryDocChargesvat_rate: TFloatField
      FieldName = 'vat_rate'
    end
    object qryDocChargesdiscount_rate: TFloatField
      FieldName = 'discount_rate'
    end
    object qryDocChargesdiscount_comm_rate: TFloatField
      FieldName = 'discount_comm_rate'
    end
    object qryDocChargesdiscount_ext_rate: TFloatField
      FieldName = 'discount_ext_rate'
    end
    object qryDocChargesquantity: TFloatField
      FieldName = 'quantity'
    end
    object qryDocChargessecondhand: TBooleanField
      FieldName = 'secondhand'
    end
    object qryDocChargesdimension_id1: TSmallintField
      FieldName = 'dimension_id1'
    end
    object qryDocChargesdimension_id2: TSmallintField
      FieldName = 'dimension_id2'
    end
    object qryDocChargesdimensions_id3: TSmallintField
      FieldName = 'dimensions_id3'
    end
    object qryDocChargescurrency_id: TSmallintField
      FieldName = 'currency_id'
    end
    object qryDocChargesexchange_rate: TFloatField
      FieldName = 'exchange_rate'
    end
    object qryDocChargesposition: TSmallintField
      FieldName = 'position'
    end
    object qryDocChargesdelivery_date: TDateTimeField
      FieldName = 'delivery_date'
    end
    object qryDocChargesbarcode: TWideStringField
      FieldName = 'barcode'
      Size = 128
    end
    object qryDocChargesdelivered_qty: TFloatField
      FieldName = 'delivered_qty'
    end
    object qryDocChargessample_qty: TFloatField
      FieldName = 'sample_qty'
    end
    object qryDocChargesis_sample: TBooleanField
      FieldName = 'is_sample'
    end
    object qryDocChargesref_code: TWideStringField
      FieldName = 'ref_code'
      Size = 128
    end
    object qryDocChargesdoc_origin_id: TLargeintField
      FieldName = 'doc_origin_id'
    end
    object qryDocChargesrow_origin_id: TLargeintField
      FieldName = 'row_origin_id'
    end
    object qryDocChargesanagrams_ref_id: TIntegerField
      FieldName = 'anagrams_ref_id'
    end
    object qryDocChargescollector_points: TSmallintField
      FieldName = 'collector_points'
    end
    object qryDocChargescollector_points_forfait: TSmallintField
      FieldName = 'collector_points_forfait'
    end
    object qryDocChargespackage_type_id: TSmallintField
      FieldName = 'package_type_id'
    end
    object qryDocChargesjguid: TGuidField
      FieldName = 'jguid'
      Size = 38
    end
    object qryDocChargesordered_qty: TFloatField
      FieldName = 'ordered_qty'
    end
    object qryDocChargespallets: TSmallintField
      FieldName = 'pallets'
    end
    object qryDocChargesweight_on_delivery: TFloatField
      FieldName = 'weight_on_delivery'
    end
    object qryDocChargesweight_on_order: TFloatField
      FieldName = 'weight_on_order'
    end
    object qryDocChargesweight_on_shipping: TFloatField
      FieldName = 'weight_on_shipping'
    end
    object qryDocChargesvolume: TFloatField
      FieldName = 'volume'
    end
    object qryDocChargesdoc_origin_number: TWideStringField
      FieldName = 'doc_origin_number'
      Size = 128
    end
    object qryDocChargesdoc_origin_date: TDateField
      FieldName = 'doc_origin_date'
    end
    object qryDocChargescustoms_doc_ref: TWideStringField
      FieldName = 'customs_doc_ref'
      Size = 128
    end
    object qryDocChargescustoms_doc_type_id: TSmallintField
      FieldName = 'customs_doc_type_id'
    end
    object qryDocChargespurchase_order: TWideStringField
      FieldName = 'purchase_order'
      Size = 30
    end
    object qryDocChargesuser_insert: TIntegerField
      FieldName = 'user_insert'
    end
    object qryDocChargesuser_update: TIntegerField
      FieldName = 'user_update'
    end
    object qryDocChargessize_weight: TFloatField
      FieldName = 'size_weight'
    end
    object qryDocChargessize_length: TFloatField
      FieldName = 'size_length'
    end
    object qryDocChargessize_height: TFloatField
      FieldName = 'size_height'
    end
    object qryDocChargesinventory_qty: TFloatField
      FieldName = 'inventory_qty'
    end
    object qryDocChargesinventory_weight: TFloatField
      FieldName = 'inventory_weight'
    end
    object qryDocChargescustoms_doc_cin: TWideStringField
      FieldName = 'customs_doc_cin'
      FixedChar = True
      Size = 1
    end
    object qryDocChargescustoms_doc_date: TDateField
      FieldName = 'customs_doc_date'
    end
    object qryDocChargessupplier_id: TIntegerField
      FieldName = 'supplier_id'
    end
    object qryDocChargesdoc_origin__number: TWideStringField
      FieldName = 'doc_origin__number'
      Size = 128
    end
    object qryDocChargesdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryDocChargesdoc_head_jguid: TGuidField
      FieldName = 'doc_head_jguid'
      Size = 38
    end
    object qryDocChargesitem_jguid: TGuidField
      FieldName = 'item_jguid'
      Size = 38
    end
    object qryDocChargescontainer_status: TWideStringField
      FieldName = 'container_status'
      Size = 1
    end
    object qryDocChargesrights: TFloatField
      FieldName = 'rights'
    end
    object qryDocChargesinvoice_number: TWideStringField
      FieldName = 'invoice_number'
      Size = 128
    end
    object qryDocChargescustom_field_1: TWideStringField
      FieldName = 'custom_field_1'
      Size = 128
    end
    object qryDocChargescustom_field_2: TWideStringField
      FieldName = 'custom_field_2'
      Size = 128
    end
    object qryDocChargesinvoice_amount: TFloatField
      FieldName = 'invoice_amount'
    end
    object qryDocChargescustom_field_3: TWideStringField
      FieldName = 'custom_field_3'
      Size = 128
    end
    object qryDocChargesjson_nested_table: TWideMemoField
      FieldName = 'json_nested_table'
      BlobType = ftWideMemo
    end
    object qryDocChargesinvoice_date: TDateField
      FieldName = 'invoice_date'
    end
    object qryDocChargesimportexport: TSmallintField
      FieldName = 'importexport'
    end
    object qryDocChargestype_id: TSmallintField
      FieldName = 'type_id'
    end
    object qryDocChargesis_description: TBooleanField
      FieldName = 'is_description'
    end
    object qryDocChargesexchange_rage: TFloatField
      FieldName = 'exchange_rage'
    end
    object qryDocChargesfreight_qty: TFloatField
      FieldName = 'freight_qty'
    end
    object qryDocChargesamount: TCurrencyField
      FieldName = 'amount'
    end
    object qryDocChargesvat_code: TWideStringField
      FieldName = 'vat_code'
      Size = 12
    end
    object qryDocChargesfreight_rate: TIntegerField
      FieldName = 'freight_rate'
    end
    object qryDocChargesvat_description: TWideStringField
      FieldName = 'vat_description'
      Size = 25
    end
    object qryDocChargescurrency_code: TWideStringField
      FieldName = 'currency_code'
      Size = 6
    end
    object qryDocChargescurrency_description: TWideStringField
      FieldName = 'currency_description'
      Size = 16
    end
    object qryDocChargesflg_description: TBooleanField
      FieldName = 'flg_description'
    end
    object qryDocChargessupplier_name: TWideStringField
      FieldName = 'supplier_name'
      Size = 128
    end
  end
  object qryAttachmentsNextVal: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'select nextval('#39'cloud.file_seq'#39') as nextval')
    Left = 80
    Top = 104
    object qryAttachmentsNextValnextval: TLargeintField
      FieldName = 'nextval'
      ReadOnly = True
    end
  end
  object lkpVatRates: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'SELECT id, jguid, db_schema_id, code, description, vat_rate, non' +
        '_deductible_rate, vat_group_id, vat_separation, vat_separtion_ra' +
        'te, vat_translation_id,  vat_enabled'
      #9'FROM accounting.vat_codes;')
    Left = 328
    Top = 224
    object lkpVatRatesid: TSmallintField
      FieldName = 'id'
      Required = True
    end
    object lkpVatRatesjguid: TGuidField
      FieldName = 'jguid'
      Required = True
      Size = 38
    end
    object lkpVatRatesdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      Required = True
    end
    object lkpVatRatescode: TWideStringField
      FieldName = 'code'
      Size = 6
    end
    object lkpVatRatesdescription: TWideStringField
      FieldName = 'description'
      Size = 25
    end
    object lkpVatRatesvat_rate: TFloatField
      FieldName = 'vat_rate'
    end
    object lkpVatRatesnon_deductible_rate: TFloatField
      FieldName = 'non_deductible_rate'
    end
    object lkpVatRatesvat_group_id: TSmallintField
      FieldName = 'vat_group_id'
    end
    object lkpVatRatesvat_separation: TBooleanField
      FieldName = 'vat_separation'
    end
    object lkpVatRatesvat_separtion_rate: TFloatField
      FieldName = 'vat_separtion_rate'
    end
    object lkpVatRatesvat_translation_id: TSmallintField
      FieldName = 'vat_translation_id'
    end
    object lkpVatRatesvat_enabled: TBooleanField
      FieldName = 'vat_enabled'
    end
  end
  object lkpHazmatD: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT code'
      #9'FROM items.hazamat_divisions'
      #9'order by code')
    Left = 328
    Top = 288
    object lkpHazmatDcode: TWideStringField
      FieldName = 'code'
      Required = True
      Size = 10
    end
  end
end
