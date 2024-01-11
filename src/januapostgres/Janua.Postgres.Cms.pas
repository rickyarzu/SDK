unit Janua.Postgres.Cms;

{$IFDEF FPC}
{$mode objfpc}{$H+}
{$ENDIF}

interface

uses
  // System
  System.SysUtils, Variants, System.Classes,
  // ORM
  Janua.Orm.Intf, Janua.Cms.Server.Impl,
  Janua.Cms.Server.Intf, Janua.Server.Intf,
  // Janua
  Janua.Core.Cms, Janua.Core.Cms.GraphicMenu, Janua.Core.Functions,
  Janua.Core.System, Janua.Core.Classes, Janua.Cms.Types, Janua.Core.Types,
  // Data Modules
  udmPgCmsStorage, udmPgCms, udmPgCmsGraphicMenu, JOrm.Cms.Articles.Intf;

type
  TJanuaPGGraphicMenu = class(TJanuaGraphicMenu)
  private
    DM: udmPgCmsGraphicMenu.TdmPgCmsGraphicMenu;
    procedure SeTdmPgCms(const Value: udmPgCmsGraphicMenu.TdmPgCmsGraphicMenu);
  protected
    procedure CreateDataset; override;
    procedure DestroyDataset; override;
    procedure InternalOpenMenu; override;
  public
    property dmPgCmsGraphicMenu: udmPgCmsGraphicMenu.TdmPgCmsGraphicMenu read DM write SeTdmPgCms;
  published

  end;

type
  { TODO 1 -oRiccardo -cCore : Move the Cms Server to JanuaCustomServerCms }
  TJanuaServerPgCms = class(Janua.Core.Cms.TJanuaCustomServerCms)
  private
    FCms: TCms;
    FFeeds: Janua.Core.Classes.TJanuaFeeds;
    FLastSearch: string;
    FPage: TPage;
    FNumArticles: smallint;
    FServerSystem: TJanuaCustomServerSystem;
    FCountryID: integer;
    FISOCountry: TJanuaISOCountries;
    FISOCulture: TJanuaCultures;
    FShowMessage: boolean;
    FJanuaGraphicMenu: TJanuaGraphicMenu;
    procedure SetCms(const Value: TCms);
    procedure SetLastSearch(const Value: string);
    procedure SetPage(const Value: TPage);
    procedure SetNumArticles(const Value: smallint);
    procedure SetServerSystem(const Value: TJanuaCustomServerSystem);
    function CheckUp: boolean; override;
    procedure SetArticle(const Value: TArticleRecord);
    procedure SetCountryID(const Value: integer);
    procedure SetISOCountry(const Value: TJanuaISOCountries);
    procedure SetISOCulture(const Value: TJanuaCultures);
    procedure SetShowMessage(const Value: boolean);
    procedure SetJanuaGraphicMenu(const Value: TJanuaGraphicMenu);
  protected
    FArticle: TArticleRecord;
    lCms: TdmPgCms;
    procedure DestroyDataModule(Force: boolean = false); override;
    procedure CreateDataModule; override;
    procedure AssignDatasets; override;
  public
    constructor Create(AOwner: TComponent); override;
    Destructor Destroy; override;
    procedure CreateCms;
    procedure DestroyCms;
    function selectArticles(maxarticles: smallint): smallint;
    function SearchArticle(ricerca: string; maxarticles: smallint; language: smallint): smallint;
    function deleteSingleArticle(article_id: int64): boolean;
    function SaveArticle: boolean;
    procedure NewArticle;
    procedure readSingleArticle(id: int64);
    function Activate: boolean; override;
    procedure DeActivate; override;
  published
    property ShowMessage: boolean read FShowMessage write SetShowMessage;
    property LastSearch: string read FLastSearch write SetLastSearch;
    property Cms: TCms read FCms write SetCms;
    property Feeds: Janua.Core.Classes.TJanuaFeeds read FFeeds;
    property page: TPage read FPage write SetPage;
    property NumArticles: smallint read FNumArticles write SetNumArticles;
    property JanuaServerSystem: TJanuaCustomServerSystem read FServerSystem write SetServerSystem;
    property Article: TArticleRecord read FArticle write SetArticle;
    property CountryID: integer read FCountryID write SetCountryID default 1;
    property ISOCountry: TJanuaISOCountries read FISOCountry write SetISOCountry default jicItalia;
    property ISOCulture: TJanuaCultures read FISOCulture write SetISOCulture default jicItalian_Italy;
    property JanuaGraphicMenu: TJanuaGraphicMenu read FJanuaGraphicMenu write SetJanuaGraphicMenu;
  end;

implementation

uses
  JOrm.Cms.MainArguments.Impl, JOrm.Cms.MainArguments.Intf;

{ SELECT cms.articles_ins(:in_article_id, :in_title, :in_abstract,
  :in_author_id, :in_text, :in_datetime, :in_external_link, :in_image,
  :in_shorttext, :in_main_argument_id, :in_argument_id, :in_sub_argument_id,
  :in_specification_id, :in_article_key)
}

{ TJanuaServerCms }

function TJanuaServerPgCms.Activate: boolean;
begin
  Result := inherited;
  try
    if not Result then
    begin
      Result := True;
      self.selectArticles(20);
    end
  except
    on e: exception do
    begin
      self.HasErrors := True;
      Result := false;
      self.lastErrorMessage := 'TJanuaServerCms.selectArticles' + sLineBreak + e.Message;
      self.WriteError(self.lastErrorMessage, e);
    end;
  end;
end;

procedure TJanuaServerPgCms.AssignDatasets;
begin
  inherited;

end;

function TJanuaServerPgCms.CheckUp: boolean;
begin
  if not assigned(self.FServerSystem) then
    self.RaiseException('Select System Component First!!');
  Result := True;
  if self.FVerbose then
    self.writelog('TJanuaServerCms.CheckUp: Check Up');
end;

constructor TJanuaServerPgCms.Create(AOwner: TComponent);
begin
  inherited;
  FCountryID := 1;
  FISOCountry := TJanuaISOCountries.jicItalia;
  FISOCulture := TJanuaCultures.jicItalian_Italy;
  self.FJanuaGraphicMenu := TJanuaPGGraphicMenu.Create(self);
end;

procedure TJanuaServerPgCms.CreateCms;
begin
  if not assigned(lCms) then
    lCms := TdmPgCms.Create(nil);
  self.IDM := lCms;
  if assigned(self.JanuaLogger) and (self.JanuaLogger is TJanuaCoreLogger) then
    lCms.JanuaCoreLogger := TJanuaCoreLogger(self.JanuaLogger);
  self.FConnected := lCms.TestConnect;
end;

procedure TJanuaServerPgCms.CreateDataModule;
begin
  inherited;
  CreateCms;
end;

procedure TJanuaServerPgCms.DeActivate;
begin
  inherited;
  FActive := false;
  setlength(self.FCms.Arguments, 0);
  self.FNumArticles := 0;
end;

function TJanuaServerPgCms.deleteSingleArticle(article_id: int64): boolean;
begin
  try
    if self.CheckUp then
      try
        if self.FVerbose then
          writelog('TJanuaServerCms.deleteSingleArticle TdmCms.Create');
        CreateCms;
        Result := lCms.deleteSingleArticle(article_id);
        self.FCms := lCms.Cms;
        if self.FVerbose then
          writelog('TJanuaServerCms.deleteSingleArticle: ' + Result.ToString);
      finally
        self.DestroyCms;
      end;
  except
    on e: exception do
    begin
      self.HasErrors := True;
      self.lastErrorMessage := 'TJanuaServerCms.selectArticles' + sLineBreak + e.Message;
      self.writelog(self.lastErrorMessage);
    end;
  end;
end;

destructor TJanuaServerPgCms.Destroy;
begin
  DestroyDataModule(True);
  inherited;
end;

procedure TJanuaServerPgCms.DestroyCms;
begin
  if assigned(lCms) then
  begin
    FreeAndNil(lCms);
    self.IDM := nil;
  end;
end;

procedure TJanuaServerPgCms.DestroyDataModule(Force: boolean);
begin
  if assigned(self.lCms) and (Force or not self.KeepAlive) then
    DestroyCms;
  inherited;
end;

procedure TJanuaServerPgCms.NewArticle;
begin
  { TODO : Implementare new article da dmCms }
end;

procedure TJanuaServerPgCms.readSingleArticle(id: int64);
begin
  { TODO : Implementare read article da dmCms }
end;

function TJanuaServerPgCms.SaveArticle: boolean;
begin
  try
    self.CreateCms;
    lCms.Article := self.FArticle;
    Result := lCms.SaveArticle
  finally
    self.DestroyCms;
  end;
end;

function TJanuaServerPgCms.SearchArticle(ricerca: string; maxarticles: smallint; language: smallint)
  : smallint;
begin
  try
    try
      if self.FVerbose then
        writelog('TJanuaServerCms.SearchArticle TdmCms.Create');
      self.CreateCms;
      Result := lCms.SearchArticle(ricerca, maxarticles, '', language);
      self.FCms := lCms.Cms;
      self.FLastSearch := ricerca;
      self.FNumArticles := Result;
      if self.FVerbose then
        writelog('TJanuaServerCms.SearchArticle: ' + Result.ToString);
      // if self.FVerbose then writelog(self.FCms.ToString);
      { TODO -oRiccardo -cCms : aggiungere funzione ToString a Cms }
    finally
      self.DestroyCms;
    end;
  except
    on e: exception do
    begin
      self.HasErrors := True;
      lastErrorMessage := ('TJanuaServerCms.selectArticles' + sLineBreak + e.Message);
      self.writelog(self.lastErrorMessage);
    end;
  end;
end;

function TJanuaServerPgCms.selectArticles(maxarticles: smallint): smallint;
begin
  try
    try
      if self.FVerbose then
        self.writelog('TJanuaServerCms.selectArticles TdmCms.Create');
      self.CreateCms;
      Result := lCms.selectArticles(maxarticles);
      self.FCms := lCms.Cms;
      if self.FVerbose then
        writelog('self.FNumArticles: ' + Result.ToString);
      self.FNumArticles := Result;
      if self.FVerbose then
        writelog('TJanuaServerCms.selectArticles: ' + Result.ToString);
    finally
      self.DestroyCms;
    end;
  except
    on e: exception do
    begin
      self.HasErrors := True;
      self.lastErrorMessage := 'TJanuaServerCms.selectArticles' + sLineBreak + e.Message;
      self.writelog(self.lastErrorMessage);
    end;
  end;
end;

procedure TJanuaServerPgCms.SetArticle(const Value: TArticleRecord);
begin
  FArticle := Value;
end;

procedure TJanuaServerPgCms.SetCms(const Value: TCms);
begin
  FCms := Value;
end;

procedure TJanuaServerPgCms.SetCountryID(const Value: integer);
begin
  FCountryID := Value;
end;

procedure TJanuaServerPgCms.SetISOCountry(const Value: TJanuaISOCountries);
begin
  FISOCountry := Value;
end;

procedure TJanuaServerPgCms.SetISOCulture(const Value: TJanuaCultures);
begin
  FISOCulture := Value;
end;

procedure TJanuaServerPgCms.SetJanuaGraphicMenu(const Value: TJanuaGraphicMenu);
begin
  FJanuaGraphicMenu := Value;
end;

procedure TJanuaServerPgCms.SetLastSearch(const Value: string);
begin
  FLastSearch := Value;
end;

procedure TJanuaServerPgCms.SetNumArticles(const Value: smallint);
begin
  FNumArticles := Value;
end;

procedure TJanuaServerPgCms.SetPage(const Value: TPage);
begin
  FPage := Value;
end;

procedure TJanuaServerPgCms.SetServerSystem(const Value: TJanuaCustomServerSystem);
begin
  FServerSystem := Value;
end;

procedure TJanuaServerPgCms.SetShowMessage(const Value: boolean);
begin
  FShowMessage := Value;
end;

{ TJanuaPGGraphicMenu }

procedure TJanuaPGGraphicMenu.CreateDataset;
begin
  inherited;
  self.DM := TdmPgCmsGraphicMenu.Create(nil);
end;

procedure TJanuaPGGraphicMenu.DestroyDataset;
begin
  inherited;
  if not self.KeepAlive then
    DM.Free;
end;

procedure TJanuaPGGraphicMenu.InternalOpenMenu;
begin
  inherited;
  if not assigned(DM) then
    self.CreateDataset;
  begin

  end;
end;

procedure TJanuaPGGraphicMenu.SeTdmPgCms(const Value: udmPgCmsGraphicMenu.TdmPgCmsGraphicMenu);
begin
  DM := Value;
end;


end.
