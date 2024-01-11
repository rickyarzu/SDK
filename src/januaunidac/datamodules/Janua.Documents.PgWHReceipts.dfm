inherited dmJanuaPgWHReceiptsStorage: TdmJanuaPgWHReceiptsStorage
  PixelsPerInch = 96
  inherited PgErgoConnection: TJanuaUniConnection
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  inherited qryDocHeads: TUniQuery
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
      '(doc_year >= 2019) '
      'and '
      '(doc_date is not null) '
      'and '
      
        '(:test or exists (select 1 from documents.rows r where r.doc_id ' +
        '= h.id))'
      'order by '
      'doc_year desc, doc_date desc, lpad(doc_number, 15, '#39'0'#39') desc'
      '')
  end
  inherited qryDocRows: TUniQuery
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
        Value = 2
      end>
  end
end
