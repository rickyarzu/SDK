inherited dmPgBooks: TdmPgBooks
  inherited PgErgoConnection: TJanuaUniConnection
    Top = 56
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  inherited tbUserSessionRoles: TUniTable
    Top = 224
  end
  inherited dsUserSession: TDataSource
    Top = 168
  end
  inherited qryUserSession: TUniQuery
    Top = 112
  end
  inherited qryUserProfile: TUniQuery
    Top = 296
  end
  inherited qryUser: TUniQuery
    Left = 200
    Top = 184
  end
  object qryPublicBooksDef: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO books.definitions'
      
        '  (book_def_id, title, subtitle, cover_type_id, editor_id, autho' +
        'r_id, collection_id, language_id, isbn13, isbn10, publish_year, ' +
        'release_date, description, db_schema_id, main_image_id)'
      'VALUES'
      
        '  (:book_def_id, :title, :subtitle, :cover_type_id, :editor_id, ' +
        ':author_id, :collection_id, :language_id, :isbn13, :isbn10, :pub' +
        'lish_year, :release_date, :description, :db_schema_id, :main_ima' +
        'ge_id)')
    SQLDelete.Strings = (
      'DELETE FROM books.definitions'
      'WHERE'
      '  book_def_id = :Old_book_def_id')
    SQLUpdate.Strings = (
      'UPDATE books.definitions'
      'SET'
      
        '  book_def_id = :book_def_id, title = :title, subtitle = :subtit' +
        'le, cover_type_id = :cover_type_id, editor_id = :editor_id, auth' +
        'or_id = :author_id, collection_id = :collection_id, language_id ' +
        '= :language_id, isbn13 = :isbn13, isbn10 = :isbn10, publish_year' +
        ' = :publish_year, release_date = :release_date, description = :d' +
        'escription, db_schema_id = :db_schema_id, main_image_id = :main_' +
        'image_id'
      'WHERE'
      '  book_def_id = :Old_book_def_id')
    SQLLock.Strings = (
      'SELECT * FROM books.definitions'
      'WHERE'
      '  book_def_id = :Old_book_def_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT book_def_id, title, subtitle, cover_type_id, editor_id, a' +
        'uthor_id, collection_id, language_id, isbn13, isbn10, publish_ye' +
        'ar, release_date, description, db_schema_id, main_image_id FROM ' +
        'books.definitions'
      'WHERE'
      '  book_def_id = :book_def_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM books.definitions'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT *'
      '  FROM books.definitions')
    OnNewRecord = qryPublicBooksDefNewRecord
    Left = 200
    Top = 72
    object qryPublicBooksDefbook_def_id: TIntegerField
      FieldName = 'book_def_id'
      Required = True
    end
    object qryPublicBooksDeftitle: TWideStringField
      FieldName = 'title'
      Size = 512
    end
    object qryPublicBooksDefsubtitle: TWideStringField
      FieldName = 'subtitle'
      Size = 1024
    end
    object qryPublicBooksDefcover_type_id: TSmallintField
      FieldName = 'cover_type_id'
    end
    object qryPublicBooksDefeditor_id: TIntegerField
      FieldName = 'editor_id'
    end
    object qryPublicBooksDefauthor_id: TIntegerField
      FieldName = 'author_id'
    end
    object qryPublicBooksDefcollection_id: TSmallintField
      FieldName = 'collection_id'
    end
    object qryPublicBooksDeflanguage_id: TSmallintField
      FieldName = 'language_id'
    end
    object qryPublicBooksDefisbn13: TWideStringField
      FieldName = 'isbn13'
      FixedChar = True
      Size = 13
    end
    object qryPublicBooksDefisbn10: TWideStringField
      FieldName = 'isbn10'
      FixedChar = True
      Size = 10
    end
    object qryPublicBooksDefpublish_year: TSmallintField
      FieldName = 'publish_year'
    end
    object qryPublicBooksDefdescription: TWideMemoField
      FieldName = 'description'
      BlobType = ftWideMemo
    end
    object qryPublicBooksDefdb_schema_id: TIntegerField
      DefaultExpression = '0'
      FieldName = 'db_schema_id'
    end
    object qryPublicBooksDefmain_image_id: TLargeintField
      FieldName = 'main_image_id'
    end
  end
  object qryBooksOffers: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO books.offers'
      
        '  (offer_id, valid_since, valid_until, used, conditions, image_i' +
        'd, advertiser_id, db_schema_id, book_def_id, uni_id)'
      'VALUES'
      
        '  (:offer_id, :valid_since, :valid_until, :used, :conditions, :i' +
        'mage_id, :advertiser_id, :db_schema_id, :book_def_id, :uni_id)')
    SQLDelete.Strings = (
      'DELETE FROM books.offers'
      'WHERE'
      '  offer_id = :Old_offer_id')
    SQLUpdate.Strings = (
      'UPDATE books.offers'
      'SET'
      
        '  offer_id = :offer_id, valid_since = :valid_since, valid_until ' +
        '= :valid_until, used = :used, conditions = :conditions, image_id' +
        ' = :image_id, advertiser_id = :advertiser_id, db_schema_id = :db' +
        '_schema_id, book_def_id = :book_def_id, uni_id = :uni_id'
      'WHERE'
      '  offer_id = :Old_offer_id')
    SQLLock.Strings = (
      'SELECT * FROM books.offers'
      'WHERE'
      '  offer_id = :Old_offer_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT offer_id, valid_since, valid_until, used, conditions, ima' +
        'ge_id, advertiser_id, db_schema_id, book_def_id, uni_id FROM boo' +
        'ks.offers'
      'WHERE'
      '  offer_id = :offer_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM books.offers'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT o.*, '
      '       title, subtitle, cover_type_id, editor_id, author_id, '
      
        '       collection_id, language_id, isbn13, isbn10, publish_year,' +
        ' release_date, '
      '       description'
      '  FROM books.offers o, books.definitions d'
      '  where d.book_def_id = o.book_def_id')
    OnNewRecord = qryPublicBooksDefNewRecord
    Left = 200
    Top = 128
    object qryBooksOffersoffer_id: TLargeintField
      FieldName = 'offer_id'
    end
    object qryBooksOffersused: TBooleanField
      FieldName = 'used'
    end
    object qryBooksOffersconditions: TSmallintField
      FieldName = 'conditions'
    end
    object qryBooksOffersimage_id: TLargeintField
      FieldName = 'image_id'
    end
    object qryBooksOffersadvertiser_id: TIntegerField
      FieldName = 'advertiser_id'
    end
    object qryBooksOffersdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryBooksOffersbook_def_id: TIntegerField
      FieldName = 'book_def_id'
    end
    object qryBooksOffersuni_id: TSmallintField
      FieldName = 'uni_id'
    end
    object qryBooksOfferstitle: TWideStringField
      FieldName = 'title'
      Size = 512
    end
    object qryBooksOfferssubtitle: TWideStringField
      FieldName = 'subtitle'
      Size = 1024
    end
    object qryBooksOfferscover_type_id: TSmallintField
      FieldName = 'cover_type_id'
    end
    object qryBooksOfferseditor_id: TIntegerField
      FieldName = 'editor_id'
    end
    object qryBooksOffersauthor_id: TIntegerField
      FieldName = 'author_id'
    end
    object qryBooksOfferscollection_id: TSmallintField
      FieldName = 'collection_id'
    end
    object qryBooksOfferslanguage_id: TSmallintField
      FieldName = 'language_id'
    end
    object qryBooksOffersisbn13: TWideStringField
      FieldName = 'isbn13'
      FixedChar = True
      Size = 13
    end
    object qryBooksOffersisbn10: TWideStringField
      FieldName = 'isbn10'
      FixedChar = True
      Size = 10
    end
    object qryBooksOfferspublish_year: TSmallintField
      FieldName = 'publish_year'
    end
    object qryBooksOffersdescription: TWideMemoField
      FieldName = 'description'
      BlobType = ftWideMemo
    end
  end
end
