unit Janua.Server.Health;

interface

uses
  SysUtils, Variants, Classes, DB, PgAccess, Janua.Core.Functions,
  Janua.Core.Health, Janua.Core.JPublic, Janua.Core.Cms, Janua.Core.Social,
  Janua.Core.System, Janua.Server.System, udmPgHealth, Janua.Core.Mail,
  Janua.Server.JPublic, Janua.Server.Functions;

type
  TJanuaServerHealth = class(TJanuaCustomServerHealth)
  private
    FInternalSet: boolean;
    procedure CreateDataModule;
    procedure DestroyDataModule;
  protected
    a: TdmPghealth;
    function CheckUp: boolean; override;
    procedure SetActive(const Value: boolean); override;
  public
    constructor Create(AOwner: TComponent); override;
    Destructor Destroy; override;
    function Activate: boolean; override;
    procedure SetDoctorBranch(index: smallint);
    procedure SetDoctorRegion(index: smallint);
    procedure UpdateDoctor(aDoctor: TJanuaRecordDoctor); override;
    function SetNewDoctor(aDoctor: TJanuaRecordDoctor): boolean; override;
    function UploadConfig: boolean; override;
    function CheckDoctorExists(aDoctor: TJanuaRecordDoctor): boolean; override;
  published
  end;

  // funzione non più in uso da quando abbiamo html5 e unicode
function YuMedArticleToString(aArticle: TArticle): string;
function YuMedRequestToString(aRequest: TYuMedRequest): string;
function YumedMessageToString(aMessage: TMessage): string;

implementation

function AddDoctor(p_firstname, p_lastname, p_organisation_number: string;
  p_organisation_date: TDate; p_organisation_id, p_district_id, p_council_id: integer;
  prcCreateNewDoctor: TPgStoredProc): boolean;
begin
  prcCreateNewDoctor.ParamByName('p_firstname').Value := p_firstname;
  prcCreateNewDoctor.ParamByName('p_lastname').Value := p_lastname;
  prcCreateNewDoctor.ParamByName('p_organisation_number').Value := p_organisation_number;
  prcCreateNewDoctor.ParamByName('p_organisation_date').Value := p_organisation_date;
  prcCreateNewDoctor.ParamByName('p_organisation_id').Value := p_organisation_id;
  prcCreateNewDoctor.ParamByName('p_district_id').Value := p_district_id;
  prcCreateNewDoctor.ParamByName('p_council_id').Value := p_council_id;
  prcCreateNewDoctor.Prepare;
  prcCreateNewDoctor.ExecProc;
  Result := prcCreateNewDoctor.ParamByName('Result').AsString <> 'Error';
end;

function YumedMessageToString(aMessage: TMessage): string;
begin
  Result := IntToStr(aMessage.message_id) + ' ' + aMessage.subject + sLineBreak + aMessage.Text +
    sLineBreak + DateTimeToStr(aMessage.sent_datetime);
end;

function YuMedRequestToString(aRequest: TYuMedRequest): string;
begin
  Result := aRequest.Referer;
end;

function YuMedArticleToString(aArticle: TArticle): string;
begin
  Result := aArticle.Title + sLineBreak + DateTimeToStr(aArticle.ArticleDate) + sLineBreak +
    aArticle.TextAbstract + sLineBreak + aArticle.Text + sLineBreak + aArticle.Link;
end;

{ TJanuaServerHealth }

{ l'attivazione di JanuaServerHealth deve impostare i valori delgi 'array'
  regioni, province, asl, ordini, associazioni

  Questi dati dovrebbero essere inviati in formato Json al 'chiamante' in base
  alla sessione utente attivata.

  Eventualmente si possono elaborare procedure di riposta 'light' usando
  connession postgres temporanee in modo da distruggere la classe e non lasciarla
  attiva durante una sessione di lavoro.

}

function TJanuaServerHealth.Activate: boolean;
begin
  Result := inherited;
  FInternalSet := True;
  self.WriteLog('TJanuaServerHealth.Activate: CheckUp');
  if self.CheckUp then
  begin
    if not self.FActive then
      try
        self.WriteLog('TJanuaServerHealth.Activate: FActive');
        self.FDoctor.Profile := self.FJanuaSystem.UserProfile;
        self.WriteLog('TJanuaServerHealth.Activate: ' + self.FDoctor.Profile.ToString);
        // carica il profilo dall'oggetto JanuaServerSystem collegato
        // Imposta la nazione dalla connessione Public che contiene le tabelle Pubbliche
        if self.Verbose then
          self.WriteLog('TJanuaServerHealth.Activate: FServerSystem.UserProfile');
        // scrive il log solo se in modalità 'verbose';
        try
          try
            if self.Verbose then
              self.WriteLog('TJanuaServerHealth.Activate: TDmPgHealth.Create(self);');
            self.CreateDataModule;
            if self.Verbose then
              self.WriteLog('TJanuaServerHealth.Activate: TDmPgHealth.PopulateAsl;');
            a.PopulateAsl;
            self.FDoctor := a.Doctor;
            self.FHealthConfig := a.Doctor.HealthLocation.Config;
            self.WriteLog(a.log.Text);
            if self.Verbose then
              self.WriteLog('Profilo medico caricato: ' + self.FDoctor.Profile.ToString);
            // imposto la HealthConfig Locale
          except
            on e: exception do
            begin
              self.WriteError('TJanuaServerHealth.Activate: ' + sLineBreak + a.log.Text, e);
            end;
          end;
        finally
          self.DestroyDataModule;
        end;
        self.FActive := True;
      except
        on e: exception do
        begin
          self.FActive := false;
          self.WriteLog('TJanuaServerHealth.Activate Error:' + e.Message);
          self.FLastErrorMessage := e.Message;
        end;
      end;
    Result := self.FActive;
  end
  else
  begin
    Result := false;
    self.FActive := false;
  end;
end;

function TJanuaServerHealth.CheckDoctorExists(aDoctor: TJanuaRecordDoctor): boolean;
begin
  self.CreateDataModule;
  try
    Result := a.CheckDoctorExists(aDoctor);
    if Result then
      self.FoundDoctor := a.qrySearchDoctorfull_name.AsWideString;
  finally
    self.DestroyDataModule;
  end;
end;

function TJanuaServerHealth.CheckUp: boolean;
begin
  Result := inherited;
  if not Result then
    self.WriteLog('ChekUp Not Passed')
  else
    self.WriteLog('ChekUp OK Passed');
end;

constructor TJanuaServerHealth.Create(AOwner: TComponent);
begin
  inherited;
  FInternalSet := false;
end;

procedure TJanuaServerHealth.CreateDataModule;
begin
  if not Assigned(a) then
  begin
    a := TdmPghealth.Create(nil);
    a.SessionKey := self.FSessionKey;
    a.ServerSession := self.FJanuaServerSession;
    if Assigned(self.JanuaLogger) and (self.JanuaLogger is TJanuaCoreLogger) then
      a.JanuaCoreLogger := TJanuaCoreLogger(self.JanuaLogger);
    a.Doctor := self.FDoctor;
    self.WriteLog('Creata DataModule e impostata sessione: ' + self.FSessionKey);
  end;
end;

destructor TJanuaServerHealth.Destroy;
begin

  inherited;
end;

procedure TJanuaServerHealth.DestroyDataModule;
begin
  if not self.KeepAlive and Assigned(a) then
    FreeAndNil(a);
end;

procedure TJanuaServerHealth.SetActive(const Value: boolean);
begin
  inherited;
  if not FInternalSet and Value then
    self.Activate;
end;

procedure TJanuaServerHealth.SetDoctorBranch(index: smallint);
begin
  { TODO :
    Impostar Lista Branches come proprietà su Activate
    Programmare la ricerca per Index della Branch sulla List
    Impostare pure la FListaSpecialita dopo imposto lista branche }
end;

procedure TJanuaServerHealth.SetDoctorRegion(index: smallint);
begin
  { TODO :
    Impostar Lista Regioni come proprietà su Activate
    Impostare la lista Asl dopo la ricerca dottore-regione ....
    Programmare la ricerca per Index della Region sulla List }
end;

function TJanuaServerHealth.SetNewDoctor(aDoctor: TJanuaRecordDoctor): boolean;
var
  c: TJanuaServerSystem;
begin
  Result := inherited;

  if not self.FActive then
    self.FActive := self.Activate;

  if self.FActive then
    try
      self.CreateDataModule;
      self.WriteLog('dmPgHealth.PopulateAsl');

      a.PopulateAsl;

      self.FJanuaSystem.ClearLog;

      self.WriteLog('New User = ' + aDoctor.Profile.ToString);

      if self.FJanuaSystem.CheckNewUser(aDoctor.Profile) then
      begin
        self.WriteLog('Verificato Utente = ' + aDoctor.Profile.FirstName + ' ' +
          aDoctor.Profile.LastName);

        if self.FJanuaSystem.CreateNewUser(aDoctor.Profile) then
        begin
          self.WriteLog('Creato Utente = ' + aDoctor.Profile.FirstName + ' ' +
            aDoctor.Profile.LastName);

          c := TJanuaServerSystem.Create(self);
          try
            c.JanuaOS := self.FJanuaSystem.JanuaOS;
            c.JanuaServerSession := self.FJanuaSystem.JanuaServerSession;
            c.ApplicationProfile := self.FApplicationProfile;
            c.UserProfile := aDoctor.Profile;

            self.WriteLog('Eseguo test Login con nuovo utente');

            if c.login then
            begin
              a.SessionKey := c.SessionKey;
              self.WriteLog('setUserProfile dmPgHealth UserProfile');
              aDoctor.Profile.User := c.UserProfile.User;

              a.AddDoctorProfile(aDoctor);

              self.WriteLog('SendMailNewUser');
              try
                SendMailNewUser(aDoctor);
              except
                on e: exception do
                begin
                  self.HasErrors := True;
                  self.WriteLog('Errore di invio mail al nuovo utente ');
                end;

              end;
              self.WriteLog('SessionKey');

            end;
          finally
            FreeAndNil(c);
            self.DestroyDataModule;
          end;
        end
        else
        begin
          // self.WriteLog(c.log.Text);
          self.HasErrors := True;
          self.LastErrorMessage := ('Non è stato possibile inserire l''utente' +
            c.LastErrorMessage);
        end;
      end
      else
        self.WriteLog('Utente non Verificato, errato o già Esistente');
    except
      on e: exception do
      begin
        self.WriteError('Errore TfrmTestKeriks.AdvGlowButton1Click', e);
      end;
    end
end;

procedure TJanuaServerHealth.UpdateDoctor(aDoctor: TJanuaRecordDoctor);
begin
  inherited;
  self.CreateDataModule;
  try
    a.AddDoctorProfile(aDoctor);
  finally
    self.DestroyDataModule;
  end;
end;

function TJanuaServerHealth.UploadConfig: boolean;
begin
  self.CreateDataModule;
  try
    Result := a.UploadConfig;
  finally
    self.DestroyDataModule;
  end;
end;

end.
