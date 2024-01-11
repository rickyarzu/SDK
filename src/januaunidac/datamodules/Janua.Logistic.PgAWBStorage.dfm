inherited dmPgAWBsStorage: TdmPgAWBsStorage
  Height = 380
  Width = 982
  inherited PgErgoConnection: TJanuaUniConnection
    Left = 120
    Top = 32
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  inherited PgUniProv: TPostgreSQLUniProvider
    Left = 120
    Top = 88
  end
  object qryAWBs: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO logistic.awb'
      
        '  (year, office_id, id, code, db_schema_id, field1a, field1b, fi' +
        'eld1c, cin, field2, field21, field22, field23, field3, field31, ' +
        'field32, field33, field4a, field4b, field4c, field4c2, field4c3,' +
        ' field5, field6, field7, field8, field8a, field8b, field8c, fiel' +
        'd8d, field8c1, field8d1, field8e, field8f, field8f1, field9, fie' +
        'ld10, field11, field12, field13, field14, field15, field16, fiel' +
        'd17, field28a, field28b, field29a, field29b, field30a, field30b,' +
        ' field31a, field31b, field32a, field32b, field33a, field33b, fie' +
        'ld34, field35, field36, field37, field38, hi1, hi2, hi3, codothe' +
        'r1, codother2, codother3, codother4, codother5, codother6, codot' +
        'her7, codother8, codother9, amountother9, amountother8, amountot' +
        'her7, amountother6, amountother5, amountother4, amountother3, am' +
        'ountother2, amountother1, fieldhead, partialmaster, partialmaste' +
        'ryear, currency_id, awb_type_id, jguid, netamount, progressive, ' +
        'mawbcosts, mawbothcosts, taxableweight, masterdate, estimateflig' +
        'ht, effectiveflight, etdestimate, etdeffective, etaestimate, eta' +
        'effective, transportcost, containerseals, masternotes, awb_type,' +
        ' order_id, customs_doc_type, palletcost, year_number, field19a, ' +
        'branchlog, deleted)'
      'VALUES'
      
        '  (:year, :office_id, :id, :code, :db_schema_id, :field1a, :fiel' +
        'd1b, :field1c, :cin, :field2, :field21, :field22, :field23, :fie' +
        'ld3, :field31, :field32, :field33, :field4a, :field4b, :field4c,' +
        ' :field4c2, :field4c3, :field5, :field6, :field7, :field8, :fiel' +
        'd8a, :field8b, :field8c, :field8d, :field8c1, :field8d1, :field8' +
        'e, :field8f, :field8f1, :field9, :field10, :field11, :field12, :' +
        'field13, :field14, :field15, :field16, :field17, :field28a, :fie' +
        'ld28b, :field29a, :field29b, :field30a, :field30b, :field31a, :f' +
        'ield31b, :field32a, :field32b, :field33a, :field33b, :field34, :' +
        'field35, :field36, :field37, :field38, :hi1, :hi2, :hi3, :codoth' +
        'er1, :codother2, :codother3, :codother4, :codother5, :codother6,' +
        ' :codother7, :codother8, :codother9, :amountother9, :amountother' +
        '8, :amountother7, :amountother6, :amountother5, :amountother4, :' +
        'amountother3, :amountother2, :amountother1, :fieldhead, :partial' +
        'master, :partialmasteryear, :currency_id, :awb_type_id, :jguid, ' +
        ':netamount, :progressive, :mawbcosts, :mawbothcosts, :taxablewei' +
        'ght, :masterdate, :estimateflight, :effectiveflight, :etdestimat' +
        'e, :etdeffective, :etaestimate, :etaeffective, :transportcost, :' +
        'containerseals, :masternotes, :awb_type, :order_id, :customs_doc' +
        '_type, :palletcost, :year_number, :field19a, :branchlog, :delete' +
        'd)')
    SQLDelete.Strings = (
      'DELETE FROM logistic.awb'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE logistic.awb'
      'SET'
      
        '  year = :year, office_id = :office_id, id = :id, code = :code, ' +
        'db_schema_id = :db_schema_id, field1a = :field1a, field1b = :fie' +
        'ld1b, field1c = :field1c, cin = :cin, field2 = :field2, field21 ' +
        '= :field21, field22 = :field22, field23 = :field23, field3 = :fi' +
        'eld3, field31 = :field31, field32 = :field32, field33 = :field33' +
        ', field4a = :field4a, field4b = :field4b, field4c = :field4c, fi' +
        'eld4c2 = :field4c2, field4c3 = :field4c3, field5 = :field5, fiel' +
        'd6 = :field6, field7 = :field7, field8 = :field8, field8a = :fie' +
        'ld8a, field8b = :field8b, field8c = :field8c, field8d = :field8d' +
        ', field8c1 = :field8c1, field8d1 = :field8d1, field8e = :field8e' +
        ', field8f = :field8f, field8f1 = :field8f1, field9 = :field9, fi' +
        'eld10 = :field10, field11 = :field11, field12 = :field12, field1' +
        '3 = :field13, field14 = :field14, field15 = :field15, field16 = ' +
        ':field16, field17 = :field17, field28a = :field28a, field28b = :' +
        'field28b, field29a = :field29a, field29b = :field29b, field30a =' +
        ' :field30a, field30b = :field30b, field31a = :field31a, field31b' +
        ' = :field31b, field32a = :field32a, field32b = :field32b, field3' +
        '3a = :field33a, field33b = :field33b, field34 = :field34, field3' +
        '5 = :field35, field36 = :field36, field37 = :field37, field38 = ' +
        ':field38, hi1 = :hi1, hi2 = :hi2, hi3 = :hi3, codother1 = :codot' +
        'her1, codother2 = :codother2, codother3 = :codother3, codother4 ' +
        '= :codother4, codother5 = :codother5, codother6 = :codother6, co' +
        'dother7 = :codother7, codother8 = :codother8, codother9 = :codot' +
        'her9, amountother9 = :amountother9, amountother8 = :amountother8' +
        ', amountother7 = :amountother7, amountother6 = :amountother6, am' +
        'ountother5 = :amountother5, amountother4 = :amountother4, amount' +
        'other3 = :amountother3, amountother2 = :amountother2, amountothe' +
        'r1 = :amountother1, fieldhead = :fieldhead, partialmaster = :par' +
        'tialmaster, partialmasteryear = :partialmasteryear, currency_id ' +
        '= :currency_id, awb_type_id = :awb_type_id, jguid = :jguid, neta' +
        'mount = :netamount, progressive = :progressive, mawbcosts = :maw' +
        'bcosts, mawbothcosts = :mawbothcosts, taxableweight = :taxablewe' +
        'ight, masterdate = :masterdate, estimateflight = :estimateflight' +
        ', effectiveflight = :effectiveflight, etdestimate = :etdestimate' +
        ', etdeffective = :etdeffective, etaestimate = :etaestimate, etae' +
        'ffective = :etaeffective, transportcost = :transportcost, contai' +
        'nerseals = :containerseals, masternotes = :masternotes, awb_type' +
        ' = :awb_type, order_id = :order_id, customs_doc_type = :customs_' +
        'doc_type, palletcost = :palletcost, year_number = :year_number, ' +
        'field19a = :field19a, branchlog = :branchlog, deleted = :deleted'
      'WHERE'
      '  id = :Old_id')
    SQLLock.Strings = (
      'SELECT * FROM logistic.awb'
      'WHERE'
      '  id = :Old_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT year, office_id, id, code, db_schema_id, field1a, field1b' +
        ', field1c, cin, field2, field21, field22, field23, field3, field' +
        '31, field32, field33, field4a, field4b, field4c, field4c2, field' +
        '4c3, field5, field6, field7, field8, field8a, field8b, field8c, ' +
        'field8d, field8c1, field8d1, field8e, field8f, field8f1, field9,' +
        ' field10, field11, field12, field13, field14, field15, field16, ' +
        'field17, field28a, field28b, field29a, field29b, field30a, field' +
        '30b, field31a, field31b, field32a, field32b, field33a, field33b,' +
        ' field34, field35, field36, field37, field38, hi1, hi2, hi3, cod' +
        'other1, codother2, codother3, codother4, codother5, codother6, c' +
        'odother7, codother8, codother9, amountother9, amountother8, amou' +
        'ntother7, amountother6, amountother5, amountother4, amountother3' +
        ', amountother2, amountother1, fieldhead, partialmaster, partialm' +
        'asteryear, currency_id, awb_type_id, jguid, netamount, progressi' +
        've, mawbcosts, mawbothcosts, taxableweight, masterdate, estimate' +
        'flight, effectiveflight, etdestimate, etdeffective, etaestimate,' +
        ' etaeffective, transportcost, containerseals, masternotes, awb_t' +
        'ype, order_id, customs_doc_type, palletcost, year_number, field1' +
        '9a, branchlog, deleted FROM logistic.awb'
      'WHERE'
      '  id = :id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM logistic.awb'
      ''
      ') t')
    DataTypeMap = <
      item
        FieldName = 'search_index'
        FieldType = ftWideString
        FieldLength = 2048
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT a.*, '
      
        'field1b || '#39'-'#39' || system.stripstringsearch(field2, field21)  || ' +
        #39'-'#39' ||'
      
        'system.stripstringsearch(field32, field31) || '#39'-'#39' || system.stri' +
        'pstringsearch(field4c2, '#39#39') '
      'as search_index'
      'FROM logistic.awb a'
      'order by year desc, id desc')
    AfterOpen = qryAWBsAfterOpen
    OnCalcFields = qryAWBsCalcFields
    Left = 120
    Top = 152
    object qryAWBsyear: TWideStringField
      FieldName = 'year'
      Required = True
      Size = 4
    end
    object qryAWBsoffice_id: TIntegerField
      FieldName = 'office_id'
      Required = True
    end
    object qryAWBsid: TLargeintField
      FieldName = 'id'
      Required = True
    end
    object qryAWBscode: TWideStringField
      FieldName = 'code'
    end
    object qryAWBsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      Required = True
    end
    object qryAWBsfield1a: TWideStringField
      FieldName = 'field1a'
      Size = 3
    end
    object qryAWBsfield1b: TWideStringField
      FieldName = 'field1b'
      Size = 6
    end
    object qryAWBsfield1c: TWideStringField
      FieldName = 'field1c'
    end
    object qryAWBscin: TFloatField
      FieldName = 'cin'
    end
    object qryAWBsfield2: TWideStringField
      FieldName = 'field2'
      Size = 50
    end
    object qryAWBsfield21: TWideStringField
      FieldName = 'field21'
      Size = 35
    end
    object qryAWBsfield22: TWideStringField
      FieldName = 'field22'
      Size = 35
    end
    object qryAWBsfield23: TWideStringField
      FieldName = 'field23'
      Size = 35
    end
    object qryAWBsfield3: TWideStringField
      FieldName = 'field3'
      Size = 50
    end
    object qryAWBsfield31: TWideStringField
      FieldName = 'field31'
      Size = 35
    end
    object qryAWBsfield32: TWideStringField
      FieldName = 'field32'
      Size = 35
    end
    object qryAWBsfield33: TWideStringField
      FieldName = 'field33'
      Size = 35
    end
    object qryAWBsfield4a: TWideStringField
      FieldName = 'field4a'
      Size = 50
    end
    object qryAWBsfield4b: TWideStringField
      FieldName = 'field4b'
      Size = 15
    end
    object qryAWBsfield4c: TWideStringField
      FieldName = 'field4c'
    end
    object qryAWBsfield4c2: TWideStringField
      FieldName = 'field4c2'
      Size = 200
    end
    object qryAWBsfield4c3: TWideStringField
      FieldName = 'field4c3'
    end
    object qryAWBsfield5: TWideStringField
      FieldName = 'field5'
      Size = 6
    end
    object qryAWBsfield6: TWideMemoField
      FieldName = 'field6'
      BlobType = ftWideMemo
    end
    object qryAWBsfield7: TWideMemoField
      FieldName = 'field7'
      BlobType = ftWideMemo
    end
    object qryAWBsfield8: TWideStringField
      FieldName = 'field8'
      Size = 6
    end
    object qryAWBsfield8a: TWideStringField
      FieldName = 'field8a'
      Size = 6
    end
    object qryAWBsfield8b: TWideStringField
      FieldName = 'field8b'
      Size = 6
    end
    object qryAWBsfield8c: TWideStringField
      FieldName = 'field8c'
      Size = 6
    end
    object qryAWBsfield8d: TWideStringField
      FieldName = 'field8d'
      Size = 6
    end
    object qryAWBsfield8c1: TWideStringField
      FieldName = 'field8c1'
      Size = 6
    end
    object qryAWBsfield8d1: TWideStringField
      FieldName = 'field8d1'
      Size = 6
    end
    object qryAWBsfield8e: TWideStringField
      FieldName = 'field8e'
      Size = 6
    end
    object qryAWBsfield8f: TWideStringField
      FieldName = 'field8f'
    end
    object qryAWBsfield8f1: TDateTimeField
      FieldName = 'field8f1'
    end
    object qryAWBsfield9: TWideStringField
      FieldName = 'field9'
      Size = 16
    end
    object qryAWBsfield10: TWideStringField
      FieldName = 'field10'
      Size = 1
    end
    object qryAWBsfield11: TWideStringField
      FieldName = 'field11'
      Size = 3
    end
    object qryAWBsfield12: TWideStringField
      FieldName = 'field12'
      Size = 1
    end
    object qryAWBsfield13: TWideStringField
      FieldName = 'field13'
      Size = 1
    end
    object qryAWBsfield14: TWideStringField
      FieldName = 'field14'
      Size = 1
    end
    object qryAWBsfield15: TWideStringField
      FieldName = 'field15'
      Size = 3
    end
    object qryAWBsfield16: TWideStringField
      FieldName = 'field16'
      Size = 3
    end
    object qryAWBsfield17: TWideStringField
      FieldName = 'field17'
      Size = 10
    end
    object qryAWBsfield28a: TFloatField
      FieldName = 'field28a'
    end
    object qryAWBsfield28b: TFloatField
      FieldName = 'field28b'
    end
    object qryAWBsfield29a: TFloatField
      FieldName = 'field29a'
    end
    object qryAWBsfield29b: TFloatField
      FieldName = 'field29b'
    end
    object qryAWBsfield30a: TFloatField
      FieldName = 'field30a'
    end
    object qryAWBsfield30b: TFloatField
      FieldName = 'field30b'
    end
    object qryAWBsfield31a: TFloatField
      FieldName = 'field31a'
    end
    object qryAWBsfield31b: TFloatField
      FieldName = 'field31b'
    end
    object qryAWBsfield32a: TFloatField
      FieldName = 'field32a'
    end
    object qryAWBsfield32b: TFloatField
      FieldName = 'field32b'
    end
    object qryAWBsfield33a: TFloatField
      FieldName = 'field33a'
    end
    object qryAWBsfield33b: TFloatField
      FieldName = 'field33b'
    end
    object qryAWBsfield34: TWideStringField
      FieldName = 'field34'
      Size = 30
    end
    object qryAWBsfield35: TWideStringField
      FieldName = 'field35'
      Size = 30
    end
    object qryAWBsfield36: TWideStringField
      FieldName = 'field36'
      Size = 36
    end
    object qryAWBsfield37: TWideStringField
      FieldName = 'field37'
      Size = 255
    end
    object qryAWBsfield38: TWideStringField
      FieldName = 'field38'
      Size = 255
    end
    object qryAWBshi1: TWideStringField
      FieldName = 'hi1'
      Size = 255
    end
    object qryAWBshi2: TWideStringField
      FieldName = 'hi2'
      Size = 255
    end
    object qryAWBshi3: TWideStringField
      FieldName = 'hi3'
      Size = 255
    end
    object qryAWBscodother1: TWideStringField
      FieldName = 'codother1'
      FixedChar = True
      Size = 3
    end
    object qryAWBscodother2: TWideStringField
      FieldName = 'codother2'
      FixedChar = True
      Size = 3
    end
    object qryAWBscodother3: TWideStringField
      FieldName = 'codother3'
      FixedChar = True
      Size = 3
    end
    object qryAWBscodother4: TWideStringField
      FieldName = 'codother4'
      FixedChar = True
      Size = 3
    end
    object qryAWBscodother5: TWideStringField
      FieldName = 'codother5'
      FixedChar = True
      Size = 3
    end
    object qryAWBscodother6: TWideStringField
      FieldName = 'codother6'
      FixedChar = True
      Size = 3
    end
    object qryAWBscodother7: TWideStringField
      FieldName = 'codother7'
      FixedChar = True
      Size = 3
    end
    object qryAWBscodother8: TWideStringField
      FieldName = 'codother8'
      FixedChar = True
      Size = 3
    end
    object qryAWBscodother9: TWideStringField
      FieldName = 'codother9'
      FixedChar = True
      Size = 3
    end
    object qryAWBsamountother9: TFloatField
      FieldName = 'amountother9'
    end
    object qryAWBsamountother8: TFloatField
      FieldName = 'amountother8'
    end
    object qryAWBsamountother7: TFloatField
      FieldName = 'amountother7'
    end
    object qryAWBsamountother6: TFloatField
      FieldName = 'amountother6'
    end
    object qryAWBsamountother5: TFloatField
      FieldName = 'amountother5'
    end
    object qryAWBsamountother4: TFloatField
      FieldName = 'amountother4'
    end
    object qryAWBsamountother3: TFloatField
      FieldName = 'amountother3'
    end
    object qryAWBsamountother2: TFloatField
      FieldName = 'amountother2'
    end
    object qryAWBsamountother1: TFloatField
      FieldName = 'amountother1'
    end
    object qryAWBsfieldhead: TWideStringField
      FieldName = 'fieldhead'
      Size = 50
    end
    object qryAWBspartialmaster: TIntegerField
      FieldName = 'partialmaster'
    end
    object qryAWBspartialmasteryear: TWideStringField
      FieldName = 'partialmasteryear'
      FixedChar = True
      Size = 4
    end
    object qryAWBscurrency_id: TSmallintField
      FieldName = 'currency_id'
    end
    object qryAWBsawb_type_id: TSmallintField
      FieldName = 'awb_type_id'
    end
    object qryAWBsjguid: TGuidField
      FieldName = 'jguid'
      Required = True
      Size = 38
    end
    object qryAWBsnetamount: TFloatField
      FieldName = 'netamount'
    end
    object qryAWBsprogressive: TFloatField
      FieldName = 'progressive'
    end
    object qryAWBsmawbcosts: TFloatField
      FieldName = 'mawbcosts'
    end
    object qryAWBsmawbothcosts: TFloatField
      FieldName = 'mawbothcosts'
    end
    object qryAWBstaxableweight: TFloatField
      FieldName = 'taxableweight'
    end
    object qryAWBsmasterdate: TDateTimeField
      FieldName = 'masterdate'
    end
    object qryAWBsestimateflight: TWideStringField
      FieldName = 'estimateflight'
      Size = 50
    end
    object qryAWBseffectiveflight: TWideStringField
      FieldName = 'effectiveflight'
      Size = 50
    end
    object qryAWBsetdestimate: TDateTimeField
      FieldName = 'etdestimate'
    end
    object qryAWBsetdeffective: TDateTimeField
      FieldName = 'etdeffective'
    end
    object qryAWBsetaestimate: TDateTimeField
      FieldName = 'etaestimate'
    end
    object qryAWBsetaeffective: TDateTimeField
      FieldName = 'etaeffective'
    end
    object qryAWBstransportcost: TFloatField
      FieldName = 'transportcost'
    end
    object qryAWBscontainerseals: TWideStringField
      FieldName = 'containerseals'
      Size = 50
    end
    object qryAWBsmasternotes: TWideStringField
      FieldName = 'masternotes'
      Size = 250
    end
    object qryAWBsawb_type: TWideStringField
      FieldName = 'awb_type'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryAWBsorder_id: TLargeintField
      FieldName = 'order_id'
      Required = True
    end
    object qryAWBscustoms_doc_type: TWideStringField
      FieldName = 'customs_doc_type'
      Size = 6
    end
    object qryAWBspalletcost: TFloatField
      FieldName = 'palletcost'
    end
    object qryAWBsyear_number: TSmallintField
      FieldName = 'year_number'
    end
    object qryAWBsfield19a: TWideStringField
      FieldName = 'field19a'
      Size = 50
    end
    object qryAWBsbranchlog: TWideStringField
      FieldName = 'branchlog'
      FixedChar = True
      Size = 3
    end
    object qryAWBsdeleted: TBooleanField
      FieldName = 'deleted'
      Required = True
    end
    object qryAWBscalc_field2: TWideStringField
      FieldKind = fkCalculated
      FieldName = 'calc_field2'
      Size = 2024
      Calculated = True
    end
  end
  object qryAWBRows: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO logistic.awb_rows'
      
        '  (id, awb_id, row_pos, field19a, field20a, field21, field22, fi' +
        'eld23, field24, field25, field26a, field27, jguid, db_schema_id,' +
        ' deleted)'
      'VALUES'
      
        '  (:id, :awb_id, :row_pos, :field19a, :field20a, :field21, :fiel' +
        'd22, :field23, :field24, :field25, :field26a, :field27, :jguid, ' +
        ':db_schema_id, :deleted)')
    SQLDelete.Strings = (
      'DELETE FROM logistic.awb_rows'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE logistic.awb_rows'
      'SET'
      
        '  id = :id, awb_id = :awb_id, row_pos = :row_pos, field19a = :fi' +
        'eld19a, field20a = :field20a, field21 = :field21, field22 = :fie' +
        'ld22, field23 = :field23, field24 = :field24, field25 = :field25' +
        ', field26a = :field26a, field27 = :field27, jguid = :jguid, db_s' +
        'chema_id = :db_schema_id, deleted = :deleted'
      'WHERE'
      '  id = :Old_id')
    SQLLock.Strings = (
      'SELECT * FROM logistic.awb_rows'
      'WHERE'
      '  id = :Old_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id, awb_id, row_pos, field19a, field20a, field21, field22' +
        ', field23, field24, field25, field26a, field27, jguid, db_schema' +
        '_id, deleted FROM logistic.awb_rows'
      'WHERE'
      '  id = :id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM logistic.awb_rows'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT * FROM logistic.awb_rows where awb_id = :id'
      'order by row_pos')
    Left = 72
    Top = 224
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id'
        ParamType = ptInput
        Value = 14054
      end>
    object qryAWBRowsid: TLargeintField
      FieldName = 'id'
      Required = True
    end
    object qryAWBRowsawb_id: TLargeintField
      FieldName = 'awb_id'
      Required = True
    end
    object qryAWBRowsrow_pos: TSmallintField
      FieldName = 'row_pos'
      Required = True
    end
    object qryAWBRowsfield19a: TIntegerField
      FieldName = 'field19a'
    end
    object qryAWBRowsfield20a: TFloatField
      FieldName = 'field20a'
    end
    object qryAWBRowsfield21: TWideStringField
      FieldName = 'field21'
      Size = 1
    end
    object qryAWBRowsfield22: TWideStringField
      FieldName = 'field22'
      Size = 1
    end
    object qryAWBRowsfield23: TWideStringField
      FieldName = 'field23'
      Size = 10
    end
    object qryAWBRowsfield24: TCurrencyField
      FieldName = 'field24'
    end
    object qryAWBRowsfield25: TCurrencyField
      FieldName = 'field25'
    end
    object qryAWBRowsfield26a: TCurrencyField
      FieldName = 'field26a'
    end
    object qryAWBRowsfield27: TWideStringField
      FieldName = 'field27'
      Size = 30
    end
    object qryAWBRowsjguid: TGuidField
      FieldName = 'jguid'
      Required = True
      Size = 38
    end
    object qryAWBRowsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      Required = True
    end
    object qryAWBRowsdeleted: TBooleanField
      FieldName = 'deleted'
      Required = True
    end
  end
  object qryLkpAWBCodes: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO logistic.awb_codes'
      '  (code, type, amount, description, house, jguid)'
      'VALUES'
      '  (:code, :type, :amount, :description, :house, :jguid)')
    SQLDelete.Strings = (
      'DELETE FROM logistic.awb_codes'
      'WHERE'
      '  code = :Old_code')
    SQLUpdate.Strings = (
      'UPDATE logistic.awb_codes'
      'SET'
      
        '  code = :code, type = :type, amount = :amount, description = :d' +
        'escription, house = :house, jguid = :jguid'
      'WHERE'
      '  code = :Old_code')
    SQLLock.Strings = (
      'SELECT * FROM logistic.awb_codes'
      'WHERE'
      '  code = :Old_code'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT code, type, amount, description, house, jguid FROM logist' +
        'ic.awb_codes'
      'WHERE'
      '  code = :code')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM logistic.awb_codes'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT code, type, amount, description, house, jguid'
      #9'FROM logistic.awb_codes;')
    Left = 360
    Top = 152
    object qryLkpAWBCodescode: TWideStringField
      FieldName = 'code'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qryLkpAWBCodestype: TWideStringField
      FieldName = 'type'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryLkpAWBCodesamount: TFloatField
      FieldName = 'amount'
    end
    object qryLkpAWBCodesdescription: TWideStringField
      FieldName = 'description'
    end
    object qryLkpAWBCodeshouse: TBooleanField
      FieldName = 'house'
    end
    object qryLkpAWBCodesjguid: TGuidField
      FieldName = 'jguid'
      Size = 38
    end
  end
  object vtAWBCodes: TVirtualTable
    FieldDefs = <
      item
        Name = 'code'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 3
      end
      item
        Name = 'type'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'amount'
        DataType = ftFloat
      end
      item
        Name = 'description'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'house'
        DataType = ftBoolean
      end
      item
        Name = 'jguid'
        DataType = ftGuid
        Size = 38
      end>
    Left = 488
    Top = 184
    Data = {
      040006000400636F646518000300000000000400747970651800010000000000
      0600616D6F756E7406000000000000000B006465736372697074696F6E180014
      00000000000500686F757365050000000000000005006A677569642300260000
      00000000001E0000000600000041004C00590002000000430000000000000000
      00020000000100290000007B65353966356462622D333638342D343439312D61
      6566332D6563666364333335326630647D000000060000004100530053000200
      000041000000000000000000020000000100290000007B34336239653065342D
      656333652D343439372D623466372D3135316462366436363330367D00000006
      0000004100570042000200000041000000000000000000020000000100290000
      007B39623630336331622D666337662D343538642D613762662D366465356139
      3839363038377D00000006000000420048004300020000004300000000000000
      0000020000000100290000007B31346662633639362D626336312D346163632D
      613038612D3230306538656261313063667D0000000600000043004100460002
      00000041000000000000000000020000000100290000007B3935313038613037
      2D303833362D346239642D393965342D6366306236356162613064657D000000
      0400000043004300020000004300000000000000000002000000010029000000
      7B66633164623430362D393765622D343930312D393165652D63333961623331
      39626239377D0000000600000043004300410002000000430000000000000000
      00020000000100290000007B33616533633431382D663036322D343837322D38
      6163652D3665383735643234306532647D000000060000004300490054000200
      000041000000000000000000020000000100290000007B32633465623961332D
      343130642D343335342D383530352D3839336631386139653139397D00000006
      00000043004F0055000200000041000000000000000000020000000100290000
      007B61373162633233342D663131322D343464652D383230622D666438613233
      3135626266367D00000006000000430055005300020000004100000000000000
      0000020000000100290000007B30363361343933612D396339662D343235622D
      383365632D6335326464353238663963617D0000000600000044004700520002
      00000043000000000000000000020000000100290000007B3439653536366263
      2D343162362D343336382D613165612D3965303661313536376134617D000000
      0600000044004F00430002000000430000000000000000000200000001002900
      00007B63326266366665352D653836342D343165372D396665332D6535393163
      303132656532347D000000060000004500580057000200000041000000000000
      000000020000000100290000007B38663532373335322D313432632D34353361
      2D383130332D3739333765613665323735647D0000000600000046004F004200
      0200000041000000000000000000020000000100290000007B39353037356162
      352D633963612D343536332D396236622D3132363830376333353039337D0000
      0006000000460055004500020000004300000000000000000002000000010029
      0000007B65363466356438612D316333352D346162662D396338642D63356131
      38346238346534617D00000006000000460055004D0002000000410000000000
      00000000020000000100290000007B34323536386437352D376163392D343338
      622D616663312D6535633665336237333531387D00000006000000480044004C
      000200000041000000000000000000020000000100290000007B393831303364
      62652D333530632D346634632D613062352D3334303762383162336461387D00
      0000060000004900410054000200000043000000000000000000020000000100
      290000007B62323638303635352D326534642D343737362D386266342D333535
      6537623735376564317D0000000600000049004E005300020000004300000000
      0000000000020000000100290000007B65333266356464662D303436332D3463
      38312D386439302D6438646638366237656635627D0000000600000050002F00
      55000200000041000000000000000000020000000100290000007B6663373763
      6432352D613764652D343538352D393864352D6530633735386666643162337D
      0000000600000050004200410002000000410000000000000000000200000001
      00290000007B38653233613236632D316135322D343339642D613937662D3464
      313836313261343964627D000000060000005000420046000200000041000000
      000000000000020000000100290000007B35393666363732332D363731342D34
      3437322D386336662D3265353839666562313833327D00000006000000500049
      0043000200000041000000000000000000020000000100290000007B38653861
      623331372D633565622D343661352D613464632D626232363233343661653064
      7D00000006000000530041004600020000004100000000000000000002000000
      0100290000007B39656631613635622D373932362D343535362D613536642D61
      36623631376330393931617D0000000600000053004300540002000000430000
      00000000000000020000000100290000007B36313135336630322D333236622D
      343638372D616435392D3539316236303266366430337D000000060000005300
      450043000200000043000000000000000000020000000100290000007B306264
      33636561302D656431352D343335632D613339322D3836383536626233663963
      667D000000060000005300460045000200000041000000000000000000020000
      000100290000007B36383431663934322D333631312D346334662D383362352D
      3639323265313935613839377D00000006000000560055004E00020000004100
      0000000000000000020000000100290000007B66303766623432612D66333338
      2D343235392D626534652D3134316232616532346361337D0000000600000058
      00520059000200000043000000000000000000020000000100290000007B3031
      3838613730622D313862322D343562392D626337382D65633764373931323563
      62397D0000000600000050004F00530002000000430000000000000000000200
      00000000290000007B30393237313431612D626365372D346562652D62313966
      2D3162333533633164646265327D000000}
  end
  object qryAWBSurcharges: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO logistic.awb_surcharges'
      '  (awb_id, jguid, code, position, amount)'
      'VALUES'
      '  (:awb_id, :jguid, :code, :position, :amount)')
    SQLDelete.Strings = (
      'DELETE FROM logistic.awb_surcharges'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLUpdate.Strings = (
      'UPDATE logistic.awb_surcharges'
      'SET'
      
        '  awb_id = :awb_id, jguid = :jguid, code = :code, position = :po' +
        'sition, amount = :amount'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLLock.Strings = (
      'SELECT * FROM logistic.awb_surcharges'
      'WHERE'
      '  jguid = :Old_jguid'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT awb_id, jguid, code, position, amount FROM logistic.awb_s' +
        'urcharges'
      'WHERE'
      '  jguid = :jguid')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM logistic.awb_surcharges'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT * FROM logistic.awb_surcharges where awb_id = :id'
      'order by position')
    Left = 184
    Top = 224
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id'
        ParamType = ptInput
        Value = 14054
      end>
    object qryAWBSurchargesawb_id: TLargeintField
      FieldName = 'awb_id'
      Required = True
    end
    object qryAWBSurchargesjguid: TGuidField
      FieldName = 'jguid'
      Required = True
      Size = 38
    end
    object qryAWBSurchargescode: TWideStringField
      FieldName = 'code'
      Required = True
      Size = 4
    end
    object qryAWBSurchargesposition: TSmallintField
      FieldName = 'position'
      Required = True
    end
    object qryAWBSurchargesamount: TCurrencyField
      FieldName = 'amount'
      Required = True
    end
    object qryAWBSurchargeslkpAWBSurcharges: TStringField
      FieldKind = fkLookup
      FieldName = 'lkpAWBSurcharges'
      LookupDataSet = vtAWBCodes
      LookupKeyFields = 'code'
      LookupResultField = 'code'
      KeyFields = 'code'
      Size = 4
      Lookup = True
    end
  end
  object vtAWBSurcharges: TVirtualTable
    FieldDefs = <
      item
        Name = 'awb_id'
        Attributes = [faRequired]
        DataType = ftLargeint
      end
      item
        Name = 'jguid'
        Attributes = [faRequired]
        DataType = ftGuid
        Size = 38
      end
      item
        Name = 'code'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 4
      end
      item
        Name = 'position'
        Attributes = [faRequired]
        DataType = ftSmallint
      end
      item
        Name = 'amount'
        Attributes = [faRequired]
        DataType = ftCurrency
      end
      item
        Name = 'lkpAWBSurcharges'
        DataType = ftString
        Size = 4
      end>
    Left = 488
    Top = 248
    Data = {
      0400060006006177625F6964190000000000000005006A677569642300260000
      0000000400636F646518000400000000000800706F736974696F6E0200000000
      0000000600616D6F756E74070000000000000010006C6B704157425375726368
      61726765730100040000000000000000000000}
    object vtAWBSurchargesawb_id: TLargeintField
      FieldName = 'awb_id'
      Required = True
    end
    object vtAWBSurchargesjguid: TGuidField
      FieldName = 'jguid'
      Required = True
      Size = 38
    end
    object vtAWBSurchargescode: TWideStringField
      FieldName = 'code'
      Required = True
      Size = 4
    end
    object vtAWBSurchargesposition: TSmallintField
      FieldName = 'position'
      Required = True
    end
    object vtAWBSurchargesamount: TCurrencyField
      FieldName = 'amount'
      Required = True
    end
    object vtAWBSurchargeslkpAWBSurcharges: TStringField
      FieldKind = fkLookup
      FieldName = 'lkpAWBSurcharges'
      LookupDataSet = vtAWBCodes
      LookupKeyFields = 'code'
      LookupResultField = 'code'
      KeyFields = 'code'
      Size = 4
      Lookup = True
    end
  end
  object dsVtAWBs: TDataSource
    Left = 360
    Top = 96
  end
end
