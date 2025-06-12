object dmCMSViewModel: TdmCMSViewModel
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 672
  Width = 819
  object dsProvider: TDataSetProvider
    Left = 368
    Top = 104
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
    OnReconcileError = cdsMainArgumentsReconcileError
    Left = 368
    Top = 184
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
  object dsMainArguments: TDataSource
    DataSet = cdsMainArguments
    OnDataChange = dsMainArgumentsDataChange
    Left = 368
    Top = 248
  end
  object cdsArguments: TClientDataSet
    Aggregates = <>
    DataSetField = cdsMainArgumentsarguments
    Params = <>
    BeforePost = cdsArgumentsBeforePost
    AfterPost = cdsArgumentsAfterPost
    Left = 368
    Top = 312
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
  object dsArguments: TDataSource
    DataSet = cdsArguments
    Left = 368
    Top = 368
  end
  object cdsArgumentsArticles: TClientDataSet
    Aggregates = <>
    DataSetField = cdsArgumentsqryArgumentsArticles
    Filter = 'state > -1'
    Filtered = True
    PacketRecords = 10
    Params = <>
    BeforePost = cdsArgumentsArticlesBeforePost
    AfterScroll = cdsArgumentsArticlesAfterScroll
    Left = 368
    Top = 432
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
    object cdsArgumentsArticlesimage: TBlobField
      FieldName = 'image'
    end
    object cdsArgumentsArticlesshorttext: TWideStringField
      FieldName = 'shorttext'
      Size = 4000
    end
    object cdsArgumentsArticlesarticle_key: TWideStringField
      FieldName = 'article_key'
      Size = 64
    end
    object cdsArgumentsArticlesimagetext: TWideMemoField
      FieldName = 'imagetext'
      BlobType = ftWideMemo
    end
    object cdsArgumentsArticlesattachment: TBlobField
      FieldName = 'attachment'
    end
    object cdsArgumentsArticleshasimage: TBooleanField
      FieldName = 'hasimage'
    end
    object cdsArgumentsArticleshasattach: TBooleanField
      FieldName = 'hasattach'
    end
    object cdsArgumentsArticlesmain_attach_zip_id: TLargeintField
      FieldName = 'main_attach_zip_id'
    end
    object cdsArgumentsArticlesexpiry_date: TDateField
      FieldName = 'expiry_date'
    end
    object cdsArgumentsArticlesstate: TSmallintField
      FieldName = 'state'
    end
    object h: TWideMemoField
      FieldName = 'text'
      BlobType = ftWideMemo
    end
  end
  object dsArgumentsArticles: TDataSource
    DataSet = cdsArgumentsArticles
    Left = 240
    Top = 327
  end
  object qryMainArgumentsSeq: TUniQuery
    SQL.Strings = (
      'select nextval('#39'cms.main_arguments_seq'#39'), now() as sysdate,'
      'system.get_key(currval('#39'cms.main_arguments_seq'#39'), 32);')
    Left = 237
    Top = 208
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
  object qryArgumentsSeq: TUniQuery
    SQL.Strings = (
      'select nextval('#39'cms.arguments_seq'#39'), now() as sysdate,'
      'system.get_key(currval('#39'cms.arguments_seq'#39'), 32);')
    Left = 237
    Top = 264
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
  object dsArticles: TDataSource
    DataSet = cdsArgumentsArticles
    Left = 552
    Top = 216
  end
  object dsArgumentsArticlesFiles: TDataSource
    DataSet = cdsArgumentsArticles
    Left = 552
    Top = 272
  end
  object dsBlobs: TDataSource
    DataSet = cdsSearchBlobFiles
    Enabled = False
    Left = 552
    Top = 336
  end
  object OpenDialogPDF: TOpenDialog
    DefaultExt = '*.pdf;*.doc;*.docx;*.xls;'
    Filter = 
      'Adobe Acrobat PDF (*.pdf)|*.pdf|Word Dcoument (*.docx)|*.docx|Ol' +
      'd Word Dcoument (*.docx)|*.doc|Tutti i Documenti|*.pdf;*.doc;*.d' +
      'ocx;*.xls;'
    FilterIndex = 4
    Left = 712
    Top = 168
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 
      'All (*.gif;*.cur;*.pcx;*.ani;*.apf;*.gif;*.png;*.jpg;*.jpeg;*.bm' +
      'p;*.ico;*.emf;*.wmf;*.tif;*.tiff)|*.gif;*.cur;*.pcx;*.ani;*.apf;' +
      '*.gif;*.png;*.jpg;*.jpeg;*.bmp;*.ico;*.emf;*.wmf;*.tif;*.tiff;*.' +
      'png|CompuServe GIF Image (*.gif)|*.gif|Cursor files (*.cur)|*.cu' +
      'r|PCX Image (*.pcx)|*.pcx|ANI Image (*.ani)|*.ani|APRO APF Forma' +
      't (*.apf)|*.apf|GIF Image (*.gif)|*.gif|Portable Network Graphic' +
      's (*.png)|*.png|JPEG Image File (*.jpg)|*.jpg|JPEG Image File (*' +
      '.jpeg)|*.jpeg|Bitmaps (*.bmp)|*.bmp|Icons (*.ico)|*.ico|Enhanced' +
      ' Metafiles (*.emf)|*.emf|Metafiles (*.wmf)|*.wmf|TIFF Images (*.' +
      'tif)|*.tif|TIFF Images (*.tiff)|*.tiff'
    Left = 712
    Top = 232
  end
  object OpenDialogResources: TOpenDialog
    DefaultExt = '*.css'
    Filter = 
      'Adobe Acrobat PDF (*.pdf)|*.pdf|Css File|*.css|Javascript|*.js|A' +
      'ny File|*.*'
    Left = 712
    Top = 296
  end
  object dspBlob: TDataSetProvider
    Left = 552
    Top = 400
  end
  object cdsSearchBlobFiles: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'filename'
        ParamType = ptInput
        Value = '%'
      end
      item
        DataType = ftLargeint
        Name = 'id'
        ParamType = ptInput
        Value = -1
      end>
    ProviderName = 'dspBlob'
    Left = 552
    Top = 464
    object cdsSearchBlobFilesblob_id: TLargeintField
      FieldName = 'blob_id'
      Required = True
    end
    object cdsSearchBlobFilesblob_size: TLargeintField
      FieldName = 'blob_size'
    end
    object cdsSearchBlobFilesdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object cdsSearchBlobFilesblob_key: TWideStringField
      FieldName = 'blob_key'
      Required = True
      Size = 64
    end
    object cdsSearchBlobFilesdb_user_id: TIntegerField
      FieldName = 'db_user_id'
    end
    object cdsSearchBlobFilesispublic: TBooleanField
      FieldName = 'ispublic'
    end
    object cdsSearchBlobFilescblb_jguid: TWideStringField
      FieldName = 'cblb_jguid'
      Required = True
      Size = 40
    end
    object cdsSearchBlobFilescblb_deleted: TBooleanField
      FieldName = 'cblb_deleted'
    end
    object cdsSearchBlobFilesfile_ext: TWideStringField
      FieldName = 'file_ext'
      Size = 12
    end
    object cdsSearchBlobFilesfilename: TWideStringField
      FieldName = 'filename'
      Size = 256
    end
    object cdsSearchBlobFilesisresource: TBooleanField
      FieldName = 'isresource'
    end
    object cdsSearchBlobFilesfile_name: TWideStringField
      FieldName = 'file_name'
      Size = 256
    end
  end
  object dsImages: TDataSource
    DataSet = cdsImages
    Enabled = False
    Left = 552
    Top = 24
  end
  object dspImages: TDataSetProvider
    Left = 552
    Top = 88
  end
  object cdsImages: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'filename'
        ParamType = ptInput
        Value = '%'
      end
      item
        DataType = ftLargeint
        Name = 'LIMIT'
        ParamType = ptInput
        Value = 1000
      end>
    ProviderName = 'dspImages'
    Left = 552
    Top = 152
    object cdsImagesexternal_file_id: TLargeintField
      FieldName = 'external_file_id'
    end
    object cdsImagescimg_jguid: TWideStringField
      FieldName = 'cimg_jguid'
      Required = True
      Size = 40
    end
    object cdsImagesdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object cdsImagesdb_owner_id: TIntegerField
      FieldName = 'db_owner_id'
    end
    object cdsImagesfilename: TWideStringField
      FieldName = 'filename'
      Size = 512
    end
    object cdsImagesfile_ext: TWideStringField
      FieldName = 'file_ext'
    end
    object cdsImagesfilename_noext: TWideStringField
      FieldName = 'filename_noext'
      Size = 512
    end
    object cdsImagesext_file_key: TWideStringField
      FieldName = 'ext_file_key'
      Size = 64
    end
    object cdsImagescover_image_id: TLargeintField
      FieldName = 'cover_image_id'
    end
    object cdsImagescimg_deleted: TBooleanField
      FieldName = 'cimg_deleted'
    end
    object cdsImagesimage_file: TBlobField
      FieldName = 'image_file'
      Required = True
    end
  end
  object SavePictureDialog1: TSavePictureDialog
    Left = 712
    Top = 360
  end
  object dspArticlesAttachment: TDataSetProvider
    Left = 96
    Top = 544
  end
  object cdsArgumentsArticlesAttachmentsOld: TClientDataSet
    Aggregates = <>
    Params = <
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
    ProviderName = 'dspArticlesAttachment'
    OnReconcileError = cdsArgumentsArticlesAttachmentsOldReconcileError
    Left = 96
    Top = 608
    object cdsArgumentsArticlesAttachmentsOldarticle_id: TLargeintField
      FieldName = 'article_id'
      Required = True
    end
    object cdsArgumentsArticlesAttachmentsOldfile_id: TLargeintField
      FieldName = 'file_id'
      Required = True
    end
    object cdsArgumentsArticlesAttachmentsOlddescription: TWideStringField
      FieldName = 'description'
      Required = True
      Size = 256
    end
    object cdsArgumentsArticlesAttachmentsOldextension: TWideStringField
      FieldName = 'extension'
      Size = 12
    end
    object cdsArgumentsArticlesAttachmentsOldmime: TWideStringField
      FieldName = 'mime'
      Size = 60
    end
    object cdsArgumentsArticlesAttachmentsOlddb_schema_id: TLargeintField
      FieldName = 'db_schema_id'
    end
    object cdsArgumentsArticlesAttachmentsOldcmaa_deleted: TBooleanField
      FieldName = 'cmaa_deleted'
    end
    object cdsArgumentsArticlesAttachmentsOldcmaa_jguid: TWideStringField
      FieldName = 'cmaa_jguid'
      Required = True
      Size = 40
    end
  end
  object dsArgumentsArticlesChange: TDataSource
    DataSet = cdsArgumentsArticles
    OnDataChange = dsArgumentsArticlesChangeDataChange
    Left = 240
    Top = 399
  end
  object dsAttach: TDataSource
    DataSet = cdsArgumentsArticlesAttachments
    Left = 240
    Top = 551
  end
  object vtFilesList: TVirtualTable
    Left = 240
    Top = 464
    Data = {04000000000000000000}
    object vtFilesListFileName: TStringField
      FieldName = 'FileName'
      Size = 256
    end
    object vtFilesListExt: TStringField
      FieldName = 'Ext'
      Size = 10
    end
    object vtFilesListProgress: TSmallintField
      FieldName = 'Progress'
    end
    object vtFilesListFullFileName: TStringField
      FieldName = 'FullFileName'
      Size = 2048
    end
  end
  object dspMainArgumentsMails: TDataSetProvider
    Left = 712
    Top = 488
  end
  object cdsMainArgumentsMails: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'main_argument_id'
        ParamType = ptInput
        Value = 1
      end
      item
        DataType = ftInteger
        Name = 'db_schema_id'
        ParamType = ptInput
        Value = 1
      end>
    ProviderName = 'dspMainArgumentsMails'
    BeforeOpen = cdsMainArgumentsMailsBeforeOpen
    BeforePost = cdsMainArgumentsMailsBeforePost
    Left = 716
    Top = 552
    object cdsMainArgumentsMailsmain_argument_id: TSmallintField
      FieldName = 'main_argument_id'
      Required = True
    end
    object cdsMainArgumentsMailsmail_id: TIntegerField
      FieldName = 'mail_id'
    end
    object cdsMainArgumentsMailsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      Required = True
    end
    object cdsMainArgumentsMailsemail: TWideStringField
      FieldName = 'email'
      Required = True
      Size = 256
    end
    object cdsMainArgumentsMailscmls_jguid: TWideStringField
      FieldName = 'cmls_jguid'
      Required = True
      Size = 40
    end
  end
  object JanuaMailSender1: TJanuaMailSender
    Enabled = False
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    Sent = False
    MailPassword = 'T4nt0v4l4g4t.'
    MailUsername = 'rickyarzu@gmail.com'
    MailServer = 'smtp.gmail.com'
    VerifiedServer = False
    ServerIP = '108.177.122.109'
    CustomMailTest = False
    MailEncryption = jmsNone
    Encryption = False
    Left = 88
    Top = 224
  end
  object JanuaCoreLogger1: TJanuaCoreLogger
    Enabled = False
    Component = Owner
    LogType = jltError
    AutoFileName = True
    IsCustomServer = False
    ErrorFileName = 'Error'
    LogFileName = 'Log'
    Left = 88
    Top = 296
  end
  object qryMailsSeq: TUniQuery
    SQL.Strings = (
      'select nextval('#39'cms.mail_seq'#39'), now() as sysdate,'
      'system.get_key(currval('#39'cms.mail_seq'#39'), 32);')
    Left = 549
    Top = 528
    object qryMailsSeqnextval: TLargeintField
      FieldName = 'nextval'
      ReadOnly = True
    end
    object qryMailsSeqsysdate: TSQLTimeStampField
      FieldName = 'sysdate'
      ReadOnly = True
    end
    object qryMailsSeqget_key: TWideMemoField
      FieldName = 'get_key'
      ReadOnly = True
      BlobType = ftWideMemo
    end
  end
  object fdArticleState: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'state'
        DataType = ftSmallint
      end
      item
        Name = 'description'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 91
    Top = 360
    Content = {
      4144425310000000C7010000FF00010001FF02FF0304001C0000006600640041
      0072007400690063006C0065005300740061007400650005000A000000540061
      0062006C006500060000000000070000080032000000090000FF0AFF0B04000A
      0000007300740061007400650005000A000000730074006100740065000C0001
      0000000E000D000F000110000111000112000113000114000115000A00000073
      007400610074006500FEFF0B0400160000006400650073006300720069007000
      740069006F006E00050016000000640065007300630072006900700074006900
      6F006E000C00020000000E0016001700140000000F0001100001110001120001
      1300011400011500160000006400650073006300720069007000740069006F00
      6E00180014000000FEFEFF19FEFF1AFEFF1BFF1C1D0000000000FF1E0000FFFF
      010009000000416E6E756C6C61746FFEFEFF1C1D000100000020001F00FF1E00
      000000010005000000426F7A7A61FEFEFF1C1D000200000020001F00FF1E0000
      010001000A000000507562626C696361746FFEFEFF1C1D0003000000FF1E0000
      090001000A0000004172636869766961746FFEFEFEFEFEFF21FEFF2223000600
      0000FF24FEFEFE0E004D0061006E0061006700650072001E0055007000640061
      007400650073005200650067006900730074007200790012005400610062006C
      0065004C006900730074000A005400610062006C00650008004E0061006D0065
      00140053006F0075007200630065004E0061006D0065000A0054006100620049
      004400240045006E0066006F0072006300650043006F006E0073007400720061
      0069006E00740073001E004D0069006E0069006D0075006D0043006100700061
      006300690074007900180043006800650063006B004E006F0074004E0075006C
      006C00140043006F006C0075006D006E004C006900730074000C0043006F006C
      0075006D006E00100053006F007500720063006500490044000E006400740049
      006E007400310036001000440061007400610054007900700065001400530065
      006100720063006800610062006C006500120041006C006C006F0077004E0075
      006C006C000800420061007300650014004F0041006C006C006F0077004E0075
      006C006C0012004F0049006E0055007000640061007400650010004F0049006E
      00570068006500720065001A004F0072006900670069006E0043006F006C004E
      0061006D00650018006400740041006E007300690053007400720069006E0067
      000800530069007A006500140053006F007500720063006500530069007A0065
      001C0043006F006E00730074007200610069006E0074004C0069007300740010
      0056006900650077004C006900730074000E0052006F0077004C006900730074
      00060052006F0077000A0052006F0077004900440010004F0072006900670069
      006E0061006C0016007200730055006E006300680061006E006700650064001A
      0052006F0077005000720069006F007200530074006100740065001800520065
      006C006100740069006F006E004C006900730074001C00550070006400610074
      00650073004A006F00750072006E0061006C001200530061007600650050006F
      0069006E0074000E004300680061006E00670065007300}
    object fdArticleStatestate: TSmallintField
      FieldName = 'state'
    end
    object fdArticleStatedescription: TStringField
      FieldName = 'description'
    end
  end
  object ActionListArticle: TActionList
    Left = 88
    Top = 424
    object ActArticlePublish: TAction
      Caption = 'Pubblica Articolo'
      OnExecute = ActArticlePublishExecute
    end
    object ActArticleDelete: TAction
      Caption = 'Elimina Articolo'
      OnExecute = ActArticleDeleteExecute
    end
    object ActArticleMainAttachUpload: TAction
      Caption = 'Allegato Principale'
      OnExecute = ActArticleMainAttachUploadExecute
    end
    object ActArticleMultiAttachUpload: TAction
      Caption = 'Altri Allegati'
      OnExecute = ActArticleMultiAttachUploadExecute
    end
    object ActShowMainAttach: TAction
      Caption = 'ActShowMainAttach'
      OnExecute = ActShowMainAttachExecute
    end
    object ActiArticleArchive: TAction
      Caption = 'Archivia Articolo'
      OnExecute = ActiArticleArchiveExecute
    end
    object ActArticleDraft: TAction
      Caption = 'Salva Bozza'
      OnExecute = ActArticleDraftExecute
    end
    object ActArticleInsertImage: TAction
      Caption = 'Inserisci Immagine'
      OnExecute = ActArticleInsertImageExecute
    end
    object ActArticleNew: TAction
      Caption = 'Nuovo Articolo'
      OnExecute = ActArticleNewExecute
    end
    object ActArticleSendMail: TAction
      Caption = 'Invia Mail'
      OnExecute = ActArticleSendMailExecute
    end
    object AdsNewRecord: TAction
      Caption = 'Nuovo Banner'
      OnExecute = AdsNewRecordExecute
    end
    object AdsDeleteRecord: TAction
      Caption = 'Elimina Banner'
      OnExecute = AdsDeleteRecordExecute
    end
    object AdsSaveRecord: TAction
      Caption = 'Salva Modifiche'
      OnExecute = AdsSaveRecordExecute
    end
    object ActMenuEdit: TAction
      Caption = 'Modifica'
      OnExecute = ActMenuEditExecute
    end
    object ActMenuDefaultImage: TAction
      Caption = 'Imposta Immagine di Default'
      OnExecute = ActMenuDefaultImageExecute
    end
    object ActAttachUpload: TAction
      Caption = 'Carica File'
      OnExecute = ActAttachUploadExecute
    end
    object ActAttachFolderUpload: TAction
      Caption = 'Carica Cartella'
      OnExecute = ActAttachFolderUploadExecute
    end
    object ActAttachSaveUpdates: TAction
      Caption = 'Salva Modifiche'
      OnExecute = ActAttachSaveUpdatesExecute
    end
    object ActAttachFilePreview: TAction
      Caption = 'Vedi File'
      OnExecute = ActAttachFilePreviewExecute
    end
    object ActEmailSaveUpdates: TAction
      Caption = 'Salva Modifiche'
      OnExecute = ActEmailSaveUpdatesExecute
    end
    object ActListArticlesShow: TAction
      Caption = 'Vedi Articoli'
      Checked = True
      GroupIndex = 1
      OnExecute = ActListArticlesShowExecute
    end
    object ActListArticlesDraft: TAction
      Caption = 'Vedi Bozze'
      GroupIndex = 1
      OnExecute = ActListArticlesDraftExecute
    end
    object ActListArticlesDeleted: TAction
      Caption = 'Vedi Eliminati'
      GroupIndex = 1
      OnExecute = ActListArticlesDeletedExecute
    end
    object ActImageNew: TAction
      Caption = 'Nuova Immagine'
    end
    object ActImageUpload: TAction
      Caption = 'Carica Immagine'
      OnExecute = ActImageUploadExecute
    end
    object ActEmailInsertListFile: TAction
      Caption = 'Inserisci Lista Mail'
      OnExecute = ActEmailInsertListFileExecute
    end
    object ActArticleMainAttachDelete: TAction
      Caption = 'ActArticleMainAttachDelete'
      OnExecute = ActArticleMainAttachDeleteExecute
    end
  end
  object dspAdsBanners: TDataSetProvider
    Left = 232
    Top = 16
  end
  object cdsAdsBanners: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'db_schema_id'
        ParamType = ptInput
        Value = 1
      end
      item
        DataType = ftString
        Name = 'ricerca'
        ParamType = ptInput
      end>
    ProviderName = 'dspAdsBanners'
    AfterOpen = cdsAdsBannersAfterOpen
    AfterClose = cdsAdsBannersAfterClose
    BeforePost = cdsAdsBannersBeforePost
    AfterCancel = cdsAdsBannersAfterCancel
    AfterDelete = cdsAdsBannersAfterDelete
    AfterScroll = cdsAdsBannersAfterScroll
    AfterApplyUpdates = cdsAdsBannersAfterApplyUpdates
    Left = 232
    Top = 72
    object cdsAdsBannersimage_url: TWideStringField
      FieldName = 'image_url'
      Size = 2048
    end
    object cdsAdsBannerstarget_url: TWideStringField
      FieldName = 'target_url'
      Size = 2040
    end
    object cdsAdsBannersvisions: TLargeintField
      FieldName = 'visions'
    end
    object cdsAdsBannersclicks: TLargeintField
      FieldName = 'clicks'
    end
    object cdsAdsBannerscustomer_id: TIntegerField
      FieldName = 'customer_id'
    end
    object cdsAdsBannersdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object cdsAdsBannersabnn_jguid: TWideStringField
      FieldName = 'abnn_jguid'
      Required = True
      Size = 40
    end
    object cdsAdsBannersabnn_deleted: TBooleanField
      FieldName = 'abnn_deleted'
    end
    object cdsAdsBannersimage_id: TLargeintField
      FieldName = 'image_id'
    end
    object cdsAdsBannersanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
    end
    object cdsAdsBannerstitle: TWideStringField
      FieldName = 'title'
      Size = 128
    end
    object cdsAdsBannersnumber: TLargeintField
      FieldName = 'number'
      Required = True
    end
    object cdsAdsBannerswidth: TIntegerField
      FieldName = 'width'
    end
    object cdsAdsBannersheight: TIntegerField
      FieldName = 'height'
    end
    object cdsAdsBannerssince: TDateField
      FieldName = 'since'
    end
    object cdsAdsBannersuntil: TDateField
      FieldName = 'until'
    end
  end
  object dsAdsBanners: TDataSource
    DataSet = cdsAdsBanners
    OnDataChange = dsAdsBannersDataChange
    Left = 232
    Top = 136
  end
  object qryBannersSeq: TUniQuery
    SQL.Strings = (
      'select nextval('#39'ads.banners_seq'#39'), now() as sysdate')
    Left = 93
    Top = 40
    object qryBannersSeqnextval: TLargeintField
      FieldName = 'nextval'
      ReadOnly = True
    end
    object qryBannersSeqsysdate: TSQLTimeStampField
      FieldName = 'sysdate'
      ReadOnly = True
    end
  end
  object PgDataSource1: TUniDataSource
    Left = 368
    Top = 496
  end
  object cdsArgumentsArticlesAttachments: TUniQuery
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
    SQLLock.Strings = (
      'SELECT * FROM cms.articles_attachments'
      'WHERE'
      '  article_id = :Old_article_id AND file_id = :Old_file_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT article_id, file_id, description, extension, mime, db_sch' +
        'ema_id, cmaa_deleted, cmaa_jguid FROM cms.articles_attachments'
      'WHERE'
      '  article_id = :article_id AND file_id = :file_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM cms.articles_attachments'
      ''
      ') t')
    SQL.Strings = (
      'SELECT a.*'
      #9'FROM cms.articles_attachments a'
      'where '
      'a.article_id = :article_id'
      'and'
      'a.db_schema_id = :db_schema_id '
      'order by '
      'description')
    BeforePost = cdsArgumentsArticlesAttachmentsBeforePost
    OnNewRecord = cdsArgumentsArticlesAttachmentsNewRecord
    Left = 368
    Top = 584
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
    object cdsArgumentsArticlesAttachmentsarticle_id: TLargeintField
      FieldName = 'article_id'
      Required = True
    end
    object cdsArgumentsArticlesAttachmentsfile_id: TLargeintField
      FieldName = 'file_id'
      Required = True
    end
    object cdsArgumentsArticlesAttachmentsdescription: TWideStringField
      FieldName = 'description'
      Required = True
      Size = 256
    end
    object cdsArgumentsArticlesAttachmentsextension: TWideStringField
      FieldName = 'extension'
      Size = 12
    end
    object cdsArgumentsArticlesAttachmentsmime: TWideStringField
      FieldName = 'mime'
      Size = 60
    end
    object cdsArgumentsArticlesAttachmentsdb_schema_id: TLargeintField
      FieldName = 'db_schema_id'
    end
    object cdsArgumentsArticlesAttachmentscmaa_deleted: TBooleanField
      FieldName = 'cmaa_deleted'
    end
    object cdsArgumentsArticlesAttachmentscmaa_jguid: TWideStringField
      FieldName = 'cmaa_jguid'
      Required = True
      Size = 40
    end
  end
  object OpenDialogTxt: TOpenDialog
    DefaultExt = '*.txt'
    Filter = 'File Test (*.txt)|*.txt'
    FilterIndex = 4
    Left = 712
    Top = 120
  end
end
