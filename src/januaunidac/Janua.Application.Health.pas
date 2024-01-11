unit Janua.Application.Health;

interface

uses

  System.SysUtils, Janua.Core.Classes, Janua.Core.System, Janua.Server.System, Janua.Core.Functions,
  Janua.Core.JPublic, Janua.Server.JPublic, Janua.Server.Users, Janua.Core.Users, Janua.Core.Mail,
  Janua.Server.Health, Janua.Core.Health, Janua.Server.Cms, Janua.Server.Social, System.Classes,
  Janua.Core.Sockets;

type
  TJanuaApplicationHealth = class(TJanuaCoreComponent)
  private
    FJanuaOS: Janua.Core.System.TJanuaOS;
    FJanuaMail: TJanuaMailSender;
    FJanuaApplication: TJanuaApplicationProfile;
    FJanuaSystem: Janua.Server.System.TJanuaServerSystem;
    FJanuaServerJPublic: TJanuaServerJPublic;
    FJanuaCoreLogger: TJanuaCoreLogger;
    FJanuaProfile: Janua.Core.Users.TJanuaProfile;
    FJanuaCountrySearch: Janua.Core.JPublic.TCountrySearch;
    FJanuaServerHealth: Janua.Server.Health.TJanuaServerHealth;
    FJanuaDoctor: Janua.Core.Health.TJanuaAnagDoctor;
    FJanuaNewDoctor: Janua.Core.Health.TJanuaAnagDoctor;
    FJanuaServerCms: Janua.Server.Cms.TJanuaServerCms;
    FJanuaServerSocial: Janua.Server.Social.TJanuaServerSocial;
    FPassword: string;
    FUsername: string;
    FLastTimeAccess: TDateTime;
    FKeepAlive: boolean;
    FSessionTimeOut: integer;
    FVerbose: boolean;
    FLogToFile: boolean;
    procedure SetPassword(const Value: string);
    procedure SetUsername(const Value: string);
    procedure SetKeepAlive(const Value: boolean);
    procedure SetLastTimeAccess(const Value: TDateTime);
    procedure SetSessionTimeOut(const Value: integer);
    procedure SetVerbose(const Value: boolean);
    procedure SetLogToFile(const Value: boolean);
    procedure SetComponent(aComponent: TJanuaCoreComponent);
  protected

  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function JanuaOS: Janua.Core.System.TJanuaOS;
    function JanuaSystem: Janua.Server.System.TJanuaServerSystem;
    function JanuaCoreLogger: TJanuaCoreLogger;
    function JanuaApplication: TJanuaApplicationProfile;
    function JanuaServerJPublic: TJanuaServerJPublic;
    Function JanuaCountrySearch: Janua.Core.JPublic.TCountrySearch;
    Function JanuaProfile: Janua.Core.Users.TJanuaProfile;
    Function JanuaMail: TJanuaMailSender;
    Function JanuaServerHealth: Janua.Server.Health.TJanuaServerHealth;
    Function JanuaDoctor: Janua.Core.Health.TJanuaAnagDoctor;
    Function JanuaNewDoctor: Janua.Core.Health.TJanuaAnagDoctor;
    Function JanuaServerCms: Janua.Server.Cms.TJanuaServerCms;
    Function JanuaServerSocial: Janua.Server.Social.TJanuaServerSocial;
    function NewDoctor: boolean;
    function CreateNewDoctor: boolean;
    procedure Start;
    procedure LoadHealthProfile;
    function Login(Username, Password: string): boolean;
    function Activate: boolean; override;
    procedure LoadUserProfile;
    procedure NewArticle;
    function ToString: string; override;
    function SelectArticles(aSearch: string; aArticles: integer; aLanguage: smallint): integer;
    function AddNewDoctor(aDoctor: TJanuaRecordDoctor): boolean;
    function SetCouncilByName(aCouncil: string): boolean;
    function SetRegionByName(aRegion: string): boolean;
    function SetOrganizationByName(aOrganization: string): boolean;
    function SetAssociationByName(aAssociation: string): boolean;
    function SetBranchByName(aBranch: string): boolean;
    function SetSpecializationByName(aSpecialization: string): boolean;
    function SaveProfileDoctor: boolean;
    function SaveProfileNewDoctor: boolean;
  published
    property Username: string read FUsername write SetUsername;
    property Password: string read FPassword write SetPassword;
    property KeepAlive: boolean read FKeepAlive write SetKeepAlive;
    property SessionTimeOut: integer read FSessionTimeOut write SetSessionTimeOut default -1;
    property LastTimeAccess: TDateTime read FLastTimeAccess write SetLastTimeAccess;
    property Verbose: boolean read FVerbose write SetVerbose;
    property LogToFile: boolean read FLogToFile write SetLogToFile;
  end;

implementation

function TJanuaApplicationHealth.SaveProfileDoctor: boolean;
begin
  self.JanuaDoctor.Save;
  Result := not self.JanuaDoctor.HasErrors;
  if not Result then
    self.LastErrorMessage := self.JanuaDoctor.LastErrorMessage;
end;

function TJanuaApplicationHealth.SaveProfileNewDoctor: boolean;
begin
  self.JanuaNewDoctor.ClearErrors;
  self.JanuaNewDoctor.ClearLog;
  self.JanuaNewDoctor.Save;
  Result := not self.JanuaNewDoctor.HasErrors;
  if not Result then
    self.LastErrorMessage := self.JanuaNewDoctor.LastErrorMessage;
end;

function TJanuaApplicationHealth.SelectArticles(aSearch: string; aArticles: integer;
  aLanguage: smallint): integer;
begin
  if not self.JanuaServerCms.Active then
    self.JanuaServerCms.Activate;
  Result := self.JanuaServerCms.SearchArticle(aSearch, aArticles, aLanguage);
end;

function TJanuaApplicationHealth.SetAssociationByName(aAssociation: string): boolean;
begin
  self.FJanuaDoctor.Association := aAssociation;
  Result := not FJanuaDoctor.HasErrors;
  if Result then
  begin
    FJanuaDoctor.Save;
    self.WriteLog('Registrato nuova associazione medico: ' +
      FJanuaDoctor.Doctor.HealthLocation.Association.name);
  end
  else
  begin
    self.WriteLog(FJanuaDoctor.LastErrorMessage, True);
    FJanuaDoctor.ClearErrors;
  end;
end;

function TJanuaApplicationHealth.SetBranchByName(aBranch: string): boolean;
begin
  self.FJanuaDoctor.Branch := aBranch;
  Result := not FJanuaDoctor.HasErrors;
  if Result then
  begin
    FJanuaDoctor.Save;
    self.WriteLog('Registrato nuova associazione medico: ' +
      FJanuaDoctor.Doctor.HealthLocation.Branch.name);
  end
  else
  begin
    self.WriteLog(FJanuaDoctor.LastErrorMessage, True);
    FJanuaDoctor.ClearErrors;
  end;
end;

procedure TJanuaApplicationHealth.SetComponent(aComponent: TJanuaCoreComponent);
begin
  aComponent.ApplicationType := self.FApplicationType;
  aComponent.Verbose := self.FVerbose;
  aComponent.LogToFile := self.FLogToFile;
  aComponent.JanuaLogger := self.JanuaCoreLogger;
end;

function TJanuaApplicationHealth.SetCouncilByName(aCouncil: string): boolean;
begin
  self.FJanuaDoctor.Council := aCouncil;
  Result := not FJanuaDoctor.HasErrors;
  if Result then
  begin
    FJanuaDoctor.Save;
    self.WriteLog('Registrato nuovo ordine medico: ' +
      FJanuaDoctor.Doctor.HealthLocation.Council.name);
  end
  else
  begin
    self.WriteLog(FJanuaDoctor.LastErrorMessage, True);
    FJanuaDoctor.ClearErrors;
  end;
end;

procedure TJanuaApplicationHealth.SetKeepAlive(const Value: boolean);
begin
  FKeepAlive := Value;
end;

procedure TJanuaApplicationHealth.SetLastTimeAccess(const Value: TDateTime);
begin
  FLastTimeAccess := Value;
end;

procedure TJanuaApplicationHealth.SetLogToFile(const Value: boolean);
begin
  FLogToFile := Value;
end;

function TJanuaApplicationHealth.SetOrganizationByName(aOrganization: string): boolean;
begin
  self.FJanuaDoctor.Organization := aOrganization;
  Result := not FJanuaDoctor.HasErrors;
  if Result then
  begin
    FJanuaDoctor.Save;
    self.WriteLog('Registrato nuova organizzazione medico: ' +
      FJanuaDoctor.Doctor.HealthLocation.Council.name);
  end
  else
  begin
    self.WriteLog(FJanuaDoctor.LastErrorMessage, True);
    FJanuaDoctor.ClearErrors;
  end;
end;

procedure TJanuaApplicationHealth.SetPassword(const Value: string);
begin
  FPassword := Value;
end;

function TJanuaApplicationHealth.SetRegionByName(aRegion: string): boolean;
begin
  self.FJanuaDoctor.RegionName := aRegion;
  Result := not FJanuaDoctor.HasErrors;
  if Result then
  begin
    FJanuaDoctor.Save;
    self.WriteLog('Registrato nuova regione medico: ' +
      FJanuaDoctor.Doctor.HealthLocation.Council.name);
  end
  else
  begin
    self.WriteLog(FJanuaDoctor.LastErrorMessage, True);
    FJanuaDoctor.ClearErrors;
  end;
end;

procedure TJanuaApplicationHealth.SetSessionTimeOut(const Value: integer);
begin
  FSessionTimeOut := Value;
end;

function TJanuaApplicationHealth.SetSpecializationByName(aSpecialization: string): boolean;
begin
  self.FJanuaDoctor.Speciality := aSpecialization;
  Result := not FJanuaDoctor.HasErrors;
  if Result then
  begin
    FJanuaDoctor.Save;
    self.WriteLog('Registrato nuova specializzazione medico: ' +
      FJanuaDoctor.Doctor.HealthLocation.Council.name);
  end
  else
  begin
    self.WriteLog(FJanuaDoctor.LastErrorMessage, True);
    FJanuaDoctor.ClearErrors;
  end;
end;

procedure TJanuaApplicationHealth.SetUsername(const Value: string);
begin
  FUsername := Value;
end;

procedure TJanuaApplicationHealth.SetVerbose(const Value: boolean);
begin
  FVerbose := Value;
end;

procedure TJanuaApplicationHealth.Start;
var
  i: integer;
begin
  try

    JanuaApplication.Activate;

    JanuaOS.CustomServer := True;
    JanuaOS.AppName := 'Keriks';
    JanuaOS.Directory := 'C:\Januaproject';
    JanuaOS.LoadConfiguration;
    JanuaOS.Active := True;

    self.FJanuaLogger := (self.JanuaCoreLogger as TJanuaCustomLogger);
    self.JanuaCoreLogger.JanuaOS := self.JanuaOS;
    self.JanuaCoreLogger.LogType := jltLog;

    for i := 0 to JanuaOS.Log.Count - 1 do
      self.WriteLog(JanuaOS.Log[i]);
    JanuaOS.ClearLog;

    self.FActive := True;

    for i := 0 to JanuaApplication.Log.Count - 1 do
      self.WriteLog(JanuaApplication.Log[i]);
    JanuaApplication.ClearLog;
  except
    on E: Exception do
    begin
      self.WriteError(' TJanuaApplicationHealth.Start: ', E);
    end;
  end;
end;

function TJanuaApplicationHealth.ToString: string;
begin
  if not Assigned(FJanuaServerSocial) then
  begin
    FJanuaServerSocial := Janua.Server.Social.TJanuaServerSocial.Create(self);
    FJanuaServerSocial.JanuaServerSystem := self.JanuaSystem;
    FJanuaServerSocial.JanuaServerSession := self.JanuaSystem.JanuaServerSession;
    FJanuaServerSocial.SessionKey := self.FJanuaSystem.SessionKey;
    FJanuaServerSocial.ApplicationProfile := self.JanuaApplication;
    FJanuaServerSocial.JanuaLogger := self.JanuaCoreLogger;
  end;
end;

procedure TJanuaApplicationHealth.NewArticle;
begin
  JanuaServerCms.NewArticle;
end;

function TJanuaApplicationHealth.NewDoctor: boolean;
begin
  self.JanuaNewDoctor.UserType := TJanuaUserType.jutNewUser;
  if not JanuaNewDoctor.Active then
    JanuaNewDoctor.Activate;
  Result := JanuaNewDoctor.Active;
  if not Result then
    self.RaiseException('JanuaDoctor Errore Attivazione profilo Medico');
end;

function TJanuaApplicationHealth.JanuaServerCms: Janua.Server.Cms.TJanuaServerCms;
begin
  if not Assigned(FJanuaServerCms) then
  begin
    FJanuaServerCms := TJanuaServerCms.Create(nil);
    FJanuaServerCms.name := 'JanuaServerCms';
    FJanuaServerCms.JanuaLogger := self.JanuaCoreLogger;
    FJanuaServerCms.JanuaServerSystem := self.JanuaSystem;
    FJanuaServerCms.JanuaServerSession := self.JanuaSystem.JanuaServerSession;
    FJanuaServerCms.JApplicationProfile := self.JanuaApplication;
  end;

  Result := FJanuaServerCms;
end;

function TJanuaApplicationHealth.JanuaServerHealth: Janua.Server.Health.TJanuaServerHealth;
begin
  if not Assigned(FJanuaServerHealth) then
  begin
    FJanuaServerHealth := Janua.Server.Health.TJanuaServerHealth.Create(nil);
    FJanuaServerHealth.name := 'JanuaServerHealth';
    FJanuaServerHealth.Active := False;
    FJanuaServerHealth.JanuaPublic := self.JanuaServerJPublic;
    FJanuaServerHealth.SessionKey := self.JanuaServerJPublic.SessionKey;
    FJanuaServerHealth.JanuaServerSession := self.JanuaServerJPublic.JanuaServerSession;
    SetComponent(FJanuaServerHealth);
  end;
  Result := FJanuaServerHealth;
end;

function TJanuaApplicationHealth.JanuaServerJPublic: TJanuaServerJPublic;
begin
  if not Assigned(FJanuaServerJPublic) then
  begin
    FJanuaServerJPublic := TJanuaServerJPublic.Create(nil);
    FJanuaServerJPublic.name := 'JanuaServerJPublic';
    FJanuaServerJPublic.JanuaSystem := JanuaSystem;
    FJanuaServerJPublic.ApplicationProfile := self.JanuaApplication;
  end;
  Result := FJanuaServerJPublic;
end;

function TJanuaApplicationHealth.JanuaServerSocial: Janua.Server.Social.TJanuaServerSocial;
begin
  if not Assigned(FJanuaServerSocial) then
  begin
    FJanuaServerSocial := Janua.Server.Social.TJanuaServerSocial.Create(nil);
    FJanuaServerSocial.name := 'JanuaServerSocial';
    FJanuaServerSocial.JanuaServerSystem := self.JanuaSystem;
    FJanuaServerSocial.JanuaLogger := self.FJanuaCoreLogger;
    FJanuaServerSocial.ApplicationProfile := self.JanuaApplication;
    FJanuaServerSocial.JanuaServerSession := self.JanuaSystem.JanuaServerSession;
  end;
  Result := FJanuaServerSocial;
end;

function TJanuaApplicationHealth.Activate: boolean;
begin
  Result := inherited;
  self.Start;
  if (self.FPassword > '') and (self.FUsername > '') then
    Result := self.Login(FUsername, FPassword);
end;

procedure TJanuaApplicationHealth.LoadHealthProfile;
begin
  LoadUserProfile;
  self.JanuaSystem.SetDefaultSchema(24);
  if not self.JanuaServerHealth.Active then
    JanuaServerHealth.Activate;
  if not JanuaServerHealth.Active then
    self.RaiseException('JanuaServerHealth Errore Connessioine Archivio Medici');
  JanuaDoctor.UserType := jutRegisteredUser;
  if not JanuaDoctor.Active then
    JanuaDoctor.Activate;
  if not JanuaDoctor.Active then
    self.RaiseException('JanuaDoctor Errore Attivazione profilo Medico');
end;

procedure TJanuaApplicationHealth.LoadUserProfile;
begin
  if not self.JanuaServerJPublic.Active then
    JanuaServerJPublic.Activate;

  if not JanuaServerJPublic.Active then
    self.RaiseException('Errre Attivazione connessione dati anagrafiche');

  if not self.JanuaCountrySearch.Active then
  begin
    self.JanuaCountrySearch.Activate;
    self.WriteLog(JanuaCountrySearch.Log.Text);
  end;

  if not JanuaCountrySearch.Active then
    self.RaiseException('Errre Attivazione connessione dati località');

  if not self.JanuaProfile.Active then
    self.JanuaProfile.Activate;

  if not JanuaProfile.Active then
    self.RaiseException('Errre Caricamento profilo utente');

  self.WriteLog(self.JanuaProfile.JanuaUserProfile.ToString);
end;

function TJanuaApplicationHealth.AddNewDoctor(aDoctor: TJanuaRecordDoctor): boolean;
begin
  self.JanuaNewDoctor.Doctor := aDoctor;
  Result := self.JanuaNewDoctor.CheckNewUser;
  if Result then
  begin
    aDoctor.Profile.PublicEmail := aDoctor.Profile.User.Email;
    if not self.JanuaServerHealth.CheckDoctorExists(aDoctor) then
    begin
      // self.JanuaSystem.CreateNewUser(aDoctor.Profile);
      // la funzione CreateNewUser viene chiamata ingternamente a SetNewDoctor
      Result := self.JanuaServerHealth.SetNewDoctor(aDoctor);
      if Result then
        WriteMessage('Inserimento Medico riuscita e mail inviata a: ' + aDoctor.Profile.PublicEmail)
      else
        WriteMessage('Errore di inserimento del nuovo medico');
    end
    else
    begin
      WriteMessage('Inserimento Medico non riuscito esiste già un iscritto all''ordine di: ' +
        aDoctor.HealthLocation.Council.name + ' con tessera: ' + aDoctor.regnumber);
    end;
  end
  else
  begin
    WriteMessage('Inserimento Medico non riuscita mail già Registrata: ' +
      aDoctor.Profile.PublicEmail);
  end;
end;

constructor TJanuaApplicationHealth.Create(AOwner: TComponent);
begin
  inherited;
  self.FSessionTimeOut := -1;
  FApplicationType := jatIntraweb;
end;

function TJanuaApplicationHealth.CreateNewDoctor: boolean;
begin
  if Assigned(FJanuaNewDoctor) then
    FreeAndNil(FJanuaNewDoctor);
  self.JanuaNewDoctor.Profile := THealthProfileForms.hpfNewUser;
  self.JanuaNewDoctor.UserType := TJanuaUserType.jutNewUser;
  Result := self.FJanuaNewDoctor.Activate;
end;

destructor TJanuaApplicationHealth.Destroy;
begin
  if Assigned(FJanuaDoctor) then
    FJanuaDoctor.Free;
  if Assigned(FJanuaNewDoctor) then
    FJanuaNewDoctor.Free;

  if Assigned(FJanuaServerSocial) then
    FJanuaServerSocial.Free;

  if Assigned(FJanuaServerCms) then
    FJanuaServerCms.Free;

  if Assigned(FJanuaServerHealth) then
    FJanuaServerHealth.Free;

  if Assigned(self.FJanuaCountrySearch) then
    FJanuaCountrySearch.Free;

  if Assigned(FJanuaServerJPublic) then
    FJanuaServerJPublic.Free;

  if Assigned(self.FJanuaSystem) then
    FJanuaSystem.Free;

  if Assigned(self.FJanuaMail) then
    FJanuaMail.Free;

  if Assigned(self.FJanuaCoreLogger) then
    FJanuaCoreLogger.Free;

  if Assigned(self.FJanuaOS) then
    self.FJanuaOS.Free;

  inherited;
end;

function TJanuaApplicationHealth.JanuaApplication: TJanuaApplicationProfile;
begin
  if not Assigned(FJanuaApplication) then
  begin
    FJanuaApplication := Janua.Core.Classes.TJanuaApplicationProfile.Create(self);
    FJanuaApplication.ApplicationType := self.FApplicationType;
    FJanuaApplication.Verbose := self.FVerbose;
    FJanuaApplication.AppName := 'Keriks';
    FJanuaApplication.JanuaLogger := JanuaCoreLogger;
    self.FJanuaApplication.ApplicationType := FApplicationType;
  end;
  Result := FJanuaApplication;
end;

function TJanuaApplicationHealth.JanuaCoreLogger: TJanuaCoreLogger;
begin
  if not Assigned(FJanuaCoreLogger) then
  begin
    FJanuaCoreLogger := TJanuaCoreLogger.Create(nil);
    FJanuaCoreLogger.ApplicationType := self.FApplicationType;
    FJanuaCoreLogger.JanuaOS := JanuaOS;
    FJanuaCoreLogger.LogType := jltLog;
    FJanuaCoreLogger.Log.Clear;
  end;
  Result := FJanuaCoreLogger;
end;

function TJanuaApplicationHealth.JanuaCountrySearch: Janua.Core.JPublic.TCountrySearch;
begin
  if not Assigned(FJanuaCountrySearch) then
  begin
    self.FJanuaCountrySearch := Janua.Core.JPublic.TCountrySearch.Create(nil);
    self.SetComponent(FJanuaCountrySearch);
    self.FJanuaCountrySearch.JanuaServerJPublic := self.JanuaServerJPublic;
  end;
  Result := FJanuaCountrySearch;
end;

function TJanuaApplicationHealth.JanuaDoctor: Janua.Core.Health.TJanuaAnagDoctor;
begin
  if not Assigned(FJanuaDoctor) then
  begin
    FJanuaDoctor := Janua.Core.Health.TJanuaAnagDoctor.Create(nil);
    FJanuaDoctor.JanuaServerHealth := self.JanuaServerHealth;
    FJanuaDoctor.JanuaServerJPublic := self.FJanuaServerJPublic;
    FJanuaDoctor.JanuaServerCountries := self.FJanuaCountrySearch;
    FJanuaDoctor.Profile := THealthProfileForms.hpfProfile;
    FJanuaDoctor.UserType := TJanuaUserType.jutND;
    FJanuaDoctor.ApplicationType := self.FApplicationType;
    FJanuaDoctor.Verbose := self.FVerbose;
    FJanuaDoctor.LogToFile := self.FLogToFile;
    FJanuaDoctor.JanuaLogger := self.JanuaCoreLogger;
    FJanuaDoctor.JanuaMail := self.JanuaMail;
  end;

  Result := FJanuaDoctor;
end;

function TJanuaApplicationHealth.JanuaMail: TJanuaMailSender;
begin
  if not Assigned(FJanuaMail) then
  begin
    FJanuaMail := TJanuaMailSender.Create(nil);
    FJanuaMail.ApplicationType := self.FApplicationType;
    FJanuaMail.Verbose := self.FVerbose;
    FJanuaMail.LogToFile := self.FLogToFile;
    FJanuaMail.JanuaLogger := self.JanuaCoreLogger;
    FJanuaMail.JanuaOS := self.JanuaOS;
  end;
  Result := FJanuaMail;
end;

function TJanuaApplicationHealth.JanuaNewDoctor: Janua.Core.Health.TJanuaAnagDoctor;
begin
  if not Assigned(FJanuaNewDoctor) then
  begin
    FJanuaNewDoctor := Janua.Core.Health.TJanuaAnagDoctor.Create(nil);
    FJanuaNewDoctor.JanuaServerHealth := self.JanuaServerHealth;
    FJanuaNewDoctor.JanuaServerJPublic := self.FJanuaServerJPublic;
    FJanuaNewDoctor.JanuaServerCountries := self.FJanuaCountrySearch;
    FJanuaNewDoctor.ApplicationType := self.FApplicationType;
    FJanuaNewDoctor.Verbose := self.FVerbose;
    FJanuaNewDoctor.LogToFile := self.FLogToFile;
    FJanuaNewDoctor.JanuaLogger := self.JanuaCoreLogger;
    FJanuaNewDoctor.JanuaMail := self.JanuaMail;
  end;
  Result := FJanuaNewDoctor;
end;

function TJanuaApplicationHealth.JanuaOS: Janua.Core.System.TJanuaOS;
begin
  if not Assigned(FJanuaOS) then
    FJanuaOS := Janua.Core.System.TJanuaOS.Create(nil);
  Result := FJanuaOS;
end;

function TJanuaApplicationHealth.JanuaProfile: Janua.Core.Users.TJanuaProfile;
begin
  if not Assigned(FJanuaProfile) then
  begin
    FJanuaProfile := Janua.Core.Users.TJanuaProfile.Create(nil);
    FJanuaProfile.JanuaServerJPublic := self.JanuaServerJPublic;
    FJanuaProfile.JanuaServerCountries := self.JanuaCountrySearch;
    SetComponent(FJanuaProfile);
    FJanuaProfile.JanuaMail := self.JanuaMail;
  end;
  Result := self.FJanuaProfile;
end;

function TJanuaApplicationHealth.JanuaSystem: Janua.Server.System.TJanuaServerSystem;
begin
  if not Assigned(FJanuaSystem) then
  begin
    FJanuaSystem := Janua.Server.System.TJanuaServerSystem.Create(nil);
    FJanuaSystem.JanuaOS := JanuaOS;
    FJanuaSystem.ApplicationProfile := JanuaApplication;
    SetComponent(FJanuaSystem);
    FJanuaSystem.LoadProfile;
    WriteLog('Connessione al Server: ' + FJanuaSystem.ServerUrl + ' = ' +
      Janua.Core.Sockets.GetIPFromHost(string(FJanuaSystem.ServerUrl)));

    if self.ApplicationType = jatConsole then
    begin
      Write('Premere un Tasto per continuare .......');
      ReadLn;
    end;

  end;

  Result := FJanuaSystem;
end;

function TJanuaApplicationHealth.Login(Username, Password: string): boolean;
begin
  JanuaSystem.LogToFile := True;
  JanuaSystem.JanuaOS := self.JanuaOS;
  JanuaSystem.ApplicationProfile := self.JanuaApplication;
  self.WriteLog(JanuaSystem.Log.Text);
  JanuaSystem.ClearLog;
  self.WriteLog(JanuaSystem.JanuaServerSession.ToString);
  JanuaSystem.LoadProfile;
  // LoadProfile carica il profilo di login da sistema dal file <appname>.conf.xml
  if self.ApplicationType in [jatConsole, jatServer, jatWebBroker, jatIntraweb] then
    JanuaSystem.LoginPrompt := False;
  // in caso di applicazioni server viene disattivato il prompt di login mancando ambiente windows
  try
    JanuaSystem.Username := Username;
    JanuaSystem.Password := Password;
    Result := JanuaSystem.Activate;
    // la chiamata ad Activate esegue automaticamente sia il login che l'impostazione del profilo
    // utente e del profilo di session dell'utente valorizzand la proprietà SessionKey e Profile.
    if not Result then
    begin
      // se risultato False allora la login è fallita, è probabile che il sistema di Log del
      // datamdule dmSystemCommand abbia anche registato il mootivo dell'errore nel log stesso.
      self.FLastErrorMessage := self.JanuaSystem.LastErrorMessage;
      if self.LastErrorMessage = '' then
        self.LastErrorMessage := 'Login non riuscita';
      self.WriteLog('TIWuserSessionErgoMercator.Login(aUser: TJanuaUser)' + sLineBreak +
        self.JanuaSystem.Log.Text);
    end;
  Except
    self.WriteLog(JanuaSystem.Log.Text);
    self.WriteLog('TJanuaApplicationHealth.Login' + JanuaSystem.LastErrorMessage);
    raise;

  end;

  self.WriteLog(JanuaSystem.Log.Text);

end;

end.
