unit Janua.Core.Users;

{$I JANUACORE.INC}

interface

uses System.SysUtils, System.Classes, Generics.Collections,
  // System.Bindings.Expression,
  // System.Bindings.Helper,
  Janua.Core.Functions, Janua.Core.Types, Janua.Core.Classes, Janua.Controls.Intf,
  Janua.Core.CustomControls, Janua.Core.Servers,
  Janua.Core.System, DB, Janua.Core.jpublic, Janua.Cloud.Mail.Intf,
  // Orm
  JOrm.System.Intf, Janua.Core.Entities;

type
  TJanuaProfile = class(TJanuaCoreComponent)
  private
    FIsAdmin: boolean;
    FisSet: boolean;
    FBirthLocation: TJanuaLocation;
    FAddress: TJanuaLocationAddress;
    FCountry: TCountry;
    [weak]
    FJanuaMail: IJanuaMailMessageBuilder;
    FUserType: TJanuaUserType;
    FRole_ID: smallint;
    FRole_Name: string;
    FSentMail: boolean;
    FRoleList: TStrings;
    FUserPhoto: TJanuaBlob;
    FGenderIndex: smallint;
    FGenderList: TStrings;
    FPhotoUrl: string;
    procedure SetAddress(const Value: TJanuaLocationAddress);
    procedure SetJanuaServerJPublic(const Value: TJanuaCustomServerJPublic);
    procedure SetJanuaMail(const Value: IJanuaMailMessageBuilder);
    procedure SetBirthLocation(const Value: TJanuaLocation);
    procedure SetSaved(const Value: boolean);
    procedure SetUserType(const Value: TJanuaUserType);
    procedure SetRole_ID(const Value: smallint);
    procedure SetUser(const Value: TJanuaUser);
    function GetUser: TJanuaUser;
    procedure SetRecordAddress(const Value: TJanuaRecordAddress);
    procedure SetRercordBirthLocation(const Value: TRecordLocation);
    function GetRercordBirthLocation: TRecordLocation;
    procedure SetRole_Name(const Value: string);
    procedure SetSentMail(const Value: boolean);
    procedure SetRoleList(const Value: TStrings);
    procedure SetUserPhoto(const Value: TJanuaBlob);
    procedure SetGenderIndex(const Value: smallint);
    procedure SetGenderList(const Value: TStrings);
    function GetLastName: string;
    function Getbirthdate: TDateTime;
    function GeteMail: string;
    function GetFirstName: string;
    function Getid: int64;
    function GetPassword: string;
    function GetSecondName: string;
    function GetBirthLocation: TJanuaLocation;
    function GetKey: string;
    function GetGender: TJanuaGenderType;
    function GetGenderCode: string;
    function GetphotoURL: string;
    function GetUserName: string;
    function GetTitle: string;
    function GetRecordAddress: TJanuaRecordAddress;
  strict protected
    function InternalActivate: boolean; override;
  protected
    FSaved: boolean;
    FJanuaServerCountries: TCountrySearch;
    FJanuaUserProfile: TJanuaRecordUserProfile;
    FJanuaSystem: TJanuaCustomServerSystem;
    FJanuaServerJPublic: TJanuaCustomServerJPublic;
    FModified: boolean;
    // **** procedure protected che andranno poi ereditate dai decendant ****************************
    procedure SeTJanuaRecordUserProfile(const Value: TJanuaRecordUserProfile); virtual;
    procedure SetJanuaServerCountries(const Value: TCountrySearch); virtual;
    function Checkup: boolean;
    procedure SetModified(const Value: boolean);
    // *** procedure Set che vanno ad aggiornare eventuali sotto classi ---------------------------
    procedure NotifyUserProfile; virtual;
    procedure Setbirthdate(const Value: TDateTime); virtual;
    procedure SetLastName(const Value: string); virtual;
    procedure SeteMail(const Value: string); virtual;
    procedure Setid(const Value: int64); virtual;
    procedure SetIsAdmin(const Value: boolean); virtual;
    procedure SetisSet(const Value: boolean); virtual;
    procedure SetFirstName(const Value: string); virtual;
    procedure SetPassword(const Value: string); virtual;
    procedure SetSecondName(const Value: string); virtual;
    procedure SetGender(const Value: TJanuaGenderType); virtual;
    procedure SetGenderCode(const Value: string); virtual;
    procedure SetCountry(const Value: TCountry); virtual;
    procedure SetKey(const Value: string); virtual;
    procedure SetTitle(const Value: string); virtual;
    procedure SetUserName(const Value: string); virtual;
  strict protected
    procedure InternalDeactivate; override;
  public
    constructor Create(AOwner: TComponent); override;
    Destructor Destroy; override;
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    procedure SetAnagraphByDataset(Dataset: TDataset); virtual;
    procedure RefreshToRecord; virtual;
    procedure Save; virtual;
    procedure SendConfirmationMail; virtual;
    procedure SetVerbose(const Value: boolean); override;
    function ToJson: TStringList;
  public
    property JanuaMail: IJanuaMailMessageBuilder read FJanuaMail write SetJanuaMail;
  published
    property FirstName: string read GetFirstName write SetFirstName;
    property SecondName: string read GetSecondName write SetSecondName;
    property LastName: string read GetLastName write SetLastName;
    property Gender: TJanuaGenderType read GetGender write SetGender;
    property GenderCode: string read GetGenderCode write SetGenderCode;
    property GenderIndex: smallint read FGenderIndex write SetGenderIndex;
    property GenderList: TStrings read FGenderList write SetGenderList;
    property eMail: string read GeteMail write SeteMail;
    property birthdate: TDateTime read Getbirthdate write Setbirthdate;
    property Password: string read GetPassword write SetPassword;
    property id: int64 read Getid write Setid;
    property IsAdmin: boolean read FIsAdmin write SetIsAdmin;
    property isSet: boolean read FisSet write SetisSet;
    property photoURL: string read GetphotoURL;
    property JanuaUserProfile: TJanuaRecordUserProfile read FJanuaUserProfile write SeTJanuaRecordUserProfile;
    property Address: TJanuaLocationAddress read FAddress write SetAddress;
    // ********** Birth Component ********************************************
    // tutte le proprietà di Birth andranno sostituite da una sola ..... la LOCATION idem Address...
    property JanuaServerJPublic: TJanuaCustomServerJPublic read FJanuaServerJPublic write SetJanuaServerJPublic;
    property BirthLocation: TJanuaLocation read GetBirthLocation write SetBirthLocation;
    property Country: TCountry read FCountry write SetCountry;
    property Key: string read GetKey write SetKey;
    property Modified: boolean read FModified write SetModified;
    property Saved: boolean read FSaved write SetSaved;
    property JanuaServerCountries: TCountrySearch read FJanuaServerCountries write SetJanuaServerCountries;
    property UserType: TJanuaUserType read FUserType write SetUserType default jutRegisteredUser;
    property Role_ID: smallint read FRole_ID write SetRole_ID;
    property Role_Name: string read FRole_Name write SetRole_Name;
    property User: TJanuaUser read GetUser write SetUser;
    property RecordAddress: TJanuaRecordAddress read GetRecordAddress write SetRecordAddress;
    property RercordBirthLocation: TRecordLocation read GetRercordBirthLocation write SetRercordBirthLocation;
    property SentMail: boolean read FSentMail write SetSentMail;
    property RoleList: TStrings read FRoleList write SetRoleList;
    property UserPhoto: TJanuaBlob read FUserPhoto write SetUserPhoto;
    property UserName: string read GetUserName write SetUserName;
    property Title: string read GetTitle write SetTitle;

  end;

type
  TJanuaCustomUser = class(TJanuaCoreController)
  private
    { da spostare in un record che forse è meglio??? }
    FDatabase: string;
    FLoginTime: TDateTime;
    FSessionID: int64;
    FIsReadOnly: boolean;

    procedure SetcboRole(const Value: IJanuaCombo);
    procedure SetlbID(const Value: IJanuaLabel);
    procedure SetlbPassword(const Value: IJanuaLabel);
    procedure SetlbRole(const Value: IJanuaLabel);
    procedure SetlbRoleID(const Value: IJanuaLabel);
    procedure SetlbSecondName(const Value: IJanuaLabel);
    procedure SetlbUsername(const Value: IJanuaLabel);

    { Private declarations }
  protected
    { Protected declarations }
    FController: TJanuaCustomController;
    FUserProfile: IUserProfile;

    // Components and class objects
    FbtnNew: IJanuaButton;
    FbtnSetNewPassword: IJanuaButton;
    FbtnSave: IJanuaButton;
    FedName: IJanuaEdit;
    FedSecondName: IJanuaEdit;
    FedID: IJanuaEdit;
    FedPassword: IJanuaEdit;
    FedUserName: IJanuaEdit;
    FedRoleID: IJanuaEdit;
    FlbName: IJanuaLabel;
    FcboRole: IJanuaCombo;
    FlbPassword: IJanuaLabel;
    FlbUsername: IJanuaLabel;
    FlbRoleID: IJanuaLabel;
    FlbSecondName: IJanuaLabel;
    FlbRole: IJanuaLabel;
    FlbID: IJanuaLabel;
    procedure SetIsReadOnly(const Value: boolean);
    procedure SetbtnNewDef(const Value: IJanuaButton);
    procedure SetbtnSaveDef(const Value: IJanuaButton);
    procedure SetbtnSetNewPasswordDef(const Value: IJanuaButton);
    procedure SetedIDDef(const Value: IJanuaEdit);
    procedure SetedNameDef(const Value: IJanuaEdit);
    procedure SetedPasswordDef(const Value: IJanuaEdit);
    procedure SetedRoleIDDef(const Value: IJanuaEdit);
    procedure SetedSecondNameDef(const Value: IJanuaEdit);
    procedure SetedUserNameDef(const Value: IJanuaEdit);
    procedure SetlbNameDef(const Value: IJanuaLabel);

    procedure SaveRecord; virtual;
    procedure SetJanuaProfile(const Value: IUserProfile); virtual;
    procedure SetOwner; Virtual;
  strict protected
    function InternalActivate: boolean; override;
  public
    { Public declarations }
    Constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure btnSaveClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnSetNewPasswordClick(Sender: TObject);
    procedure Refresh; virtual;
  published
    { Published declarations }
    property edName: IJanuaEdit read FedName write SetedNameDef;
    property edSecondName: IJanuaEdit read FedSecondName write SetedSecondNameDef;
    property edUserName: IJanuaEdit read FedUserName write SetedUserNameDef;
    property edPassword: IJanuaEdit read FedPassword write SetedPasswordDef;
    property edRoleID: IJanuaEdit read FedRoleID write SetedRoleIDDef;
    property edID: IJanuaEdit read FedID write SetedIDDef;
    property cboRole: IJanuaCombo read FcboRole write SetcboRole;
    property lbName: IJanuaLabel read FlbName write SetlbNameDef;
    property lbSecondName: IJanuaLabel read FlbSecondName write SetlbSecondName;
    property lbUsername: IJanuaLabel read FlbUsername write SetlbUsername;
    property lbPassword: IJanuaLabel read FlbPassword write SetlbPassword;
    property lbRoleID: IJanuaLabel read FlbRoleID write SetlbRoleID;
    property lbRole: IJanuaLabel read FlbRole write SetlbRole;
    property lbID: IJanuaLabel read FlbID write SetlbID;
    property btnSave: IJanuaButton read FbtnSave write SetbtnSaveDef;
    property btnNew: IJanuaButton read FbtnNew write SetbtnNewDef;
    property btnSetNewPassword: IJanuaButton read FbtnSetNewPassword write SetbtnSetNewPasswordDef;

    property JanuaProfile: IUserProfile read FUserProfile write SetJanuaProfile;
    // indica se l'utente è connesso se non lo è la sessione non sarebbe attiva
    property Database: string read FDatabase;
    // indica l'indirizzo del db o dello schema di oracle attualmente in uso o dello schema janua/ergooooooooo
    property SessionID: int64 read FSessionID;
    // indica la sessione un id unico assegnato dal db per ogni sessione di lavoro
    property LoginTime: TDateTime read FLoginTime;
    // indica da quanto tempo l'utente è collegato
    property IsReadOnly: boolean read FIsReadOnly write SetIsReadOnly;

    property JanuaController: TJanuaCustomController read FController write FController;
  end;

type
  TJanuaCustomProfile = class(TJanuaCustomUser)
  private
    FcboAddrCountry: IJanuaCombo;
    FedWorkPhone: IJanuaEdit;
    Fedpostalcode: IJanuaEdit;
    FcboBirthCountry: IJanuaCombo;
    FcboAddrRegion: IJanuaCombo;
    FedPhone: IJanuaEdit;
    FedGender: IJanuaEdit;
    FcboBirthRegion: IJanuaCombo;
    FedAddressMail: IJanuaEdit;
    FselectGender: IJanuaSelect;
    FcboAddrTown: IJanuaCombo;
    FedCellularPhone: IJanuaEdit;
    FedNumber: IJanuaEdit;
    FcboAddrDistrict: IJanuaCombo;
    FcboBirthTown: IJanuaCombo;
    FcboBirthDistrict: IJanuaCombo;
    FedFaxNumber: IJanuaEdit;
    FedAddress: IJanuaEdit;
    FedBirthDate: IJanuaDateEdit;
    FlbAddrRegion: IJanuaLabel;
    FlbBirthRegion: IJanuaLabel;
    FlbFaxNumber: IJanuaLabel;
    FlbAddress: IJanuaLabel;
    FlbAddrTown: IJanuaLabel;
    FlbAddrDistrict: IJanuaLabel;
    FlbAddrDistrictID: IJanuaLabel;
    FlbBirthTown: IJanuaLabel;
    FlbBirthDistrict: IJanuaLabel;
    FlbBirthDate: IJanuaLabel;
    FlbWorkPhone: IJanuaLabel;
    FlbPostalCode: IJanuaLabel;
    FlbSelectGender: IJanuaLabel;
    FlbAddrCountry: IJanuaLabel;
    FlbPhone: IJanuaLabel;
    FlbGender: IJanuaLabel;
    FlbAddressMail: IJanuaLabel;
    FlbBirthCountry: IJanuaLabel;
    FlbCellularPhone: IJanuaLabel;
    FlbNumber: IJanuaLabel;
    FedFirstName: IJanuaEdit;
    FlbAddDistricID: IJanuaLabel;
    FlbAddCountryID: IJanuaLabel;
    FlbAddRegionID: IJanuaLabel;
    FlbAddTownID: IJanuaLabel;

    function GetcboAddrCountry: TComponent;
    function GetedWorkPhone: TComponent;
    function Getedpostalcode: TComponent;
    function GetcboBirthCountry: TComponent;
    function GetcboAddrRegion: TComponent;
    function GetedPhone: TComponent;
    function GetedGender: TComponent;
    function GetcboBirthRegion: TComponent;
    function GetedAddressMail: TComponent;
    function GetselectGender: TComponent;
    function GetcboAddrTown: TComponent;
    function GetedCellularPhone: TComponent;
    function GetedNumber: TComponent;
    function GetcboAddrDistrict: TComponent;
    function GetcboBirthTown: TComponent;
    function GetcboBirthDistrict: TComponent;
    function GetedFaxNumber: TComponent;
    function GetedAddress: TComponent;
    function GetedBirthDate: TComponent;
    function GetlbAddrRegion: TComponent;
    function GetlbBirthRegion: TComponent;
    function GetlbFaxNumber: TComponent;
    function GetlbAddress: TComponent;
    function GetlbAddrTown: TComponent;
    function GetlbAddrDistrict: TComponent;
    function GetlbBirthTown: TComponent;
    function GetlbBirthDistrict: TComponent;
    function GetlbBirthDate: TComponent;
    function GetlbWorkPhone: TComponent;
    function GetlbPostalCode: TComponent;
    function GetlbSelectGender: TComponent;
    function GetlbAddrCountry: TComponent;
    function GetlbPhone: TComponent;
    function GetlbGender: TComponent;
    function GetlbAddressMail: TComponent;
    function GetlbBirthCountry: TComponent;
    function GetlbCellularPhone: TComponent;
    function GetlbNumber: TComponent;
    function GetedFirstName: TComponent;
    function GetlbAddDistricID: TComponent;
    function GetlbAddCountryID: TComponent;
    function GetlbAddRegionID: TComponent;
    function GetlbAddTownID: TComponent;

    procedure SetcboAddrCountry(const Value: TComponent);
    procedure SetcboAddrDistrict(const Value: TComponent);
    procedure SetcboAddrRegion(const Value: TComponent);
    procedure SetcboAddrTown(const Value: TComponent);
    procedure SetcboBirthCountry(const Value: TComponent);
    procedure SetcboBirthDistrict(const Value: TComponent);
    procedure SetcboBirthRegion(const Value: TComponent);
    procedure SetcboBirthTown(const Value: TComponent);
    procedure SetedAddress(const Value: TComponent);
    procedure SetedAddressMail(const Value: TComponent);
    procedure SetedBirthDate(const Value: TComponent);
    procedure SetedCellularPhone(const Value: TComponent);
    procedure SetedFaxNumber(const Value: TComponent);
    procedure SetedGender(const Value: TComponent);
    procedure SetedNumber(const Value: TComponent);
    procedure SetedPhone(const Value: TComponent);
    procedure Setedpostalcode(const Value: TComponent);
    procedure SetedWorkPhone(const Value: TComponent);
    procedure SetselectGender(const Value: TComponent);
    procedure SetlbAddrCountry(const Value: TComponent);
    procedure SetlbAddrDistrict(const Value: TComponent);
    procedure SetlbAddress(const Value: TComponent);
    procedure SetlbAddressMail(const Value: TComponent);
    procedure SetlbAddrRegion(const Value: TComponent);
    procedure SetlbAddrTown(const Value: TComponent);
    procedure SetlbBirthCountry(const Value: TComponent);
    procedure SetlbBirthDate(const Value: TComponent);
    procedure SetlbBirthDistrict(const Value: TComponent);
    procedure SetlbBirthRegion(const Value: TComponent);
    procedure SetlbBirthTown(const Value: TComponent);
    procedure SetlbCellularPhone(const Value: TComponent);
    procedure SetlbFaxNumber(const Value: TComponent);
    procedure SetlbGender(const Value: TComponent);
    procedure SetlbNumber(const Value: TComponent);
    procedure SetlbPhone(const Value: TComponent);
    procedure SetlbPostalCode(const Value: TComponent);
    procedure SetlbSelectGender(const Value: TComponent);
    procedure SetlbWorkPhone(const Value: TComponent);
    procedure SetedFirstName(const Value: TComponent);
    procedure SetlbAddCountryID(const Value: TComponent);
    procedure SetlbAddDistricID(const Value: TComponent);
    procedure SetlbAddRegionID(const Value: TComponent);
    procedure SetlbAddTownID(const Value: TComponent);
    { Private declarations }
  protected
    { Protected declarations }
    procedure SaveRecord; override;
    procedure SetOwner; override;
    procedure SetVerbose(const Value: boolean); override;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Refresh; override;
    procedure cboAddrRegionChange(Sender: TObject); Virtual;
    procedure cboAddrDistrictChange(Sender: TObject); Virtual;
    procedure cboAddrTownChange(Sender: TObject); Virtual;
  published
    { Published declarations }
    /// ****** main ************************
    property selectGender: TComponent read GetselectGender write SetselectGender;
    property lbSelectGender: TComponent read GetlbSelectGender write SetlbSelectGender;
    property edGender: TComponent read GetedGender write SetedGender;
    property lbGender: TComponent read GetlbGender write SetlbGender;
    property edBirthDate: TComponent read GetedBirthDate write SetedBirthDate;
    property lbBirthDate: TComponent read GetlbBirthDate write SetlbBirthDate;
    // ******* address *********************
    property edAddress: TComponent read GetedAddress write SetedAddress;
    property lbAddress: TComponent read GetlbAddress write SetlbAddress;
    property edNumber: TComponent read GetedNumber write SetedNumber;
    property lbNumber: TComponent read GetlbNumber write SetlbNumber;
    property edpostalcode: TComponent read Getedpostalcode write Setedpostalcode;
    property lbPostalCode: TComponent read GetlbPostalCode write SetlbPostalCode;
    property edPhone: TComponent read GetedPhone write SetedPhone;
    property lbPhone: TComponent read GetlbPhone write SetlbPhone;
    property edCellularPhone: TComponent read GetedCellularPhone write SetedCellularPhone;
    property lbCellularPhone: TComponent read GetlbCellularPhone write SetlbCellularPhone;
    property edWorkPhone: TComponent read GetedWorkPhone write SetedWorkPhone;
    property lbWorkPhone: TComponent read GetlbWorkPhone write SetlbWorkPhone;
    property edFaxNumber: TComponent read GetedFaxNumber write SetedFaxNumber;
    property lbFaxNumber: TComponent read GetlbFaxNumber write SetlbFaxNumber;
    property edAddressMail: TComponent read GetedAddressMail write SetedAddressMail;
    property lbAddressMail: TComponent read GetlbAddressMail write SetlbAddressMail;
    // ******* address *********************
    property cboAddrCountry: TComponent read GetcboAddrCountry write SetcboAddrCountry;
    property lbAddrCountry: TComponent read GetlbAddrCountry write SetlbAddrCountry;
    property lbAddCountryID: TComponent read GetlbAddCountryID write SetlbAddCountryID;
    property cboAddrRegion: TComponent read GetcboAddrRegion write SetcboAddrRegion;
    property lbAddrRegion: TComponent read GetlbAddrRegion write SetlbAddrRegion;
    property lbAddRegionID: TComponent read GetlbAddRegionID write SetlbAddRegionID;
    property cboAddrDistrict: TComponent read GetcboAddrDistrict write SetcboAddrDistrict;
    property lbAddrDistrict: TComponent read GetlbAddrDistrict write SetlbAddrDistrict;
    property lbAddDistricID: TComponent read GetlbAddDistricID write SetlbAddDistricID;
    property cboAddrTown: TComponent read GetcboAddrTown write SetcboAddrTown;
    property lbAddrTown: TComponent read GetlbAddrTown write SetlbAddrTown;
    property lbAddTownID: TComponent read GetlbAddTownID write SetlbAddTownID;
    // ******* birthlocation ****************
    property cboBirthCountry: TComponent read GetcboBirthCountry write SetcboBirthCountry;
    property lbBirthCountry: TComponent read GetlbBirthCountry write SetlbBirthCountry;
    property cboBirthRegion: TComponent read GetcboBirthRegion write SetcboBirthRegion;
    property lbBirthRegion: TComponent read GetlbBirthRegion write SetlbBirthRegion;
    property cboBirthDistrict: TComponent read GetcboBirthDistrict write SetcboBirthDistrict;
    property lbBirthDistrict: TComponent read GetlbBirthDistrict write SetlbBirthDistrict;
    property cboBirthTown: TComponent read GetcboBirthTown write SetcboBirthTown;
    property lbBirthTown: TComponent read GetlbBirthTown write SetlbBirthTown;
    property edFirstName: TComponent read GetedFirstName write SetedFirstName;

  end;

type
  TJanuaCustomServerUsers = class(TJanuaCustomServer)
  private
  protected
  public
  published
  end;

implementation

uses
  Janua.Application.Framework, System.JSON;

{ TJanuaProfile }

procedure TJanuaProfile.Save;
begin
  if assigned(FJanuaSystem) then
  begin
    self.FJanuaSystem.UserProfile := self.FJanuaUserProfile;
    self.FModified := not self.FJanuaSystem.SaveProfile;
    if self.FModified then
    begin
      self.HasErrors := True;
      self.LastErrorMessage := self.FJanuaSystem.LastErrorMessage;
    end;
    FSaved := not self.FModified;
  end;
end;

procedure TJanuaProfile.SetJanuaMail(const Value: IJanuaMailMessageBuilder);
begin
  FJanuaMail := Value;
end;

procedure TJanuaProfile.SetJanuaServerCountries(const Value: TCountrySearch);
begin
  FJanuaServerCountries := Value;
  if assigned(FJanuaServerCountries) then
  begin
    FAddress.CountrySearch := FJanuaServerCountries;
    FBirthLocation.CountrySearch := FJanuaServerCountries;
  end;
end;

procedure TJanuaProfile.SendConfirmationMail;
var
  januaFile: TStringList;
  url: string;
  sMail: string;
begin
  begin
    januaFile := TStringList.Create;
    try
      sMail := tpl(tpl(TJanuaCoreOS.GetDocumentsPath) + 'mail') + 'welcome.html';
      januaFile.LoadFromFile(sMail);
      self.WriteLog('Caricato file ' + sMail);
      ReplaceStringPos(januaFile, '%Nome%', FJanuaUserProfile.FirstName);
      ReplaceStringPos(januaFile, '%Cognome%', FJanuaUserProfile.LastName);
      self.WriteLog('Inviata Mail a: ' + FJanuaUserProfile.User.eMail + ' ' + FJanuaUserProfile.FirstName + '.' +
        FJanuaUserProfile.LastName);
      url := '<a href="http://www.keriks.com' + '?confirmmail=' + FJanuaUserProfile.User.Key +
        '">Clicca qui per confermare la tua iscrizione </a>';
      ReplaceStringPos(januaFile, '%URL%', url);
      FJanuaMail.sTo := FJanuaUserProfile.User.eMail;
      FJanuaMail.sFromAddr := 'info@keriks.com';
      FJanuaMail.sCC := 'info@keriks.com';
      FJanuaMail.sText := januaFile.Text;
      FJanuaMail.sSubject := 'Grazie per esserti iscritto al portale Keriks';
      FJanuaMail.sFrom := 'Keriks Medical Social Forum';
      FJanuaMail.SendMailMessage;
      // JanuFJanuaMailSender1.sText := januaFile.Text;
    finally
      if assigned(januaFile) then
        januaFile.Free;
    end;
  end;
end;

function TJanuaProfile.Getbirthdate: TDateTime;
begin
  Result := self.FJanuaUserProfile.birthdate;
end;

function TJanuaProfile.GetBirthLocation: TJanuaLocation;
begin
  Result := self.FBirthLocation;
end;

function TJanuaProfile.GeteMail: string;
begin
  Result := self.FJanuaUserProfile.PublicEmail;
end;

function TJanuaProfile.GetFirstName: string;
begin
  Result := self.FJanuaUserProfile.FirstName;
end;

function TJanuaProfile.GetGender: TJanuaGenderType;
begin
  Result := self.FJanuaUserProfile.Gender.GenderType
end;

function TJanuaProfile.GetGenderCode: string;
begin
  Result := self.FJanuaUserProfile.Gender.GenderCode
end;

function TJanuaProfile.Getid: int64;
begin
  Result := self.FJanuaUserProfile.User.id;
end;

function TJanuaProfile.GetKey: string;
begin
  Result := JanuaUserProfile.User.Key;
end;

function TJanuaProfile.GetLastName: string;
begin
  Result := self.FJanuaUserProfile.LastName;
end;

function TJanuaProfile.GetPassword: string;
begin
  Result := self.FJanuaUserProfile.User.Password;
end;

function TJanuaProfile.GetphotoURL: string;
begin
  Result := self.FPhotoUrl;
end;

function TJanuaProfile.GetRecordAddress: TJanuaRecordAddress;
begin
  if assigned(self.FAddress) then
    Result := self.FAddress.JanuaAddress;
  // questo oggetto è un escamotage per accedere dall'esterno in lettura scrittura del recrd Address
end;

procedure TJanuaProfile.SetAddress(const Value: TJanuaLocationAddress);
begin
  if assigned(self.FAddress) then
    self.FAddress := Value;
  // questo oggetto è un escamotage per accedere dall'esterno in lettura scrittura del recrd Address
end;

procedure TJanuaProfile.SetAnagraphByDataset(Dataset: TDataset);
begin
  /// ******* da definire *******************************************************
end;

procedure TJanuaProfile.Setbirthdate(const Value: TDateTime);
begin
  if self.FJanuaUserProfile.birthdate <> Value then
  begin
    self.FJanuaUserProfile.birthdate := Value;
    self.SetModified(True);
    // Notify('BirthDate'); // *** bindings
    NotifyUserProfile
  end;
end;

procedure TJanuaProfile.SetBirthLocation(const Value: TJanuaLocation);
begin
  if assigned(Value) then
  begin
    self.FBirthLocation := Value;
    { TODO -oRiccardo -cusers :
      Verificare se l'assegnazione dell'oggetto Location
      alla Classe impatta sulla location di User Profile }
    // self.FJanuaUserProfile.BirthLocation := FBirthLocation.Location;
    // self.SetModified(True);
  end
  else
  begin
    self.FBirthLocation := nil;
  end;

  // Notify('BirthLocation');
end;

procedure TJanuaProfile.SetCountry(const Value: TCountry);
begin
  FCountry := Value;
  FBirthLocation.SelectedCountry := Value;
  if (FAddress.SelectedCountry.Country.id = Value.Country.id) or (FAddress.SelectedCountry.Country.id = 0) then
    FAddress.SelectedCountry := Value;
  self.NotifyUserProfile
end;

procedure TJanuaProfile.SeteMail(const Value: string);
begin
  if Janua.Core.Functions.IsValidEmail(Value) and (Value <> self.FJanuaUserProfile.PublicEmail) then
  begin
    self.FJanuaUserProfile.PublicEmail := Value;
    self.SetModified(True);
    // Notify('eMail'); // *** bindings
    NotifyUserProfile
  end
  else
  begin
    if not Janua.Core.Functions.IsValidEmail(Value) then
      self.LocalRaiseException('Mail non Valida');
  end;
end;

procedure TJanuaProfile.SetGender(const Value: TJanuaGenderType);
begin
  if self.FJanuaUserProfile.Gender.GenderType <> Value then
  begin
    self.FJanuaUserProfile.Gender.GenderType := Value;
    GenderIndex := Ord(self.FJanuaUserProfile.Gender.GenderType);
    // Notify('Gender');   // *** bindings
    self.NotifyUserProfile
  end;
end;

procedure TJanuaProfile.SetGenderCode(const Value: string);
begin
  if FJanuaUserProfile.Gender.GenderCode <> Value then
  begin
    FJanuaUserProfile.Gender.GenderCode := Value;
    self.SetModified(True);
    // Notify('GenderCode'); // *** bindings
    self.NotifyUserProfile
  end;
end;

procedure TJanuaProfile.SetGenderIndex(const Value: smallint);
begin
  if FGenderIndex <> Value then
  begin
    FGenderIndex := Value;
    self.SetModified(True);
    self.Gender := DecodeGenderIndex(FGenderIndex);
    self.GenderCode := DecodeGenderType(self.Gender);
    // Notify('GenderIndex');  // *** bindings
    self.NotifyUserProfile
  end;
end;

procedure TJanuaProfile.SetGenderList(const Value: TStrings);
begin
  FGenderList := Value;
end;

procedure TJanuaProfile.Setid(const Value: int64);
begin
  if self.FJanuaUserProfile.User.id <> Value then
  begin
    self.FJanuaUserProfile.User.id := Value;
    self.SetModified(True);
    // Notify('ID'); // *** bindings
    NotifyUserProfile
  end;
end;

procedure TJanuaProfile.SetIsAdmin(const Value: boolean);
begin
  FIsAdmin := Value;
  // Notify('isAdmin');  // *** bindings
  NotifyUserProfile
end;

procedure TJanuaProfile.SetisSet(const Value: boolean);
begin
  FisSet := Value;

end;

procedure TJanuaProfile.SetJanuaServerJPublic(const Value: TJanuaCustomServerJPublic);
begin
  FJanuaServerJPublic := Value;
  if assigned(FJanuaServerJPublic) and assigned(FJanuaServerJPublic.JanuaSystem) then
  begin
    FJanuaSystem := FJanuaServerJPublic.JanuaSystem;
    Verbose := TJanuaApplication.Verbose;
  end;

end;

procedure TJanuaProfile.SeTJanuaRecordUserProfile(const Value: TJanuaRecordUserProfile);
var
  logMessage: string;
begin
  self.WriteLog('TJanuaProfile.SeTJanuaRecordUserProfile');
  FJanuaUserProfile := Value;
  logMessage := FJanuaUserProfile.ToString;
  self.WriteLog(logMessage);
  self.WriteLog('TJanuaProfile.SetComponentFromRecord');
end;

procedure TJanuaProfile.SetKey(const Value: string);
begin
  FJanuaUserProfile.User.Key := Value;
  // self.Notify('Key');
  self.NotifyUserProfile
end;

procedure TJanuaProfile.SetLastName(const Value: string);
begin
  if FJanuaUserProfile.LastName <> Value then
  begin
    self.FJanuaUserProfile.LastName := Value;
    SetModified(True);
    NotifyUserProfile
  end;
  // Notify('LastName');
end;

procedure TJanuaProfile.SetModified(const Value: boolean);
begin
  FModified := Value;
  self.FSaved := not self.FModified;
  if self.FModified then
    RefreshToRecord;
end;

procedure TJanuaProfile.SetFirstName(const Value: string);
begin
  if self.FJanuaUserProfile.FirstName <> Value then
  begin
    self.FJanuaUserProfile.FirstName := Value;
    SetModified(True);
    NotifyUserProfile
  end;
  // Notify('FirstName');
end;

procedure TJanuaProfile.SetPassword(const Value: string);
begin
  if FJanuaUserProfile.User.Password <> Value then
  begin
    FJanuaUserProfile.User.Password := Value;
    SetModified(True);
    // Notify('Password');
    NotifyUserProfile
  end;
end;

procedure TJanuaProfile.SetSaved(const Value: boolean);
begin
  if Value and not FSaved then
  begin
    self.Save;
  end;

end;

procedure TJanuaProfile.SetSecondName(const Value: string);
begin
  if FJanuaUserProfile.SecondName <> Value then
  begin
    FJanuaUserProfile.SecondName := Value;
    SetModified(True);
    // Notify('SecondName');
    NotifyUserProfile
  end;
end;

procedure TJanuaProfile.SetSentMail(const Value: boolean);
begin
  if Value and not FSentMail then
  begin
    self.WriteLog('self.SendConfirmationMail');
    self.SendConfirmationMail;
    self.WriteLog('self.SendConfirmationMail: Sent.' + self.FJanuaUserProfile.FullName);
    self.FSentMail := True;
  end
  else
  begin
    FSentMail := Value;
  end;
end;

procedure TJanuaProfile.SetTitle(const Value: string);
begin
  if FJanuaUserProfile.Title <> Value then
  begin
    FJanuaUserProfile.Title := Value;
    SetModified(True);
    // Notify('Title');
    self.NotifyUserProfile
  end;
end;

function TJanuaProfile.GetUser: TJanuaUser;
begin
  Result := self.FJanuaUserProfile.User;
end;

function TJanuaProfile.GetUserName: string;
begin
  Result := self.FJanuaUserProfile.User.UserName;
end;

function TJanuaProfile.InternalActivate: boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        Checkup;
        self.WriteLog('TJanuaProfile.Activate: True');
        Result := True;
        if not(assigned(FJanuaSystem) and assigned(FJanuaServerJPublic) and assigned(FJanuaServerCountries)) then
        begin
          self.WriteLog('TJanuaProfile.Activate: ' + 'Errore non assegnati JanuaSyste o JanuaPublic', True);
          Result := False;
          self.LocalRaiseException
            ('Attenzione non Assegnati: FJanuaSystem, FJanuaServerJPublic, FJanuaServerCountries');
          Exit;
        end;

        WriteLog('TJanuaProfile.Activate Session: FJanuaSystem.Connected:' + FJanuaSystem.Active.ToString());
        if not self.FJanuaSystem.Active then
        begin
          self.WriteLog('TJanuaProfile.Activate Session: FJanuaSystem.Login');
          FJanuaSystem.Activate;
          Result := self.FJanuaSystem.Active;
        end;

        WriteLog('TJanuaProfile.Activate Session: FJanuaServerJPublic.Active:' + FJanuaServerJPublic.Active.ToString());
        if Result and not FJanuaServerJPublic.Active then
        begin
          self.WriteLog('TJanuaProfile.Activate Session: FJanuaServerJPublic.Activate');
          FJanuaServerJPublic.Activate;
          Result := FJanuaServerJPublic.Active;
        end;

        if Result and not FJanuaServerCountries.Active then
        begin
          FJanuaServerCountries.Activate;
          Result := FJanuaServerCountries.Active;
        end;

        self.WriteLog('TJanuaProfile.Activate eTJanuaRecordUserProfile(FJanuaSystem.UserProfile');

        if FUserType in [TJanuaUserType.jutRegisteredUser] then
          SeTJanuaRecordUserProfile(FJanuaSystem.UserProfile);

        self.FModified := not Result;
        self.FSaved := not Result;
        if Result then
        begin
          self.FBirthLocation.Activate;
          self.FAddress.Activate;
        end;
      end;
    except
      on e: exception do
        RaiseLocalException('InternalActivate', e);
    end;
end;

procedure TJanuaProfile.InternalDeactivate;
begin
  WriteLog('TJanuaProfile.Deactivate: False');
  FisSet := False;
  FAddress.Active := False;
  FBirthLocation.Active := False;
  inherited;
end;

procedure TJanuaProfile.NotifyUserProfile;
begin
  if self.Modified then
    self.Saved := False;
end;

procedure TJanuaProfile.SetUser(const Value: TJanuaUser);
begin
  self.FJanuaUserProfile.User := Value;
end;

procedure TJanuaProfile.SetUserName(const Value: string);
begin
  if FJanuaUserProfile.User.UserName <> Value then
  begin
    FJanuaUserProfile.User.UserName := Value;
    SetModified(True);
    // Notify('UserName');
    self.NotifyUserProfile
  end;
end;

procedure TJanuaProfile.SetUserPhoto(const Value: TJanuaBlob);
begin
  FUserPhoto := Value;
end;

procedure TJanuaProfile.SetUserType(const Value: TJanuaUserType);
begin
  FUserType := Value;
end;

procedure TJanuaProfile.SetVerbose(const Value: boolean);
begin
  inherited;
  if assigned(self.FAddress) then
    self.FAddress.Verbose := self.Verbose;
  if assigned(self.FBirthLocation) then
    self.FBirthLocation.Verbose := self.Verbose;
end;

function TJanuaProfile.ToJson: TStringList;
begin
  Result := TStringList.Create;
  Result.Text := (FJanuaUserProfile.AsJSON);
end;

procedure TJanuaProfile.AfterConstruction;
begin
  inherited;
  try
    FGenderList.Add('Maschio');
    FGenderList.Add('Femmina');

    if assigned(self.FAddress) then
      self.FAddress.Verbose := self.Verbose;
    if assigned(self.FBirthLocation) then
      self.FBirthLocation.Verbose := self.Verbose;
  except
    on e: exception do
      LogException('AfterConstruction', e, self);
  end;
end;

procedure TJanuaProfile.BeforeDestruction;
begin
  inherited;
  FSaved := False;
  Modified := False;
end;

function TJanuaProfile.Checkup: boolean;
begin
  Result := False;
  if assigned(FJanuaServerJPublic) and assigned(FJanuaServerJPublic.JanuaSystem) then
  begin
    self.FJanuaSystem := FJanuaServerJPublic.JanuaSystem;
    Result := True;
  end
  else
    LocalRaiseException('Attenzione non Assegnati: FJanuaSystem, FJanuaServerJPublic, FJanuaServerCountries');
end;

constructor TJanuaProfile.Create(AOwner: TComponent);
begin
  inherited;
  WriteLog('Creazione di TJanuaProfile');
  FRoleList := TStringList.Create;

  WriteLog('Creazione di FAddress');
  if not assigned(FAddress) then
    FAddress := TJanuaLocationAddress.Create;
  // self.WriteLog(FAddress.Log.Text);

  self.WriteLog('Creazione di FBirthLocation');
  if not assigned(self.FBirthLocation) then
    self.FBirthLocation := TJanuaLocation.Create;
  // self.WriteLog(FBirthLocation.Log.Text);

  FSaved := False;
  FUserType := jutRegisteredUser;
  // Now it is a record...................

  FGenderList := TStringList.Create;
end;

destructor TJanuaProfile.Destroy;
begin
  try
    if assigned(FBirthLocation) then
      FBirthLocation.Free;
    if assigned(FRoleList) then
      FRoleList.Free;
    if assigned(FGenderList) then
      FGenderList.Free
  except
    on e: exception do
      LogException('Destroy', e, self);
  end;
  inherited;
end;

procedure TJanuaProfile.RefreshToRecord;
begin
  self.FJanuaUserProfile.Address := self.FAddress.JanuaAddress;
  self.FJanuaUserProfile.BirthLocation := self.FBirthLocation.Location;
end;

procedure TJanuaProfile.SetRecordAddress(const Value: TJanuaRecordAddress);
begin
  if assigned(self.FAddress) then
    self.FAddress.JanuaAddress := Value;
end;

function TJanuaProfile.GetRercordBirthLocation: TRecordLocation;
begin
  Result := FJanuaUserProfile.BirthLocation;
end;

function TJanuaProfile.GetSecondName: string;
begin
  Result := FJanuaUserProfile.SecondName;
end;

function TJanuaProfile.GetTitle: string;
begin

end;

procedure TJanuaProfile.SetRercordBirthLocation(const Value: TRecordLocation);
begin
  self.FJanuaUserProfile.BirthLocation := Value;
end;

procedure TJanuaProfile.SetRoleList(const Value: TStrings);
begin
  FRoleList := Value;
end;

procedure TJanuaProfile.SetRole_ID(const Value: smallint);
begin
  if FRole_ID <> Value then
    if self.FJanuaUserProfile.User.GetRoleByID(Value) then
    begin
      FRole_ID := Value;
      self.FJanuaUserProfile.User.Role_ID := Value;
      self.FJanuaUserProfile.User.Role_Name := self.FJanuaUserProfile.User.SelectedRole.Name;
    end;
end;

procedure TJanuaProfile.SetRole_Name(const Value: string);
begin
  if FRole_Name <> Value then
    if self.FJanuaUserProfile.User.GetRoleByName(Value) then
    begin
      FRole_Name := Value;
      self.FJanuaUserProfile.User.Role_ID := self.FJanuaUserProfile.User.SelectedRole.id;
      self.FJanuaUserProfile.User.Role_Name := self.FJanuaUserProfile.User.SelectedRole.Name;
    end;
end;

{ TJanuaCustomUser }

procedure TJanuaCustomUser.btnNewClick(Sender: TObject);
begin
  /// ++++ gestione del btn new click
end;

procedure TJanuaCustomUser.btnSaveClick(Sender: TObject);
begin
  // Custom User è un oggetto che dovrebbe essere connesso ad un TRecordSetComponent
  SaveRecord;
  {
    if assigned(self.FUserProfile) then
    self.FUserProfile.Save;
    if self.FUserProfile.Saved then
    FJanuaDialog.JShowMessage('Anagrafica Salvata correttamente', '', '')
    else
    self.FJanuaDialog.JShowError('Errore di Registrazione Utente', FUserProfile.LastErrorMessage, '');
  }
end;

procedure TJanuaCustomUser.btnSetNewPasswordClick(Sender: TObject);
begin

end;

constructor TJanuaCustomUser.Create(AOwner: TComponent);
begin
  inherited;

end;

destructor TJanuaCustomUser.Destroy;
begin

  inherited;
end;

function TJanuaCustomUser.InternalActivate: boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
    except
      on e: exception do
      begin
        LogException('InternalActivate', e, self);
        raise;
      end;
    end;
end;

procedure TJanuaCustomUser.Refresh;
begin
  if assigned(FUserProfile) then
  begin

  end;
end;

procedure TJanuaCustomUser.SaveRecord;
begin

  if assigned(FUserProfile) then
  begin
    if assigned(edName) then
      FUserProfile.First_name.AsString := FedName.Text;
    if assigned(edSecondName) then
      FUserProfile.Last_name.AsString := FedSecondName.Text;
    if assigned(edPassword) then
      FUserProfile.User.Password.AsString := FedPassword.Text;
  end;

end;

procedure TJanuaCustomUser.SetbtnNewDef(const Value: IJanuaButton);
begin
  FbtnNew := Value;
end;

procedure TJanuaCustomUser.SetbtnSaveDef(const Value: IJanuaButton);
begin
  FbtnSave := Value;
end;

procedure TJanuaCustomUser.SetbtnSetNewPasswordDef(const Value: IJanuaButton);
begin
  FbtnSetNewPassword := Value;
end;

procedure TJanuaCustomUser.SetcboRole(const Value: IJanuaCombo);
begin

end;

procedure TJanuaCustomUser.SetedIDDef(const Value: IJanuaEdit);
begin
  FedID := Value;
end;

procedure TJanuaCustomUser.SetedNameDef(const Value: IJanuaEdit);
begin
  FedName := Value;
end;

procedure TJanuaCustomUser.SetedPasswordDef(const Value: IJanuaEdit);
begin
  FedPassword := Value;
end;

procedure TJanuaCustomUser.SetedRoleIDDef(const Value: IJanuaEdit);
begin
  FedRoleID := Value;
end;

procedure TJanuaCustomUser.SetedSecondNameDef(const Value: IJanuaEdit);
begin
  FedSecondName := Value;
end;

procedure TJanuaCustomUser.SetedUserNameDef(const Value: IJanuaEdit);
begin
  FedUserName := Value;
end;

procedure TJanuaCustomUser.SetIsReadOnly(const Value: boolean);
begin
  FIsReadOnly := Value;
end;

procedure TJanuaCustomUser.SetJanuaProfile(const Value: IUserProfile);
begin
  FUserProfile := Value;
end;

procedure TJanuaCustomUser.SetlbID(const Value: IJanuaLabel);
begin
  self.lbID := Value;
end;

procedure TJanuaCustomUser.SetlbNameDef(const Value: IJanuaLabel);
begin
  self.lbName := Value;
end;

procedure TJanuaCustomUser.SetlbPassword(const Value: IJanuaLabel);
begin
  self.lbPassword := Value;
end;

procedure TJanuaCustomUser.SetlbRole(const Value: IJanuaLabel);
begin
  self.lbRole := Value;
end;

procedure TJanuaCustomUser.SetlbRoleID(const Value: IJanuaLabel);
begin
  self.lbRoleID := Value;
end;

procedure TJanuaCustomUser.SetlbSecondName(const Value: IJanuaLabel);
begin
  self.FlbSecondName := Value
end;

procedure TJanuaCustomUser.SetlbUsername(const Value: IJanuaLabel);
begin
  self.FlbUsername := Value
end;

procedure TJanuaCustomUser.SetOwner;
var
  i: integer;
  LComponent: TComponent;
begin

  if assigned(Owner) and assigned(FController) and (Owner is TComponent) and assigned(FUserProfile) then
  begin
    self.WriteLog('Inserito Form: ' + Owner.Name + ', Componenti: ' + TComponent(Owner).ComponentCount.ToString());
    for i := 0 to Owner.ComponentCount - 1 do
    begin
      LComponent := TComponent(Owner).Components[i];
      if LComponent.Name = 'edName' then
        FedName := FJanuaControlBuilder.SetEditControl(FedName, LComponent)
      else if LComponent.Name = 'edSecondName' then
        FedSecondName := FJanuaControlBuilder.SetEditControl(FedSecondName, LComponent)
      else if LComponent.Name = 'edPassword' then
        FedPassword := FJanuaControlBuilder.SetEditControl(FedPassword, LComponent)
      else if LComponent.Name = 'edRoleID' then
        FedRoleID := FJanuaControlBuilder.SetEditControl(FedRoleID, LComponent)
      else if LComponent.Name = 'cboRole' then
        FcboRole := FJanuaControlBuilder.setComboControl(FcboRole, LComponent)
      else if LComponent.Name = 'edID' then
        FedID := FJanuaControlBuilder.SetEditControl(FedID, LComponent)
      else if LComponent.Name = 'lbName' then
        FlbName := FJanuaControlBuilder.SetLabelControl(FlbName, LComponent)
      else if LComponent.Name = 'lbSecondName' then
        FlbSecondName := FJanuaControlBuilder.SetLabelControl(FlbSecondName, LComponent)
      else if LComponent.Name = 'lbPassword' then
        FlbPassword := FJanuaControlBuilder.SetLabelControl(FlbPassword, LComponent)
      else if LComponent.Name = 'lbRoleID' then
        FlbRoleID := FJanuaControlBuilder.SetLabelControl(FlbRoleID, LComponent)
      else if LComponent.Name = 'cbRole' then
        FcboRole := FJanuaControlBuilder.setComboControl(FcboRole, LComponent)
      else if LComponent.Name = 'lbPassword' then
        FlbPassword := FJanuaControlBuilder.SetLabelControl(FlbPassword, LComponent)
      else if LComponent.Name = 'lbRoleID' then
        self.FlbRoleID := FJanuaControlBuilder.SetLabelControl(FlbRoleID, LComponent)
      else if LComponent.Name = 'lbName' then
        self.FlbName := FJanuaControlBuilder.SetLabelControl(FlbName, LComponent)
      else if LComponent.Name = 'lbSecondName' then
        self.FlbSecondName := FJanuaControlBuilder.SetLabelControl(FlbSecondName, LComponent)
      else if LComponent.Name = 'lbRole' then
        FlbRole := FJanuaControlBuilder.SetLabelControl(FlbRole, LComponent)
      else if LComponent.Name = 'lbID' then
        FlbID := FJanuaControlBuilder.SetLabelControl(FlbID, LComponent)
      else if LComponent.Name = 'btnNew' then
        FbtnNew := FJanuaControlBuilder.SetButtonControl(FbtnNew, (LComponent))
      else if LComponent.Name = 'btnSave' then
        FbtnSave := FJanuaControlBuilder.SetButtonControl(FbtnSave, LComponent)
    end;
  end;
end;

{ TJanuaCustomProfile }

procedure TJanuaCustomProfile.cboAddrDistrictChange(Sender: TObject);
begin
  {
    Notify(FComboSelectedText);
  }
end;

procedure TJanuaCustomProfile.cboAddrRegionChange(Sender: TObject);
begin
  {
    if assigned(cboAddrRegion) and (FController.GetComboSelectedText(cboAddrRegion) <>
    FUserProfile.Address.RegionName) then
    begin
    FUserProfile.Address.RegionName := FController.GetComboSelectedText(cboAddrRegion);
    FController.SetComboList(FcboAddrDistrict, FUserProfile.Address.ListaProvince);
    FController.SetComboList(FcboAddrTown, FUserProfile.Address.ListaComuni);
    end;
  }
end;

procedure TJanuaCustomProfile.cboAddrTownChange(Sender: TObject);
begin
  {
    if assigned(FcboAddrTown) and (FController.GetComboSelectedText(FcboAddrTown) <>
    FUserProfile.Address.TownName) then
    FUserProfile.Address.DistrictName := FController.GetComboSelectedText(FcboAddrTown);
  }
end;

constructor TJanuaCustomProfile.Create(AOwner: TComponent);
begin
  inherited;

end;

destructor TJanuaCustomProfile.Destroy;
begin

  inherited;
end;

function TJanuaCustomProfile.GetcboAddrCountry: TComponent;
begin
  Result := self.FcboAddrCountry.Component;
end;

function TJanuaCustomProfile.GetcboAddrDistrict: TComponent;
begin
  Result := self.FcboAddrDistrict.Component;
end;

function TJanuaCustomProfile.GetcboAddrRegion: TComponent;
begin
  Result := self.FcboAddrRegion.Component
end;

function TJanuaCustomProfile.GetcboAddrTown: TComponent;
begin
  Result := self.FcboAddrTown.Component
end;

function TJanuaCustomProfile.GetcboBirthCountry: TComponent;
begin
  Result := self.FcboBirthCountry.Component
end;

function TJanuaCustomProfile.GetcboBirthDistrict: TComponent;
begin
  Result := self.FcboBirthDistrict.Component
end;

function TJanuaCustomProfile.GetcboBirthRegion: TComponent;
begin
  Result := self.FcboBirthRegion.Component
end;

function TJanuaCustomProfile.GetcboBirthTown: TComponent;
begin
  Result := self.FcboBirthTown.Component
end;

function TJanuaCustomProfile.GetedAddress: TComponent;
begin
  Result := self.FedAddress.Component
end;

function TJanuaCustomProfile.GetedAddressMail: TComponent;
begin
  Result := self.FedAddressMail.Component
end;

function TJanuaCustomProfile.GetedBirthDate: TComponent;
begin
  Result := self.FedBirthDate.Component
end;

function TJanuaCustomProfile.GetedCellularPhone: TComponent;
begin
  Result := self.FedCellularPhone.Component
end;

function TJanuaCustomProfile.GetedFaxNumber: TComponent;
begin
  Result := self.FedFaxNumber.Component
end;

function TJanuaCustomProfile.GetedFirstName: TComponent;
begin
  Result := self.FedFirstName.Component
end;

function TJanuaCustomProfile.GetedGender: TComponent;
begin
  Result := self.FedGender.Component
end;

function TJanuaCustomProfile.GetedNumber: TComponent;
begin
  Result := self.FedNumber.Component
end;

function TJanuaCustomProfile.GetedPhone: TComponent;
begin
  Result := self.FedPhone.Component
end;

function TJanuaCustomProfile.Getedpostalcode: TComponent;
begin
  Result := self.Fedpostalcode.Component
end;

function TJanuaCustomProfile.GetedWorkPhone: TComponent;
begin
  Result := self.FedWorkPhone.Component
end;

function TJanuaCustomProfile.GetlbAddCountryID: TComponent;
begin
  Result := self.FlbAddCountryID.Component
end;

function TJanuaCustomProfile.GetlbAddDistricID: TComponent;
begin
  Result := self.FlbAddDistricID.Component
end;

function TJanuaCustomProfile.GetlbAddrCountry: TComponent;
begin
  Result := self.FlbAddrCountry.Component
end;

function TJanuaCustomProfile.GetlbAddrDistrict: TComponent;
begin
  Result := self.FlbAddrDistrict.Component
end;

function TJanuaCustomProfile.GetlbAddRegionID: TComponent;
begin
  Result := self.FlbAddRegionID.Component
end;

function TJanuaCustomProfile.GetlbAddress: TComponent;
begin
  Result := self.FlbAddress.Component
end;

function TJanuaCustomProfile.GetlbAddressMail: TComponent;
begin
  Result := self.FlbAddressMail.Component
end;

function TJanuaCustomProfile.GetlbAddrRegion: TComponent;
begin
  Result := self.FlbAddrRegion.Component
end;

function TJanuaCustomProfile.GetlbAddrTown: TComponent;
begin
  Result := self.FlbAddrTown.Component
end;

function TJanuaCustomProfile.GetlbAddTownID: TComponent;
begin
  Result := self.FlbAddTownID.Component
end;

function TJanuaCustomProfile.GetlbBirthCountry: TComponent;
begin
  Result := self.FlbBirthCountry.Component
end;

function TJanuaCustomProfile.GetlbBirthDate: TComponent;
begin
  Result := self.FlbBirthDate.Component
end;

function TJanuaCustomProfile.GetlbBirthDistrict: TComponent;
begin
  Result := self.FlbBirthDistrict.Component
end;

function TJanuaCustomProfile.GetlbBirthRegion: TComponent;
begin
  Result := self.FlbBirthRegion.Component
end;

function TJanuaCustomProfile.GetlbBirthTown: TComponent;
begin
  Result := self.FlbBirthTown.Component
end;

function TJanuaCustomProfile.GetlbCellularPhone: TComponent;
begin
  Result := self.FlbCellularPhone.Component
end;

function TJanuaCustomProfile.GetlbFaxNumber: TComponent;
begin
  Result := self.FlbFaxNumber.Component
end;

function TJanuaCustomProfile.GetlbGender: TComponent;
begin
  Result := self.FlbGender.Component
end;

function TJanuaCustomProfile.GetlbNumber: TComponent;
begin
  Result := self.FlbNumber.Component
end;

function TJanuaCustomProfile.GetlbPhone: TComponent;
begin
  Result := self.FlbPhone.Component
end;

function TJanuaCustomProfile.GetlbPostalCode: TComponent;
begin
  Result := self.FlbPostalCode.Component
end;

function TJanuaCustomProfile.GetlbSelectGender: TComponent;
begin
  Result := self.FlbSelectGender.Component
end;

function TJanuaCustomProfile.GetlbWorkPhone: TComponent;
begin
  Result := self.FlbWorkPhone.Component
end;

function TJanuaCustomProfile.GetselectGender: TComponent;
begin
  Result := self.FselectGender.Component
end;

procedure TJanuaCustomProfile.SetOwner;
var
  i: integer;
begin
  inherited;
  if assigned(Owner) and assigned(FController) and (Owner is TComponent) and assigned(FUserProfile) then
  begin
    for i := 0 to TComponent(Owner).ComponentCount - 1 do
    begin
      if TComponent(Owner).Components[i].Name = 'cboAddrCountry' then
        SetcboAddrCountry((TComponent(Owner).Components[i]))
      else if TComponent(Owner).Components[i].Name = 'edWorkPhone' then
        SetedWorkPhone(TComponent(Owner).Components[i])
      else if TComponent(Owner).Components[i].Name = 'edpostalcode' then
        Setedpostalcode(TComponent(Owner).Components[i])
      else if TComponent(Owner).Components[i].Name = 'cboBirthCountry' then
        SetcboBirthCountry(TComponent(Owner).Components[i])
      else if TComponent(Owner).Components[i].Name = 'cboAddrRegion' then
        SetcboAddrRegion(TComponent(Owner).Components[i])
      else if TComponent(Owner).Components[i].Name = 'edPhone' then
        SetedPhone(TComponent(Owner).Components[i])
      else if TComponent(Owner).Components[i].Name = 'edGender' then
        SetedGender((TComponent(Owner).Components[i]))
      else if TComponent(Owner).Components[i].Name = 'cboBirthRegion' then
        SetcboBirthRegion(TComponent(Owner).Components[i])
      else if TComponent(Owner).Components[i].Name = 'edAddressMail' then
        SetedAddressMail(TComponent(Owner).Components[i])
      else if TComponent(Owner).Components[i].Name = 'selectGender' then
        SetselectGender(TComponent(Owner).Components[i])
      else if TComponent(Owner).Components[i].Name = 'cboAddrTown' then
        SetcboAddrTown(TComponent(Owner).Components[i])
      else if TComponent(Owner).Components[i].Name = 'edCellularPhone' then
        SetedCellularPhone(TComponent(Owner).Components[i])
      else if TComponent(Owner).Components[i].Name = 'edNumber' then
        SetedNumber((TComponent(Owner).Components[i]))
      else if TComponent(Owner).Components[i].Name = 'cboAddrDistrict' then
        SetcboAddrDistrict(TComponent(Owner).Components[i])
      else if TComponent(Owner).Components[i].Name = 'cboBirthTown' then
        SetcboBirthTown(TComponent(Owner).Components[i])
      else if TComponent(Owner).Components[i].Name = 'cboBirthDistrict' then
        SetcboBirthDistrict(TComponent(Owner).Components[i])
      else if TComponent(Owner).Components[i].Name = 'edFaxNumber' then
        SetedFaxNumber(TComponent(Owner).Components[i])
      else if TComponent(Owner).Components[i].Name = 'edAddress' then
        SetedAddress(TComponent(Owner).Components[i])
      else if TComponent(Owner).Components[i].Name = 'edBirthDate' then
        SetedBirthDate(TComponent(Owner).Components[i])
    end;
  end;
end;

procedure TJanuaCustomProfile.Refresh;
var
  aList: TStrings;
begin
  inherited;

  self.WriteLog('TJanuaCustomProfile.Refresh');
  {
    if assigned(FUserProfile) and self.FUserProfile.Active then
    begin
    aList := TStringList.Create;
    try
    if assigned(self.FedPhone) then
    FController.SetEditText(self.FedPhone, self.FUserProfile.Address.Phone);

    if assigned(self.FcboAddrCountry) then
    begin
    aList.Clear;
    aList.Add(FUserProfile.Address.CountryName);
    FController.SetComboList(FcboAddrCountry, aList);
    FController.SetComboSelectedText(self.FcboAddrCountry, FUserProfile.Address.CountryName);
    end;

    if assigned(self.FcboAddrRegion) then
    begin
    FController.SetComboList(FcboAddrRegion, FUserProfile.Address.ListaRegioni);
    FController.SetComboSelectedText(self.FcboAddrRegion, FUserProfile.Address.RegionName);
    end;

    if assigned(self.FcboAddrDistrict) then
    begin
    FController.SetComboList(FcboAddrDistrict, FUserProfile.Address.ListaRegioni);
    FController.SetComboSelectedText(self.FcboAddrDistrict, FUserProfile.Address.DistrictName);
    end;

    if assigned(self.FcboAddrTown) then
    begin
    FController.SetComboList(FcboAddrDistrict, FUserProfile.Address.ListaComuni);
    FController.SetComboSelectedText(self.FcboAddrDistrict, FUserProfile.Address.TownName);
    end;

    self.WriteLog('TJanuaCustomProfile.Refresh', 'Fine');

    finally
    if assigned(aList) then
    FreeAndNil(aList);
    end;
    end;
  }
end;

procedure TJanuaCustomProfile.SaveRecord;
begin
  {
    property RegionID: smallint read FRegionID write SetRegionID;
    property : string read FDistrictName write SetDistrictName;
    property DistrictID: integer read FDistrictID write SetDistrictID;
    property : string read FTownName write SetTownName;
    property TownID: integer read FTownID write SetTownID;
    property CountryID: smallint read FCountryID write SetCountryID default 0;
    property CountryIndex: integer read FCountryIndex write SetCountryIndex;
    property : string read FCountryName write SetContryName; }

  inherited;
  {
    if assigned(FUserProfile) then
    begin
    if assigned(FedPhone) then
    self.FUserProfile.Address.Phone := FController.GetEditText(self.FedPhone);
    if assigned(FedCellularPhone) then
    self.FUserProfile.Address.CellularPhone := FController.GetEditText(self.FedCellularPhone);
    if assigned(FedWorkPhone) then
    self.FUserProfile.Address.WorkPhone := FController.GetEditText(self.FedWorkPhone);
    if assigned(Fedpostalcode) then
    self.FUserProfile.Address.postalcode := FController.GetEditText(self.Fedpostalcode);
    if assigned(FedBirthDate) then
    self.FUserProfile.birthdate := FController.GetEditDate(self.FedBirthDate);
    if assigned(FedFaxNumber) then
    self.FUserProfile.Address.FaxNumber := FController.GetEditText(self.FedFaxNumber);
    if assigned(FedAddressMail) then
    self.FUserProfile.Address.AddressMail := FController.GetEditText(self.FedAddressMail);
    if assigned(FedAddress) then
    self.FUserProfile.Address.Address := FController.GetEditText(self.FedAddress);
    if assigned(FedNumber) then
    self.FUserProfile.Address.Number := FController.GetEditText(self.FedNumber);
    if assigned(FcboAddrRegion) then
    self.FUserProfile.Address.RegionName := FController.GetComboSelectedText(FcboAddrRegion);
    if assigned(FcboAddrDistrict) then
    self.FUserProfile.Address.DistrictName := FController.GetComboSelectedText(FcboAddrDistrict);
    if assigned(FcboAddrTown) then
    self.FUserProfile.Address.TownName := FController.GetComboSelectedText(FcboAddrTown);
    if assigned(FcboAddrCountry) then
    self.FUserProfile.Address.CountryName := FController.GetComboSelectedText(FcboAddrCountry);
    end;
  }

end;

procedure TJanuaCustomProfile.SetcboAddrCountry(const Value: TComponent);
begin
  FcboAddrCountry := FJanuaControlBuilder.setComboControl(FcboAddrCountry, Value, 'cboAddrCountry', 'Nazione');
end;

procedure TJanuaCustomProfile.SetcboAddrDistrict(const Value: TComponent);
begin
  Janua.Core.Functions.ExecProc(
    procedure
    begin
      FcboAddrDistrict := FJanuaControlBuilder.setComboControl(FcboAddrDistrict, Value, 'cboAddrDistrict', 'Provincia');
    end, 'SetcboAddrDistrict', self)
end;

procedure TJanuaCustomProfile.SetcboAddrRegion(const Value: TComponent);
begin

  Janua.Core.Functions.ExecProc(
    procedure
    begin
      FcboAddrRegion := FJanuaControlBuilder.setComboControl(FcboAddrRegion, Value, 'cboAddrRegion', 'Regione');
    end, 'SetcboAddrRegion', self)

end;

procedure TJanuaCustomProfile.SetcboAddrTown(const Value: TComponent);
begin
  Janua.Core.Functions.ExecProc(
    procedure
    begin
      FcboAddrTown := FJanuaControlBuilder.setComboControl(FcboAddrTown, Value, 'cboAddrTown', 'Città');
    end, 'SetcboAddrTown', self)
end;

procedure TJanuaCustomProfile.SetcboBirthCountry(const Value: TComponent);
begin
  Janua.Core.Functions.ExecProc(
    procedure
    begin
      FcboBirthCountry := FJanuaControlBuilder.setComboControl(FcboBirthCountry, Value, 'cboBirthCountry',
        'Nazione Nascita');
    end, 'SetcboBirthCountry', self)

end;

procedure TJanuaCustomProfile.SetcboBirthDistrict(const Value: TComponent);
begin

  Janua.Core.Functions.ExecProc(
    procedure
    begin
      FcboBirthDistrict := FJanuaControlBuilder.setComboControl(FcboBirthDistrict, Value, 'cboBirthDistrict',
        'Provincia Nascita');
    end, 'SetcboBirthDistrict', self)

end;

procedure TJanuaCustomProfile.SetcboBirthRegion(const Value: TComponent);
begin

  Janua.Core.Functions.ExecProc(
    procedure
    begin
      FcboBirthRegion := FJanuaControlBuilder.setComboControl(FcboBirthRegion, Value, 'cboBirthRegion',
        'Regione Nascita');
    end, 'SetcboBirthRegion', self)

end;

procedure TJanuaCustomProfile.SetcboBirthTown(const Value: TComponent);
begin

  Janua.Core.Functions.ExecProc(
    procedure
    begin
      FcboBirthTown := FJanuaControlBuilder.setComboControl(FcboBirthTown, Value, 'cboBirthTown', 'Comune di Nascita');
    end, 'SetcboBirthTown', self)

end;

procedure TJanuaCustomProfile.SetedAddress(const Value: TComponent);
begin

  Janua.Core.Functions.ExecProc(
    procedure
    begin
      FedAddress := FJanuaControlBuilder.SetEditControl(FedAddress, Value, 'edAddress', 'Indirizzo Utente');
    end, 'SetedAddress', self)

end;

procedure TJanuaCustomProfile.SetedAddressMail(const Value: TComponent);
begin
  Janua.Core.Functions.ExecProc(
    procedure
    begin
      FedAddressMail := FJanuaControlBuilder.SetEditControl(FedAddressMail, Value, 'edAddressMail',
        'Posta Elettronica');
    end, 'edAddressMail', self)

end;

procedure TJanuaCustomProfile.SetedBirthDate(const Value: TComponent);
begin
  Janua.Core.Functions.ExecProc(
    procedure
    begin
      FedBirthDate := FJanuaControlBuilder.SetDateControl(FedBirthDate, Value, 'edBirthDate', 'Data di Nascita');
    end, 'edBirthDate', self)
end;

procedure TJanuaCustomProfile.SetedCellularPhone(const Value: TComponent);
begin
end;

procedure TJanuaCustomProfile.SetedFaxNumber(const Value: TComponent);
// Component: IJanuaEdit = (Name: 'edFaxNumber'; TextHint: 'Numero di Fax';);
begin
  Janua.Core.Functions.ExecProc(
    procedure
    begin
      FedFaxNumber := FJanuaControlBuilder.SetEditControl(FedFaxNumber, Value, 'edFaxNumber', 'Numero Fax',
        'Numero Fax');
      // Bind Name To Field .....

    end, 'SetedFaxNumber', self)

end;

procedure TJanuaCustomProfile.SetedFirstName(const Value: TComponent);
begin
  Janua.Core.Functions.ExecProc(
    procedure
    begin
      FedFirstName := FJanuaControlBuilder.SetEditControl(FedFirstName, Value, 'edFirstName', 'Nome', 'Nome');
      // Bind Name To Field .....
    end, 'edFirstName', self)
end;

procedure TJanuaCustomProfile.SetedGender(const Value: TComponent);
begin
  Janua.Core.Functions.ExecProc(
    procedure
    begin
      FedGender := FJanuaControlBuilder.SetEditControl(FedGender, Value, 'edGender', 'GenderCode', 'GenderCode');
      // Bind Name To Field .....
    end, 'edGender', self)
end;

procedure TJanuaCustomProfile.SetedNumber(const Value: TComponent);
begin

  Janua.Core.Functions.ExecProc(
    procedure
    begin
      FedNumber := FJanuaControlBuilder.SetEditControl(FedNumber, Value, 'edNumber', 'N° Int.', 'N° Int.');
      // Bind Name To Field .....
    end, 'edGender', self)

end;

procedure TJanuaCustomProfile.SetedPhone(const Value: TComponent);

// Component: IJanuaEdit = (Name: 'edPhone'; TextHint: 'Telefono';);
begin
  Janua.Core.Functions.ExecProc(
    procedure
    begin
      FedPhone := FJanuaControlBuilder.SetEditControl(FedPhone, Value, 'edPhone', 'N° Telefono', 'N° Telefono');
      // Bind Name To Field .....
    end, 'SetedPhone', self)
end;

procedure TJanuaCustomProfile.Setedpostalcode(const Value: TComponent);
// Component: IJanuaEdit = (Name: 'edpostalcode'; TextHint: 'Codice Postale';);
begin
  Janua.Core.Functions.ExecProc(
    procedure
    begin
      Fedpostalcode := FJanuaControlBuilder.SetEditControl(Fedpostalcode, Value, 'edpostalcode', 'CAP', 'CAP');
      // Bind Name To Field .....
    end, 'Setedpostalcode', self)
end;

procedure TJanuaCustomProfile.SetedWorkPhone(const Value: TComponent);
begin
  Janua.Core.Functions.ExecProc(
    procedure
    begin
      FedWorkPhone := FJanuaControlBuilder.SetEditControl(FedWorkPhone, Value, 'edWorkPhone', 'Telefono Ufficio',
        'Telefono Ufficio');
      // Bind Name To Field .....
    end, 'SetedWorkPhone', self)

end;

procedure TJanuaCustomProfile.SetlbAddCountryID(const Value: TComponent);
begin
  Janua.Core.Functions.ExecProc(
    procedure
    begin
      FlbAddCountryID := FJanuaControlBuilder.SetLabelControl(FlbAddCountryID, Value, 'lbAddCountryID');
      // Bind Name To Field .....
    end, 'SetlbAddCountryID', self)

end;

procedure TJanuaCustomProfile.SetlbAddDistricID(const Value: TComponent);
begin

  Janua.Core.Functions.ExecProc(
    procedure
    begin
      self.FlbAddrDistrict := FJanuaControlBuilder.SetLabelControl(FlbAddrDistrict, Value, 'lbAddDistricID');
      // Bind Name To Field .....  Caption := FUserProfile.Address.DistrictID.ToString;
    end, 'SetlbAddDistricID', self)

  {
    if assigned(Value) then
    begin
    FlbAddDistricID := Value;
    Value.Name := '';
    if assigned(FController) and assigned(self.FUserProfile) then
    with (Value As IJanuaLabel) do

    end;
  }
end;

procedure TJanuaCustomProfile.SetlbAddrCountry(const Value: TComponent);
// Component: IJanuaLabel = (Name: 'lbAddrCountry'; Caption: 'Nazione';);
begin
  Janua.Core.Functions.ExecProc(
    procedure
    begin
      FlbAddrCountry := FJanuaControlBuilder.SetLabelControl(FlbAddrCountry, Value, 'lbAddrCountry', 'Nazione');
      // Bind Name To Field .....  Caption := FUserProfile.Address.DistrictID.ToString;

    end, 'lbAddrCountry', self)
end;

procedure TJanuaCustomProfile.SetlbAddrDistrict(const Value: TComponent);
// Component: IJanuaLabel = (Name: 'lbAddrDistrict'; Caption: 'Provincia';);
begin
  Janua.Core.Functions.ExecProc(
    procedure
    begin
      FlbAddrDistrict := FJanuaControlBuilder.SetLabelControl(FlbAddrDistrict, Value, 'lbAddrDistrict', 'Prov.');
      // Bind Name To Field .....  Caption := FUserProfile.Address.DistrictID.ToString;

    end, 'SetlbAddrDistrict', self)
end;

procedure TJanuaCustomProfile.SetlbAddRegionID(const Value: TComponent);
begin

  Janua.Core.Functions.ExecProc(
    procedure
    begin
      FlbAddRegionID := FJanuaControlBuilder.SetLabelControl(FlbAddRegionID, Value, 'lbAddRegionID', 'Nazione');
      // Bind Name To Field .....  Caption := FUserProfile.Address.DistrictID.ToString;
      // ha ancora senso gstire il Region ID nell'address?????
      // FUserProfile.Bind(FUserProfile.Address_street);
    end, 'SetlbAddRegionID', self)

end;

procedure TJanuaCustomProfile.SetlbAddress(const Value: TComponent);
begin

  Janua.Core.Functions.ExecProc(
    procedure
    begin
      FlbAddress := FJanuaControlBuilder.SetLabelControl(FlbAddress, Value, 'lbAddress', 'Indirizzo');
      // Bind Name To Field .....  Caption := FUserProfile.Address.DistrictID.ToString;
    end, 'SetlbAddress', self)

end;

procedure TJanuaCustomProfile.SetlbAddressMail(const Value: TComponent);
// Component: IJanuaLabel = (Name: 'lbAddressMail'; Caption: 'Indirizzo Mail';);
begin
  Janua.Core.Functions.ExecProc(
    procedure
    begin
      FlbAddressMail := FJanuaControlBuilder.SetLabelControl(FlbAddressMail, Value, 'lbAddress', 'E-Mail');
      // Bind Name To Field .....  Caption := FUserProfile.Address.DistrictID.ToString;
    end, 'SetlbAddress', self);

end;

procedure TJanuaCustomProfile.SetlbAddrRegion(const Value: TComponent);
// Component: IJanuaLabel = (Name: 'lbAddrRegion'; Caption: 'Regione';);
begin
  Janua.Core.Functions.ExecProc(
    procedure
    begin
      FlbAddrRegion := FJanuaControlBuilder.SetLabelControl(FlbAddrRegion, Value, 'lbAddrRegion', 'Regione');
      // Bind Name To Field .....  Caption := FUserProfile.Address.DistrictID.ToString;
    end, 'SetlbAddress', self);

end;

procedure TJanuaCustomProfile.SetlbAddrTown(const Value: TComponent);
// Component: IJanuaLabel = (Name: 'lbAddrTown'; Caption: 'Città';);
begin

  Janua.Core.Functions.ExecProc(
    procedure
    begin
      FlbAddrTown := FJanuaControlBuilder.SetLabelControl(FlbAddrTown, Value, 'lbAddrTown', 'Città');
      // Bind Name To Field .....  Caption := FUserProfile.Address.DistrictID.ToString;
    end, 'SetlbAddrTown', self);
end;

procedure TJanuaCustomProfile.SetlbAddTownID(const Value: TComponent);
begin

  Janua.Core.Functions.ExecProc(
    procedure
    begin
      FlbAddTownID := FJanuaControlBuilder.SetLabelControl(FlbAddTownID, Value, 'lbAddTownID');
      // Bind Name To Field .....  Caption := FUserProfile.Address.DistrictID.ToString;
      // ha ancora senso gstire il Region ID nell'address?????
      // FUserProfile.Bind(FUserProfile.Address_street);
    end, 'SetlbAddTownID', self)

end;

procedure TJanuaCustomProfile.SetlbBirthCountry(const Value: TComponent);
// Component: IJanuaLabel = (Name: 'lbBirthCountry'; Caption: 'Nazione Nascita';);
begin
  Janua.Core.Functions.ExecProc(
    procedure
    begin
      FlbBirthCountry := FJanuaControlBuilder.SetLabelControl(FlbBirthCountry, Value, 'lbBirthCountry');
      // Bind Name To Field .....  Caption := FUserProfile.Address.DistrictID.ToString;
      // ha ancora senso gstire il Region ID nell'address?????
      // FUserProfile.Bind(FUserProfile.Address_street);
    end, 'SetlbAddTownID', self)
end;

procedure TJanuaCustomProfile.SetlbBirthDate(const Value: TComponent);
// Component: IJanuaLabel = (Name: 'lbBirthDate'; Caption: 'Data di Nascita';);
begin
  Janua.Core.Functions.ExecProc(
    procedure
    begin
      FlbBirthDate := FJanuaControlBuilder.SetLabelControl(FlbBirthDate, Value, 'lbBirthDate', 'Data di nascita');
      // Bind Name To Field .....  Caption := FUserProfile.Address.DistrictID.ToString;
      // ha ancora senso gstire il Region ID nell'address?????
      // FUserProfile.Bind(FUserProfile.Address_street);
    end, 'FlbBirthDate', self)

end;

procedure TJanuaCustomProfile.SetlbBirthDistrict(const Value: TComponent);
// Component: IJanuaLabel = (Name: 'lbBirthDistrict'; Caption: 'Provincia Nascita';);
begin
  Janua.Core.Functions.ExecProc(
    procedure
    begin
      FlbBirthDistrict := FJanuaControlBuilder.SetLabelControl(FlbBirthDistrict, Value, 'lbBirthDistrict', 'Prov.');
      // Bind Name To Field .....  Caption := FUserProfile.Address.DistrictID.ToString;
      // ha ancora senso gstire il Region ID nell'address?????
      // FUserProfile.Bind(FUserProfile.Address_street);
    end, 'FlbBirthDistrict', self)
end;

procedure TJanuaCustomProfile.SetlbBirthRegion(const Value: TComponent);
// Component: IJanuaLabel = (Name: 'lbBirthRegion'; Caption: 'Regione Nascita';);
begin
  Janua.Core.Functions.ExecProc(
    procedure
    begin
      FlbBirthRegion := FJanuaControlBuilder.SetLabelControl(FlbBirthRegion, Value, 'lbBirthRegion', 'Regione');
      // Bind Name To Field .....  Caption := FUserProfile.Address.DistrictID.ToString;
      // ha ancora senso gstire il Region ID nell'address?????
      // FUserProfile.Bind(FUserProfile.Address_street);
    end, 'FlbBirthRegion', self)
end;

procedure TJanuaCustomProfile.SetlbBirthTown(const Value: TComponent);
// Component: IJanuaLabel = (Name: 'lbBirthTown'; Caption: 'Città Nascita';);
begin
  Janua.Core.Functions.ExecProc(
    procedure
    begin
      FlbBirthTown := FJanuaControlBuilder.SetLabelControl(FlbBirthTown, Value, 'lbBirthTown', 'Città');
      // Bind Name To Field .....  Caption := FUserProfile.Address.DistrictID.ToString;
      // ha ancora senso gstire il Region ID nell'address?????
      // FUserProfile.Bind(FUserProfile.Address_street);
    end, 'FlbBirthTown', self)
end;

procedure TJanuaCustomProfile.SetlbCellularPhone(const Value: TComponent);
// Component: IJanuaLabel = (Name: 'lbCellularPhone'; Caption: 'Telefono Cellulare';);
begin
  Janua.Core.Functions.ExecProc(
    procedure
    begin
      FlbCellularPhone := FJanuaControlBuilder.SetLabelControl(FlbCellularPhone, Value, 'lbCellularPhone', 'Città');
      // Bind Name To Field .....  Caption := FUserProfile.Address.DistrictID.ToString;
      // ha ancora senso gstire il Region ID nell'address?????
      // FUserProfile.Bind(FUserProfile.Address_street);
    end, 'FlbCellularPhone', self)
end;

procedure TJanuaCustomProfile.SetlbFaxNumber(const Value: TComponent);
// Component: IJanuaLabel = (Name: 'lbFaxNumber'; Caption: 'Numero di Fax';);
begin
  Janua.Core.Functions.ExecProc(
    procedure
    begin
      FlbFaxNumber := FJanuaControlBuilder.SetLabelControl(FlbFaxNumber, Value, 'lbFaxNumber', 'Numero Fax');
      // Bind Name To Field .....  Caption := FUserProfile.Address.DistrictID.ToString;
      // ha ancora senso gstire il Region ID nell'address?????
      // FUserProfile.Bind(FUserProfile.Address_street);
    end, 'FlbFaxNumber', self)
end;

procedure TJanuaCustomProfile.SetlbGender(const Value: TComponent);
// Component: IJanuaLabel = (Name: 'lbGender'; Caption: 'Sesso';);
begin
  Janua.Core.Functions.ExecProc(
    procedure
    begin
      FlbGender := FJanuaControlBuilder.SetLabelControl(FlbGender, Value, 'lbGender', 'Sesso');
      // Bind Name To Field .....  Caption := FUserProfile.Address.DistrictID.ToString;
      // ha ancora senso gstire il Region ID nell'address?????
      // FUserProfile.Bind(FUserProfile.Address_street);
    end, 'FlbGender', self)
end;

procedure TJanuaCustomProfile.SetlbNumber(const Value: TComponent);
// Component: IJanuaLabel = (Name: 'lbNumber'; Caption: 'Civico';);
begin
  Janua.Core.Functions.ExecProc(
    procedure
    begin
      FlbNumber := FJanuaControlBuilder.SetLabelControl(FlbNumber, Value, 'lbNumber', 'Civio');
      // Bind Name To Field .....  Caption := FUserProfile.Address.DistrictID.ToString;
      // ha ancora senso gstire il Region ID nell'address?????
      // FUserProfile.Bind(FUserProfile.Address_street);
    end, 'lbNumber', self)
end;

procedure TJanuaCustomProfile.SetlbPhone(const Value: TComponent);
// Component: IJanuaLabel = (Name: 'lbPhone'; Caption: 'Telefono';);
begin
  Janua.Core.Functions.ExecProc(
    procedure
    begin
      FlbPhone := FJanuaControlBuilder.SetLabelControl(FlbPhone, Value, 'lbPhone', 'Telefono');
      // Bind Name To Field .....  Caption := FUserProfile.Address.DistrictID.ToString;
      // ha ancora senso gstire il Region ID nell'address?????
      // FUserProfile.Bind(FUserProfile.Address_street);
    end, 'FlbPhone', self)
end;

procedure TJanuaCustomProfile.SetlbPostalCode(const Value: TComponent);
// Component: IJanuaLabel = (Name: 'lbPostalCode'; Caption: 'CAP';);
begin
  Janua.Core.Functions.ExecProc(
    procedure
    begin
      FlbPostalCode := FJanuaControlBuilder.SetLabelControl(FlbPostalCode, Value, 'lbPostalCode', 'CAP');
      // Bind Name To Field .....  Caption := FUserProfile.Address.DistrictID.ToString;
      // ha ancora senso gstire il Region ID nell'address?????
      // FUserProfile.Bind(FUserProfile.Address_street);
    end, 'FlbPostalCode', self)
end;

procedure TJanuaCustomProfile.SetlbSelectGender(const Value: TComponent);
// Component: IJanuaLabel = (Name: 'lbSelectGender'; Caption: 'Sesso';);
begin
  Janua.Core.Functions.ExecProc(
    procedure
    begin
      FlbSelectGender := FJanuaControlBuilder.SetLabelControl(FlbSelectGender, Value, 'lbSelectGender', 'Sesso');
      // Bind Name To Field .....  Caption := FUserProfile.Address.DistrictID.ToString;
      // ha ancora senso gstire il Region ID nell'address?????
      // FUserProfile.Bind(FUserProfile.Address_street);
    end, 'FlbPostalCode', self)
end;

procedure TJanuaCustomProfile.SetlbWorkPhone(const Value: TComponent);
// Component: IJanuaLabel = (Name: 'lbWorkPhone'; Caption: 'Tel. Ufficio';);
begin
  Janua.Core.Functions.ExecProc(
    procedure
    begin
      FlbWorkPhone := FJanuaControlBuilder.SetLabelControl(FlbWorkPhone, Value, 'lbWorkPhone', 'Tel. Ufficio');
      // Bind Name To Field .....  Caption := FUserProfile.Address.DistrictID.ToString;
      // ha ancora senso gstire il Region ID nell'address?????
      // FUserProfile.Bind(FUserProfile.Address_street);
    end, 'FlbWorkPhone', self)
end;

procedure TJanuaCustomProfile.SetselectGender(const Value: TComponent);
// Component: TJanuaSelectComponent = (Name: 'selectGender'; Caption: 'Sesso';);
begin

  // FController.bindSelectIndex(self.FUserProfile, 'GenderIndex', Value);
  // FController.bindSelectList(self.FUserProfile, 'GenderList', Value);
  Janua.Core.Functions.ExecProc(
    procedure
    begin
      FselectGender := FJanuaControlBuilder.SetSelectControl(FselectGender, Value, 'selectGender', 'Sesso');
      // Bind Name To Field .....  Caption := FUserProfile.Address.DistrictID.ToString;
      // ha ancora senso gstire il Region ID nell'address?????
      // FUserProfile.Bind(FUserProfile.Address_street);
    end, 'selectGender', self)
end;

procedure TJanuaCustomProfile.SetVerbose(const Value: boolean);
begin
  inherited;
end;

end.
