unit udmPgCmsStorage;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, Uni, Janua.Orm.Intf, MemData, MemDS, udmPgStorage,
  JOrm.Cms.Articles.Intf, Datasnap.Provider, Datasnap.DBClient, UniProvider,
  PostgreSQLUniProvider;

type
  TdmPgCmsStorage = class(TdmPgStorage)
    main_arguments: TUniQuery;
    dsMainArguments: TUniDataSource;
    arguments: TUniQuery;
    argumentsmain_argument_id: TSmallintField;
    argumentsargument_id: TSmallintField;
    argumentsargument_des: TWideStringField;
    argumentscode: TWideStringField;
    argumentspos: TSmallintField;
    dsArguments: TUniDataSource;
    sub_arguments: TUniQuery;
    sub_argumentsargument_id: TSmallintField;
    sub_argumentssub_argument_id: TSmallintField;
    sub_argumentssub_argument_des: TWideStringField;
    dsSubArguments: TUniDataSource;
    specifications: TUniQuery;
    specificationsspecification_id: TSmallintField;
    specificationssub_argument_id: TSmallintField;
    specificationsspecification_des: TWideStringField;
    qryUserArticle: TUniQuery;
    main_argumentsmain_argument_id: TSmallintField;
    main_argumentsmain_argument_des: TWideStringField;
    main_argumentscmar_jguid: TWideStringField;
    main_argumentscmar_deleted: TBooleanField;
    main_argumentspos: TSmallintField;
    scMainArgumentsInsert: TUniSQL;
    scMainArgumentsDelete: TUniSQL;
    scMainArgumentsUpdate: TUniSQL;
    qryArticlesList: TUniQuery;
    qryArgumentsArticles: TUniQuery;
    qryArticlesSeq: TUniQuery;
    qryArticlesSeqnextval: TLargeintField;
    qryArticlesSeqsysdate: TDateTimeField;
    qryArticlesSeqget_key: TWideMemoField;
    scArticlesInsert: TUniSQL;
    scArticlesUpdate: TUniSQL;
    scArticlesDelete: TUniSQL;
    qryArgumentsArticlesarticle_id: TLargeintField;
    qryArgumentsArticlestitle: TWideStringField;
    qryArgumentsArticlesabstract: TWideStringField;
    qryArgumentsArticlesauthor_id: TIntegerField;
    qryArgumentsArticlesexternal_link: TWideStringField;
    qryArgumentsArticlesmain_argument_id: TSmallintField;
    qryArgumentsArticlesargument_id: TSmallintField;
    qryArgumentsArticlessub_argument_id: TSmallintField;
    qryArgumentsArticlesspecification_id: TSmallintField;
    qryArgumentsArticlesimage_url: TWideStringField;
    qryArgumentsArticleslanguage_id: TSmallintField;
    qryArgumentsArticlesfeed_id: TIntegerField;
    qryArgumentsArticlescrtc_jguid: TWideStringField;
    qryArgumentsArticlescrtc_deleted: TBooleanField;
    qryArgumentsArticlesmain_image_id: TLargeintField;
    qryArgumentsArticlesmain_attach_id: TLargeintField;
    qryArgumentsArticlesthumb_image_id: TLargeintField;
    dsArgumentsArticles: TUniDataSource;
    argumentsdb_schema_id: TIntegerField;
    argumentscarg_jguid: TWideStringField;
    argumentscarg_deleted: TBooleanField;
    main_argumentsdb_schema_id: TIntegerField;
    qryArgumentsArticlesdb_schema_id: TIntegerField;
    main_argumentsma_image_id: TLargeintField;
    Article: TUniQuery;
    scArgumentsInsert: TUniSQL;
    scArgumentsDelete: TUniSQL;
    scArgumentsUpdate: TUniSQL;
    qryArticlesListarticle_id: TLargeintField;
    qryArticlesListtitle: TWideStringField;
    qryArticlesListabstract: TWideStringField;
    qryArticlesListauthor_id: TIntegerField;
    qryArgumentsChampionships: TUniQuery;
    qryLeagues: TUniQuery;
    argumentsleague_id: TSmallintField;
    qryLeaguesleague_id: TSmallintField;
    qryLeaguesleague_name: TWideStringField;
    qryLeaguesiso_country_code: TWideStringField;
    qryLeaguesleague_position: TSmallintField;
    qryLeaguesleague_code: TWideStringField;
    qryLeaguesdb_schema_id: TIntegerField;
    qryLeaguesremote_id: TSmallintField;
    qryLeaguespromotedcss: TWideStringField;
    qryLeaguesplayoffcss: TWideStringField;
    qryLeagueschampionscss: TWideStringField;
    qryLeaguesplayoutcss: TWideStringField;
    qryLeaguesrelegationcss: TWideStringField;
    qryLeaguesall_players: TBooleanField;
    qryLeaguesflgs_jguid: TWideStringField;
    qryLeaguesflgs_deleted: TBooleanField;
    argumentslkpLeague: TStringField;
    qryUserArticlearticle_id: TLargeintField;
    qryUserArticletitle: TWideStringField;
    qryUserArticleabstract: TWideStringField;
    qryUserArticleauthor_id: TIntegerField;
    qryUserArticletext: TWideMemoField;
    qryUserArticledatetime: TDateTimeField;
    qryUserArticleexternal_link: TWideStringField;
    qryUserArticleimage: TBlobField;
    qryUserArticleshorttext: TWideStringField;
    qryUserArticlemain_argument_id: TSmallintField;
    qryUserArticleargument_id: TSmallintField;
    qryUserArticlesub_argument_id: TSmallintField;
    qryUserArticlespecification_id: TSmallintField;
    qryUserArticlearticle_key: TWideStringField;
    qryUserArticleimage_url: TWideStringField;
    qryUserArticlelanguage_id: TSmallintField;
    qryUserArticlefeed_id: TIntegerField;
    qryUserArticledb_schema_id: TIntegerField;
    qryUserArticlecrtc_jguid: TWideStringField;
    qryUserArticlecrtc_deleted: TBooleanField;
    qryUserArticlemain_image_id: TLargeintField;
    qryUserArticlemain_attach_id: TLargeintField;
    qryUserArticlethumb_image_id: TLargeintField;
    Articlearticle_id: TLargeintField;
    Articletitle: TWideStringField;
    Articleabstract: TWideStringField;
    Articleauthor_id: TIntegerField;
    Articledatetime: TDateTimeField;
    Articleexternal_link: TWideStringField;
    Articleimage: TBlobField;
    Articleshorttext: TWideStringField;
    Articlemain_argument_id: TSmallintField;
    Articleargument_id: TSmallintField;
    Articlesub_argument_id: TSmallintField;
    Articlespecification_id: TSmallintField;
    Articlearticle_key: TWideStringField;
    Articleimage_url: TWideStringField;
    Articlelanguage_id: TSmallintField;
    Articlefeed_id: TIntegerField;
    Articledb_schema_id: TIntegerField;
    Articlecrtc_jguid: TWideStringField;
    Articlecrtc_deleted: TBooleanField;
    Articlemain_image_id: TLargeintField;
    Articlemain_attach_id: TLargeintField;
    Articlethumb_image_id: TLargeintField;
    Articlearticle: TBlobField;
    qryArgumentsArticlesarticle: TBlobField;
    qryArgumentsArticlesdatetime: TDateTimeField;
    cdsArguments: TClientDataSet;
    cdsArgumentsmain_argument_id: TSmallintField;
    cdsArgumentsargument_id: TSmallintField;
    cdsArgumentsargument_des: TWideStringField;
    cdsArgumentscode: TWideStringField;
    cdsArgumentspos: TSmallintField;
    cdsArgumentsdb_schema_id: TIntegerField;
    cdsArgumentscarg_jguid: TWideStringField;
    cdsArgumentscarg_deleted: TBooleanField;
    cdsArgumentsleague_id: TSmallintField;
    cdsArgumentslkpLeague: TStringField;
    cdsArgumentsqryArgumentsArticles: TDataSetField;
    cdsArgumentssub_arguments: TDataSetField;
    cdsArgumentsArticles: TClientDataSet;
    cdsArgumentsArticlesarticle_id: TLargeintField;
    cdsArgumentsArticlestitle: TWideStringField;
    cdsArgumentsArticlesabstract: TWideStringField;
    cdsArgumentsArticlesauthor_id: TIntegerField;
    cdsArgumentsArticlestext: TWideStringField;
    cdsArgumentsArticlesexternal_link: TWideStringField;
    cdsArgumentsArticlesmain_argument_id: TSmallintField;
    cdsArgumentsArticlesargument_id: TSmallintField;
    cdsArgumentsArticlessub_argument_id: TSmallintField;
    cdsArgumentsArticlesspecification_id: TSmallintField;
    cdsArgumentsArticlesimage_url: TWideStringField;
    cdsArgumentsArticleslanguage_id: TSmallintField;
    cdsArgumentsArticlesfeed_id: TIntegerField;
    cdsArgumentsArticlescrtc_jguid: TWideStringField;
    cdsArgumentsArticlescrtc_deleted: TBooleanField;
    cdsArgumentsArticlesmain_image_id: TLargeintField;
    cdsArgumentsArticlesmain_attach_id: TLargeintField;
    cdsArgumentsArticlesthumb_image_id: TLargeintField;
    cdsArgumentsArticlesdb_schema_id: TIntegerField;
    cdsArgumentsArticlesarticle: TBlobField;
    cdsArgumentsArticlesdatetime: TDateTimeField;
    qryArgumentsSeq: TUniQuery;
    qryArgumentsSeqnextval: TLargeintField;
    qryArgumentsSeqsysdate: TDateTimeField;
    qryArgumentsSeqget_key: TWideMemoField;
    qryMainArgumentsSeq: TUniQuery;
    qryMainArgumentsSeqnextval: TLargeintField;
    qryMainArgumentsSeqsysdate: TDateTimeField;
    qryMainArgumentsSeqget_key: TWideMemoField;
    cdsMainArguments: TClientDataSet;
    cdsMainArgumentsmain_argument_id: TSmallintField;
    cdsMainArgumentsmain_argument_des: TWideStringField;
    cdsMainArgumentscmar_jguid: TWideStringField;
    cdsMainArgumentscmar_deleted: TBooleanField;
    cdsMainArgumentspos: TSmallintField;
    cdsMainArgumentsdb_schema_id: TIntegerField;
    cdsMainArgumentsma_image_id: TLargeintField;
    cdsMainArgumentsarguments: TDataSetField;
    dsProvider: TDataSetProvider;
    dsArticlesList: TUniDataSource;
    qryArticlesAttachments: TUniQuery;
    LargeintField1: TLargeintField;
    LargeintField2: TLargeintField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    LargeintField3: TLargeintField;
    BooleanField1: TBooleanField;
    WideStringField4: TWideStringField;
    dsArticle: TUniDataSource;
    ArticleAttachments: TUniQuery;
    LargeintField4: TLargeintField;
    LargeintField5: TLargeintField;
    WideStringField5: TWideStringField;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    LargeintField6: TLargeintField;
    BooleanField2: TBooleanField;
    WideStringField8: TWideStringField;
    qryArgumentArticlesAttachments: TUniQuery;
    qryWarnings: TUniQuery;
    qryWarningsarticle_id: TLargeintField;
    qryWarningstitle: TWideStringField;
    qryWarningsabstract: TWideStringField;
    qryWarningsauthor_id: TIntegerField;
    qryWarningsexternal_link: TWideStringField;
    qryWarningsmain_argument_id: TSmallintField;
    qryWarningsargument_id: TSmallintField;
    qryWarningssub_argument_id: TSmallintField;
    qryWarningsspecification_id: TSmallintField;
    qryWarningsimage_url: TWideStringField;
    qryWarningslanguage_id: TSmallintField;
    qryWarningsmain_image_id: TLargeintField;
    qryWarningsmain_attach_id: TLargeintField;
    qryWarningsshorttext: TWideStringField;
    qryWarningsdatetime: TDateTimeField;
    qryArgumentArticlesAttachmentsarticle_id: TLargeintField;
    qryArgumentArticlesAttachmentsfile_id: TLargeintField;
    qryArgumentArticlesAttachmentsdescription: TWideStringField;
    qryArgumentArticlesAttachmentsextension: TWideStringField;
    qryArgumentArticlesAttachmentsmime: TWideStringField;
    qryArgumentArticlesAttachmentsdb_schema_id: TLargeintField;
    qryArgumentArticlesAttachmentscmaa_deleted: TBooleanField;
    qryArgumentArticlesAttachmentscmaa_jguid: TWideStringField;
    qryMainArgumentsMails: TUniQuery;
    qryMainArgumentsMailsmain_argument_id: TSmallintField;
    qryMainArgumentsMailsmail_id: TIntegerField;
    qryMainArgumentsMailsdb_schema_id: TIntegerField;
    qryMainArgumentsMailsemail: TWideStringField;
    qryMainArgumentsMailscmls_jguid: TWideStringField;
    Articleimagetext: TWideMemoField;
    Articleattachment: TBlobField;
    Articlehasimage: TBooleanField;
    Articlehasattach: TBooleanField;
    Articlemain_attach_zip_id: TLargeintField;
    Articleexpiry_date: TDateField;
    Articlestate: TSmallintField;
    qryArgumentsArticlesimage: TBlobField;
    qryArgumentsArticlesshorttext: TWideStringField;
    qryArgumentsArticlesarticle_key: TWideStringField;
    qryArgumentsArticlesimagetext: TWideMemoField;
    qryArgumentsArticlesattachment: TBlobField;
    qryArgumentsArticleshasimage: TBooleanField;
    qryArgumentsArticleshasattach: TBooleanField;
    qryArgumentsArticlesmain_attach_zip_id: TLargeintField;
    qryArgumentsArticlesexpiry_date: TDateField;
    qryArgumentsArticlesstate: TSmallintField;
    qryArgumentsArticlestext: TWideMemoField;
    Articletext: TWideMemoField;
    qryArticlesListdatetime: TDateTimeField;
    qryArticlesListexternal_link: TWideStringField;
    qryArticlesListimage: TBlobField;
    qryArticlesListshorttext: TWideStringField;
    qryArticlesListmain_argument_id: TSmallintField;
    qryArticlesListargument_id: TSmallintField;
    qryArticlesListsub_argument_id: TSmallintField;
    qryArticlesListspecification_id: TSmallintField;
    qryArticlesListarticle_key: TWideStringField;
    qryArticlesListimage_url: TWideStringField;
    qryArticlesListlanguage_id: TSmallintField;
    qryArticlesListfeed_id: TIntegerField;
    qryArticlesListhasimage: TBooleanField;
    qryArticlesListhasattach: TBooleanField;
    qryArticlesListdb_schema_id: TIntegerField;
    qryArticlesListcrtc_jguid: TWideStringField;
    qryArticlesListcrtc_deleted: TBooleanField;
    qryArticlesListmain_image_id: TLargeintField;
    qryArticlesListmain_attach_id: TLargeintField;
    qryArticlesListthumb_image_id: TLargeintField;
    qryArticlesListmain_attach_zip_id: TLargeintField;
    qryArticlesListexpiry_date: TDateField;
    qryArticlesListstate: TSmallintField;
    procedure PgQueryBeforeOpen(DataSet: TDataSet);
    procedure argumentsBeforeOpen(DataSet: TDataSet);
    procedure PgSqlBeforeExecute(Sender: TObject);
    procedure PgQueryNewRecord(DataSet: TDataSet);
    procedure main_argumentsBeforePost(DataSet: TDataSet);
    procedure main_argumentsNewRecord(DataSet: TDataSet);
    procedure argumentsBeforePost(DataSet: TDataSet);
    procedure argumentsNewRecord(DataSet: TDataSet);
    procedure cdsArgumentsArticlesBeforePost(DataSet: TDataSet);
    procedure cdsArgumentsBeforePost(DataSet: TDataSet);
    procedure cdsMainArgumentsAfterPost(DataSet: TDataSet);
    procedure cdsMainArgumentsBeforePost(DataSet: TDataSet);
    procedure cdsMainArgumentsNewRecord(DataSet: TDataSet);
    procedure cdsArgumentsAfterPost(DataSet: TDataSet);
    procedure qryArticlesListAfterOpen(DataSet: TDataSet);
    procedure ArticleAfterOpen(DataSet: TDataSet);
  public
    procedure OpenMainArguments;
    procedure OpenArgumentsArticles;
    procedure OpenArticles(aMainArgumentID, aArgumentID, aLimit, aPage: Word;
      aHasLink: boolean = False); overload;
    procedure OpenArticlesPos(aMainArgumentID, aPos, aLimit, aPage: Word);
    procedure OpenArticles(aArgumentGUID: TGUID; aLimit, aPage: Word); overload;
    function StoreArgumentArticle(aArticle: IArticle): Int64;
  public // ereditati da dmCmsLND
      procedure RefreshDetails; override;
    procedure OpenArticlesList;
    function GetArticle(const aArticleID: Int64; out aCount: Word): IArticle;
    function GetArticleImage(aArticleID: integer): TBlob;
    function GetArticlesListPos(aMainArgumentID, aPosition, aLimit, aPage: Word; aHasLink: boolean = False)
      : IArticles;
    function GetArticlesList(aMainArgumentID, aArgumentID, aLimit, aPage: Word; aIsVideo: boolean = False)
      : IArticles; overload;
    function GetArticlesList(aArgumentGUID: TGUID; aLimit, aPage: Word; aHasLink: boolean = False)
      : IArticles; overload;

  end;

var
  dmPgCmsStorage: TdmPgCmsStorage;

implementation

uses
  Janua.Application.Framework, Janua.Core.Functions, Janua.Core.Types, Janua.Orm.UniDac,
  JOrm.Cms.Articles.Impl, System.StrUtils, Janua.Uni.Framework, System.Math;

{$R *.dfm}
{ TdmPgCmsStorage }

procedure TdmPgCmsStorage.argumentsBeforeOpen(DataSet: TDataSet);
begin
  self.arguments.ParamByName('db_schema_id').AsInteger := TJanuaApplication.DBSchemaID
end;

procedure TdmPgCmsStorage.argumentsBeforePost(DataSet: TDataSet);
var
  aGuid: TGUID;
begin
  if self.argumentscarg_jguid.AsString = '' then
  begin
    CreateGUID(aGuid);
    argumentscarg_jguid.AsString := aGuid.ToString;
  end;
  if argumentsdb_schema_id.AsInteger = 0 then
    argumentsdb_schema_id.AsInteger := TJanuaApplication.DBSchemaID;
  if argumentscarg_deleted.IsNull then
    argumentscarg_deleted.AsBoolean := False;
  if argumentspos.IsNull then
    argumentspos.AsInteger := 0;
end;

procedure TdmPgCmsStorage.argumentsNewRecord(DataSet: TDataSet);
begin
  execProc(
    procedure
    begin
      if self.main_arguments.State in [dsInsert, dsEdit] then
        main_arguments.Post;
    end, 'argumentsNewRecord', self);

end;

procedure TdmPgCmsStorage.ArticleAfterOpen(DataSet: TDataSet);
begin
  inherited;
  TUniFramework.PgDatasetFunctions.OpenDataset(ArticleAttachments)
end;

procedure TdmPgCmsStorage.cdsArgumentsAfterPost(DataSet: TDataSet);
begin
  if cdsArguments.UpdatesPending then
    self.cdsArguments.ApplyUpdates(-1);
end;

procedure TdmPgCmsStorage.cdsArgumentsArticlesBeforePost(DataSet: TDataSet);
var
  aGuid: TGUID;
begin
  if dmPgCmsStorage.cdsArgumentsArticlescrtc_jguid.AsString = '' then
  begin
    CreateGUID(aGuid);
    dmPgCmsStorage.cdsArgumentsArticlescrtc_jguid.AsString := aGuid.ToString;
  end;
  if dmPgCmsStorage.cdsArgumentsArticleslanguage_id.AsInteger = 0 then
    dmPgCmsStorage.cdsArgumentsArticleslanguage_id.AsInteger := TJanuaApplication.LanguageID;
  // Fields[FAuthor_id].AsInteger := TJanuaApplication.DBUserID;
  if dmPgCmsStorage.cdsArgumentsArticlesauthor_id.AsInteger = 0 then
    dmPgCmsStorage.cdsArgumentsArticlesauthor_id.AsInteger := TJanuaApplication.DBUserID;
  if dmPgCmsStorage.cdsArgumentsArticlesdb_schema_id.AsInteger = 0 then
    dmPgCmsStorage.cdsArgumentsArticlesdb_schema_id.AsInteger := TJanuaApplication.DBSchemaID;

  if dmPgCmsStorage.cdsArgumentsArticlesarticle_id.AsLargeInt = 0 then
  begin
    ServerFunctions.OpenDataset(qryArticlesSeq);
    dmPgCmsStorage.cdsArgumentsArticlesarticle_id.AsLargeInt :=
      dmPgCmsStorage.qryArticlesSeqnextval.AsLargeInt;
    dmPgCmsStorage.cdsArgumentsArticlesdatetime.AsDateTime := dmPgCmsStorage.qryArticlesSeqsysdate.AsDateTime;
    dmPgCmsStorage.qryArticlesSeq.Close;
  end;
end;

procedure TdmPgCmsStorage.cdsArgumentsBeforePost(DataSet: TDataSet);
var
  aGuid: TGUID;
begin
  if self.cdsArgumentscarg_jguid.AsString = '' then
  begin
    CreateGUID(aGuid);
    cdsArgumentscarg_jguid.AsString := aGuid.ToString;
  end;
  if cdsArgumentsdb_schema_id.AsInteger = 0 then
    cdsArgumentsdb_schema_id.AsInteger := TJanuaApplication.DBSchemaID;
  if cdsArgumentscarg_deleted.IsNull then
    cdsArgumentscarg_deleted.AsBoolean := False;
  if self.cdsArgumentsargument_id.AsInteger = 0 then
  begin
    self.qryArgumentsSeq.Close;
    ServerFunctions.OpenDataset(qryArgumentsSeq);
    self.cdsArgumentsargument_id.AsInteger := self.qryArgumentsSeqnextval.AsInteger;
    qryArgumentsSeq.Close;
  end;

  if cdsArgumentsdb_schema_id.AsInteger = 0 then
    cdsArgumentsdb_schema_id.AsInteger := TJanuaApplication.DBSchemaID;
  if cdsArgumentscarg_deleted.IsNull then
    cdsArgumentscarg_deleted.AsBoolean := False;
  if cdsArgumentspos.IsNull then
    cdsArgumentspos.AsInteger := 0;

end;

procedure TdmPgCmsStorage.cdsMainArgumentsAfterPost(DataSet: TDataSet);
begin
  if cdsMainArguments.UpdatesPending then
    self.cdsMainArguments.ApplyUpdates(-1);
end;

procedure TdmPgCmsStorage.cdsMainArgumentsBeforePost(DataSet: TDataSet);
var
  aGuid: TGUID;
begin
  if self.cdsMainArgumentscmar_jguid.AsString = '' then
  begin
    CreateGUID(aGuid);
    cdsMainArgumentscmar_jguid.AsString := aGuid.ToString;
  end;
  if cdsMainArgumentsdb_schema_id.AsInteger = 0 then
    cdsMainArgumentsdb_schema_id.AsInteger := TJanuaApplication.DBSchemaID;
  if cdsMainArgumentscmar_deleted.IsNull then
    cdsMainArgumentscmar_deleted.AsBoolean := False;
  if self.cdsMainArgumentsmain_argument_id.AsInteger = 0 then
  begin
    self.qryMainArgumentsSeq.Close;
    ServerFunctions.OpenDataset(qryMainArgumentsSeq);
    self.cdsMainArgumentsmain_argument_id.AsInteger := self.qryMainArgumentsSeqnextval.AsInteger;
    qryMainArgumentsSeq.Close;
  end;

end;

procedure TdmPgCmsStorage.cdsMainArgumentsNewRecord(DataSet: TDataSet);
begin
  cdsMainArgumentscmar_deleted.AsBoolean := False;
end;

function TdmPgCmsStorage.GetArticle(const aArticleID: Int64; out aCount: Word): IArticle;
begin
  {
    select  *
    from cms.articles a
    where
    article_id = :article_id
  }
  Article.Close;
  self.Article.Params[0].AsLargeInt := aArticleID;
  ServerFunctions.OpenDataset(Article);
  aCount := self.Article.RecordCount;
  Result := TArticle.Create('article');
  // NOTA: La sequenza di caricamento per ora gestisce i RecordSet di primo Livello non ? ricorsiva.
  Result.DirectLoadFromDataset([Article, ArticleAttachments]);
end;

function TdmPgCmsStorage.GetArticleImage(aArticleID: integer): TBlob;
begin
  Result := nil;
  { TODO : Manage GetArticleImage }
end;

function TdmPgCmsStorage.GetArticlesList(aMainArgumentID, aArgumentID, aLimit, aPage: Word;
aIsVideo: boolean = False): IArticles;
VAR
  tmp: integer;
begin
  try
    Result := TArticles.Create;
    self.OpenArticles(aMainArgumentID, aArgumentID, aLimit, aPage, aIsVideo);
    tmp := qryArticlesList.RecordCount;
    if tmp > 0 then
      Result.DirectLoadFromDataset([qryArticlesList, qryArticlesAttachments]);
    tmp := Result.RecordCount;
    if tmp > 0 then
      Result.First;

  Except
    on e: exception do
      raise exception.Create('TdmPgCmsStorage.GetArticlesList Arg_ID: ' + aArgumentID.ToString + ' message: '
        + e.Message);
  end;
end;

procedure TdmPgCmsStorage.main_argumentsBeforePost(DataSet: TDataSet);
var
  aGuid: TGUID;
begin
  execProc(
    procedure
    begin
      if self.main_argumentscmar_jguid.AsString = '' then
      begin
        CreateGUID(aGuid);
        main_argumentscmar_jguid.AsString := aGuid.ToString;
      end;
      if main_argumentsdb_schema_id.AsInteger = 0 then
        main_argumentsdb_schema_id.AsInteger := TJanuaApplication.DBSchemaID;
      if main_argumentscmar_deleted.IsNull then
        main_argumentscmar_deleted.AsBoolean := False;
    end, 'main_argumentsBeforePost', self);

end;

procedure TdmPgCmsStorage.main_argumentsNewRecord(DataSet: TDataSet);
begin
  execProc(
    procedure
    begin
      main_argumentscmar_deleted.AsBoolean := False;
    end, 'main_argumentsNewRecord', self);
end;

procedure TdmPgCmsStorage.PgQueryBeforeOpen(DataSet: TDataSet);
begin
  self.ParamsDefault(DataSet);
  {
    if (DataSet is TUniQuery) then
    with (DataSet as TUniQuery) do
    begin
    ParamByName('db_schema_id').AsInteger := TJanuaApplication.DBSchemaID
    end;
  }
end;

procedure TdmPgCmsStorage.PgQueryNewRecord(DataSet: TDataSet);
begin
  self.QueryDefault(DataSet);
end;

procedure TdmPgCmsStorage.OpenArgumentsArticles;
begin
  ServerFunctions.OpenDataset(qryArgumentsArticles);

end;

procedure TdmPgCmsStorage.OpenArticles(aArgumentGUID: TGUID; aLimit, aPage: Word);
var
  offset, limit: Word;
begin
  offset := IfThen(aPage <= 0, 0, aPage - 1);
  limit := IfThen(aLimit <= 0, 20, aLimit);
end;

procedure TdmPgCmsStorage.OpenArticlesList;
begin

end;

procedure TdmPgCmsStorage.OpenArticlesPos(aMainArgumentID, aPos, aLimit, aPage: Word);
var
  limit, offset: Word;
begin
  limit := aLimit;
  offset := (limit * IfThen(aPage > 0, aPage - 1, 0));
  self.qryArticlesList.Close;
  qryArticlesList.ParamByName('main_argument_id').AsSmallInt := aMainArgumentID;
  qryArticlesList.ParamByName('argument_id').AsSmallInt := 0;
  qryArticlesList.ParamByName('pos').AsSmallInt := aPos;
  qryArticlesList.ParamByName('limit').AsSmallInt := limit;
  qryArticlesList.ParamByName('offset').AsSmallInt := offset;
  TUniFramework.PgDatasetFunctions.OpenDataset(qryArticlesList);

end;

procedure TdmPgCmsStorage.OpenArticles(aMainArgumentID, aArgumentID, aLimit, aPage: Word;
aHasLink: boolean = False);
var
  limit, offset: Word;
begin
  {
    A.MAIN_ARGUMENT_ID = :MAIN_ARGUMENT_ID or (:main_argument_id = 0)
    and
    a.argument_id = :argument_id  or (:argument_id = 0)
    and
    a.db_schema_id = :db_schema_id
    order by  datetime desc, article_id desc
    limit :limit offset :offset
  }
  limit := aLimit;
  offset := (limit * IfThen(aPage > 0, aPage - 1, 0));
  self.qryArticlesList.Close;
  qryArticlesList.ParamByName('ricerca').AsString := '%';
  qryArticlesList.ParamByName('main_argument_id').AsSmallInt := aMainArgumentID;
  qryArticlesList.ParamByName('argument_id').AsSmallInt := aArgumentID;
  qryArticlesList.ParamByName('limit').AsSmallInt := limit;
  qryArticlesList.ParamByName('offset').AsSmallInt := offset;
  qryArticlesList.ParamByName('pos').AsSmallInt := 0;
  TUniFramework.PgDatasetFunctions.OpenDataset(qryArticlesList);
end;

procedure TdmPgCmsStorage.OpenMainArguments;
begin
  execProc(
    procedure
    begin
      main_arguments.Close;
      main_arguments.ParamByName('jguid').AsString := '';
      main_arguments.ParamByName('main_argument_id').AsInteger := 0;
      TUniFramework.PgDatasetFunctions.OpenDataset(main_arguments);
      TUniFramework.PgDatasetFunctions.OpenDataset(arguments);
    end, 'OpenMainArguments', self);

end;

procedure TdmPgCmsStorage.PgSqlBeforeExecute(Sender: TObject);
begin
  if (Sender is TUniSQL) then
    with (Sender as TUniSQL) do
    begin
      ParamByName('db_schema_id').AsInteger := TJanuaApplication.DBSchemaID
    end;
end;

procedure TdmPgCmsStorage.qryArticlesListAfterOpen(DataSet: TDataSet);
begin
  inherited;
  ServerFunctions.OpenDataset(qryArticlesAttachments)
end;

procedure TdmPgCmsStorage.RefreshDetails;
begin
  inherited;

end;

function TdmPgCmsStorage.StoreArgumentArticle(aArticle: IArticle): Int64;
begin
  if aArticle.Article_id.AsLargeInt <= 0 then
  begin
    if main_arguments.Active then
      aArticle.Main_argument_id.AsInteger := self.main_argumentsmain_argument_id.AsInteger;
    aArticle.Argument_id.AsInteger := self.argumentsargument_id.AsInteger;
    self.qryArgumentsArticles.Append;
    aArticle.DirectSaveToDataset(self.qryArgumentsArticles);
    PostDataset(qryArgumentsArticles);
    aArticle.Article_id.AsLargeInt := self.qryArgumentsArticlesarticle_id.AsLargeInt;
    Result := aArticle.Article_id.AsLargeInt;
  end
  else
  begin
    if self.qryArgumentsArticles.Locate('article_id', aArticle.Article_id.AsLargeInt, []) then
    begin
      qryArgumentsArticles.Edit;
      aArticle.DirectSaveToDataset(self.qryArgumentsArticles);
      PostDataset(qryArgumentsArticles);
      Result := aArticle.Article_id.AsLargeInt;
    end
    else
      raise exception.Create('TdmPgCmsStorage.StoreArgumentArticle Article to Update not Found ....');
  end;
end;

function TdmPgCmsStorage.GetArticlesList(aArgumentGUID: TGUID; aLimit, aPage: Word; aHasLink: boolean = False)
  : IArticles;
begin
  Result := TArticles.Create;
  OpenArticles(aArgumentGUID, aLimit, aPage);
  Result.DirectLoadFromDataset(qryArticlesList);
end;

function TdmPgCmsStorage.GetArticlesListPos(aMainArgumentID, aPosition, aLimit, aPage: Word;
aHasLink: boolean = False): IArticles;
begin
  Result := TArticles.Create;
  self.OpenArticlesPos(aMainArgumentID, aPosition, aLimit, aPage);
  Result.DirectLoadFromDataset(qryArticlesList);
end;

end.
