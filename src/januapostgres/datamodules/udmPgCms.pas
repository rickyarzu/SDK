unit udmPgCms;

interface

uses
  System.SysUtils, System.Classes, Data.DB,
  udmJanuaPostgresModel,
  Datasnap.DBClient, MemDS, DBAccess, PgAccess, Janua.Core.Cms,
  Janua.Core.System,
  Janua.Postgres.Functions, Janua.Core.Mail, Janua.Cms.Types,
  Janua.Core.Classes, Datasnap.Provider, Janua.Core.Exceptions, Janua.Orm.Intf;

type
  TdmPgCms = class(TdmJanuaPostgresModel)
    main_arguments: TPgQuery;
    main_argumentsmain_argument_id: TSmallintField;
    main_argumentsmain_argument_des: TWideStringField;
    dsMainArguments: TDataSource;
    arguments: TPgQuery;
    argumentsmain_argument_id: TSmallintField;
    argumentsargument_id: TSmallintField;
    argumentsargument_des: TWideStringField;
    dsArguments: TDataSource;
    sub_arguments: TPgQuery;
    sub_argumentsargument_id: TSmallintField;
    sub_argumentssub_argument_id: TSmallintField;
    sub_argumentssub_argument_des: TWideStringField;
    dsSubArguments: TDataSource;
    specifications: TPgQuery;
    specificationsspecification_id: TSmallintField;
    specificationssub_argument_id: TSmallintField;
    specificationsspecification_des: TWideStringField;
    lkpMainArguments: TDataSource;
    lkpSpecifications: TDataSource;
    lkpSubArguments: TDataSource;
    lkpArguments: TDataSource;
    cdsSpecifications: TClientDataSet;
    cdsSpecificationsspecification_id: TSmallintField;
    cdsSpecificationssub_argument_id: TSmallintField;
    cdsSpecificationsspecification_des: TWideStringField;
    cdsSubArguments: TClientDataSet;
    cdsSubArgumentsspecifications: TDataSetField;
    cdsSubArgumentsargument_id: TSmallintField;
    cdsSubArgumentssub_argument_id: TSmallintField;
    cdsSubArgumentssub_argument_des: TWideStringField;
    cdsArguments: TClientDataSet;
    cdsArgumentssub_arguments: TDataSetField;
    cdsArgumentsmain_argument_id: TSmallintField;
    cdsArgumentsargument_id: TSmallintField;
    cdsArgumentsargument_des: TWideStringField;
    dspArguments: TDataSetProvider;
    cdsMainArguments: TClientDataSet;
    cdsMainArgumentsarguments: TDataSetField;
    cdsMainArgumentsmain_argument_id: TSmallintField;
    cdsMainArgumentsmain_argument_des: TWideStringField;
    qryArticles: TPgQuery;
    qrySingleArticle: TPgQuery;
    qryStudioLegale: TPgQuery;
    qryNewsFisco: TPgQuery;
    qryUserArticle: TPgQuery;
    qryArticlesSeq: TPgQuery;
    prcNewArticle: TPgStoredProc;
    argumentscode: TWideStringField;
    qryArticlesarticle_id: TLargeintField;
    qryArticlestitle: TWideStringField;
    qryArticlesabstract: TWideStringField;
    qryArticlesauthor_id: TIntegerField;
    qryArticlestext: TWideMemoField;
    qryArticlesdatetime: TSQLTimeStampField;
    qryArticlesexternal_link: TWideStringField;
    qryArticlesimage: TBlobField;
    qryArticlesshorttext: TWideStringField;
    qryArticlesmain_argument_id: TSmallintField;
    qryArticlesargument_id: TSmallintField;
    qryArticlessub_argument_id: TSmallintField;
    qryArticlesspecification_id: TSmallintField;
    qryArticlesarticle_key: TWideStringField;
    qryArticlesimage_url: TWideStringField;
    qryArticleslanguage_id: TSmallintField;
    qryArticlesfeed_id: TIntegerField;
    qryArticlesmain_argument_des: TWideStringField;
    qryArticlesargument_des: TWideStringField;
    qryArticlessub_argument_des: TWideStringField;
    qryArticlesspecification_des: TWideStringField;
    qrySingleArticlearticle_id: TLargeintField;
    qrySingleArticletitle: TWideStringField;
    qrySingleArticleabstract: TWideStringField;
    qrySingleArticleauthor_id: TIntegerField;
    qrySingleArticletext: TWideMemoField;
    qrySingleArticledatetime: TSQLTimeStampField;
    qrySingleArticleexternal_link: TWideStringField;
    qrySingleArticleimage: TBlobField;
    qrySingleArticleshorttext: TWideStringField;
    qrySingleArticlemain_argument_id: TSmallintField;
    qrySingleArticleargument_id: TSmallintField;
    qrySingleArticlesub_argument_id: TSmallintField;
    qrySingleArticlespecification_id: TSmallintField;
    qrySingleArticlearticle_key: TWideStringField;
    qrySingleArticleimage_url: TWideStringField;
    qrySingleArticlelanguage_id: TSmallintField;
    qrySingleArticlefeed_id: TIntegerField;
    qryStudioLegalearticle_id: TLargeintField;
    qryStudioLegaletitle: TWideStringField;
    qryStudioLegaleabstract: TWideStringField;
    qryStudioLegaleauthor_id: TIntegerField;
    qryStudioLegaletext: TWideMemoField;
    qryStudioLegaledatetime: TSQLTimeStampField;
    qryStudioLegaleexternal_link: TWideStringField;
    qryStudioLegaleimage: TBlobField;
    qryStudioLegaleshorttext: TWideStringField;
    qryStudioLegalemain_argument_id: TSmallintField;
    qryStudioLegaleargument_id: TSmallintField;
    qryStudioLegalesub_argument_id: TSmallintField;
    qryStudioLegalespecification_id: TSmallintField;
    qryStudioLegalearticle_key: TWideStringField;
    qryStudioLegaleimage_url: TWideStringField;
    qryStudioLegalelanguage_id: TSmallintField;
    qryStudioLegalefeed_id: TIntegerField;
    qryStudioLegalemain_argument_des: TWideStringField;
    qryStudioLegaleargument_des: TWideStringField;
    qryStudioLegalesub_argument_des: TWideStringField;
    qryStudioLegalespecification_des: TWideStringField;
    qryNewsFiscoarticle_id: TLargeintField;
    qryNewsFiscotitle: TWideStringField;
    qryNewsFiscoabstract: TWideStringField;
    qryNewsFiscoauthor_id: TIntegerField;
    qryNewsFiscotext: TWideMemoField;
    qryNewsFiscodatetime: TSQLTimeStampField;
    qryNewsFiscoexternal_link: TWideStringField;
    qryNewsFiscoimage: TBlobField;
    qryNewsFiscoshorttext: TWideStringField;
    qryNewsFiscomain_argument_id: TSmallintField;
    qryNewsFiscoargument_id: TSmallintField;
    qryNewsFiscosub_argument_id: TSmallintField;
    qryNewsFiscospecification_id: TSmallintField;
    qryNewsFiscoarticle_key: TWideStringField;
    qryNewsFiscoimage_url: TWideStringField;
    qryNewsFiscolanguage_id: TSmallintField;
    qryNewsFiscofeed_id: TIntegerField;
    qryNewsFiscomain_argument_des: TWideStringField;
    qryNewsFiscoargument_des: TWideStringField;
    qryNewsFiscosub_argument_des: TWideStringField;
    qryNewsFiscospecification_des: TWideStringField;
    qryArticlesSeqnextval: TLargeintField;
    qryArticlesSeqsysdate: TSQLTimeStampField;
    qryArticlesSeqget_key: TWideMemoField;
    qryUserArticlearticle_id: TLargeintField;
    qryUserArticletitle: TWideStringField;
    qryUserArticleabstract: TWideStringField;
    qryUserArticleauthor_id: TIntegerField;
    qryUserArticletext: TWideMemoField;
    qryUserArticledatetime: TSQLTimeStampField;
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
    qryNews: TPgQuery;
    qryNewsid: TLargeintField;
    qryNewsnewsdate: TDateField;
    qryNewsimage: TBlobField;
    qryNewscontent: TWideStringField;
    qryNewstitle: TWideStringField;
    qryNewswebpage: TWideStringField;
    qryEvents: TPgQuery;
    qryEventsid: TLargeintField;
    qryEventsfromdate: TDateField;
    qryEventstodate: TDateField;
    qryEventsimage: TBlobField;
    qryEventscontent: TWideStringField;
    qryEventstitle: TWideStringField;
    qryEventswebsite: TWideStringField;
    qryNewsimagetext: TWideStringField;
    qryNewsTypes: TPgQuery;
    qryNewstype_id: TSmallintField;
    qryNewslkpType: TWideStringField;
    main_argumentspos: TSmallintField;
    argumentspos: TSmallintField;
    argumentsdb_schema_id: TIntegerField;
    argumentscarg_jguid: TWideStringField;
    argumentscarg_deleted: TBooleanField;
    argumentsleague_id: TSmallintField;
    procedure DataModuleCreate(Sender: TObject); override;
    procedure qryNewsNewRecord(DataSet: TDataSet);
    procedure PgErgoConnectionBeforeConnect(Sender: TObject);
    procedure main_argumentsNewRecord(DataSet: TDataSet);
    procedure argumentsNewRecord(DataSet: TDataSet);
  private
    FArticle: TArticleRecord;
    FListSpecifications: TStringList;
    FListMainArguments: TStringList;
    FListSubArguments: TStringList;
    FMessageCount: integer;
    FListArguments: TStringList;
    FCms: TCms;
    FCmsArguments: TCmsArguments;
    procedure SetArticle(const Value: TArticleRecord);
    procedure SetListArguments(const Value: TStringList);
    procedure SetListMainArguments(const Value: TStringList);
    procedure SetListSpecifications(const Value: TStringList);
    procedure SetListSubArguments(const Value: TStringList);
    procedure SetMessageCount(const Value: integer);
    procedure SetCms(const Value: Janua.Cms.Types.TCms);
    procedure SetCmsArguments(const Value: TCmsArguments);
    function GenerateNewsInternal: TJanuaNews;
    { Private declarations }
  public
    { Public declarations }
    procedure NewArticle;
    function SearchArticle(ricerca: string; MaxArticles: smallint; ArgumentIndex: string; Language: smallint)
      : smallint;
    function getSingleArticle(article_id: int64): boolean;
    function writeSingleArticle(article_id: int64): boolean;
    function readSingleArticle(article_id: int64): boolean;
    function deleteSingleArticle(article_id: int64): boolean;
    function SaveArticle: boolean;
    function ApplyArticle: boolean;
    procedure assignSingleArticle;
    procedure LocateMainArgument(aID: integer);
    procedure populateSubArguments;
    procedure populateArguments;
    procedure populateMainArguments;
    procedure populateSpecifications;
    procedure SetMainArgument(aMainArgument: string);
    function SelectArticles(MaxArticles: smallint): smallint;
    function GenerateNews: TJanuaNews; overload;
    function GenerateNews(aDate: TDate): TJanuaNews; overload;
    function GenerateNews(aLimit: integer): TJanuaNews; overload;
  published
    property Article: TArticleRecord read FArticle write SetArticle;
    property ListMainArguments: TStringList read FListMainArguments write SetListMainArguments;
    property ListArguments: TStringList read FListArguments write SetListArguments;
    property ListSubArguments: TStringList read FListSubArguments write SetListSubArguments;
    property ListSpecifications: TStringList read FListSpecifications write SetListSpecifications;
    property MessageCount: integer read FMessageCount write SetMessageCount;
    property Cms: Janua.Cms.Types.TCms read FCms write SetCms;
    property CmsArguments: Janua.Cms.Types.TCmsArguments read FCmsArguments write SetCmsArguments;
  end;

var
  dmPgCms: TdmPgCms;

implementation

{$R *.dfm}
{ TDataModule1 }

procedure TdmPgCms.SetMainArgument(aMainArgument: string);
begin
  if main_arguments.Locate('main_argument_des', aMainArgument, []) then
  begin

  end;
end;

function TdmPgCms.readSingleArticle(article_id: int64): boolean;
begin
  Result := getSingleArticle(article_id);
  if Result then
    assignSingleArticle;
end;

function TdmPgCms.SearchArticle(ricerca: string; MaxArticles: smallint; ArgumentIndex: string;
  Language: smallint): smallint;
var
  i: integer;
begin
  if not self.PgErgoConnection.Connected then
    self.PgErgoConnection.Connect;
  if not qryArticles.Prepared then
    qryArticles.Prepare;
  qryArticles.Close;
  WriteLog('ricerca: ' + StringReplace(ricerca, ' ', '%', [rfReplaceAll]));
  qryArticles.ParamByName('ricerca').AsString := '%' + StringReplace(ricerca, ' ', '%', [rfReplaceAll]) + '%';
  qryArticles.ParamByName('ricerca').AsString := ricerca;
  qryArticles.ParamByName('language_id').AsInteger := Language;
  // impostare l'indice di ricerca degli argomenti presenti nelle liste degli argomenti di sistema
  // occorre creare gli array di Argomenti di sistema????
  qryArticles.ParamByName('p_main_argument_id').AsInteger := 0;

  Result := MaxArticles;
  ServerFunctions.OpenDataset(qryArticles);
  qryArticles.First;
  if Result > qryArticles.RecordCount then
    Result := qryArticles.RecordCount;
  SetLength(self.FCms.Articles, Result);
  i := 0;
  while not(qryArticles.Eof or (i = Result - 1)) do
  begin
    self.FCms.Articles[i].Title := qryArticlestitle.AsWideString;
    self.FCms.Articles[i].TextAbstract := qryArticlesabstract.AsWideString;
    self.FCms.Articles[i].Likes := 0;
    self.FCms.Articles[i].YuLike := False;
    self.FCms.Articles[i].ID := qryArticlesarticle_id.AsInteger;
    self.FCms.Articles[i].Link := qryArticlesexternal_link.AsString;
    self.FCms.Articles[i].Date := qryArticlesdatetime.AsDateTime;
    self.FCms.Articles[i].Index := i;
    // WriteLog('Articolo numero: ' + IntToStr(i) + ' ' + self.FCms.Articles[i].Title);
    Inc(i);
    qryArticles.Next;
  end;
  self.qryArticles.Close;
  self.PgErgoConnection.Close;
end;

function TdmPgCms.SelectArticles(MaxArticles: smallint): smallint;
begin
  // funzione che ricerca gli articoli ...
  qryArticles.ParamByName('ricerca').AsString := '%';
  Result := self.SearchArticle('%', 20, '', 1);
end;

function TdmPgCms.getSingleArticle(article_id: int64): boolean;
begin
  qrySingleArticle.Close;
  qrySingleArticle.ParamByName('article_id').AsLargeInt := article_id;
  self.ServerFunctions.OpenDataset(qrySingleArticle);
  Result := qrySingleArticle.RecordCount = 1;
end;

procedure TdmPgCms.argumentsNewRecord(DataSet: TDataSet);
begin
  inherited;
  argumentspos.Value := self.arguments.RecordCount + 1;
end;

procedure TdmPgCms.assignSingleArticle;
begin
  // manca la data dell'articolo .....
  FArticle.Title := qrySingleArticletitle.AsString;
  FArticle.TextAbstract := qrySingleArticleabstract.AsString;
  FArticle.ID := qrySingleArticlearticle_id.AsInteger;
  FArticle.OwnerID := qrySingleArticleauthor_id.AsInteger;
  FArticle.Text := qrySingleArticletext.AsString;
  FArticle.Link := qrySingleArticleexternal_link.AsString;
  FArticle.ArticleDate := self.qrySingleArticledatetime.AsDateTime;
  if FArticle.Text = '' then
    FArticle.Text := qrySingleArticleshorttext.AsString;
end;

procedure TdmPgCms.DataModuleCreate(Sender: TObject);
begin
  inherited;
  FListSpecifications := TStringList.Create();
  FListMainArguments := TStringList.Create();
  FListSubArguments := TStringList.Create();
  FListArguments := TStringList.Create();
end;

function TdmPgCms.SaveArticle: boolean;
var
  isNew: boolean;
begin
  WriteLog('Nuovo Articolo');

  Result := True;

  WriteLog(FArticle.Title);

  WriteLog(FArticle.TextAbstract);

  WriteLog(FArticle.Text);

  if FArticle.Title = '' then
  begin
    LastErrorMessage := ('Attenzione occorre inserire un titolo');
    WriteLog(LastErrorMessage);
    Result := False;
  end;

  if FArticle.TextAbstract = '' then
  begin
    LastErrorMessage := ('Attenzione occorre inserire una breve descrizione');
    WriteLog(LastErrorMessage);
    Result := False
  end;

  if Result then
  begin

    if FArticle.ID = 0 then
    begin
      WriteLog('Inserimento nuovo Articolo: ');
      try
        ServerFunctions.OpenDataset(self.qryArticlesSeq);
        FArticle.ID := qryArticlesSeqnextval.AsInteger;
        FArticle.ArticleDate := qryArticlesSeqsysdate.AsDateTime;
        WriteLog('Inserimento nuovo Articolo: ' + qryArticlesSeqnextval.AsString + ' -- ' +
          qryArticlesSeqsysdate.AsString);
        isNew := True;
        qryArticlesSeq.Close;
      except
        on e: exception do
        begin
          WriteLog('errore sequenza: ' + e.Message);
          LastErrorMessage := 'Errore di salvataggio Articolo';
          Result := False;
        end;
      end;
    end;

    if Result then
      Result := self.ApplyArticle;

  end;
end;

function TdmPgCms.ApplyArticle: boolean;
begin
  try
    qrySingleArticle.Close;
    qrySingleArticle.ParamByName('article_id').AsLargeInt := FArticle.ID;
    qrySingleArticle.Close;
    ServerFunctions.OpenDataset(qrySingleArticle);
    if qrySingleArticle.RecordCount = 0 then
      qrySingleArticle.Append;
    qrySingleArticle.Edit;
    qrySingleArticlearticle_id.AsInteger := FArticle.ID;
    qrySingleArticletitle.AsWideString := FArticle.Title;
    qrySingleArticleabstract.AsWideString := FArticle.TextAbstract;
    qrySingleArticleauthor_id.AsInteger := FArticle.OwnerID;
    qrySingleArticletext.AsWideString := FArticle.Text;
    qrySingleArticledatetime.AsDateTime := FArticle.ArticleDate;
    qrySingleArticleexternal_link.AsWideString := FArticle.Link;
    self.qrySingleArticlemain_argument_id.AsInteger := 0;
    self.qrySingleArticleargument_id.AsInteger := 0;
    self.qrySingleArticlesub_argument_id.AsInteger := 0;
    self.qrySingleArticlespecification_id.AsInteger := 0;

    if Length(FArticle.Text) < 4000 then
      qrySingleArticleshorttext.AsString := FArticle.Text;
    qrySingleArticletext.AsString := FArticle.Text;
    qrySingleArticle.Post;
    Result := True;
    LastErrorMessage := 'Articolo salvato regolarmente';
  except
    on e: exception do
    begin
      WriteLog('Errore salvataggio articolo: ' + e.Message);
      self.WriteError('Errore salvataggio articolo: ', e);
      Result := False;
    end;
  end;
end;

function TdmPgCms.deleteSingleArticle(article_id: int64): boolean;
begin
  if getSingleArticle(article_id) then
  begin
    Result := True;
    qrySingleArticle.Delete;
    self.LastErrorMessage := 'Articolo cancellato regolarmente';
    qrySingleArticle.Close;
    qryArticles.Close;
    ServerFunctions.OpenDataset(qryArticles);
  end
  else
  begin
    Result := False;
    self.LastErrorMessage := 'Errore di cancellazione articolo ';
    qrySingleArticle.Close;
  end;
end;

function TdmPgCms.GenerateNews(aLimit: integer): TJanuaNews;
begin
  self.qryNews.Close;
  self.qryNews.ParamByName('limit').AsInteger := aLimit;
  qryNews.Open;
  Result := self.GenerateNewsInternal;
end;

function TdmPgCms.GenerateNews: TJanuaNews;
begin

end;

function TdmPgCms.GenerateNews(aDate: TDate): TJanuaNews;
begin

end;

procedure TdmPgCms.populateArguments;
begin
  ListArguments.Clear;
  arguments.First;
  while not arguments.Eof do
  begin
    ListArguments.Add(argumentsargument_des.AsString);
    arguments.Next;
  end;

end;

procedure TdmPgCms.populateMainArguments;
begin
  FListMainArguments.Clear;
  main_arguments.First;
  while not main_arguments.Eof do
  begin
    FListMainArguments.Add(main_argumentsmain_argument_des.AsString);
    main_arguments.Next;
  end;
end;

procedure TdmPgCms.populateSpecifications;
begin
  FListSpecifications.Clear;
  ServerFunctions.OpenDataset(specifications);
  specifications.First;
  while not specifications.Eof do
  begin
    FListMainArguments.Add(specificationsspecification_des.AsString);
    specifications.Next;
  end;
end;

procedure TdmPgCms.populateSubArguments;
begin
  FListSubArguments.Clear;
  ServerFunctions.OpenDataset(sub_arguments);
  sub_arguments.First;
  while not sub_arguments.Eof do
  begin
    FListSubArguments.Add(sub_argumentssub_argument_des.AsString);
    sub_arguments.Next;
  end;
end;

procedure TdmPgCms.qryNewsNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryNewsnewsdate.AsDateTime := Date();
  qryNewstype_id.AsInteger := 1;
end;

procedure TdmPgCms.LocateMainArgument(aID: integer);
begin
  try
    if FVerbose then
      self.WriteLog('apertura argomenti locate: ' + IntToStr(aID));
    ServerFunctions.OpenDataset(arguments);
    arguments.Locate('main_argument_id', aID, []);
    self.populateArguments;
    self.arguments.First;
    self.populateSubArguments;
    self.sub_arguments.First;
    self.populateSpecifications;
    self.specifications.First;
    arguments.Close;
  except
    on e: exception do
    begin
      self.WriteError('Errore TIWuserSessionErgoMercator.LocateMainArgument', e);

    end;
  end
end;

procedure TdmPgCms.main_argumentsNewRecord(DataSet: TDataSet);
begin
  inherited;
  main_argumentspos.Value := self.main_arguments.RecordCount + 1;
end;

procedure TdmPgCms.NewArticle;
begin
  if self.FVerbose then
    self.WriteLog('inserimento nuovo articolo');
  FArticle.Title := '';
  FArticle.Text := '';
  FArticle.TextAbstract := '';
  FArticle.ArticleDate := Date();
  FArticle.Link := '';
  FArticle.ID := 0;
  FArticle.MainArgument.ID := 0;
  LocateMainArgument(0);
  FArticle.MainArgument.Title := self.main_argumentsmain_argument_des.AsString;
  FArticle.Argument.ID := 0;
  FArticle.Argument.Title := self.argumentsargument_des.AsString;
  FArticle.SubArgument.ID := 0;
  FArticle.SubArgument.Title := self.sub_argumentssub_argument_des.AsString;
  FArticle.Specification.ID := 0;
  FArticle.Specification.Title := self.specificationsspecification_des.AsWideString;
end;

procedure TdmPgCms.PgErgoConnectionBeforeConnect(Sender: TObject);
begin
  inherited;
  // Verificare la connessione al Server ..........................
end;

procedure TdmPgCms.SetArticle(const Value: TArticleRecord);
begin
  FArticle := Value;
end;

procedure TdmPgCms.SetCms(const Value: Janua.Cms.Types.TCms);
begin
  FCms := Value;
end;

procedure TdmPgCms.SetCmsArguments(const Value: TCmsArguments);
begin
  FCmsArguments := Value;
end;

procedure TdmPgCms.SetListArguments(const Value: TStringList);
begin
  FListArguments := Value;
end;

procedure TdmPgCms.SetListMainArguments(const Value: TStringList);
begin
  FListMainArguments := Value;
end;

procedure TdmPgCms.SetListSpecifications(const Value: TStringList);
begin
  FListSpecifications := Value;
end;

procedure TdmPgCms.SetListSubArguments(const Value: TStringList);
begin
  FListSubArguments := Value;
end;

procedure TdmPgCms.SetMessageCount(const Value: integer);
begin
  FMessageCount := Value;
end;

function TdmPgCms.writeSingleArticle(article_id: int64): boolean;
begin
  Result := False;

end;

function TdmPgCms.GenerateNewsInternal: TJanuaNews;
var
  aNewsRecord: TJanuaNewsRecord;
begin
  qryNews.First;
  Result.Clear;
  while not qryNews.Eof do
  begin
    aNewsRecord := Default (TJanuaNewsRecord);
    aNewsRecord.ID := qryNewsid.AsLargeInt;
    aNewsRecord.newsdate := qryNewsnewsdate.AsDateTime;
    aNewsRecord.content := qryNewscontent.AsWideString;
    aNewsRecord.Title := qryNewstitle.AsWideString;
    aNewsRecord.webpage := qryNewswebpage.AsWideString;
    aNewsRecord.Image := qryNewsimagetext.AsWideString;
    Result.Add(aNewsRecord);
    qryNews.Next;
  end;
end;

end.
