inherited dmCmsLND: TdmCmsLND
  Height = 641
  Width = 768
  inherited PgErgoConnection: TJanuaUniConnection
    Server = 'pg.januaservers.com'
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  inherited main_arguments: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO cms.main_arguments'
      
        '  (main_argument_id, main_argument_des, pos, db_schema_id, cmar_' +
        'jguid, cmar_deleted, ma_image_id)'
      'VALUES'
      
        '  (:main_argument_id, :main_argument_des, :pos, :db_schema_id, :' +
        'cmar_jguid, :cmar_deleted, :ma_image_id)')
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
    SQL.Strings = (
      'select * from cms.main_arguments m'
      'where  '
      'm.main_argument_id > 0'
      'and'
      'm.db_schema_id = :db_schema_id'
      'order by'
      'coalesce(m.pos::integer, m.main_argument_id::integer )')
    Options.DistinctParams = False
    BeforeOpen = main_argumentsBeforeOpen
    ParamData = <
      item
        DataType = ftInteger
        Name = 'db_schema_id'
        ParamType = ptInput
        Value = nil
      end>
    object main_argumentscmar_jguid: TWideStringField
      FieldName = 'cmar_jguid'
      Required = True
      Size = 40
    end
    object main_argumentscmar_deleted: TBooleanField
      FieldName = 'cmar_deleted'
    end
    object main_argumentsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object main_argumentsma_image_id: TLargeintField
      FieldName = 'ma_image_id'
    end
  end
  inherited arguments: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO cms.arguments'
      
        '  (main_argument_id, argument_id, argument_des, code, pos, db_sc' +
        'hema_id, carg_jguid, carg_deleted)'
      'VALUES'
      
        '  (:main_argument_id, :argument_id, :argument_des, :code, :pos, ' +
        ':db_schema_id, :carg_jguid, :carg_deleted)')
    SQLUpdate.Strings = (
      'UPDATE cms.arguments'
      'SET'
      
        '  main_argument_id = :main_argument_id, argument_id = :argument_' +
        'id, argument_des = :argument_des, code = :code, pos = :pos, db_s' +
        'chema_id = :db_schema_id, carg_jguid = :carg_jguid, carg_deleted' +
        ' = :carg_deleted'
      'WHERE'
      '  argument_id = :Old_argument_id')
    SQLRefresh.Strings = (
      
        'SELECT main_argument_id, argument_id, argument_des, code, pos, d' +
        'b_schema_id, carg_jguid, carg_deleted FROM cms.arguments'
      'WHERE'
      '  argument_id = :argument_id')
    SQL.Strings = (
      'select * from cms.arguments a '
      'where '
      '   a.main_argument_id = :main_argument_id'
      '   and'
      '   a.db_schema_id = :db_schema_id')
    BeforeOpen = argumentsBeforeOpen
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'main_argument_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'db_schema_id'
        ParamType = ptInput
        Value = nil
      end>
  end
  inherited specifications: TUniQuery
    Top = 344
  end
  inherited prcNewArticle: TUniStoredProc
    CommandStoredProcName = 'cms.articles_ins:0'
  end
  inherited vtArguments: TVirtualTable
    Left = 600
    Top = 224
    Data = {
      0400050010006D61696E5F617267756D656E745F696402000000000000000B00
      617267756D656E745F696402000000000000000C00617267756D656E745F6465
      7318000002000000000400636F646518000600000000000300706F7302000000
      000000000000180000000200000001000200000002001400000043006F006D00
      75006E0069006300610074006900000000000200000001000200000001000200
      000003001200000043006900720063006F006C00610072006900000000000200
      00000200020000000100020000000400080000004E0065007700730000000000
      0200000003000200000001000200000005000E00000055007200670065006E00
      7A00650000000000020000000400020000000200020000000600140000004300
      6F006D0075006E00690063006100740069000000000002000000010002000000
      02000200000007001200000043006900720063006F006C006100720069000000
      0000020000000200020000000200020000000800080000004E00650077007300
      000000000200000003000200000002000200000009000E000000550072006700
      65006E007A00650000000000020000000400020000000300020000000A001400
      000043006F006D0075006E006900630061007400690000000000020000000100
      020000000300020000000B001200000043006900720063006F006C0061007200
      690000000000020000000200020000000300020000000C00080000004E006500
      7700730000000000020000000300020000000300020000000D000E0000005500
      7200670065006E007A0065000000000002000000040002000000040002000000
      0E001400000043006F006D0075006E0069006300610074006900000000000200
      00000100020000000400020000000F001200000043006900720063006F006C00
      6100720069000000000002000000020002000000040002000000100008000000
      4E00650077007300000000000200000003000200000004000200000011000E00
      000055007200670065006E007A00650000000000020000000400020000000500
      0200000012001400000043006F006D0075006E00690063006100740069000000
      0000020000000100020000000500020000001300120000004300690072006300
      6F006C0061007200690000000000020000000200020000000500020000001400
      080000004E006500770073000000000002000000030002000000050002000000
      15000E00000055007200670065006E007A006500000000000200000004000200
      000006000200000016001400000043006F006D0075006E006900630061007400
      6900000000000200000001000200000006000200000017001200000043006900
      720063006F006C00610072006900000000000200000002000200000006000200
      00001800080000004E0065007700730000000000020000000300020000000600
      0200000019000E00000055007200670065006E007A0065000000000002000000
      0400}
  end
  inherited PgQuery1: TUniQuery
    Left = 600
    Top = 160
  end
  inherited PgQuery2: TUniQuery
    Left = 600
    Top = 288
  end
  object qryArgumentsArticles: TUniQuery
    KeyFields = 'article_id'
    KeySequence = 'cms.articles_seq'
    SQLInsert.Strings = (
      'INSERT INTO cms.articles'
      
        '  (article_id, title, abstract, author_id, text, datetime, exter' +
        'nal_link, image, shorttext, main_argument_id, argument_id, sub_a' +
        'rgument_id, specification_id, article_key, image_url, language_i' +
        'd, feed_id, imagetext, attachment, hasimage, hasattach, crtc_jgu' +
        'id, crtc_deleted)'
      'VALUES'
      
        '  (:article_id, :title, :abstract, :author_id, :text, :datetime,' +
        ' :external_link, :image, :shorttext, :main_argument_id, :argumen' +
        't_id, :sub_argument_id, :specification_id, :article_key, :image_' +
        'url, :language_id, :feed_id, :imagetext, :attachment, :hasimage,' +
        ' :hasattach, :crtc_jguid, :crtc_deleted)')
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
        'sattach = :hasattach, crtc_jguid = :crtc_jguid, crtc_deleted = :' +
        'crtc_deleted'
      'WHERE'
      '  article_id = :Old_article_id')
    SQLRefresh.Strings = (
      
        'SELECT article_id, title, abstract, author_id, text, datetime, e' +
        'xternal_link, image, shorttext, main_argument_id, argument_id, s' +
        'ub_argument_id, specification_id, article_key, image_url, langua' +
        'ge_id, feed_id, imagetext, attachment, hasimage, hasattach, crtc' +
        '_jguid, crtc_deleted FROM cms.articles'
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
      'select  a.* from cms.articles a'
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
    BeforeOpen = qryArgumentsArticlesBeforeOpen
    OnNewRecord = qryArgumentsArticlesNewRecord
    Left = 200
    Top = 440
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
        DataType = ftLargeint
        Name = 'db_schema_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'LIMIT'
        ParamType = ptInput
        Value = 20
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
    object qryArgumentsArticlestext: TWideMemoField
      FieldName = 'text'
      BlobType = ftWideMemo
    end
    object qryArgumentsArticlesdatetime: TSQLTimeStampField
      FieldName = 'datetime'
    end
    object qryArgumentsArticlesexternal_link: TWideStringField
      FieldName = 'external_link'
      Size = 512
    end
    object qryArgumentsArticlesimage: TBlobField
      FieldName = 'image'
    end
    object qryArgumentsArticlesshorttext: TWideStringField
      FieldName = 'shorttext'
      Size = 4000
    end
    object qryArgumentsArticlesmain_argument_id: TSmallintField
      FieldName = 'main_argument_id'
      Required = True
    end
    object qryArgumentsArticlesargument_id: TSmallintField
      FieldName = 'argument_id'
      Required = True
    end
    object qryArgumentsArticlessub_argument_id: TSmallintField
      FieldName = 'sub_argument_id'
    end
    object qryArgumentsArticlesspecification_id: TSmallintField
      FieldName = 'specification_id'
    end
    object qryArgumentsArticlesarticle_key: TWideStringField
      FieldName = 'article_key'
      Size = 64
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
    object qryArgumentsArticlesdb_schema_id: TLargeintField
      FieldName = 'db_schema_id'
    end
  end
  object qryArticlesList: TUniQuery
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
      'select  *'
      ' from cms.articles a'
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
      'order by  datetime desc, article_id desc'
      'limit :limit')
    OnNewRecord = qryArgumentsArticlesNewRecord
    Left = 200
    Top = 512
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
        Value = 1
      end
      item
        DataType = ftSmallint
        Name = 'argument_id'
        ParamType = ptInput
        Value = 2
      end
      item
        DataType = ftInteger
        Name = 'LIMIT'
        ParamType = ptInput
        Value = 20
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
      Size = 4000
    end
    object qryArticlesListauthor_id: TIntegerField
      FieldName = 'author_id'
    end
    object qryArticlesListtext: TWideMemoField
      FieldName = 'text'
      BlobType = ftWideMemo
    end
    object qryArticlesListdatetime: TSQLTimeStampField
      FieldName = 'datetime'
    end
    object qryArticlesListexternal_link: TWideStringField
      FieldName = 'external_link'
      Size = 512
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
    object qryArticlesListimagetext: TWideMemoField
      FieldName = 'imagetext'
      BlobType = ftWideMemo
    end
    object qryArticlesListhasimage: TBooleanField
      FieldName = 'hasimage'
    end
    object qryArticlesListhasattach: TBooleanField
      FieldName = 'hasattach'
    end
    object qryArticlesListimage: TBlobField
      FieldName = 'image'
    end
    object qryArticlesListattachment: TBlobField
      FieldName = 'attachment'
    end
    object qryArticlesListcrtc_jguid: TWideStringField
      FieldName = 'crtc_jguid'
      Required = True
      Size = 40
    end
    object qryArticlesListcrtc_deleted: TBooleanField
      FieldName = 'crtc_deleted'
    end
  end
  object qryArticlesImages: TUniQuery
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
      'select  article_id, image'
      ' from cms.articles a'
      'where'
      'a.article_id = :article_id')
    OnNewRecord = qryArgumentsArticlesNewRecord
    Left = 304
    Top = 488
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'article_id'
        Value = 42
      end>
    object qryArticlesImagesarticle_id: TLargeintField
      FieldName = 'article_id'
    end
    object qryArticlesImagesimage: TBlobField
      FieldName = 'image'
    end
  end
end
