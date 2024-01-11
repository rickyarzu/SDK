unit udmVirtualCmsServer;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Janua.Orm.Intf,  FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Stan.StorageBin;

type
  TdmVirtualCmsServer = class(TDataModule)
    dsMainArguments: TDataSource;
    vtMainArguments: TFDMemTable;
    vtArguments: TFDMemTable;
    vtArticlesList: TFDMemTable;
    vtArgumentsArticles: TFDMemTable;
    vtArticlesAttachments: TFDMemTable;
    vtMainArgumentsjguid: TStringField;
    vtMainArgumentsmain_argument_id: TSmallintField;
    vtMainArgumentsmain_argument_des: TWideStringField;
    vtMainArgumentspos: TSmallintField;
    vtArticlesListarticle_id: TLargeintField;
    vtArticlesListtitle: TWideStringField;
    vtArticlesListabstract: TWideStringField;
    vtArticlesListauthor_id: TIntegerField;
    vtArticlesListtext: TWideMemoField;
    vtArticlesListdatetime: TSQLTimeStampField;
    vtArticlesListexternal_link: TWideStringField;
    vtArticlesListimage: TBlobField;
    vtArticlesListshorttext: TWideStringField;
    vtArticlesListmain_argument_id: TSmallintField;
    vtArticlesListargument_id: TSmallintField;
    vtArticlesListsub_argument_id: TSmallintField;
    vtArticlesListspecification_id: TSmallintField;
    vtArticlesListarticle_key: TWideStringField;
    vtArticlesListimage_url: TWideStringField;
    vtArticlesListlanguage_id: TSmallintField;
    vtArticlesListfeed_id: TIntegerField;
    vtArticlesListimagetext: TWideMemoField;
    vtArticlesListattachment: TBlobField;
    vtArticlesListhasimage: TBooleanField;
    vtArticlesListhasattach: TBooleanField;
    vtArgumentsArticlesarticle_id: TLargeintField;
    vtArgumentsArticlestitle: TWideStringField;
    vtArgumentsArticlesabstract: TWideStringField;
    vtArgumentsArticlesauthor_id: TIntegerField;
    vtArgumentsArticlestext: TWideMemoField;
    vtArgumentsArticlesdatetime: TSQLTimeStampField;
    vtArgumentsArticlesexternal_link: TWideStringField;
    vtArgumentsArticlesimage: TBlobField;
    vtArgumentsArticlesshorttext: TWideStringField;
    vtArgumentsArticlesmain_argument_id: TSmallintField;
    vtArgumentsArticlesargument_id: TSmallintField;
    vtArgumentsArticlessub_argument_id: TSmallintField;
    vtArgumentsArticlesspecification_id: TSmallintField;
    vtArgumentsArticlesarticle_key: TWideStringField;
    vtArgumentsArticlesimage_url: TWideStringField;
    vtArgumentsArticleslanguage_id: TSmallintField;
    vtArgumentsArticlesfeed_id: TIntegerField;
    vtArgumentsArticlesimagetext: TWideMemoField;
    vtArgumentsArticlesattachment: TBlobField;
    vtArgumentsArticleshasimage: TBooleanField;
    vtArgumentsArticleshasattach: TBooleanField;
    vtArticlesAttachmentsarticle_id: TLargeintField;
    vtArticlesAttachmentsfile_id: TLargeintField;
    vtArticlesAttachmentsdescription: TWideStringField;
    vtArticlesAttachmentsextension: TWideStringField;
    vtArticlesAttachmentsmime: TWideStringField;
    vtArticlesAttachmentsdb_schema_id: TLargeintField;
    vtArticlesAttachmentscmaa_deleted: TBooleanField;
    vtArticlesAttachmentscmaa_jguid: TWideStringField;
  end;

var
  dmVirtualCmsServer: TdmVirtualCmsServer;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}


{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}

end.
