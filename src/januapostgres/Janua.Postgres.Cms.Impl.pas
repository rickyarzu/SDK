unit Janua.Postgres.Cms.Impl;

interface

uses

  // Janua Orm
  Janua.Orm.Intf, System.Classes, Janua.Orm.Impl, JOrm.Cms.Articles.Intf,
  // Cms Server
  Janua.Cms.Server.Impl, Janua.Cms.Server.Intf, Janua.Server.Intf,
  // DataModule & Postgres
  Janua.Postgres.Functions, udmPgCmsStorage;

type
  TJanuaPgCmsStorage = class(TJanuaDBCmsStorage, IJanuaStorage, IJanuaCmsStorage, IJanuaDBCmsStorage)
  private
    FDM: TdmPgCmsStorage;
    procedure SetDM(const Value: TdmPgCmsStorage);
  public
    constructor Create; override;
    destructor Destroy; override;
  public
    procedure OpenMainArguments;
    function OpenArguments: integer;
    function OpenArticles(const aArgumentGUID: TGUID; const limit: Word = 20; const page: Word = 1)
      : integer; overload;
    function OpenArticles(const aMainArgumentID, aArgumentID: Word; const limit: Word = 20;
      const page: Word = 1; const aIsVideo: boolean = False): integer; overload;
    function GetArticles(const aMainArgumentID, aArgumentID: Word; const limit: Word = 20;
      const page: Word = 1; const aIsVideo: boolean = False): IArticles; overload;
    function GetArticles(const aArgumentGUID: TGUID; const limit: Word = 20; const page: Word = 1)
      : IArticles; overload;
    // funzioni legacy per retro compatibilità vecchio sistema LND
    function GetArticle(const aArticleID: Int64; out aCount: Word): IArticle;
    function GetArticlesListPos(aMainArgumentID, aPosition, aLimit, aPage: Word; aHasLink: boolean = False)
      : IArticles;
    function GetArticlesList(aMainArgumentID, aArgumentID, aLimit, aPage: Word; aIsVideo: boolean = False)
      : IArticles; overload;
    function GetArticlesList(aArgumentGUID: TGUID; aLimit, aPage: Word; aHasLink: boolean = False)
      : IArticles; overload;
    // Warnings
    function GetWarnings(out aCount: Word): IArticles; overload;
    function GetWarnings(const aLimit, aPage: Word; out aCount: Word; aUPDID: Int64 = 0): IArticles; overload;
  protected
    procedure InternalCreateDataset;
    procedure InternalDestroyDataset;
    procedure InternalAssignDatasets;
  public
    property DM: TdmPgCmsStorage read FDM write SetDM;
  end;

type
  TJanuaServerPgCmsFactory = class(TJanuaServerCmsFactory, IJanuaServerCmsFactory)
  public
    function GetCmsStorage: IJanuaCmsStorage; override;
  end;

implementation

uses Janua.Orm.UniDac, JOrm.Cms.Articles.Impl, System.SysUtils, Spring;

{ TJanuaPgCmsStorage }

procedure TJanuaPgCmsStorage.SetDM(const Value: TdmPgCmsStorage);
begin
  self.FDM := Value
end;

constructor TJanuaPgCmsStorage.Create;
begin
  inherited;
  SetInternalCreateDataset(InternalCreateDataset);
  SetInternalDestroyDataset(InternalDestroyDataset);
end;

destructor TJanuaPgCmsStorage.Destroy;
begin
  if assigned(self.FDM) then
    FreeAndNil(FDM);
  self.FDM := nil;
  inherited;
end;

procedure TJanuaPgCmsStorage.InternalAssignDatasets;
begin
  // Main arguments da rivedere il discorso degli insert e dei Delete............................
  self.jdsMainArguments := TJanuaPgDataset.Create(FDM.main_arguments, FDM.scMainArgumentsInsert,
    FDM.scMainArgumentsUpdate, FDM.scMainArgumentsDelete, FDM.main_arguments);

  self.jdsArguments := TJanuaPgDataset.Create(FDM.arguments, FDM.scArgumentsInsert, FDM.scArgumentsUpdate,
    FDM.scArgumentsDelete, FDM.arguments);

  self.jdsArticles := TJanuaPgDataset.Create(FDM.qryArticlesList, FDM.scArticlesInsert, FDM.scArgumentsUpdate,
    FDM.scArticlesDelete, FDM.qryArticlesList);

  self.JdsArticlesAttachments := TJanuaPgDataset.Create(FDM.qryArticlesAttachments, nil, nil, nil, nil);

end;

procedure TJanuaPgCmsStorage.InternalCreateDataset;
begin
  inherited;
  if not assigned(self.FDM) then
  begin
    self.FDM := TdmPgCmsStorage.Create(nil);
    InternalAssignDatasets;
  end;
end;

procedure TJanuaPgCmsStorage.InternalDestroyDataset;
begin
  inherited;
  if assigned(self.FDM) and not self.KeepAlive then
    FreeAndNil(FDM);
end;

function TJanuaPgCmsStorage.OpenArguments: integer;
begin
  self.OpenMainArguments;
  Result := self.jdsMainArguments.Dataset.RecordCount
end;

function TJanuaPgCmsStorage.OpenArticles(const aArgumentGUID: TGUID; const limit: Word = 20;
  const page: Word = 1): integer;
begin
  self.FDM.OpenArticles(aArgumentGUID, limit, page);
  Result := self.jdsArticles.RecordCount;
end;

function TJanuaPgCmsStorage.OpenArticles(const aMainArgumentID, aArgumentID: Word; const limit: Word = 20;
  const page: Word = 1; const aIsVideo: boolean = False): integer;
begin
  FDM.OpenArticles(aMainArgumentID, aArgumentID, limit, page);
  Result := self.jdsArticles.RecordCount;
end;

procedure TJanuaPgCmsStorage.OpenMainArguments;
begin
  Guard.CheckNotNull(self.FDM, self.ClassName + '.OpenMainArguments FDM is null');
  FDM.OpenMainArguments;
  self.jdsMainArguments.Open;
  self.jdsArguments.Open;
end;

function TJanuaPgCmsStorage.GetArticle(const aArticleID: Int64; out aCount: Word): IArticle;
begin
  Result := FDM.GetArticle(aArticleID, aCount);
end;

function TJanuaPgCmsStorage.GetArticles(const aArgumentGUID: TGUID; const limit, page: Word): IArticles;
var
  Test: integer;
begin
  Result := FDM.GetArticlesList(aArgumentGUID, limit, page);
  Test := Result.RecordCount;
  if Test > 0 then
    Result.First;
end;

function TJanuaPgCmsStorage.GetArticlesList(aMainArgumentID, aArgumentID, aLimit, aPage: Word;
  aIsVideo: boolean): IArticles;
var
  Test: integer;
begin
  Result := FDM.GetArticlesList(aMainArgumentID, aArgumentID, aLimit, aPage);
  Test := Result.RecordCount;
  if Test > 0 then
    Result.First;
end;

function TJanuaPgCmsStorage.GetArticlesList(aArgumentGUID: TGUID; aLimit, aPage: Word; aHasLink: boolean)
  : IArticles;
var
  Test: integer;
begin
  Result := FDM.GetArticlesList(aArgumentGUID, aLimit, aPage, aHasLink);
  Test := Result.RecordCount;
  if Test > 0 then
    Result.First;
end;

function TJanuaPgCmsStorage.GetArticlesListPos(aMainArgumentID, aPosition, aLimit, aPage: Word;
  aHasLink: boolean): IArticles;
var
  Test: integer;
begin
  Result := FDM.GetArticlesListPos(aMainArgumentID, aPosition, aLimit, aPage, aHasLink);
  Test := Result.RecordCount;
  if Test > 0 then
    Result.First;
end;

function TJanuaPgCmsStorage.GetWarnings(out aCount: Word): IArticles;
var
  Test: integer;
begin
  FDM.qryWarnings.Close;
  FDM.qryWarnings.Open;
  aCount := FDM.qryWarnings.RecordCount;
  Result := JOrm.Cms.Articles.Impl.TArticleFactory.CreateRecordset('warnigs', nil, nil);
  if aCount > 0 then
  begin
    Result.DirectLoadFromDataset(self.FDM.qryWarnings);
    Test := Result.RecordCount;
    if Test > 0 then
      Result.First;
  end;
end;

function TJanuaPgCmsStorage.GetWarnings(const aLimit, aPage: Word; out aCount: Word; aUPDID: Int64)
  : IArticles;
begin
  Result := self.GetWarnings(aCount)
end;

function TJanuaPgCmsStorage.GetArticles(const aMainArgumentID, aArgumentID: Word; const limit: Word = 20;
  const page: Word = 1; const aIsVideo: boolean = False): IArticles;
var
  Test: integer;
begin
  Result := FDM.GetArticlesList(aMainArgumentID, aArgumentID, limit, page, aIsVideo);
  Test := Result.RecordCount;
  if Test > 0 then
    Result.First;
end;

{ TJanuaServerPgCmsFactory }

function TJanuaServerPgCmsFactory.GetCmsStorage: IJanuaCmsStorage;
begin
  Result := TJanuaPgCmsStorage.Create
end;

end.
