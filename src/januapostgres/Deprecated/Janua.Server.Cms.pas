unit Janua.Server.Cms;

{$IFDEF FPC}
{$mode objfpc}{$H+}
{$ENDIF}

interface

uses
  SysUtils, Variants, Classes, DB, PgAccess, Janua.Core.Functions, HTTPApp,
  Janua.Core.JPublic, Janua.Core.Cms, Janua.Core.Social, udmPgCms,
  Janua.Server.System, Janua.Core.System, Janua.Server.Functions,
  Janua.Core.Classes;

type
  TJanuaServerPgCms = class(TJanuaCustomServer)
  private
    FCms: Janua.Core.Cms.TCms;
    FFeeds: Janua.Core.Classes.TJanuaFeeds;
    FLastSearch: string;
    FPage: Janua.Core.Cms.TPage;
    FNumArticles: smallint;
    FApplicationProfile: TJanuaApplicationProfile;
    FServerSystem: TJanuaServerSystem;
    FCountryID: integer;
    FISOCountry: TJanuaISOCountries;
    FISOCulture: TJanuaCultures;
    FShowMessage: boolean;
    procedure SetCms(const Value: Janua.Core.Cms.TCms);
    procedure SetLastSearch(const Value: string);
    procedure SetPage(const Value: Janua.Core.Cms.TPage);
    procedure SetNumArticles(const Value: smallint);
    procedure SetApplicationProfile(const Value: TJanuaApplicationProfile);
    procedure SetServerSystem(const Value: TJanuaServerSystem);
    function CheckUp: boolean;
    procedure SetArticle(const Value: TArticle);
    procedure SetCountryID(const Value: integer);
    procedure SetISOCountry(const Value: TJanuaISOCountries);
    procedure SetISOCulture(const Value: TJanuaCultures);
    procedure SetShowMessage(const Value: boolean);
  protected
    FArticle: TArticle;
    lCms: TdmPgCms;
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
    property Cms: Janua.Core.Cms.TCms read FCms write SetCms;
    property Feeds: Janua.Core.Classes.TJanuaFeeds read FFeeds;
    property Page: Janua.Core.Cms.TPage read FPage write SetPage;
    property NumArticles: smallint read FNumArticles write SetNumArticles;
    property JanuaServerSystem: TJanuaServerSystem read FServerSystem write SetServerSystem;
    property JApplicationProfile: TJanuaApplicationProfile read FApplicationProfile
      write SetApplicationProfile;
    property Article: TArticle read FArticle write SetArticle;
    property CountryID: integer read FCountryID write SetCountryID default 1;
    property ISOCountry: TJanuaISOCountries read FISOCountry write SetISOCountry default jicItalia;
    property ISOCulture: TJanuaCultures read FISOCulture write SetISOCulture
      default jicItalian_Italy;
  end;

implementation

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
      self.FHasErrors := True;
      Result := False;
      self.FLastErrorMessage := 'TJanuaServerCms.selectArticles' + sLineBreak + e.Message;
      self.WriteError(self.FLastErrorMessage, e);
    end;
  end;
end;

function TJanuaServerPgCms.CheckUp: boolean;
begin
  if not assigned(self.FServerSystem) then
    self.RaiseException('Select System Component First!!');
  if not assigned(self.FApplicationProfile) then
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
end;

procedure TJanuaServerPgCms.CreateCms;
begin
  if not assigned(lCms) then
    lCms := TdmPgCms.Create(nil);
  if assigned(self.JanuaLogger) and (self.JanuaLogger is TJanuaCoreLogger) then
    lCms.JanuaCoreLogger := TJanuaCoreLogger(self.JanuaLogger);
end;

procedure TJanuaServerPgCms.DeActivate;
begin
  inherited;
  FActive := False;
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
      self.FHasErrors := True;
      self.FLastErrorMessage := 'TJanuaServerCms.selectArticles' + sLineBreak + e.Message;
      self.writelog(self.FLastErrorMessage);
    end;
  end;
end;

destructor TJanuaServerPgCms.Destroy;
begin
  inherited;
end;

procedure TJanuaServerPgCms.DestroyCms;
begin
  if assigned(lCms) then
    FreeAndNil(lCms);
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
      self.FHasErrors := True;
      FLastErrorMessage := ('TJanuaServerCms.selectArticles' + sLineBreak + e.Message);
      self.writelog(self.FLastErrorMessage);
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
      self.FHasErrors := True;
      self.FLastErrorMessage := 'TJanuaServerCms.selectArticles' + sLineBreak + e.Message;
      self.writelog(self.FLastErrorMessage);
    end;
  end;
end;

procedure TJanuaServerPgCms.SetApplicationProfile(const Value: TJanuaApplicationProfile);
begin
  FApplicationProfile := Value;
end;

procedure TJanuaServerPgCms.SetArticle(const Value: TArticle);
begin
  FArticle := Value;
end;

procedure TJanuaServerPgCms.SetCms(const Value: Janua.Core.Cms.TCms);
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

procedure TJanuaServerPgCms.SetLastSearch(const Value: string);
begin
  FLastSearch := Value;
end;

procedure TJanuaServerPgCms.SetNumArticles(const Value: smallint);
begin
  FNumArticles := Value;
end;

procedure TJanuaServerPgCms.SetPage(const Value: Janua.Core.Cms.TPage);
begin
  FPage := Value;
end;

procedure TJanuaServerPgCms.SetServerSystem(const Value: TJanuaServerSystem);
begin
  FServerSystem := Value;
end;

procedure TJanuaServerPgCms.SetShowMessage(const Value: boolean);
begin
  FShowMessage := Value;
end;

end.
