unit Janua.Web.WebModule;

interface

uses
  // system
  System.SysUtils, System.Classes, System.Generics.Collections,

  // http
  Datasnap.DSAuth, IPPeerServer, Datasnap.DSCommonServer, Datasnap.DSHTTP, Web.HTTPApp,
  Datasnap.DSHTTPCommon, Datasnap.DSHTTPWebBroker, Datasnap.DSServer,

  // Janua Libraries ...............................................................
  Janua.Core.System, Janua.Core.Health, Janua.Core.Http, Janua.Core.Functions, Janua.Core.Entities,
  Janua.Postgres.System, Janua.Core.Cms, Janua.Postgres.Cms, Janua.Core.Classes, Janua.Core.Football,
  Janua.Postgres.Football, Janua.Core.Mail, Janua.Core.Cloud, Janua.Postgres.Health, Janua.Core.JPublic,
  Janua.Postgres.JPublic,

  // DB
  Data.DB, MemDS, DBAccess, Janua.Core.Servers, Janua.Postgres.Functions, Janua.Components.Mail, Janua.Core.Commons, 
  Janua.Core.Legacy;

{
  begin
  self.FMessages := FMessages + '<p>' + 'coordinates not found using defaults </p>';
  self.HS.latitude := 9.2080925;
  self.HS.longitude := 45.4655236;
  end;
}

type
  TWebModule1 = class(TWebModule)
    JanuaCoreLogger1: TJanuaCoreLogger;
    JanuaMailSender1: TJanuaMailSender;
    procedure WebModule1DefaultHandlerAction(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
      var Handled: boolean);
    procedure WebModuleCreate(Sender: TObject);
    procedure WebModule1FootballRankingHandlerAction(Sender: TObject; Request: TWebRequest;
      Response: TWebResponse; var Handled: boolean);
    procedure WebModule1FootballMatchesHandlerAction(Sender: TObject; Request: TWebRequest;
      Response: TWebResponse; var Handled: boolean);
    procedure WebModule1FootballNextMatchesHandlerAction(Sender: TObject; Request: TWebRequest;
      Response: TWebResponse; var Handled: boolean);
    procedure WebModule1FootballGoalRankingHandlerAction(Sender: TObject; Request: TWebRequest;
      Response: TWebResponse; var Handled: boolean);

    procedure WebModule1TestHandlerAction(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
      var Handled: boolean);
    procedure DSHTTPServiceFileDispatcher1BeforeDispatch(Sender: TObject; const AFileName: string;
      AContext: TDSHTTPContext; Request: TDSHTTPRequest; Response: TDSHTTPResponse; var Handled: boolean);
    procedure WebModuleDestroy(Sender: TObject);
    procedure WebModule1TestActionAction(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
      var Handled: boolean);
    procedure WebModule1HomeSelect2JsAction(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
      var Handled: boolean);
    procedure WebModule1HomeYoutubeJsAction(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
      var Handled: boolean);
    procedure WebModule1SearchHandlerAction(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
      var Handled: boolean);
    procedure WebModule1SearchGoogleMapsAction(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
      var Handled: boolean);
    procedure WebModule1SystemLoginAction(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
      var Handled: boolean);
    procedure WebModule1RegisterAction(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
      var Handled: boolean);
    procedure WebModule1BookingAction(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
      var Handled: boolean);
    procedure WebModule1ConfirmationAction(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
      var Handled: boolean);
  private
    // WEb Actions procedures and parameters.
    PrivateItems: TDictionary<string, TWebActionItem>;
    procedure SetupDico33(Request: TWebRequest; var Response: TWebResponse; HS: TJanuaWebSession);
    procedure ShowBooking;
    procedure ShowProfile(HS: TJanuaWebSession);
    procedure ShowLogin;
  private
    // Cookie Elements
    FTest: boolean;
  private
    // Dico33 Specific functions
    FInstitutes: string;
    FInstitutesGMaps: string;
    FMarkers: string;
    FNameSpace: string;
    FTemplate: TStrings;
    FPageHead: TStrings;
    FPageBegin: TStrings;
    FPageHeader: TStrings;
    FPageFooter: TStrings;
    FPageScripts: TStrings;
    FPageBody: TStrings;
    FTemplateCss: TStrings;
    procedure SetInstitutes(HS: TJanuaWebSession);

  private
    // Football Specific Procedures ...........................................
    function CheckFootballParams(Request: TWebRequest): TJanuaServerPgFootball;
    procedure AddTemplate(const filename, replacestring: string);
    // Html Template Specific Instructions ....................................

  protected

    function StringFromFile(const AFileName: string): string;
    { Private declarations }
  public
    { Public declarations }
    // Template Management procedures (this procedures can be exported to a Class as health)
    function TemplatesDir: string;
  end;

var
  WebModuleClass: TComponentClass = TWebModule1;

implementation

{$R *.dfm}

uses Janua.Web.ServerMethods, Janua.Web.ServerContainer, Web.WebReq;

procedure TWebModule1.DSHTTPServiceFileDispatcher1BeforeDispatch(Sender: TObject; const AFileName: string;
  AContext: TDSHTTPContext; Request: TDSHTTPRequest; Response: TDSHTTPResponse; var Handled: boolean);
var
  Test: string;
begin
  Test := AFileName;
end;

procedure TWebModule1.SetInstitutes(HS: TJanuaWebSession);
begin

end;

procedure TWebModule1.SetupDico33(Request: TWebRequest; var Response: TWebResponse; HS: TJanuaWebSession);
begin

end;

procedure TWebModule1.ShowBooking;
begin

end;

procedure TWebModule1.ShowLogin;
begin

end;

procedure TWebModule1.ShowProfile(HS: TJanuaWebSession);
begin

end;

function TWebModule1.StringFromFile(const AFileName: string): string;
begin

end;

function TWebModule1.TemplatesDir: string;
begin

end;

{
  procedure TWebModule1.SetInstitutes(HS: TJanuaWebSession);

  begin
  // TJanuaCustomServerHealthBooking.getHtmlBookingInstitutes
  end;



  function TWebModule1.StringFromFile(const AFileName: string): string;
  begin
  // funzione spostata .............................................
  end;

  function TWebModule1.TemplatesDir: string;
  begin
  //Result := 'C:\Januaproject\www\' + self.NameSpace + '\public_html\Templates\';
  // spostata function TJanuaTemplateRepository.TemplatesDir: string;
  end;

  procedure TWebModule1.ShowLogin;
  begin
  // ogni chiamata prepara il m odello di Template che le compete nel ns caso la HomePage
  // self.PrepareTemplate(self.FNameSpace, 'LoginPage.html');
  // self.AddTemplate('bodylogin', 'body');
  // spostato
  end;

  procedure TWebModule1.ShowProfile(HS: TJanuaWebSession);
  begin

  //  self.PrepareTemplate(self.FNameSpace, 'ProfilePage.html');
  //  self.AddTemplate('bodyprofile', 'body');
  //  FTemplate.Text := HS.UserProfile.AsHtml(FTemplate.Text);

  // spostatat
  end;

  procedure TWebModule1.ShowBooking;
  begin
  // funzione Spostata
  end;


  procedure TWebModule1.SetupDico33(Request: TWebRequest; var Response: TWebResponse; HS: TJanuaWebSession);
  begin
  // prima di ogni operazione devo verificare se è attiva una sessione ..................


  // self.FNameSpace := self.JanuaApplicationProfile1.AppName;   // ported  TemplateRepository .....
  // if Assigned(HS) then
  // begin
  //   HS.JanuaPostgresSystem := self.JanuaPostgresSystem;
  //   HS.Root := JanuaApplicationProfile1.ProtocolUrl;
  //   HS.GetSessionRequest(Request);
  //
  // end;
  //
  end;
}
procedure TWebModule1.WebModule1BookingAction(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
  var Handled: boolean);
begin
  // PROCEDURA DA RIPORTARE INTEGRALMENTE SUL SERVER CONTROLLER DI DICO33 VERSIONE WEB
  {
    SetupDico33(Request, Response, HS);

    if HS.Search_id <> 0 then
    begin
    HS.DoBooking;
    end;

    if HS.IsPublic and (HS.BookingID <> 0) then
    begin
    // ogni chiamata prepara il m odello di Template che le compete nel ns caso la HomePage
    self.PrepareTemplate(self.FNameSpace, 'LoginPage.html');
    self.AddTemplate('bodylogin', 'body');
    end
    else if (HS.BookingID <> 0) then
    begin
    // BookingPage.html
    HS.PrepareHtmlInstitutes;
    ShowBooking;
    end;

    self.FTemplate.Text := StringReplace(self.FTemplate.Text, '$title$',
    'Dico33 Cerca e prenota con noi in pi&ugrave di 700 strutture in Italia', [rfReplaceAll, rfIgnoreCase]);
    Response.Content := self.FTemplate.Text;
    HS.WriteMessages(Response);
    Response.SendResponse;
  }
end;

procedure TWebModule1.WebModule1ConfirmationAction(Sender: TObject; Request: TWebRequest;
  Response: TWebResponse; var Handled: boolean);
var
  tmpBooking: int64;
  HS: TJanuaWebSession;
begin
  // LOGIN CONFIRMATION PROCEDURE ..............................................
  // RIPORTARE QUESTA PROCEDURA SUL SERVER CONTROLLER DI DICO33 WEB SERVER CONTROLLER
  {
    HS := TJanuaWebSession.Create;
    try
    // Confirmation Form .............................................................
    SetupDico33(Request, Response, HS);
    JanuaPostgresSystem.Username := Janua.Core.Functions.HttpGetParamValue(Request, 'username');
    JanuaPostgresSystem.password := Janua.Core.Functions.HttpGetParamValue(Request, 'password');
    if JanuaPostgresSystem.Login then
    begin
    if HS.BookingID > 0 then
    begin
    tmpBooking := HS.BookingID;
    HS.Session_id := JanuaPostgresSystem.SessionKey;
    HS.SetIsPublic;
    // if not HS.IsPublic then
    begin
    if HS.AssignSessionBooking then
    begin
    ShowBooking;
    end
    else
    begin
    self.ShowProfile(HS);
    end;
    end;
    end
    else
    self.ShowProfile(HS);
    end
    else
    begin
    HS.LoginFailed := True;
    self.ShowLogin;
    end;
    Response.Content := self.FTemplate.Text;
    HS.WriteMessages(Response);
    finally
    HS.Free
    end;
    Response.SendResponse;
  }
end;

procedure TWebModule1.WebModule1DefaultHandlerAction(Sender: TObject; Request: TWebRequest;
  Response: TWebResponse; var Handled: boolean);
var
  aServices: string;
begin
  // PROCEDURA DI RISPOSTA DELLA home page di Dico33 pagina Search ......
  // RIPORTARE LA PROCEDURA SUL SERVER Controller Dico 33 dopo test della procedura Stessa.
  {
    try
    SetupDico33(Request, Response, HS);

    // ogni chiamata prepara il m odello di Template che le compete nel ns caso la HomePage
    self.PrepareTemplate(self.FNameSpace, 'HomePage.html');

    self.AddTemplate('homehead', 'homehead');
    self.AddTemplate('bodyhome', 'body');
    // javascriptshome
    // self.AddTemplate('javascriptshome', 'javascriptshome');

    self.FTemplate.Text := StringReplace(self.FTemplate.Text, '$title$',
    'Dico33 Cerca e prenota con noi in pi&ugrave di 700 strutture in Italia', [rfReplaceAll, rfIgnoreCase]);


    self.FTemplate.Text := StringReplace(self.FTemplate.Text, '$services$', self.FServices,
    [rfReplaceAll, rfIgnoreCase]);

    Response.Content := self.FTemplate.Text;
    HS.WriteMessages(Response);
    finally
    HS.Free
    end;
    Response.SendResponse;
  }
end;

procedure TWebModule1.WebModule1FootballGoalRankingHandlerAction(Sender: TObject; Request: TWebRequest;
  Response: TWebResponse; var Handled: boolean);
var
  aHtml: string;
  aServer: TJanuaServerPgFootball;
begin

  aServer := CheckFootballParams(Request);

  try
    aServer.HtmlHead.Text := self.JanuaServerPgFootball.HtmlHead.Text;
    aServer.TemplateGoalRankingPage.Text := self.JanuaServerPgFootball.TemplateGoalRankingPage.Text;
    aServer.TemplateGoalRankingHead.Text := self.JanuaServerPgFootball.TemplateGoalRankingHead.Text;
    aServer.TemplateGoalRankingRow.Text := self.JanuaServerPgFootball.TemplateGoalRankingRow.Text;

    aServer.OpenGoalRanking;

    aHtml := aServer.GoalRankingHtmlPage;
  finally
    aServer.Free;
  end;

  Response.Content := aHtml;
  Response.ContentType := 'text/html';
  Response.SendResponse;

  Handled := True;
end;

procedure TWebModule1.WebModule1FootballMatchesHandlerAction(Sender: TObject; Request: TWebRequest;
  Response: TWebResponse; var Handled: boolean);
var
  aHtml: string;
  aServer: TJanuaServerPgFootball;
begin

  aServer := CheckFootballParams(Request);

  try
    aServer.HtmlHead.Text := self.JanuaServerPgFootball.HtmlHead.Text;
    aServer.TemplateMatchesPage.Text := self.JanuaServerPgFootball.TemplateMatchesPage.Text;
    aServer.TemplateMatchesHead.Text := self.JanuaServerPgFootball.TemplateMatchesHead.Text;
    aServer.TemplateMatchesRow.Text := self.JanuaServerPgFootball.TemplateMatchesRow.Text;

    aServer.OpenMatches;

    aHtml := aServer.MatchesHtmlPage;
  finally
    aServer.Free;
  end;

  Response.Content := aHtml;
  Response.ContentType := 'text/html';
  Response.SendResponse;

  Handled := True;
end;

procedure TWebModule1.WebModule1FootballNextMatchesHandlerAction(Sender: TObject; Request: TWebRequest;
  Response: TWebResponse; var Handled: boolean);
var
  aHtml: string;
  aServer: TJanuaServerPgFootball;
begin

  aServer := CheckFootballParams(Request);

  try
    aServer.HtmlHead.Text := self.JanuaServerPgFootball.HtmlHead.Text;
    aServer.TemplateMatchesPage.Text := self.JanuaServerPgFootball.TemplateMatchesPage.Text;
    aServer.TemplateMatchesHead.Text := self.JanuaServerPgFootball.TemplateMatchesHead.Text;
    aServer.TemplateMatchesRow.Text := self.JanuaServerPgFootball.TemplateMatchesRow.Text;

    aServer.OpenNextMatches;

    aHtml := aServer.NextMatchesHtmlPage;
  finally
    aServer.Free;
  end;

  Response.Content := aHtml;
  Response.ContentType := 'text/html';
  Response.SendResponse;

  Handled := True;
end;

procedure TWebModule1.WebModule1FootballRankingHandlerAction(Sender: TObject; Request: TWebRequest;
  Response: TWebResponse; var Handled: boolean);
var
  aHtml: string;
  aServer: TJanuaServerPgFootball;
begin

  try
    aServer := CheckFootballParams(Request);
    aServer.HtmlHead.Text := self.JanuaServerPgFootball.HtmlHead.Text;
    aServer.TemplateRankingPage.Text := self.JanuaServerPgFootball.TemplateRankingPage.Text;
    aServer.TemplateRankingHead.Text := self.JanuaServerPgFootball.TemplateRankingHead.Text;
    aServer.TemplateRankingRow.Text := self.JanuaServerPgFootball.TemplateRankingRow.Text;

    aServer.OpenChampionship;
    aServer.OpenRanking;

    aHtml := aServer.RankingHtmlPage;
  finally
    aServer.Free;
  end;

  Response.Content := aHtml;
  Response.ContentType := 'text/html';
  Response.SendResponse;

  Handled := True;
end;

procedure TWebModule1.WebModule1HomeSelect2JsAction(Sender: TObject; Request: TWebRequest;
  Response: TWebResponse; var Handled: boolean);
begin
  // prima di ogni operazione devo verificare se è attiva una sessione ..................
  // self.GetSessionCookie(Request);

  Response.Content := StringFromFile('js\home-select2.js');
end;

procedure TWebModule1.WebModule1HomeYoutubeJsAction(Sender: TObject; Request: TWebRequest;
  Response: TWebResponse; var Handled: boolean);
begin
  // prima di ogni operazione devo verificare se è attiva una sessione ..................
  // self.GetSessionCookie(Request);
  Response.Content := StringFromFile('js\jquery-youtube.js');
end;

procedure TWebModule1.WebModule1RegisterAction(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
  var Handled: boolean);
var
  HS: TJanuaWebSession;
  aUserProfile: TJanuaRecordUserProfile;
  sError: string;
  aCheck: boolean;
begin
  HS := TJanuaWebSession.Create(nil);
  try
    SetupDico33(Request, Response, HS);

    aCheck := True;

    aUserProfile.LoadFromHttpParams(Request);

    if aUserProfile.User.Username = '' then
    begin
      sError := sError + '<p>Attenzione occorre inserire la propria mail</p>';
      aCheck := False;
      
    end;

    if aUserProfile.User.password = '' then
    begin
      sError := sError + '<p>Attenzione occorre inserire una password</p>';
      aCheck := False;
      
    end;

    if aUserProfile.User.password <> aUserProfile.User.RPassword then
    begin
      sError := sError + '<p>Attenzione password e sua conferma non coincidono</p>';
      aCheck := False;
      
    end;

    if aUserProfile.FiscalCode = '' then
    begin
      sError := sError + '<p>Attenzione per prenotare è necessario inserire un codice fiscale valido</p>';
    end;

    if aUserProfile.FiscalCode = '' then
    begin
      sError := sError + '<p>Attenzione per prenotare è necessario inserire un codice fiscale valido</p>';
    end;

    if aCheck then
    begin
      if not self.JanuaPostgresSystem.CheckNewUser(aUserProfile) then
      begin
        aCheck := False;
        sError := sError + '<p>Attenzione questa mail è già stata registrata nel sistema</p>';
      end
      else
      begin
        // self.JanuaPostgresSystem.UserProfile := aUserProfile;
        if JanuaPostgresSystem.LoadedProfile then
          JanuaPostgresSystem.CreateNewUser(aUserProfile);
      end;

    end;

  finally
    HS.Free;
  end;
  Response.SendResponse;
end;

procedure TWebModule1.WebModule1SearchGoogleMapsAction(Sender: TObject; Request: TWebRequest;
  Response: TWebResponse; var Handled: boolean);
var
  HS: TJanuaWebSession;
begin
  HS := TJanuaWebSession.Create(nil);
  try
    SetupDico33(Request, Response, HS);
  finally
    HS.Free
  end;
  // prima di ogni operazione devo verificare se è attiva una sessione ..................
  // self.GetSessionCookie(Request);

  Response.Content := StringFromFile('js\google-maps-search.js');
end;

procedure TWebModule1.WebModule1SearchHandlerAction(Sender: TObject; Request: TWebRequest;
  Response: TWebResponse; var Handled: boolean);
var
  // DM: TdmDico33WebBroker;
  JanuaStreetMap: TJanuaStreetMap;
  aServices: string;
  aMarker: TStrings;
  sMarker: string;
  sCenter: string;
  HS: TJanuaWebSession;
begin
  // procedura di generazione del risultato della ricerca partendo dall'input della Home page Dico33
  //
  {
    HS := TJanuaWebSession.Create;
    try
    SetupDico33(Request, Response, HS);

    // ogni chiamata prepara il m odello di Template che le compete nel ns caso la HomePage
    self.PrepareTemplate(self.FNameSpace, 'SearchPage.html');

    HS.address := Janua.Core.Functions.HttpGetParamValue(Request, 'address');
    HS.service := Janua.Core.Functions.HttpGetParamValue(Request, 'service');

    if Janua.Core.Functions.IsNumeric(HS.service) then
    HS.FItemID := HS.service.ToInteger
    else
    HS.FItemID := 0;

    HS.address := StringReplace(HS.address, '+', ' ', [rfReplaceAll, rfIgnoreCase]);

    JanuaStreetMap := TJanuaStreetMap.Create(self);
    try
    JanuaStreetMap.address := HS.address;
    if JanuaStreetMap.GetCoordinates then
    begin
    HS.latitude := JanuaStreetMap.Coordinates.latitude;
    HS.longitude := JanuaStreetMap.Coordinates.longitude;
    end
    else
    begin
    HS.latitude := 45.465374;
    HS.longitude := 9.207828;
    end;
    finally
    JanuaStreetMap.Free
    end;

    // lat: 45.4658461, lng: 9.2102962

    sCenter := 'lat: ' + Janua.Core.Json.JsonFloatToStr(HS.latitude, 7) + ', lng: ' +
    Janua.Core.Json.JsonFloatToStr(HS.longitude, 7);
  }
  // codice commentato per non bloccare i bracket per evitare errori .... da riportare su controller
  // aMarker := TStringList.Create;
  // try
  // aMarker.Add('  o.addMarker({');
  // aMarker.Add('lat:  ' + JsonFloatToStr(HS.latitude, 6) + ',');
  // aMarker.Add('lng:  ' + JsonFloatToStr(HS.longitude, 6) + ',');
  // aMarker.Add('title:  "' + HS.address + '",');
  // aMarker.Add('details: { database_id: 42,  author: "HPNeo" },');
  // aMarker.Add('click: function(o) {');
  // aMarker.Add('console.log && console.log(o), alert("' + HS.address + '")');
  // aMarker.Add('}');
  // aMarker.Add('})');
  // sMarker := aMarker.Text;
  // finally
  // aMarker.Free;
  // end;
  {
    self.AddTemplate('homehead', 'homehead');
    self.AddTemplate('bodysearch', 'body');
    // javascriptshome
    // self.AddTemplate('javascriptshome', 'javascriptshome');

    self.FTemplate.Text := StringReplace(self.FTemplate.Text, '$title$',
    'Dico33 Cerca e prenota con noi in pi&ugrave di 700 strutture in Italia', [rfReplaceAll, rfIgnoreCase]);

    SetServices;
    SetInstitutes(HS);
    sMarker := sMarker + self.FMarkers;

    FTemplate.Text := StringReplace(FTemplate.Text, '$center$', sCenter, [rfReplaceAll, rfIgnoreCase]);

    FTemplate.Text := StringReplace(FTemplate.Text, '$markers$', sMarker, [rfReplaceAll, rfIgnoreCase]);

    FTemplate.Text := StringReplace(FTemplate.Text, '$services$', self.FServices, [rfReplaceAll, rfIgnoreCase]);

    self.FTemplate.Text := StringReplace(self.FTemplate.Text, '$address$', HS.address, [rfReplaceAll, rfIgnoreCase]);

    FTemplate.Text := StringReplace(self.FTemplate.Text, '$institutes$', self.FInstitutes,
    [rfReplaceAll, rfIgnoreCase]);

    Response.Content := self.FTemplate.Text;
    HS.WriteMessages(Response);
    finally
    HS.Free
    end;
    Response.SendResponse;
  }
end;

procedure TWebModule1.WebModule1SystemLoginAction(Sender: TObject; Request: TWebRequest;
  Response: TWebResponse; var Handled: boolean);
var
  sItem: string;
  HS: TJanuaWebSession;
begin
  // PROCEDURA DI LOGIN questa pagina non gestisce la login ma mostra la pagina di login
  {
    HS := TJanuaWebSession.Create;
    try
    SetupDico33(Request, Response, HS);

    if HS.IsPublic then
    begin
    ShowLogin;
    end
    else
    begin
    ShowProfile(HS);
    end;

    Response.Content := self.FTemplate.Text;
    HS.WriteMessages(Response);
    finally
    HS.Free
    end;
    Response.SendResponse;
  }
end;

procedure TWebModule1.WebModule1TestActionAction(Sender: TObject; Request: TWebRequest;
  Response: TWebResponse; var Handled: boolean);
var
  HS: TJanuaWebSession;
begin
  HS := TJanuaWebSession.Create(nil);
  try
    SetupDico33(Request, Response, HS);
    // prima di ogni operazione devo verificare se è attiva una sessione ..................
    HS.GetSessionRequest(Request);
    {
      // ogni chiamata prepara il m odello di Template che le compete nel ns caso la HomePage
      self.PrepareTemplate(self.FNameSpace, 'TestPage.html');

      self.AddTemplate('bodytest', 'body');

      HS.SetCookies(7, Response);

      Response.Content := self.FTemplate.Text;
    }
  finally
    HS.Free
  end;
  Response.SendResponse;
end;

procedure TWebModule1.WebModule1TestHandlerAction(Sender: TObject; Request: TWebRequest;
  Response: TWebResponse; var Handled: boolean);
begin
  Response.ContentType := 'text/html';
  Response.Content := 'Prova riuscita!!';
  Response.SendResponse;
  Handled := True;
end;

procedure TWebModule1.AddTemplate(const filename, replacestring: string);
var
  NewTemplate: TStrings;
  old, new, rep: string;
begin
  NewTemplate := TStringList.Create;
  try
    NewTemplate.LoadFromFile(self.TemplatesDir + filename + '.html');
    new := NewTemplate.Text;
  finally
    NewTemplate.Free;
  end;
  old := FTemplate.Text;
  rep := '$' + replacestring + '$';
  self.FTemplate.Text := StringReplace(old, rep, new, [rfReplaceAll, rfIgnoreCase]);
end;

function TWebModule1.CheckFootballParams(Request: TWebRequest): TJanuaServerPgFootball;
var
  sSeason: string;
  sLeague: string;
  sMatch: string;
  aSeason, aLeague, aMatch: integer;
begin
  aSeason := 0;
  aLeague := 0;
  aMatch := 0;

  sSeason := HttpGetParamValue(Request, 'season');
  if (sSeason <> '') and IsNumeric(sSeason) then
    aSeason := sSeason.ToInteger
  else
    aSeason := 0;

  sLeague := HttpGetParamValue(Request, 'league');
  if (sSeason <> '') and IsNumeric(sLeague) then
    aLeague := sLeague.ToInteger
  else
    aLeague := 0;

  sMatch := HttpGetParamValue(Request, 'day');
  if (sMatch <> '') and IsNumeric(sMatch) then
    aMatch := sMatch.ToInteger
  else
    aMatch := 0;

  Result := TJanuaServerPgFootball.Create(nil);

  if not Result.Active then
    Result.Activate;

  Result.season_id := aSeason;
  Result.league_id := aLeague;
  Result.match_id := aMatch;

end;

procedure TWebModule1.WebModuleCreate(Sender: TObject);
var
  aActionItem: TWebActionItem;
begin

  // '/Dico33/' in fase di Deploy .......................................................................
  (*
    DSHTTPWebDispatcher1.Server := DSServer;
    if DSServer.Started then
    begin
    DSHTTPWebDispatcher1.DbxContext := DSServer.DbxContext;
    DSHTTPWebDispatcher1.Start;
    end;
  *)
  // Test WebActionItem ....
  PrivateItems := TDictionary<string, TWebActionItem>.Create;

  PrivateItems.Add('primo', TWebActionItem.Create(Actions));

  PrivateItems.TryGetValue('primo', aActionItem);

  aActionItem.PathInfo := '/test';
  aActionItem.Enabled := True;
  aActionItem.MethodType := mtAny;
  aActionItem.OnAction := WebModule1TestHandlerAction;

  FPageHead := TStringList.Create;
  FPageBegin := TStringList.Create;
  FTemplate := TStringList.Create;
  FPageHeader := TStringList.Create;
  FPageFooter := TStringList.Create;
  FPageScripts := TStringList.Create;
  self.FPageBody := TStringList.Create;
  FTemplateCss := TStringList.Create;

  // SetServices;
  // funzione già trasferita ............................................
end;

procedure TWebModule1.WebModuleDestroy(Sender: TObject);
begin
  FPageHead.Free;
  FPageBegin.Free;
  FTemplate.Free;
  FPageHeader.Free;
  FPageFooter.Free;
  FPageScripts.Free;
  self.FPageBody.Free;
  FTemplateCss.Free;
end;

{ TDico33Record }

initialization

finalization

Web.WebReq.FreeWebModules;

end.
