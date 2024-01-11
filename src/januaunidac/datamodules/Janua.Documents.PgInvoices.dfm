inherited dmPgInvoicesStorage: TdmPgInvoicesStorage
  inherited PgErgoConnection: TJanuaUniConnection
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  inherited qryDocHeads: TUniQuery
    SQL.Strings = (
      
        'select h.*, h.jguid::character varying as index_guid, a.an_last_' +
        'name as customer_name'
      ' from documents.heads_view h inner join anagraph.anagraphs a '
      'on a.anagraph_id = h.anagraph_id '
      'where'
      '(h.id = :p_doc_id or :p_doc_id = 0)'
      'and'
      '(h.db_schema_id = :p_db_schema_id or :p_db_schema_id = 0)'
      'and'
      '(h.search_index like :p_search_name or :p_search_name = '#39'%'#39')'
      'and'
      '(h.type_id = :p_group_id or :p_group_id = 0)'
      'and '
      
        '(:test or exists (select 1 from documents.rows r where r.doc_id ' +
        '= h.id))'
      'order by '
      
        'h.doc_year desc, h.doc_date desc, lpad(h.doc_number, 15, '#39'0'#39') de' +
        'sc')
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
        DataType = ftUnknown
        Name = 'test'
        Value = nil
      end>
    object qryDocHeadscustomer_name: TWideStringField
      FieldName = 'customer_name'
      ReadOnly = True
      Required = True
      Size = 128
    end
  end
  inherited qryDocRows: TUniQuery
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id'
        ParamType = ptInput
        Value = 118514
      end
      item
        DataType = ftSmallint
        Name = 'p_type_id'
        ParamType = ptInput
        Value = 0
      end>
  end
end
