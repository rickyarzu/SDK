inherited dmPgLogisticWorkflowStorage: TdmPgLogisticWorkflowStorage
  OldCreateOrder = True
  Height = 414
  Width = 554
  inherited PgErgoConnection: TJanuaUniConnection
    Left = 184
    Top = 8
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  inherited PgUniProv: TPostgreSQLUniProvider
    Left = 184
    Top = 64
  end
  object qryShipments: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO logistic.pickup_orders'
      
        '  (id, jguid, creation_date, pickup_date, delivery_date, office_' +
        'id, workflow_uid, agent_id, shipper_id, shipper_address, pickup_' +
        'address, year, groupage_number, export_type_id, fullcontainer, v' +
        'essel_id, work_code, travel_identification_code, carrier_id, car' +
        'rier_code, workflow_id, pol_id, pol_code, pol_name, pod_id, pod_' +
        'name, pod_code, customer_id, notes, warehouse_id, work_date, ord' +
        'er_state, airport_id, airport_code, awb_number, internal_notes, ' +
        'internal_notes2, warehouse_notes, route_type, internet_visible, ' +
        'flag_air, flag_ground, departure_date, arrival_date, po_state, p' +
        'o_level, final_date, flg_house, flg_master, delivered, flg_billa' +
        'ble, customs_declearer, customs_date, update_date, insert_date, ' +
        'deleted, db_schema_id)'
      'VALUES'
      
        '  (:id, :jguid, :creation_date, :pickup_date, :delivery_date, :o' +
        'ffice_id, :workflow_uid, :agent_id, :shipper_id, :shipper_addres' +
        's, :pickup_address, :year, :groupage_number, :export_type_id, :f' +
        'ullcontainer, :vessel_id, :work_code, :travel_identification_cod' +
        'e, :carrier_id, :carrier_code, :workflow_id, :pol_id, :pol_code,' +
        ' :pol_name, :pod_id, :pod_name, :pod_code, :customer_id, :notes,' +
        ' :warehouse_id, :work_date, :order_state, :airport_id, :airport_' +
        'code, :awb_number, :internal_notes, :internal_notes2, :warehouse' +
        '_notes, :route_type, :internet_visible, :flag_air, :flag_ground,' +
        ' :departure_date, :arrival_date, :po_state, :po_level, :final_da' +
        'te, :flg_house, :flg_master, :delivered, :flg_billable, :customs' +
        '_declearer, :customs_date, :update_date, :insert_date, :deleted,' +
        ' :db_schema_id)')
    SQLDelete.Strings = (
      'DELETE FROM logistic.pickup_orders'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE logistic.pickup_orders'
      'SET'
      
        '  id = :id, jguid = :jguid, creation_date = :creation_date, pick' +
        'up_date = :pickup_date, delivery_date = :delivery_date, office_i' +
        'd = :office_id, workflow_uid = :workflow_uid, agent_id = :agent_' +
        'id, shipper_id = :shipper_id, shipper_address = :shipper_address' +
        ', pickup_address = :pickup_address, year = :year, groupage_numbe' +
        'r = :groupage_number, export_type_id = :export_type_id, fullcont' +
        'ainer = :fullcontainer, vessel_id = :vessel_id, work_code = :wor' +
        'k_code, travel_identification_code = :travel_identification_code' +
        ', carrier_id = :carrier_id, carrier_code = :carrier_code, workfl' +
        'ow_id = :workflow_id, pol_id = :pol_id, pol_code = :pol_code, po' +
        'l_name = :pol_name, pod_id = :pod_id, pod_name = :pod_name, pod_' +
        'code = :pod_code, customer_id = :customer_id, notes = :notes, wa' +
        'rehouse_id = :warehouse_id, work_date = :work_date, order_state ' +
        '= :order_state, airport_id = :airport_id, airport_code = :airpor' +
        't_code, awb_number = :awb_number, internal_notes = :internal_not' +
        'es, internal_notes2 = :internal_notes2, warehouse_notes = :wareh' +
        'ouse_notes, route_type = :route_type, internet_visible = :intern' +
        'et_visible, flag_air = :flag_air, flag_ground = :flag_ground, de' +
        'parture_date = :departure_date, arrival_date = :arrival_date, po' +
        '_state = :po_state, po_level = :po_level, final_date = :final_da' +
        'te, flg_house = :flg_house, flg_master = :flg_master, delivered ' +
        '= :delivered, flg_billable = :flg_billable, customs_declearer = ' +
        ':customs_declearer, customs_date = :customs_date, update_date = ' +
        ':update_date, insert_date = :insert_date, deleted = :deleted, db' +
        '_schema_id = :db_schema_id'
      'WHERE'
      '  id = :Old_id')
    SQLLock.Strings = (
      'SELECT * FROM logistic.pickup_orders'
      'WHERE'
      '  id = :Old_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id, jguid, creation_date, pickup_date, delivery_date, off' +
        'ice_id, workflow_uid, agent_id, shipper_id, shipper_address, pic' +
        'kup_address, year, groupage_number, export_type_id, fullcontaine' +
        'r, vessel_id, work_code, travel_identification_code, carrier_id,' +
        ' carrier_code, workflow_id, pol_id, pol_code, pol_name, pod_id, ' +
        'pod_name, pod_code, customer_id, notes, warehouse_id, work_date,' +
        ' order_state, airport_id, airport_code, awb_number, internal_not' +
        'es, internal_notes2, warehouse_notes, route_type, internet_visib' +
        'le, flag_air, flag_ground, departure_date, arrival_date, po_stat' +
        'e, po_level, final_date, flg_house, flg_master, delivered, flg_b' +
        'illable, customs_declearer, customs_date, update_date, insert_da' +
        'te, deleted, db_schema_id FROM logistic.pickup_orders'
      'WHERE'
      '  id = :id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM logistic.pickup_orders'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT '
      '*'
      #9'FROM logistic.shipments')
    Left = 184
    Top = 128
    object qryShipmentsid: TLargeintField
      FieldName = 'id'
      Required = True
    end
    object qryShipmentsjguid: TGuidField
      FieldName = 'jguid'
      Required = True
      Size = 38
    end
    object qryShipmentscreation_date: TDateTimeField
      FieldName = 'creation_date'
      Required = True
    end
    object qryShipmentspickup_date: TDateField
      FieldName = 'pickup_date'
    end
    object qryShipmentsdelivery_date: TDateField
      FieldName = 'delivery_date'
    end
    object qryShipmentsoffice_id: TIntegerField
      FieldName = 'office_id'
    end
    object qryShipmentsworkflow_uid: TGuidField
      FieldName = 'workflow_uid'
      Size = 38
    end
    object qryShipmentsagent_id: TIntegerField
      FieldName = 'agent_id'
    end
    object qryShipmentsshipper_id: TIntegerField
      FieldName = 'shipper_id'
    end
    object qryShipmentsshipper_address: TWideMemoField
      FieldName = 'shipper_address'
      BlobType = ftWideMemo
    end
    object qryShipmentspickup_address: TWideMemoField
      FieldName = 'pickup_address'
      BlobType = ftWideMemo
    end
    object qryShipmentsyear: TSmallintField
      FieldName = 'year'
    end
    object qryShipmentsgroupage_number: TSmallintField
      FieldName = 'groupage_number'
    end
    object qryShipmentsexport_type_id: TSmallintField
      FieldName = 'export_type_id'
    end
    object qryShipmentsfullcontainer: TWideStringField
      FieldName = 'fullcontainer'
      FixedChar = True
      Size = 1
    end
    object qryShipmentsvessel_id: TIntegerField
      FieldName = 'vessel_id'
    end
    object qryShipmentswork_code: TWideStringField
      FieldName = 'work_code'
    end
    object qryShipmentstravel_identification_code: TWideStringField
      FieldName = 'travel_identification_code'
      Size = 128
    end
    object qryShipmentscarrier_id: TIntegerField
      FieldName = 'carrier_id'
    end
    object qryShipmentscarrier_code: TWideStringField
      FieldName = 'carrier_code'
      Size = 128
    end
    object qryShipmentsworkflow_id: TLargeintField
      FieldName = 'workflow_id'
    end
    object qryShipmentspol_id: TIntegerField
      FieldName = 'pol_id'
    end
    object qryShipmentspol_code: TWideStringField
      FieldName = 'pol_code'
      Size = 128
    end
    object qryShipmentspol_name: TWideStringField
      FieldName = 'pol_name'
      Size = 128
    end
    object qryShipmentspod_id: TIntegerField
      FieldName = 'pod_id'
    end
    object qryShipmentspod_name: TWideStringField
      FieldName = 'pod_name'
      Size = 128
    end
    object qryShipmentspod_code: TWideStringField
      FieldName = 'pod_code'
      Size = 128
    end
    object qryShipmentscustomer_id: TIntegerField
      FieldName = 'customer_id'
    end
    object qryShipmentsnotes: TWideMemoField
      FieldName = 'notes'
      BlobType = ftWideMemo
    end
    object qryShipmentswarehouse_id: TIntegerField
      FieldName = 'warehouse_id'
    end
    object qryShipmentswork_date: TDateField
      FieldName = 'work_date'
    end
    object qryShipmentsorder_state: TSmallintField
      FieldName = 'order_state'
    end
    object qryShipmentsairport_id: TIntegerField
      FieldName = 'airport_id'
    end
    object qryShipmentsairport_code: TWideStringField
      FieldName = 'airport_code'
      Size = 128
    end
    object qryShipmentsawb_number: TWideStringField
      FieldName = 'awb_number'
      Size = 128
    end
    object qryShipmentsinternal_notes: TWideMemoField
      FieldName = 'internal_notes'
      BlobType = ftWideMemo
    end
    object qryShipmentsinternal_notes2: TWideMemoField
      FieldName = 'internal_notes2'
      BlobType = ftWideMemo
    end
    object qryShipmentswarehouse_notes: TWideMemoField
      FieldName = 'warehouse_notes'
      BlobType = ftWideMemo
    end
    object qryShipmentsroute_type: TWideStringField
      FieldName = 'route_type'
      FixedChar = True
      Size = 1
    end
    object qryShipmentsinternet_visible: TBooleanField
      FieldName = 'internet_visible'
    end
    object qryShipmentsflag_air: TBooleanField
      FieldName = 'flag_air'
    end
    object qryShipmentsflag_ground: TBooleanField
      FieldName = 'flag_ground'
    end
    object qryShipmentsdeparture_date: TDateField
      FieldName = 'departure_date'
    end
    object qryShipmentsarrival_date: TDateField
      FieldName = 'arrival_date'
    end
    object qryShipmentspo_state: TSmallintField
      FieldName = 'po_state'
      Required = True
    end
    object qryShipmentspo_level: TSmallintField
      FieldName = 'po_level'
      Required = True
    end
    object qryShipmentsfinal_date: TDateField
      FieldName = 'final_date'
    end
    object qryShipmentsflg_house: TBooleanField
      FieldName = 'flg_house'
      Required = True
    end
    object qryShipmentsflg_master: TBooleanField
      FieldName = 'flg_master'
      Required = True
    end
    object qryShipmentsdelivered: TBooleanField
      FieldName = 'delivered'
      Required = True
    end
    object qryShipmentsflg_billable: TBooleanField
      FieldName = 'flg_billable'
      Required = True
    end
    object qryShipmentscustoms_declearer: TWideStringField
      FieldName = 'customs_declearer'
      Size = 128
    end
    object qryShipmentscustoms_date: TDateField
      FieldName = 'customs_date'
    end
    object qryShipmentsupdate_date: TDateTimeField
      FieldName = 'update_date'
    end
    object qryShipmentsinsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
    object qryShipmentsdeleted: TBooleanField
      FieldName = 'deleted'
      Required = True
    end
    object qryShipmentsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      Required = True
    end
  end
  object UniQuery2: TUniQuery
    Connection = PgErgoConnection
    Left = 184
    Top = 328
  end
  object qryShipmentRows: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from logistic.shipment_rows r '
      'where '
      '  shipment_id = :id')
    Left = 184
    Top = 264
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id'
        Value = nil
      end>
    object qryShipmentRowsyear: TSmallintField
      FieldName = 'year'
      Required = True
    end
    object qryShipmentRowsoffice_id: TIntegerField
      FieldName = 'office_id'
      Required = True
    end
    object qryShipmentRowswarehouse_id: TIntegerField
      FieldName = 'warehouse_id'
    end
    object qryShipmentRowspos: TSmallintField
      FieldName = 'pos'
      Required = True
    end
    object qryShipmentRowsquantity: TSmallintField
      FieldName = 'quantity'
    end
    object qryShipmentRowsweight: TFloatField
      FieldName = 'weight'
    end
    object qryShipmentRowsvolume: TFloatField
      FieldName = 'volume'
    end
    object qryShipmentRowsbooking: TWideStringField
      FieldName = 'booking'
    end
    object qryShipmentRowscntr_type: TWideStringField
      FieldName = 'cntr_type'
      Size = 5
    end
    object qryShipmentRowscntr_code: TWideStringField
      FieldName = 'cntr_code'
      Size = 13
    end
    object qryShipmentRowscntr_seal: TWideStringField
      FieldName = 'cntr_seal'
      Size = 30
    end
    object qryShipmentRowspkg_type_code: TWideStringField
      FieldName = 'pkg_type_code'
      Size = 3
    end
    object qryShipmentRowspo1: TWideStringField
      FieldName = 'po1'
    end
    object qryShipmentRowspo2: TWideStringField
      FieldName = 'po2'
    end
    object qryShipmentRowspo3: TWideStringField
      FieldName = 'po3'
    end
    object qryShipmentRowspo4: TWideStringField
      FieldName = 'po4'
    end
    object qryShipmentRowspo5: TWideStringField
      FieldName = 'po5'
    end
    object qryShipmentRowspo6: TWideStringField
      FieldName = 'po6'
    end
    object qryShipmentRowspo7: TWideStringField
      FieldName = 'po7'
    end
    object qryShipmentRowspo8: TWideStringField
      FieldName = 'po8'
    end
    object qryShipmentRowsfreight_amount: TFloatField
      FieldName = 'freight_amount'
    end
    object qryShipmentRowsmarks: TWideStringField
      FieldName = 'marks'
    end
    object qryShipmentRowsdescription1: TWideStringField
      FieldName = 'description1'
      Size = 75
    end
    object qryShipmentRowsdescription2: TWideStringField
      FieldName = 'description2'
      Size = 75
    end
    object qryShipmentRowsbol: TWideStringField
      FieldName = 'bol'
    end
    object qryShipmentRowsbolhouse: TWideStringField
      FieldName = 'bolhouse'
    end
    object qryShipmentRowsnote: TWideStringField
      FieldName = 'note'
      Size = 70
    end
    object qryShipmentRowstemperature: TFloatField
      FieldName = 'temperature'
    end
    object qryShipmentRowssupplier: TWideStringField
      FieldName = 'supplier'
      Size = 50
    end
    object qryShipmentRowssupplier_code: TWideStringField
      FieldName = 'supplier_code'
      Size = 6
    end
    object qryShipmentRowswarehouse_receipt_date: TDateTimeField
      FieldName = 'warehouse_receipt_date'
    end
    object qryShipmentRowsinvoice_number: TWideStringField
      FieldName = 'invoice_number'
      Size = 50
    end
    object qryShipmentRowsinvoice_date: TDateField
      FieldName = 'invoice_date'
    end
    object qryShipmentRowstaxable_weight: TFloatField
      FieldName = 'taxable_weight'
    end
    object qryShipmentRowsmunit_id: TIntegerField
      FieldName = 'munit_id'
    end
    object qryShipmentRowsvalue: TCurrencyField
      FieldName = 'value'
    end
    object qryShipmentRowscurrency_id: TSmallintField
      FieldName = 'currency_id'
    end
    object qryShipmentRowsinvoice_amount: TFloatField
      FieldName = 'invoice_amount'
    end
    object qryShipmentRowsexchange_rate: TFloatField
      FieldName = 'exchange_rate'
    end
    object qryShipmentRowsdimentions: TWideStringField
      FieldName = 'dimentions'
      Size = 50
    end
    object qryShipmentRowsremarks: TWideStringField
      FieldName = 'remarks'
      Size = 50
    end
    object qryShipmentRowsweght_volume_ratio: TFloatField
      FieldName = 'weght_volume_ratio'
    end
    object qryShipmentRowsflgnotaxw: TBooleanField
      FieldName = 'flgnotaxw'
    end
    object qryShipmentRowsactual_weight: TFloatField
      FieldName = 'actual_weight'
    end
    object qryShipmentRowsactual_volume: TFloatField
      FieldName = 'actual_volume'
    end
    object qryShipmentRowsbooking_number: TIntegerField
      FieldName = 'booking_number'
    end
    object qryShipmentRowscustoms_tariff: TWideStringField
      FieldName = 'customs_tariff'
      Size = 50
    end
    object qryShipmentRowssize_weight: TFloatField
      FieldName = 'size_weight'
    end
    object qryShipmentRowssize_length: TFloatField
      FieldName = 'size_length'
    end
    object qryShipmentRowssize_height: TFloatField
      FieldName = 'size_height'
    end
    object qryShipmentRowssupplier_warehouse_code: TWideStringField
      FieldName = 'supplier_warehouse_code'
    end
    object qryShipmentRowssupplier_warehouse_id: TIntegerField
      FieldName = 'supplier_warehouse_id'
    end
    object qryShipmentRowsjguid: TGuidField
      FieldName = 'jguid'
      Size = 38
    end
    object qryShipmentRowsid: TLargeintField
      FieldName = 'id'
    end
    object qryShipmentRowsshipment_id: TLargeintField
      FieldName = 'shipment_id'
      Required = True
    end
  end
  object DataSource1: TDataSource
    Left = 184
    Top = 192
  end
end
