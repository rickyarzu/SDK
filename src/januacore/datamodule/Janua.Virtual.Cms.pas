unit Janua.Virtual.Cms;

interface

uses
  // System
  System.Classes,
  // DataModule
  udmVirtualCmsServer,
  // Janua
  Janua.Core.DB.Intf, Janua.Orm.Intf, Janua.Orm.Impl, Janua.Cms.Server.Impl,
  Janua.Cms.Server.Intf, Janua.Server.Intf, JOrm.Cms.Articles.Intf, Janua.Orm.Firedac;

type
  TJanuaVirtualCmsStorage = class(TJanuaDBCmsStorage, IJanuaStorage, IJanuaCmsStorage, IJanuaDBCmsStorage)
  private
    FDM: TdmVirtualCmsServer;
    procedure SetDM(const Value: TdmVirtualCmsServer);
    procedure GetArticlesMock(out Result: IArticles);
  strict protected
    procedure SetAfterDestroyDataset; override;
    procedure SetInternalCreateDBDataSets; override;
    procedure SetInternalCreateDataset; override;
    procedure SetAfterCreateDataset; override;
    procedure SetInternalDestroyDataset; override;
    procedure SetInternalAssignDatasets; override;
  public
    constructor Create; override;
    destructor Destroy; override;
  public
    procedure OpenMainArguments;
    function OpenArguments: Integer;
    function OpenArticles(const aMainArgumentID, aArgumentID: Word; const limit: Word = 20; const page: Word = 1;
      const aIsVideo: boolean = False): Integer; overload;
    function OpenArticles(const aArgumentGUID: TGUID; const limit: Word = 20; const page: Word = 1): Integer; overload;
    function GetArticles(const aMainArgumentID, aArgumentID: Word; const limit: Word = 20; const page: Word = 1;
      const aIsVideo: boolean = False): IArticles; overload;
    function GetArticles(const aArgumentGUID: TGUID; const limit: Word = 20; const page: Word = 1): IArticles; overload;
    // funzioni legacy per retro compatibilità vecchio sistema LND
    function GetArticle(const aArticleID: Int64; out aCount: Word): IArticle;
    function GetArticlesListPos(aMainArgumentID, aPosition, aLimit, aPage: Word; aHasLink: boolean = False): IArticles;
    function GetArticlesList(aMainArgumentID, aArgumentID, aLimit, aPage: Word; aIsVideo: boolean = False)
      : IArticles; overload;
    function GetArticlesList(aArgumentGUID: TGUID; aLimit, aPage: Word; aHasLink: boolean = False): IArticles; overload;
    function GetWarnings(out aCount: Word): IArticles; overload;
    function GetWarnings(const aLimit, aPage: Word; out aCount: Word; aUPDID: Int64 = 0): IArticles; overload;
  public
    property DM: TdmVirtualCmsServer read FDM write SetDM;
  end;

  (*
    TJanuaVTServerCms = class(TJanuaServerCms, IJanuaServerCms, IJanuaServer)
    private
    FVTStorage: IJanuaCmsStorage;
    public
    constructor Create; override;
    end;
  *)

type
  TJanuaServerVirtualCmsFactory = class(TJanuaServerCmsFactory, IJanuaServerCmsFactory)
  public
    function GetCmsStorage: IJanuaCmsStorage; override;
  end;

implementation

uses
  Janua.Orm.Types, System.SysUtils, Firedac.Comp.Client, JOrm.Cms.Articles.Impl;

{ TJanuaVirtualCmsStorage }

procedure TJanuaVirtualCmsStorage.GetArticlesMock(out Result: IArticles);
begin
  self.CreateDataset;
  self.FDM.vtArticlesList.Open;
  self.FDM.vtArticlesAttachments.Open;
  Result := TArticles.Create;
  Result.DirectLoadFromDataset([FDM.vtArticlesList, FDM.vtArticlesAttachments]);
end;

function TJanuaVirtualCmsStorage.GetWarnings(out aCount: Word): IArticles;
begin
  GetArticlesMock(Result);
  aCount := Result.RecordCount;
end;

function TJanuaVirtualCmsStorage.GetWarnings(const aLimit, aPage: Word; out aCount: Word; aUPDID: Int64): IArticles;
begin
  GetArticlesMock(Result);
  aCount := Result.RecordCount;
end;

constructor TJanuaVirtualCmsStorage.Create;
begin
  inherited;

end;

destructor TJanuaVirtualCmsStorage.Destroy;
begin
  if Assigned(self.FDM) then
    FreeAndNil(FDM);
  inherited;
end;

procedure TJanuaVirtualCmsStorage.OpenMainArguments;
begin
  self.CreateDataset;
  if not FDM.vtMainArguments.Active then
    self.FDM.vtMainArguments.Open;
  FDM.vtMainArguments.First;
  if not FDM.vtArguments.Active then
    self.FDM.vtArguments.Open;
end;

procedure TJanuaVirtualCmsStorage.SetAfterCreateDataset;
begin
  inherited;

end;

procedure TJanuaVirtualCmsStorage.SetAfterDestroyDataset;
begin
  inherited;

end;

procedure TJanuaVirtualCmsStorage.SetDM(const Value: TdmVirtualCmsServer);
begin
  FDM := Value;
end;

procedure TJanuaVirtualCmsStorage.SetInternalAssignDatasets;
begin
  inherited;
  //FInternalAssignDatasets :=;
end;

procedure TJanuaVirtualCmsStorage.SetInternalCreateDataset;
begin
  inherited;
  FInternalCreateDataset := procedure
    begin
      if not Assigned(FDM) then
        FDM := TdmVirtualCmsServer.Create(nil)
    end;
end;

procedure TJanuaVirtualCmsStorage.SetInternalCreateDBDataSets;
begin
  inherited;
  FInternalCreateDBDataSets := procedure
    begin
      // SetEntity(TJanuaEntity.AnagraphAnagraphs);
      jdsMainArguments := TJanuaVtDataset.Create(FDM.vtMainArguments, [TJanuaEntity.CmsMainArguments]);
      jdsArguments := TJanuaVtDataset.Create(FDM.vtArguments, [TJanuaEntity.CmsArguments]);
      jdsArticles := TJanuaVtDataset.Create(FDM.vtArticlesList, [TJanuaEntity.CmsArticles]);
      jdsArticlesAttachments := TJanuaVtDataset.Create(FDM.vtArticlesAttachments,
        [TJanuaEntity.CmsArticlesAttachments]);
    end;
end;

procedure TJanuaVirtualCmsStorage.SetInternalDestroyDataset;
begin
  inherited;
  FInternalDestroyDataset := procedure
    begin
      if Assigned(FDM) and not KeepAlive then
        FreeAndNil(FDM);
    end;
end;

function TJanuaVirtualCmsStorage.OpenArguments: Integer;
begin
  self.OpenMainArguments;
  Result := self.jdsMainArguments.RecordCount
end;

function TJanuaVirtualCmsStorage.OpenArticles(const aArgumentGUID: TGUID; const limit, page: Word): Integer;
begin
  self.CreateDataset;
  if not FDM.vtArticlesList.Active then
    self.FDM.vtArticlesList.Open;
  Result := self.FDM.vtArticlesList.RecordCount
end;

function TJanuaVirtualCmsStorage.OpenArticles(const aMainArgumentID, aArgumentID: Word; const limit: Word = 20;
  const page: Word = 1; const aIsVideo: boolean = False): Integer;
begin
  self.CreateDataset;
  if not FDM.vtArticlesList.Active then
    self.FDM.vtArticlesList.Open;
  Result := self.FDM.vtArticlesList.RecordCount
end;

function TJanuaVirtualCmsStorage.GetArticle(const aArticleID: Int64; out aCount: Word): IArticle;
begin
  self.CreateDataset;
  self.FDM.vtArticlesList.Open;
  FDM.vtArticlesAttachments.Open;
  self.FDM.vtArticlesList.First;
  FDM.vtArticlesAttachments.First;
  Result := TArticle.Create;
  aCount := FDM.vtArticlesList.RecordCount;
  Result.DirectLoadFromDataset([FDM.vtArticlesList, FDM.vtArticlesAttachments]); // (self.FDM.vtArticlesList);
end;

function TJanuaVirtualCmsStorage.GetArticles(const aArgumentGUID: TGUID; const limit, page: Word): IArticles;
begin
  GetArticlesMock(Result);
end;

function TJanuaVirtualCmsStorage.GetArticlesList(aMainArgumentID, aArgumentID, aLimit, aPage: Word; aIsVideo: boolean)
  : IArticles;
begin
  GetArticlesMock(Result);
end;

function TJanuaVirtualCmsStorage.GetArticlesList(aArgumentGUID: TGUID; aLimit, aPage: Word; aHasLink: boolean)
  : IArticles;
begin
  GetArticlesMock(Result);
end;

function TJanuaVirtualCmsStorage.GetArticlesListPos(aMainArgumentID, aPosition, aLimit, aPage: Word; aHasLink: boolean)
  : IArticles;
begin
  GetArticlesMock(Result);
end;

function TJanuaVirtualCmsStorage.GetArticles(const aMainArgumentID, aArgumentID: Word; const limit: Word = 20;
  const page: Word = 1; const aIsVideo: boolean = False): IArticles;
begin
  GetArticlesMock(Result);
end;

(*
  { TJanuaVTServerCms }

  constructor TJanuaVTServerCms.Create;
  begin
  inherited;
  FVTStorage := TJanuaVirtualCmsStorage.Create;
  FStorage := FVTStorage;
  end;
*)

{ TJanuaServerVirtualCmsFactory }

function TJanuaServerVirtualCmsFactory.GetCmsStorage: IJanuaCmsStorage;
begin
  Result := TJanuaVirtualCmsStorage.Create;
end;

end.
