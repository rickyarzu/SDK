unit Janua.Core.University;

{$I JANUACORE.INC}

interface

uses Janua.Core.Classes, Janua.Core.System,
  Data.DB, Janua.Core.Servers, FireDAC.Comp.Client,
  System.SysUtils, System.Classes, Janua.Core.Users, Janua.Core.Functions,
  Janua.Core.JPublic, Janua.Core.Types,
  Janua.Core.Books, Janua.Core.CustomControls, Janua.Core.Entities;

type
  TJanuaUniversityUserProfile = (juuStudent, juuTeacher, juuPrivateCustomer, juuCompany);

type
  TJanuaUniModule = record
    Id: integer;
    Name: string;
  end;

type
  TJanuaUniFaculty = record
    Id: integer;
    Name: string;
    modules: array of TJanuaUniModule;
    SelectedModule: TJanuaUniModule;
  end;

type
  TJanuaUniversity = record
    Id: integer;
    index: integer;
    Name: string;
    faculties: array of TJanuaUniFaculty;
    SelectedFaculty: TJanuaUniFaculty;
  end;

type
  /// <summary>
  /// Contenitore di tutti i record di Ricerca di Health.
  /// </summary>
  TJanuaUniConfig = record
    Country: TISOCountry;
    Universities: array of TJanuaUniversity;

    /// <summary>
    /// Univeristà selezionata
    /// </summary>
    SelectedUniversity: TJanuaUniversity;
  private

  public
    function ToString(full: Boolean = true): string;
    function GetUniByName(aName: string): Boolean;
    function GetUniByID(aID: integer): Boolean;
    function ListUniversities: TStringList;
    function GetUnibyIndex(aIndex: integer): Boolean;
  end;

type
  TJanuaUniLocation = record
    Config: TJanuaUniConfig;
    UniversityID: integer;
    FacultyID: integer;
    ModuleID: integer;

    /// <summary>
    /// Se lo studente ha già un indirizzo allora questo record contiene il
    /// suo indirizzo specifico.
    /// </summary>
    Address: TJanuaRecordAddress;

  end;

type
  TJanuaCustomServerUni = class(TJanuaCustomServer)
  private
    FJanuaServerSystem: TJanuaCustomServerSystem;
    FJanuaServerJPublic: TJanuaCustomServerJPublic;
    FDefaultCountryID: smallint;
    FJanuaCountrySearch: TCountrySearch;
    FJanuaSystem: TJanuaCustomServerSystem;
    procedure SetcdsFaculties(const Value: TDataset);
    procedure SetcdsModules(const Value: TDataset);
    procedure SetcdsUniversities(const Value: TDataset);
    procedure SetJanuaServerSystem(const Value: TJanuaCustomServerSystem);
    procedure SetJanuaServerJPublic(const Value: TJanuaCustomServerJPublic);
    procedure SetCountryID(const Value: integer);
    procedure SetCountryName(const Value: string);
    procedure SetDefaultCountryID(const Value: smallint);
    procedure SetJanuaCountrySearch(const Value: TCountrySearch);
    procedure SetJanuaSystem(const Value: TJanuaCustomServerSystem);
  protected
    FcdsModules: TDataset;
    FcdsUniversities: TDataset;
    FcdsFaculties: TDataset;
    FCountryID: integer;
    FCountryName: string;
    function InternalCountryByID(Id: integer): Boolean; virtual;
    function InternalCountryByName(Name: string): Boolean; virtual;
  strict protected
    function InternalActivate: Boolean; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Clear;
    function CountryByID(Id: integer): Boolean; virtual;
    // questa funzione nel discendente 'chiama' InternalCountrybyID se non lo trova chiama il db
    function CountryByName(Name: string): Boolean; virtual;
    // questa funzione nel discendente 'chiama' InternalCountrybyName se non lo trova chiama il db
    function OpenUniversities: Boolean; virtual;
  published
    property DefaultCountryID: smallint read FDefaultCountryID write SetDefaultCountryID default 1;
    property CountryID: integer read FCountryID write SetCountryID;
    property CountryName: string read FCountryName write SetCountryName;
    property cdsUniversities: TDataset read FcdsUniversities write SetcdsUniversities;
    property cdsFaculties: TDataset read FcdsFaculties write SetcdsFaculties;
    property cdsModules: TDataset read FcdsModules write SetcdsModules;
    property JanuaServerSystem: TJanuaCustomServerSystem read FJanuaServerSystem write SetJanuaServerSystem;
    property JanuaServerJPublic: TJanuaCustomServerJPublic read FJanuaServerJPublic write SetJanuaServerJPublic;
    property JanuaCountrySearch: TCountrySearch read FJanuaCountrySearch write SetJanuaCountrySearch;
    property JanuaSystem: TJanuaCustomServerSystem read FJanuaSystem write SetJanuaSystem;
  end;

type
  TJanuaRecordStudent = record
    StudentLocation: TJanuaUniLocation;
    regdate: TDate;
    regnumber: string;
    Id: int64;
    role_id: smallint;
    // Role: THealthRoles;
    // ----------------------------------------------
    isSet: Boolean;
    photoURL: string;
    RegistrationNumber: string;
    RegistrationDate: TDateTime;
    // Councils : array of TCouncil;
    Log: string;
    HasErrrors: Boolean;
    LastErrorMessage: string;
  public
    function ToString: string;
    procedure SetFromDataset(Dataset: TDataset);
    procedure SaveToDataset(Dataset: TDataset);
    procedure writelog(logstring: string);
  end;

type
  TJanuaUniProfile = class(TJanuaProfile)
  private
    FStudentProfile: TJanuaRecordStudent;
    FProfile: TJanuaRecordUserProfile;
    FJanuaServerUni: TJanuaCustomServerUni;
  strict protected
    function InternalActivate: Boolean; override;
  protected
    procedure SetProfile(const Value: TJanuaRecordUserProfile);
    procedure SetStudentProfile(const Value: TJanuaRecordStudent);
    procedure SetJanuaServerUni(const Value: TJanuaCustomServerUni);
  public
    // questa funzione nel discendente 'chiama' InternalCountrybyName se non lo trova chiama il db
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Clear;
  published
    property Profile: TJanuaRecordUserProfile read FProfile write SetProfile;
    property StudentProfile: TJanuaRecordStudent read FStudentProfile write SetStudentProfile;
    property JanuaServerUni: TJanuaCustomServerUni read FJanuaServerUni write SetJanuaServerUni;

  end;

type
  TJanuaUniController = class(TJanuaCustomDBController)
  private
    FdsModules: TDataSource;
    FdsUniversities: TDataSource;
    FdsFaculties: TDataSource;
    FJanuaServerUni: TJanuaCustomServerUni;
    procedure SetdsFaculties(const Value: TDataSource);
    procedure SetdsModules(const Value: TDataSource);
    procedure SetdsUniversities(const Value: TDataSource);
    procedure SetJanuaServerUni(const Value: TJanuaCustomServerUni);
  protected
  public
  published
    property JanuaServerUni: TJanuaCustomServerUni read FJanuaServerUni write SetJanuaServerUni;
    property dsUniversities: TDataSource read FdsUniversities write SetdsUniversities;
    property dsFaculties: TDataSource read FdsFaculties write SetdsFaculties;
    property dsModules: TDataSource read FdsModules write SetdsModules;
  end;

type
  /// <summary>
  /// Gestore dei Libri Universitario
  /// </summary>
  TJanuaUniBooksServer = class(TJanuaCustomServerBooks)

  private
    FJanuaServerUni: TJanuaCustomServerUni;
  protected
    procedure SetJanuaServerUni(const Value: TJanuaCustomServerUni); virtual;
  public

  published
    /// <summary>
    /// Collegamento al Server Universitario per avere la Location Universitaria.
    /// </summary>
    /// <remarks>
    /// Verificare che sia attivo il collegamento sulla procedura Activate
    /// </remarks>
    property JanuaServerUni: TJanuaCustomServerUni read FJanuaServerUni write SetJanuaServerUni;

  end;

implementation

{ TJanuaRecordStudent }

procedure TJanuaRecordStudent.SaveToDataset(Dataset: TDataset);
begin

end;

procedure TJanuaRecordStudent.SetFromDataset(Dataset: TDataset);
begin

end;

function TJanuaRecordStudent.ToString: string;
begin

end;

procedure TJanuaRecordStudent.writelog(logstring: string);
begin

end;

{ TJanuaUniProfile }

procedure TJanuaUniProfile.Clear;
begin

end;

constructor TJanuaUniProfile.Create(AOwner: TComponent);
begin
  inherited;

end;

destructor TJanuaUniProfile.Destroy;
begin

  inherited;
end;

function TJanuaUniProfile.InternalActivate: Boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        if not FJanuaServerUni.Active then
          FJanuaServerUni.Activate;
        Result := FJanuaServerUni.Active;

        { TODO : Verificare tutte le condizioni che siano rispettate per attivare il profilo Uni }
      end;
    except
      on e: exception do
        RaiseLocalException('InternalActivate', e);
    end;
end;

procedure TJanuaUniProfile.SetJanuaServerUni(const Value: TJanuaCustomServerUni);
begin
  FJanuaServerUni := Value;
end;

procedure TJanuaUniProfile.SetProfile(const Value: TJanuaRecordUserProfile);
begin
  FProfile := Value;
end;

procedure TJanuaUniProfile.SetStudentProfile(const Value: TJanuaRecordStudent);
begin
  FStudentProfile := Value;
end;

{ TJanuaCustomServerUni }

procedure TJanuaCustomServerUni.Clear;
begin

end;

function TJanuaCustomServerUni.CountryByID(Id: integer): Boolean;
begin
  if not Assigned(FJanuaCountrySearch) then
  begin
    Result := false;
    self.writelog('TCountrySearch.Activate: Non assegnato FJanuaServerJPublic esco.... ');
    LocalRaiseException('TCountrySearch.Activate: Non assegnato FJanuaServerJPublic');
  end
  else
    Result := true;
  { TODO -oRiccardo -cSystem : Implementare funzione CountryByName in TJanuaCustomServerUni }
end;

function TJanuaCustomServerUni.CountryByName(Name: string): Boolean;
begin
  Result := false;
  { TODO -oRiccardo -cSystem : Implementare funzione CountryByName in TJanuaCustomServerUni }
end;

constructor TJanuaCustomServerUni.Create(AOwner: TComponent);
begin
  inherited;
  self.FDefaultCountryID := 1;
end;


destructor TJanuaCustomServerUni.Destroy;
begin

  inherited;
end;

function TJanuaCustomServerUni.InternalActivate: Boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        writelog('TJanuaCustomServerUni.Activate: Jpublic: ' + Assigned(FJanuaServerJPublic).ToString);
        if not Assigned(self.FJanuaServerJPublic) then
        begin
          Result := false;
          self.writelog('TCountrySearch.Activate: Non assegnato FJanuaServerJPublic esco.... ');
          LocalRaiseException('TCountrySearch.Activate: Non assegnato FJanuaServerJPublic');
        end
        else
        begin
          self.writelog('TCountrySearch.Activate: self.CountryByID = ' + DefaultCountryID.ToString());
          Result := FJanuaServerJPublic.Active and self.CountryByID(FJanuaServerJPublic.CountryID);
        end;
      end;
    except
      on e: exception do
        RaiseLocalException('InternalActivate', e);
    end;

end;

function TJanuaCustomServerUni.InternalCountryByID(Id: integer): Boolean;
begin
  { TODO -cUniversity : Implement Country By ID }
  Result := false
end;

function TJanuaCustomServerUni.InternalCountryByName(Name: string): Boolean;
begin
  Result := false;
  { TODO -cUniversity : Implement Country By Name }
end;

function TJanuaCustomServerUni.OpenUniversities: Boolean;
begin
  Result := false;
  try
    if not self.KeepAlive then
    begin
      if not Assigned(self.FcdsUniversities) then
        FcdsUniversities := TFDMemTable.Create(self);
      self.FcdsUniversities.Name := 'cdsUniversities';

      if not Assigned(self.FcdsFaculties) then
        FcdsFaculties := TFDMemTable.Create(self);
      self.FcdsFaculties.Name := 'cdsFaculties';

      if not Assigned(self.FcdsModules) then
        FcdsModules := TFDMemTable.Create(self);
      self.FcdsModules.Name := 'cdsModules';
    end;

    Result := true;
  except
    on e: exception do
    begin
      self.WriteError('TJanuaCustomServerUni.OpenUniversities', e);
      Result := false;
    end;
  end;

end;

procedure TJanuaCustomServerUni.SetcdsFaculties(const Value: TDataset);
begin
  FcdsFaculties := Value;
end;

procedure TJanuaCustomServerUni.SetcdsModules(const Value: TDataset);
begin
  FcdsModules := Value;
end;

procedure TJanuaCustomServerUni.SetcdsUniversities(const Value: TDataset);
begin
  FcdsUniversities := Value;
end;

procedure TJanuaCustomServerUni.SetCountryID(const Value: integer);
begin
  FCountryID := Value;
end;

procedure TJanuaCustomServerUni.SetCountryName(const Value: string);
begin
  FCountryName := Value;
end;

procedure TJanuaCustomServerUni.SetDefaultCountryID(const Value: smallint);
begin
  FDefaultCountryID := Value;
end;

procedure TJanuaCustomServerUni.SetJanuaCountrySearch(const Value: TCountrySearch);
begin
  FJanuaCountrySearch := Value;
end;

procedure TJanuaCustomServerUni.SetJanuaServerJPublic(const Value: TJanuaCustomServerJPublic);
begin
  FJanuaServerJPublic := Value;
end;

procedure TJanuaCustomServerUni.SetJanuaServerSystem(const Value: TJanuaCustomServerSystem);
begin
  FJanuaServerSystem := Value;
end;

procedure TJanuaCustomServerUni.SetJanuaSystem(const Value: TJanuaCustomServerSystem);
begin
  FJanuaSystem := Value;
end;

{ TJanuaUniConfig }

function TJanuaUniConfig.GetUniByID(aID: integer): Boolean;
var
  aUniversity: TJanuaUniversity;
begin
  Result := false;
  for aUniversity in self.Universities do
    if aUniversity.Id = aID then
    begin
      Result := true;
      self.SelectedUniversity := aUniversity;
      Exit;
    end;

end;

function TJanuaUniConfig.GetUnibyIndex(aIndex: integer): Boolean;
var
  aUniversity: TJanuaUniversity;
begin
  Result := false;
  for aUniversity in self.Universities do
    if aUniversity.index = aIndex then
    begin
      Result := true;
      self.SelectedUniversity := aUniversity;
      Exit;
    end;

end;

function TJanuaUniConfig.GetUniByName(aName: string): Boolean;
var
  aUniversity: TJanuaUniversity;
begin
  Result := false;
  for aUniversity in self.Universities do
    if UpperCase(aUniversity.Name) = UpperCase(aName) then
    begin
      Result := true;
      self.SelectedUniversity := aUniversity;
      Exit;
    end;
end;

function TJanuaUniConfig.ListUniversities: TStringList;
var
  i: integer;
  aUniversity: TJanuaUniversity;
begin
  Result := TStringList.Create;
  if Length(self.Universities) > 0 then
  begin
    for aUniversity in self.Universities do
      Result.Add(aUniversity.Name);
    Result.Sort;
    for i := 0 to SizeOf(Universities) - 1 do
      Universities[i].index := Result.IndexOf(Universities[i].Name);
  end

end;

function TJanuaUniConfig.ToString(full: Boolean): string;
begin

end;

{ TJanuaUniBooksServer }

procedure TJanuaUniBooksServer.SetJanuaServerUni(const Value: TJanuaCustomServerUni);
begin
  FJanuaServerUni := Value;
end;

{ TJanuaUniController }

procedure TJanuaUniController.SetdsFaculties(const Value: TDataSource);
begin
  FdsFaculties := Value;
end;

procedure TJanuaUniController.SetdsModules(const Value: TDataSource);
begin
  FdsModules := Value;
end;

procedure TJanuaUniController.SetdsUniversities(const Value: TDataSource);
begin
  FdsUniversities := Value;
end;

procedure TJanuaUniController.SetJanuaServerUni(const Value: TJanuaCustomServerUni);
begin
  FJanuaServerUni := Value;
end;

end.
