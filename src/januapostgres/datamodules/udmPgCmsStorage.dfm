inherited dmPgCmsStorage: TdmPgCmsStorage
  OldCreateOrder = True
  Height = 884
  Width = 955
  inherited PgErgoConnection: TPgConnection
    Server = 'pg.januaservers.com'
    Database = 'lnd'
    Schema = 'public'
    Left = 80
    Top = 48
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  object main_arguments: TPgQuery
    KeyFields = 'main_argument_id'
    KeySequence = 'cms.main_arguments_seq'
    SQLInsert.Strings = (
      'INSERT INTO cms.main_arguments'
      
        '  (main_argument_id, main_argument_des, pos, db_schema_id, cmar_' +
        'jguid, cmar_deleted, ma_image_id)'
      'VALUES'
      
        '  (:main_argument_id, :main_argument_des, :pos, :db_schema_id, :' +
        'cmar_jguid, :cmar_deleted, :ma_image_id)')
    SQLDelete.Strings = (
      'DELETE FROM cms.main_arguments'
      'WHERE'
      '  main_argument_id = :Old_main_argument_id')
    SQLUpdate.Strings = (
      'UPDATE cms.main_arguments'
      'SET'
      
        '  main_argument_id = :main_argument_id, main_argument_des = :mai' +
        'n_argument_des, pos = :pos, db_schema_id = :db_schema_id, cmar_j' +
        'guid = :cmar_jguid, cmar_deleted = :cmar_deleted, ma_image_id = ' +
        ':ma_image_id'
      'WHERE'
      '  main_argument_id = :Old_main_argument_id')
    SQLRefresh.Strings = (
      
        'SELECT main_argument_id, main_argument_des, pos, db_schema_id, c' +
        'mar_jguid, cmar_deleted, ma_image_id FROM cms.main_arguments'
      'WHERE'
      '  main_argument_id = :main_argument_id')
    SQLLock.Strings = (
      'SELECT * FROM cms.main_arguments'
      'WHERE'
      '  main_argument_id = :Old_main_argument_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM cms.main_arguments'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from cms.main_arguments '
      'where  '
      '(main_argument_id = :main_argument_id or :main_argument_id = 0)'
      'and'
      '(cmar_jguid = :jguid or :jguid = '#39#39' or :jguid is null)'
      'and'
      '(db_schema_id = :db_schema_id)'
      'order by'
      'coalesce(pos::integer, main_argument_id::integer )'
      '')
    BeforeOpen = PgQueryBeforeOpen
    BeforePost = main_argumentsBeforePost
    OnNewRecord = main_argumentsNewRecord
    Left = 200
    Top = 32
    ParamData = <
      item
        DataType = ftInteger
        Name = 'main_argument_id'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = 'jguid'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'db_schema_id'
        ParamType = ptInput
        Value = 32
      end>
    object main_argumentsmain_argument_id: TSmallintField
      FieldName = 'main_argument_id'
    end
    object main_argumentsmain_argument_des: TWideStringField
      FieldName = 'main_argument_des'
      Required = True
      Size = 512
    end
    object main_argumentscmar_jguid: TWideStringField
      FieldName = 'cmar_jguid'
      Required = True
      Size = 40
    end
    object main_argumentscmar_deleted: TBooleanField
      FieldName = 'cmar_deleted'
    end
    object main_argumentspos: TSmallintField
      FieldName = 'pos'
    end
    object main_argumentsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object main_argumentsma_image_id: TLargeintField
      FieldName = 'ma_image_id'
    end
  end
  object dsMainArguments: TPgDataSource
    DataSet = main_arguments
    Left = 200
    Top = 88
  end
  object arguments: TPgQuery
    KeyFields = 'argument_id'
    KeySequence = 'cms.arguments_seq'
    SQLInsert.Strings = (
      'INSERT INTO cms.arguments'
      
        '  (main_argument_id, argument_id, argument_des, code, pos, db_sc' +
        'hema_id, carg_jguid, carg_deleted, league_id)'
      'VALUES'
      
        '  (:main_argument_id, :argument_id, :argument_des, :code, :pos, ' +
        ':db_schema_id, :carg_jguid, :carg_deleted, :league_id)')
    SQLDelete.Strings = (
      'DELETE FROM cms.arguments'
      'WHERE'
      '  argument_id = :Old_argument_id')
    SQLUpdate.Strings = (
      'UPDATE cms.arguments'
      'SET'
      
        '  main_argument_id = :main_argument_id, argument_id = :argument_' +
        'id, argument_des = :argument_des, code = :code, pos = :pos, db_s' +
        'chema_id = :db_schema_id, carg_jguid = :carg_jguid, carg_deleted' +
        ' = :carg_deleted, league_id = :league_id'
      'WHERE'
      '  argument_id = :Old_argument_id')
    SQLRefresh.Strings = (
      
        'SELECT main_argument_id, argument_id, argument_des, code, pos, d' +
        'b_schema_id, carg_jguid, carg_deleted, league_id FROM cms.argume' +
        'nts'
      'WHERE'
      '  argument_id = :argument_id')
    SQLLock.Strings = (
      'SELECT * FROM cms.arguments'
      'WHERE'
      '  argument_id = :Old_argument_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM cms.arguments'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from cms.arguments where '
      '   main_argument_id = :main_argument_id'
      '   order by'
      '     coalesce(pos::integer, argument_id::integer )')
    MasterFields = 'MAIN_ARGUMENT_ID'
    DetailFields = 'MAIN_ARGUMENT_ID'
    MasterSource = dsMainArguments
    BeforePost = argumentsBeforePost
    OnNewRecord = argumentsNewRecord
    Left = 200
    Top = 200
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'main_argument_id'
        ParamType = ptInput
        Value = nil
      end>
    object argumentsmain_argument_id: TSmallintField
      FieldName = 'main_argument_id'
      Required = True
    end
    object argumentsargument_id: TSmallintField
      FieldName = 'argument_id'
    end
    object argumentsargument_des: TWideStringField
      FieldName = 'argument_des'
      Size = 512
    end
    object argumentscode: TWideStringField
      FieldName = 'code'
      Size = 6
    end
    object argumentspos: TSmallintField
      FieldName = 'pos'
    end
    object argumentsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object argumentscarg_jguid: TWideStringField
      FieldName = 'carg_jguid'
      Required = True
      Size = 40
    end
    object argumentscarg_deleted: TBooleanField
      FieldName = 'carg_deleted'
    end
    object argumentsleague_id: TSmallintField
      FieldName = 'league_id'
    end
    object argumentslkpLeague: TStringField
      FieldKind = fkLookup
      FieldName = 'lkpLeague'
      LookupDataSet = qryLeagues
      LookupKeyFields = 'league_id'
      LookupResultField = 'league_name'
      KeyFields = 'league_id'
      Size = 128
      Lookup = True
    end
  end
  object dsArguments: TPgDataSource
    DataSet = arguments
    Left = 200
    Top = 256
  end
  object sub_arguments: TPgQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from cms.sub_arguments where '
      'argument_id = :argument_id')
    MasterFields = 'argument_id'
    DetailFields = 'argument_id'
    MasterSource = dsArguments
    Left = 200
    Top = 368
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'argument_id'
        ParamType = ptInput
        Value = nil
      end>
    object sub_argumentsargument_id: TSmallintField
      FieldName = 'argument_id'
      Required = True
    end
    object sub_argumentssub_argument_id: TSmallintField
      FieldName = 'sub_argument_id'
      Required = True
    end
    object sub_argumentssub_argument_des: TWideStringField
      FieldName = 'sub_argument_des'
      Required = True
      Size = 512
    end
  end
  object dsSubArguments: TPgDataSource
    DataSet = sub_arguments
    Left = 200
    Top = 432
  end
  object specifications: TPgQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from cms.specifications'
      ' where  sub_argument_id = :sub_argument_id')
    MasterFields = 'sub_argument_id'
    DetailFields = 'sub_argument_id'
    MasterSource = dsSubArguments
    Left = 200
    Top = 496
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'sub_argument_id'
        ParamType = ptInput
        Value = nil
      end>
    object specificationsspecification_id: TSmallintField
      FieldName = 'specification_id'
      Required = True
    end
    object specificationssub_argument_id: TSmallintField
      FieldName = 'sub_argument_id'
    end
    object specificationsspecification_des: TWideStringField
      FieldName = 'specification_des'
      Required = True
      Size = 128
    end
  end
  object qryUserArticle: TPgQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from cms.articles '
      'where (article_id = :article_id or :article_id = 0)'
      'and (author_id = :db_user_id)')
    MasterFields = 'db_user_id'
    DetailFields = 'author_id'
    Left = 552
    Top = 40
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'article_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'db_user_id'
        ParamType = ptInput
        Value = nil
      end>
    object qryUserArticlearticle_id: TLargeintField
      FieldName = 'article_id'
      Required = True
    end
    object qryUserArticletitle: TWideStringField
      FieldName = 'title'
      Required = True
      Size = 512
    end
    object qryUserArticleabstract: TWideStringField
      FieldName = 'abstract'
      Required = True
      Size = 4000
    end
    object qryUserArticleauthor_id: TIntegerField
      FieldName = 'author_id'
    end
    object qryUserArticletext: TWideMemoField
      FieldName = 'text'
      BlobType = ftWideMemo
    end
    object qryUserArticledatetime: TSQLTimeStampField
      FieldName = 'datetime'
    end
    object qryUserArticleexternal_link: TWideStringField
      FieldName = 'external_link'
      Size = 512
    end
    object qryUserArticleimage: TBlobField
      FieldName = 'image'
    end
    object qryUserArticleshorttext: TWideStringField
      FieldName = 'shorttext'
      Size = 4000
    end
    object qryUserArticlemain_argument_id: TSmallintField
      FieldName = 'main_argument_id'
      Required = True
    end
    object qryUserArticleargument_id: TSmallintField
      FieldName = 'argument_id'
    end
    object qryUserArticlesub_argument_id: TSmallintField
      FieldName = 'sub_argument_id'
      Required = True
    end
    object qryUserArticlespecification_id: TSmallintField
      FieldName = 'specification_id'
      Required = True
    end
    object qryUserArticlearticle_key: TWideStringField
      FieldName = 'article_key'
      Size = 64
    end
    object qryUserArticleimage_url: TWideStringField
      FieldName = 'image_url'
      Size = 1024
    end
    object qryUserArticlelanguage_id: TSmallintField
      FieldName = 'language_id'
    end
    object qryUserArticlefeed_id: TIntegerField
      FieldName = 'feed_id'
    end
    object qryUserArticledb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryUserArticlecrtc_jguid: TWideStringField
      FieldName = 'crtc_jguid'
      Required = True
      Size = 40
    end
    object qryUserArticlecrtc_deleted: TBooleanField
      FieldName = 'crtc_deleted'
    end
    object qryUserArticlemain_image_id: TLargeintField
      FieldName = 'main_image_id'
    end
    object qryUserArticlemain_attach_id: TLargeintField
      FieldName = 'main_attach_id'
    end
    object qryUserArticlethumb_image_id: TLargeintField
      FieldName = 'thumb_image_id'
    end
  end
  object scMainArgumentsInsert: TPgSQL
    Connection = PgErgoConnection
    SQL.Strings = (
      'INSERT INTO cms.main_arguments'
      
        '  (main_argument_id, main_argument_des, pos, db_schema_id, cmar_' +
        'jguid, cmar_deleted, ma_image_id)'
      'VALUES'
      
        '  (:main_argument_id, :main_argument_des, :pos, :db_schema_id, :' +
        'cmar_jguid, :cmar_deleted, :ma_image_id)'
      '')
    BeforeExecute = PgSqlBeforeExecute
    Left = 304
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'main_argument_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'main_argument_des'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'pos'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'db_schema_id'
        Value = nil
      end
      item
        DataType = ftString
        Name = 'cmar_jguid'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftBoolean
        Name = 'cmar_deleted'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ma_image_id'
        Value = nil
      end>
  end
  object scMainArgumentsDelete: TPgSQL
    Connection = PgErgoConnection
    SQL.Strings = (
      'DELETE FROM cms.main_arguments'
      'WHERE'
      '  cmar_jguid = :jguid')
    BeforeExecute = PgSqlBeforeExecute
    Left = 304
    Top = 64
    ParamData = <
      item
        DataType = ftString
        Name = 'jguid'
        ParamType = ptInput
        Value = nil
      end>
  end
  object scMainArgumentsUpdate: TPgSQL
    Connection = PgErgoConnection
    SQL.Strings = (
      'UPDATE cms.main_arguments'
      'SET'
      
        '  main_argument_id = :main_argument_id, main_argument_des = :mai' +
        'n_argument_des, '
      '  cmar_deleted = :cmar_deleted, pos = :pos'
      'WHERE'
      '  cmar_jguid = :jguid'
      ' ')
    BeforeExecute = PgSqlBeforeExecute
    Left = 304
    Top = 120
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'main_argument_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'main_argument_des'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftBoolean
        Name = 'cmar_deleted'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'pos'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'jguid'
        ParamType = ptInput
        Value = nil
      end>
  end
  object qryArticlesList: TPgQuery
    KeyFields = 'article_id'
    KeySequence = 'cms.articles_seq'
    SQLInsert.Strings = (
      'INSERT INTO cms.articles'
      
        '  (article_id, title, abstract, author_id, text, datetime, exter' +
        'nal_link, image, shorttext, main_argument_id, argument_id, sub_a' +
        'rgument_id, specification_id, article_key, image_url, language_i' +
        'd, feed_id, imagetext, attachment, hasimage, hasattach, db_schem' +
        'a_id, crtc_jguid, crtc_deleted, main_image_id, main_attach_id, t' +
        'humb_image_id, article, main_attach_zip_id, expiry_date, state)'
      'VALUES'
      
        '  (:article_id, :title, :abstract, :author_id, :text, :datetime,' +
        ' :external_link, :image, :shorttext, :main_argument_id, :argumen' +
        't_id, :sub_argument_id, :specification_id, :article_key, :image_' +
        'url, :language_id, :feed_id, :imagetext, :attachment, :hasimage,' +
        ' :hasattach, :db_schema_id, :crtc_jguid, :crtc_deleted, :main_im' +
        'age_id, :main_attach_id, :thumb_image_id, :article, :main_attach' +
        '_zip_id, :expiry_date, :state)')
    SQLDelete.Strings = (
      'DELETE FROM cms.articles'
      'WHERE'
      '  article_id = :Old_article_id')
    SQLUpdate.Strings = (
      'UPDATE cms.articles'
      'SET'
      
        '  article_id = :article_id, title = :title, abstract = :abstract' +
        ', author_id = :author_id, text = :text, datetime = :datetime, ex' +
        'ternal_link = :external_link, image = :image, shorttext = :short' +
        'text, main_argument_id = :main_argument_id, argument_id = :argum' +
        'ent_id, sub_argument_id = :sub_argument_id, specification_id = :' +
        'specification_id, article_key = :article_key, image_url = :image' +
        '_url, language_id = :language_id, feed_id = :feed_id, imagetext ' +
        '= :imagetext, attachment = :attachment, hasimage = :hasimage, ha' +
        'sattach = :hasattach, db_schema_id = :db_schema_id, crtc_jguid =' +
        ' :crtc_jguid, crtc_deleted = :crtc_deleted, main_image_id = :mai' +
        'n_image_id, main_attach_id = :main_attach_id, thumb_image_id = :' +
        'thumb_image_id, article = :article, main_attach_zip_id = :main_a' +
        'ttach_zip_id, expiry_date = :expiry_date, state = :state'
      'WHERE'
      '  article_id = :Old_article_id')
    SQLRefresh.Strings = (
      
        'SELECT article_id, title, abstract, author_id, text, datetime, e' +
        'xternal_link, image, shorttext, main_argument_id, argument_id, s' +
        'ub_argument_id, specification_id, article_key, image_url, langua' +
        'ge_id, feed_id, imagetext, attachment, hasimage, hasattach, db_s' +
        'chema_id, crtc_jguid, crtc_deleted, main_image_id, main_attach_i' +
        'd, thumb_image_id, article, main_attach_zip_id, expiry_date, sta' +
        'te FROM cms.articles'
      'WHERE'
      '  article_id = :article_id')
    SQLLock.Strings = (
      'SELECT * FROM cms.articles'
      'WHERE'
      '  article_id = :Old_article_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM cms.articles'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'SELECT a.article_id, a.title, a.abstract, a.author_id,  datetime' +
        ', external_link, image, shorttext, a.main_argument_id, a.argumen' +
        't_id, a.sub_argument_id, '
      
        '        a.specification_id, article_key, image_url, language_id,' +
        ' feed_id,  hasimage, hasattach, a.db_schema_id, crtc_jguid, crtc' +
        '_deleted, '
      
        #9#9'a.main_image_id, a.main_attach_id, thumb_image_id,  a.main_att' +
        'ach_zip_id, expiry_date, state'
      #9'FROM cms.articles a, cms.arguments m'
      'where '
      '( '
      '  upper(title) like upper('#39'%'#39' || :ricerca || '#39'%'#39') '
      '  or upper('#39'%'#39' || abstract || '#39'%'#39') like :ricerca '
      '  or :ricerca = '#39'%'#39
      ')'
      '--- ************ condizione di gruppo :'
      '/*'
      
        'la condizione di gruppo indica al sistema a quale gruppo fanno r' +
        'iferimento le notizie medico Scentifiche'
      
        'il gruppo indica la base di '#39'gruppo'#39' di ricerca.si possono affin' +
        'are le ricerche con'
      
        'la bacheca dell'#39'ordine dei medici di Riferimento.... noi mettere' +
        'mo MILANO come esempio. '
      '*/'
      'and'
      
        '(A.MAIN_ARGUMENT_ID = :MAIN_ARGUMENT_ID or :main_argument_id = 0' +
        ')'
      'and'
      '(a.argument_id = :argument_id  or :argument_id = 0)'
      'and'
      'a.argument_id = m.argument_id'
      'and'
      'a.db_schema_id = :db_schema_id '
      'and'
      '(m.pos = :pos or :pos = 0)'
      'and'
      '(external_link is not null or :link = false)'
      'order by  datetime desc, article_id desc'
      'limit :limit offset :offset')
    BeforeOpen = PgQueryBeforeOpen
    AfterOpen = qryArticlesListAfterOpen
    OnNewRecord = PgQueryNewRecord
    Left = 80
    Top = 115
    ParamData = <
      item
        DataType = ftString
        Name = 'ricerca'
        ParamType = ptInput
        Value = '%'
      end
      item
        DataType = ftSmallint
        Name = 'main_argument_id'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftSmallint
        Name = 'argument_id'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'db_schema_id'
        ParamType = ptInput
        Value = 1
      end
      item
        DataType = ftSmallint
        Name = 'pos'
        ParamType = ptInput
        Value = 2
      end
      item
        DataType = ftBoolean
        Name = 'link'
        ParamType = ptInput
        Value = False
      end
      item
        DataType = ftInteger
        Name = 'LIMIT'
        ParamType = ptInput
        Value = 6
      end
      item
        DataType = ftInteger
        Name = 'OFFSET'
        ParamType = ptInput
        Value = 0
      end>
    object qryArticlesListarticle_id: TLargeintField
      FieldName = 'article_id'
    end
    object qryArticlesListtitle: TWideStringField
      FieldName = 'title'
      Required = True
      Size = 512
    end
    object qryArticlesListabstract: TWideStringField
      FieldName = 'abstract'
      Required = True
      Size = 4000
    end
    object qryArticlesListauthor_id: TIntegerField
      FieldName = 'author_id'
    end
    object qryArticlesListdatetime: TSQLTimeStampField
      FieldName = 'datetime'
    end
    object qryArticlesListexternal_link: TWideStringField
      FieldName = 'external_link'
      Size = 512
    end
    object qryArticlesListimage: TBlobField
      FieldName = 'image'
    end
    object qryArticlesListshorttext: TWideStringField
      FieldName = 'shorttext'
      Size = 4000
    end
    object qryArticlesListmain_argument_id: TSmallintField
      FieldName = 'main_argument_id'
      Required = True
    end
    object qryArticlesListargument_id: TSmallintField
      FieldName = 'argument_id'
    end
    object qryArticlesListsub_argument_id: TSmallintField
      FieldName = 'sub_argument_id'
    end
    object qryArticlesListspecification_id: TSmallintField
      FieldName = 'specification_id'
    end
    object qryArticlesListarticle_key: TWideStringField
      FieldName = 'article_key'
      Size = 64
    end
    object qryArticlesListimage_url: TWideStringField
      FieldName = 'image_url'
      Size = 1024
    end
    object qryArticlesListlanguage_id: TSmallintField
      FieldName = 'language_id'
    end
    object qryArticlesListfeed_id: TIntegerField
      FieldName = 'feed_id'
    end
    object qryArticlesListhasimage: TBooleanField
      FieldName = 'hasimage'
    end
    object qryArticlesListhasattach: TBooleanField
      FieldName = 'hasattach'
    end
    object qryArticlesListdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryArticlesListcrtc_jguid: TWideStringField
      FieldName = 'crtc_jguid'
      Required = True
      Size = 40
    end
    object qryArticlesListcrtc_deleted: TBooleanField
      FieldName = 'crtc_deleted'
    end
    object qryArticlesListmain_image_id: TLargeintField
      FieldName = 'main_image_id'
    end
    object qryArticlesListmain_attach_id: TLargeintField
      FieldName = 'main_attach_id'
    end
    object qryArticlesListthumb_image_id: TLargeintField
      FieldName = 'thumb_image_id'
    end
    object qryArticlesListmain_attach_zip_id: TLargeintField
      FieldName = 'main_attach_zip_id'
    end
    object qryArticlesListexpiry_date: TDateField
      FieldName = 'expiry_date'
    end
    object qryArticlesListstate: TSmallintField
      FieldName = 'state'
    end
  end
  object qryArgumentsArticles: TPgQuery
    KeyFields = 'article_id'
    KeySequence = 'cms.articles_seq'
    DataTypeMap = <
      item
        FieldName = 'datetime'
        FieldType = ftTimeStamp
      end>
    SQLInsert.Strings = (
      'INSERT INTO cms.articles'
      
        '  (article_id, title, abstract, author_id, text, datetime, exter' +
        'nal_link, image, shorttext, main_argument_id, argument_id, sub_a' +
        'rgument_id, specification_id, article_key, image_url, language_i' +
        'd, feed_id, imagetext, attachment, hasimage, hasattach, db_schem' +
        'a_id, crtc_jguid, crtc_deleted, main_image_id, main_attach_id, t' +
        'humb_image_id, article, expiry_date, state, main_attach_zip_id)'
      'VALUES'
      
        '  (:article_id, :title, :abstract, :author_id, :text, :datetime,' +
        ' :external_link, :image, :shorttext, :main_argument_id, :argumen' +
        't_id, :sub_argument_id, :specification_id, :article_key, :image_' +
        'url, :language_id, :feed_id, :imagetext, :attachment, :hasimage,' +
        ' :hasattach, :db_schema_id, :crtc_jguid, :crtc_deleted, :main_im' +
        'age_id, :main_attach_id, :thumb_image_id, :article, :expiry_date' +
        ', :state, :main_attach_zip_id)')
    SQLDelete.Strings = (
      'DELETE FROM cms.articles'
      'WHERE'
      '  article_id = :Old_article_id')
    SQLUpdate.Strings = (
      'UPDATE cms.articles'
      'SET'
      
        '  article_id = :article_id, title = :title, abstract = :abstract' +
        ', author_id = :author_id, text = :text, datetime = :datetime, ex' +
        'ternal_link = :external_link, image = :image, shorttext = :short' +
        'text, main_argument_id = :main_argument_id, argument_id = :argum' +
        'ent_id, sub_argument_id = :sub_argument_id, specification_id = :' +
        'specification_id, article_key = :article_key, image_url = :image' +
        '_url, language_id = :language_id, feed_id = :feed_id, imagetext ' +
        '= :imagetext, attachment = :attachment, hasimage = :hasimage, ha' +
        'sattach = :hasattach, db_schema_id = :db_schema_id, crtc_jguid =' +
        ' :crtc_jguid, crtc_deleted = :crtc_deleted, main_image_id = :mai' +
        'n_image_id, main_attach_id = :main_attach_id, thumb_image_id = :' +
        'thumb_image_id, article = :article, expiry_date = :expiry_date, ' +
        'state = :state, main_attach_zip_id = :main_attach_zip_id'
      'WHERE'
      '  article_id = :Old_article_id')
    SQLRefresh.Strings = (
      
        'SELECT article_id, title, abstract, author_id, text, datetime, e' +
        'xternal_link, image, shorttext, main_argument_id, argument_id, s' +
        'ub_argument_id, specification_id, article_key, image_url, langua' +
        'ge_id, feed_id, imagetext, attachment, hasimage, hasattach, db_s' +
        'chema_id, crtc_jguid, crtc_deleted, main_image_id, main_attach_i' +
        'd, thumb_image_id, article, expiry_date, state, main_attach_zip_' +
        'id FROM cms.articles'
      'WHERE'
      '  article_id = :article_id')
    SQLLock.Strings = (
      'SELECT * FROM cms.articles'
      'WHERE'
      '  article_id = :Old_article_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM cms.articles'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'select  a.*'
      'from cms.articles a'
      'where '
      '( '
      '  upper(title) like upper('#39'%'#39' || :ricerca || '#39'%'#39') '
      '  or upper('#39'%'#39' || abstract || '#39'%'#39') like :ricerca '
      '  or :ricerca = '#39'%'#39
      ')'
      '--- ************ condizione di gruppo :'
      '/*'
      
        'la condizione di gruppo indica al sistema a quale gruppo fanno r' +
        'iferimento le notizie medico Scentifiche'
      
        'il gruppo indica la base di '#39'gruppo'#39' di ricerca.si possono affin' +
        'are le ricerche con'
      
        'la bacheca dell'#39'ordine dei medici di Riferimento.... noi mettere' +
        'mo MILANO come esempio. '
      '*/'
      'and'
      
        'A.MAIN_ARGUMENT_ID = :MAIN_ARGUMENT_ID or (:main_argument_id = 0' +
        ')'
      'and'
      'a.argument_id = :argument_id  or (:argument_id = 0)'
      'and'
      'a.db_schema_id = :db_schema_id'
      'order by  datetime desc, article_id desc'
      'limit :limit')
    MasterFields = 'main_argument_id;argument_id'
    DetailFields = 'main_argument_id;argument_id'
    MasterSource = dsArguments
    BeforeOpen = PgQueryBeforeOpen
    Left = 208
    Top = 624
    ParamData = <
      item
        DataType = ftString
        Name = 'ricerca'
        ParamType = ptInput
        Value = '%'
      end
      item
        DataType = ftSmallint
        Name = 'main_argument_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'argument_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'db_schema_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'LIMIT'
        ParamType = ptInput
        Value = 100
      end>
    object qryArgumentsArticlesarticle_id: TLargeintField
      FieldName = 'article_id'
    end
    object qryArgumentsArticlestitle: TWideStringField
      FieldName = 'title'
      Required = True
      Size = 512
    end
    object qryArgumentsArticlesabstract: TWideStringField
      FieldName = 'abstract'
      Size = 4000
    end
    object qryArgumentsArticlesauthor_id: TIntegerField
      FieldName = 'author_id'
    end
    object qryArgumentsArticlesexternal_link: TWideStringField
      FieldName = 'external_link'
      Size = 512
    end
    object qryArgumentsArticlesmain_argument_id: TSmallintField
      FieldName = 'main_argument_id'
      Required = True
    end
    object qryArgumentsArticlesargument_id: TSmallintField
      FieldName = 'argument_id'
    end
    object qryArgumentsArticlessub_argument_id: TSmallintField
      FieldName = 'sub_argument_id'
    end
    object qryArgumentsArticlesspecification_id: TSmallintField
      FieldName = 'specification_id'
    end
    object qryArgumentsArticlesimage_url: TWideStringField
      FieldName = 'image_url'
      Size = 1024
    end
    object qryArgumentsArticleslanguage_id: TSmallintField
      FieldName = 'language_id'
    end
    object qryArgumentsArticlesfeed_id: TIntegerField
      FieldName = 'feed_id'
    end
    object qryArgumentsArticlescrtc_jguid: TWideStringField
      FieldName = 'crtc_jguid'
      Required = True
      Size = 40
    end
    object qryArgumentsArticlescrtc_deleted: TBooleanField
      FieldName = 'crtc_deleted'
    end
    object qryArgumentsArticlesmain_image_id: TLargeintField
      FieldName = 'main_image_id'
    end
    object qryArgumentsArticlesmain_attach_id: TLargeintField
      FieldName = 'main_attach_id'
    end
    object qryArgumentsArticlesthumb_image_id: TLargeintField
      FieldName = 'thumb_image_id'
    end
    object qryArgumentsArticlesdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryArgumentsArticlesarticle: TBlobField
      FieldName = 'article'
    end
    object qryArgumentsArticlesdatetime: TSQLTimeStampField
      FieldName = 'datetime'
    end
    object qryArgumentsArticlesimage: TBlobField
      FieldName = 'image'
    end
    object qryArgumentsArticlesshorttext: TWideStringField
      FieldName = 'shorttext'
      Size = 4000
    end
    object qryArgumentsArticlesarticle_key: TWideStringField
      FieldName = 'article_key'
      Size = 64
    end
    object qryArgumentsArticlesimagetext: TWideMemoField
      FieldName = 'imagetext'
      BlobType = ftWideMemo
    end
    object qryArgumentsArticlesattachment: TBlobField
      FieldName = 'attachment'
    end
    object qryArgumentsArticleshasimage: TBooleanField
      FieldName = 'hasimage'
    end
    object qryArgumentsArticleshasattach: TBooleanField
      FieldName = 'hasattach'
    end
    object qryArgumentsArticlesmain_attach_zip_id: TLargeintField
      FieldName = 'main_attach_zip_id'
    end
    object qryArgumentsArticlesexpiry_date: TDateField
      FieldName = 'expiry_date'
    end
    object qryArgumentsArticlesstate: TSmallintField
      FieldName = 'state'
    end
    object qryArgumentsArticlestext: TWideMemoField
      FieldName = 'text'
      BlobType = ftWideMemo
    end
  end
  object qryArticlesSeq: TPgQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'select nextval('#39'cms.articles_seq'#39'), now() as sysdate,'
      'system.get_key(currval('#39'cms.articles_seq'#39'), 32);')
    Left = 80
    Top = 296
    object qryArticlesSeqnextval: TLargeintField
      FieldName = 'nextval'
      ReadOnly = True
    end
    object qryArticlesSeqsysdate: TSQLTimeStampField
      FieldName = 'sysdate'
      ReadOnly = True
    end
    object qryArticlesSeqget_key: TWideMemoField
      FieldName = 'get_key'
      ReadOnly = True
      BlobType = ftWideMemo
    end
  end
  object scArticlesInsert: TPgSQL
    Connection = PgErgoConnection
    SQL.Strings = (
      'INSERT INTO cms.articles'
      
        '  (article_id, title, abstract, author_id, text, datetime, exter' +
        'nal_link, '
      
        '   main_argument_id, argument_id, sub_argument_id, specification' +
        '_id, image_url, language_id, '
      
        '   feed_id, db_schema_id, crtc_jguid, crtc_deleted, main_image_i' +
        'd, main_attach_id, thumb_image_id,'
      '   state, expiry_date)'
      'VALUES'
      
        '  (:article_id, :title, :abstract, :author_id, :text, :datetime,' +
        ' :external_link, '
      
        '   :main_argument_id, :argument_id, :sub_argument_id, :specifica' +
        'tion_id, :image_url, :language_id, '
      
        '   :feed_id, :db_schema_id, :crtc_jguid, :crtc_deleted, :main_im' +
        'age_id, :main_attach_id, :thumb_image_id,'
      '   :state, :expiry_date)')
    BeforeExecute = PgSqlBeforeExecute
    Left = 320
    Top = 600
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'article_id'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'title'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'abstract'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'author_id'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'text'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'datetime'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'external_link'
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'main_argument_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'argument_id'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'sub_argument_id'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'specification_id'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'image_url'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'language_id'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'feed_id'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'db_schema_id'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'crtc_jguid'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'crtc_deleted'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'main_image_id'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'main_attach_id'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'thumb_image_id'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'state'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'expiry_date'
        Value = nil
      end>
  end
  object scArticlesUpdate: TPgSQL
    Connection = PgErgoConnection
    SQL.Strings = (
      'DELETE FROM cms.main_arguments'
      'WHERE'
      '  cmar_jguid = :jguid')
    BeforeExecute = PgSqlBeforeExecute
    Left = 320
    Top = 656
    ParamData = <
      item
        DataType = ftString
        Name = 'jguid'
        ParamType = ptInput
        Value = nil
      end>
  end
  object scArticlesDelete: TPgSQL
    Connection = PgErgoConnection
    SQL.Strings = (
      'UPDATE cms.main_arguments'
      'SET'
      
        '  main_argument_id = :main_argument_id, main_argument_des = :mai' +
        'n_argument_des, '
      '  cmar_deleted = :cmar_deleted, pos = :pos'
      'WHERE'
      '  cmar_jguid = :jguid'
      ' ')
    BeforeExecute = PgSqlBeforeExecute
    Left = 320
    Top = 712
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'main_argument_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'main_argument_des'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftBoolean
        Name = 'cmar_deleted'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'pos'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'jguid'
        ParamType = ptInput
        Value = nil
      end>
  end
  object dsArgumentsArticles: TPgDataSource
    DataSet = qryArgumentsArticles
    Left = 208
    Top = 680
  end
  object Article: TPgQuery
    KeyFields = 'article_id'
    KeySequence = 'cms.articles_seq'
    SQLInsert.Strings = (
      'INSERT INTO cms.articles'
      
        '  (article_id, title, abstract, author_id, text, datetime, exter' +
        'nal_link, image, shorttext, main_argument_id, argument_id, sub_a' +
        'rgument_id, specification_id, article_key, image_url, language_i' +
        'd, feed_id, imagetext, attachment, hasimage, hasattach, db_schem' +
        'a_id, crtc_jguid, crtc_deleted, main_image_id, main_attach_id, t' +
        'humb_image_id, article, expiry_date, state, main_attach_zip_id)'
      'VALUES'
      
        '  (:article_id, :title, :abstract, :author_id, :text, :datetime,' +
        ' :external_link, :image, :shorttext, :main_argument_id, :argumen' +
        't_id, :sub_argument_id, :specification_id, :article_key, :image_' +
        'url, :language_id, :feed_id, :imagetext, :attachment, :hasimage,' +
        ' :hasattach, :db_schema_id, :crtc_jguid, :crtc_deleted, :main_im' +
        'age_id, :main_attach_id, :thumb_image_id, :article, :expiry_date' +
        ', :state, :main_attach_zip_id)')
    SQLDelete.Strings = (
      'DELETE FROM cms.articles'
      'WHERE'
      '  article_id = :Old_article_id')
    SQLUpdate.Strings = (
      'UPDATE cms.articles'
      'SET'
      
        '  article_id = :article_id, title = :title, abstract = :abstract' +
        ', author_id = :author_id, text = :text, datetime = :datetime, ex' +
        'ternal_link = :external_link, image = :image, shorttext = :short' +
        'text, main_argument_id = :main_argument_id, argument_id = :argum' +
        'ent_id, sub_argument_id = :sub_argument_id, specification_id = :' +
        'specification_id, article_key = :article_key, image_url = :image' +
        '_url, language_id = :language_id, feed_id = :feed_id, imagetext ' +
        '= :imagetext, attachment = :attachment, hasimage = :hasimage, ha' +
        'sattach = :hasattach, db_schema_id = :db_schema_id, crtc_jguid =' +
        ' :crtc_jguid, crtc_deleted = :crtc_deleted, main_image_id = :mai' +
        'n_image_id, main_attach_id = :main_attach_id, thumb_image_id = :' +
        'thumb_image_id, article = :article, expiry_date = :expiry_date, ' +
        'state = :state, main_attach_zip_id = :main_attach_zip_id'
      'WHERE'
      '  article_id = :Old_article_id')
    SQLRefresh.Strings = (
      
        'SELECT article_id, title, abstract, author_id, text, datetime, e' +
        'xternal_link, image, shorttext, main_argument_id, argument_id, s' +
        'ub_argument_id, specification_id, article_key, image_url, langua' +
        'ge_id, feed_id, imagetext, attachment, hasimage, hasattach, db_s' +
        'chema_id, crtc_jguid, crtc_deleted, main_image_id, main_attach_i' +
        'd, thumb_image_id, article, expiry_date, state, main_attach_zip_' +
        'id FROM cms.articles'
      'WHERE'
      '  article_id = :article_id')
    SQLLock.Strings = (
      'SELECT * FROM cms.articles'
      'WHERE'
      '  article_id = :Old_article_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM cms.articles'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'select  *'
      ' from cms.articles a'
      'where '
      'article_id = :article_id'
      '')
    AfterOpen = ArticleAfterOpen
    OnNewRecord = PgQueryNewRecord
    Left = 80
    Top = 459
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'article_id'
        ParamType = ptInput
        Value = 213
      end>
    object Articlearticle_id: TLargeintField
      FieldName = 'article_id'
    end
    object Articletitle: TWideStringField
      FieldName = 'title'
      Required = True
      Size = 512
    end
    object Articleabstract: TWideStringField
      FieldName = 'abstract'
      Required = True
      Size = 4000
    end
    object Articleauthor_id: TIntegerField
      FieldName = 'author_id'
    end
    object Articledatetime: TSQLTimeStampField
      FieldName = 'datetime'
    end
    object Articleexternal_link: TWideStringField
      FieldName = 'external_link'
      Size = 512
    end
    object Articleimage: TBlobField
      FieldName = 'image'
    end
    object Articleshorttext: TWideStringField
      FieldName = 'shorttext'
      Size = 4000
    end
    object Articlemain_argument_id: TSmallintField
      FieldName = 'main_argument_id'
      Required = True
    end
    object Articleargument_id: TSmallintField
      FieldName = 'argument_id'
    end
    object Articlesub_argument_id: TSmallintField
      FieldName = 'sub_argument_id'
      Required = True
    end
    object Articlespecification_id: TSmallintField
      FieldName = 'specification_id'
      Required = True
    end
    object Articlearticle_key: TWideStringField
      FieldName = 'article_key'
      Size = 64
    end
    object Articleimage_url: TWideStringField
      FieldName = 'image_url'
      Size = 1024
    end
    object Articlelanguage_id: TSmallintField
      FieldName = 'language_id'
    end
    object Articlefeed_id: TIntegerField
      FieldName = 'feed_id'
    end
    object Articledb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object Articlecrtc_jguid: TWideStringField
      FieldName = 'crtc_jguid'
      Required = True
      Size = 40
    end
    object Articlecrtc_deleted: TBooleanField
      FieldName = 'crtc_deleted'
    end
    object Articlemain_image_id: TLargeintField
      FieldName = 'main_image_id'
    end
    object Articlemain_attach_id: TLargeintField
      FieldName = 'main_attach_id'
    end
    object Articlethumb_image_id: TLargeintField
      FieldName = 'thumb_image_id'
    end
    object Articlearticle: TBlobField
      FieldName = 'article'
    end
    object Articleimagetext: TWideMemoField
      FieldName = 'imagetext'
      BlobType = ftWideMemo
    end
    object Articleattachment: TBlobField
      FieldName = 'attachment'
    end
    object Articlehasimage: TBooleanField
      FieldName = 'hasimage'
    end
    object Articlehasattach: TBooleanField
      FieldName = 'hasattach'
    end
    object Articlemain_attach_zip_id: TLargeintField
      FieldName = 'main_attach_zip_id'
    end
    object Articleexpiry_date: TDateField
      FieldName = 'expiry_date'
    end
    object Articlestate: TSmallintField
      FieldName = 'state'
    end
    object Articletext: TWideMemoField
      FieldName = 'text'
      BlobType = ftWideMemo
    end
  end
  object scArgumentsInsert: TPgSQL
    Connection = PgErgoConnection
    SQL.Strings = (
      'INSERT INTO cms.arguments'
      
        '  (main_argument_id, argument_id, argument_des, code, pos, db_sc' +
        'hema_id, carg_jguid, carg_deleted)'
      'VALUES'
      
        '  (:main_argument_id, :argument_id, :argument_des, :code, :pos, ' +
        ':db_schema_id, :carg_jguid, :carg_deleted)'
      '')
    BeforeExecute = PgSqlBeforeExecute
    Left = 296
    Top = 184
    ParamData = <
      item
        DataType = ftInteger
        Name = 'main_argument_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'argument_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'argument_des'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'code'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'pos'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'db_schema_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'carg_jguid'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftBoolean
        Name = 'carg_deleted'
        ParamType = ptInput
        Value = nil
      end>
  end
  object scArgumentsDelete: TPgSQL
    Connection = PgErgoConnection
    SQL.Strings = (
      'DELETE '
      '  FROM cms.arguments'
      'WHERE'
      '  carg_jguid = :jguid '
      '')
    BeforeExecute = PgSqlBeforeExecute
    Left = 296
    Top = 240
    ParamData = <
      item
        DataType = ftWideString
        Name = 'jguid'
        ParamType = ptInput
        Value = nil
      end>
  end
  object scArgumentsUpdate: TPgSQL
    Connection = PgErgoConnection
    SQL.Strings = (
      'UPDATE cms.arguments'
      'SET'
      
        '  main_argument_id = :main_argument_id, argument_id = :argument_' +
        'id, argument_des = :argument_des, code = :code, pos = :pos, db_s' +
        'chema_id = :db_schema_id, carg_jguid = :carg_jguid, carg_deleted' +
        ' = :carg_deleted'
      'WHERE'
      '  argument_id = :jguid')
    BeforeExecute = PgSqlBeforeExecute
    Left = 296
    Top = 304
    ParamData = <
      item
        DataType = ftInteger
        Name = 'main_argument_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'argument_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'argument_des'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'code'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'pos'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'db_schema_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'carg_jguid'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftBoolean
        Name = 'carg_deleted'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'jguid'
        ParamType = ptInput
        Value = nil
      end>
  end
  object qryArgumentsChampionships: TPgQuery
    Connection = PgErgoConnection
    Left = 552
    Top = 144
  end
  object qryLeagues: TPgQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * '
      '   from '
      '      football.ft_leagues '
      '   where '
      '      db_schema_id = :db_schema_id'
      '   order by league_name')
    BeforeOpen = PgQueryBeforeOpen
    Left = 552
    Top = 208
    ParamData = <
      item
        DataType = ftInteger
        Name = 'db_schema_id'
        ParamType = ptInput
        Value = 32
      end>
    object qryLeaguesleague_id: TSmallintField
      FieldName = 'league_id'
      Required = True
    end
    object qryLeaguesleague_name: TWideStringField
      FieldName = 'league_name'
      Size = 128
    end
    object qryLeaguesiso_country_code: TWideStringField
      FieldName = 'iso_country_code'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qryLeaguesleague_position: TSmallintField
      FieldName = 'league_position'
    end
    object qryLeaguesleague_code: TWideStringField
      FieldName = 'league_code'
      Size = 6
    end
    object qryLeaguesdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      Required = True
    end
    object qryLeaguesremote_id: TSmallintField
      FieldName = 'remote_id'
    end
    object qryLeaguespromotedcss: TWideStringField
      FieldName = 'promotedcss'
      Size = 128
    end
    object qryLeaguesplayoffcss: TWideStringField
      FieldName = 'playoffcss'
      Required = True
      Size = 128
    end
    object qryLeagueschampionscss: TWideStringField
      FieldName = 'championscss'
      Required = True
      Size = 128
    end
    object qryLeaguesplayoutcss: TWideStringField
      FieldName = 'playoutcss'
      Required = True
      Size = 128
    end
    object qryLeaguesrelegationcss: TWideStringField
      FieldName = 'relegationcss'
      Required = True
      Size = 128
    end
    object qryLeaguesall_players: TBooleanField
      FieldName = 'all_players'
    end
    object qryLeaguesflgs_jguid: TWideStringField
      FieldName = 'flgs_jguid'
      Required = True
      Size = 40
    end
    object qryLeaguesflgs_deleted: TBooleanField
      FieldName = 'flgs_deleted'
    end
  end
  object cdsArguments: TClientDataSet
    Aggregates = <>
    DataSetField = cdsMainArgumentsarguments
    Params = <>
    BeforePost = cdsArgumentsBeforePost
    AfterPost = cdsArgumentsAfterPost
    Left = 711
    Top = 296
    object cdsArgumentsmain_argument_id: TSmallintField
      FieldName = 'main_argument_id'
      Required = True
    end
    object cdsArgumentsargument_id: TSmallintField
      FieldName = 'argument_id'
    end
    object cdsArgumentsargument_des: TWideStringField
      FieldName = 'argument_des'
      Size = 512
    end
    object cdsArgumentscode: TWideStringField
      FieldName = 'code'
      Size = 6
    end
    object cdsArgumentspos: TSmallintField
      FieldName = 'pos'
    end
    object cdsArgumentsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object cdsArgumentscarg_jguid: TWideStringField
      FieldName = 'carg_jguid'
      Required = True
      Size = 40
    end
    object cdsArgumentscarg_deleted: TBooleanField
      FieldName = 'carg_deleted'
    end
    object cdsArgumentsleague_id: TSmallintField
      FieldName = 'league_id'
    end
    object cdsArgumentslkpLeague: TStringField
      FieldName = 'lkpLeague'
      ReadOnly = True
      Size = 128
    end
    object cdsArgumentsqryArgumentsArticles: TDataSetField
      FieldName = 'qryArgumentsArticles'
    end
    object cdsArgumentssub_arguments: TDataSetField
      FieldName = 'sub_arguments'
    end
  end
  object cdsArgumentsArticles: TClientDataSet
    Aggregates = <>
    DataSetField = cdsArgumentsqryArgumentsArticles
    PacketRecords = 10
    Params = <>
    BeforePost = cdsArgumentsArticlesBeforePost
    Left = 711
    Top = 352
    object cdsArgumentsArticlesarticle_id: TLargeintField
      FieldName = 'article_id'
    end
    object cdsArgumentsArticlestitle: TWideStringField
      FieldName = 'title'
      Required = True
      Size = 512
    end
    object cdsArgumentsArticlesabstract: TWideStringField
      FieldName = 'abstract'
      Size = 4000
    end
    object cdsArgumentsArticlesauthor_id: TIntegerField
      FieldName = 'author_id'
    end
    object cdsArgumentsArticlestext: TWideStringField
      FieldName = 'text'
      Size = 16536
    end
    object cdsArgumentsArticlesexternal_link: TWideStringField
      FieldName = 'external_link'
      Size = 512
    end
    object cdsArgumentsArticlesmain_argument_id: TSmallintField
      FieldName = 'main_argument_id'
      Required = True
    end
    object cdsArgumentsArticlesargument_id: TSmallintField
      FieldName = 'argument_id'
    end
    object cdsArgumentsArticlessub_argument_id: TSmallintField
      FieldName = 'sub_argument_id'
    end
    object cdsArgumentsArticlesspecification_id: TSmallintField
      FieldName = 'specification_id'
    end
    object cdsArgumentsArticlesimage_url: TWideStringField
      FieldName = 'image_url'
      Size = 1024
    end
    object cdsArgumentsArticleslanguage_id: TSmallintField
      FieldName = 'language_id'
    end
    object cdsArgumentsArticlesfeed_id: TIntegerField
      FieldName = 'feed_id'
    end
    object cdsArgumentsArticlescrtc_jguid: TWideStringField
      FieldName = 'crtc_jguid'
      Required = True
      Size = 40
    end
    object cdsArgumentsArticlescrtc_deleted: TBooleanField
      FieldName = 'crtc_deleted'
    end
    object cdsArgumentsArticlesmain_image_id: TLargeintField
      FieldName = 'main_image_id'
    end
    object cdsArgumentsArticlesmain_attach_id: TLargeintField
      FieldName = 'main_attach_id'
    end
    object cdsArgumentsArticlesthumb_image_id: TLargeintField
      FieldName = 'thumb_image_id'
    end
    object cdsArgumentsArticlesdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object cdsArgumentsArticlesarticle: TBlobField
      FieldName = 'article'
    end
    object cdsArgumentsArticlesdatetime: TSQLTimeStampField
      FieldName = 'datetime'
    end
  end
  object qryArgumentsSeq: TPgQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'select nextval('#39'cms.arguments_seq'#39'), now() as sysdate,'
      'system.get_key(currval('#39'cms.arguments_seq'#39'), 32);')
    Left = 831
    Top = 256
    object qryArgumentsSeqnextval: TLargeintField
      FieldName = 'nextval'
      ReadOnly = True
    end
    object qryArgumentsSeqsysdate: TSQLTimeStampField
      FieldName = 'sysdate'
      ReadOnly = True
    end
    object qryArgumentsSeqget_key: TWideMemoField
      FieldName = 'get_key'
      ReadOnly = True
      BlobType = ftWideMemo
    end
  end
  object qryMainArgumentsSeq: TPgQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'select nextval('#39'cms.main_arguments_seq'#39'), now() as sysdate,'
      'system.get_key(currval('#39'cms.main_arguments_seq'#39'), 32);')
    Left = 839
    Top = 320
    object qryMainArgumentsSeqnextval: TLargeintField
      FieldName = 'nextval'
      ReadOnly = True
    end
    object qryMainArgumentsSeqsysdate: TSQLTimeStampField
      FieldName = 'sysdate'
      ReadOnly = True
    end
    object qryMainArgumentsSeqget_key: TWideMemoField
      FieldName = 'get_key'
      ReadOnly = True
      BlobType = ftWideMemo
    end
  end
  object cdsMainArguments: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'main_argument_id'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = 'jguid'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'db_schema_id'
        ParamType = ptInput
        Value = 32
      end>
    ProviderName = 'dsProvider'
    BeforePost = cdsMainArgumentsBeforePost
    AfterPost = cdsMainArgumentsAfterPost
    OnNewRecord = cdsMainArgumentsNewRecord
    Left = 711
    Top = 240
    object cdsMainArgumentsmain_argument_id: TSmallintField
      FieldName = 'main_argument_id'
    end
    object cdsMainArgumentsmain_argument_des: TWideStringField
      FieldName = 'main_argument_des'
      Required = True
      Size = 512
    end
    object cdsMainArgumentscmar_jguid: TWideStringField
      FieldName = 'cmar_jguid'
      Required = True
      Size = 40
    end
    object cdsMainArgumentscmar_deleted: TBooleanField
      FieldName = 'cmar_deleted'
    end
    object cdsMainArgumentspos: TSmallintField
      FieldName = 'pos'
    end
    object cdsMainArgumentsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object cdsMainArgumentsma_image_id: TLargeintField
      FieldName = 'ma_image_id'
    end
    object cdsMainArgumentsarguments: TDataSetField
      FieldName = 'arguments'
    end
  end
  object dsProvider: TDataSetProvider
    DataSet = main_arguments
    Left = 711
    Top = 176
  end
  object dsArticlesList: TPgDataSource
    DataSet = qryArticlesList
    Left = 80
    Top = 176
  end
  object qryArticlesAttachments: TPgQuery
    DataTypeMap = <
      item
        FieldName = 'text'
        FieldType = ftWideString
        FieldLength = 16536
      end
      item
        FieldName = 'datetime'
        FieldType = ftTimeStamp
      end>
    SQLInsert.Strings = (
      'INSERT INTO cms.articles'
      
        '  (article_id, title, abstract, author_id, text, datetime, exter' +
        'nal_link, main_argument_id, argument_id, sub_argument_id, specif' +
        'ication_id, image_url, language_id, feed_id, db_schema_id, crtc_' +
        'jguid, crtc_deleted, main_image_id, main_attach_id, thumb_image_' +
        'id, article)'
      'VALUES'
      
        '  (:article_id, :title, :abstract, :author_id, :text, :datetime,' +
        ' :external_link, :main_argument_id, :argument_id, :sub_argument_' +
        'id, :specification_id, :image_url, :language_id, :feed_id, :db_s' +
        'chema_id, :crtc_jguid, :crtc_deleted, :main_image_id, :main_atta' +
        'ch_id, :thumb_image_id, :article)')
    SQLDelete.Strings = (
      'DELETE FROM cms.articles'
      'WHERE'
      '  article_id = :Old_article_id')
    SQLUpdate.Strings = (
      'UPDATE cms.articles'
      'SET'
      
        '  article_id = :article_id, title = :title, abstract = :abstract' +
        ', author_id = :author_id, text = :text, datetime = :datetime, ex' +
        'ternal_link = :external_link, main_argument_id = :main_argument_' +
        'id, argument_id = :argument_id, sub_argument_id = :sub_argument_' +
        'id, specification_id = :specification_id, image_url = :image_url' +
        ', language_id = :language_id, feed_id = :feed_id, db_schema_id =' +
        ' :db_schema_id, crtc_jguid = :crtc_jguid, crtc_deleted = :crtc_d' +
        'eleted, main_image_id = :main_image_id, main_attach_id = :main_a' +
        'ttach_id, thumb_image_id = :thumb_image_id, article = :article'
      'WHERE'
      '  article_id = :Old_article_id')
    SQLRefresh.Strings = (
      
        'SELECT article_id, title, abstract, author_id, text, datetime, e' +
        'xternal_link, main_argument_id, argument_id, sub_argument_id, sp' +
        'ecification_id, image_url, language_id, feed_id, db_schema_id, c' +
        'rtc_jguid, crtc_deleted, main_image_id, main_attach_id, thumb_im' +
        'age_id, article FROM cms.articles'
      'WHERE'
      '  article_id = :article_id')
    SQLLock.Strings = (
      'SELECT * FROM cms.articles'
      'WHERE'
      '  article_id = :Old_article_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM cms.articles'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT a.*'
      #9'FROM cms.articles_attachments a'
      'where a.article_id = :article_id'
      'and'
      'a.db_schema_id = :db_schema_id ')
    MasterFields = 'article_id'
    DetailFields = 'article_id'
    MasterSource = dsArticlesList
    BeforeOpen = PgQueryBeforeOpen
    Left = 80
    Top = 232
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'article_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'db_schema_id'
        ParamType = ptInput
        Value = nil
      end>
    object LargeintField1: TLargeintField
      FieldName = 'article_id'
      Required = True
    end
    object LargeintField2: TLargeintField
      FieldName = 'file_id'
      Required = True
    end
    object WideStringField1: TWideStringField
      FieldName = 'description'
      Required = True
      Size = 256
    end
    object WideStringField2: TWideStringField
      FieldName = 'extension'
      Size = 12
    end
    object WideStringField3: TWideStringField
      FieldName = 'mime'
      Size = 60
    end
    object LargeintField3: TLargeintField
      FieldName = 'db_schema_id'
    end
    object BooleanField1: TBooleanField
      FieldName = 'cmaa_deleted'
    end
    object WideStringField4: TWideStringField
      FieldName = 'cmaa_jguid'
      Required = True
      Size = 40
    end
  end
  object dsArticle: TPgDataSource
    DataSet = Article
    Left = 80
    Top = 528
  end
  object ArticleAttachments: TPgQuery
    DataTypeMap = <
      item
        FieldName = 'text'
        FieldType = ftWideString
        FieldLength = 16536
      end
      item
        FieldName = 'datetime'
        FieldType = ftTimeStamp
      end>
    SQLInsert.Strings = (
      'INSERT INTO cms.articles'
      
        '  (article_id, title, abstract, author_id, text, datetime, exter' +
        'nal_link, main_argument_id, argument_id, sub_argument_id, specif' +
        'ication_id, image_url, language_id, feed_id, db_schema_id, crtc_' +
        'jguid, crtc_deleted, main_image_id, main_attach_id, thumb_image_' +
        'id, article)'
      'VALUES'
      
        '  (:article_id, :title, :abstract, :author_id, :text, :datetime,' +
        ' :external_link, :main_argument_id, :argument_id, :sub_argument_' +
        'id, :specification_id, :image_url, :language_id, :feed_id, :db_s' +
        'chema_id, :crtc_jguid, :crtc_deleted, :main_image_id, :main_atta' +
        'ch_id, :thumb_image_id, :article)')
    SQLDelete.Strings = (
      'DELETE FROM cms.articles'
      'WHERE'
      '  article_id = :Old_article_id')
    SQLUpdate.Strings = (
      'UPDATE cms.articles'
      'SET'
      
        '  article_id = :article_id, title = :title, abstract = :abstract' +
        ', author_id = :author_id, text = :text, datetime = :datetime, ex' +
        'ternal_link = :external_link, main_argument_id = :main_argument_' +
        'id, argument_id = :argument_id, sub_argument_id = :sub_argument_' +
        'id, specification_id = :specification_id, image_url = :image_url' +
        ', language_id = :language_id, feed_id = :feed_id, db_schema_id =' +
        ' :db_schema_id, crtc_jguid = :crtc_jguid, crtc_deleted = :crtc_d' +
        'eleted, main_image_id = :main_image_id, main_attach_id = :main_a' +
        'ttach_id, thumb_image_id = :thumb_image_id, article = :article'
      'WHERE'
      '  article_id = :Old_article_id')
    SQLRefresh.Strings = (
      
        'SELECT article_id, title, abstract, author_id, text, datetime, e' +
        'xternal_link, main_argument_id, argument_id, sub_argument_id, sp' +
        'ecification_id, image_url, language_id, feed_id, db_schema_id, c' +
        'rtc_jguid, crtc_deleted, main_image_id, main_attach_id, thumb_im' +
        'age_id, article FROM cms.articles'
      'WHERE'
      '  article_id = :article_id')
    SQLLock.Strings = (
      'SELECT * FROM cms.articles'
      'WHERE'
      '  article_id = :Old_article_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM cms.articles'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT a.*'
      #9'FROM cms.articles_attachments a'
      'where a.article_id = :article_id'
      'and'
      'a.db_schema_id = :db_schema_id ')
    MasterFields = 'article_id'
    DetailFields = 'article_id'
    MasterSource = dsArticle
    BeforeOpen = PgQueryBeforeOpen
    Left = 80
    Top = 584
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'article_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'db_schema_id'
        ParamType = ptInput
        Value = nil
      end>
    object LargeintField4: TLargeintField
      FieldName = 'article_id'
      Required = True
    end
    object LargeintField5: TLargeintField
      FieldName = 'file_id'
      Required = True
    end
    object WideStringField5: TWideStringField
      FieldName = 'description'
      Required = True
      Size = 256
    end
    object WideStringField6: TWideStringField
      FieldName = 'extension'
      Size = 12
    end
    object WideStringField7: TWideStringField
      FieldName = 'mime'
      Size = 60
    end
    object LargeintField6: TLargeintField
      FieldName = 'db_schema_id'
    end
    object BooleanField2: TBooleanField
      FieldName = 'cmaa_deleted'
    end
    object WideStringField8: TWideStringField
      FieldName = 'cmaa_jguid'
      Required = True
      Size = 40
    end
  end
  object qryArgumentArticlesAttachments: TPgQuery
    SQLInsert.Strings = (
      'INSERT INTO cms.articles_attachments'
      
        '  (article_id, file_id, description, extension, mime, db_schema_' +
        'id, cmaa_deleted, cmaa_jguid)'
      'VALUES'
      
        '  (:article_id, :file_id, :description, :extension, :mime, :db_s' +
        'chema_id, :cmaa_deleted, :cmaa_jguid)')
    SQLDelete.Strings = (
      'DELETE FROM cms.articles_attachments'
      'WHERE'
      '  article_id = :Old_article_id AND file_id = :Old_file_id')
    SQLUpdate.Strings = (
      'UPDATE cms.articles_attachments'
      'SET'
      
        '  article_id = :article_id, file_id = :file_id, description = :d' +
        'escription, extension = :extension, mime = :mime, db_schema_id =' +
        ' :db_schema_id, cmaa_deleted = :cmaa_deleted, cmaa_jguid = :cmaa' +
        '_jguid'
      'WHERE'
      '  article_id = :Old_article_id AND file_id = :Old_file_id')
    SQLRefresh.Strings = (
      
        'SELECT article_id, file_id, description, extension, mime, db_sch' +
        'ema_id, cmaa_deleted, cmaa_jguid FROM cms.articles_attachments'
      'WHERE'
      '  article_id = :article_id AND file_id = :file_id')
    SQLLock.Strings = (
      'SELECT * FROM cms.articles_attachments'
      'WHERE'
      '  article_id = :Old_article_id AND file_id = :Old_file_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM cms.articles_attachments'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT a.*'
      #9'FROM cms.articles_attachments a'
      'where '
      'a.article_id = :article_id'
      'and'
      'a.db_schema_id = :db_schema_id '
      'order by '
      'description')
    Left = 208
    Top = 744
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'article_id'
        ParamType = ptInput
        Value = '129'
      end
      item
        DataType = ftInteger
        Name = 'db_schema_id'
        ParamType = ptInput
        Value = 1
      end>
    object qryArgumentArticlesAttachmentsarticle_id: TLargeintField
      FieldName = 'article_id'
      Required = True
    end
    object qryArgumentArticlesAttachmentsfile_id: TLargeintField
      FieldName = 'file_id'
      Required = True
    end
    object qryArgumentArticlesAttachmentsdescription: TWideStringField
      FieldName = 'description'
      Required = True
      Size = 256
    end
    object qryArgumentArticlesAttachmentsextension: TWideStringField
      FieldName = 'extension'
      Size = 12
    end
    object qryArgumentArticlesAttachmentsmime: TWideStringField
      FieldName = 'mime'
      Size = 60
    end
    object qryArgumentArticlesAttachmentsdb_schema_id: TLargeintField
      FieldName = 'db_schema_id'
    end
    object qryArgumentArticlesAttachmentscmaa_deleted: TBooleanField
      FieldName = 'cmaa_deleted'
    end
    object qryArgumentArticlesAttachmentscmaa_jguid: TWideStringField
      FieldName = 'cmaa_jguid'
      Required = True
      Size = 40
    end
  end
  object qryWarnings: TPgQuery
    KeyFields = 'article_id'
    KeySequence = 'cms.articles_seq'
    SQLInsert.Strings = (
      'INSERT INTO cms.articles'
      
        '  (article_id, title, abstract, author_id, text, datetime, exter' +
        'nal_link, image, shorttext, main_argument_id, argument_id, sub_a' +
        'rgument_id, specification_id, article_key, image_url, language_i' +
        'd, feed_id, imagetext, attachment, hasimage, hasattach)'
      'VALUES'
      
        '  (:article_id, :title, :abstract, :author_id, :text, :datetime,' +
        ' :external_link, :image, :shorttext, :main_argument_id, :argumen' +
        't_id, :sub_argument_id, :specification_id, :article_key, :image_' +
        'url, :language_id, :feed_id, :imagetext, :attachment, :hasimage,' +
        ' :hasattach)')
    SQLDelete.Strings = (
      'DELETE FROM cms.articles'
      'WHERE'
      '  article_id = :Old_article_id')
    SQLUpdate.Strings = (
      'UPDATE cms.articles'
      'SET'
      
        '  article_id = :article_id, title = :title, abstract = :abstract' +
        ', author_id = :author_id, text = :text, datetime = :datetime, ex' +
        'ternal_link = :external_link, image = :image, shorttext = :short' +
        'text, main_argument_id = :main_argument_id, argument_id = :argum' +
        'ent_id, sub_argument_id = :sub_argument_id, specification_id = :' +
        'specification_id, article_key = :article_key, image_url = :image' +
        '_url, language_id = :language_id, feed_id = :feed_id, imagetext ' +
        '= :imagetext, attachment = :attachment, hasimage = :hasimage, ha' +
        'sattach = :hasattach'
      'WHERE'
      '  article_id = :Old_article_id')
    SQLRefresh.Strings = (
      
        'SELECT article_id, title, abstract, author_id, text, datetime, e' +
        'xternal_link, image, shorttext, main_argument_id, argument_id, s' +
        'ub_argument_id, specification_id, article_key, image_url, langua' +
        'ge_id, feed_id, imagetext, attachment, hasimage, hasattach FROM ' +
        'cms.articles'
      'WHERE'
      '  article_id = :article_id')
    SQLLock.Strings = (
      'SELECT * FROM cms.articles'
      'WHERE'
      '  article_id = :Old_article_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM cms.articles'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'select  article_id, title, abstract, author_id, datetime, extern' +
        'al_link,  main_argument_id, '
      
        '        argument_id, sub_argument_id, specification_id,  image_u' +
        'rl, language_id,'
      '        main_image_id, main_attach_id,  shorttext'
      ' from cms.articles a'
      'where '
      '--- ************ condizione di gruppo :'
      '/*'
      
        'la condizione di gruppo indica al sistema a quale gruppo fanno r' +
        'iferimento le notizie medico Scentifiche'
      
        'il gruppo indica la base di '#39'gruppo'#39' di ricerca.si possono affin' +
        'are le ricerche con'
      
        'la bacheca dell'#39'ordine dei medici di Riferimento.... noi mettere' +
        'mo MILANO come esempio. '
      '*/'
      'a.argument_id in (5, 9, 13, 17, 21,  25)'
      'order by  datetime desc, article_id desc'
      'limit 20')
    Left = 80
    Top = 376
    object qryWarningsarticle_id: TLargeintField
      FieldName = 'article_id'
    end
    object qryWarningstitle: TWideStringField
      FieldName = 'title'
      Required = True
      Size = 512
    end
    object qryWarningsabstract: TWideStringField
      FieldName = 'abstract'
      Size = 4000
    end
    object qryWarningsauthor_id: TIntegerField
      FieldName = 'author_id'
    end
    object qryWarningsexternal_link: TWideStringField
      FieldName = 'external_link'
      Size = 512
    end
    object qryWarningsmain_argument_id: TSmallintField
      FieldName = 'main_argument_id'
      Required = True
    end
    object qryWarningsargument_id: TSmallintField
      FieldName = 'argument_id'
    end
    object qryWarningssub_argument_id: TSmallintField
      FieldName = 'sub_argument_id'
    end
    object qryWarningsspecification_id: TSmallintField
      FieldName = 'specification_id'
    end
    object qryWarningsimage_url: TWideStringField
      FieldName = 'image_url'
      Size = 1024
    end
    object qryWarningslanguage_id: TSmallintField
      FieldName = 'language_id'
    end
    object qryWarningsmain_image_id: TLargeintField
      FieldName = 'main_image_id'
    end
    object qryWarningsmain_attach_id: TLargeintField
      FieldName = 'main_attach_id'
    end
    object qryWarningsshorttext: TWideStringField
      FieldName = 'shorttext'
      Size = 4000
    end
    object qryWarningsdatetime: TSQLTimeStampField
      FieldName = 'datetime'
    end
  end
  object qryMainArgumentsMails: TPgQuery
    KeyFields = 'mail_id'
    KeySequence = 'cms.mail_seq'
    SQLInsert.Strings = (
      'INSERT INTO cms.mailing_list'
      '  (main_argument_id, mail_id, db_schema_id, email, cmls_jguid)'
      'VALUES'
      
        '  (:main_argument_id, :mail_id, :db_schema_id, :email, :cmls_jgu' +
        'id)')
    SQLDelete.Strings = (
      'DELETE FROM cms.mailing_list'
      'WHERE'
      '  mail_id = :Old_mail_id')
    SQLUpdate.Strings = (
      'UPDATE cms.mailing_list'
      'SET'
      
        '  main_argument_id = :main_argument_id, mail_id = :mail_id, db_s' +
        'chema_id = :db_schema_id, email = :email, cmls_jguid = :cmls_jgu' +
        'id'
      'WHERE'
      '  mail_id = :Old_mail_id')
    SQLRefresh.Strings = (
      
        'SELECT main_argument_id, mail_id, db_schema_id, email, cmls_jgui' +
        'd FROM cms.mailing_list'
      'WHERE'
      '  mail_id = :mail_id')
    SQLLock.Strings = (
      'SELECT * FROM cms.mailing_list'
      'WHERE'
      '  mail_id = :Old_mail_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM cms.mailing_list'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT m.*'
      #9'FROM cms.mailing_list m'
      'WHERE '
      '       m.main_argument_id = :main_argument_id'
      '       and'
      '       m.db_schema_id = :db_schema_id')
    Left = 712
    Top = 424
    ParamData = <
      item
        DataType = ftInteger
        Name = 'main_argument_id'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'db_schema_id'
        ParamType = ptInput
        Value = 0
      end>
    object qryMainArgumentsMailsmain_argument_id: TSmallintField
      FieldName = 'main_argument_id'
      Required = True
    end
    object qryMainArgumentsMailsmail_id: TIntegerField
      FieldName = 'mail_id'
    end
    object qryMainArgumentsMailsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      Required = True
    end
    object qryMainArgumentsMailsemail: TWideStringField
      FieldName = 'email'
      Required = True
      Size = 256
    end
    object qryMainArgumentsMailscmls_jguid: TWideStringField
      FieldName = 'cmls_jguid'
      Required = True
      Size = 40
    end
  end
end
