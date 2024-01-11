unit udmCms;

interface

uses
  System.SysUtils, System.Classes, Datasnap.Provider, Data.DB,
  Datasnap.DBClient, MemDS, DBAccess, PgAccess, Janua.Core.Cms, Janua.Core.System,
  Janua.Postgres.Functions, Janua.Core.Social, Janua.Core.Mail, Janua.Core.Classes;

type
  TdmCms = class(TDataModule)
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
    qryArticlesarticle_id: TLargeintField;
    qryArticlestitle: TWideStringField;
    qryArticlesabstract: TWideStringField;
    qryArticlesauthor_id: TIntegerField;
    qryArticlestext: TWideMemoField;
    qryArticlesdatetime: TPgTimeStampField;
    qryArticlesexternal_link: TWideStringField;
    qryArticlesimage: TBlobField;
    qryArticlesshorttext: TWideStringField;
    qryArticlesmain_argument_id: TSmallintField;
    qryArticlesargument_id: TSmallintField;
    qryArticlessub_argument_id: TSmallintField;
    qryArticlesspecification_id: TSmallintField;
    qryArticlesarticle_key: TWideStringField;
    qryArticlesmain_argument_des: TWideStringField;
    qryArticlesargument_des: TWideStringField;
    qryArticlessub_argument_des: TWideStringField;
    qryArticlesspecification_des: TWideStringField;
    qrySingleArticle: TPgQuery;
    qrySingleArticlearticle_id: TLargeintField;
    qrySingleArticletitle: TWideStringField;
    qrySingleArticleabstract: TWideStringField;
    qrySingleArticleauthor_id: TIntegerField;
    qrySingleArticletext: TWideMemoField;
    qrySingleArticledatetime: TPgTimeStampField;
    qrySingleArticleexternal_link: TWideStringField;
    qrySingleArticleimage: TBlobField;
    qrySingleArticleshorttext: TWideStringField;
    qrySingleArticlemain_argument_id: TSmallintField;
    qrySingleArticleargument_id: TSmallintField;
    qrySingleArticlesub_argument_id: TSmallintField;
    qrySingleArticlespecification_id: TSmallintField;
    qrySingleArticlearticle_key: TWideStringField;
    qryStudioLegale: TPgQuery;
    qryStudioLegalearticle_id: TLargeintField;
    qryStudioLegaletitle: TWideStringField;
    qryStudioLegaleabstract: TWideStringField;
    qryStudioLegaleauthor_id: TIntegerField;
    qryStudioLegaletext: TWideMemoField;
    qryStudioLegaledatetime: TPgTimeStampField;
    qryStudioLegaleexternal_link: TWideStringField;
    qryStudioLegaleimage: TBlobField;
    qryStudioLegaleshorttext: TWideStringField;
    qryStudioLegalemain_argument_id: TSmallintField;
    qryStudioLegaleargument_id: TSmallintField;
    qryStudioLegalesub_argument_id: TSmallintField;
    qryStudioLegalespecification_id: TSmallintField;
    qryStudioLegalearticle_key: TWideStringField;
    qryStudioLegalemain_argument_des: TWideStringField;
    qryStudioLegaleargument_des: TWideStringField;
    qryStudioLegalesub_argument_des: TWideStringField;
    qryStudioLegalespecification_des: TWideStringField;
    qryNewsFisco: TPgQuery;
    qryNewsFiscoarticle_id: TLargeintField;
    qryNewsFiscotitle: TWideStringField;
    qryNewsFiscoabstract: TWideStringField;
    qryNewsFiscoauthor_id: TIntegerField;
    qryNewsFiscotext: TWideMemoField;
    qryNewsFiscodatetime: TPgTimeStampField;
    qryNewsFiscoexternal_link: TWideStringField;
    qryNewsFiscoimage: TBlobField;
    qryNewsFiscoshorttext: TWideStringField;
    qryNewsFiscomain_argument_id: TSmallintField;
    qryNewsFiscoargument_id: TSmallintField;
    qryNewsFiscosub_argument_id: TSmallintField;
    qryNewsFiscospecification_id: TSmallintField;
    qryNewsFiscoarticle_key: TWideStringField;
    qryNewsFiscomain_argument_des: TWideStringField;
    qryNewsFiscoargument_des: TWideStringField;
    qryNewsFiscosub_argument_des: TWideStringField;
    qryNewsFiscospecification_des: TWideStringField;
    qryUserArticle: TPgQuery;
    qryUserArticlearticle_id: TLargeintField;
    qryUserArticletitle: TWideStringField;
    qryUserArticleabstract: TWideStringField;
    qryUserArticleauthor_id: TIntegerField;
    qryUserArticletext: TWideMemoField;
    qryUserArticledatetime: TPgTimeStampField;
    qryUserArticleexternal_link: TWideStringField;
    qryUserArticleimage: TBlobField;
    qryUserArticleshorttext: TWideStringField;
    qryUserArticlemain_argument_id: TSmallintField;
    qryUserArticleargument_id: TSmallintField;
    qryUserArticlesub_argument_id: TSmallintField;
    qryUserArticlespecification_id: TSmallintField;
    qryUserArticlearticle_key: TWideStringField;
    qryArticlesSeq: TPgQuery;
    qryArticlesSeqnextval: TLargeintField;
    qryArticlesSeqsysdate: TPgTimeStampField;
    qryArticlesSeqget_key: TWideMemoField;
    prcNewArticle: TPgStoredProc;
    argumentscode: TWideStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure PgConnection1BeforeConnect(Sender: TObject);
  private
    FArticle: Janua.Core.Cms.TArticle;
    FVerbose: boolean;
    FSessionKey: string;
    FListSpecifications: TStringList;
    FListMainArguments: TStringList;
    FListSubArguments: TStringList;
    FMessageCount: integer;
    FListArguments: TStringList;
    FLastErrorMessage: string;
    FCms: Janua.Core.Cms.TCms;
    FLastErrorSpecs: string;
    FCmsArguments: Janua.Core.Cms.TCmsArguments;
    FServerSession: TJanuaServerSession;
    FServerFunctions: Janua.Postgres.Functions.TJanuaPostgresServerFunctions;
    FJanuaCoreLogger: TJanuaCoreLogger;
    procedure SetArticle(const Value: Janua.Core.Cms.TArticle);
    procedure SetVerbose(const Value: boolean);
    procedure SetSessionKey(const Value: string);
    procedure SetListArguments(const Value: TStringList);
    procedure SetListMainArguments(const Value: TStringList);
    procedure SetListSpecifications(const Value: TStringList);
    procedure SetListSubArguments(const Value: TStringList);
    procedure SetMessageCount(const Value: integer);
    procedure SetLastErrorMessage(const Value: string);
    procedure SetCms(const Value: Janua.Core.Cms.TCms);
    procedure SetLastErrorSpecs(const Value: string);
    procedure SetCmsArguments(const Value: Janua.Core.Cms.TCmsArguments);
    procedure SetServerSession(const Value: TJanuaServerSession);
    procedure SetJanuaCoreLogger(const Value: TJanuaCoreLogger);
    { Private declarations }
  public
    { Public declarations }
    procedure NewArticle;
    procedure WriteLog(log: string);
    function SearchArticle(ricerca: string; MaxArticles: smallint): smallint;
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
  published
    property Article: Janua.Core.Cms.TArticle read FArticle write SetArticle;
    property Verbose: boolean read FVerbose write SetVerbose;
    property SessionKey: string read FSessionKey write SetSessionKey;
    property ListMainArguments: TStringList read FListMainArguments write SetListMainArguments;
    property ListArguments: TStringList read FListArguments write SetListArguments;
    property ListSubArguments: TStringList read FListSubArguments write SetListSubArguments;
    property ListSpecifications: TStringList read FListSpecifications write SetListSpecifications;
    property MessageCount: integer read FMessageCount write SetMessageCount;
    property LastErrorMessage: string read FLastErrorMessage write SetLastErrorMessage;
    property Cms: Janua.Core.Cms.TCms read FCms write SetCms;
    property LastErrorSpecs: string read FLastErrorSpecs write SetLastErrorSpecs;
    property CmsArguments: Janua.Core.Cms.TCmsArguments read FCmsArguments write SetCmsArguments;
    property ServerSession: TJanuaServerSession read FServerSession write SetServerSession;
    property JanuaCoreLogger: TJanuaCoreLogger read FJanuaCoreLogger write SetJanuaCoreLogger;
  end;

var
  dmCms: TdmCms;

implementation

{ %CLASSGROUP 'Vcl.Controls.TControl' }

{$R *.dfm}
{ TDataModule1 }

procedure TdmCms.SetMainArgument(aMainArgument: string);
begin
  if main_arguments.Locate('main_argument_des', aMainArgument, []) then
  begin

  end;
end;

function TdmCms.readSingleArticle(article_id: int64): boolean;
begin
  Result := getSingleArticle(article_id);
  if Result  then
  assignSingleArticle;
end;

function TdmCms.SearchArticle(ricerca: string; MaxArticles: smallint): smallint;
var
  i: integer;
begin
  if not self.PgConnection1.Connected then
    self.PgConnection1.Connect;
  if not qryArticles.Prepared then
    qryArticles.Prepare;
  qryArticles.Close;
  WriteLog('ricerca: ' + StringReplace(ricerca, ' ', '%', [rfReplaceAll]));
  qryArticles.ParamByName('ricerca').AsString := '%' + StringReplace(ricerca, ' ', '%',
    [rfReplaceAll]) + '%';
  Result := MaxArticles;
  qryArticles.Open;
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
    WriteLog('Articolo numero: ' + IntToStr(i) + ' ' + self.FCms.Articles[i].Title);
    Inc(i);
    qryArticles.Next;
  end;
  self.qryArticles.Close;
  self.PgConnection1.Close;
end;

function TdmCms.SelectArticles(MaxArticles: smallint): smallint;
begin
  // funzione che ricerca gli articoli ...
  qryArticles.ParamByName('ricerca').AsString := '%';
  Result := self.SearchArticle('%', 20);
end;

function TdmCms.getSingleArticle(article_id: int64): boolean;
begin
  qrySingleArticle.Close;
  qrySingleArticle.ParamByName('article_id').AsLargeInt := article_id;
  self.FServerFunctions.OpenDataset(qrySingleArticle);
  Result := qrySingleArticle.RecordCount = 1;
end;

procedure TdmCms.assignSingleArticle;
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

procedure TdmCms.DataModuleCreate(Sender: TObject);
begin
  FServerFunctions := Janua.Postgres.Functions.TJanuaPostgresServerFunctions.Create(self);
  try
    FServerFunctions.OpenDataset(self.cdsMainArguments);
  except
    self.WriteLog('Errore di Apertura dataset Main Arguments');
  end;
  FListSpecifications := TStringList.Create();
  FListMainArguments := TStringList.Create();
  FListSubArguments := TStringList.Create();
  FListArguments := TStringList.Create();
end;

function TdmCms.SaveArticle: boolean;
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
    FLastErrorMessage := ('Attenzione occorre inserire un titolo');
    WriteLog(FLastErrorMessage);
    Result := False;
  end;

  if FArticle.TextAbstract = '' then
  begin
    FLastErrorMessage := ('Attenzione occorre inserire una breve descrizione');
    WriteLog(FLastErrorMessage);
    Result := False
  end;

  if Result then
  begin

    if FArticle.ID = 0 then
    begin
      WriteLog('Inserimento nuovo Articolo: ');
      try
        FServerFunctions.OpenDataset(self.qryArticlesSeq);
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
          FLastErrorMessage := 'Errore di salvataggio Articolo';
          Result := False;
        end;
      end;
    end;

    if Result then
      Result := self.ApplyArticle;

  end;
end;

function TdmCms.ApplyArticle: boolean;
begin
  try
    qrySingleArticle.Close;
    qrySingleArticle.ParamByName('article_id').AsLargeInt := FArticle.ID;
    qrySingleArticle.Close;
    FServerFunctions.OpenDataset(qrySingleArticle);
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
    FLastErrorMessage := 'Articolo salvato regolarmente';
  except
    on e: exception do
    begin
      WriteLog('Errore salvataggio articolo: ' + e.Message);
      FLastErrorMessage := 'Errore di salvataggio Articolo';
      self.FLastErrorSpecs := e.Message;
      Result := False;
    end;
  end;
end;

function TdmCms.deleteSingleArticle(article_id: int64): boolean;
begin
  if getSingleArticle(article_id) then
  begin
    Result := True;
    qrySingleArticle.Delete;
    self.FLastErrorMessage := 'Articolo cancellato regolarmente';
    qrySingleArticle.Close;
    qryArticles.Close;
    FServerFunctions.OpenDataset(qryArticles);
  end
  else
  begin
    Result := False;
    self.FLastErrorMessage := 'Errore di cancellazione articolo ';
    qrySingleArticle.Close;
  end;
end;

procedure TdmCms.populateArguments;
begin
  ListArguments.Clear;
  arguments.First;
  while not arguments.Eof do
  begin
    ListArguments.Add(argumentsargument_des.AsString);
    arguments.Next;
  end;

end;

procedure TdmCms.populateMainArguments;
begin
  FListMainArguments.Clear;
  main_arguments.First;
  while not main_arguments.Eof do
  begin
    FListMainArguments.Add(main_argumentsmain_argument_des.AsString);
    main_arguments.Next;
  end;
end;

procedure TdmCms.populateSpecifications;
begin
  FListSpecifications.Clear;
  FServerFunctions.OpenDataset(specifications);
  specifications.First;
  while not specifications.Eof do
  begin
    FListMainArguments.Add(specificationsspecification_des.AsString);
    specifications.Next;
  end;
end;

procedure TdmCms.populateSubArguments;
begin
  FListSubArguments.Clear;
  FServerFunctions.OpenDataset(sub_arguments);
  sub_arguments.First;
  while not sub_arguments.Eof do
  begin
    FListSubArguments.Add(sub_argumentssub_argument_des.AsString);
    sub_arguments.Next;
  end;
end;

procedure TdmCms.LocateMainArgument(aID: integer);
begin
  try
    if FVerbose then
      self.WriteLog('apertura argomenti locate: ' + IntToStr(aID));
    FServerFunctions.OpenDataset(arguments);
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
      self.WriteLog('Errore TIWuserSessionErgoMercator.LocateMainArgument' + sLineBreak +
        e.Message);
      raise;
    end;
  end
end;

procedure TdmCms.NewArticle;
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

procedure TdmCms.PgConnection1BeforeConnect(Sender: TObject);
begin
  if FServerSession.CustomServer then
  begin
    self.PgConnection1.Server := FServerSession.CustomServerUrl;
    self.PgConnection1.Port := FServerSession.CustomServerPort.ToInteger;
    self.PgConnection1.Database := FServerSession.CustomServerSchema;
  end;
end;

procedure TdmCms.SetArticle(const Value: Janua.Core.Cms.TArticle);
begin
  FArticle := Value;
end;

procedure TdmCms.SetCms(const Value: Janua.Core.Cms.TCms);
begin
  FCms := Value;
end;

procedure TdmCms.SetCmsArguments(const Value: Janua.Core.Cms.TCmsArguments);
begin
  FCmsArguments := Value;
end;

procedure TdmCms.SetJanuaCoreLogger(const Value: TJanuaCoreLogger);
begin
  FJanuaCoreLogger := Value;
  if assigned(FJanuaCoreLogger) then
    FServerFunctions.JanuaLogger := FJanuaCoreLogger;
end;

procedure TdmCms.SetLastErrorMessage(const Value: string);
begin
  FLastErrorMessage := Value;
end;

procedure TdmCms.SetLastErrorSpecs(const Value: string);
begin
  FLastErrorSpecs := Value;
end;

procedure TdmCms.SetListArguments(const Value: TStringList);
begin
  FListArguments := Value;
end;

procedure TdmCms.SetListMainArguments(const Value: TStringList);
begin
  FListMainArguments := Value;
end;

procedure TdmCms.SetListSpecifications(const Value: TStringList);
begin
  FListSpecifications := Value;
end;

procedure TdmCms.SetListSubArguments(const Value: TStringList);
begin
  FListSubArguments := Value;
end;

procedure TdmCms.SetMessageCount(const Value: integer);
begin
  FMessageCount := Value;
end;

procedure TdmCms.SetServerSession(const Value: TJanuaServerSession);
begin
  FServerSession := Value;
  if FServerSession.CustomServer then
  begin
    self.PgConnection1.Server := FServerSession.CustomServerUrl;
    self.PgConnection1.Port := FServerSession.CustomServerPort.ToInteger;
    self.PgConnection1.Database := FServerSession.CustomServerSchema;
  end;
end;

procedure TdmCms.SetSessionKey(const Value: string);
begin
  FSessionKey := Value;
end;

procedure TdmCms.SetVerbose(const Value: boolean);
begin
  FVerbose := Value;
end;

procedure TdmCms.WriteLog(log: string);
begin
  FServerFunctions.WriteLog(self.FSessionKey + ' ' + DateTimeToStr(Now()) + sLineBreak + log);
end;

function TdmCms.writeSingleArticle(article_id: int64): boolean;
begin

end;

end.
