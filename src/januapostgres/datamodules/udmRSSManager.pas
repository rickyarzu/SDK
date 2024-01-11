unit udmRSSManager;

interface

uses
  System.SysUtils, System.Classes, udmRSSFeed, Data.DB, MemDS, DBAccess,
  PgAccess, Janua.Core.System, Janua.Core.Classes, Janua.Core.Cms,
  Xml.xmldom, Xml.XMLIntf, Xml.Win.msxmldom, Xml.XMLDoc, Soap.XSBuiltIns,
  Janua.Core.Functions, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, System.Variants,  Janua.Server.Functions, udmPublic,
  Datasnap.DBClient, Datasnap.Provider, Janua.Postgres.Functions;

type
  TdmRSSManager = class(TDataModule)
    PgConnection1: TPgConnection;
    prcNewArticle: TPgStoredProc;
    tbRSSFeeds: TPgTable;
    tbRSSFeedsdb_schema_id: TIntegerField;
    tbRSSFeedsfeed_id: TIntegerField;
    tbRSSFeedsurl: TWideStringField;
    tbRSSFeedstag_title: TWideStringField;
    tbRSSFeedstag_description: TWideStringField;
    tbRSSFeedstag_link: TWideStringField;
    tbRSSFeedstag_text: TWideStringField;
    tbRSSFeedstag_date: TWideStringField;
    tbRSSFeedstag_image: TWideStringField;
    tbRSSFeedstag_author: TWideStringField;
    dsFeeds: TDataSource;
    qrySearchArticle: TPgQuery;
    qrySearchFeed: TPgQuery;
    odltbRSSArticles: TPgQuery;
    odltbRSSArticlesdb_schema_id: TIntegerField;
    odltbRSSArticlesarticle_id: TLargeintField;
    odltbRSSArticlesfeed_id: TIntegerField;
    odltbRSSArticlestitle: TWideStringField;
    odltbRSSArticlesdescription: TWideStringField;
    odltbRSSArticleslink: TWideStringField;
    odltbRSSArticlesdate: TPgDateField;
    odltbRSSArticlesimage: TWideStringField;
    odltbRSSArticlesauthor: TWideStringField;
    tbRSSArticles: TPgTable;
    tbRSSArticlesdb_schema_id: TIntegerField;
    tbRSSArticlesarticle_id: TLargeintField;
    tbRSSArticlesfeed_id: TIntegerField;
    tbRSSArticlestitle: TWideStringField;
    tbRSSArticlesdescription: TWideStringField;
    tbRSSArticleslink: TWideStringField;
    tbRSSArticlestext: TWideMemoField;
    tbRSSArticlesdate: TPgDateField;
    tbRSSArticlesimage: TWideStringField;
    tbRSSArticlesauthor: TWideStringField;
    cdsCountries: TClientDataSet;
    cdsLanguages: TClientDataSet;
    cdsLanguagesiso_language_code: TWideStringField;
    cdsLanguagesiso_language_code2: TWideStringField;
    cdsLanguageslanguage_name: TWideStringField;
    cdsLanguageslanguage_id: TSmallintField;
    tbRSSFeedslanguage_id: TSmallintField;
    qrySearchArticlefeed_id: TIntegerField;
    qrySearchFeedfeed_id: TIntegerField;
    tbRSSArticlessent: TBooleanField;
    tbRSSFeedstitle: TWideStringField;
    tbRSSFeedscountry_id: TSmallintField;
    tbRSSFeedslkpLanguage: TStringField;
    tbRSSFeedslkpCountry: TStringField;
    cdsCountriescountry_name: TWideStringField;
    cdsCountriescountry_id: TSmallintField;
    qryUserSession: TPgQuery;
    qryUserSessiondb_session_key: TWideStringField;
    qryUserSessiondb_user_id: TIntegerField;
    qryUserSessiondb_schema_id: TIntegerField;
    qryUserSessionactive: TBooleanField;
    qryUserSessionemail: TWideStringField;
    qryUserSessionpassword: TWideStringField;
    qryUserSessionusername: TWideStringField;
    qryUserSessionisactive: TBooleanField;
    qryUserSessionverify_token: TWideStringField;
    qryUserSessionverified: TBooleanField;
    qryUserSessiondefault_schema_id: TIntegerField;
    qryUserSessionispublic: TBooleanField;
    qryUserSessioninternal_key: TWideStringField;
    qryUserSessiondb_session_id: TLargeintField;
    dsUserSession: TDataSource;
    tbRSSFeedsmain_argument_id: TSmallintField;
    tbRSSFeedsargument_id: TSmallintField;
    tbRSSFeedssub_argument_id: TSmallintField;
    tbRSSFeedslkpMainArgument: TStringField;
    tbRSSFeedslkpArgument: TStringField;
    tbRSSFeedslkpSubArgument: TStringField;
    cdsMainArguments: TClientDataSet;
    cdsArguments: TClientDataSet;
    cdsSubArguments: TClientDataSet;
    cdsArgumentsmain_argument_id: TSmallintField;
    cdsArgumentsargument_id: TSmallintField;
    cdsArgumentsargument_des: TWideStringField;
    cdsArgumentscode: TWideStringField;
    cdsArgumentssub_arguments: TDataSetField;
    cdsMainArgumentsmain_argument_id: TSmallintField;
    cdsMainArgumentsmain_argument_des: TWideStringField;
    cdsMainArgumentsarguments: TDataSetField;
    cdsSubArgumentsargument_id: TSmallintField;
    cdsSubArgumentssub_argument_id: TSmallintField;
    cdsSubArgumentssub_argument_des: TWideStringField;
    cdsSubArgumentsspecifications: TDataSetField;
    cdsSpecifications: TClientDataSet;
    cdsSpecificationsspecification_id: TSmallintField;
    cdsSpecificationssub_argument_id: TSmallintField;
    cdsSpecificationsspecification_des: TWideStringField;
    JanuaPostgresServerFunctions: TJanuaPostgresServerFunctions;
    JanuaCoreLogger1: TJanuaCoreLogger;
    JanuaCoreOS1: TJanuaCoreOS;
    JanuaApplicationProfile1: TJanuaApplicationProfile;
    procedure DataModuleCreate(Sender: TObject);
    procedure tbRSSFeedsNewRecord(DataSet: TDataSet);
    procedure tbRSSFeedsAfterOpen(DataSet: TDataSet);
    procedure tbRSSArticlesNewRecord(DataSet: TDataSet);
    procedure tbRSSFeedsAfterScroll(DataSet: TDataSet);
    procedure dsFeedsDataChange(Sender: TObject; Field: TField);
  private
    FFeeds: TJanuaFeeds;
    FADPXMLBLOG: string;
    FRSSTags: TJanuaRSSTAg;
    FLog: TStringList;
    FXmlText: TStringList;
    Fdb_schema_id: integer;
    procedure SetADPXMLBLOG(const Value: string);
    procedure SetLog(const Value: TStringList);
    procedure SetRSSTags(const Value: TJanuaRSSTAg);
    procedure SetXmlText(const Value: TStringList);
    procedure Setdb_schema_id(const Value: integer);
    { Private declarations }
  public
    { Public declarations }
    procedure WriteLog(log: string);
    procedure AddFeed(aUrl: string);
    procedure LoadFeed(aUrl: string);
    procedure SaveFeed;
    procedure RefreshFeed(aUrl: string);
    function CheckFeed(aUrl: string): boolean;
    function CheckFeedArticle(aUrl: string): boolean;
    function GetRSSList: string;
    function GetFeedList: string;
    function LocateFeed(aUrl: string): boolean;
    procedure OpenRSS;
    function SearchRSS(aUrl: string): integer;
    function GoToFeed(id: int64): boolean;
  published
    property ADPXMLBLOG: string read FADPXMLBLOG write SetADPXMLBLOG;
    property XmlText: TStringList read FXmlText write SetXmlText;
    property log: TStringList read FLog write SetLog;
    property RSSTags: TJanuaRSSTAg read FRSSTags write SetRSSTags;
    property db_schema_id: integer read Fdb_schema_id write Setdb_schema_id;
    property Feeds: TJanuaFeeds read FFeeds;
  end;

var
  dmRSSManager: TdmRSSManager;

implementation

{$R *.dfm}

procedure TdmRSSManager.AddFeed(aUrl: string);
begin
  if not self.CheckFeed(aUrl) then
    try
      FFeeds.RSSTags.SetFeedType(Janua.Core.Classes.jrtStandard);
      self.tbRSSFeeds.Open;
      self.tbRSSFeeds.Append;
      self.tbRSSFeedsdb_schema_id.AsInteger := self.Fdb_schema_id;
      self.tbRSSFeedsurl.AsString := aUrl;
      self.tbRSSFeeds.Post;
      self.tbRSSFeeds.RefreshRecord;
      self.LoadFeed(aUrl);
    except
      on e: exception do
      begin
        self.FLog.Add('Errore Refresh Feeds: ' + e.Message);
      end;
    end;
end;

function TdmRSSManager.CheckFeed(aUrl: string): boolean;
begin
  // funzione che verifica se un Feed è già registrato o non è già registrato
  // nel sistema.
  self.qrySearchFeed.Close;
  self.qrySearchFeed.ParamByName('url').AsString := aUrl;
  self.qrySearchFeed.ParamByName('db_schema_id').AsInteger := self.Fdb_schema_id;
  self.qrySearchFeed.Open;
  Result := self.qrySearchFeed.RecordCount >= 1;
  self.qrySearchFeed.Close;
end;

function TdmRSSManager.CheckFeedArticle(aUrl: string): boolean;
begin
  // idem ma esegue la ricerca sul link all'articolo e non sull'url del sito inserito
  self.qrySearchArticle.Close;
  self.qrySearchArticle.ParamByName('link').AsString := aUrl;
  self.qrySearchArticle.ParamByName('db_schema_id').AsInteger := self.Fdb_schema_id;
  self.qrySearchArticle.Open;
  Result := self.qrySearchArticle.RecordCount >= 1;
  self.qrySearchArticle.Close;
end;

procedure TdmRSSManager.DataModuleCreate(Sender: TObject);
begin
  self.FLog := TStringList.Create;
  self.FXmlText := TStringList.Create;
  self.PgConnection1.Connect;
  Fdb_schema_id := 24;
  self.tbRSSFeeds.Open;
end;

procedure TdmRSSManager.dsFeedsDataChange(Sender: TObject; Field: TField);
begin
  self.cdsMainArguments.Locate('main_argument_id', tbRSSFeedsmain_argument_id.AsInteger, []);
  self.cdsArguments.Locate('argument_id', tbRSSFeedsargument_id.AsInteger, []);
  self.cdsSubArguments.Locate('sub_argument_id', tbRSSFeedssub_argument_id.AsInteger, []);
end;

function TdmRSSManager.GetFeedList: string;
begin
  Result := JanuaPostgresServerFunctions.DatasetToXml(self.tbRSSFeeds)
end;

function TdmRSSManager.GetRSSList: string;
begin
  Result := JanuaPostgresServerFunctions.DatasetToXml(self.tbRSSFeeds)
end;

function TdmRSSManager.GoToFeed(id: int64): boolean;
begin
  Result := dmRSSManager.tbRSSFeeds.Locate('feed_id', id, []);
end;

procedure TdmRSSManager.LoadFeed(aUrl: string);
var
  a: TdmRSSFeed;
begin
  try
    a := TdmRSSFeed.Create(nil);
    try
      a.ADPXMLBLOG := aUrl;
      a.Feed_ID := self.tbRSSFeedsfeed_id.AsInteger;
      self.FFeeds.RSSTags.SetFeedType(jrtStandard);
      a.RSSTags := self.FFeeds.RSSTags;
      a.RefreshFeeds;
      self.FFeeds := a.Feeds;
      self.FLog.Text := a.log.Text;
      self.FXmlText.Text := a.XmlText.Text;
    finally
      self.FLog.Text := a.log.Text;
      self.FXmlText.Text := a.XmlText.Text;
      FreeAndNil(a);
    end;
  except
    on e: exception do
    begin
      self.FLog.Add(e.Message);
    end;
  end;
end;

function TdmRSSManager.LocateFeed(aUrl: string): boolean;
begin

end;

procedure TdmRSSManager.OpenRSS;
begin
  // self.tbRSSFeeds.ParamByName('p_url').AsString := '%';
  self.tbRSSFeeds.Open;
end;

procedure TdmRSSManager.RefreshFeed(aUrl: string);
begin

end;

procedure TdmRSSManager.SaveFeed;
var
  b: Janua.Core.Classes.TJanuaFeed;
begin
  self.LoadFeed(self.tbRSSFeedsurl.AsString);
  // La funzione LadFeed da url carica il Feed, la procedura ha una limitazione basata su un timer
  // la limitazione dovrebbe essere in Mb ma per ora ho impostato un time-out.
  for b in self.FFeeds.Feeds do
  begin
    if not self.CheckFeedArticle(b.LinkUrl) then
    begin
      try
        tbRSSArticles.Append;
        tbRSSArticlesdb_schema_id.AsInteger := Fdb_schema_id;
        tbRSSArticlesfeed_id.AsInteger := tbRSSFeedsfeed_id.AsInteger;
        tbRSSArticlestitle.AsString := b.Title;
        if Length(b.AbstractText) < 2000 then
          tbRSSArticlesdescription.AsString := b.AbstractText
        else
          tbRSSArticlesdescription.AsString := Copy(b.AbstractText, 1, 2000);
        tbRSSArticleslink.AsString := b.LinkUrl;
        tbRSSArticlestext.AsString := b.Text;
        tbRSSArticlesdate.AsDateTime := b.Date;
        tbRSSArticlesimage.AsString := b.Image;
        tbRSSArticlesauthor.AsString := b.Author;
        tbRSSArticles.Post;
      except
        tbRSSArticles.Cancel;
      end;
    end;
  end;
end;

function TdmRSSManager.SearchRSS(aUrl: string): integer;
begin

end;

procedure TdmRSSManager.SetADPXMLBLOG(const Value: string);
begin
  FADPXMLBLOG := Value;
end;

procedure TdmRSSManager.Setdb_schema_id(const Value: integer);
begin
  Fdb_schema_id := Value;
end;

procedure TdmRSSManager.SetLog(const Value: TStringList);
begin
  FLog := Value;
end;

procedure TdmRSSManager.SetRSSTags(const Value: TJanuaRSSTAg);
begin
  FRSSTags := Value;
end;

procedure TdmRSSManager.SetXmlText(const Value: TStringList);
begin
  FXmlText := Value;
end;

procedure TdmRSSManager.tbRSSArticlesNewRecord(DataSet: TDataSet);
begin
  self.tbRSSArticlesdb_schema_id.AsInteger := self.Fdb_schema_id;
end;

procedure TdmRSSManager.tbRSSFeedsAfterOpen(DataSet: TDataSet);
begin
  self.tbRSSArticles.ParamByName('p_feed_id').AsInteger := self.tbRSSFeedsfeed_id.AsInteger;
  self.tbRSSArticles.Open;
end;

procedure TdmRSSManager.tbRSSFeedsAfterScroll(DataSet: TDataSet);
begin
  self.tbRSSArticles.Close;
  self.tbRSSArticles.ParamByName('p_feed_id').AsInteger := self.tbRSSFeedsfeed_id.AsInteger;
  self.tbRSSArticles.Open;

  self.cdsMainArguments.Locate('main_argument_id', tbRSSFeedsmain_argument_id.AsInteger, []);
  self.cdsArguments.Locate('argument_id', tbRSSFeedsargument_id.AsInteger, []);
  self.cdsSubArguments.Locate('sub_argument_id', tbRSSFeedssub_argument_id.AsInteger, []);
end;

procedure TdmRSSManager.tbRSSFeedsNewRecord(DataSet: TDataSet);
begin
  { self.Item := 'item'; }
  tbRSSFeedstag_title.AsString := 'title';
  tbRSSFeedstag_text.Value := 'content:encoded';
  tbRSSFeedstag_description.Value := 'description';
  tbRSSFeedstag_link.Value := 'link';
  tbRSSFeedstag_image.Value := 'image';
  tbRSSFeedstag_date.Value := 'pubDate';
  tbRSSFeedstag_author.Value := 'dc:creator';

end;

procedure TdmRSSManager.WriteLog(log: string);
begin

end;

end.
