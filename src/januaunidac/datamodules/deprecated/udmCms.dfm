object dmCms: TdmCms
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 427
  Width = 626
  object main_arguments: TUniQuery
    SQL.Strings = (
      'select * from cms.main_arguments')
    Left = 152
    Top = 16
    object main_argumentsmain_argument_id: TSmallintField
      FieldName = 'main_argument_id'
      Required = True
    end
    object main_argumentsmain_argument_des: TWideStringField
      FieldName = 'main_argument_des'
      Required = True
      Size = 512
    end
  end
  object dsMainArguments: TDataSource
    DataSet = main_arguments
    Left = 152
    Top = 72
  end
  object arguments: TUniQuery
    SQL.Strings = (
      
        'select * from cms.arguments where main_argument_id = :main_argum' +
        'ent_id')
    MasterFields = 'MAIN_ARGUMENT_ID'
    DetailFields = 'MAIN_ARGUMENT_ID'
    MasterSource = dsMainArguments
    Left = 152
    Top = 120
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'main_argument_id'
        ParamType = ptInput
        Value = 0
      end>
    object argumentsmain_argument_id: TSmallintField
      FieldName = 'main_argument_id'
      Required = True
    end
    object argumentsargument_id: TSmallintField
      FieldName = 'argument_id'
      Required = True
    end
    object argumentsargument_des: TWideStringField
      FieldName = 'argument_des'
      Size = 512
    end
    object argumentscode: TWideStringField
      FieldName = 'code'
      Size = 6
    end
  end
  object dsArguments: TDataSource
    DataSet = arguments
    Left = 152
    Top = 176
  end
  object sub_arguments: TUniQuery
    SQL.Strings = (
      'select * from cms.sub_arguments where '
      'argument_id = :argument_id')
    MasterFields = 'argument_id'
    DetailFields = 'argument_id'
    MasterSource = dsArguments
    Left = 152
    Top = 232
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'argument_id'
        ParamType = ptInput
        Value = 27
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
  object dsSubArguments: TDataSource
    DataSet = sub_arguments
    Left = 152
    Top = 288
  end
  object specifications: TUniQuery
    SQL.Strings = (
      'select * from cms.specifications'
      ' where  sub_argument_id = :sub_argument_id')
    MasterFields = 'sub_argument_id'
    DetailFields = 'sub_argument_id'
    MasterSource = dsSubArguments
    Left = 152
    Top = 344
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'sub_argument_id'
        ParamType = ptInput
        Value = 1
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
  object lkpMainArguments: TDataSource
    DataSet = cdsMainArguments
    Left = 353
    Top = 64
  end
  object lkpSpecifications: TDataSource
    DataSet = cdsSpecifications
    Left = 353
    Top = 120
  end
  object lkpSubArguments: TDataSource
    DataSet = cdsSubArguments
    Left = 353
    Top = 248
  end
  object lkpArguments: TDataSource
    DataSet = cdsArguments
    Left = 353
    Top = 184
  end
  object cdsSpecifications: TClientDataSet
    Aggregates = <>
    DataSetField = cdsSubArgumentsspecifications
    Params = <>
    Left = 265
    Top = 264
    object cdsSpecificationsspecification_id: TSmallintField
      FieldName = 'specification_id'
      Required = True
    end
    object cdsSpecificationssub_argument_id: TSmallintField
      FieldName = 'sub_argument_id'
    end
    object cdsSpecificationsspecification_des: TWideStringField
      FieldName = 'specification_des'
      Required = True
      Size = 128
    end
  end
  object cdsSubArguments: TClientDataSet
    Aggregates = <>
    DataSetField = cdsArgumentssub_arguments
    Params = <>
    Left = 265
    Top = 200
    object cdsSubArgumentsspecifications: TDataSetField
      FieldName = 'specifications'
    end
    object cdsSubArgumentsargument_id: TSmallintField
      FieldName = 'argument_id'
      Required = True
    end
    object cdsSubArgumentssub_argument_id: TSmallintField
      FieldName = 'sub_argument_id'
      Required = True
    end
    object cdsSubArgumentssub_argument_des: TWideStringField
      FieldName = 'sub_argument_des'
      Required = True
      Size = 512
    end
  end
  object cdsArguments: TClientDataSet
    Aggregates = <>
    DataSetField = cdsMainArgumentsarguments
    Params = <>
    Left = 265
    Top = 144
    object cdsArgumentssub_arguments: TDataSetField
      FieldName = 'sub_arguments'
    end
    object cdsArgumentsmain_argument_id: TSmallintField
      FieldName = 'main_argument_id'
      Required = True
    end
    object cdsArgumentsargument_id: TSmallintField
      FieldName = 'argument_id'
      Required = True
    end
    object cdsArgumentsargument_des: TWideStringField
      FieldName = 'argument_des'
      Size = 512
    end
  end
  object dspArguments: TDataSetProvider
    DataSet = main_arguments
    Left = 265
    Top = 88
  end
  object cdsMainArguments: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspArguments'
    Left = 265
    Top = 32
    object cdsMainArgumentsarguments: TDataSetField
      FieldName = 'arguments'
    end
    object cdsMainArgumentsmain_argument_id: TSmallintField
      FieldName = 'main_argument_id'
      Required = True
    end
    object cdsMainArgumentsmain_argument_des: TWideStringField
      FieldName = 'main_argument_des'
      Required = True
      Size = 512
    end
  end
  object qryArticles: TUniQuery
    SQL.Strings = (
      'select  b.*, '
      
        'main_argument_des, argument_des, sub_argument_des, specification' +
        '_des'
      'from '
      '('
      'select  a.* from cms.articles a, cms.arguments_groups g'
      'where '
      
        '( title like :ricerca or abstract like :ricerca or :ricerca = '#39'%' +
        #39')'
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
      'A.MAIN_ARGUMENT_ID = G.MAIN_ARGUMENT_ID '
      'and'
      'G.GROUP_ID = 1'
      ' and (a.language_id = :language_id or :language_id = 0)'
      'order by  datetime desc, article_id desc'
      'limit :limit'
      ') b, '
      
        'cms.main_arguments wm, cms.arguments wa, cms.sub_arguments ws, c' +
        'ms.specifications wp'
      'where '
      'wm.main_argument_id = b.main_argument_id'
      'and'
      'wa.main_argument_id = b.main_argument_id'
      '--------  argument id -------------------'
      'and'
      'wa.argument_id = b.argument_id'
      'and'
      'ws.argument_id = b.argument_id'
      '---------  sub argument id ---------------'
      'and'
      'ws.sub_argument_id = b.sub_argument_id'
      'and'
      'wp.sub_argument_id = b.sub_argument_id'
      '-------- specification id ----------------'
      'and'
      'wp.specification_id = b.specification_id'
      'order by datetime desc, article_id desc')
    MasterFields = 'ANAGRAFICA_ID'
    Left = 448
    Top = 24
    ParamData = <
      item
        DataType = ftString
        Name = 'ricerca'
        ParamType = ptInput
        Value = '%'
      end
      item
        DataType = ftSmallint
        Name = 'language_id'
        ParamType = ptInput
        Value = 1
      end
      item
        DataType = ftInteger
        Name = 'LIMIT'
        ParamType = ptInput
        Value = 20
      end>
    object qryArticlesarticle_id: TLargeintField
      FieldName = 'article_id'
      ReadOnly = True
    end
    object qryArticlestitle: TWideStringField
      FieldName = 'title'
      ReadOnly = True
      Size = 256
    end
    object qryArticlesabstract: TWideStringField
      FieldName = 'abstract'
      ReadOnly = True
      Size = 4000
    end
    object qryArticlesauthor_id: TIntegerField
      FieldName = 'author_id'
      ReadOnly = True
    end
    object qryArticlestext: TWideMemoField
      FieldName = 'text'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qryArticlesdatetime: TUniTimeStampField
      FieldName = 'datetime'
      ReadOnly = True
    end
    object qryArticlesexternal_link: TWideStringField
      FieldName = 'external_link'
      ReadOnly = True
      Size = 512
    end
    object qryArticlesimage: TBlobField
      FieldName = 'image'
      ReadOnly = True
    end
    object qryArticlesshorttext: TWideStringField
      FieldName = 'shorttext'
      ReadOnly = True
      Size = 4000
    end
    object qryArticlesmain_argument_id: TSmallintField
      FieldName = 'main_argument_id'
      ReadOnly = True
    end
    object qryArticlesargument_id: TSmallintField
      FieldName = 'argument_id'
      ReadOnly = True
    end
    object qryArticlessub_argument_id: TSmallintField
      FieldName = 'sub_argument_id'
      ReadOnly = True
    end
    object qryArticlesspecification_id: TSmallintField
      FieldName = 'specification_id'
      ReadOnly = True
    end
    object qryArticlesarticle_key: TWideStringField
      FieldName = 'article_key'
      ReadOnly = True
      Size = 64
    end
    object qryArticlesmain_argument_des: TWideStringField
      FieldName = 'main_argument_des'
      Required = True
      Size = 512
    end
    object qryArticlesargument_des: TWideStringField
      FieldName = 'argument_des'
      ReadOnly = True
      Size = 512
    end
    object qryArticlessub_argument_des: TWideStringField
      FieldName = 'sub_argument_des'
      ReadOnly = True
      Required = True
      Size = 512
    end
    object qryArticlesspecification_des: TWideStringField
      FieldName = 'specification_des'
      ReadOnly = True
      Required = True
      Size = 128
    end
  end
  object qrySingleArticle: TUniQuery
    SQL.Strings = (
      'select  a.* from cms.articles a '
      'where article_id = :article_id')
    Left = 448
    Top = 75
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'article_id'
        Value = nil
      end>
    object qrySingleArticlearticle_id: TLargeintField
      FieldName = 'article_id'
      Required = True
    end
    object qrySingleArticletitle: TWideStringField
      FieldName = 'title'
      Required = True
      Size = 256
    end
    object qrySingleArticleabstract: TWideStringField
      FieldName = 'abstract'
      Required = True
      Size = 4000
    end
    object qrySingleArticleauthor_id: TIntegerField
      FieldName = 'author_id'
    end
    object qrySingleArticletext: TWideMemoField
      FieldName = 'text'
      BlobType = ftWideMemo
    end
    object qrySingleArticledatetime: TUniTimeStampField
      FieldName = 'datetime'
    end
    object qrySingleArticleexternal_link: TWideStringField
      FieldName = 'external_link'
      Size = 512
    end
    object qrySingleArticleimage: TBlobField
      FieldName = 'image'
    end
    object qrySingleArticleshorttext: TWideStringField
      FieldName = 'shorttext'
      Size = 4000
    end
    object qrySingleArticlemain_argument_id: TSmallintField
      FieldName = 'main_argument_id'
      Required = True
    end
    object qrySingleArticleargument_id: TSmallintField
      FieldName = 'argument_id'
    end
    object qrySingleArticlesub_argument_id: TSmallintField
      FieldName = 'sub_argument_id'
      Required = True
    end
    object qrySingleArticlespecification_id: TSmallintField
      FieldName = 'specification_id'
      Required = True
    end
    object qrySingleArticlearticle_key: TWideStringField
      FieldName = 'article_key'
      Size = 64
    end
  end
  object qryStudioLegale: TUniQuery
    SQL.Strings = (
      'select  b.*, '
      
        'main_argument_des, argument_des, sub_argument_des, specification' +
        '_des'
      'from '
      '('
      'select  a.* from cms.articles a, cms.arguments_groups g'
      'where '
      
        '( title like :ricerca or abstract like :ricerca or :ricerca = '#39'%' +
        #39')'
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
      'A.MAIN_ARGUMENT_ID = G.MAIN_ARGUMENT_ID '
      'and'
      'G.GROUP_ID = 2'
      'order by  datetime desc, article_id desc'
      ') b, '
      
        'cms.main_arguments wm, cms.arguments wa, cms.sub_arguments ws, c' +
        'ms.specifications wp'
      'where '
      'wm.main_argument_id = b.main_argument_id'
      'and'
      'wa.main_argument_id = b.main_argument_id'
      '--------  argument id -------------------'
      'and'
      'wa.argument_id = b.argument_id'
      'and'
      'ws.argument_id = b.argument_id'
      '---------  sub argument id ---------------'
      'and'
      'ws.sub_argument_id = b.sub_argument_id'
      'and'
      'wp.sub_argument_id = b.sub_argument_id'
      '-------- specification id ----------------'
      'and'
      'wp.specification_id = b.specification_id'
      'limit 20')
    MasterFields = 'ANAGRAFICA_ID'
    Left = 448
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ricerca'
        Value = nil
      end>
    object qryStudioLegalearticle_id: TLargeintField
      FieldName = 'article_id'
      ReadOnly = True
    end
    object qryStudioLegaletitle: TWideStringField
      FieldName = 'title'
      ReadOnly = True
      Size = 256
    end
    object qryStudioLegaleabstract: TWideStringField
      FieldName = 'abstract'
      ReadOnly = True
      Size = 4000
    end
    object qryStudioLegaleauthor_id: TIntegerField
      FieldName = 'author_id'
      ReadOnly = True
    end
    object qryStudioLegaletext: TWideMemoField
      FieldName = 'text'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qryStudioLegaledatetime: TUniTimeStampField
      FieldName = 'datetime'
      ReadOnly = True
    end
    object qryStudioLegaleexternal_link: TWideStringField
      FieldName = 'external_link'
      ReadOnly = True
      Size = 512
    end
    object qryStudioLegaleimage: TBlobField
      FieldName = 'image'
      ReadOnly = True
    end
    object qryStudioLegaleshorttext: TWideStringField
      FieldName = 'shorttext'
      ReadOnly = True
      Size = 4000
    end
    object qryStudioLegalemain_argument_id: TSmallintField
      FieldName = 'main_argument_id'
      ReadOnly = True
    end
    object qryStudioLegaleargument_id: TSmallintField
      FieldName = 'argument_id'
      ReadOnly = True
    end
    object qryStudioLegalesub_argument_id: TSmallintField
      FieldName = 'sub_argument_id'
      ReadOnly = True
    end
    object qryStudioLegalespecification_id: TSmallintField
      FieldName = 'specification_id'
      ReadOnly = True
    end
    object qryStudioLegalearticle_key: TWideStringField
      FieldName = 'article_key'
      ReadOnly = True
      Size = 64
    end
    object qryStudioLegalemain_argument_des: TWideStringField
      FieldName = 'main_argument_des'
      Required = True
      Size = 512
    end
    object qryStudioLegaleargument_des: TWideStringField
      FieldName = 'argument_des'
      ReadOnly = True
      Size = 512
    end
    object qryStudioLegalesub_argument_des: TWideStringField
      FieldName = 'sub_argument_des'
      ReadOnly = True
      Required = True
      Size = 512
    end
    object qryStudioLegalespecification_des: TWideStringField
      FieldName = 'specification_des'
      ReadOnly = True
      Required = True
      Size = 128
    end
  end
  object qryNewsFisco: TUniQuery
    SQL.Strings = (
      'select  b.*, '
      
        'main_argument_des, argument_des, sub_argument_des, specification' +
        '_des'
      'from '
      '('
      'select  a.* from cms.articles a, cms.arguments_groups g'
      'where '
      
        '( title like :ricerca or abstract like :ricerca or :ricerca = '#39'%' +
        #39')'
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
      'A.MAIN_ARGUMENT_ID = G.MAIN_ARGUMENT_ID '
      'and'
      'G.GROUP_ID = 2'
      'order by  datetime desc, article_id desc'
      ') b, '
      
        'cms.main_arguments wm, cms.arguments wa, cms.sub_arguments ws, c' +
        'ms.specifications wp'
      'where '
      'wm.main_argument_id = b.main_argument_id'
      'and'
      'wa.main_argument_id = b.main_argument_id'
      '--------  argument id -------------------'
      'and'
      'wa.argument_id = b.argument_id'
      'and'
      'ws.argument_id = b.argument_id'
      '---------  sub argument id ---------------'
      'and'
      'ws.sub_argument_id = b.sub_argument_id'
      'and'
      'wp.sub_argument_id = b.sub_argument_id'
      '-------- specification id ----------------'
      'and'
      'wp.specification_id = b.specification_id'
      'limit 20')
    MasterFields = 'ANAGRAFICA_ID'
    Left = 448
    Top = 203
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ricerca'
        Value = nil
      end>
    object qryNewsFiscoarticle_id: TLargeintField
      FieldName = 'article_id'
      ReadOnly = True
    end
    object qryNewsFiscotitle: TWideStringField
      FieldName = 'title'
      ReadOnly = True
      Size = 256
    end
    object qryNewsFiscoabstract: TWideStringField
      FieldName = 'abstract'
      ReadOnly = True
      Size = 4000
    end
    object qryNewsFiscoauthor_id: TIntegerField
      FieldName = 'author_id'
      ReadOnly = True
    end
    object qryNewsFiscotext: TWideMemoField
      FieldName = 'text'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qryNewsFiscodatetime: TUniTimeStampField
      FieldName = 'datetime'
      ReadOnly = True
    end
    object qryNewsFiscoexternal_link: TWideStringField
      FieldName = 'external_link'
      ReadOnly = True
      Size = 512
    end
    object qryNewsFiscoimage: TBlobField
      FieldName = 'image'
      ReadOnly = True
    end
    object qryNewsFiscoshorttext: TWideStringField
      FieldName = 'shorttext'
      ReadOnly = True
      Size = 4000
    end
    object qryNewsFiscomain_argument_id: TSmallintField
      FieldName = 'main_argument_id'
      ReadOnly = True
    end
    object qryNewsFiscoargument_id: TSmallintField
      FieldName = 'argument_id'
      ReadOnly = True
    end
    object qryNewsFiscosub_argument_id: TSmallintField
      FieldName = 'sub_argument_id'
      ReadOnly = True
    end
    object qryNewsFiscospecification_id: TSmallintField
      FieldName = 'specification_id'
      ReadOnly = True
    end
    object qryNewsFiscoarticle_key: TWideStringField
      FieldName = 'article_key'
      ReadOnly = True
      Size = 64
    end
    object qryNewsFiscomain_argument_des: TWideStringField
      FieldName = 'main_argument_des'
      Required = True
      Size = 512
    end
    object qryNewsFiscoargument_des: TWideStringField
      FieldName = 'argument_des'
      ReadOnly = True
      Size = 512
    end
    object qryNewsFiscosub_argument_des: TWideStringField
      FieldName = 'sub_argument_des'
      ReadOnly = True
      Required = True
      Size = 512
    end
    object qryNewsFiscospecification_des: TWideStringField
      FieldName = 'specification_des'
      ReadOnly = True
      Required = True
      Size = 128
    end
  end
  object qryUserArticle: TUniQuery
    SQL.Strings = (
      'select * from cms.articles '
      'where (article_id = :article_id or :article_id = 0)'
      'and (author_id = :db_user_id)')
    MasterFields = 'db_user_id'
    DetailFields = 'author_id'
    Left = 448
    Top = 320
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
      Size = 256
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
    object qryUserArticledatetime: TUniTimeStampField
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
  end
  object qryArticlesSeq: TUniQuery
    SQL.Strings = (
      'select nextval('#39'cms.articles_seq'#39'), now() as sysdate,'
      'system.get_key(currval('#39'cms.articles_seq'#39'), 32);')
    Left = 448
    Top = 264
    object qryArticlesSeqnextval: TLargeintField
      FieldName = 'nextval'
      ReadOnly = True
    end
    object qryArticlesSeqsysdate: TUniTimeStampField
      FieldName = 'sysdate'
      ReadOnly = True
    end
    object qryArticlesSeqget_key: TWideMemoField
      FieldName = 'get_key'
      ReadOnly = True
      BlobType = ftWideMemo
    end
  end
  object prcNewArticle: TUniStoredProc
    StoredProcName = 'cms.articles_ins'
    SQL.Strings = (
      
        'SELECT cms.articles_ins(:in_article_id, :in_title, :in_abstract,' +
        ' :in_author_id, :in_text, :in_datetime, :in_external_link, :in_i' +
        'mage, :in_shorttext, :in_main_argument_id, :in_argument_id, :in_' +
        'sub_argument_id, :in_specification_id, :in_article_key)')
    Left = 352
    Top = 304
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'result'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftLargeint
        Name = 'in_article_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'in_title'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'in_abstract'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'in_author_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideMemo
        Name = 'in_text'
        ParamType = ptInput
        Value = ''
      end
      item
        Name = 'in_datetime'
        ParamType = ptInput
        Value = '01/01/2000 0.00.00'
        ExtDataType = 104
      end
      item
        DataType = ftWideString
        Name = 'in_external_link'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftBlob
        Name = 'in_image'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftWideString
        Name = 'in_shorttext'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'in_main_argument_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'in_argument_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'in_sub_argument_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'in_specification_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'in_article_key'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'cms.articles_ins:0'
  end
end
