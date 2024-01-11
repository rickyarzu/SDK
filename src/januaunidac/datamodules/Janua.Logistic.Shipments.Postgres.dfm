inherited dmPgLogisticShipments: TdmPgLogisticShipments
  Height = 403
  Width = 372
  inherited PgErgoConnection: TJanuaUniConnection
    AutoCommit = False
    Port = 5444
    Database = 'test'
    Server = 'localhost'
    Left = 64
    Top = 32
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  inherited PgUniProv: TPostgreSQLUniProvider
    Left = 64
    Top = 88
  end
  inherited qryWorkTypes: TUniQuery
    Left = 64
    Top = 144
  end
  inherited qryWorkFlows: TUniQuery
    Left = 64
    Top = 208
  end
  inherited qryWorkAttachments: TUniQuery
    SQLDelete.Strings = (
      'DELETE FROM workflow.attachments'
      'WHERE'
      '  work_id = :Old_work_id')
    SQLUpdate.Strings = (
      'UPDATE workflow.attachments'
      'SET'
      
        '  work_id = :work_id, blob_id = :blob_id, blob_jguid = :blob_jgu' +
        'id, location = :location, filename = :filename, description = :d' +
        'escription, context = :context, extension = :extension'
      'WHERE'
      '  work_id = :Old_work_id')
    SQLLock.Strings = (
      'SELECT * FROM workflow.attachments'
      'WHERE'
      '  work_id = :Old_work_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT work_id, blob_id, blob_jguid, location, filename, descrip' +
        'tion, context, extension FROM workflow.attachments'
      'WHERE'
      '  work_id = :work_id')
    Left = 64
  end
  inherited qryWorkLevels: TUniQuery
    Left = 64
  end
  inherited lkpWorkFlows: TUniQuery
    SQL.Strings = (
      
        'SELECT shipments.id, vessels.name, work_code,pol_code, pol_name,' +
        ' pod_code, pod_name, TO_CHAR(creation_date, '#39'DD/MM/YYYY'#39'), '
      
        '      work_code || '#39'-'#39' ||   vessels.name || '#39'-'#39' || pol_code || '#39 +
        '-'#39' || pod_code || '#39'-'#39' || TO_CHAR(creation_date, '#39'DD/MM/YYYY'#39') AS' +
        ' display_index,'
      
        '      work_code || '#39'-'#39' ||   vessels.name || '#39'-'#39' || pol_code || '#39 +
        '-'#39' || pol_name || '#39'-'#39' || pod_code || '#39'-'#39' || pod_name  AS search_' +
        'index  '
      'FROM '
      #9'logistic.shipments shipments '
      
        #9#9'inner join workflow.workflows works on works.jguid = shipments' +
        '.workflow_uid'
      
        #9#9'LEFT OUTER JOIN shipping.vessels vessels on shipments.vessel_i' +
        'd = vessels.vessel_id'
      #9'ORDER BY work_code')
    Left = 264
    Top = 256
  end
  object qryShipments: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO logistic.shipments_view'
      
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
        'deleted, db_schema_id, carrier_name, workdate, code, type_id, le' +
        'vel_id, agent_name, agent_code, agent_town, shipper_name, shippe' +
        'r_code, shipper_town, vessel_name, airport_name, carrier_town, c' +
        'ustomer_name, customer_code, customer_town, customer_address, cu' +
        'stomer_postal_code, customer_phone)'
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
        ' :db_schema_id, :carrier_name, :workdate, :code, :type_id, :leve' +
        'l_id, :agent_name, :agent_code, :agent_town, :shipper_name, :shi' +
        'pper_code, :shipper_town, :vessel_name, :airport_name, :carrier_' +
        'town, :customer_name, :customer_code, :customer_town, :customer_' +
        'address, :customer_postal_code, :customer_phone)')
    SQLDelete.Strings = (
      'DELETE FROM logistic.shipments_view'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLUpdate.Strings = (
      'UPDATE logistic.shipments_view'
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
        '_schema_id = :db_schema_id, carrier_name = :carrier_name, workda' +
        'te = :workdate, code = :code, type_id = :type_id, level_id = :le' +
        'vel_id, agent_name = :agent_name, agent_code = :agent_code, agen' +
        't_town = :agent_town, shipper_name = :shipper_name, shipper_code' +
        ' = :shipper_code, shipper_town = :shipper_town, vessel_name = :v' +
        'essel_name, airport_name = :airport_name, carrier_town = :carrie' +
        'r_town, customer_name = :customer_name, customer_code = :custome' +
        'r_code, customer_town = :customer_town, customer_address = :cust' +
        'omer_address, customer_postal_code = :customer_postal_code, cust' +
        'omer_phone = :customer_phone'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLLock.Strings = (
      'SELECT * FROM logistic.shipments_view'
      'WHERE'
      '  jguid = :Old_jguid'
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
        'te, deleted, db_schema_id, carrier_name, workdate, code, type_id' +
        ', level_id, agent_name, agent_code, agent_town, shipper_name, sh' +
        'ipper_code, shipper_town, vessel_name, airport_name, carrier_tow' +
        'n, customer_name, customer_code, customer_town, customer_address' +
        ', customer_postal_code, customer_phone FROM logistic.shipments_v' +
        'iew'
      'WHERE'
      '  jguid = :jguid')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM logistic.shipments_view'
      ') t')
    DataTypeMap = <
      item
        FieldName = 'search_index'
        FieldType = ftWideString
        FieldLength = 2048
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'select v.*,'
      'Upper('
      
        '   work_code || '#39'-'#39' || carrier_code || '#39'-'#39' || pol_code ||  '#39'-'#39' |' +
        '| pod_code ||  '#39'-'#39' || pol_name ||  '#39'-'#39'  || '
      '   pod_name  ||  '#39'-'#39' || vessel_name ) search_index'
      'from logistic.shipments_view v'
      'where '
      '(:p_work_type_id = 0 or type_id = :p_work_type_id)'
      'and'
      '(:p_work_id = 0 or workflow_id = :p_work_id)'
      'and'
      
        '( :p_db_schema_id = 0 or db_schema_id =  :p_db_schema_id or db_s' +
        'chema_id = 0)'
      'order by id desc')
    Filter = 'search_index like '#39'%SC115000022%'#39
    Left = 168
    Top = 40
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'p_work_type_id'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftLargeint
        Name = 'p_work_id'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'p_db_schema_id'
        ParamType = ptInput
        Value = 0
      end>
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
    object qryShipmentscarrier_name: TWideStringField
      FieldName = 'carrier_name'
      Size = 128
    end
    object qryShipmentsworkdate: TDateTimeField
      FieldName = 'workdate'
      ReadOnly = True
      Required = True
    end
    object qryShipmentscode: TWideStringField
      FieldName = 'code'
      ReadOnly = True
      Size = 30
    end
    object qryShipmentstype_id: TSmallintField
      FieldName = 'type_id'
      ReadOnly = True
      Required = True
    end
    object qryShipmentslevel_id: TSmallintField
      FieldName = 'level_id'
      ReadOnly = True
    end
    object qryShipmentsagent_name: TWideStringField
      FieldName = 'agent_name'
      Size = 128
    end
    object qryShipmentsagent_code: TWideStringField
      FieldName = 'agent_code'
      Size = 15
    end
    object qryShipmentsagent_town: TWideStringField
      FieldName = 'agent_town'
      Size = 128
    end
    object qryShipmentsshipper_name: TWideStringField
      FieldName = 'shipper_name'
      Size = 128
    end
    object qryShipmentsshipper_code: TWideStringField
      FieldName = 'shipper_code'
      Size = 15
    end
    object qryShipmentsshipper_town: TWideStringField
      FieldName = 'shipper_town'
      Size = 128
    end
    object qryShipmentsvessel_name: TWideStringField
      FieldName = 'vessel_name'
      Size = 128
    end
    object qryShipmentsairport_name: TWideStringField
      FieldName = 'airport_name'
      Size = 255
    end
    object qryShipmentscarrier_town: TWideStringField
      FieldName = 'carrier_town'
      Size = 128
    end
    object qryShipmentscustomer_name: TWideStringField
      FieldName = 'customer_name'
      Size = 128
    end
    object qryShipmentscustomer_code: TWideStringField
      FieldName = 'customer_code'
      Size = 15
    end
    object qryShipmentscustomer_town: TWideStringField
      FieldName = 'customer_town'
      Size = 128
    end
    object qryShipmentscustomer_address: TWideStringField
      FieldName = 'customer_address'
      Size = 256
    end
    object qryShipmentscustomer_postal_code: TWideStringField
      FieldName = 'customer_postal_code'
    end
    object qryShipmentscustomer_phone: TWideStringField
      FieldName = 'customer_phone'
      Size = 30
    end
    object qryShipmentssearch_index: TWideStringField
      FieldName = 'search_index'
      ReadOnly = True
      Size = 2048
    end
    object qryShipmentswork_number: TIntegerField
      FieldName = 'work_number'
    end
  end
  object qryLkpLocations: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO logistic.locations'
      
        '  (id, jguid, db_schema_id, deleted, insert_date, update_date, u' +
        'ser_insert, user_update, code, name, state_province, country, ar' +
        'ea_code, flgairport, iso_code, iata_code, group_id, search_index' +
        ')'
      'VALUES'
      
        '  (:id, :jguid, :db_schema_id, :deleted, :insert_date, :update_d' +
        'ate, :user_insert, :user_update, :code, :name, :state_province, ' +
        ':country, :area_code, :flgairport, :iso_code, :iata_code, :group' +
        '_id, :search_index)')
    SQLDelete.Strings = (
      'DELETE FROM logistic.locations'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE logistic.locations'
      'SET'
      
        '  id = :id, jguid = :jguid, db_schema_id = :db_schema_id, delete' +
        'd = :deleted, insert_date = :insert_date, '
      
        '  update_date = :update_date, user_insert = :user_insert, user_u' +
        'pdate = :user_update, code = :code, '
      
        '  name = :name, state_province = :state_province, country = :cou' +
        'ntry, area_code = :area_code, '
      
        '  flgairport = :flgairport, iso_code = :iso_code, iata_code = :i' +
        'ata_code, group_id = :group_id, '
      '  search_index = :search_index'
      'WHERE'
      '  id = :Old_id')
    SQLLock.Strings = (
      'SELECT * FROM logistic.locations'
      'WHERE'
      '  id = :Old_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id, jguid, db_schema_id, deleted, insert_date, update_dat' +
        'e, user_insert, user_update, code, name, state_province, country' +
        ', area_code, flgairport, iso_code, iata_code, group_id, search_i' +
        'ndex FROM logistic.locations'
      'WHERE'
      '  id = :id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM logistic.locations'
      ''
      ') t')
    DataTypeMap = <
      item
        FieldName = 'display_index'
        FieldType = ftWideString
        FieldLength = 256
        IgnoreErrors = True
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'select l.*, '
      '    l.name || '#39' ('#39' || l.code ||'#39')'#39' || '
      
        '    case when l.state_province is null then '#39#39' else '#39', '#39' || l.st' +
        'ate_province end ||'
      
        '    case when l.country is null then '#39#39' else '#39', '#39' || l.country e' +
        'nd'
      '  as display_index, '
      '  0::integer as pos '
      'from '
      'logistic.locations l'
      'where'
      'l.db_schema_id = :db_schema_id'
      'and '
      '(l.group_id = :p_group_id or :p_group_id = 0)'
      ''
      '/*'
      ''
      
        '(an_last_name || '#39' '#39' || nvl(an_name, '#39#39') || '#39', '#39' || nvl(an_town,' +
        ' '#39#39')|| '#39', '#39' || nvl(an_address, '#39#39'))as display_index, '
      '0::integer as pos'
      '*/')
    Left = 168
    Top = 224
    ParamData = <
      item
        DataType = ftInteger
        Name = 'db_schema_id'
        ParamType = ptInput
        Value = 33
      end
      item
        DataType = ftSmallint
        Name = 'p_group_id'
        ParamType = ptInput
        Value = 0
      end>
    object qryLkpLocationsid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qryLkpLocationsjguid: TGuidField
      FieldName = 'jguid'
      Required = True
      Size = 38
    end
    object qryLkpLocationsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      Required = True
    end
    object qryLkpLocationsdeleted: TBooleanField
      FieldName = 'deleted'
    end
    object qryLkpLocationsinsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
    object qryLkpLocationsupdate_date: TDateTimeField
      FieldName = 'update_date'
    end
    object qryLkpLocationsuser_insert: TIntegerField
      FieldName = 'user_insert'
    end
    object qryLkpLocationsuser_update: TIntegerField
      FieldName = 'user_update'
    end
    object qryLkpLocationscode: TWideStringField
      FieldName = 'code'
      Required = True
      Size = 5
    end
    object qryLkpLocationsname: TWideStringField
      FieldName = 'name'
      Size = 255
    end
    object qryLkpLocationsstate_province: TWideStringField
      FieldName = 'state_province'
      Size = 25
    end
    object qryLkpLocationscountry: TWideStringField
      FieldName = 'country'
      Size = 25
    end
    object qryLkpLocationsarea_code: TWideStringField
      FieldName = 'area_code'
      Size = 6
    end
    object qryLkpLocationsflgairport: TBooleanField
      FieldName = 'flgairport'
      Required = True
    end
    object qryLkpLocationsiso_code: TWideStringField
      FieldName = 'iso_code'
      Size = 6
    end
    object qryLkpLocationsiata_code: TWideStringField
      FieldName = 'iata_code'
      FixedChar = True
      Size = 3
    end
    object qryLkpLocationsgroup_id: TSmallintField
      FieldName = 'group_id'
    end
    object qryLkpLocationssearch_index: TWideStringField
      FieldName = 'search_index'
      Size = 256
    end
    object qryLkpLocationspos: TIntegerField
      FieldName = 'pos'
      ReadOnly = True
    end
    object qryLkpLocationsdisplay_index: TWideStringField
      FieldName = 'display_index'
      ReadOnly = True
      Size = 256
    end
  end
  object dsShipments: TUniDataSource
    DataSet = qryShipments
    Left = 168
    Top = 96
  end
  object qryShipmentRows: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO logistic.shipment_rows'
      
        '  (year, shipment_id, office_id, warehouse_id, pos, quantity, we' +
        'ight, volume, booking, cntr_type, cntr_code, cntr_seal, pkg_type' +
        '_code, po1, po2, po3, po4, po5, po6, po7, po8, freight_amount, m' +
        'arks, description1, description2, bol, bolhouse, note, temperatu' +
        're, supplier, supplier_code, warehouse_receipt_date, invoice_num' +
        'ber, invoice_date, taxable_weight, munit_id, value, currency_id,' +
        ' invoice_amount, exchange_rate, dimentions, remarks, weght_volum' +
        'e_ratio, flgnotaxw, actual_weight, actual_volume, booking_number' +
        ', customs_tariff, size_weight, size_length, size_height, supplie' +
        'r_warehouse_code, supplier_warehouse_id, jguid, id)'
      'VALUES'
      
        '  (:year, :shipment_id, :office_id, :warehouse_id, :pos, :quanti' +
        'ty, :weight, :volume, :booking, :cntr_type, :cntr_code, :cntr_se' +
        'al, :pkg_type_code, :po1, :po2, :po3, :po4, :po5, :po6, :po7, :p' +
        'o8, :freight_amount, :marks, :description1, :description2, :bol,' +
        ' :bolhouse, :note, :temperature, :supplier, :supplier_code, :war' +
        'ehouse_receipt_date, :invoice_number, :invoice_date, :taxable_we' +
        'ight, :munit_id, :value, :currency_id, :invoice_amount, :exchang' +
        'e_rate, :dimentions, :remarks, :weght_volume_ratio, :flgnotaxw, ' +
        ':actual_weight, :actual_volume, :booking_number, :customs_tariff' +
        ', :size_weight, :size_length, :size_height, :supplier_warehouse_' +
        'code, :supplier_warehouse_id, :jguid, :id)')
    SQLDelete.Strings = (
      'DELETE FROM logistic.shipment_rows'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLUpdate.Strings = (
      'UPDATE logistic.shipment_rows'
      'SET'
      
        '  year = :year, shipment_id = :shipment_id, office_id = :office_' +
        'id, warehouse_id = :warehouse_id, pos = :pos, quantity = :quanti' +
        'ty, weight = :weight, volume = :volume, booking = :booking, cntr' +
        '_type = :cntr_type, cntr_code = :cntr_code, cntr_seal = :cntr_se' +
        'al, pkg_type_code = :pkg_type_code, po1 = :po1, po2 = :po2, po3 ' +
        '= :po3, po4 = :po4, po5 = :po5, po6 = :po6, po7 = :po7, po8 = :p' +
        'o8, freight_amount = :freight_amount, marks = :marks, descriptio' +
        'n1 = :description1, description2 = :description2, bol = :bol, bo' +
        'lhouse = :bolhouse, note = :note, temperature = :temperature, su' +
        'pplier = :supplier, supplier_code = :supplier_code, warehouse_re' +
        'ceipt_date = :warehouse_receipt_date, invoice_number = :invoice_' +
        'number, invoice_date = :invoice_date, taxable_weight = :taxable_' +
        'weight, munit_id = :munit_id, value = :value, currency_id = :cur' +
        'rency_id, invoice_amount = :invoice_amount, exchange_rate = :exc' +
        'hange_rate, dimentions = :dimentions, remarks = :remarks, weght_' +
        'volume_ratio = :weght_volume_ratio, flgnotaxw = :flgnotaxw, actu' +
        'al_weight = :actual_weight, actual_volume = :actual_volume, book' +
        'ing_number = :booking_number, customs_tariff = :customs_tariff, ' +
        'size_weight = :size_weight, size_length = :size_length, size_hei' +
        'ght = :size_height, supplier_warehouse_code = :supplier_warehous' +
        'e_code, supplier_warehouse_id = :supplier_warehouse_id, jguid = ' +
        ':jguid, id = :id'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLLock.Strings = (
      'SELECT * FROM logistic.shipment_rows'
      'WHERE'
      '  jguid = :Old_jguid'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT year, shipment_id, office_id, warehouse_id, pos, quantity' +
        ', weight, volume, booking, cntr_type, cntr_code, cntr_seal, pkg_' +
        'type_code, po1, po2, po3, po4, po5, po6, po7, po8, freight_amoun' +
        't, marks, description1, description2, bol, bolhouse, note, tempe' +
        'rature, supplier, supplier_code, warehouse_receipt_date, invoice' +
        '_number, invoice_date, taxable_weight, munit_id, value, currency' +
        '_id, invoice_amount, exchange_rate, dimentions, remarks, weght_v' +
        'olume_ratio, flgnotaxw, actual_weight, actual_volume, booking_nu' +
        'mber, customs_tariff, size_weight, size_length, size_height, sup' +
        'plier_warehouse_code, supplier_warehouse_id, jguid, id FROM logi' +
        'stic.shipment_rows'
      'WHERE'
      '  jguid = :jguid')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM logistic.shipment_rows'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from logistic.shipment_rows r '
      'where '
      '  shipment_id = :id')
    MasterSource = dsShipments
    MasterFields = 'id'
    DetailFields = 'shipment_id'
    Left = 168
    Top = 160
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id'
        ParamType = ptInput
        Value = 35080
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
  object qryConditions: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO logistic.shipments_view'
      
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
        'deleted, db_schema_id, carrier_name, workdate, code, type_id, le' +
        'vel_id, agent_name, agent_code, agent_town, shipper_name, shippe' +
        'r_code, shipper_town, vessel_name, airport_name, carrier_town, c' +
        'ustomer_name, customer_code, customer_town, customer_address, cu' +
        'stomer_postal_code, customer_phone)'
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
        ' :db_schema_id, :carrier_name, :workdate, :code, :type_id, :leve' +
        'l_id, :agent_name, :agent_code, :agent_town, :shipper_name, :shi' +
        'pper_code, :shipper_town, :vessel_name, :airport_name, :carrier_' +
        'town, :customer_name, :customer_code, :customer_town, :customer_' +
        'address, :customer_postal_code, :customer_phone)')
    SQLDelete.Strings = (
      'DELETE FROM logistic.shipments_view'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLUpdate.Strings = (
      'UPDATE logistic.shipments_view'
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
        '_schema_id = :db_schema_id, carrier_name = :carrier_name, workda' +
        'te = :workdate, code = :code, type_id = :type_id, level_id = :le' +
        'vel_id, agent_name = :agent_name, agent_code = :agent_code, agen' +
        't_town = :agent_town, shipper_name = :shipper_name, shipper_code' +
        ' = :shipper_code, shipper_town = :shipper_town, vessel_name = :v' +
        'essel_name, airport_name = :airport_name, carrier_town = :carrie' +
        'r_town, customer_name = :customer_name, customer_code = :custome' +
        'r_code, customer_town = :customer_town, customer_address = :cust' +
        'omer_address, customer_postal_code = :customer_postal_code, cust' +
        'omer_phone = :customer_phone'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLLock.Strings = (
      'SELECT * FROM logistic.shipments_view'
      'WHERE'
      '  jguid = :Old_jguid'
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
        'te, deleted, db_schema_id, carrier_name, workdate, code, type_id' +
        ', level_id, agent_name, agent_code, agent_town, shipper_name, sh' +
        'ipper_code, shipper_town, vessel_name, airport_name, carrier_tow' +
        'n, customer_name, customer_code, customer_town, customer_address' +
        ', customer_postal_code, customer_phone FROM logistic.shipments_v' +
        'iew'
      'WHERE'
      '  jguid = :jguid')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM logistic.shipments_view'
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from logistic.conditions')
    Left = 168
    Top = 296
    object qryConditionsid: TSmallintField
      FieldName = 'id'
      Required = True
    end
    object qryConditionsjguid: TGuidField
      FieldName = 'jguid'
      Required = True
      Size = 38
    end
    object qryConditionscode: TWideStringField
      FieldName = 'code'
      Required = True
      Size = 12
    end
    object qryConditionsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      Required = True
    end
    object qryConditionsdescription: TIntegerField
      FieldName = 'description'
    end
  end
  object qryContainerTypes: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO logistic.shipments_view'
      
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
        'deleted, db_schema_id, carrier_name, workdate, code, type_id, le' +
        'vel_id, agent_name, agent_code, agent_town, shipper_name, shippe' +
        'r_code, shipper_town, vessel_name, airport_name, carrier_town, c' +
        'ustomer_name, customer_code, customer_town, customer_address, cu' +
        'stomer_postal_code, customer_phone)'
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
        ' :db_schema_id, :carrier_name, :workdate, :code, :type_id, :leve' +
        'l_id, :agent_name, :agent_code, :agent_town, :shipper_name, :shi' +
        'pper_code, :shipper_town, :vessel_name, :airport_name, :carrier_' +
        'town, :customer_name, :customer_code, :customer_town, :customer_' +
        'address, :customer_postal_code, :customer_phone)')
    SQLDelete.Strings = (
      'DELETE FROM logistic.shipments_view'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLUpdate.Strings = (
      'UPDATE logistic.shipments_view'
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
        '_schema_id = :db_schema_id, carrier_name = :carrier_name, workda' +
        'te = :workdate, code = :code, type_id = :type_id, level_id = :le' +
        'vel_id, agent_name = :agent_name, agent_code = :agent_code, agen' +
        't_town = :agent_town, shipper_name = :shipper_name, shipper_code' +
        ' = :shipper_code, shipper_town = :shipper_town, vessel_name = :v' +
        'essel_name, airport_name = :airport_name, carrier_town = :carrie' +
        'r_town, customer_name = :customer_name, customer_code = :custome' +
        'r_code, customer_town = :customer_town, customer_address = :cust' +
        'omer_address, customer_postal_code = :customer_postal_code, cust' +
        'omer_phone = :customer_phone'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLLock.Strings = (
      'SELECT * FROM logistic.shipments_view'
      'WHERE'
      '  jguid = :Old_jguid'
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
        'te, deleted, db_schema_id, carrier_name, workdate, code, type_id' +
        ', level_id, agent_name, agent_code, agent_town, shipper_name, sh' +
        'ipper_code, shipper_town, vessel_name, airport_name, carrier_tow' +
        'n, customer_name, customer_code, customer_town, customer_address' +
        ', customer_postal_code, customer_phone FROM logistic.shipments_v' +
        'iew'
      'WHERE'
      '  jguid = :jguid')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM logistic.shipments_view'
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from logistic.container_types')
    Left = 264
    Top = 64
    object qryContainerTypesid: TSmallintField
      FieldName = 'id'
      Required = True
    end
    object qryContainerTypesdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      Required = True
    end
    object qryContainerTypescode: TWideStringField
      FieldName = 'code'
      Required = True
      Size = 4
    end
    object qryContainerTypesdescription: TWideStringField
      FieldName = 'description'
      Size = 40
    end
    object qryContainerTypescntr_size: TWideStringField
      FieldName = 'cntr_size'
      Size = 2
    end
    object qryContainerTypesfranchise_days: TIntegerField
      FieldName = 'franchise_days'
    end
    object qryContainerTypesrate: TIntegerField
      FieldName = 'rate'
    end
    object qryContainerTypesthcimp: TFloatField
      FieldName = 'thcimp'
    end
    object qryContainerTypesthcval: TWideStringField
      FieldName = 'thcval'
      Size = 3
    end
    object qryContainerTypestarifpri: TIntegerField
      FieldName = 'tarifpri'
    end
    object qryContainerTypesprirate_days: TIntegerField
      FieldName = 'prirate_days'
    end
    object qryContainerTypesmax_weight: TFloatField
      FieldName = 'max_weight'
    end
    object qryContainerTypesmax_volume: TFloatField
      FieldName = 'max_volume'
    end
    object qryContainerTypescntr_length: TFloatField
      FieldName = 'cntr_length'
    end
    object qryContainerTypescntr_width: TFloatField
      FieldName = 'cntr_width'
    end
    object qryContainerTypescntr_height: TFloatField
      FieldName = 'cntr_height'
    end
    object qryContainerTypesinternal_length: TFloatField
      FieldName = 'internal_length'
    end
    object qryContainerTypesto_door_length: TFloatField
      FieldName = 'to_door_length'
    end
    object qryContainerTypesinternal_width: TFloatField
      FieldName = 'internal_width'
    end
    object qryContainerTypesto_door_width: TFloatField
      FieldName = 'to_door_width'
    end
    object qryContainerTypesinternal_heigth: TFloatField
      FieldName = 'internal_heigth'
    end
    object qryContainerTypesto_door_heigth: TFloatField
      FieldName = 'to_door_heigth'
    end
    object qryContainerTypesinsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
    object qryContainerTypesuser_insert: TIntegerField
      FieldName = 'user_insert'
    end
    object qryContainerTypesuser_update: TIntegerField
      FieldName = 'user_update'
    end
    object qryContainerTypesupdate_date: TDateTimeField
      FieldName = 'update_date'
    end
    object qryContainerTypesjguid: TGuidField
      FieldName = 'jguid'
      Size = 38
    end
  end
  object qryLkpWarehouses: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'select '
      'anagraph_id, an_last_name'
      'from '
      'anagraph.anagraphs a '
      'where'
      'a.an_main_group_id = 16 '
      'order by an_last_name')
    Left = 264
    Top = 120
  end
  object qryLkpWorkFlows: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'select   work_code, --coalesce(work_code, code) as work_code'
      '    shippers.an_last_name AS shipper_name,'
      '    vessels.name AS vessel_name,'
      #9
      'from logistic.shipments s'
      
        '     LEFT JOIN anagraph.anagraphs shippers ON shippers.anagraph_' +
        'id = S.shipper_id'
      
        '     LEFT JOIN shipping.vessels vessels ON vessels.vessel_id = S' +
        '.vessel_id')
    Left = 264
    Top = 184
  end
  object lkpShipments: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO workflow.workflows'
      
        '  (id, jguid, workdate, code, office_id, customer_id, year, type' +
        '_id, deleted, db_schema_id, level_id)'
      'VALUES'
      
        '  (:id, :jguid, :workdate, :code, :office_id, :customer_id, :yea' +
        'r, :type_id, :deleted, :db_schema_id, :level_id)')
    SQLDelete.Strings = (
      'DELETE FROM workflow.workflows'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE workflow.workflows'
      'SET'
      
        '  id = :id, jguid = :jguid, workdate = :workdate, code = :code, ' +
        'office_id = :office_id, customer_id = :customer_id, year = :year' +
        ', type_id = :type_id, deleted = :deleted, db_schema_id = :db_sch' +
        'ema_id, level_id = :level_id'
      'WHERE'
      '  id = :Old_id')
    SQLLock.Strings = (
      'SELECT * FROM workflow.workflows'
      'WHERE'
      '  id = :Old_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id, jguid, workdate, code, office_id, customer_id, year, ' +
        'type_id, deleted, db_schema_id, level_id FROM workflow.workflows'
      'WHERE'
      '  id = :id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM workflow.workflows'
      ''
      ') t')
    DataTypeMap = <
      item
        FieldName = 'display_index'
        FieldType = ftWideString
        FieldLength = 1024
      end
      item
        FieldName = 'search_index'
        FieldType = ftWideString
        FieldLength = 1024
      end
      item
        FieldName = 'char_date'
        FieldType = ftWideString
        FieldLength = 1024
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'SELECT shipments.jguid, shipments.deleted,  shipments.id, vessel' +
        's.name, work_code,pol_code, pol_name, pod_code, pod_name, depart' +
        'ure_date,  '
      '      TO_CHAR(creation_date, '#39'DD/MM/YYYY'#39') char_date, '
      
        '      work_code || '#39'-'#39' ||   vessels.name || '#39'-'#39' || pol_code || '#39 +
        '-'#39' || pod_code || '#39'-'#39' || TO_CHAR(creation_date, '#39'DD/MM/YYYY'#39') AS' +
        ' display_index,'
      
        '      work_code || '#39'-'#39' ||   vessels.name || '#39'-'#39' || pol_code || '#39 +
        '-'#39' || pol_name || '#39'-'#39' || pod_code || '#39'-'#39' || pod_name  AS search_' +
        'index  '
      'FROM '
      #9'logistic.shipments shipments '
      
        #9#9'inner join workflow.workflows works on works.jguid = shipments' +
        '.workflow_uid'
      
        #9#9'LEFT OUTER JOIN shipping.vessels vessels on shipments.vessel_i' +
        'd = vessels.vessel_id'
      #9'ORDER BY shipments.id DESC')
    BeforePost = qryWorkTypesBeforePost
    Left = 264
    Top = 328
    object lkpShipmentsid: TLargeintField
      FieldName = 'id'
      Required = True
    end
    object lkpShipmentsname: TWideStringField
      FieldName = 'name'
      ReadOnly = True
      Size = 128
    end
    object lkpShipmentswork_code: TWideStringField
      FieldName = 'work_code'
    end
    object lkpShipmentspol_code: TWideStringField
      FieldName = 'pol_code'
      Size = 128
    end
    object lkpShipmentspol_name: TWideStringField
      FieldName = 'pol_name'
      Size = 128
    end
    object lkpShipmentspod_code: TWideStringField
      FieldName = 'pod_code'
      Size = 128
    end
    object lkpShipmentspod_name: TWideStringField
      FieldName = 'pod_name'
      Size = 128
    end
    object lkpShipmentschar_date: TWideStringField
      FieldName = 'char_date'
      ReadOnly = True
      Size = 1024
    end
    object lkpShipmentsdisplay_index: TWideStringField
      FieldName = 'display_index'
      ReadOnly = True
      Size = 1024
    end
    object lkpShipmentssearch_index: TWideStringField
      FieldName = 'search_index'
      ReadOnly = True
      Size = 1024
    end
    object lkpShipmentsjguid: TGuidField
      FieldName = 'jguid'
      Required = True
      Size = 38
    end
    object lkpShipmentsdeleted: TBooleanField
      FieldName = 'deleted'
      Required = True
    end
    object lkpShipmentsdeparture_date: TDateField
      FieldName = 'departure_date'
    end
  end
end
