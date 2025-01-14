unit Janua.Postgres.Health;

interface

uses
  // System
  System.SysUtils, System.Variants, System.Classes,
  // Database
  Data.DB, Uni, MemDS,
  // DataModules
  udmPgHealth, udmHealthBooking,
  // Januaproject
  Janua.Core.Functions, Janua.Core.Health, Janua.Core.JPublic, Janua.Core.Cms, Janua.Core.Social,
  Janua.Core.Classes, Janua.Core.DB.Intf,
  Janua.Core.System, Janua.Postgres.System, Janua.Postgres.JPublic;

type
  TJanuaServerHealth = class(TJanuaCustomServerHealth)
  private
    FInternalSet: boolean;
  strict protected
    function InternalActivate: boolean; override;
  protected
    a: TdmPghealth;
    function CheckUp: boolean; override;
    procedure CreateDataModule; override;
    procedure DestroyDataModule(Force: boolean = false); override;
  public
    constructor Create(AOwner: TComponent); override;
    Destructor Destroy; override;
    procedure SetDoctorBranch(index: smallint);
    procedure SetDoctorRegion(index: smallint);
    procedure UpdateDoctor(aDoctor: TJanuaRecordDoctor); override;
    function SetNewDoctor(aDoctor: TJanuaRecordDoctor): boolean; override;
    function UploadConfig: boolean; override;
    function CheckDoctorExists(aDoctor: TJanuaRecordDoctor): boolean; override;
  published
  end;

type
  TJanuaServerHealthBooking = class(TJanuaCustomServerHealthBooking)
  private
    DM: udmHealthBooking.TdmHealthBooking;
    procedure ConnectDatasets;
  protected
    function InternalSetServices: boolean; override;
    function InternalSetUPServices: boolean; override;
    function InternalBookingInstitutes: TDataset; override;
    // function InternalBookingSelectedInstitutes(aInstitutes:  array[0..2] of integer): boolean;
    function InternalSearchInstitutes: boolean; override;
    function InternalInstituteConfirmation: boolean; override;
    procedure CreateDataModule; override;
    procedure DestroyDataModule(Force: boolean = false); override;
    function InternalAssignSessionBooking: boolean; override;
    function InternalDoBooking: int64; override;
    function InternalSearchServices: boolean; override;
    function InternalCheckSessionKey: boolean; override;
    procedure SetUserSessionProfile; override;
    function InternalOpenBooking: boolean; override;
    function InternalFinalisation(aBooking: TJanuaHealthBooking): boolean; Override;
    function InternalCheckOut: boolean; override;
    function InternalActivate: boolean; override;
    function InternalNotificationRead: boolean; override;
    procedure AssignDatasets; override;
    function InternalGetMeetings: integer; override;
    function InternalHealthNotifications(const aLimit: integer = 0): integer; override;
  public
    destructor Destroy; override;
    function SearchPostalCode(aCode: string): string; override;
    // needs to be overridden by the descendandt classes
  end;

type
  TJanuaPgTemplateHealth = class(TJanuaTemplateHealth)
  private
  public
  protected
  published
  end;

type
  TJanuaHealthPgWebController = class(TJanuaHealthWebController)
  private
    procedure PrepareLoginTemplate; override;
  protected
    function InternalActivate: boolean; override;
  public
    Destructor Destroy; override;
  published

  end;

type
  TJanuaHealthPgWebSession = class(TJanuaWebSessionHealth)
  private
    FJanuaHealthPgController: TJanuaHealthPgWebController;
    FIsSetController: boolean;
    procedure SetJanuaHealthPgController(const Value: TJanuaHealthPgWebController);
  protected
    procedure StartSession; override;
    procedure InternalCreateController; override;
    procedure InternalDestroyController; override;
  public
  published
    property JanuaHealthPgController: TJanuaHealthPgWebController read FJanuaHealthPgController
      write SetJanuaHealthPgController;
  end;

  { }

  // funzione non più in uso da quando abbiamo html5 e unicode
function YumedMessageToString(aMessage: TMessage): string;

implementation

uses Janua.Core.Servers, Janua.Application.Framework;

function AddDoctor(p_firstname, p_lastname, p_organisation_number: string; p_organisation_date: TDate;
  p_organisation_id, p_district_id, p_council_id: integer; prcCreateNewDoctor: TUniStoredProc): boolean;
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
  Result := IntToStr(aMessage.message_id) + ' ' + aMessage.subject + sLineBreak + aMessage.Text + sLineBreak +
    DateTimeToStr(aMessage.sent_datetime);
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
    if not supports(a, IJanuaServerDataModule, FIDM) then
      raise exception.Create('lCms do not supports IJanuaServerDataModule');

    a.SessionKey := self.SessionKey;
    a.ServerSession := self.FJanuaServerSession;
    a.Doctor := self.FDoctor;
    self.WriteLog('Creata DataModule e impostata sessione: ' + self.SessionKey);
  end;
end;

destructor TJanuaServerHealth.Destroy;
begin

  inherited;
end;

procedure TJanuaServerHealth.DestroyDataModule(Force: boolean = false);
begin
  if not(self.InTransaction) and ((not KeepAlive) or Force) and Assigned(a) then
  begin
    FreeAndNil(a);
    self.IDM := nil;
  end;
  inherited;
end;

function TJanuaServerHealth.InternalActivate: boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        Result := CheckUp;
        FInternalSet := True;
        self.WriteLog('TJanuaServerHealth.Activate: CheckUp');
        if Result then
        begin
          try
            WriteLog('TJanuaServerHealth.Activate: FActive');
            FDoctor.Profile := self.FJanuaSystem.UserProfile;
            WriteLog('TJanuaServerHealth.Activate: ' + self.FDoctor.Profile.ToString);
            // carica il profilo dall'oggetto JanuaServerSystem collegato
            // Imposta la nazione dalla connessione Public che contiene le tabelle Pubbliche
            if self.Verbose then
              WriteLog('TJanuaServerHealth.Activate: FServerSystem.UserProfile');
            // scrive il log solo se in modalità 'verbose';
            try
              try
                if self.Verbose then
                  WriteLog('TJanuaServerHealth.Activate: TDmPgHealth.Create(self);');
                CreateDataModule;
                if Verbose then
                  WriteLog('TJanuaServerHealth.Activate: TDmPgHealth.PopulateAsl;');
                a.PopulateAsl;
                FDoctor := a.Doctor;
                FHealthConfig := a.Doctor.HealthLocation.Config;
                WriteLog(a.log);
                if Verbose then
                  WriteLog('Profilo medico caricato: ' + self.FDoctor.Profile.ToString);
                // imposto la HealthConfig Locale
              except
                on e: exception do
                begin
                  self.WriteError('TJanuaServerHealth.Activate: ' + sLineBreak + a.log, e);
                end;
              end;
            finally
              self.DestroyDataModule;
            end;
            Result := True;
          except
            on e: exception do
            begin
              self.WriteLog('TJanuaServerHealth.Activate Error:' + e.Message);
              self.LastErrorMessage := e.Message;
            end;
          end;
        end
        else
        begin
          Result := false;
        end;

        Result := True
      end;
    except
      on e: exception do
        RaiseLocalException('InternalActivate', e);
    end;
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
  c: TJanuaPostgresSystem;
begin
  Result := inherited;
  c := nil;

  if not Active then
    self.Activate;

  if Active then
    try
      self.CreateDataModule;
      self.WriteLog('dmPgHealth.PopulateAsl');

      a.PopulateAsl;

      self.WriteLog('New User = ' + aDoctor.Profile.ToString);

      if self.FJanuaSystem.CheckNewUser(aDoctor.Profile) then
      begin
        self.WriteLog('Verificato Utente = ' + aDoctor.Profile.FirstName + ' ' + aDoctor.Profile.LastName);

        if self.FJanuaSystem.CreateNewUser(aDoctor.Profile) then
        begin
          self.WriteLog('Creato Utente = ' + aDoctor.Profile.FirstName + ' ' + aDoctor.Profile.LastName);
          { TODO 1 -oRiccardo -cCore : Move the Server System Creation to Internal Function }
          c := TJanuaPostgresSystem.Create(self);
          try
            c.JanuaServerSession := self.FJanuaSystem.JanuaServerSession;
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
                SendMailNewUser(aDoctor.Profile);
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
            JanuaFree(c);
            self.DestroyDataModule;
          end;
        end
        else
        begin
          // self.WriteLog(c.log.Text);
          self.HasErrors := True;
          self.LastErrorMessage := ('Non è stato possibile inserire l''utente' + c.LastErrorMessage);
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

{ TJanuaServerHealthBooking }

procedure TJanuaServerHealthBooking.AssignDatasets;
begin
  self.WriteLog('TJanuaServerHealthBooking.AssignDatasets start');
  if Assigned(DM) then
  begin
    try
      self.ConnectDatasets;
    except
      on e: exception do
      begin
        self.WriteError('TJanuaServerHealthBooking.InternalSetServices', e);
      end;
    end;
  end
  else
    raise exception.Create(self.Name + '.AssignDatasets DataModule not assigned');

  self.WriteLog('TJanuaServerHealthBooking.AssignDatasets end');
end;

procedure TJanuaServerHealthBooking.ConnectDatasets;
begin
  // usare isServer in ogni caso in cui si acceda a dataset locali oltreché posizionati su un Server
  // Esempio una applicazione VCL con ClientDataset e Datasource connesse.
  self.WriteLog('TJanuaServerHealthBooking.ConnectDatasets start');
  try
    if not self.KeepAlive or not self.IsServer then
    begin
      self.mdsServices.AssignDataset(DM.qryLkpServices);
      self.mdsInstitutes.AssignDataset(DM.qryInstitutesItems);
      self.mdsBooking.AssignDataset(DM.qryBookings);
      self.mdsBookingInstitutes.AssignDataset(DM.qryBookingInstitutes);
      self.mdsPrescription.AssignDataset(DM.qryBookingPrescription);
      self.mdsRelative.AssignDataset(DM.qryRelative);
      self.mdsNotifications.AssignDataset(DM.qryNotifications);
      self.mdsMeetings.AssignDataset(DM.qryMeetings);
    end
    else
    begin
      self.mdsServices.MemDataset := DM.qryLkpServices;
      self.mdsInstitutes.MemDataset := DM.qryInstitutesItems;
      self.mdsBooking.MemDataset := DM.qryBookings;
      self.mdsBookingInstitutes.MemDataset := DM.qryBookingInstitutes;
      self.mdsPrescription.MemDataset := DM.qryBookingPrescription;
      self.mdsRelative.MemDataset := DM.qryRelative;
      self.mdsNotifications.MemDataset := DM.qryNotifications;
      self.mdsMeetings.MemDataset := DM.qryMeetings;
    end;

  except
    on e: exception do
    begin
      self.WriteError('TJanuaServerHealthBooking.ConnectDatasets', e);
    end;

  end;

  self.WriteLog('TJanuaServerHealthBooking.ConnectDatasets end');
end;

procedure TJanuaServerHealthBooking.CreateDataModule;
begin
  self.WriteLog('TJanuaServerHealthBooking.JanuaServerSystem start');
  if not Assigned(JanuaServerSystem) then
    raise exception.Create('TJanuaServerHealthBooking.CreateDataModule JanuaServerSystem is nil');

  self.WriteLog('TJanuaServerHealthBooking.Assigned(DM) start');
  if not Assigned(DM) then
  begin
    self.WriteLog('TJanuaServerHealthBooking.udmHealthBooking.TdmHealthBooking.Create(self');
    DM := udmHealthBooking.TdmHealthBooking.Create(self);
    if not supports(DM, IJanuaServerDataModule, FIDM) then
      raise exception.Create('lCms do not supports IJanuaServerDataModule');
    self.WriteLog('TJanuaServerHealthBooking.Session_id > 0');
    if self.FJanuaServerSession.Session_id > 0 then
      DM.ServerSession := self.JanuaServerSystem.JanuaServerSession
    else if JanuaServerSystem.JanuaServerSession.Session_id > 0 then
    begin
      DM.ServerSession := self.JanuaServerSystem.JanuaServerSession;
      DM.SessionUID := self.SessionID;
      DM.SessionKey := self.SessionKey;
    end;
    DM.TestConnect;
    self.WriteLog('TJanuaServerHealthBooking.ConnectDatasets');
    if self.KeepAlive then
      ConnectDatasets;

    {
      DM.User := self.JanuaServerSystem.UserProfile.User;
      DM.updateMessageCount;
      FMessageCount := a.MessageCount;
    }
  end;
end;

destructor TJanuaServerHealthBooking.Destroy;
begin
  DestroyDataModule(True);
  inherited;
end;

procedure TJanuaServerHealthBooking.DestroyDataModule(Force: boolean);
begin
  if ((not self.KeepAlive) or Force) and Assigned(DM) then
  begin
    DM.Free;
    DM := nil;
    self.IDM := nil;
  end;
  inherited;
end;

function TJanuaServerHealthBooking.InternalBookingInstitutes: TDataset;
// funzione che conferma per una sessione ben definita la prenotazione dei primi 3 istituti prescelti
// la chiave di sessione (sessionKey) serve come controllo per evitare errori.
begin
  Result := nil;
  if Assigned(DM) then
  begin
    if DM.AssignBooking(self.SessionKey, self.BookingID) then
      Result := DM.qryBookingInstitutes
  end;
end;

function TJanuaServerHealthBooking.InternalCheckOut: boolean;
begin
  Result := false;
  if (self.BookingID <> 0) and Assigned(self.DM) then
  begin
    DM.spUserCheckOut.ParamByName('p_booking_id').AsLargeInt := self.BookingID;
    DM.spUserCheckOut.Execute;
    Result := DM.spUserCheckOut.ParamByName('Result').AsBoolean;
  end;
end;

function TJanuaServerHealthBooking.InternalCheckSessionKey: boolean;
begin
  // self.SessionKey := aKey;
  Result := false;
  if (self.SessionKey <> '') and Assigned(self.DM) then
  begin
    Result := self.DM.CheckSessionKey(self.SessionKey);
    if Result then
      self.FUserProfile := self.DM.UserProfile;
  end;
end;

function TJanuaServerHealthBooking.InternalDoBooking: int64;
begin
  Result := -1;
  if Assigned(DM) then
  begin
    if DM.CheckSessionKey(SessionKey) then
    begin
      // self.UserProfile.LoadFromDataset(DM.qryUserSession, DM.qryUserProfile);
      FUserProfile := DM.UserProfile;
      self.SessionID := DM.SessionUID;
      self.DM.Select1 := self.Select1;
      self.DM.Select2 := self.Select2;
      self.DM.Select3 := self.Select3;
      self.FBookingID := DM.DoBooking(self.SearchID, True);
      Result := self.FBookingID;
    end
    else
    begin
      Result := -1;
    end;
  end;
end;

function TJanuaServerHealthBooking.InternalFinalisation(aBooking: TJanuaHealthBooking): boolean;
begin
  // base risultato è false
  Result := false;

  if Assigned(DM) then
  begin
    // Il risultato è OK se viene portata a termine la prenotazione con i dati di finalizzazione inseriti.
    // se id fosse '0' avremmo risultato > 1
    try
      Result := DM.BookingFinalisation(aBooking);
    except
      on e: exception do
      begin
        self.HasErrors := True;
        self.LastErrorMessage := 'InternalFinalisation: ' + e.Message;
        if self.DebugMode then
          raise exception.Create('InternalFinalisation: ' + e.Message);

      end;
    end;
  end
  else
  begin
    self.HasErrors := True;
    self.LastErrorMessage := 'InternalFinalisation Errore istanza DataModule non creato';
    if self.DebugMode then
      raise exception.Create('InternalFinalisation Errore istanza DataModule non creato');
  end;
end;

function TJanuaServerHealthBooking.InternalGetMeetings: integer;
begin
  Result := 0;

  if Assigned(DM) then
  begin
    DM.UserProfile := self.FUserProfile;
    // Il risultato è OK se viene trovato 1 istituto avendo come chiave un id il risultato è 1
    // se id fosse '0' avremmo risultato > 1
    Result := DM.SearchMeetings(self.FUserProfile.User.id);

    // in ogni caso assegno i Data Module che non si sa mai ..................................
    self.ConnectDatasets;
  end
  else
  begin
    self.HasErrors := True;
    self.LastErrorMessage := 'InternalOpenBooking Errore istanza DataModule non creato';
  end;
end;

function TJanuaServerHealthBooking.InternalHealthNotifications(const aLimit: integer = 0): integer;
begin
  Result := 0;

  if Assigned(DM) then
  begin
    DM.UserProfile := self.FUserProfile;
    // Il risultato è OK se viene trovato 1 istituto avendo come chiave un id il risultato è 1
    // se id fosse '0' avremmo risultato > 1
    Result := DM.SearchNotifications(self.FUserProfile.User.id);
    // in ogni caso assegno i Data Module che non si sa mai ..................................
    self.ConnectDatasets;
  end
  else
  begin
    self.HasErrors := True;
    self.LastErrorMessage := 'InternalOpenBooking Errore istanza DataModule non creato';
  end;

end;

function TJanuaServerHealthBooking.InternalInstituteConfirmation: boolean;
begin
  Result := false;

  if Assigned(DM) then
  begin
    // Il risultato è OK se viene trovato 1 istituto avendo come chiave un id il risultato è 1
    // se id fosse '0' avremmo risultato > 1
    Result := DM.InstituteConfirmation(self.FBookingID, self.InstituteID);
    // in ogni caso assegno i Data Module che non si sa mai ..................................
    self.OpenBooking(self.BookingID);
    self.ConnectDatasets;
  end
  else
  begin
    self.HasErrors := True;
    self.LastErrorMessage := 'InternalOpenBooking Errore istanza DataModule non creato';
  end;
end;

function TJanuaServerHealthBooking.InternalNotificationRead: boolean;
begin
  Result := false;
  if Assigned(DM) then
  begin
    DM.NotificationRead(self.FNotificationID);
    Result := True;
  end
  else
  begin
    self.HasErrors := True;
    self.LastErrorMessage := 'InternalNotificationRead Errore istanza DataModule non creato';
  end;
end;

function TJanuaServerHealthBooking.InternalOpenBooking: boolean;
begin
  // base risultato è false
  Result := false;

  if Assigned(DM) then
  begin
    // Il risultato è OK se viene trovato 1 istituto avendo come chiave un id il risultato è 1
    // se id fosse '0' avremmo risultato > 1
    DM.OpenBooking(self.FBookingID);
    Result := DM.qryBookings.RecordCount > 0;
    // in ogni caso assegno i Data Module che non si sa mai ..................................
    self.mdsBooking.MemDataset := DM.qryBookings;
    self.mdsBookingInstitutes.MemDataset := DM.qryBookingInstitutes;
    self.mdsPrescription.MemDataset := DM.qryBookingPrescription;
    self.mdsRelative.MemDataset := DM.qryRelative;
  end
  else
  begin
    self.HasErrors := True;
    self.LastErrorMessage := 'InternalOpenBooking Errore istanza DataModule non creato';
  end;
end;

function TJanuaServerHealthBooking.InternalSearchInstitutes: boolean;
begin
  Result := false;
  if Assigned(DM) then
  begin
    DM.SessionKey := self.SessionKey;
    DM.SessionUID := self.SessionID;
    DM.UserProfile := self.FUserProfile;
    DM.SearchInstitutes(self.SessionID, self.FUserProfile.User.id, self.SearchItemID, self.Coordinates,
      self.FSearchLimit, self.FSearchPage);
    Result := DM.qryInstitutesItems.RecordCount > 0;
    self.Institutes.LoadFromDataset(DM.qryInstitutesItems);
    // self.Institutes.LoadFromDataset(self.FmdsInstitutes.MemDataset);
    self.ConnectDatasets;
  end;
end;

function TJanuaServerHealthBooking.InternalSearchServices: boolean;
begin
  Result := false;
  if Assigned(DM) then
    try
      DM.SearchServices(self.FSearchServices);
      self.ConnectDatasets;
      // self.FmdsServices := DM.qryLkpServices;
      Result := True;
    except
      on e: exception do
      begin
        Result := false;
        self.WriteError('TJanuaServerHealthBooking.InternalSearchServices', e);
      end;
    end;
end;

function TJanuaServerHealthBooking.InternalSetServices: boolean;
begin
  inherited;
  Result := false;
  if Assigned(DM) then
    try
      DM.OpenSearchServices;
      self.ConnectDatasets;
      Result := True;
    except
      on e: exception do
      begin
        Result := false;
        self.WriteError('TJanuaServerHealthBooking.InternalSetServices', e);
      end;
    end;
end;

function TJanuaServerHealthBooking.InternalSetUPServices: boolean;
begin
  Result := True;
  { TODO : ImplementHealth Booking Internal Setup Services }
end;

function TJanuaServerHealthBooking.SearchPostalCode(aCode: string): string;
begin
  Result := inherited;
  if self.FCheckPostalCode then
  begin
    self.CreateDataModule;
    try
      if Assigned(self.DM) then
        Result := self.DM.SearchPostalCode(aCode)

    finally
      self.DestroyDataModule();
    end;

  end;
end;

procedure TJanuaServerHealthBooking.SetUserSessionProfile;
begin
  inherited;
  if Assigned(DM) then
  begin
    self.SetUserProfile(DM.UserProfile);
    self.WriteLog('UserProfile: ' + sLineBreak + UserProfile.ToString);
    self.WriteLog(self.UserProfile.ToString);
    self.WriteLog(self.UserProfile.User.ToJSON);
    self.WriteLog('TJanuaPostgresSystem.SessionKey: ' + DM.SessionKey);
    self.SessionKey := DM.SessionKey;

    self.FJanuaServerSession := DM.ServerSession;
    self.FJanuaServerSession.Key := DM.SessionKey;
    self.FJanuaServerSession.Session_id := DM.SessionUID;
    self.FJanuaServerSession.Email := DM.UserProfile.User.Email;
    self.FJanuaServerSession.Schema_id := DM.SchemaID;
    self.FJanuaServerSession.User_id := DM.UserProfile.User.id;
    self.FJanuaServerSession.Social_ID := DM.UserProfile.User.SocialID;
    self.FJanuaServerSession.Social_Kind := DM.UserProfile.User.SocialType;
    self.FJanuaServerSession.isPublic := DM.UserProfile.User.isPublic;

    self.Activate;
  end;

end;

function TJanuaServerHealthBooking.InternalActivate: boolean;
begin
  Result := inherited;
end;

function TJanuaServerHealthBooking.InternalAssignSessionBooking: boolean;
begin
  Result := false;
  if Assigned(DM) then
  begin
    Result := DM.AssignBooking(self.SessionKey, self.BookingID);
  end;
end;

{
  function TJanuaServerHealthBooking.InternalBookingInstitutes: TCustomDADataset;
  begin
  if Assigned(DM) then
  begin
  DM.GetBooking(self.BookingID);
  Result := DM.qryBookingInstitutes
  end;
  end;

  function TJanuaServerHealthBooking.InternalSearchInstitutes: TCustomDADataset;
  begin

  end;
}

{ TJanuaHealthPgWebSession }

procedure TJanuaHealthPgWebSession.InternalCreateController;
begin
  if not Assigned(FJanuaHealthPgController) then
    self.FJanuaHealthPgController := TJanuaHealthPgWebController.Create(self);
  if Assigned(FJanuaHealthPgController) then
  begin
    FJanuaHealthPgController.Activate;
    self.FJanuaHealthController := self.FJanuaHealthPgController;
    self.FJanuaController := FJanuaHealthPgController;
  end;

end;

procedure TJanuaHealthPgWebSession.InternalDestroyController;
begin
  if not self.FIsSetController then
  begin
    JanuaFree(FJanuaHealthPgController);
    self.FJanuaHealthPgController := nil;
    self.FJanuaHealthController := nil;
    self.FJanuaController := nil;
  end;

end;

procedure TJanuaHealthPgWebSession.SetJanuaHealthPgController(const Value: TJanuaHealthPgWebController);
begin
  FJanuaHealthPgController := Value;
  self.FIsSetController := Assigned(FJanuaHealthPgController);
  self.FJanuaHealthController := FJanuaHealthPgController;
  self.FJanuaController := FJanuaHealthPgController;
end;

procedure TJanuaHealthPgWebSession.StartSession;
begin
  inherited;
end;

{ TJanuaHealthPgWebController }

destructor TJanuaHealthPgWebController.Destroy;
begin
  if Assigned(self.FJanuaServerHealthBooking) and not self.Persistent then
    self.FJanuaServerHealthBooking.Free;
  inherited;
end;

function TJanuaHealthPgWebController.InternalActivate: boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        if not Assigned(FJanuaServerHealthBooking) then
          FJanuaServerHealthBooking := TJanuaServerHealthBooking.Create(nil);
      end;
    except
      on e: exception do
        RaiseException('InternalActivate', e, self);
    end;

end;

procedure TJanuaHealthPgWebController.PrepareLoginTemplate;
begin
  inherited;

end;

end.
