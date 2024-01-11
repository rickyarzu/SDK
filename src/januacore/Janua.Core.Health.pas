unit Janua.Core.Health;

interface

{$I JANUACORE.INC}

uses
  // System Classes
  System.SysUtils, System.Classes, System.JSON, System.JSONConsts, System.Math,
  System.Net.HttpClientComponent,
  // Database access Data.
  DB, FireDAC.Comp.Client,
  // Web Broker Framework
{$IF Defined(WEBBROKER)}
  Web.HttpApp,
{$ENDIF}
  // Janua Frameworks
  Janua.Core.Types, Janua.Core.Classes, Janua.Core.Servers, Janua.Cloud.Types,
  Janua.Core.Http, Janua.Core.System, Janua.Core.Jpublic, Janua.Core.Customcontrols,
  // JOrm
  JOrm.System.intf, Janua.Controls.intf, Janua.Core.Entities, Janua.Cloud.Mail.intf,
  Janua.Core.Users, Janua.Core.Cloud, Janua.Core.Metronics, Janua.Core.DB, Janua.Anagraph.Types;

{
  2	SO	Societ di Medicina
  3	ST	Operatore
  4	BI	Articolista
  0	00	non assegnata
  1	OR	Casa Farmaceutica
  5	OB	Informatore Farmaco
  6	QV	Ordine Medici
  7	OM	Amministratore
  8	AV	Avvocato
  9	CO	Commercialista
  10 FA Farmacista
}

type
  THealthRoles = (hltND, hltPharma { Casa Farma } , hltAssociation { Soc. di Medicina } ,
    hltOperator { Operatore non Medico } , hltWriter { Scritore } , hltInformer, hltCouncil { Ordine } ,
    hltAdmin { Amministratore } , hltLawyer { Avvocato } , hltAccountant { Commercialista } ,
    hltInsurance { Assicurazione } , htlPharmacist { Farmacista } );

type
  THealthProfileForms = (hpfND { non specificato } , hpfProfile { modifica profilo utente default } ,
    hpfNewUser { Inserimento nuovo Utente } , hpfEditUser { modifica profilo } );


  // il type 'doctor' indica un utente loggato al sistema, questo utente di fatto
  // pu� appartenere ad un

type
  THealthMenu = record
    id: integer;
    title: string;
    description: string;
    url: string;
    app_procedure: integer;
  end;

  THealthBranch = record
    /// Health Branch una divisione pi di tipo amministrativo
    /// Una Branch si pu dividere in discipline poi divise in specializzazioni
    /// Questa la definizione di Branca che p servire anche per un medico
  var
    id: integer;
    index: integer;
    code: string;
    name: string;
    indent: string;
  public
    procedure Reset;
    function Compare(a: THealthBranch): boolean;
    function ToString(full: boolean = true): string;
    function AsJsonObject: TJsonObject;
    function AsJsonPretty: string;
    procedure SetFromJsonObject(aObject: TJsonObject);
    procedure SetFromJson(aJson: string);
    procedure SetFromDataset(aDataset: TDataset);
  end;

type
  TSpeciality = record // Specialit di medicina parte della Branch
    id: integer;
    index: integer;
    code: string;
    name: string;
    indent: string;
  public
    function ToString(full: boolean = true): string;
    function Compare(a: TSpeciality): boolean;
    procedure Reset;
  end;

  TBranch = record // Branch la Branch di medicina italiana
    Branch: THealthBranch;
    SelectedSpeciality: TSpeciality;
    specialities: array of TSpeciality; // specialit che ne fanno parte
    speccount: integer;
    indent: integer;
  public
    function ToString(full: boolean = true): string;
    function GetspecialitybyID(aID: integer): boolean;
    function GetspecialityByName(aName: String): boolean;
    function GetspecialityByCode(aCode: String): boolean;
    function Listspeciality: TStringList;
    function GetspecialityByIndex(aIndex: integer): boolean;
    procedure Reset;
  end;

type
  TMedAssociationShort = record
    cod_ass: string;
    name_ass: string;
  end;

type // Councils il termine Inglese per gli ordini dei medici
  TCouncil = record
    code: string;
    name: string;
    id: integer;
    index: integer;
    Country: TISOCountry;
    Region: TISORegion;
  public
    function ToString(full: boolean = true): string;
    function Compare(a: TCouncil): boolean;
  end;

type
  TAslAttivita = record
    des_AslAttivita: string;
    cid_AslAttivita: integer;
  end;

type
  THealthRegion = record
    Region: TISORegion;
    index: smallint;
    Districts: array of TDistrict;
    SelectedDistrict: TDistrict;
    Organizations: array of TOrganization;
    SelectedOrganization: TOrganization;
    indent: string;
    LastMessage: string;
  public
    function ToString(full: boolean = true): String;
    function GetDistrictbyID(aID: integer): boolean;
    function GetDistrictByName(aName: String): boolean;
    function GetDistrictByCode(aCode: String): boolean;
    function ListDistricts: TStringList;
    function GetDistrictByIndex(aIndex: integer): boolean;
    // Organizations ************************************************************************
    function GetOrganizationbyID(aID: integer): boolean;
    function GetOrganizationByName(aName: String): boolean;
    function GetOrganizationByCode(aCode: String): boolean;
    function ListOrganizations: TStringList;
    function GetOrganizationByIndex(aIndex: integer): boolean;
    // ***************************************************************************************
    procedure SetFromDataset(dsRegion, dsDistrict, dsOrganization: TDataset);
  end;

type // Associazione dei medici sono le societ di medicina
  TMedAssociation = record
    id: integer;
    index: integer;
    code: string;
    name: string;
    members: integer;
    url: string;
    Mail: string;
    phone: string;
    address: string;
    postal_code: string;
    cap: string;
    Country: TISOCountry;
    Region: TISORegion;
    District: TISODistrict;
    Town: TTown;
  public
    function ToString: string;
  end;

type
  THealthConfig = record // Contenitore di tutti i record di Ricerca di Health.
    Country: TISOCountry;
    Branches: array of TBranch;
    // Tutte le branche include le specialit.........
    SelectedBranch: TBranch; // Branch selezionata
    MedAssociations: array of TMedAssociation; // Associazioni dei medici
    SelectedMedAssociation: TMedAssociation; // Associazione selezionata
    Councils: array of TCouncil; // Ordini dei medici
    SelectedCouncil: TCouncil; // Ordine selezionato
    SearchCountry: TCountry; // Stato di appartenenza (riferimento)
    Regions: array of THealthRegion;
    SelectedRegion: THealthRegion;
  public
    function ToString(full: boolean = true): string;
    // Region Search Functions
    function GetRegionByName(aName: string): boolean;
    function GetRegionByID(aID: integer): boolean;
    function ListRegions: TStringList;
    function GetRegionbyIndex(aIndex: integer): boolean;
    // Branch Search Functions
    function GetBranchbyID(aID: integer): boolean;
    function GetBranchByName(aName: String): boolean;
    function GetBranchByCode(aCode: String): boolean;
    function ListBranch: TStringList;
    function GetBranchByIndex(aIndex: integer): boolean;
    // Council Search Functions
    function GetCouncilbyID(aID: integer): boolean;
    function GetCouncilByName(aName: String): boolean;
    function GetCouncilByCode(aCode: String): boolean;
    function ListCouncil: TStringList;
    function GetCouncilByIndex(aIndex: integer): boolean;
    // MedAssociation Search Functions
    function GetMedAssociationbyID(aID: integer): boolean;
    function GetMedAssociationByName(aName: String): boolean;
    function GetMedAssociationByCode(aCode: String): boolean;
    function ListMedAssociation: TStringList;
    function GetMedAssociationByIndex(aIndex: integer): boolean;
    // set from dataset & ToString******************************************************************
    procedure SetBranchFromDataset(dsBranch: TDataset; dsSpecialities: TDataset);
    procedure setMedAssociationFromDataset(dsMedAssociation: TDataset);
    procedure setCounciFromDataset(dsCouncil: TDataset);
    procedure SetRegionFromDataset(dsRegion, dsDistrict, dsOrganization: TDataset);
  end;

  THealthLocation = record
    Config: THealthConfig;
    /// <summary>
    /// Health Config contiene tutti i dati, liste che servono poi per
    /// gestire la 'location' Rappresenta quindi un reference Esterno
    /// </summary>
    Location: TRecordLocation;
    /// <summary>
    /// Organization definizione con codice indice e nome
    /// </summary>
    Organization: TOrganization;
    /// <summary>
    /// Branch definizione con codice indice e nome
    /// </summary>
    Branch: THealthBranch;
    /// <summary>
    /// Specialita definizione con codice indice e nome
    /// </summary>
    Speciality: TSpeciality;
    /// <summary>
    /// Association medicina scentifiche definizione con codice indice e nome
    /// </summary>
    Association: TMedAssociation;
    /// <summary>
    /// Regione di Appartenenza
    /// </summary>
    Region: TISORegion;
    District: TISODistrict;
    // -----------------------------------------------------------------
    Council: TCouncil;
    { un medico puo appartenere a pi ordini???? }
  public
    function ToString: string;
  end;

type
  TJanuaRecordService = record
    id: integer;
    item_id: integer;
    discipline_id: integer;
    title: string;
    description: string;
    discipline_name: string;
  private
    function GetAsJsonObject: TJsonObject;
  public
    function AsHtmlSelect: string;
    function ToString: string;
    // function AsJsonObject: TJsonObject;
    function AsJson: string;
    procedure LoadFromJson(aJson: string);
    procedure LoadFromJsonObject(aJsonObject: TJsonObject);
    procedure LoadFromDataset(aDataset: TDataset);
  public
    property AsJsonObject: TJsonObject read GetAsJsonObject write LoadFromJsonObject;
  end;

type
  TJanuaServices = record
    Services: array of TJanuaRecordService;
  public
    function AsHtml: string;
    function Count: integer;
    function ToString: string;
    function AsJsonObject: TJsonObject;
    function AsJson: string;
    procedure Add(aObject: TJsonObject); overload;
    procedure Add(aService: TJanuaRecordService); overload;
    procedure LoadFromJson(aJson: string);
    procedure LoadFromJsonObject(aJsonObject: TJsonObject);
    procedure LoadFromDataset(aDataset: TDataset);
  end;

type
  TJanuaITHealthPrescription = record
    id: int64;
    first_code: string;
    second_code: string;
    province: string;
    first_name: string;
    last_name: string;
    fiscal_code: string;
    exemption: boolean;
    exemption_code: string;
    exemption_income: boolean;
    Services: smallint;
    date: TDateTime;
    priority: string;
    booking_id: int64;
    checked: boolean;
    LastMessage: string;
    ErrorObject: string;
  public
    function AsHtml: string;
    function Count: integer;
    function ToString: string;
    function AsJsonObject: TJsonObject;
    function AsJson: string;
    function Check: boolean;
    function CheckFirst: boolean;
    procedure Clear;
    procedure LoadFromJson(aJson: string);
    procedure LoadFromJsonObject(aJsonObject: TJsonObject);
    procedure LoadFromDataset(aDataset: TDataset);
    procedure SaveToDataset(aDataset: TDataset);
{$IF Defined(WEBBROKER)}
    procedure LoadFromHttpParams(aRequest: TWebRequest);
{$ENDIF Defined(WEBBROKER)}
  end;

type
  TJanuaRecordDoctor = record
    Profile: TJanuaRecordUserProfile;
    HealthLocation: THealthLocation;
    regdate: TDate;
    regnumber: string;
    id: int64;
    role_id: smallint;
    Role: THealthRoles;
    // ----------------------------------------------
    isSet: boolean;
    photoURL: string;
    AssociationNumber: string;
    AssociationDate: TDateTime;
    // Councils : array of TCouncil;
    Log: string;
    HasErrrors: boolean;
    LastErrorMessage: string;
  public
    function ToString: string;
    procedure SetFromDataset(Dataset: TDataset);
    procedure SaveToDataset(Dataset: TDataset);
    procedure writelog(logstring: string);
  end;

type
  TJanuaHealthBookingRow = record
    booking_id: int64;
    booking64: string;
    Institute: TJanuaAnagraphRecord;
    booksince: TDate;
    bookuntil: TDate;
    notes: string;
    confirmed: boolean;
    opened: boolean;
    db_operator_id: integer;
    closed: boolean;
    closed_date: TDateTime;
    booked: boolean;
    booking_date: TDate;
    booking_hour: integer;
    booking_mins: integer;
    sent: boolean;
    sent_date: TDateTime;
    received: boolean;
    received_date: TDateTime;
    alarm_sent: boolean;
    alarm_read: boolean;
    distance: Double;
    cancelled: boolean;
    call_center_notes: string;
    insert_date: TDateTime;
    update_date: TDateTime;
    selected: boolean;
    ck_confirmed: boolean;
    insurance_confirmed: boolean;
    agreement_confirmed: boolean;
    ck_has_code: boolean;
    ck_code: string;
    ck_has_price: boolean;
    ck_price: Double;
    ck_fast: boolean;
    ck_different_address: boolean;
    ck_address: string;
  public
    function AsHtml(aTemplate: string): string;
    function AsJsonObject: TJsonObject;
    procedure LoadFromJsonObject(aJsonObject: TJsonObject);
    function AsJson: string;
    procedure Clear;
    procedure LoadFromDataset(dsDataset: TDataset; const CheckFields: boolean = False);
{$IF Defined(WEBBROKER)}
    procedure LoadFromHttpParams(aRequest: TWebRequest);
    procedure LoadFromPersonHttpParams(aRequest: TWebRequest);
{$ENDIF}
  end;

type
  TJanuaHealthBookingRows = record
    Items: array of TJanuaHealthBookingRow;
    SelectedItem: TJanuaHealthBookingRow;
    SecondLineChar: string;
    TemplateHeader: string;
    TemplateRow: string;
  private
    function GetAsJsonObject: TJsonObject;
  public
    function Count: integer;
    procedure Add(aAnagraph: TJanuaHealthBookingRow); overload;
    procedure Add(aObject: TJsonObject); overload;
    procedure Clear;
    function AsHtml(aTemplateHeader, aTemplateRow: string; bJavascript: boolean): string; overload;
    function AsHtml(bJavascript: boolean): string; overload;
    function AsJson: string;
    procedure LoadFromDataset(aDataset: TDataset);
    procedure LoadFromJson(aJson: string);
    procedure LoadFromJsonObject(aJson: TJsonObject);
  public
    property AsJsonObject: TJsonObject read GetAsJsonObject write LoadFromJsonObject;
{$IF Defined(WEBBROKER)}
  public
    procedure AddFromHttpParams(aRequest: TWebRequest);
    procedure Add(aRequest: TWebRequest); overload;
{$ENDIF}
  end;

type
  /// <summery> This is the header of a GET call from a web Service. Exposing all parameters
  // It's going to be replaced by a specialized set of TJanuaHttpParams/IJanuaParams </summary>
  TJanuaHealthSearchHeader = record
    ItemID: int64;
    Limit: integer;
    page: smallint;
    address: string;
    Coordinates: TJanuaRecordCoordinates;
  public
    function AsJsonObject: TJsonObject;
    function AsJson: string;
    procedure LoadFromJson(aJson: string);
    procedure LoadFromJsonObject(aJson: TJsonObject);
    procedure Clear;
  end;

type
  TJanuaHealthSearch = record
    id: int64;
    Header: TJanuaHealthSearchHeader;
    Search: string;
    Institutes: TJanuaAnagraphs;
  private
    function GetAsJsonObject: TJsonObject;
  public
    function Count: integer;
    function AsJson: string;
    procedure LoadFromJson(aJson: string);
    procedure LoadFromJsonObject(aJson: TJsonObject);
    procedure Clear;
  public
    property AsJsonObject: TJsonObject read GetAsJsonObject write LoadFromJsonObject;
  end;

type
  TJanuaHealthBooking = record
    id: int64;
    id64: string;
    Coordinates: TJanuaRecordCoordinates;
    checked: boolean;
    booked: boolean;
    cancelled: boolean;
    UserProfile: TJanuaRecordUserProfile;
    session_id: int64;
    session_key: string;
    db_user_id: integer;
    date: TDateTime;
    HasPrescription: boolean;
    HealthPrescription: TJanuaITHealthPrescription;
    Service: TJanuaRecordService;
    HasRelative: boolean;
    Relative: TJanuaAnagraphRecord;
    Rows: TJanuaHealthBookingRows;
    SelectedInstitute: TJanuaAnagraphRecord;
    Institutes: TJanuaAnagraphs;
    Book_Since: TDateTime;
    Book_Until: TDateTime;
    Insurance: string;
    Agreement: string;
    notes: string;
    Log: string;
    ErrorObject: string;
    ErrorMessage: string;
  private
    FSearch: TJanuaHealthSearch;
    // ContainerForm: Janua.Core.Metronics.TJanuaMetroContainer;
    // ContainerInstitutes: Janua.Core.Metronics.TJanuaMetroContainer;
    function GetAsJsonObject: TJsonObject;
    procedure SetSearch(const Value: TJanuaHealthSearch);
    function GetHeder: TJanuaHealthSearchHeader;
    procedure SetHeader(const Value: TJanuaHealthSearchHeader);
  public
    property Search: TJanuaHealthSearch read FSearch write SetSearch;
    property SearchHeader: TJanuaHealthSearchHeader read GetHeder write SetHeader;
  public
    function AsHtml(aTemplate: string): string;
    function CheckPerson(const aPerson: TJanuaAnagraphRecord; var aError: string): boolean;
    function Count: integer;
    function ToString: string;
    function AsJson: string;
    function Check: boolean;
    procedure Clear;
    procedure AddSearchSelectedInstitute;
    // adds the institute selected in Search Institutes
    procedure LoadFromJson(aJson: string);
    procedure LoadFromJsonObject(aJsonObject: TJsonObject);
    procedure LoadFromDataset(dsDataset, dsPrescription, dsRelative, dsInstitutes: TDataset);
  public
    function HtmlForm: string;
    function HtmlInstitutes: string;
    function JsForm: string;
    function JsInstitutes: string;
    function JsGmap: string;
  public
    property AsJsonObject: TJsonObject read GetAsJsonObject write LoadFromJsonObject;
{$IF Defined(WEBBROKER)}
  public
    function LoadFromHttpParams(aRequest: TWebRequest): boolean;
    procedure LoadRelative(aRequest: TWebRequest);
{$ENDIF}
  end;

type
  TJanuaHealthNotificationType = (jhnReceived, jhnChoice, jhnCancel, jhnMeeting);

const
  JanuaHealthNotificationNumber: array [0 .. 3] of TJanuaHealthNotificationType = (jhnReceived, jhnChoice,
    jhnCancel, jhnMeeting);

  JanuaHealthNotificationType: array [jhnReceived .. jhnMeeting] of integer = (0, 1, 2, 3);

type
  TJanuaHealthNotification = record
    id: int64;
    type_id: smallint;
    title: string;
    notification: string;
    bookingID: int64;
    UserID: integer;
    date: TDateTime;
    read: boolean;
    level: smallint;
    solved: boolean;
  private
    FNotificationType: TJanuaHealthNotificationType;
    function getId64: string;
    procedure setId64(const Value: string);
    function GetNotificationID: integer;
    procedure SetNotificationType(const Value: TJanuaHealthNotificationType);
    function GetAsJsonObject: TJsonObject;
  public
    procedure LoadFromJsonObject(const Value: TJsonObject);
    procedure LoadFromDataset(aDataset: TDataset);
    procedure SaveToDataset(aDataset: TDataset);
  public
    property id64: string read getId64 write setId64;
    property NotificationType: TJanuaHealthNotificationType read FNotificationType write SetNotificationType;
    property TypeID: integer read GetNotificationID;
    property AsJsonObject: TJsonObject read GetAsJsonObject write LoadFromJsonObject;
  end;

type
  TJanuaHealthNotifications = record
    Items: array of TJanuaHealthNotification;
    ItemIndex: integer;
  private
    FSelectedItem: TJanuaHealthNotification;
    function GetCount: integer;
    function GetAsJsonObject: TJsonObject;
    function AddItem: integer;
    function GetUnread: integer;
    procedure SetSelectedItem(const Value: TJanuaHealthNotification);
  public
    procedure Add(aObject: TJsonObject); overload;
    procedure Add(aDataset: TDataset); overload;
    procedure LoadFromJsonObject(const Value: TJsonObject);
    procedure LoadFromDataset(aDataset: TDataset);
    procedure SaveToDataset(aDataset: TDataset);
    procedure Clear;
    function FindItemByID(aID: int64): boolean;
    function AsHtml(aTemplate: string): string; overload;
    function AsHtml: string; overload;
  public
    property Unread: integer read GetUnread;
    property Count: integer read GetCount;
    property AsJsonObject: TJsonObject read GetAsJsonObject write LoadFromJsonObject;
    property SelectedItem: TJanuaHealthNotification read FSelectedItem write SetSelectedItem;
  end;

type
  TJanuaCustomServerHealth = class(TJanuaCustomServer)
  private
    FNumArticles: smallint;
    // ********** String Lists ..............................................
    FListaAsl: TStrings;
    FListaRegioni: TStrings;
    FListaBranche: TStrings;
    FListaSpecialita: TStrings;
    FListCouncils: TStrings;
    // ***********************************************************************
    FMailSender: IJanuaMailSender;
    FFoundDoctor: string;
    FDoctorPhoto: TJanuaBlob;
    procedure SetFoundDoctor(const Value: string);
    procedure SetDoctorPhoto(const Value: TJanuaBlob);
    procedure setBooking(const Value: TJanuaHealthBooking);
    procedure setPrescription(const Value: TJanuaITHealthPrescription);
    procedure SetMessageBuilder(const Value: IJanuaMailMessageBuilder);
  protected
    // ********** External Classes ..............................................
    FJanuaPublic: TJanuaCustomServerJPublic;
    FJanuaSystem: TJanuaCustomServerSystem;
    FMessageBuilder: IJanuaMailMessageBuilder;
    // ***********************************************************************
    FDoctor: TJanuaRecordDoctor;
    FHealthConfig: THealthConfig;
    procedure SetJanuaPublic(const Value: TJanuaCustomServerJPublic);
    function CheckUp: boolean; override;
    procedure SetisActive(const Value: boolean); Virtual;
    procedure SetNumArticles(const Value: smallint);
    procedure SetDoctor(const Value: Janua.Core.Health.TJanuaRecordDoctor);
    procedure SetListaSpecialita(const Value: TStrings);
    procedure SetListaAsl(const Value: TStrings);
    procedure SetListaRegioni(const Value: TStrings);
    procedure SetListaBranche(const Value: TStrings);
    procedure SetListCouncils(const Value: TStrings);
    procedure SetHealthConfig(const Value: THealthConfig);
    function UploadConfig: boolean; virtual;
    procedure SetMailSender(const Value: IJanuaMailSender);
    procedure SendMailNewUser(const aDoctor: TJanuaRecordUserProfile);
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure UpdateDoctor(aDoctor: TJanuaRecordDoctor); virtual;
    function CheckDoctorExists(aDoctor: TJanuaRecordDoctor): boolean; Virtual;
    procedure sendDoctorConfirmationMail; virtual;
    procedure TestMailDoctor;
    function SetNewDoctor(aDoctor: TJanuaRecordDoctor): boolean; Virtual;
  published
    property JanuaPublic: TJanuaCustomServerJPublic read FJanuaPublic write SetJanuaPublic;
    property NumArticles: smallint read FNumArticles write SetNumArticles;
    property Doctor: TJanuaRecordDoctor read FDoctor write SetDoctor;
    property ListaSpecialita: TStrings read FListaSpecialita write SetListaSpecialita;
    property ListaAsl: TStrings read FListaAsl write SetListaAsl;
    property ListaRegioni: TStrings read FListaRegioni write SetListaRegioni;
    property ListaBranche: TStrings read FListaBranche write SetListaBranche;
    property ListCouncils: TStrings read FListCouncils write SetListCouncils;
    property MailSender: IJanuaMailSender read FMailSender write SetMailSender;
    property HealthConfig: THealthConfig read FHealthConfig write SetHealthConfig;
    property FoundDoctor: string read FFoundDoctor write SetFoundDoctor;
    property DoctorPhoto: TJanuaBlob read FDoctorPhoto write SetDoctorPhoto;
    property MessageBuilder: IJanuaMailMessageBuilder read FMessageBuilder write SetMessageBuilder;
  end;

type
  TJanuaAnagDoctor = class(TJanuaProfile)
  private
    FAnagGroup: THealthRoles;
    // Record e Struct usate dalla Classe TJanuaRecordDoctor ..........
    FDoctor: TJanuaRecordDoctor;
    FServerHealth: TJanuaCustomServerHealth;
    FProfile: THealthProfileForms;
    FFoundDoctor: string;

    { List of all the Organizations ................................................................ }
    FListOrganizations: TStrings;
    FListAssociations: TStrings;
    FListRegions: TStrings;
    FListCouncils: TStrings;
    FListBranches: TStrings;
    FListDistricts: TStrings;
    FListSpecialities: TStrings;
    { .............................................................................................. }

    // Doctor Settings and Records Procedures .....................................
    procedure SetHealthLocation(const Value: THealthLocation);
    procedure SetDoctor(const Value: TJanuaRecordDoctor);
    procedure LoadConfig;
    procedure SetServerHealth(const Value: TJanuaCustomServerHealth);
    procedure SetProfile(const Value: THealthProfileForms);
    procedure SetFoundDoctor(const Value: string);

    // Doctor Fields Procedures ...................................................
    // Get
    function GetAssociationDate: TDate;
    function GetAssociationNumber: string;
    function Getregdate: TDateTime;
    function Getregnumber: string;
    // Set
    procedure Setregdate(const Value: TDateTime);
    procedure Setregnumber(const Value: string);
    procedure SetAnagGroup(const Value: THealthRoles);
    procedure setAssociationDate(const Value: TDate);
    procedure setAssociationNumber(const Value: string);

    // Councils specific procedures ................................................
    // Get
    function GetCouncil: string;
    function GetCouncilID: integer;
    function GetCouncilCod: string;
    function GetCouncilIndex: integer;
    // Set
    procedure SetCouncil(const Value: string);
    procedure SetCouncilCod(const Value: string);
    procedure SetCouncilID(const Value: integer);
    procedure SetCouncilIndex(const Value: integer);
    // Update
    procedure UpdateCouncil;
    procedure NotifyCouncil;

    // Association specific procedures .................................................
    // Get
    function GetAssociation: string;
    function GetAssociationCode: string;
    function GetAssociationIndex: integer;
    function GetAssociationID: integer;
    // Set
    procedure SetAssociationCode(const Value: string);
    procedure SetAssociation(const Value: string);
    procedure SetAssociationIndex(const Value: integer);
    procedure SetAssociationID(const Value: integer);
    // Update
    procedure UpdateAssociation;
    procedure NotifyAssociation;

    // Region specific procedures .................................................
    // Get
    function GetRegionCode: string;
    function GetRegionID: smallint;
    function GetRegionName: string;
    function GetRegionIndex: smallint;
    // Set
    procedure SetRegionCode(const Value: string);
    procedure SetRegionID(const Value: smallint);
    procedure SetRegionName(const Value: string);
    procedure SetRegionIndex(const Value: smallint);
    // Update
    procedure NotifyRegion;
    procedure ResetHealthRegion;
    procedure UpdateHealthRegion;

    // Region->District specific procedures .......................................
    // Get
    function GetDistrictID: integer;
    function GetDistrictName: string;
    function GetDistrictCode: string;
    function GetDistrictIndex: integer;
    // Set
    procedure SetDistrictID(const Value: integer);
    procedure SetDistrictName(const Value: string);
    procedure SetDistrictCode(const Value: string);
    procedure SetDistrictIndex(const Value: integer);
    // Update
    procedure ResetHealthDistrict;
    procedure UpdateHealthDistrict;

    // Region->Organization specific procedures ...................................
    // Get
    function GetOrganizationIndex: integer;
    function GetOrganization: string;
    function GetOrganizationID: integer;
    function GetOrganizationCode: string;
    // Set
    procedure SetOrganization(const Value: string);
    procedure SetOrganizationCode(const Value: string);
    procedure SetOrganizationIndex(const Value: integer);
    procedure SetOrganizationID(const Value: integer);
    // Update
    procedure NotifyOrganization;
    procedure ResetHealthOrganization;
    procedure UpdateOrganization;

    // branch specific procedures .................................................
    // Get
    function GetBranch: string;
    function GetBranchCode: string;
    function GetBranchID: integer;
    function GetBranchIndex: integer;
    // Set
    procedure SetBranch(const Value: string);
    procedure SetBranchCode(const Value: string);
    procedure SetBranchIndex(const Value: integer);
    procedure SetBranchID(const Value: integer);
    // Update
    procedure ResetBranch;
    procedure NotifyBranch;
    procedure UpdateBranch;

    // branch -> Speciality Specific Procedures ....................................
    // Get
    function GetSpeciality: string;
    function GetSpecialityCode: string;
    function GetSpecialityID: integer;
    function GetSpecialityIndex: integer;
    // Set
    procedure SetSpecialityIndex(const Value: integer);
    procedure SetSpecialityCode(const Value: string);
    procedure SetSpeciality(const Value: string);
    procedure SetSpecialityID(const Value: integer);
    // Update
    procedure ResetSpeciality;
    procedure UpdateSpeciality;
    procedure NotifySpeciality;
    procedure NotifyDistrict;
  strict protected
    function InternalActivate: boolean; override;
  protected
    procedure NotifyUserProfile; override;
  public
    procedure SetAnagraphByDataset(Dataset: TDataset); override;
    procedure SetHealthConfig(Value: THealthConfig);
    constructor Create(AOwner: TComponent); override;
    // il metodo sovrascritto ereditando il metodo da Anagraph
    Destructor Destroy; override;
    // il metodo sovrascritto ereditando il metodo da Anagraph
    procedure Save; override;
    procedure SendConfirmationMail; override;
    function CheckDoctorExists: boolean;
    function CheckNewUser: boolean;
    function AddNewDoctor: boolean;
    // this functions checks if New Doctor Exists (his number and registration mail are in DB?)...
  published
    property regdate: TDateTime read Getregdate write Setregdate;
    property regnumber: string read Getregnumber write Setregnumber;
    property AnagGroup: THealthRoles read FAnagGroup write SetAnagGroup;
    { Council Provinciale  definizione con codice indice e nome }
    property Council: string read GetCouncil write SetCouncil;
    property CouncilID: integer read GetCouncilID write SetCouncilID;
    property CouncilCod: string read GetCouncilCod write SetCouncilCod;
    property CouncilIndex: integer read GetCouncilIndex write SetCouncilIndex;
    property ListCouncils: TStrings read FListCouncils;
    // ************************* impostazioni della regione organizzazione e distretto appartenenza *
    property RegionName: string read GetRegionName write SetRegionName;
    property RegionID: smallint read GetRegionID write SetRegionID;
    property RegionCode: string read GetRegionCode write SetRegionCode;
    property RegionIndex: smallint read GetRegionIndex write SetRegionIndex;
    property ListRegions: TStrings read FListRegions;
    { District definizione distretto in regione sanitaria con id e nome ........................... }
    property DistrictName: string read GetDistrictName write SetDistrictName;
    property DistrictIndex: integer read GetDistrictIndex write SetDistrictIndex;
    property DistrictCode: string read GetDistrictCode write SetDistrictCode;
    property DistrictID: integer read GetDistrictID write SetDistrictID;
    property ListDistricts: TStrings read FListDistricts;
    { Organization definizione con codice indice e nome }
    property Organization: string read GetOrganization write SetOrganization;
    property OrganizationID: integer read GetOrganizationID write SetOrganizationID;
    property OrganizationCode: string read GetOrganizationCode write SetOrganizationCode;
    property OrganizationIndex: integer read GetOrganizationIndex write SetOrganizationIndex;
    property ListOrganizations: TStrings read FListOrganizations;
    // **********************************************************************************************
    { Branch definizione con codice indice e nome }
    property Branch: string read GetBranch write SetBranch;
    property BranchID: integer read GetBranchID write SetBranchID;
    property BranchCode: string read GetBranchCode write SetBranchCode;
    property BranchIndex: integer read GetBranchIndex write SetBranchIndex;
    property ListBranches: TStrings read FListBranches;
    { speciality definizione con codice indice e nome }
    property Speciality: string read GetSpeciality write SetSpeciality;
    property SpecialityID: integer read GetSpecialityID write SetSpecialityID;
    property SpecialityCode: string read GetSpecialityCode write SetSpecialityCode;
    property SpecialityIndex: integer read GetSpecialityIndex write SetSpecialityIndex;
    property ListSpecialities: TStrings read FListSpecialities;
    // **********************************************************************************************
    { Association medicina scentifiche definizione con codice indice e nome }
    property Association: string read GetAssociation write SetAssociation;
    property AssociationDate: TDate read GetAssociationDate write setAssociationDate;
    property AssociationNumber: string read GetAssociationNumber write setAssociationNumber;
    property AssociationID: integer read GetAssociationID write SetAssociationID;
    property AssociationCode: string read GetAssociationCode write SetAssociationCode;
    property AssociationIndex: integer read GetAssociationIndex write SetAssociationIndex;
    property ListAssociations: TStrings read FListAssociations;
    // **********************************************************************************************
    property JanuaServerHealth: TJanuaCustomServerHealth read FServerHealth write SetServerHealth;
    property Doctor: TJanuaRecordDoctor read FDoctor write SetDoctor;
    property HealthConfig: THealthConfig read FDoctor.HealthLocation.Config write SetHealthConfig;
    property HealthLocation: THealthLocation read FDoctor.HealthLocation write SetHealthLocation;
    property Profile: THealthProfileForms read FProfile write SetProfile;
    property FoundDoctor: string read FFoundDoctor write SetFoundDoctor;
  end;

type
  TJanuaCustomDoctor = class(TJanuaCustomProfile)
    // componente che si occupa del binding visuale del componente 'Doctor' eredita da User Custom
  private
    FedRegDate: Janua.Controls.intf.IJanuaDateEdit;
    FedRegNumber: Janua.Controls.intf.IJanuaEdit;
    FlbRegNumber: Janua.Controls.intf.IJanuaLabel;
    FlbRegDate: Janua.Controls.intf.IJanuaLabel;
    FlbCouncil: Janua.Controls.intf.IJanuaLabel;
    FcboCouncil: Janua.Controls.intf.IJanuaCombo;

    function GetedRegDate: TComponent;
    function GetedRegNumber: TComponent;
    function GetlbRegNumber: TComponent;
    function GetlbRegDate: TComponent;
    function GetlbCouncil: TComponent;
    function GetcboCouncil: TComponent;

    procedure SetedRegDate(const Value: TComponent);
    procedure SetedRegNumber(const Value: TComponent);
    procedure SetlbRegDate(const Value: TComponent);
    procedure SetlbRegNumber(const Value: TComponent);
    procedure SetcboCouncil(const Value: TComponent);
    procedure SetlbCouncil(const Value: TComponent);
  protected
    FAnagDoctor: TJanuaAnagDoctor;
    procedure SetJanuaProfile(const Value: IUserProfile); override;
    procedure SetOwner; override;
    { Assegnazione Componenti }
    // function InternalCreateComboComponent: TJanuaComboComponent; virtual; abstract;
    procedure SetedRegDateInt(const Value: TComponent);
    procedure SetedRegNumberInt(const Value: TComponent);
    procedure SetlbRegDateInt(const Value: TComponent);
    procedure SetlbRegNumberInt(const Value: TComponent);
    procedure SetcboCouncilInt(const Value: TComponent);
    procedure SetlbCouncilInt(const Value: TComponent);
  public
  published
    property edRegDate: TComponent read GetedRegDate write SetedRegDate;
    property lbRegDate: TComponent read GetlbRegDate write SetlbRegDate;
    property edRegNumber: TComponent read GetedRegNumber write SetedRegNumber;
    property lbRegNumber: TComponent read GetlbRegNumber write SetlbRegNumber;
    property cboCouncil: TComponent read GetcboCouncil write SetcboCouncil;
    property lbCouncil: TComponent read GetlbCouncil write SetlbCouncil;
  end;

type
  TJanuaCustomHealthBooking = class(TJanuaCustomDBServer)
    // Modello Bases di Health Booking Server e Client Insieme...............................
  private
    FBooking: TJanuaHealthBooking;
    FJanuaServerSystem: TJanuaCustomServerSystem;
    FRecordServices: TJanuaServices;
    FInstitutesGMapsRowTemplate: string;
    FInstitutesHtmlHeadTemplate: string;
    FInstitutesHtmlGMaps: string;
    FInstitutesGMapsHeadTemplate: string;
    FInstitutes: TJanuaAnagraphs;
    FInstitutesHtmlRowTemplate: string;
    FInstitutesHtmlList: string;
    Fselect2: integer;
    Fselect3: integer;
    Fselect1: integer;
    FHtmlServices: string;
    FJsonServices: string;
    // Janua Json DAC Datasets ..........................................................
    FTableInstitutes: TJanuaJsonDacDataset;
    // TVirtual Table auto creata ..............
    FmdsPrescription: TJanuaJsonDacDataset;
    FmdsBooking: TJanuaJsonDacDataset;
    FmdsBookingInstitutes: TJanuaJsonDacDataset;
    FmdsRelative: TJanuaJsonDacDataset;
    FmdsServices: TJanuaJsonDacDataset;
    FmdsInstitutes: TJanuaJsonDacDataset;
    FVqrySearchServices: TJanuaJsonDacDataset;
    FGMapsServices: string;
    FInstitutesJson: string;
    FSearchID: int64;
    FBookingInstitutes: TJanuaAnagraphs;
    FInstitueID: integer;
    // FBooking64: string;
    FNetHTTPClient: TNetHTTPClient;
    FHealthNotifications: TJanuaHealthNotifications;
    FmdsNotifications: TJanuaJsonDacDataset;
    FMeetings: TJanuaHealthBookingRows;
    FmdsMeetings: TJanuaJsonDacDataset;
    procedure SetJanuaServerSystem(const Value: TJanuaCustomServerSystem);
    procedure SetRecordServices(const Value: TJanuaServices);
    procedure SetBookingID(const Value: int64);
    procedure SetInstitutes(const Value: TJanuaAnagraphs);
    procedure SetInstitutesGMapsHeadTemplate(const Value: string);
    procedure SetInstitutesGMapsRowTemplate(const Value: string);
    procedure SetInstitutesHtmlGMaps(const Value: string);
    procedure SetInstitutesHtmlHeadTemplate(const Value: string);
    procedure SetInstitutesHtmlList(const Value: string);
    procedure SetInstitutesHtmlRowTemplate(const Value: string);
    procedure SetSearchAddress(const Value: string);
    procedure SetSearchItemID(const Value: int64);
    procedure SetTableInstitutes(const Value: TJanuaJsonDacDataset);
    function getLatitude: Double;
    function getLongitude: Double;
    procedure setLatitude(const Value: Double);
    procedure setLongitude(const Value: Double);
    procedure Setselect1(const Value: integer);
    procedure Setselect2(const Value: integer);
    procedure Setselect3(const Value: integer);
    procedure SetHtmlServices(const Value: string);
    procedure SetmdsServices(const Value: TJanuaJsonDacDataset);
    procedure SetmdsInstitutes(const Value: TJanuaJsonDacDataset);
    procedure SetJsonServices(const Value: string);
    function getPrescription: TJanuaITHealthPrescription;
    function getBooking: TJanuaHealthBooking;
    function getBookingRelative: TJanuaAnagraphRecord;
    procedure LoadPrescription;
    // aBooking può anche NON contenere il valore Booking id in quel caso la funzione ritorna impostato il booking; +  -
    function LoadBooking(aBookingID: int64): boolean; overload;
    function LoadBooking: boolean; overload;

    // Mem Datasets or Datasets ...............................................................
    procedure setBooking(const Value: TJanuaHealthBooking);
    procedure SetmdsBooking(const Value: TJanuaJsonDacDataset);
    procedure SetmdsPrescription(const Value: TJanuaJsonDacDataset);
    procedure SetmdsRelative(const Value: TJanuaJsonDacDataset);
    procedure SetmdsBookingInstitutes(const Value: TJanuaJsonDacDataset);
    procedure SetVqrySearchServices(const Value: TJanuaJsonDacDataset);
    // Virtual Table Dataset

    procedure setPrescription(const Value: TJanuaITHealthPrescription);
    procedure SetGMapsServices(const Value: string);
    procedure SetInstitutesJson(const Value: string);
    procedure SetSearchID(const Value: int64);
    procedure SetBookingInstitutes(const Value: TJanuaAnagraphs);
    procedure setBookingRelative(const Value: TJanuaAnagraphRecord);
    function InternalInstitutesGMaps(aInstitutes: TJanuaAnagraphs): string;
    function InternalInstitutesHtml(aInstitutes: TJanuaAnagraphs): string;
    procedure AssignBookingDataSources;
    function GetSearchItemID: int64;
    procedure SetBooking64(const Value: string);
    function GetBooking64: string;
    procedure SetInstitueID(const Value: integer);
    procedure SetInstitute64(const Value: string);
    function GetInstitute64: string;
    procedure SetJanuaServices(const Value: TJanuaServices);
    procedure SetNetHTTPClient(const Value: TNetHTTPClient);
    procedure SetHealthNotifications(const Value: TJanuaHealthNotifications);
    procedure SetmdsNotifications(const Value: TJanuaJsonDacDataset);
    procedure SetMeetings(const Value: TJanuaHealthBookingRows);
    procedure SetmdsMeetings(const Value: TJanuaJsonDacDataset);

  protected
    // Search Parameters ..............................................................................................
    FSearchLimit: integer;
    FSearchPage: integer;
    FSearchItemID: int64;
    // Notifications ..................................................................................................
    FNotificationID: int64;
    // ................................................................................................................
    FSearchServices: string;
    FServices: string;
    RS: TJanuaServices;
    // servono per costruire la Home Page devono essere caricati all'avvio della Home
    FBookingID: int64;
    function InternalHealthNotifications(const aLimit: integer = 0): integer; virtual; abstract;
    function InternalSetUPServices: boolean; virtual; abstract;
    function InternalSetServices: boolean; virtual; abstract;
    function InternalCheckOut: boolean; virtual; abstract;
    function InternalBookingInstitutes: TDataset; virtual; abstract;
    // specifiche 2017-0009 Institute Confirmation.
    function InternalInstituteConfirmation: boolean; virtual; abstract;
    function InternalSearchInstitutes: boolean; virtual; abstract;
    function InternalAssignSessionBooking: boolean; virtual; abstract;
    function InternalDoBooking: int64; virtual; abstract;
    function InternalSearchServices: boolean; virtual; abstract;
    function InternalGetMeetings: integer; virtual; abstract;
    function InternalNotificationRead: boolean; virtual; abstract;
    procedure GenerateInstitutesHtml;
    procedure GenerateInstitutesGMaps;
    procedure GenerateInstitutesJson;
    function getGMapCenter: string;
    function InternalOpenBooking: boolean; virtual; abstract;
    function InternalFinalisation(aBooking: TJanuaHealthBooking): boolean; Virtual; Abstract;
    function InternalActivate: boolean; override;
  public
    // ********************************** Mailing Procedures ****************************************
    function SendMailBooking(vMailMessage: TJanuaMailMessage; vBookingID: int64): boolean;
    procedure PrepareMailBooking(aTemplate: string);
  public
    function Finalisation(aBooking: TJanuaHealthBooking): boolean;
    function AssignSessionBooking: boolean;
    /// <summary> la funzione Internal Set Services imposta la tabella ricerca testuale dei servizi.
    // la tabella ritorna sia i campi ServiceID che item_id; oggi solo Service_ID serve
    // come chiave di ricerca.</summary>
    procedure SetUPServices;
    /// <summary> procedura che crea l'elenco dei servizi in base alla sessione. </summary>
    function SearchServices(aSearch: string; const bGenerateJson: boolean = true): integer;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function DoBooking: int64; overload;
    function DoBooking(aInstitutes: TJanuaAnagraphs): int64; overload;
    procedure PrepareHtmlInstitutes;
    function getHtmlBookingInstitutes: boolean;
    function OpenBooking(aBookingID: int64): boolean; overload;
    function OpenBooking(aBooking64: string): boolean; overload;
    function OpenBooking: boolean; overload;
    // procedure per la gestione delle notifiche Notifications produce una string Json per il web
    function Notifications: string;
    // Health Notifications in base alle impostazioni di UserProfile e Sessione recupera le notifiche attive
    function GetHealthNotifications(const aLimit: integer = 0): integer;
    function CheckOut(aBookingID: int64): boolean; overload;
    function CheckOut: boolean; overload;
    function SearchInstitutes(iItemID, iLimit: integer; aAddress: string;
      aCoordinates: TJanuaRecordCoordinates; const iPage: integer = 1): integer; overload;
    function SearchInstitutes(aHeader: TJanuaHealthSearchHeader): integer; overload;
    // specifiche 2017-0009 Institute Confirmation.
    function InstituteConfirmation: boolean;
    function getServices64: string;
    function GetMeetings: integer;
    function SetNotificationRead(aNotificationID: int64): boolean;

  public
    // ****************** Janua Records *******************************************************************************
    property RecordServices: TJanuaServices read FRecordServices write SetRecordServices;
    property Meetings: TJanuaHealthBookingRows read FMeetings write SetMeetings;
    property Institutes: TJanuaAnagraphs read FInstitutes write SetInstitutes;
    property JanuaServices: TJanuaServices Read RS write SetJanuaServices;
    property Booking: TJanuaHealthBooking read getBooking write setBooking;
    property HealthNotifications: TJanuaHealthNotifications read FHealthNotifications
      write SetHealthNotifications;
    property Prescription: TJanuaITHealthPrescription read getPrescription write setPrescription;
    property BookingRelative: TJanuaAnagraphRecord read getBookingRelative write setBookingRelative;
    property BookingInstitutes: TJanuaAnagraphs read FBookingInstitutes write SetBookingInstitutes;
    function CheckPrescription: boolean;
    function CheckRelative: boolean;
    function CheckBooking: boolean;
    property Institute64: string read GetInstitute64 write SetInstitute64;
    property InstituteID: integer read FInstitueID write SetInstitueID;

    // ******************* on the fly Booking Institutes *******************************************
    function BookingInstitutesHtml: string;
    function BookingInstitutesJson: string;
    function BookingInstitutesGMaps: string;

    property IsPublic: boolean read getIsPublic;

  published
    // ******************* Datasets ***********************************************************************************
    property mdsServices: TJanuaJsonDacDataset read FmdsServices write SetmdsServices;
    property mdsInstitutes: TJanuaJsonDacDataset read FmdsInstitutes write SetmdsInstitutes;
    property TableInstitutes: TJanuaJsonDacDataset read FTableInstitutes write SetTableInstitutes;
    // Public Datasets Virtual Tables ********************************************************************
    property VqrySearchServices: TJanuaJsonDacDataset read FVqrySearchServices write SetVqrySearchServices;
    // Booking .............................................................................
    property mdsBooking: TJanuaJsonDacDataset read FmdsBooking write SetmdsBooking;
    property mdsPrescription: TJanuaJsonDacDataset read FmdsPrescription write SetmdsPrescription;
    property mdsRelative: TJanuaJsonDacDataset read FmdsRelative write SetmdsRelative;
    property mdsBookingInstitutes: TJanuaJsonDacDataset read FmdsBookingInstitutes
      write SetmdsBookingInstitutes;
    property mdsNotifications: TJanuaJsonDacDataset read FmdsNotifications write SetmdsNotifications;
    property mdsMeetings: TJanuaJsonDacDataset read FmdsMeetings write SetmdsMeetings;
  published
    property JsonServices: string read FJsonServices write SetJsonServices;
    property GMapsServices: string read FGMapsServices write SetGMapsServices;
    property GMapCenter: string read getGMapCenter;
    property latitude: Double read getLatitude write setLatitude;
    property longitude: Double read getLongitude write setLongitude;
    property select1: integer read Fselect1 write Setselect1;
    property select2: integer read Fselect2 write Setselect2;
    property select3: integer read Fselect3 write Setselect3;
    property HtmlServices: string read FHtmlServices write SetHtmlServices;
    property JanuaServerSystem: TJanuaCustomServerSystem read FJanuaServerSystem write SetJanuaServerSystem;
    property bookingID: int64 read FBookingID write SetBookingID;
    property booking64: string read GetBooking64 write SetBooking64;
    property SearchID: int64 read FSearchID write SetSearchID;
    property SearchItemID: int64 read GetSearchItemID write SetSearchItemID;
    property InstitutesHtmlList: string read FInstitutesHtmlList write SetInstitutesHtmlList;
    { TODO : Creare una Classe o un Record Anagrafica che crei una lista html su template }
    property InstitutesJson: string read FInstitutesJson write SetInstitutesJson;
    property InstitutesHtmlGMaps: string read FInstitutesHtmlGMaps write SetInstitutesHtmlGMaps;
    property InstitutesHtmlHeadTemplate: string read FInstitutesHtmlHeadTemplate
      write SetInstitutesHtmlHeadTemplate;
    property InstitutesHtmlRowTemplate: string read FInstitutesHtmlRowTemplate
      write SetInstitutesHtmlRowTemplate;
    property InstitutesGMapsHeadTemplate: string read FInstitutesGMapsHeadTemplate
      write SetInstitutesGMapsHeadTemplate;
    property InstitutesGMapsRowTemplate: string read FInstitutesGMapsRowTemplate
      write SetInstitutesGMapsRowTemplate;
    property Services: string read FServices;
    property Services64: string read getServices64;
    property NetHTTPClient: TNetHTTPClient read FNetHTTPClient write SetNetHTTPClient;
  end;

type
  TJanuaCustomServerHealthBooking = class(TJanuaCustomHealthBooking)

  end;

type
  TJanuaClientHealthBooking = class(TJanuaCustomHealthBooking)
  private
  protected
    function InternalSetUPServices: boolean; override;
    function InternalBookingInstitutes: TDataset; override;
    // function InternalBookingSelectedInstitutes(aInstitutes:  array[0..2] of integer): boolean;
    function InternalSearchInstitutes: boolean; override;
    function InternalInstituteConfirmation: boolean; override;
    procedure CreateDataModule; override;
    procedure DestroyDataModule(Force: boolean = False); override;
    function InternalAssignSessionBooking: boolean; override;
    function InternalDoBooking: int64; override;
    function InternalSearchServices: boolean; override;
    function InternalCheckSessionKey: boolean; override;
    procedure SetUserSessionProfile; override;
    function InternalOpenBooking: boolean; override;
    function InternalFinalisation(aBooking: TJanuaHealthBooking): boolean; Override;
    function InternalCheckOut: boolean; override;
    function InternalActivate: boolean; override;
  public
    destructor Destroy; override;
    function SearchPostalCode(aCode: string): string; override;
    // needs to be overridden by the descendandt classes
  end;

type
  TJanuaTemplateHealth = class(TJanuaTemplateRepository)
  private
    FMessageBuilder: IJanuaMailMessageBuilder;
    procedure SetJanuaHealthBooking(const Value: TJanuaCustomHealthBooking);
    procedure PreparePageContent;
    procedure SetMessageBuilder(const Value: IJanuaMailMessageBuilder);
  public
    procedure ShowBooking(HS: TJanuaCustomHealthBooking); overload;
    procedure PrepareFinalisation;
    procedure PreparePageBooking;
    procedure ShowBooking; overload;
    function PreparePage(const aPage: string): boolean; override;
    function PreparePage501: boolean; override; // prepara la pagina 501;
    procedure PreparePageBookingCompletion;
    // prepara e produce la pagina di completamento della procedura booking
    procedure PrepareBookingSearch;
    // inizia la grafia della pagina di Booking con mappa e select istituti.
    procedure PrepareHomeSearch;
    // inizia la home page per ora prendo come buona la pagina Hiteshi1
    procedure PreparePageLogin(aFrame: boolean = False); override;
    // inizia la home page per ora prendo come buona la pagina Hiteshi1
  public // Mail Templates procedures
    procedure PrepareMailBookingConfirmation;
    procedure PrepareMailMeetingReminder;
    procedure PrepareMailBookingChoice;
    property MessageBuilder: IJanuaMailMessageBuilder read FMessageBuilder write SetMessageBuilder;
  public // terminate procedures tutte le procedure di fine dei modelli di pagine presenti nel modello Health
    procedure TerminatePageContent; override;
    // funzione che termina le impostazioni della pagina con tutti i campi
    procedure TerminatePageBookingCompletion;
    // termina la pagina di inserimento dati utente (compilerebbe tutti i campi)
    procedure TerminatePageBooking;
    procedure TerminateHomeSearch;
    // home Page terminate ........................................................
    procedure TerminatePageConfirmation;
    procedure TerminatePageDashboard;
    procedure TerminatePageFinalisation;
    procedure TerminatePageProfile;
    procedure TerminatePageLogin; override;
    procedure TerminateFinalisation;
    // procedura che termina la produzione dela pagina Finalisation
  protected
    FJanuaHealthBooking: TJanuaCustomHealthBooking;
  published
    property JanuaHealthBooking: TJanuaCustomHealthBooking read FJanuaHealthBooking
      write SetJanuaHealthBooking;
  end;

type
  TJanuaHealthWebController = class(TJanuaCustomWebController)
  private
    FHtmlInsitutes: string;
    FTemplateHealth: TJanuaTemplateHealth;
    FCoordinates: TJanuaRecordCoordinates;
    Fservice_id: integer;
    Faddress: string;
    FInstitute3: integer;
    FInstitue2: integer;
    FInstitute1: integer;
    procedure SetHtmlInsitutes(const Value: string);
    procedure SeTJanuaClientHealthBooking(const Value: TJanuaCustomHealthBooking);
    procedure SetTemplateHealth(const Value: TJanuaTemplateHealth);
    procedure Setaddress(const Value: string);
    procedure SetCoordinates(const Value: TJanuaRecordCoordinates);
    procedure SetInstitue2(const Value: integer);
    procedure SetInstitute1(const Value: integer);
    procedure SetInstitute3(const Value: integer);
    procedure Setsearch_id(const Value: int64);
    procedure Setservice_id(const Value: int64);
    procedure Setbooking_id(const Value: int64);
  private
    Fsearch_page: integer;
    function Getbooking_id: int64;
    function Getsearch_id: int64;
    function GetBooking64: string;
    function GetInstituteID: integer;
    function GetInstitute64: string;
    procedure setBooking(const Value: TJanuaHealthBooking);
    procedure SetBooking64(const Value: string);
    procedure Setinstitute_id(const Value: integer);
    procedure SetInstitute64(const Value: string);
    procedure SetAnagraphID64(const Value: string);
    procedure SetBookingID64(const Value: string);
    procedure Setsearch_page(const Value: integer);
  protected
    FJanuaServerHealthBooking: TJanuaCustomHealthBooking;
    function getHtmlInsitutes: string;
    function getService_ID: int64;
    function getBooking: TJanuaHealthBooking;
    function GetBookingID64: string;
    function GetAnagraphID64: string;
  public
    function ActionRestNotifications: boolean; override;
    constructor Create(AOwner: TComponent); override;
    procedure TemplateHead(aUseFrame: boolean = False); override;
    function AssignSessionBooking: boolean;
    function DoBooking: int64;
    procedure PrepareHtmlInstitutes;
    procedure SetBookingID(aBookingID: integer);
  public // Action Procedures from the Controller ..................................................
    /// <summary> Receives a Booking Record and finalize booking procedure returning result page  </summary>
    /// <param name="aBooking">Booking Record to be checked and finalized</param>
    function ActionFinalisation(aBooking: TJanuaHealthBooking): boolean;
    /// <summary> Overrides original 404 page function.  </summary>
    function Action404(aFrame: boolean = False): boolean; override;
    /// <summary>  funzione REST-Json di Ricerca del Booking </summary>
    function ActionRestHealthSearch: boolean;
    /// <summary>  funzione ricerca istituti su booking id </summary>
    function ActionHealthRestInstitutes: boolean;
    function ActionPage(aPage: string): boolean; override;
    function ActionBooking: boolean;
    function ActionBookingSearch: boolean;
    function ActionHomeSearch: boolean; // Crea la Home Page.
    function ActionDashboard(notification_id: int64): boolean;
    // riporta la Dashboard dell'utente con tutte le comunicazioni.
    function ActionRestFinalisation: boolean;
    // REST Booking Finalisation Service ..................
    function ActionLogin(error: boolean = False; ErrorMessage: string = ''): boolean; override;
    // procedura della pagina di Login al sistema Dico33
    function ActionCheckOut: boolean;
    // procedura di CheckOut che termina la prenotazione utente.
    function ActionChoice: boolean;
    // procedura di Scelta dell'istituto da Mail che termina con riassunto istituto.
    function ActionConfirmation: boolean;
    // procedura che genera la pagina di Conferma Dati di Dico33
    function ActionDoLogin: boolean; override;
    // procedura che esegue il Login e successivamente invia alla pagina scelta
    function ActionDoRegister: boolean; override;
    function ActionBookingCompletion: boolean; // deprecated old confirmation
    function ActionSearchServices(vSearch: string): boolean;
    function ActionSearchDACServices(vSearch: string): boolean;
    // procedura che esegue la registrazione e successivamente invia alla pagina scelta
  public
    property HtmlInstitutes: string read getHtmlInsitutes write SetHtmlInsitutes;
    property Booking: TJanuaHealthBooking read getBooking write setBooking;
    property bookingID: int64 read Getbooking_id write Setbooking_id;
    property BookingID64: string read GetBookingID64 write SetBookingID64;
    property AnagraphID64: string read GetAnagraphID64 write SetAnagraphID64;
    property booking_id: int64 read Getbooking_id write Setbooking_id;
    property service_id: int64 read getService_ID write Setservice_id;
    property search_id: int64 read Getsearch_id write Setsearch_id;
    property search_page: integer read Fsearch_page write Setsearch_page;
    property Institute64: string read GetInstitute64 write SetInstitute64;
    property booking64: string read GetBooking64 write SetBooking64;
    property institute_ID: integer read GetInstituteID write Setinstitute_id;
    property Institute1: integer read FInstitute1 write SetInstitute1;
    property Institute2: integer read FInstitue2 write SetInstitue2;
    property Institute3: integer read FInstitute3 write SetInstitute3;
    property address: string read Faddress write Setaddress;
    property Coordinates: TJanuaRecordCoordinates read FCoordinates write SetCoordinates;
  published
    property JanuaServerHealthBooking: TJanuaCustomHealthBooking read FJanuaServerHealthBooking
      write SeTJanuaClientHealthBooking;
    // Questo il codice HTML della lista degli Istituti
    property JanuaTemplateHealth: TJanuaTemplateHealth read FTemplateHealth write SetTemplateHealth;
  end;

type
  TJanuaWebSessionHealth = class(TJanuaWebSession)
  private
{$IF Defined(WEBBROKER)}
    procedure WebResponseController(Response: TWebResponse); override;
    procedure JsonResponseController(Response: TWebResponse); override;
    procedure WebResponse501(Response: TWebResponse); override;
    procedure WebResponse404(Response: TWebResponse); override;
{$ENDIF Defined(WEBBROKER)}
  protected
    FJanuaHealthController: TJanuaHealthWebController;
    procedure SetJanuaHealthWebController(const Value: TJanuaHealthWebController);
  public
    Constructor Create(AOwner: TComponent); override;
    Destructor Destroy; override;
    function Messages: string; override;

{$IFDEF WEBBROKER}
  public
    procedure GetSessionRequest(const aRequest: TWebRequest); override;
    procedure SetCookies(aValid: integer; var aResponse: TWebResponse; isJson: boolean = False); override;
    procedure WritePage(var aResponse: TWebResponse); override;
    // Confirmation Page Action
    //
    function CheckPublicAction(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
      var Handled: boolean; vToPage: TJanuaWebPage): boolean;

    procedure ActionConfirmation(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
      var Handled: boolean; InternalCall: boolean = False);

    procedure ActionCheckOut(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
      var Handled: boolean; InternalCall: boolean = False);

    procedure ActionDashboard(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
      var Handled: boolean; InternalCall: boolean = False);

    procedure ActionChoice(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
      var Handled: boolean; InternalCall: boolean = False);

    procedure RestNotificationsAction(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
      var Handled: boolean); override;

    procedure RestHealthBookingAction(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
      var Handled: boolean);

    // procedura di ricerca degli istituti ritorna la lista json degli istituti di una ricerca
    procedure ActionHealthRestInstitutes(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
      var Handled: boolean);

    procedure RestHealthSearchAction(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
      var Handled: boolean);

    procedure ActionFinalisation(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
      var Handled: boolean; InternalCall: boolean = False);

    procedure ActionPage(Sender: TObject; Request: TWebRequest; Response: TWebResponse; var Handled: boolean;
      InternalCall: boolean = False); override;

    procedure ActionRestFinalisation(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
      var Handled: boolean; InternalCall: boolean = False);
    //
    procedure Action404(Sender: TObject; Request: TWebRequest; Response: TWebResponse; var Handled: boolean;
      InternalCall: boolean = False);
    procedure ActionDoLogout(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
      var Handled: boolean; InternalCall: boolean = False);

    // /rest/health/search ... procedura di ricerca (rest/json) di istituti in base ad una prestazione..................
    procedure ActionRestHealthSearch(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
      var Handled: boolean; InternalCall: boolean = False);
    procedure ActionLogin(Sender: TObject; Request: TWebRequest; Response: TWebResponse; var Handled: boolean;
      InternalCall: boolean = False; aFrame: boolean = False); override;
    procedure ActionDoLogin(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
      var Handled: boolean; aFrame: boolean = False); override;
    procedure ActionDoRegister(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
      var Handled: boolean);
    procedure ActionBookingSearch(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
      var Handled: boolean);
    procedure ActionHomeDefault(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
      var Handled: boolean);
    procedure HealthServicesAction(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
      var Handled: boolean);
    procedure HealthServicesDACAction(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
      var Handled: boolean);
{$ENDIF}
  published
    property JanuaHealthController: TJanuaHealthWebController read FJanuaHealthController
      write SetJanuaHealthWebController;
  end;

type
  TJanuaCustomHealthPrescriptionForm = class(TJanuaCoreComponent)
  private
    FJanuaServerHealthBooking: TJanuaCustomHealthBooking;
    procedure SetHealthPrescription(const Value: TJanuaITHealthPrescription);
    procedure SeTJanuaClientHealthBooking(const Value: TJanuaCustomHealthBooking);
  protected
    // Edit Controllers .....................................................
    Ffirst_code: TJanuaCustomEditController;
    Fsecond_code: TJanuaCustomEditController;
    Fprovince: TJanuaCustomEditController;
    Ffirst_name: TJanuaCustomEditController;
    Flast_name: TJanuaCustomEditController;
    Ffiscal_code: TJanuaCustomEditController;
    Fexemption_code: TJanuaCustomEditController;
    Fpriority: TJanuaCustomEditController;

    Fid: int64;
    Fexemption: boolean;
    Fexemption_income: boolean;
    FServiceCount: smallint;
    Fdate: TDateTime;
    Fbooking_id: int64;

    FHealthPrescription: TJanuaITHealthPrescription;
  public
    // la funzione Check esegue la verifica di tutti i dati contenuti nel Form
    // di fatto invia all'oggetto Booking tutti i dati e fa fare il lavoro 'sporco' a lui.
    function Check: boolean;
    // Questa procedura Carica tutti i dati Dal Server dentro al controller può essere usata
    // Sullevento Refresh show del sistema.
    procedure LoadFromServer;
    // Save salva tutti i dati della procedura sul server centrale.........................
    // Cioè legge tutti i dati dai componenti grafici li inserisce nel record e se collegato lo invia
    // al Server...........................................................................
    procedure SaveToServer;
    // legge tutti i dati dai controlli e li registra in locale su HealthPrescription
    procedure StoreLocally;
    // scrive tutti i dati sui controlli leggendoli in locale da HealthPrescription
    procedure SetLocally;

  public
    property HealthPrescription: TJanuaITHealthPrescription read FHealthPrescription
      write SetHealthPrescription;
  published
    property JanuaServerHealthBooking: TJanuaCustomHealthBooking read FJanuaServerHealthBooking
      write SeTJanuaClientHealthBooking;
  end;

type
  TJanuaCustomHealthClient = class(TJanuaCustomSystemClient)
  private
    FInstanceOwner: boolean;
  private
    procedure setBooking(const Value: TJanuaHealthBooking);
    function GetRelative: TJanuaAnagraphRecord;
    procedure SetRelative(const Value: TJanuaAnagraphRecord);
    function GetCoordinates: TJanuaRecordCoordinates;
    procedure SetCoordinates(const Value: TJanuaRecordCoordinates);
    procedure SetNotifications(const Value: TJanuaHealthNotifications);
    function getPrescription: TJanuaITHealthPrescription;
    procedure setPrescription(const Value: TJanuaITHealthPrescription);
    function GetSearch: TJanuaHealthSearch;
    procedure SetSearch(const Value: TJanuaHealthSearch);
    procedure SetMeetings(const Value: TJanuaHealthBookingRows);
  protected
    FNotifications: TJanuaHealthNotifications;
    FBooking: TJanuaHealthBooking;
    FMeetings: TJanuaHealthBookingRows;
  public
    procedure BookingUndoLocalCache; virtual;
    // elimina la cache locale del Booking - non agisce sul server centrale.
    function GetMeetings: integer; virtual; abstract;
    function BookingUndoAll(const aBookingID: int64): boolean; virtual; abstract;
    function BookingChoice(const aBookingID: int64; const aInstituteID: integer): boolean; virtual; abstract;
    function BookingFinalize: boolean; virtual; abstract;
    function getBooking(aBookingID: int64): boolean; virtual; abstract;
    function AssignSessionBooking: boolean; virtual; abstract;
    function DoBooking: int64; overload; virtual; abstract;
    function DoBooking(aInstitutes: TJanuaAnagraphs): int64; overload; virtual; abstract;
    function SearchServices(const aSessionKey: string; const aSearch: string): TJsonObject; virtual; abstract;
    function SearchServicesJson(aSessionKey: string; aSearch: string; const ARequestFilter: string = '')
      : TJsonObject; virtual; abstract;
    function SearchInstitutes(aSessionKey: string; iItemID: integer; iLimit: integer; aAddress: string;
      Coordinates: TJanuaRecordCoordinates; iPage: smallint = 1): TJanuaHealthSearch; overload;
      virtual; abstract;
    function SearchInstitutes(aSessionKey: string; aSearchHeader: TJanuaHealthSearchHeader)
      : TJanuaHealthSearch; overload; virtual; abstract;
    function NotificationRead(aNotificationID: int64): boolean; virtual; abstract;
  public
    Constructor Create; override; // FInstanceOwner := True;
    Destructor Destroy; override;
    procedure NewBooking;
    procedure RandomInstitues(N: integer);

  public
    function CreateNewUser(aUser: TJanuaRecordUserProfile): boolean; override;
  public
    property InstanceOwner: boolean read FInstanceOwner write FInstanceOwner;
    property Booking: TJanuaHealthBooking read FBooking write setBooking;
    property Prescription: TJanuaITHealthPrescription read getPrescription write setPrescription;
    property Relative: TJanuaAnagraphRecord read GetRelative write SetRelative;
    property Coordinates: TJanuaRecordCoordinates read GetCoordinates write SetCoordinates;
    property Notifications: TJanuaHealthNotifications read FNotifications write SetNotifications;
    property Meetings: TJanuaHealthBookingRows read FMeetings write SetMeetings;
    property Search: TJanuaHealthSearch read GetSearch write SetSearch;
  end;

function SearchIndexDataset(aOrigin, aDestination: TFdMemTable; aSearch: string): integer;

implementation

uses Janua.Application.Framework, Janua.Http.Types, System.IOUtils, Janua.Core.Functions, Janua.Core.JSON;

function SearchIndexDataset(aOrigin, aDestination: TFdMemTable; aSearch: string): integer;
var
  Temp: TFdMemTable;
  aPrestazione: String;
begin
  aSearch := LowerCase(aSearch);
  aOrigin.Open;
  Result := aOrigin.RecordCount;

  if (Length(aSearch) >= 2) and Assigned(aDestination) and Assigned(aOrigin) and (Result > 0) then
  begin
    Temp := TFdMemTable.Create(nil);
    try
      Temp.Assign(aOrigin);
      Temp.Filter := 'prestazione like ' + QuotedStr('%' + aSearch + '%');
      Temp.FilterOptions := [TFilterOption.foCaseInsensitive];
      Temp.Filtered := true;
      Temp.Open;
      Temp.First;
      while not Temp.Eof do
      begin
        Temp.Edit;
        aPrestazione := LowerCase(Temp.FieldByName('prestazione').AsWideString);
        Temp.FieldByName('pos').AsInteger := Pos((aSearch), aPrestazione);
        Temp.Post;
        Temp.Next;
      end;
      if aDestination.Active then
        aDestination.Close;
      aDestination.Assign(Temp);
      Result := Temp.RecordCount;
    finally
      Temp.Free;
    end;
    { Use IndexFieldNames as an alternative method of specifying the current index to use for a dataset.

      Specify the name of each field on which to index the dataset, separating names with semicolons. Field names order is significant. Optionally specify the postfix for any of fields in the form field[:[D][A][N]], where:

      D--use descending sorting on this field.
      A--use ascending sorting on this field.
      N--use case-insensitive sorting on this field.
    }
    aDestination.IndexFieldNames := 'pos;prestazione:N';
    aDestination.Open;
    Result := aDestination.RecordCount;
  end;
  // prestazione like '%test%'
end;

{ TJanuaCustomDoctor }

function TJanuaCustomDoctor.GetcboCouncil: TComponent;
begin
  Result := FcboCouncil.Component
end;

function TJanuaCustomDoctor.GetedRegDate: TComponent;
begin
  Result := FedRegDate.Component
end;

function TJanuaCustomDoctor.GetedRegNumber: TComponent;
begin
  Result := FedRegNumber.Component
end;

function TJanuaCustomDoctor.GetlbCouncil: TComponent;
begin
  Result := FlbCouncil.Component
end;

function TJanuaCustomDoctor.GetlbRegDate: TComponent;
begin
  Result := FlbRegDate.Component
end;

function TJanuaCustomDoctor.GetlbRegNumber: TComponent;
begin
  Result := FlbRegNumber.Component
end;

procedure TJanuaCustomDoctor.SetcboCouncil(const Value: TComponent);
begin
  Janua.Core.Functions.ExecProc(
    procedure
    begin
      FcboCouncil := FJanuaControlBuilder.SetComboControl(FcboCouncil, Value, 'cboCouncil',
        'Ordine dei Medici');
      // Bind Name To Field .....  Caption := FUserProfile.Address.DistrictID.ToString;
      // ha ancora senso gstire il Region ID nell'address?????
      // FUserProfile.Bind(FUserProfile.Address_street);
    end, 'SetcboCouncilInt', self);
  // FController.SetComboBox(Value, Combo, FcboCouncil, FAnagDoctor.ListCouncils);
end;

procedure TJanuaCustomDoctor.SetcboCouncilInt(const Value: TComponent);
begin

end;

procedure TJanuaCustomDoctor.SetedRegDate(const Value: TComponent);
// Properties: TJanuaEditProperties = (Name: 'edRegDate'; TextHint: 'Data Registrazione';);
begin
  Janua.Core.Functions.ExecProc(
    procedure
    begin
      FedRegDate := FJanuaControlBuilder.SetDateControl(FedRegDate, Value, 'edRegDate', 'Data Iscrizione');
      // Bind Name To Field .....  Caption := FUserProfile.Address.DistrictID.ToString;
      // ha ancora senso gstire il Region ID nell'address?????
      // FUserProfile.Bind(FUserProfile.Address_street);
    end, 'SetedRegDate', self);
  // FController.SetComboBox(Value, Combo, FcboCouncil, FAnagDoctor.ListCouncils);
end;

procedure TJanuaCustomDoctor.SetedRegDateInt(const Value: TComponent);
begin

end;

procedure TJanuaCustomDoctor.SetedRegNumber(const Value: TComponent);
// Properties: TJanuaEditProperties = (Name: 'edRegNumber'; TextHint: 'Numero Registrazione';);
begin
  Janua.Core.Functions.ExecProc(
    procedure
    begin
      FedRegNumber := FJanuaControlBuilder.SetEditControl(FedRegNumber, Value, 'edRegNumber',
        'Numero Iscrizione');
      // Bind Name To Field .....  Caption := FUserProfile.Address.DistrictID.ToString;
      // ha ancora senso gstire il Region ID nell'address?????
      // FUserProfile.Bind(FUserProfile.Address_street);
    end, 'SetedRegNumber', self);
  // FController.SetComboBox(Value, Combo, FcboCouncil, FAnagDoctor.ListCouncils);
end;

procedure TJanuaCustomDoctor.SetedRegNumberInt(const Value: TComponent);
begin

end;

procedure TJanuaCustomDoctor.SetJanuaProfile(const Value: IUserProfile);
begin
  inherited;
  { TODO -cHealth : Gestire IDoctorProfile come estensione di IUserProfile }
  {
    if Assigned(Value) and (Value is TJanuaAnagDoctor) then
    FAnagDoctor := (Value as TJanuaAnagDoctor)
    else if Assigned(Value) then
    RaiseException('TJanuaCustomDoctor.SetjanuaProfile  is not of type TJanuaAnagDoctor')
    else
    FAnagDoctor := nil;
  }
end;

procedure TJanuaCustomDoctor.SetlbCouncil(const Value: TComponent);
// Properties: TJanuaLabelProperties = (Name: 'lbCouncil'; Caption: 'Ordine dei Medici';);
begin
  Janua.Core.Functions.ExecProc(
    procedure
    begin
      FlbCouncil := FJanuaControlBuilder.SetLabelControl(FlbCouncil, Value, 'lbCouncil', 'Ordine dei Medici');
      // Bind Name To Field .....  Caption := FUserProfile.Address.DistrictID.ToString;
      // ha ancora senso gstire il Region ID nell'address?????
      // FUserProfile.Bind(FUserProfile.Address_street);
    end, 'SetlbCouncil', self);
  // FController.SetComboBox(Value, Combo, FcboCouncil, FAnagDoctor.ListCouncils);
end;

procedure TJanuaCustomDoctor.SetlbCouncilInt(const Value: TComponent);
begin

end;

procedure TJanuaCustomDoctor.SetlbRegDate(const Value: TComponent);
// Properties: TJanuaLabelProperties = (Name: 'lbRegDate'; Caption: 'Data Iscrizione';);
begin
  Janua.Core.Functions.ExecProc(
    procedure
    begin
      FlbRegDate := FJanuaControlBuilder.SetLabelControl(FlbRegDate, Value, 'lbRegDate', 'Data Iscrizione');
      // Bind Name To Field .....  Caption := FUserProfile.Address.DistrictID.ToString;
      // ha ancora senso gstire il Region ID nell'address?????
      // FUserProfile.Bind(FUserProfile.Address_street);
    end, 'SetlbRegDate', self);
  // FController.SetComboBox(Value, Combo, FcboCouncil, FAnagDoctor.ListCouncils);
end;

procedure TJanuaCustomDoctor.SetlbRegDateInt(const Value: TComponent);
begin

end;

procedure TJanuaCustomDoctor.SetlbRegNumber(const Value: TComponent);
// Properties: TJanuaLabelProperties = (Name: 'lbRegNumber'; Caption: 'Numero Iscrizione';);
begin
  Janua.Core.Functions.ExecProc(
    procedure
    begin
      FlbRegNumber := FJanuaControlBuilder.SetLabelControl(FlbRegNumber, Value, 'lbRegNumber',
        'Numero Iscrizione');
      // Bind Name To Field .....  Caption := FUserProfile.Address.DistrictID.ToString;
      // ha ancora senso gstire il Region ID nell'address?????
      // FUserProfile.Bind(FUserProfile.Address_street);
    end, 'SetlbRegNumber', self);
  // FController.SetComboBox(Value, Combo, FcboCouncil, FAnagDoctor.ListCouncils);
end;

procedure TJanuaCustomDoctor.SetlbRegNumberInt(const Value: TComponent);
begin

end;

procedure TJanuaCustomDoctor.SetOwner;
var
  i: integer;
begin
  inherited;
  if (Owner is TComponent) and Assigned(FUserProfile) and (FUserProfile is TJanuaAnagDoctor) then
  begin
    writelog('SetOwner', False);
    writelog(('Inserito Form: ' + Owner.name + ', Componenti: ' + TComponent(Owner)
      .ComponentCount.ToString()));
    for i := 0 to Owner.ComponentCount - 1 do
    begin
      if TComponent(Owner).Components[i].name = 'edRegDate' then
        SetedRegDate((TComponent(Owner).Components[i]))

      else if TComponent(Owner).Components[i].name = 'edRegNumber' then
        SetedRegNumber((TComponent(Owner).Components[i]))

      else if TComponent(Owner).Components[i].name = 'lbRegDate' then
        SetlbRegDate((TComponent(Owner).Components[i]))

      else if TComponent(Owner).Components[i].name = 'lbRegNumber' then
        SetlbRegNumber((TComponent(Owner).Components[i]))

      else if TComponent(Owner).Components[i].name = 'lbRegNumber' then
        SetlbRegNumber((TComponent(Owner).Components[i]))
    end;
  end;
end;

{ TBranch }

function TBranch.GetspecialityByCode(aCode: String): boolean;
var
  aRecord: TSpeciality;
begin
  Result := False;
  for aRecord in specialities do
    if UpperCase(aRecord.code) = UpperCase(aCode) then
    begin
      Result := true;
      SelectedSpeciality := aRecord;
      Exit;
    end;
end;

function TBranch.GetspecialitybyID(aID: integer): boolean;
var
  aRecord: TSpeciality;
begin
  Result := False;
  for aRecord in specialities do
    if aRecord.id = aID then
    begin
      Result := true;
      SelectedSpeciality := aRecord;
      Exit;
    end;
end;

function TBranch.GetspecialityByIndex(aIndex: integer): boolean;
var
  aRecord: TSpeciality;
begin
  Result := False;
  for aRecord in specialities do
    if aRecord.index = aIndex then
    begin
      Result := true;
      SelectedSpeciality := aRecord;
      Exit;
    end;

end;

function TBranch.GetspecialityByName(aName: String): boolean;
var
  aRecord: TSpeciality;
begin
  Result := False;
  for aRecord in specialities do
    if UpperCase(aRecord.name) = UpperCase(aName) then
    begin
      Result := true;
      SelectedSpeciality := aRecord;
      Exit;
    end;

end;

function TBranch.Listspeciality: TStringList;
var
  i: integer;
  aRecord: TSpeciality;
begin
  Result := TStringList.Create;
  for aRecord in specialities do
    Result.Add(aRecord.name);
  Result.Sort;
  for i := 0 to SizeOf(specialities) - 1 do
    specialities[i].index := Result.IndexOf(specialities[i].name);
end;

procedure TBranch.Reset;
begin

  SetLength(specialities, 0);
  // SelectedSpeciality: TSpeciality;
  // specialities: array of TSpeciality; // specialit� che ne fanno parte
end;

function TBranch.ToString(full: boolean = true): string;
var
  i: integer;
begin
  Result := Branch.ToString(full);
  if full then
    for i := 0 to Length(specialities) - 1 do
    begin
      specialities[i].indent := lpad(' ', indent, ' ') + '   ';
      Result := Result + sLineBreak + specialities[i].ToString;
    end;

end;

{ TSpeciality }

function TSpeciality.Compare(a: TSpeciality): boolean;
begin
  Result := (code = a.code) and (name = a.name) and (id = a.id)
end;

procedure TSpeciality.Reset;
begin
  id := 0;
  index := -1;
  code := '';
  name := '';
  indent := '   ';
end;

function TSpeciality.ToString(full: boolean = true): string;
begin
  Result := indent + 'id: ' + IntToStr(id) + sLineBreak + indent + 'code: ' + code + sLineBreak + indent +
    'name: ' + name + sLineBreak + indent + 'index: ' + index.ToString + sLineBreak;
end;

{ TJanuaAnagDoctor }

function TJanuaAnagDoctor.AddNewDoctor: boolean;
begin
  Result := False;
  if FJanuaSystem.CheckNewUser(FDoctor.Profile) then
  begin
    if (FDoctor.Profile.User.Email = '') and Janua.Core.Functions.IsMail(FDoctor.Profile.User.Username) then
      FDoctor.Profile.User.Email := FDoctor.Profile.User.Username;

    if FDoctor.Profile.PublicEmail = '' then
      FDoctor.Profile.PublicEmail := FDoctor.Profile.User.Email;

    if not FServerHealth.CheckDoctorExists(FDoctor) then
    begin
      // JanuaSystem.CreateNewUser(aDoctor.Profile);
      // la funzione CreateNewUser viene chiamata ingternamente a SetNewDoctor
      if FServerHealth.SetNewDoctor(FDoctor) then
      begin
        WriteMessage('Inserimento Medico riuscita e mail inviata a: ' + FDoctor.Profile.PublicEmail);
        Result := true;
      end
      else
        WriteMessage('Errore di inserimento del nuovo medico');
    end
    else
    begin
      WriteMessage('Inserimento Medico non riuscito esiste gi un iscritto all''ordine di: ' +
        FDoctor.HealthLocation.Council.name + ' con tessera: ' + FDoctor.regnumber);
    end;
  end
  else
  begin
    WriteMessage('Inserimento Medico non riuscita mail gi Registrata: ' + FDoctor.Profile.PublicEmail);
  end;
end;

procedure TJanuaAnagDoctor.NotifyDistrict;
begin
  (*
    BindManager.Notify('District');
    BindManager.Notify('DistrictID');
    BindManager.Notify('DistrictCode');
    BindManager.Notify('DistrictIndex');
  *)
end;

procedure TJanuaAnagDoctor.NotifyAssociation;
begin
  (*
    BindManager.Notify('Association');
    BindManager.Notify('AssociationCode');
    BindManager.Notify('AssociationID');
    BindManager.Notify('AssociationIndex');
  *)
end;

procedure TJanuaAnagDoctor.NotifyCouncil;
begin
  BindManager.Notify('Council');
  BindManager.Notify('CouncilCode');
  BindManager.Notify('CouncilID');
  BindManager.Notify('CouncilIndex');
end;

procedure TJanuaAnagDoctor.UpdateOrganization;
begin
  try
    with FDoctor.HealthLocation do
    begin
      if not Organization.Compare(Config.SelectedRegion.SelectedOrganization) then
        Organization := Config.SelectedRegion.SelectedOrganization;
    end;
    NotifyOrganization;
  except
    on e: Exception do
      WriteError('TJanuaAnagDoctor.UpdateOrganization', e);
  end;
end;

procedure TJanuaAnagDoctor.NotifyRegion;
begin
  BindManager.Notify('Region');
  BindManager.Notify('RegionID');
  BindManager.Notify('RegionCode');
  BindManager.Notify('RegionIndex');
  if Assigned(FListOrganizations) then
    BindManager.Notify('ListOrganizations');
  if Assigned(FListDistricts) then
    BindManager.Notify('ListDistricts');
end;

procedure TJanuaAnagDoctor.NotifyBranch;
begin
  BindManager.Notify('Branch');
  BindManager.Notify('BranchID');
  BindManager.Notify('BranchIndex');
  BindManager.Notify('BranchCode');
  if Assigned(FListBranches) then
    BindManager.Notify('ListBranches');
end;

procedure TJanuaAnagDoctor.NotifySpeciality;
begin
  BindManager.Notify('Speciality');
  BindManager.Notify('SpecialityCode');
  BindManager.Notify('SpecialityIndex');
  BindManager.Notify('SpecialityID');
  if Assigned(FListSpecialities) then
    BindManager.Notify('ListSpecialities');
end;

procedure TJanuaAnagDoctor.NotifyUserProfile;
begin
  inherited;
  FDoctor.Profile := FJanuaUserProfile;
end;

procedure TJanuaAnagDoctor.UpdateBranch;
begin
  with FDoctor.HealthLocation do
  begin
    if not Branch.Compare(Config.SelectedBranch.Branch) then
      try
        Branch := Config.SelectedBranch.Branch;
        Modified := true;
        NotifyBranch;
        ResetSpeciality;
        // se modifico il Branch devo modificare le Specialit di conseguenza...
      except
        on e: Exception do
          WriteError('TJanuaAnagDoctor.UpdateBranch', e);
      end;
  end;
end;

procedure TJanuaAnagDoctor.NotifyOrganization;
begin
  Modified := true;
  BindManager.Notify('Organization');
  BindManager.Notify('OrganizationID');
  BindManager.Notify('OrganizationCode');
  BindManager.Notify('OrganizationIndex');
end;

procedure TJanuaAnagDoctor.UpdateAssociation;
begin
  FDoctor.HealthLocation.Association := FDoctor.HealthLocation.Config.SelectedMedAssociation;
  Modified := true;
  NotifyAssociation;
end;

function TJanuaAnagDoctor.CheckDoctorExists: boolean;
begin
  Result := JanuaServerHealth.CheckDoctorExists(FDoctor)
  // chiama una funzione Virtual che poi viene 'finalizzata' nel discendente in Postgres o Remote DB
end;

function TJanuaAnagDoctor.CheckNewUser: boolean;
begin
  FDoctor.Profile := FJanuaUserProfile;

  if not(FJanuaUserProfile.User.Username > '') then
  begin
    FLastMessage := 'Attenzione non inserito nome utente..........';
    Exit(False);
  end;

  if not(FJanuaUserProfile.User.Password > '') then
  begin
    FLastMessage := 'Attenzione non inserita password ..........';
    Exit(False);
  end;

  Result := FJanuaSystem.CheckNewUser(FJanuaUserProfile);

  if not Result then
    FLastMessage := 'Esiste gi un utente registrato con questa mail, inserimento non riuscito....';

end;

constructor TJanuaAnagDoctor.Create(AOwner: TComponent);
begin
  inherited;
  FListOrganizations := TStringList.Create;
  FListAssociations := TStringList.Create;
  FListRegions := TStringList.Create;
  FListCouncils := TStringList.Create;
  FListBranches := TStringList.Create;
  FListDistricts := TStringList.Create;
  FListSpecialities := TStringList.Create;
end;

destructor TJanuaAnagDoctor.Destroy;
begin
  FListOrganizations.Free;
  FListAssociations.Free;
  FListRegions.Free;
  FListCouncils.Free;
  FListBranches.Free;
  FListDistricts.Free;
  FListSpecialities.Free;
  inherited;
end;

function TJanuaAnagDoctor.GetAssociation: string;
begin
  Result := FDoctor.HealthLocation.Association.name
end;

function TJanuaAnagDoctor.GetAssociationDate: TDate;
begin
  Result := FDoctor.AssociationDate;
end;

function TJanuaAnagDoctor.GetAssociationNumber: string;
begin
  Result := FDoctor.AssociationNumber;
end;

function TJanuaAnagDoctor.GetBranch: string;
begin
  Result := FDoctor.HealthLocation.Branch.name
end;

function TJanuaAnagDoctor.GetBranchCode: string;
begin
  Result := FDoctor.HealthLocation.Branch.code
end;

function TJanuaAnagDoctor.GetBranchID: integer;
begin
  Result := FDoctor.HealthLocation.Branch.id
end;

function TJanuaAnagDoctor.GetBranchIndex: integer;
begin
  Result := FListBranches.IndexOf(FDoctor.HealthLocation.Branch.name)
end;

function TJanuaAnagDoctor.GetAssociationCode: string;
begin
  Result := FDoctor.HealthLocation.Association.code
end;

function TJanuaAnagDoctor.GetOrganizationCode: string;
begin
  Result := FDoctor.HealthLocation.Organization.code
end;

function TJanuaAnagDoctor.GetCouncil: string;
begin
  Result := FDoctor.HealthLocation.Council.name;
end;

function TJanuaAnagDoctor.GetCouncilCod: string;
begin
  Result := FDoctor.HealthLocation.Council.code;
end;

function TJanuaAnagDoctor.GetCouncilID: integer;
begin
  Result := FDoctor.HealthLocation.Council.id;
end;

function TJanuaAnagDoctor.GetCouncilIndex: integer;
begin
  Result := FListCouncils.IndexOf(FDoctor.HealthLocation.Council.name)
end;

function TJanuaAnagDoctor.GetDistrictCode: string;
begin
  Result := FDoctor.HealthLocation.District.code;
end;

function TJanuaAnagDoctor.GetDistrictID: integer;
begin
  Result := FDoctor.HealthLocation.District.id
end;

function TJanuaAnagDoctor.GetDistrictIndex: integer;
begin
  Result := FListDistricts.IndexOf(FDoctor.HealthLocation.District.name);
end;

function TJanuaAnagDoctor.GetDistrictName: string;
begin
  Result := FDoctor.HealthLocation.District.name
end;

function TJanuaAnagDoctor.GetAssociationID: integer;
begin
  Result := FDoctor.HealthLocation.Association.id
end;

function TJanuaAnagDoctor.GetAssociationIndex: integer;
begin
  Result := FListAssociations.IndexOf(FDoctor.HealthLocation.Association.name)
end;

function TJanuaAnagDoctor.GetOrganizationIndex: integer;
begin
  Result := FListOrganizations.IndexOf(FDoctor.HealthLocation.Organization.name)
end;

function TJanuaAnagDoctor.GetOrganization: string;
begin
  Result := FDoctor.HealthLocation.Organization.name
end;

function TJanuaAnagDoctor.GetOrganizationID: integer;
begin
  Result := FDoctor.HealthLocation.Organization.id
end;

function TJanuaAnagDoctor.Getregdate: TDateTime;
begin
  Result := FDoctor.regdate
end;

function TJanuaAnagDoctor.GetRegionCode: string;
begin
  Result := FDoctor.HealthLocation.Region.code
end;

function TJanuaAnagDoctor.GetRegionID: smallint;
begin
  Result := FDoctor.HealthLocation.Region.id
end;

function TJanuaAnagDoctor.GetRegionIndex: smallint;
begin
  Result := FListRegions.IndexOf(FDoctor.HealthLocation.Region.name)
end;

function TJanuaAnagDoctor.GetRegionName: string;
begin
  Result := FDoctor.HealthLocation.Region.name
end;

function TJanuaAnagDoctor.Getregnumber: string;
begin
  Result := FDoctor.regnumber
end;

function TJanuaAnagDoctor.GetSpeciality: string;
begin
  Result := FDoctor.HealthLocation.Speciality.name
end;

function TJanuaAnagDoctor.GetSpecialityCode: string;
begin
  Result := FDoctor.HealthLocation.Speciality.code
end;

function TJanuaAnagDoctor.GetSpecialityID: integer;
begin
  Result := FDoctor.HealthLocation.Speciality.id
end;

function TJanuaAnagDoctor.GetSpecialityIndex: integer;
begin
  Result := FDoctor.HealthLocation.Speciality.index
end;

function TJanuaAnagDoctor.InternalActivate: boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited and Assigned(FServerHealth);
      if Result and not FServerHealth.Active then
        FServerHealth.Activate;
      if Result then
      begin
        if UserType in [TJanuaUserType.jutRegisteredUser] then
        begin
          SetDoctor(FServerHealth.Doctor);
          writelog('TJanuaAnagDoctor.Activate: Profile Loaded from Login');
          writelog(FDoctor.ToString);
        end
        else
        begin
          writelog('TJanuaAnagDoctor.Activate: New Doctor');
          FDoctor.HealthLocation.Config := FServerHealth.Doctor.HealthLocation.Config;
          LoadConfig;
        end;
      end;
    except
      on e: Exception do
        RaiseException('InternalActivate', e, self);
    end;

end;

procedure TJanuaAnagDoctor.LoadConfig;
begin
  try
    with FDoctor.HealthLocation do
    begin
      FListCouncils.Assign(Config.ListCouncil);
      writelog('TJanuaAnagDoctor.SetDoctor List Councils:' + FListCouncils.Count.ToString());

      FListRegions.Assign(Config.ListRegions);
      writelog('TJanuaAnagDoctor.SetDoctor ListRegions:' + FListRegions.Count.ToString());

      if FDoctor.HealthLocation.Region.id > 0 then
      begin
        if Config.GetRegionByID(FDoctor.HealthLocation.Region.id) then
        begin
          FListOrganizations.Assign(Config.SelectedRegion.ListOrganizations);
          writelog('TJanuaAnagDoctor.SetDoctor ListOrganizations:' + FListOrganizations.Count.ToString());
        end;
      end;

      FListAssociations.Assign(Config.ListMedAssociation);
      writelog('TJanuaAnagDoctor.SetDoctor ListAssociations:' + FListAssociations.Count.ToString());

      FListBranches.Assign(Config.ListBranch);
      writelog('TJanuaAnagDoctor.SetDoctor ListBranch:' + FListBranches.Count.ToString());

      if FDoctor.HealthLocation.Branch.id > 0 then
      begin
        FDoctor.HealthLocation.Config.GetBranchbyID(FDoctor.HealthLocation.Branch.id);
        FListSpecialities.Assign(FDoctor.HealthLocation.Config.SelectedBranch.Listspeciality);
      end;
    end;
  except
    on e: Exception do
      WriteError('TJanuaAnagDoctor.UpdateOrganization', e);
  end;
end;

procedure TJanuaAnagDoctor.ResetBranch;
begin
  FDoctor.HealthLocation.Branch.Reset;
  FListSpecialities.Clear;
end;

procedure TJanuaAnagDoctor.ResetHealthDistrict;
begin
  ListDistricts.Clear;
  FDoctor.HealthLocation.District.Reset;
  writelog('TJanuaAnagDoctor.ResetDistrict :');
  NotifyDistrict;
end;

procedure TJanuaAnagDoctor.ResetHealthOrganization;
begin
  Doctor.HealthLocation.Organization.Reset;
  NotifyOrganization
end;

procedure TJanuaAnagDoctor.ResetHealthRegion;
begin
  ListOrganizations.Clear;
  ResetHealthDistrict;
  ResetHealthOrganization;
  Doctor.HealthLocation.Region.Reset;
  NotifyRegion;
end;

procedure TJanuaAnagDoctor.ResetSpeciality;
begin
  if Active and Assigned(FListSpecialities) then
    FListSpecialities.Assign(FDoctor.HealthLocation.Config.SelectedBranch.Listspeciality);
  FDoctor.HealthLocation.Speciality.Reset;
  NotifySpeciality;
end;

procedure TJanuaAnagDoctor.Save;
begin
  begin
    if Modified and (not Saved) then
      case FProfile of
        hpfProfile:
          begin
            FJanuaSystem.UserProfile := FJanuaUserProfile;
            FModified := not FJanuaSystem.SaveProfile;
            JanuaServerHealth.UpdateDoctor(Doctor);

          end;
        hpfND:
          begin
            FJanuaSystem.UserProfile := FJanuaUserProfile;
            FModified := not FJanuaSystem.SaveProfile;
            JanuaServerHealth.UpdateDoctor(Doctor);

          end;
        hpfNewUser:
          begin
            FJanuaSystem.UserProfile := FJanuaUserProfile;
            JanuaServerHealth.SetNewDoctor(FDoctor);
            FModified := not FJanuaSystem.NewProfile;
          end;
      end;
    // ***************** FAnagraph.Modified *************************************************
    if FModified then
    begin
      HasErrors := true;
      FSaved := False;
      LastErrorMessage := FJanuaSystem.LastErrorMessage;
    end
    else
    begin
      FSaved := true;
    end;
    // ***************** FAnagraph.Modified *************************************************
  end;
end;

procedure TJanuaAnagDoctor.SetAnagGroup(const Value: THealthRoles);
begin
  FAnagGroup := Value;
end;

procedure TJanuaAnagDoctor.SetAnagraphByDataset(Dataset: TDataset);
begin
  inherited;
  {
    FName := Dataset.FieldByName('NOME').AsWideString;
    FSecondName := Dataset.FieldByName('COGNOME').AsWideString;
    FeMail := Dataset.FieldByName('eMail').AsWideString;
    Fcod_provincia := Dataset.FieldByName('COD_PROV_RIF').AsWideString;
    FPassword := Dataset.FieldByName('AN_PASSWORD').AsString;
    FID :=  Dataset.FieldByName('ANAGRAFICA_ID').AsInteger;
    Fbirthdate := Dataset.FieldByName('NASCITA_DATA').AsDateTime;
    Fcod_Organization := Dataset.FieldByName('COD_Organization').AsString;
    FCod_regione := Dataset.FieldByName('COD_REGIONE').AsString;
    Fregdate := Dataset.FieldByName('DATA_ISCRIZIONE').AsDateTime;
    FregNumber := Dataset.FieldByName('AN_MATRICOLA').AsString;
  }
  // F
  {
    2	SO	Societ di Medicina
    3	ST	Operatore
    4	BI	Articolista
    0	00	non assegnata
    1	OR	Casa Farmaceutica
    5	OB	Informatore Farmaco
    6	QV	Council Medici
    7	OM	Amministratore
    8	AV	Avvocato
    9	CO	Commercialista

    ( yumND, yumPharma, yumSociety, yumOperator, yumWriter, yumInformer,
    yumOrder, yumAdmin, yumLawyer, yumAccountant
  }
  { TODO -oRiccardo -cHealth : Impostare una funzione pubblica per impostare
    profilo dottore da PgDataset su TJanuaRecordDoctor }

  case Dataset.FieldByName('An_categoria_id').AsInteger of
    // **** errato ******
    2:
      FAnagGroup := hltAssociation;
    3:
      FAnagGroup := hltOperator;
    4:
      FAnagGroup := hltWriter;
    0:
      FAnagGroup := hltND;
    1:
      FAnagGroup := hltPharma;
    5:
      FAnagGroup := hltInformer;
    6:
      FAnagGroup := hltCouncil;
    7:
      FAnagGroup := hltAdmin;
    8:
      FAnagGroup := hltLawyer;
    9:
      FAnagGroup := hltAccountant;
    10:
      FAnagGroup := hltInsurance;
  end;
  /// ******* da definire *******************************************************
end;

procedure TJanuaAnagDoctor.SetOrganization(const Value: string);
begin
  if FDoctor.HealthLocation.Organization.name <> Value then
  begin
    if Doctor.HealthLocation.Config.SelectedRegion.GetOrganizationByName(Value) then
      UpdateOrganization;
  end;
end;

procedure TJanuaAnagDoctor.SetOrganizationID(const Value: integer);
begin
  if FDoctor.HealthLocation.Organization.id <> Value then
  begin
    if Doctor.HealthLocation.Config.SelectedRegion.GetOrganizationbyID(Value) then
    begin
      FDoctor.HealthLocation.Organization := FDoctor.HealthLocation.Config.SelectedRegion.
        SelectedOrganization;
      NotifyOrganization;
    end;
  end;
end;

procedure TJanuaAnagDoctor.SetProfile(const Value: THealthProfileForms);
begin
  FProfile := Value;
end;

procedure TJanuaAnagDoctor.SetOrganizationCode(const Value: string);
begin
  if FDoctor.HealthLocation.Organization.code <> Value then
  begin
    if Doctor.HealthLocation.Config.SelectedRegion.GetOrganizationByCode(Value) then
    begin
      FDoctor.HealthLocation.Organization := FDoctor.HealthLocation.Config.SelectedRegion.
        SelectedOrganization;
      NotifyOrganization;
    end;
  end;
end;

procedure TJanuaAnagDoctor.SetBranchCode(const Value: string);
begin
  if FDoctor.HealthLocation.Branch.code <> Value then
  begin
    if Doctor.HealthLocation.Config.GetBranchByCode(Value) then
    begin
      UpdateBranch;
    end;
  end;
end;

procedure TJanuaAnagDoctor.SetBranch(const Value: string);
begin
  if FDoctor.HealthLocation.Branch.name <> Value then
  begin
    if Doctor.HealthLocation.Config.GetBranchByName(Value) then
    begin
      UpdateBranch;
    end;
  end;
end;

procedure TJanuaAnagDoctor.SetAssociationCode(const Value: string);
begin
  if FDoctor.HealthLocation.Association.code <> Value then
  begin
    if FDoctor.HealthLocation.Config.GetMedAssociationByCode(Value) then
      UpdateAssociation;
  end;
end;

procedure TJanuaAnagDoctor.SetSpecialityCode(const Value: string);
begin
  try
    if Active and (Value > '') and (FDoctor.HealthLocation.Speciality.code <> Value) then
    begin
      if FDoctor.HealthLocation.Config.SelectedBranch.GetspecialityByCode(Value) then
        UpdateSpeciality;
    end
    else if (not Active) or (Value = '') then
    begin
      ResetSpeciality;
    end;
  except
    on e: Exception do
      WriteError('TJanuaAnagDoctor.SetSpeciality', e);
  end;
end;

procedure TJanuaAnagDoctor.SetDistrictCode(const Value: string);
begin
  if Active and (Value <> '') and (FDoctor.HealthLocation.District.code <> Value) then
  begin
    if FDoctor.HealthLocation.Config.SelectedRegion.GetDistrictByCode(Value) then
      UpdateHealthDistrict;
    writelog('TJanuaAnagDoctor.SetDistrictName' + HealthConfig.SelectedRegion.LastMessage);
  end
  else if (not Active) or (Value = '') then
  begin
    ResetHealthDistrict;
  end;
end;

procedure TJanuaAnagDoctor.SetDistrictID(const Value: integer);
begin
  if Active and (Value > 0) and (FDoctor.HealthLocation.District.id <> Value) then
  begin
    if FDoctor.HealthLocation.Config.SelectedRegion.GetDistrictbyID(Value) then
      UpdateHealthDistrict;
    writelog('TJanuaAnagDoctor.SetDistrictID' + HealthConfig.SelectedRegion.LastMessage);
  end
  else if (not Active) or (Value <= 0) then
  begin
    ResetHealthDistrict;
  end;
end;

procedure TJanuaAnagDoctor.SetDistrictIndex(const Value: integer);
begin
  if Active and (Value > -1) then
    try
      if FListDistricts.Count >= Value + 1 then
        SetDistrictName(FListDistricts[Value]);
    except
      on e: Exception do
        WriteError('TJanuaAnagDoctor.SetDistrictIndex', e);
    end;
end;

procedure TJanuaAnagDoctor.SetDistrictName(const Value: string);
begin
  if Active and (Value <> '') and (FDoctor.HealthLocation.District.name <> Value) then
  begin
    if FDoctor.HealthLocation.Config.SelectedRegion.GetDistrictByName(Value) then
      UpdateHealthDistrict;
    writelog('TJanuaAnagDoctor.SetDistrictName' + HealthConfig.SelectedRegion.LastMessage);
  end
  else if (not Active) or (Value = '') then
  begin
    ResetHealthDistrict;
  end;
end;

procedure TJanuaAnagDoctor.SetDoctor(const Value: TJanuaRecordDoctor);
begin
  FDoctor := Value;
  LoadConfig;

  with FDoctor.HealthLocation do
  begin
    // impostati Regione e Distretto arrivano Valorizzati da SearchCountry in HealtConfig .

    { Primo Step prima di impostare il dottore ed altro preparo le Liste partendo dalla HealthConfig }

    if Region.id > 0 then
      if Config.GetRegionByID(Region.id) then
      begin
        UpdateHealthRegion;
      end;

    if District.id > 0 then
      if Config.SearchCountry.SelectedRegion.GetDistrictbyID(District.id) then
      begin
        UpdateHealthDistrict;
      end;

    // impostati Branch e Speciality ma ancora da Valorizzare nel Database
    if Branch.id > 0 then
    begin
      if Config.GetBranchbyID(Branch.id) then
        UpdateBranch;

      if Speciality.id > 0 then
        if Config.SelectedBranch.GetspecialitybyID(Speciality.id) then
          Speciality := Config.SelectedBranch.SelectedSpeciality;
    end;
  end;
  SetJanuaRecordUserProfile(FDoctor.Profile);
end;

procedure TJanuaAnagDoctor.SetFoundDoctor(const Value: string);
begin
  FFoundDoctor := Value;
end;

procedure TJanuaAnagDoctor.SetHealthConfig(Value: THealthConfig);
begin
  FDoctor.HealthLocation.Config := Value;
end;

procedure TJanuaAnagDoctor.SetHealthLocation(const Value: THealthLocation);
begin
  FDoctor.HealthLocation := Value;
end;

procedure TJanuaAnagDoctor.UpdateCouncil;
begin
  if not FDoctor.HealthLocation.Council.Compare(FDoctor.HealthLocation.Config.SelectedCouncil) then
  begin
    FDoctor.HealthLocation.Council := FDoctor.HealthLocation.Config.SelectedCouncil;
    FModified := true;
    NotifyCouncil;
  end;
end;

procedure TJanuaAnagDoctor.SetOrganizationIndex(const Value: integer);
begin
  if (Value > -1) and Active then
    try
      if FListOrganizations.Count >= Value + 1 then
        SetOrganization(FListOrganizations[Value]);
    except
      on e: Exception do
        WriteError('TJanuaAnagDoctor.SetBranchIndex', e);
    end;
end;

procedure TJanuaAnagDoctor.SetBranchID(const Value: integer);
begin
  if FDoctor.HealthLocation.Branch.id <> Value then
  begin
    if Doctor.HealthLocation.Config.GetBranchbyID(Value) then
    begin
      UpdateBranch;
    end;
  end;
end;

procedure TJanuaAnagDoctor.SetBranchIndex(const Value: integer);
begin
  if (Value > -1) and Active then
    try
      if FListBranches.Count >= Value + 1 then
        SetBranch(FListBranches[Value]);
    except
      on e: Exception do
        WriteError('TJanuaAnagDoctor.SetBranchIndex', e);
    end;
end;

procedure TJanuaAnagDoctor.SetAssociationID(const Value: integer);
begin
  if FDoctor.HealthLocation.Association.id <> Value then
  begin
    if FDoctor.HealthLocation.Config.GetMedAssociationbyID(Value) then
      UpdateAssociation;
  end;
end;

procedure TJanuaAnagDoctor.SetAssociationIndex(const Value: integer);
begin
  if Active and (Value > -1) then
    try
      if FListAssociations.Count >= Value + 1 then
        SetAssociation(FListAssociations[Value]);
    except
      on e: Exception do
        WriteError('TJanuaAnagDoctor.SetAssociationIndex', e);
    end;
  {
    if FDoctor.HealthLocation.Association.index <> Value then
    begin
    if FDoctor.HealthLocation.Config.GetMedAssociationByIndex(Value) then
    UpdateAssociation;
    end;
  }
end;

procedure TJanuaAnagDoctor.SetSpecialityIndex(const Value: integer);
begin
  if (Value > -1) and Active then
    try
      if FListSpecialities.Count >= Value + 1 then
        SetSpeciality(FListSpecialities[Value]);
    except
      on e: Exception do
        WriteError('TJanuaAnagDoctor.SetSpecialityIndex', e);
    end;
  {
    try
    if FActive and Assigned(FListSpecialities) and FListSpecialities.Count > Value + 1 then
    begin
    aName := FListSpecialities[Value];
    if FDoctor.HealthLocation.Config.SelectedBranch.GetspecialityByName(aName) then
    UpdateSpeciality;
    end
    else if (not Active) or (Value = '') then
    begin
    ResetSpeciality;
    end;
    except
    on e: Exception do
    WriteError('TJanuaAnagDoctor.SetSpeciality', e);
    end;
  }
end;

procedure TJanuaAnagDoctor.SendConfirmationMail;
begin
  inherited;

end;

procedure TJanuaAnagDoctor.SetCouncil(const Value: string);
begin
  if FDoctor.HealthLocation.Council.name <> Value then
  begin
    if FDoctor.HealthLocation.Config.GetCouncilByName(Value) then
    begin
      UpdateCouncil;
    end
    else
    begin
      HasErrors := true;
      LastErrorMessage := 'Errore ricercato errato ordine medici';
    end;
  end;
end;

procedure TJanuaAnagDoctor.SetCouncilCod(const Value: string);
begin
  if FDoctor.HealthLocation.Council.code <> Value then
  begin
    if FDoctor.HealthLocation.Config.GetCouncilByCode(Value) then
    begin
      UpdateCouncil;
    end
    else
    begin
      HasErrors := true;
      LastErrorMessage := 'Errore ricercato errato codice ordine medici';
    end
  end;
end;

procedure TJanuaAnagDoctor.SetCouncilID(const Value: integer);
begin
  if FDoctor.HealthLocation.Council.id <> Value then
  begin
    if FDoctor.HealthLocation.Config.GetCouncilbyID(Value) then
    begin
      UpdateCouncil;
    end
    else
    begin
      HasErrors := true;
      LastErrorMessage := 'Errore ricercato errato id ordine medici';
    end
  end;
end;

procedure TJanuaAnagDoctor.SetCouncilIndex(const Value: integer);
begin
  if Active and (Value > -1) then
    try
      if FListCouncils.Count >= Value + 1 then
        SetCouncil(FListCouncils[Value]);
    except
      on e: Exception do
        WriteError('TJanuaAnagDoctor.SetCouncilIndex', e);
    end;
end;

procedure TJanuaAnagDoctor.Setregdate(const Value: TDateTime);
begin
  if FDoctor.regdate <> Value then
  begin
    FDoctor.regdate := Value;
    Modified := true;
    BindManager.Notify('regdate');
  end;
end;

procedure TJanuaAnagDoctor.SetRegionCode(const Value: string);
begin

end;

procedure TJanuaAnagDoctor.SetRegionID(const Value: smallint);
begin
  if Active and (Value > 0) and (FDoctor.HealthLocation.Region.id <> Value) then
  begin
    if FDoctor.HealthLocation.Config.GetRegionByID(Value) then
    begin
      UpdateHealthRegion;
      if HasErrors then
      begin
        LastErrorMessage := FDoctor.LastErrorMessage;
      end;
    end;
  end
  else if (not Active) or (Value <= 0) then
  begin
    ResetHealthRegion;
  end;
end;

procedure TJanuaAnagDoctor.SetRegionIndex(const Value: smallint);
begin
  if (Value > -1) and Active then
    try
      if FListRegions.Count >= Value + 1 then
        SetRegionName(FListRegions[Value]);
    except
      on e: Exception do
        WriteError('TJanuaAnagDoctor.SetAssociationIndex', e);
    end;
end;

procedure TJanuaAnagDoctor.SetRegionName(const Value: string);
begin
  if Active and (Value > '') and (FDoctor.HealthLocation.Region.name <> Value) then
  begin
    if FDoctor.HealthLocation.Config.GetRegionByName(Value) then
    begin
      ResetHealthDistrict;
      ResetHealthOrganization;
      UpdateHealthRegion;
      HasErrors := FDoctor.HasErrrors;
      if HasErrors then
      begin
        LastErrorMessage := FDoctor.LastErrorMessage;
      end;
    end
    else
    begin
      HasErrors := true;
      LastErrorMessage := 'Non trovata Regione ' + Value;
    end;
  end
  else if (not Active) or (Value = '') then
  begin
    ResetHealthRegion;
  end;
end;

procedure TJanuaAnagDoctor.Setregnumber(const Value: string);
begin
  if Active and (FDoctor.regnumber <> Value) then
  begin
    FDoctor.regnumber := Value;
    SetModified(true);
    BindManager.Notify('regnumber');
  end;
end;

procedure TJanuaAnagDoctor.SetServerHealth(const Value: TJanuaCustomServerHealth);
begin
  FServerHealth := Value;
end;

procedure TJanuaAnagDoctor.SetAssociation(const Value: string);
begin
  if FDoctor.HealthLocation.Association.name <> Value then
  begin
    if FDoctor.HealthLocation.Config.GetMedAssociationByName(Value) then
      UpdateAssociation;
  end;
end;

procedure TJanuaAnagDoctor.setAssociationDate(const Value: TDate);
begin
  if FDoctor.AssociationDate <> Value then
  begin
    SetModified(true);
    FDoctor.AssociationDate := Value;
    BindManager.Notify('AssociationDate')
  end;
end;

procedure TJanuaAnagDoctor.setAssociationNumber(const Value: string);
begin
  if FDoctor.AssociationNumber <> Value then
  begin
    SetModified(true);
    FDoctor.AssociationNumber := Value;
    BindManager.Notify('AssociationNumber')
  end;
end;

procedure TJanuaAnagDoctor.SetSpeciality(const Value: string);
begin
  try
    if Active and (Value > '') and (FDoctor.HealthLocation.Speciality.name <> Value) then
    begin
      if FDoctor.HealthLocation.Config.SelectedBranch.GetspecialityByName(Value) then
        UpdateSpeciality;
    end
    else if (not Active) or (Value = '') then
    begin
      ResetSpeciality;
    end;
  except
    on e: Exception do
      WriteError('TJanuaAnagDoctor.SetSpeciality', e);
  end;
end;

procedure TJanuaAnagDoctor.SetSpecialityID(const Value: integer);
begin
  try
    if Active and (Value > 0) and (FDoctor.HealthLocation.Speciality.id <> Value) then
    begin
      if FDoctor.HealthLocation.Config.SelectedBranch.GetspecialitybyID(Value) then
        UpdateSpeciality;
    end
    else if (not Active) or (Value <= 0) then
    begin
      ResetSpeciality;
    end;
  except
    on e: Exception do
      WriteError('TJanuaAnagDoctor.SetSpeciality', e);
  end;
end;

procedure TJanuaAnagDoctor.UpdateHealthDistrict;
begin
  with FDoctor.HealthLocation do
  begin
    if not District.Compare(Config.SelectedRegion.SelectedDistrict.District) then
    begin
      District := Config.SelectedRegion.SelectedDistrict.District;
      NotifyDistrict;
    end;
  end;

end;

procedure TJanuaAnagDoctor.UpdateHealthRegion;
begin
  with FDoctor.HealthLocation do
  begin
    if not Region.Compare(Config.SelectedRegion.Region) then
    begin
      Region := Config.SelectedRegion.Region;

      if not Config.SelectedRegion.GetDistrictbyID(District.id) then
      begin
        ResetHealthDistrict;
        FListDistricts.Assign(Config.SelectedRegion.ListDistricts);
      end;

      if not Config.SelectedRegion.GetOrganizationbyID(Organization.id) then
      begin
        FListOrganizations.Clear;
        ResetHealthOrganization;
        FListOrganizations.Assign(Config.SelectedRegion.ListOrganizations);
      end;

      NotifyRegion;
    end;
  end;
end;

procedure TJanuaAnagDoctor.UpdateSpeciality;
begin
  with FDoctor.HealthLocation do
    Speciality := Config.SelectedBranch.SelectedSpeciality;
  NotifySpeciality;

end;

{ THealthLocation }
{ THealthConfig }

function THealthConfig.GetBranchByCode(aCode: String): boolean;
var
  aRecord: TBranch;
begin
  Result := False;
  if aCode = '' then
    Exit(False);
  for aRecord in Branches do
    if aRecord.Branch.code = aCode then
    begin
      Result := true;
      SelectedBranch := aRecord;
      Exit;
    end;
end;

function THealthConfig.GetBranchbyID(aID: integer): boolean;
var
  aRecord: TBranch;
begin
  Result := False;
  if aID = 0 then
    Exit(False);
  for aRecord in Branches do
    if aRecord.Branch.id = aID then
    begin
      Result := true;
      SelectedBranch := aRecord;
      Exit;
    end;
end;

function THealthConfig.GetBranchByIndex(aIndex: integer): boolean;
var
  aRecord: TBranch;
begin
  Result := False;
  if aIndex = 0 then
    Exit(False);
  for aRecord in Branches do
    if aRecord.Branch.index = aIndex then
    begin
      Result := true;
      SelectedBranch := aRecord;
      Exit;
    end;
end;

function THealthConfig.GetBranchByName(aName: String): boolean;
var
  aRecord: TBranch;
begin
  Result := False;
  if aName = '' then
    Exit(False);
  for aRecord in Branches do
    if aRecord.Branch.name = aName then
    begin
      Result := true;
      SelectedBranch := aRecord;
      Exit;
    end;
end;

function THealthConfig.GetCouncilByCode(aCode: String): boolean;
var
  aRecord: TBranch;
begin
  Result := False;
  if aCode = '' then
    Exit(False);
  for aRecord in Branches do
    if aRecord.Branch.code = aCode then
    begin
      Result := true;
      SelectedBranch := aRecord;
      Exit;
    end;
end;

function THealthConfig.GetCouncilbyID(aID: integer): boolean;
var
  aRecord: TCouncil;
begin
  Result := False;
  if aID = 0 then
    Exit(False);
  for aRecord in Councils do
    if aRecord.id = aID then
    begin
      Result := true;
      SelectedCouncil := aRecord;
      Exit;
    end;
end;

function THealthConfig.GetCouncilByIndex(aIndex: integer): boolean;
var
  aRecord: TCouncil;
begin
  Result := False;
  if aIndex = 0 then
    Exit(False);
  for aRecord in Councils do
    if aRecord.index = aIndex then
    begin
      Result := true;
      SelectedCouncil := aRecord;
      Exit;
    end;
end;

function THealthConfig.GetCouncilByName(aName: String): boolean;
var
  aRecord: TCouncil;
begin
  Result := False;
  if aName = '' then
    Exit(False);
  for aRecord in Councils do
    if aRecord.name = aName then
    begin
      Result := true;
      SelectedCouncil := aRecord;
      Exit;
    end;
end;

function THealthConfig.GetMedAssociationByCode(aCode: String): boolean;
var
  aRecord: TMedAssociation;
begin
  Result := False;
  if aCode = '' then
    Exit(False);
  for aRecord in MedAssociations do
    if aRecord.code = aCode then
    begin
      Result := true;
      SelectedMedAssociation := aRecord;
      Exit;
    end;
end;

function THealthConfig.GetMedAssociationbyID(aID: integer): boolean;
var
  aRecord: TMedAssociation;
begin
  Result := False;
  if aID = 0 then
    Exit(False);
  for aRecord in MedAssociations do
    if aRecord.id = aID then
    begin
      Result := true;
      SelectedMedAssociation := aRecord;
      Exit;
    end;
end;

function THealthConfig.GetMedAssociationByIndex(aIndex: integer): boolean;
var
  aRecord: TMedAssociation;
begin
  Result := False;
  if aIndex = 0 then
    Exit(False);
  for aRecord in MedAssociations do
    if aRecord.index = aIndex then
    begin
      Result := true;
      SelectedMedAssociation := aRecord;
      Exit;
    end;
end;

function THealthConfig.GetMedAssociationByName(aName: String): boolean;
var
  aRecord: TMedAssociation;
begin
  Result := False;
  if aName = '' then
    Exit(False);
  for aRecord in MedAssociations do
    if aRecord.name = aName then
    begin
      Result := true;
      SelectedMedAssociation := aRecord;
      Exit;
    end;
end;

function THealthConfig.GetRegionByID(aID: integer): boolean;
var
  aRegion: THealthRegion;
begin
  Result := False;
  for aRegion in Regions do
    if aRegion.Region.id = aID then
    begin
      Result := true;
      SelectedRegion := aRegion;
      Exit;
    end;
end;

function THealthConfig.GetRegionbyIndex(aIndex: integer): boolean;
var
  aRegion: THealthRegion;
begin
  Result := False;
  for aRegion in Regions do
    if aRegion.Region.index = aIndex then
    begin
      Result := true;
      SelectedRegion := aRegion;
      Exit;
    end;
end;

function THealthConfig.GetRegionByName(aName: string): boolean;
var
  aRegion: THealthRegion;
begin
  Result := False;
  for aRegion in Regions do
    if UpperCase(aRegion.Region.name) = UpperCase(aName) then
    begin
      Result := true;
      SelectedRegion := aRegion;
      Exit;
    end;
end;

function THealthConfig.ListBranch: TStringList;
var
  i: integer;
  aRecord: TBranch;
begin
  Result := TStringList.Create;
  for aRecord in Branches do
    Result.Add(aRecord.Branch.name);
  Result.Sort;
  for i := 0 to SizeOf(Branches) - 1 do
    Branches[i].Branch.index := Result.IndexOf(Branches[i].Branch.name);
end;

function THealthConfig.ListCouncil: TStringList;
var
  i: integer;
  aRecord: TCouncil;
begin
  Result := TStringList.Create;
  for aRecord in Councils do
    Result.Add(aRecord.name);
  Result.Sort;
  for i := 0 to SizeOf(Councils) - 1 do
    Councils[i].index := Result.IndexOf(Councils[i].name);
end;

function THealthConfig.ListMedAssociation: TStringList;
var
  i: integer;
  aRecord: TMedAssociation;
begin
  Result := TStringList.Create;
  for aRecord in MedAssociations do
    Result.Add(aRecord.name);
  Result.Sort;
  for i := 0 to SizeOf(MedAssociations) - 1 do
    MedAssociations[i].index := Result.IndexOf(MedAssociations[i].name);
end;

function THealthConfig.ListRegions: TStringList;
var
  i: integer;
  aRecord: THealthRegion;
begin
  Result := TStringList.Create;
  for aRecord in Regions do
    Result.Add(aRecord.Region.name);
  Result.Sort;
  for i := 0 to SizeOf(Regions) - 1 do
    Regions[i].index := Result.IndexOf(Regions[i].Region.name);
end;

procedure THealthConfig.SetBranchFromDataset(dsBranch, dsSpecialities: TDataset);
var
  i, j: integer;
begin
  dsBranch.Last;
  SetLength(Branches, dsBranch.RecordCount);
  dsBranch.First;
  i := 0;
  while not dsBranch.Eof do
  begin
    Branches[i].Branch.id := dsBranch.FieldByName('speciality_id').AsInteger;
    Branches[i].Branch.index := i;
    Branches[i].Branch.code := dsBranch.FieldByName('speciality_code').AsWideString;
    Branches[i].Branch.name := dsBranch.FieldByName('speciality_name').AsWideString;
    dsSpecialities.Last;
    SetLength(Branches[i].specialities, dsSpecialities.RecordCount);
    j := 0;
    dsSpecialities.First;
    while not dsSpecialities.Eof do
    begin
      Branches[i].specialities[j].id := dsSpecialities.FieldByName('subspeciality_id').AsInteger;
      Branches[i].specialities[j].index := j;
      // Branches[i].specialities[j].code :=
      // dsSpecialities.FieldByName('speciality_code').AsString;
      Branches[i].specialities[j].name := dsSpecialities.FieldByName('subspeciality_name').AsString;
      Branches[i].specialities[j].indent := '   ';
      Inc(j);
      dsSpecialities.Next;
    end;
    dsBranch.Next;
    Inc(i);
  end;
end;

procedure THealthConfig.setCounciFromDataset(dsCouncil: TDataset);
var
  i: smallint;
begin
  dsCouncil.Last;
  SetLength(Councils, dsCouncil.RecordCount);
  dsCouncil.First;
  i := 0;
  while not dsCouncil.Eof do
  begin
    with Councils[i] do
    begin
      id := dsCouncil.FieldByName('council_id').AsInteger;
      index := i;
      code := dsCouncil.FieldByName('council_id').AsString;
      name := dsCouncil.FieldByName('council_name').AsString;
      Country.id := dsCouncil.FieldByName('country_id').AsInteger;
      Region.id := dsCouncil.FieldByName('region_id').AsInteger;
    end;
    dsCouncil.Next;
    Inc(i);
  end;

end;

procedure THealthConfig.setMedAssociationFromDataset(dsMedAssociation: TDataset);
var
  i: smallint;
begin
  dsMedAssociation.Last;
  SetLength(MedAssociations, dsMedAssociation.RecordCount);
  dsMedAssociation.First;
  i := 0;
  while not dsMedAssociation.Eof do
  begin
    with MedAssociations[i] do
    begin
      id := dsMedAssociation.FieldByName('association_id').AsInteger;
      index := i;
      code := dsMedAssociation.FieldByName('code').AsString;
      name := dsMedAssociation.FieldByName('association_name').AsString;
      // members := dsMedAssociation.FieldByName('').AsInteger;
      url := dsMedAssociation.FieldByName('url').AsString;
      Mail := dsMedAssociation.FieldByName('email').AsString;
      phone := dsMedAssociation.FieldByName('phone').AsString;
      address := dsMedAssociation.FieldByName('address').AsString;
      postal_code := dsMedAssociation.FieldByName('postal_code').AsString;
      Country.id := dsMedAssociation.FieldByName('country_id').AsInteger;
      Region.id := dsMedAssociation.FieldByName('region_id').AsInteger;
      District.id := dsMedAssociation.FieldByName('district_id').AsInteger;
      Town.id := dsMedAssociation.FieldByName('town_id').AsInteger;
    end;
    dsMedAssociation.Next;
    Inc(i);
  end;
end;

procedure THealthConfig.SetRegionFromDataset(dsRegion, dsDistrict, dsOrganization: TDataset);
var
  i: integer;
begin
  SetLength(Regions, dsRegion.RecordCount);
  // WriteLog('SetLength(FCountry.Regions. ' + cdsRegions.RecordCount.ToString());
  dsRegion.First;
  i := 0;
  while not dsRegion.Eof do
  begin
    Regions[i].SetFromDataset(dsRegion, dsDistrict, dsOrganization);
    Regions[i].index := i;
    dsRegion.Next;
    Inc(i);
  end;

end;

function THealthConfig.ToString(full: boolean): string;
var
  aRecord: TBranch;
  mRecord: TMedAssociation;
  aList: TStringList;
begin
  aList := TStringList.Create;
  try
    aList.Add('Branches: ');
    for aRecord in Branches do
      aList.Add(aRecord.ToString());
    aList.Add('Specialities: ');
    for mRecord in MedAssociations do
      aList.Add(mRecord.ToString());

    Result := aList.Text;
  finally
    aList.Free;
  end;
end;

{ TMedAssociation }

function TMedAssociation.ToString: string;
const
  indent = '  ';
begin
  Result := indent + 'id: ' + id.ToString + 'index: ' + index.ToString() + 'code: ' + code + 'name: ' + name;
end;

{ TJanuaRecordDoctor }

procedure TJanuaRecordDoctor.SaveToDataset(Dataset: TDataset);
begin

  { TODO -oErgo -cHealth :
    Convertire in salvataggio il caricamento profilo dottore verificare che siano caricati correttamente tutti i campi }
  try
    Dataset.Edit;
    /// ******** user id dal profil ------------------------------------
    Dataset.FieldByName('db_user_id').AsInteger := Profile.User.id;
    Dataset.FieldByName('association_date').AsDateTime := regdate;
    Dataset.FieldByName('association_number').AsString := regnumber;
    if HealthLocation.Association.id > 0 then
      Dataset.FieldByName('association_id').AsInteger := HealthLocation.Association.id;

    /// ******** Regione Distretto ed Organizzazione Lcale in Regine **********************************
    if HealthLocation.Region.id > 0 then
      Dataset.FieldByName('region_id').AsInteger := HealthLocation.Region.id;
    if HealthLocation.District.id > 0 then
      Dataset.FieldByName('district_id').AsInteger := HealthLocation.District.id;
    if HealthLocation.Organization.id > 0 then
      Dataset.FieldByName('organization_id').AsInteger := HealthLocation.Organization.id;
    // ************************************************************************************************
    if HealthLocation.Council.id > 0 then
      Dataset.FieldByName('council_id').AsInteger := HealthLocation.Council.id;
    // ************************* Branch and Speciality ************************************************
    if HealthLocation.Branch.id > 0 then
      Dataset.FieldByName('speciality_id').AsInteger := HealthLocation.Branch.id;
    if HealthLocation.Speciality.id > 0 then
      Dataset.FieldByName('sub_speciality_id').AsInteger := HealthLocation.Speciality.id;
    if role_id > 0 then
      Dataset.FieldByName('group_id').AsInteger := role_id;

    Dataset.Post;
  except
    on e: Exception do
    begin
      writelog('Errore: TdmPgHealth.SetDoctorFromQuery');
      writelog(e.Message);
      raise;
    end;
  end;

end;

procedure TJanuaRecordDoctor.SetFromDataset(Dataset: TDataset);
begin
  try
    regdate := Dataset.FieldByName('association_date').AsDateTime;
    regnumber := Dataset.FieldByName('association_number').AsString;

    /// ******** Regione Distretto ed Organizzazione Lcale in Regine **********************************
    HealthLocation.Region.id := Dataset.FieldByName('region_id').AsInteger;
    if HealthLocation.Config.GetRegionByID(HealthLocation.Region.id) then
      HealthLocation.Region := HealthLocation.Config.SelectedRegion.Region;

    HealthLocation.District.id := Dataset.FieldByName('district_id').AsInteger;
    if HealthLocation.Config.SelectedRegion.GetDistrictbyID(HealthLocation.District.id) then
      HealthLocation.District := HealthLocation.Config.SelectedRegion.SelectedDistrict.District;

    HealthLocation.Organization.id := Dataset.FieldByName('organization_id').AsInteger;
    if HealthLocation.Config.SelectedRegion.GetOrganizationbyID(HealthLocation.Organization.id) then
      HealthLocation.Organization := HealthLocation.Config.SelectedRegion.SelectedOrganization;

    // ************************************************************************************************

    HealthLocation.Council.id := Dataset.FieldByName('council_id').AsInteger;
    if HealthLocation.Config.GetCouncilbyID(HealthLocation.Council.id) then
      HealthLocation.Council := HealthLocation.Config.SelectedCouncil;

    HealthLocation.Association.id := Dataset.FieldByName('association_id').AsInteger;
    if HealthLocation.Config.GetMedAssociationbyID(HealthLocation.Association.id) then
      HealthLocation.Association := HealthLocation.Config.SelectedMedAssociation;

    // ************************* Branch and Speciality ************************************************

    HealthLocation.Branch.id := Dataset.FieldByName('speciality_id').AsInteger;
    if HealthLocation.Config.GetBranchbyID(HealthLocation.Branch.id) then
      HealthLocation.Branch := HealthLocation.Config.SelectedBranch.Branch;

    HealthLocation.Speciality.id := Dataset.FieldByName('sub_speciality_id').AsInteger;
    if HealthLocation.Config.SelectedBranch.GetspecialitybyID(HealthLocation.Speciality.id) then
      HealthLocation.Speciality := HealthLocation.Config.SelectedBranch.SelectedSpeciality;

    role_id := Dataset.FieldByName('group_id').AsInteger;

    //
    {
      2	SO	Societ� di Medicina
      3	ST	Operatore
      4	BI	Articolista
      0	00	non assegnata
      1	OR	Casa Farmaceutica
      5	OB	Informatore Farmaco
      6	QV	Ordine Medici
      7	OM	Amministratore
      8	AV	Avvocato
      9	CO	Commercialista

      ( yumND, yumPharma, yumSociety, yumOperator, yumWriter, yumInformer,
      yumOrder, yumAdmin, yumLawyer, yumAccountant
    }

    case role_id of
      2:
        Role := hltAssociation;
      3:
        Role := hltOperator;
      4:
        Role := hltWriter;
      0:
        Role := hltND;
      1:
        Role := hltPharma;
      5:
        Role := hltInformer;
      6:
        Role := hltCouncil;
      7:
        Role := hltAdmin;
      8:
        Role := hltLawyer;
      9:
        Role := hltAccountant;
    end;
  except
    on e: Exception do
    begin
      writelog('Errore: TdmPgHealth.SetDoctorFromQuery');
      writelog(e.Message);
      raise;
    end;
  end;
end;

function TJanuaRecordDoctor.ToString: string;
var
  a: TStringList;
begin
  try
    a := TStringList.Create;
    try
      a.Add('Data Registrazione: ' + DateTimeToStr(regdate) + 'numero Registrazione: ' + regnumber);
      a.Add('Profile: ');
      a.Add(Profile.ToString);
      a.Add('Location:');
      a.Add(HealthLocation.ToString);
      Result := a.Text;
    finally
      a.Free
    end;

  except

    on e: Exception do
    begin
      writelog('TJanuaRecordDoctor.ToString Error: ' + e.Message);
      raise;
    end;
  end;
end;

procedure TJanuaRecordDoctor.writelog(logstring: string);
begin
  Log := Log + sLineBreak + DateTimeToStr(Now()) + logstring;
end;

{ THealthRegion }

function THealthRegion.GetDistrictByCode(aCode: String): boolean;
var
  aRecord: TDistrict;
begin
  Result := False;
  if aCode = '' then
    Exit(False);
  // non eseguo la ricerca se viene passato un nome nullo ....
  LastMessage := 'Ricerca distretto cod: ' + aCode;
  for aRecord in Districts do
    if UpperCase(Trim(aRecord.District.code)) = UpperCase(Trim(aCode)) then
    begin
      Result := true;
      SelectedDistrict := aRecord;
      LastMessage := 'Trovato distretto cod: ' + aRecord.District.code;
      Exit;
    end;
end;

function THealthRegion.GetDistrictbyID(aID: integer): boolean;
var
  aRecord: TDistrict;
begin
  Result := False;
  if aID = 0 then
    Exit(False);
  // non eseguo la procedura se ricevo id = 0
  LastMessage := 'Ricerca distretto: ' + aID.ToString;
  for aRecord in Districts do
    if aRecord.District.id = aID then
    begin
      Result := true;
      SelectedDistrict := aRecord;
      LastMessage := 'Trovato distretto: ' + aRecord.District.name;
      Exit;
    end;
end;

function THealthRegion.GetDistrictByIndex(aIndex: integer): boolean;
var
  aRecord: TDistrict;
begin
  Result := False;
  for aRecord in Districts do
    if aRecord.District.index = aIndex then
    begin
      Result := true;
      SelectedDistrict := aRecord;
      Exit;
    end;
end;

function THealthRegion.GetDistrictByName(aName: string): boolean;
var
  aRecord: TDistrict;
begin
  Result := False;
  if aName = '' then
    Exit(False);
  // non eseguo la ricerca se viene passato un nome nullo ....
  LastMessage := 'Ricerca distretto: ' + aName;
  for aRecord in Districts do
    if UpperCase(Trim(aRecord.District.name)) = UpperCase(Trim(aName)) then
    begin
      Result := true;
      SelectedDistrict := aRecord;
      LastMessage := 'Trovato distretto: ' + aRecord.District.name;
      Exit;
    end;
end;

function THealthRegion.GetOrganizationByCode(aCode: String): boolean;
var
  aRecord: TOrganization;
begin
  Result := False;
  if aCode = '' then
    Exit(False);
  // non eseguo la ricerca se viene passato un nome nullo ....
  LastMessage := 'Search Organization: ' + aCode;
  for aRecord in Organizations do
    if UpperCase(Trim(aRecord.code)) = UpperCase(Trim(aCode)) then
    begin
      Result := true;
      SelectedOrganization := aRecord;
      LastMessage := 'Found Organization: ' + aRecord.code;
      Exit;
    end;
end;

function THealthRegion.GetOrganizationbyID(aID: integer): boolean;
var
  aRecord: TOrganization;
begin
  Result := False;
  if aID = 0 then
    Exit(False);
  // non eseguo la procedura se ricevo id = 0
  LastMessage := 'Ricerca distretto: ' + aID.ToString;
  for aRecord in Organizations do
    if aRecord.id = aID then
    begin
      Result := true;
      SelectedOrganization := aRecord;
      LastMessage := 'Trovato distretto: ' + aRecord.name;
      Exit;
    end;
end;

function THealthRegion.GetOrganizationByIndex(aIndex: integer): boolean;
var
  aRecord: TOrganization;
begin
  Result := False;
  for aRecord in Organizations do
    if aRecord.index = aIndex then
    begin
      Result := true;
      SelectedOrganization := aRecord;
      Exit;
    end;
end;

function THealthRegion.GetOrganizationByName(aName: String): boolean;
var
  aRecord: TOrganization;
begin
  Result := False;
  if aName = '' then
    Exit(False);
  // non eseguo la ricerca se viene passato un nome nullo ....
  LastMessage := 'Ricerca distretto: ' + aName;
  for aRecord in Organizations do
    if UpperCase(Trim(aRecord.name)) = UpperCase(Trim(aName)) then
    begin
      Result := true;
      SelectedOrganization := aRecord;
      LastMessage := 'Trovato distretto: ' + aRecord.name;
      Exit;
    end;
end;

function THealthRegion.ListDistricts: TStringList;
var
  i: integer;
  aRecord: TDistrict;
begin
  Result := TStringList.Create;
  if Length(Districts) > 0 then
  begin
    for aRecord in Districts do
      Result.Add(aRecord.District.name);
    Result.Sort;
    for i := 0 to SizeOf(Districts) - 1 do
      Districts[i].District.index := Result.IndexOf(Districts[i].District.name);
  end
end;

function THealthRegion.ListOrganizations: TStringList;
var
  i: integer;
  aRecord: TOrganization;
begin
  Result := TStringList.Create;
  if Length(Districts) > 0 then
  begin

    for aRecord in Organizations do
      Result.Add(aRecord.name);
    Result.Sort;
    for i := 0 to SizeOf(Districts) - 1 do
      Districts[i].District.index := Result.IndexOf(Districts[i].District.name);

  end
end;

procedure THealthRegion.SetFromDataset(dsRegion, dsDistrict, dsOrganization: TDataset);
var
  j, k: integer;
begin
  Region.id := dsRegion.FieldByName('region_id').AsInteger;
  Region.name := dsRegion.FieldByName('region_name').AsString;
  Region.code := dsRegion.FieldByName('iso_region_code').AsString;
  Region.indent := '  ';
  SetLength(Districts, dsDistrict.RecordCount);
  // WriteLog('SetLength(FCountry.Regions.Districts ' + cdsDistricts.RecordCount.ToString());
  dsDistrict.First;
  j := 0;
  while not dsDistrict.Eof do
  begin
    Districts[j].District.name := dsDistrict.FieldByName('district_name').AsString;
    Districts[j].District.code := dsDistrict.FieldByName('iso_district_code').AsString;
    Districts[j].District.id := dsDistrict.FieldByName('district_id').AsInteger;
    Districts[j].indent := '   ';
    dsDistrict.Next;
    Inc(j);
  end;
  SetLength(Organizations, dsOrganization.RecordCount);
  // WriteLog('SetLength(FCountry.Regions.Districts.cdsTowns ' + cdsTowns.RecordCount.ToString());
  k := 0;
  while not dsOrganization.Eof do
  begin
    Organizations[k].id := dsOrganization.FieldByName('organization_id').AsInteger;
    Organizations[k].code := dsOrganization.FieldByName('organization_code').AsString;
    Organizations[k].name := dsOrganization.FieldByName('organization_name').AsString;
    Organizations[k].index := k;
    Inc(k);
    dsOrganization.Next;
  end;
end;

function THealthRegion.ToString(full: boolean = true): String;
var
  i: integer;
begin
  Result := Region.ToString + sLineBreak;

  if full then
    for i := 0 to Length(Districts) - 1 do
    begin
      Districts[i].indent := indent + '   ';
      Result := Result + sLineBreak + Districts[i].ToString;
    end;
end;

{ TISOBranch }

function THealthBranch.AsJsonObject: TJsonObject;
begin
  Result := TJsonObject.Create;
  Janua.Core.JSON.JsonPair(Result, 'id', id);
  Janua.Core.JSON.JsonPair(Result, 'index', index);
  Janua.Core.JSON.JsonPair(Result, 'code', code);
  Janua.Core.JSON.JsonPair(Result, 'name', name);
end;

function THealthBranch.AsJsonPretty: string;
begin

end;

function THealthBranch.Compare(a: THealthBranch): boolean;
begin
  Result := (code = a.code) and (name = a.name) and (id = a.id)
end;

procedure THealthBranch.Reset;
begin
  id := 0; // integer;
  index := 0; // integer;
  code := ''; // string;
  name := ''; // string;
end;

procedure THealthBranch.SetFromDataset(aDataset: TDataset);
begin

end;

procedure THealthBranch.SetFromJson(aJson: string);
begin

end;

procedure THealthBranch.SetFromJsonObject(aObject: TJsonObject);
begin

end;

function THealthBranch.ToString(full: boolean): string;
begin
  if indent = '' then
    indent := '   ';

  Result := indent + 'id: ' + IntToStr(id) + sLineBreak + indent + 'code: ' + code + sLineBreak + indent +
    'name: ' + name + sLineBreak + indent + 'index: ' + index.ToString + sLineBreak;
end;

{ TJanuaCustomServerHealth }

function TJanuaCustomServerHealth.CheckDoctorExists(aDoctor: TJanuaRecordDoctor): boolean;
begin
  // This function has to be implemented by descendant classess
  Result := False;
end;

function TJanuaCustomServerHealth.CheckUp: boolean;
begin
  try
    if Verbose then
      writelog('TJanuaServerJPublic.CheckUp: Check Up');
    if not Assigned(FJanuaPublic) then
      LocalRaiseException('Select Public Component First!!');
    if Verbose then
      writelog('TJanuaServerJPublic.CheckUp: Activate Public');

    if Assigned(FJanuaSystem) then
      if not FJanuaSystem.Active then
        FJanuaSystem.Activate;
    if Assigned(FJanuaPublic) then
      if not FJanuaPublic.Active then
        FJanuaPublic.Activate;
    Result := (FJanuaSystem.Active and FJanuaPublic.Active);

    if Result then
    begin
      SessionKey := FJanuaPublic.SessionKey;
      JanuaServerSession := FJanuaPublic.JanuaServerSession;
    end;

    if Verbose then
      writelog('TJanuaServerJPublic.CheckUp: fine Check Up Risultato := ' + Result.ToString());

  except
    on e: Exception do
    begin
      WriteError('TJanuaServerJPublic.CheckUp Error: ', e);
    end;
  end;
end;

constructor TJanuaCustomServerHealth.Create(AOwner: TComponent);
begin
  inherited;
  FListaSpecialita := TStringList.Create;
  FListaAsl := TStringList.Create;
  FListaRegioni := TStringList.Create;
  FListaBranche := TStringList.Create;
  FListCouncils := TStringList.Create;
end;

destructor TJanuaCustomServerHealth.Destroy;
begin
  FListaSpecialita.Free;
  FListaAsl.Free;
  FListaRegioni.Free;
  FListaBranche.Free;
  FListCouncils.Free;
  inherited;
end;

procedure TJanuaCustomServerHealth.sendDoctorConfirmationMail;
begin
  SendMailNewUser(FDoctor.Profile);
end;

procedure TJanuaCustomServerHealth.SetHealthConfig(const Value: THealthConfig);
begin
  FDoctor.HealthLocation.Config := Value;
end;

procedure TJanuaCustomServerHealth.SetisActive(const Value: boolean);
begin
  writelog('TJanuaServerHealth.SetIsActive: ' + Value.ToString());
  if Value then
    Activate
  else
  begin
    Active := False;
    writelog('TJanuaServerHealth.SetIsActive: ' + Value.ToString());
  end;
end;

function TJanuaCustomServerHealth.SetNewDoctor(aDoctor: TJanuaRecordDoctor): boolean;
begin
  Result := False;
end;

procedure TJanuaCustomServerHealth.SetNumArticles(const Value: smallint);
begin
  FNumArticles := Value;
end;

procedure TJanuaCustomServerHealth.setPrescription(const Value: TJanuaITHealthPrescription);
begin

end;

procedure TJanuaCustomServerHealth.TestMailDoctor;
begin
  SendMailNewUser(FDoctor.Profile);
end;

procedure TJanuaCustomServerHealth.SetJanuaPublic(const Value: TJanuaCustomServerJPublic);
begin
  FJanuaPublic := Value;
  if Assigned(FJanuaPublic) and Assigned(FJanuaPublic.JanuaSystem) then
    FJanuaSystem := FJanuaPublic.JanuaSystem;
end;

procedure TJanuaCustomServerHealth.SetListaAsl(const Value: TStrings);
begin
  if Assigned(FListaAsl) and Assigned(Value) then
    FListaAsl.Assign(Value);
end;

procedure TJanuaCustomServerHealth.SetListaBranche(const Value: TStrings);
begin
  if Assigned(FListaBranche) and Assigned(Value) then
    FListaBranche.Assign(Value);
end;

procedure TJanuaCustomServerHealth.SetListaRegioni(const Value: TStrings);
begin
  if Assigned(FListaRegioni) and Assigned(Value) then
    FListaRegioni.Assign(Value);
end;

procedure TJanuaCustomServerHealth.SetListaSpecialita(const Value: TStrings);
begin
  if Assigned(FListaSpecialita) and Assigned(Value) then
    FListaSpecialita.Assign(Value);
end;

procedure TJanuaCustomServerHealth.SetListCouncils(const Value: TStrings);
begin
  if Assigned(FListCouncils) and Assigned(Value) then
    FListCouncils.Assign(Value);
end;

procedure TJanuaCustomServerHealth.SetMailSender(const Value: IJanuaMailSender);
begin
  FMailSender := Value;
end;

procedure TJanuaCustomServerHealth.SetMessageBuilder(const Value: IJanuaMailMessageBuilder);
begin
  FMessageBuilder := Value;
end;

procedure TJanuaCustomServerHealth.SendMailNewUser(const aDoctor: TJanuaRecordUserProfile);
var
  url: string;
  dest, Temp, filename: string;
  z: TStrings;
  JanuaMailSender1: IJanuaMailSender;
begin
  // JanuaMailSender1 := TJanuaMailFactory.CreateJanuaMailSender(self); // TJanuaCustomMailSender.Create(self);
  try
    writelog(aDoctor.ToString);
    // JanuaMailSender1.Verbose := Verbose;
    // JanuaMailSender1.ApplicationType := ApplicationType;
    // JanuaMailSender1.LogToFile := LogToFile;
    // MessageBuilder: IJanuaMailMessageBuilder;
    MessageBuilder.sTo := aDoctor.User.Email;
    // 'marco.ghiringhelli5@gmail.com';//
    z := TStringList.Create;
    filename := TPath.Combine(TJanuaCoreOS.GetAppHomePath, 'welcome.html');
    writelog('Caricamento file: ' + filename);
    z.LoadFromFile(filename, TEncoding.UTF8);
    Temp := z.Text;
    dest := StringReplace(Temp, '$Title$', aDoctor.title, [rfReplaceAll, rfIgnoreCase]);
    Temp := dest;
    dest := StringReplace(Temp, '$LastName$', aDoctor.LastName, [rfReplaceAll, rfIgnoreCase]);
    Temp := dest;
    dest := StringReplace(Temp, '$FirstName$', aDoctor.LastName, [rfReplaceAll, rfIgnoreCase]);
    Temp := dest;
    url := '<a href="http://www.keriks.com' + '?confirmmail=' + aDoctor.User.Email +
      '">Clicca qui per confermare la tua iscrizione </a>';
    dest := StringReplace(Temp, '%URL%', url, [rfReplaceAll, rfIgnoreCase]);

    writelog('Inviata mail a: ' + aDoctor.User.Email + ' <' + aDoctor.LastName + aDoctor.FirstName);

    try
      z.Text := dest;
      MessageBuilder.MsgText.Assign(z);
    finally
      z.Free
    end;

    if not(csDesigning in ComponentState) then
    begin
      JanuaMailSender1.MailUsername := TJanuaCoreOS.ReadParam('mailsender', 'username', 'info@keriks.com');
      JanuaMailSender1.MailPassword := TJanuaCoreOS.ReadParam('mailsender', 'password', 'k3r1ks');
      JanuaMailSender1.MailServer := (TJanuaCoreOS.ReadParam('mailsender', 'server', 'mail.januaproject.it'));
    end
    else
    begin
      JanuaMailSender1.MailUsername := 'info@keriks.com';
      JanuaMailSender1.MailPassword := 'k3r1ks';
      JanuaMailSender1.MailServer := 'mail.januaproject.it';
    end;

    MessageBuilder.MailEncoding := TJanuaMailEncoding.jmeHTML;
    JanuaMailSender1.MailEncryption := TJanuaMailEncription.jmsNone;

    MessageBuilder.MsgText.Text := dest;
    MessageBuilder.sText := dest;
    MessageBuilder.sCC := 'info@keriks.com';
    MessageBuilder.sFromAddr := 'info@keriks.com';
    MessageBuilder.sFrom := 'Keriks Medical Social Forum';
    MessageBuilder.sSubject := aDoctor.title + ' ' + aDoctor.FirstName + ' ' + aDoctor.LastName +
      ' benvenuto in Keriks Medical Social Forum.';
    try
      JanuaMailSender1.SendMail;
    except
      on e: Exception do
      begin
        WriteError('TJanuaCustomServerHealth.SendMailNewUser', e);
      end;
    end;
  finally
    JanuaMailSender1 := nil;
  end;
end;

procedure TJanuaCustomServerHealth.setBooking(const Value: TJanuaHealthBooking);
begin

end;

procedure TJanuaCustomServerHealth.SetDoctor(const Value: Janua.Core.Health.TJanuaRecordDoctor);
begin
  FDoctor := Value;
end;

procedure TJanuaCustomServerHealth.SetDoctorPhoto(const Value: TJanuaBlob);
begin
  FDoctorPhoto.Assign(Value);
end;

procedure TJanuaCustomServerHealth.SetFoundDoctor(const Value: string);
begin
  FFoundDoctor := Value;
end;

procedure TJanuaCustomServerHealth.UpdateDoctor(aDoctor: TJanuaRecordDoctor);
begin
  FDoctor := aDoctor;
end;

function TJanuaCustomServerHealth.UploadConfig: boolean;
begin
  // This function has to be implemented by descendant classess
  Result := False;
end;

{ TCouncil }

function TCouncil.Compare(a: TCouncil): boolean;
begin
  Result := (code = a.code) and (name = a.name) and (id = a.id) and Country.Compare(a.Country) and
    Region.Compare(a.Region)
end;

function TCouncil.ToString(full: boolean): string;
begin
  Result := 'code:' + code + 'name:' + name + 'id:' + id.ToString + 'index:' + index.ToString + 'Country:' +
    Country.ToString(False) + 'Region:' + Region.ToString;
end;

function THealthLocation.ToString: string;
var
  a: TStringList;
begin
  a := TStringList.Create;
  try
    // a.Add(Config.ToString(False));
    a.Add(Location.ToString);
    a.Add(Organization.ToString);
    a.Add(Branch.ToString(False));
    a.Add(Council.ToString(False));
    a.Add(Speciality.ToString(False));
    a.Add(Association.ToString);
    a.Add(Region.ToString);
    a.Add(District.ToString(False));
    Result := a.Text;
  finally
    a.Free
  end;
end;

{ TJanuaRecordService }

function TJanuaRecordService.AsHtmlSelect: string;
begin
  // <option value="AK">Alaska</option>
  Result := '<option value="' + id.ToString + '">' + description + '</option>';
end;

function TJanuaRecordService.AsJson: string;
begin
  Result := Janua.Core.JSON.JsonPretty(AsJsonObject);
end;

function TJanuaRecordService.GetAsJsonObject: TJsonObject;
begin
  Result := TJsonObject.Create;
  Janua.Core.JSON.JsonPair(Result, 'id', id);
  Janua.Core.JSON.JsonPair(Result, 'item_id', item_id);
  Janua.Core.JSON.JsonPair(Result, 'title', title);
  Janua.Core.JSON.JsonPair(Result, 'discipline_id', discipline_id);
  Janua.Core.JSON.JsonPair(Result, 'description', description);
  Janua.Core.JSON.JsonPair(Result, 'discipline_name', discipline_name);
end;

procedure TJanuaRecordService.LoadFromDataset(aDataset: TDataset);
begin
  item_id := aDataset.FieldByName('item_id').AsInteger;
  id := aDataset.FieldByName('id').AsInteger;
  discipline_id := aDataset.FieldByName('discipline_id').AsInteger;

  if Janua.Core.Functions.ExistFieldByName(aDataset, 'title') then
    title := aDataset.FieldByName('title').AsWideString;

  if Janua.Core.Functions.ExistFieldByName(aDataset, 'description') then
    description := aDataset.FieldByName('description').AsWideString
  else if Janua.Core.Functions.ExistFieldByName(aDataset, 'title') then
    description := aDataset.FieldByName('title').AsWideString;

  if Janua.Core.Functions.ExistFieldByName(aDataset, 'discipline_name') then
    discipline_name := aDataset.FieldByName('discipline_name').AsWideString;
end;

procedure TJanuaRecordService.LoadFromJson(aJson: string);
var
  FJsonObject: TJsonObject;
begin
  FJsonObject := TJsonObject.Create;
  try
    FJsonObject.Parse(BytesOf(aJson), 0);
    LoadFromJsonObject(FJsonObject);
  finally
    FJsonObject.Free;
  end;
end;

procedure TJanuaRecordService.LoadFromJsonObject(aJsonObject: TJsonObject);
begin
  Janua.Core.JSON.JsonValue(aJsonObject, 'id', id);
  Janua.Core.JSON.JsonValue(aJsonObject, 'item_id', item_id);
  Janua.Core.JSON.JsonValue(aJsonObject, 'title', title);
  Janua.Core.JSON.JsonValue(aJsonObject, 'discipline_id', discipline_id);
  Janua.Core.JSON.JsonValue(aJsonObject, 'description', description);
  Janua.Core.JSON.JsonValue(aJsonObject, 'discipline_name', discipline_name);
end;

function TJanuaRecordService.ToString: string;
begin

end;

{ TJanuaServices }

procedure TJanuaServices.Add(aObject: TJsonObject);
var
  aService: TJanuaRecordService;
begin
  aService.LoadFromJsonObject(aObject);
  Add(aService);
end;

procedure TJanuaServices.Add(aService: TJanuaRecordService);
begin
  SetLength(Services, Count + 1);
  Services[Count - 1] := aService;
end;

function TJanuaServices.AsHtml: string;
var
  html: TStrings;
  discipline: integer;
  sClass, aIndent: string;
  aService: TJanuaRecordService;
  procedure SetDiscipline;
  begin
    discipline := aService.discipline_id;
    html.Add(aIndent + '   <optgroup label="' + aService.discipline_name + '">')
  end;

begin
  html := TStringList.Create;
  aIndent := '          ';
  try
    sClass := 'class="form-control select2 select2-hidden-accessible" tabindex="-1" aria-hidden="true"';
    html.Add(aIndent + '<select id="single" name="service" ' + sClass + ' >');
    html.Add(aIndent + '   <option></option>');
    // $item_id$
    // $selected$
    discipline := 0;

    for aService in Services do
    begin
      if discipline = 0 then
        SetDiscipline
      else if discipline <> aService.discipline_id then
      begin
        html.Add(aIndent + '   </optgroup>');
        SetDiscipline
      end;
      html.Add(aService.AsHtmlSelect)
    end;

    html.Add(aIndent + '   </optgroup>');
    html.Add(aIndent + '</select>');
    Result := html.Text;
  finally
    html.Free
  end;

end;

function TJanuaServices.AsJson: string;
begin
  Result := Janua.Core.JSON.JsonPretty(AsJsonObject)
end;

function TJanuaServices.AsJsonObject: TJsonObject;
var
  aService: TJanuaRecordService;
  aJsonArray: TJsonArray;
begin
  Result := TJsonObject.Create;
  aJsonArray := TJsonArray.Create;
  for aService in Services do
    aJsonArray.AddElement(aService.AsJsonObject);
  Result.AddPair('services', aJsonArray)
end;

function TJanuaServices.Count: integer;
begin
  Result := Length(Services);
end;

procedure TJanuaServices.LoadFromDataset(aDataset: TDataset);
begin
  if Assigned(aDataset) and aDataset.Active and (aDataset.RecordCount > 0) then
  begin
    SetLength(Services, 0);
    aDataset.First;
    while not aDataset.Eof do
    begin
      SetLength(Services, Count + 1);
      Services[Count - 1].LoadFromDataset(aDataset);
      aDataset.Next;
    end;
  end;
end;

procedure TJanuaServices.LoadFromJson(aJson: string);
begin

end;

procedure TJanuaServices.LoadFromJsonObject(aJsonObject: TJsonObject);
var
  aValue: TJsonValue;
  aPair: TJsonPair;
  aObject: TJsonObject;
begin
  SetLength(Services, 0);
  aPair := aJsonObject.Get('services');
  if Assigned(aPair) then
    for aValue in (aPair.JsonValue as TJsonArray) do
    begin
      aObject := (aValue as TJsonObject);
      Add(aObject);
    end;
end;

function TJanuaServices.ToString: string;
begin

end;

{ TJanuaCustomHealthBooking }

function TJanuaCustomHealthBooking.AssignSessionBooking: boolean;
begin
  Result := False;
  CreateDataModule;
  try
    // FBookingID := aBookingID;
    if InternalAssignSessionBooking then
    begin
      // Ridondante .....................
      OpenBooking(FBookingID);
      Result := getHtmlBookingInstitutes;
    end;
  finally
    if not KeepAlive then
      DestroyDataModule;
  end;
end;

function TJanuaCustomHealthBooking.BookingInstitutesGMaps: string;
begin
  Result := InternalInstitutesGMaps(FBooking.Institutes)
end;

procedure TJanuaCustomHealthBooking.AssignBookingDataSources;
begin

end;

function TJanuaCustomHealthBooking.BookingInstitutesHtml: string;
begin
  Result := InternalInstitutesHtml(FBooking.Institutes);
end;

function TJanuaCustomHealthBooking.BookingInstitutesJson: string;
begin
  Result := FBooking.Institutes.AsJson
end;

function TJanuaCustomHealthBooking.CheckBooking: boolean;
begin
  Result := not FBooking.HasPrescription or CheckPrescription;

  if Result and FBooking.HasRelative then
    Result := CheckRelative;
  if Result then
  begin
    { TODO -cHealth : Implement CheckBooking }
  end;
end;

function TJanuaCustomHealthBooking.CheckOut(aBookingID: int64): boolean;
begin
  FBooking.id := aBookingID;
  Result := CheckOut;
end;

function TJanuaCustomHealthBooking.CheckOut: boolean;
begin
  CreateDataModule;
  try
    Result := InternalCheckOut;
  finally
    DestroyDataModule();
  end;
end;

function TJanuaCustomHealthBooking.CheckPrescription: boolean;
begin
  Result := False;
  { TODO -cHealth  : Implement CheckPrescription }
end;

function TJanuaCustomHealthBooking.CheckRelative: boolean;
begin
  Result := False;
  { TODO -cHealth  : Implement CheckRelative }
end;

constructor TJanuaCustomHealthBooking.Create(AOwner: TComponent);
begin
  inherited;
  FBooking.Clear;
  // FBooking64 := '';
  FBookingID := 0;
  FInstitueID := 0;
  FSearchItemID := 0;
  Fselect2 := 0;
  Fselect3 := 0;
  Fselect1 := 0;
  FSearchID := 0;

  FTableInstitutes := TJanuaJsonDacDataset.Create(self);
  // TVirtual Table auto creata ..............
  FmdsPrescription := TJanuaJsonDacDataset.Create(self);
  FmdsBooking := TJanuaJsonDacDataset.Create(self);
  FmdsBookingInstitutes := TJanuaJsonDacDataset.Create(self);
  FmdsRelative := TJanuaJsonDacDataset.Create(self);
  FmdsServices := TJanuaJsonDacDataset.Create(self);
  FmdsInstitutes := TJanuaJsonDacDataset.Create(self);
  FVqrySearchServices := TJanuaJsonDacDataset.Create(self);
  FmdsNotifications := TJanuaJsonDacDataset.Create(self);
  FmdsMeetings := TJanuaJsonDacDataset.Create(self);
end;

destructor TJanuaCustomHealthBooking.Destroy;
begin
  DestroyDataModule(true);
  FTableInstitutes.Free;
  FmdsPrescription.Free;
  FmdsBooking.Free;
  FmdsBookingInstitutes.Free;
  FmdsRelative.Free;
  FmdsServices.Free;
  FmdsInstitutes.Free;
  FVqrySearchServices.Free;
  FmdsNotifications.Free;
  FmdsMeetings.Free;
  inherited;
end;

function TJanuaCustomHealthBooking.DoBooking(aInstitutes: TJanuaAnagraphs): int64;
begin
  writelog('SessionKey: ' + SessionKey);
  if aInstitutes.Count > 0 then
  begin
    select1 := aInstitutes.Items[0].anagraph_id;
    writelog('Istituto1:' + select1.ToString);
  end;

  if aInstitutes.Count > 1 then
  begin
    select2 := aInstitutes.Items[1].anagraph_id;
    writelog('Istituto2:' + select2.ToString);
  end;

  if aInstitutes.Count > 2 then
  begin
    select3 := aInstitutes.Items[2].anagraph_id;
    writelog('Istituto3:' + select3.ToString);
  end;
  Result := DoBooking;
end;

function TJanuaCustomHealthBooking.DoBooking: int64;
begin
  FBooking.UserProfile := FUserProfile;
  CreateDataModule;
  try
    Result := InternalDoBooking;
  finally
    DestroyDataModule;
  end;
end;

function TJanuaCustomHealthBooking.Finalisation(aBooking: TJanuaHealthBooking): boolean;
begin
  Result := False;
  CreateDataModule;
  try
    Result := InternalFinalisation(aBooking);
    if Result then
      Result := OpenBooking(aBooking.id);
  finally
    DestroyDataModule;
  end;
end;

procedure TJanuaCustomHealthBooking.GenerateInstitutesGMaps;
begin
  if FInstitutes.Count > 0 then
    FInstitutesHtmlGMaps := InternalInstitutesGMaps(FInstitutes)
  else
    FInstitutesHtmlGMaps := '';
end;

procedure TJanuaCustomHealthBooking.GenerateInstitutesHtml;
begin
  FInstitutesHtmlList := InternalInstitutesHtml(FInstitutes);
end;

procedure TJanuaCustomHealthBooking.GenerateInstitutesJson;
begin
  FInstitutesJson := FInstitutes.AsJson;
end;

function TJanuaCustomHealthBooking.getBooking: TJanuaHealthBooking;
begin
  Result := FBooking;
end;

function TJanuaCustomHealthBooking.GetBooking64: string;
begin
  Result := Janua.Core.Functions.Encode64UTF8(FBookingID.ToString)
end;

function TJanuaCustomHealthBooking.getBookingRelative: TJanuaAnagraphRecord;
begin
  Result := FBooking.Relative;
end;

function TJanuaCustomHealthBooking.getGMapCenter: string;
begin
  Result := 'lat: ' + Janua.Core.JSON.JsonFloatToStr(Coordinates.latitude, 7) + ', ' + 'lng: ' +
    Janua.Core.JSON.JsonFloatToStr(Coordinates.longitude, 7)
end;

function TJanuaCustomHealthBooking.getHtmlBookingInstitutes: boolean;
begin
  // Questa procedurea imposta due Volte i dati degli Istituti
  // Come Lista HTML per il sito web di prenotazione e come
  Result := False;

  CreateDataModule;
  try
    FmdsInstitutes.MemDataset := InternalBookingInstitutes;

    // (Round(DM.qryBookingInstitutesdistance.AsFloat * 1000) / 1000).ToString)
    FInstitutes.LoadFromDataset(FmdsInstitutes.MemDataset);
    GenerateInstitutesHtml;
    GenerateInstitutesGMaps;
    GenerateInstitutesJson;
    Result := true;

    { TODO -oRiccardo -cHealth : Implementare la funzione nel discendente in Postgres-Oracle }
  finally
    DestroyDataModule;
  end;

end;

function TJanuaCustomHealthBooking.GetInstitute64: string;
begin
  Result := Janua.Core.Functions.Encode64UTF8(FInstitueID.ToString)
end;

function TJanuaCustomHealthBooking.getLatitude: Double;
begin
  Result := FCoordinates.latitude
end;

function TJanuaCustomHealthBooking.getLongitude: Double;
begin
  Result := 0.0;
end;

function TJanuaCustomHealthBooking.GetMeetings: integer;
begin
  CreateDataModule;
  try
    Result := InternalGetMeetings;
    FMeetings.LoadFromDataset(FmdsMeetings.MemDataset);
  finally
    DestroyDataModule();
  end;
end;

function TJanuaCustomHealthBooking.getPrescription: TJanuaITHealthPrescription;
begin
  Result := FBooking.HealthPrescription;
end;

function TJanuaCustomHealthBooking.GetSearchItemID: int64;
begin
  Result := FSearchItemID
end;

function TJanuaCustomHealthBooking.getServices64: string;
begin
  if Assigned(FmdsServices) then
  begin
    Janua.Core.Functions.ExportDatasetToBase64String(FmdsServices.MemDataset, Result)
  end
  else
  begin
    Result := '';
  end;
end;

function TJanuaCustomHealthBooking.GetHealthNotifications(const aLimit: integer = 0): integer;
begin
  CreateDataModule;
  try
    Result := InternalHealthNotifications;
    FHealthNotifications.LoadFromDataset(mdsNotifications.MemDataset);
  finally
    DestroyDataModule();
  end;
end;

function TJanuaCustomHealthBooking.InstituteConfirmation: boolean;
begin
  CreateDataModule;
  try
    Result := InternalInstituteConfirmation;
  finally
    DestroyDataModule();
  end;
end;

function TJanuaCustomHealthBooking.InternalActivate: boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        if not Assigned(FJanuaServerSystem) then
          raise Exception.Create('Error Server System not Assigned');

        Result := true;
        // LastMessage := name + ' Activated.';
        if notDesigning then
          writelog(name + ' Activated.');
        if KeepAlive then
          CreateDataModule;
      end;
    except
      on e: Exception do
        RaiseException('InternalActivate', e, self);
    end;

end;

function TJanuaCustomHealthBooking.InternalInstitutesGMaps(aInstitutes: TJanuaAnagraphs): string;
var
  LS: TStrings;
  HS, RS: string;
  tmpAnagraph: TJanuaAnagraphs;
begin
  tmpAnagraph := aInstitutes;
  LS := TStringList.Create;
  try
    // JsonFloatToStr(DM.qryBookingInstitutesLatitude.AsFloat, 6)
    { TODO -oRiccardo -cHealth : Importare la funzione JsonFloatToStr nell'anagrafica per generare il GMaps }
    LS.Clear;
    LS.Add('o.addMarker({');
    LS.Add('lat: $latitude$,');
    LS.Add('lng: $longitude$,');
    LS.Add('title: "$an_last_name$",');
    LS.Add('infoWindow: { content: ' + QuotedStr('<span style="color:#000">' + '$an_last_name$ $an_address$' +
      '</span>') + '}');
    LS.Add('})');
    tmpAnagraph.SecondLineChar := ', ';
    Result := tmpAnagraph.AsHtml('$rows$', LS.Text, true);
  finally
    LS.Free;
  end;

end;

function TJanuaCustomHealthBooking.InternalInstitutesHtml(aInstitutes: TJanuaAnagraphs): string;
var
  LS: TStrings;
  HS, RS: string;
begin
  { TODO -oRiccardo -cHealth : Spostare nel container dei Templates il template relativo agli Istituti sia Header che Footer }
  LS := TStringList.Create;
  try
    // ---------------- creazione lista Istituti ----------------------
    HS := '<ul> $rows$ ' + sLineBreak + '</ul>' + sLineBreak + '<!-- fine tabella -->';
    LS.Add('<li class="mt-list-item">');
    LS.Add('<div class="list-icon-container">');
    LS.Add('<a href="javascript:;">');
    LS.Add('<i class="fa fa-angle-right"></i>');
    LS.Add(' </a>');
    LS.Add('</div>');
    LS.Add('<div class="list-datetime bold uppercase font-green">  $distance$ Km.' + '</div>');
    LS.Add('<div class="list-item-content">');
    LS.Add('<h3 class="uppercase">');
    LS.Add('<a href="javascript:;">$an_last_name$</a>');
    LS.Add('</h3>');
    LS.Add('<p> $an_address$ $an_postal_code$ $an_town$</p>');
    LS.Add('<div class="clearfix">');
    LS.Add('<div class="btn-group" data-toggle="buttons">');
    LS.Add('<label class="btn blue active">');
    LS.Add('<input type="radio" class="toggle" name="Selezione_$anagraph_id$" value="IN"> Non Selezionato </label>');
    LS.Add('<label class="btn blue">');
    LS.Add('<input type="radio" class="toggle" name="Selezione_$anagraph_id$" value="OUT"> Selezionato </label>');
    LS.Add('</div>');
    LS.Add('</div>');
    LS.Add('</div>');
    LS.Add('</li>');
    LS.Add('<!-- fine riga -->');
    LS.Add(' ');
    RS := LS.Text;
  finally
    LS.Free;
  end;
  Result := aInstitutes.AsHtml(HS, RS, False);

end;

function TJanuaCustomHealthBooking.LoadBooking(aBookingID: int64): boolean;
begin
  FBookingID := aBookingID;
  Result := LoadBooking
end;

function TJanuaCustomHealthBooking.LoadBooking: boolean;
begin
  Result := False;
  CreateDataModule;
  try
    { TODO -cHealth  : Implement Load Booking }
  finally
    if not KeepAlive then
      DestroyDataModule();
  end;
end;

procedure TJanuaCustomHealthBooking.LoadPrescription;
begin
  { TODO  -cHealth  : Implement Load Description }
end;

function TJanuaCustomHealthBooking.Notifications: string;
begin
  // gestione delle notifiche di JanuaCustomServer Health Booking ............................
  { TODO -cHealth : Implement Notifications }
end;

function TJanuaCustomHealthBooking.OpenBooking(aBookingID: int64): boolean;
begin
  Result := False;
  if aBookingID > 0 then
  begin
    FBookingID := aBookingID;
    Result := OpenBooking;
  end;
end;

function TJanuaCustomHealthBooking.OpenBooking: boolean;
begin
  CreateDataModule;
  try
    Result := InternalOpenBooking;
    if Result then
      FBooking.LoadFromDataset(mdsBooking.MemDataset, FmdsPrescription.MemDataset, FmdsRelative.MemDataset,
        FmdsBookingInstitutes.MemDataset);
    if KeepAlive then
      AssignBookingDataSources;
  finally
    if not KeepAlive then
      DestroyDataModule();

  end;
end;

function TJanuaCustomHealthBooking.OpenBooking(aBooking64: string): boolean;
begin
  booking64 := aBooking64;
  Result := OpenBooking;
end;

procedure TJanuaCustomHealthBooking.PrepareHtmlInstitutes;
begin
  CreateDataModule;
  try
    // PrepareHtmlInstitutes

  finally
    DestroyDataModule;
  end;
end;

procedure TJanuaCustomHealthBooking.PrepareMailBooking(aTemplate: string);
begin
  FMailMessage.SetText(FBooking.AsHtml(aTemplate {FMailMessage.Text}));
end;

function TJanuaCustomHealthBooking.SearchInstitutes(iItemID, iLimit: integer; aAddress: string;
aCoordinates: TJanuaRecordCoordinates; const iPage: integer = 1): integer;
var
  // AppUrl: string;
  aHeader: TJanuaHealthSearchHeader;
  aSearch: TJanuaHealthSearch;
begin
  FSearchItemID := iItemID;
  FSearchLimit := IfThen(iLimit = 0, 10, iLimit);
  FSearchPage := IfThen(iPage = 0, 1, iPage);

  FCoordinates.Coordinates := aCoordinates;
  if (aCoordinates.longitude = 0) and (aAddress <> '') then
    GeoCoding(aAddress);
  if SessionKey = '' then
  begin
    StartPublicWebSession;
  end
  else
  begin
    CheckSessionKey(SessionKey);
  end;
  // E' la chiave di Sessione fondamentale per mantenere la consistenza tra le sessioni usata come parametro nei
  // Forms e come variabile settata nei cookies di sessione.
  // FSearchItemID è uno dei dati persistenti memorizzati nella memoria ricerca-sessione e nei cookies
  FSearchItemID := iItemID;
  // User Profile viene invece impostato in base alla sessione attiva al momento della ricerca, di default è il
  // profilo pubblico di Dico33.com  (variabile Public del profilo dell'utente).
  FSearchAddress := aAddress;

  aHeader.Clear;
  aHeader.address := aAddress;
  aHeader.ItemID := iItemID;
  aHeader.Coordinates := aCoordinates;
  aHeader.Limit := iLimit;

  FBooking.SearchHeader := aHeader;

  CreateDataModule;
  try
    if InternalSearchInstitutes and Assigned(FmdsInstitutes) then
    begin
      Result := FmdsInstitutes.RecordCount;
      if Result > 0 then
      begin
        // Search ID è il numero di ricerca memorizzato sul server connessa con questa ricerca che ne memorizza
        // id prestazione ricercata e servirà successivamente per generare il Booking della prestazione

        FSearchID := FmdsInstitutes.FieldByName('id').AsLargeInt;
        aSearch.id := FSearchID;
        aSearch.Institutes := FInstitutes;
        FBooking.Search := aSearch;

        GenerateInstitutesHtml;
        GenerateInstitutesGMaps;
        GenerateInstitutesJson;
      end;

    end
    else
      Result := -1;
  finally
    if not KeepAlive then
      DestroyDataModule(False);
  end;

end;

function TJanuaCustomHealthBooking.SearchInstitutes(aHeader: TJanuaHealthSearchHeader): integer;
begin
  Result := SearchInstitutes(aHeader.ItemID, aHeader.Limit, aHeader.address, aHeader.Coordinates,
    aHeader.page)
end;

function TJanuaCustomHealthBooking.SearchServices(aSearch: string;
const bGenerateJson: boolean = true): integer;
begin
  Result := 0;
  if (SessionKey = '') and (SessionID = 0) then
  begin
    if Assigned(FJanuaServerSystem) then
    begin
      SessionKey := FJanuaServerSystem.StartSystemPublicWebSession('');
    end;
  end;

  CreateDataModule;
  try
    FSearchServices := aSearch;
    if InternalSearchServices then
    begin
      if bGenerateJson then
      begin
        RS.LoadFromDataset(mdsServices.MemDataset);
        Result := RS.Count;
        FJsonServices := RS.AsJson;
      end;
    end;

  finally
    DestroyDataModule(False);
  end;
end;

function TJanuaCustomHealthBooking.SendMailBooking(vMailMessage: TJanuaMailMessage;
vBookingID: int64): boolean;
begin
  FMailMessage.Clear;
  FMailMessage.Assign(vMailMessage);
  Result := OpenBooking(vBookingID);
  if Result then
  begin
    PrepareMailBooking(FMailMessage.Text);
    FMailMessage.MailTo := FBooking.UserProfile.User.Email;
    FMailMessage.BCC := 'info@dico33.com';
    Result := SendMail();
    if not Result then
    begin
      HasErrors := true;
      if LastErrorMessage = '' then
        LastErrorMessage := 'TJanuaCustomHealthBooking.SendMailBooking SendMail Error Booking_ID: ' +
          vBookingID.ToString;

      writelog('TJanuaCustomHealthBooking.SendMailBooking SendMail Error Booking_ID: ' + vBookingID.ToString +
        ' Message: ' + LastErrorMessage, true);
    end;
  end
  else
  begin
    HasErrors := true;
    writelog('TJanuaCustomHealthBooking.SendMailBooking Booking not found: ' + vBookingID.ToString +
      ' Message: ' + LastErrorMessage);
  end;
end;

procedure TJanuaCustomHealthBooking.setBooking(const Value: TJanuaHealthBooking);
begin
  FBooking := Value;
end;

procedure TJanuaCustomHealthBooking.SetBooking64(const Value: string);
var
  Temp: string;
begin
  FBooking.id64 := Value;
  // FBooking64 := Value;
  if FBooking.id64 <> '' then
  begin
    Temp := Janua.Core.Functions.Decode64UTF8(FBooking.id64);
    if IsNumeric(Temp) then
      FBookingID := Temp.ToInt64
    else
      raise Exception.Create('TJanuaCustomHealthBooking.SetBooking64 Error Booking64 Conversion');
  end;
end;

procedure TJanuaCustomHealthBooking.SetBookingID(const Value: int64);
begin
  FBooking.id := Value;
  FBooking.id64 := Janua.Core.Functions.Encode64UTF8(FBookingID.ToString);
end;

procedure TJanuaCustomHealthBooking.SetBookingInstitutes(const Value: TJanuaAnagraphs);
begin
  FBookingInstitutes := Value;
end;

procedure TJanuaCustomHealthBooking.setBookingRelative(const Value: TJanuaAnagraphRecord);
begin
  FBooking.Relative := Value;
end;

procedure TJanuaCustomHealthBooking.SetGMapsServices(const Value: string);
begin
  FGMapsServices := Value;
end;

procedure TJanuaCustomHealthBooking.SetHealthNotifications(const Value: TJanuaHealthNotifications);
begin
  FHealthNotifications := Value;
end;

procedure TJanuaCustomHealthBooking.SetHtmlServices(const Value: string);
begin
  FHtmlServices := Value;
end;

procedure TJanuaCustomHealthBooking.SetInstitueID(const Value: integer);
begin
  FInstitueID := Value;
end;

procedure TJanuaCustomHealthBooking.SetInstitute64(const Value: string);
var
  Temp: string;
begin
  if Value <> '' then
  begin
    Temp := Janua.Core.Functions.Decode64UTF8(Value);
    if IsNumeric(Temp) then
      FInstitueID := Temp.ToInteger()
    else
      raise Exception.Create('TJanuaCustomHealthBooking.SetInstitute64: Value is not a valid integer');
  end;
end;

procedure TJanuaCustomHealthBooking.SetInstitutes(const Value: TJanuaAnagraphs);
begin
  FInstitutes := Value;
end;

procedure TJanuaCustomHealthBooking.SetInstitutesGMapsHeadTemplate(const Value: string);
begin
  FInstitutesGMapsHeadTemplate := Value;
end;

procedure TJanuaCustomHealthBooking.SetInstitutesGMapsRowTemplate(const Value: string);
begin
  FInstitutesGMapsRowTemplate := Value;
end;

procedure TJanuaCustomHealthBooking.SetInstitutesHtmlGMaps(const Value: string);
begin
  FInstitutesHtmlGMaps := Value;
end;

procedure TJanuaCustomHealthBooking.SetInstitutesHtmlHeadTemplate(const Value: string);
begin
  FInstitutesHtmlHeadTemplate := Value;
end;

procedure TJanuaCustomHealthBooking.SetInstitutesHtmlList(const Value: string);
begin
  FInstitutesHtmlList := Value;
end;

procedure TJanuaCustomHealthBooking.SetInstitutesHtmlRowTemplate(const Value: string);
begin
  FInstitutesHtmlRowTemplate := Value;
end;

procedure TJanuaCustomHealthBooking.SetInstitutesJson(const Value: string);
begin
  FInstitutesJson := Value;
end;

procedure TJanuaCustomHealthBooking.SetJanuaServerSystem(const Value: TJanuaCustomServerSystem);
begin
  FJanuaServerSystem := Value;
end;

procedure TJanuaCustomHealthBooking.SetJanuaServices(const Value: TJanuaServices);
begin
  RS := Value;
end;

procedure TJanuaCustomHealthBooking.SetJsonServices(const Value: string);
begin
  FJsonServices := Value;
end;

procedure TJanuaCustomHealthBooking.setLatitude(const Value: Double);
begin
  FCoordinates.latitude := Value;

end;

procedure TJanuaCustomHealthBooking.setLongitude(const Value: Double);
begin
  FCoordinates.longitude := Value;
end;

procedure TJanuaCustomHealthBooking.SetmdsBooking(const Value: TJanuaJsonDacDataset);
begin
  FmdsBooking := Value;
end;

procedure TJanuaCustomHealthBooking.SetmdsBookingInstitutes(const Value: TJanuaJsonDacDataset);
begin
  FmdsBookingInstitutes := Value;
end;

procedure TJanuaCustomHealthBooking.SetmdsInstitutes(const Value: TJanuaJsonDacDataset);
begin
  FmdsInstitutes := Value;
end;

procedure TJanuaCustomHealthBooking.SetmdsMeetings(const Value: TJanuaJsonDacDataset);
begin
  FmdsMeetings := Value;
end;

procedure TJanuaCustomHealthBooking.SetmdsNotifications(const Value: TJanuaJsonDacDataset);
begin
  FmdsNotifications := Value;
end;

procedure TJanuaCustomHealthBooking.SetmdsPrescription(const Value: TJanuaJsonDacDataset);
begin
  FmdsPrescription := Value;
end;

procedure TJanuaCustomHealthBooking.SetmdsRelative(const Value: TJanuaJsonDacDataset);
begin
  FmdsRelative := Value;
end;

procedure TJanuaCustomHealthBooking.SetmdsServices(const Value: TJanuaJsonDacDataset);
begin
  FmdsServices := Value;
end;

procedure TJanuaCustomHealthBooking.SetMeetings(const Value: TJanuaHealthBookingRows);
begin
  FMeetings := Value;
end;

procedure TJanuaCustomHealthBooking.SetNetHTTPClient(const Value: TNetHTTPClient);
begin
  FNetHTTPClient := Value;
end;

function TJanuaCustomHealthBooking.SetNotificationRead(aNotificationID: int64): boolean;
begin
  CreateDataModule;
  try
    FNotificationID := aNotificationID;
    Result := InternalNotificationRead;
  finally
    if not KeepAlive then
      DestroyDataModule(False);
  end;
end;

procedure TJanuaCustomHealthBooking.setPrescription(const Value: TJanuaITHealthPrescription);
begin

end;

procedure TJanuaCustomHealthBooking.SetRecordServices(const Value: TJanuaServices);
begin
  FRecordServices := Value;
end;

procedure TJanuaCustomHealthBooking.SetSearchAddress(const Value: string);
begin
  FSearchAddress := Value;
end;

procedure TJanuaCustomHealthBooking.SetSearchID(const Value: int64);
begin
  FSearchID := Value;
end;

procedure TJanuaCustomHealthBooking.SetSearchItemID(const Value: int64);
begin
  FSearchItemID := Value;
end;

procedure TJanuaCustomHealthBooking.Setselect1(const Value: integer);
begin
  Fselect1 := Value;
end;

procedure TJanuaCustomHealthBooking.Setselect2(const Value: integer);
begin
  Fselect2 := Value;
end;

procedure TJanuaCustomHealthBooking.Setselect3(const Value: integer);
begin
  Fselect3 := Value;
end;

procedure TJanuaCustomHealthBooking.SetUPServices;
begin
  CreateDataModule;
  try
    InternalSetUPServices;
    RS.LoadFromDataset(FmdsServices.MemDataset);
    FServices := RS.AsHtml;
    FJsonServices := RS.AsJson;
  finally
    if not KeepAlive then
      DestroyDataModule(False);
  end;
end;

procedure TJanuaCustomHealthBooking.SetTableInstitutes(const Value: TJanuaJsonDacDataset);
begin
  FTableInstitutes := Value;
end;

procedure TJanuaCustomHealthBooking.SetVqrySearchServices(const Value: TJanuaJsonDacDataset);
begin
  FVqrySearchServices := Value;
end;

{ TJanuaWebSessionHealth }

{$IF Defined(WEBBROKER)}

procedure TJanuaWebSessionHealth.ActionChoice(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
var Handled: boolean; InternalCall: boolean);
begin
  /// funzione Confirm Action del Controller da Chiamare ...............................................
  InternalCreateController;
  try
    GetSessionRequest(Request);

    FJanuaHealthController.Institute64 := Janua.Core.Functions.HttpGetParamValue(Request, 'anagraph_id');
    FJanuaHealthController.booking64 := Janua.Core.Functions.HttpGetParamValue(Request, 'booking_id');

    if FJanuaHealthController.ActionChoice then
    begin
      WebResponseController(Response);
      Handled := true;
    end
    else
    begin
      // Chiama l'action di gestione di Errore 501 ..... e ne ottiene i parametri .........
      FJanuaHealthController.Action501;
      begin
        WebResponse501(Response);
        Handled := true;
      end;
    end;
  finally
    // in caso di chiamata interna lascio all'esterno l'handler di distruzione del Controller .............
    InternalDestroyController;
  end;
end;

procedure TJanuaWebSessionHealth.ActionDashboard(Sender: TObject; Request: TWebRequest;
Response: TWebResponse; var Handled: boolean; InternalCall: boolean = False);
begin
  /// funzione Confirm Action del Controller da Chiamare ...............................................
  InternalCreateController;
  try
    GetSessionRequest(Request);
    if FJanuaHealthController.ActionDashboard(6) then
    begin
      WebResponseController(Response);
      Handled := true;
    end
    else
    begin
      // Chiama l'action di gestione di Errore 501 ..... e ne ottiene i parametri .........
      FJanuaHealthController.Action501;
      begin
        WebResponse501(Response);
        Handled := true;
      end;
    end;
  finally
    // in caso di chiamata interna lascio all'esterno l'handler di distruzione del Controller .............
    InternalDestroyController;
  end;
end;

procedure TJanuaWebSessionHealth.ActionCheckOut(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
var Handled: boolean; InternalCall: boolean);
begin
  /// funzione Confirm Action del Controller da Chiamare ...............................................
  InternalCreateController;
  try
    GetSessionRequest(Request);
    if FJanuaHealthController.ActionCheckOut then
    begin
      WebResponseController(Response);
      Handled := true;
    end
    else
    begin
      // Chiama l'action di gestione di Errore 501 ..... e ne ottiene i parametri .........
      FJanuaHealthController.Action501;
      begin
        WebResponse501(Response);
        Handled := true;
      end;
    end;
  finally
    // in caso di chiamata interna lascio all'esterno l'handler di distruzione del Controller .............
    InternalDestroyController;
  end;
end;

procedure TJanuaWebSessionHealth.ActionConfirmation(Sender: TObject; Request: TWebRequest;
Response: TWebResponse; var Handled: boolean; InternalCall: boolean = False);
begin
  /// funzione Confirm Action del Controller da Chiamare ...............................................
  InternalCreateController;
  try
    GetSessionRequest(Request);
    if FJanuaHealthController.ActionConfirmation then
    begin
      WebResponseController(Response);
      Handled := true;
    end
    else
    begin
      // Chiama l'action di gestione di Errore 501 ..... e ne ottiene i parametri .........
      WebResponse501(Response);
      Handled := true;
    end;
  finally
    // in caso di chiamata interna lascio all'esterno l'handler di distruzione del Controller .............
    InternalDestroyController;
  end;
end;

procedure TJanuaWebSessionHealth.ActionDoLogin(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
var Handled: boolean; aFrame: boolean = False);
var
  Username, Password: string;

begin
  InternalCreateController;
  try
    GetSessionRequest(Request);
    FJanuaHealthController.Username := Janua.Core.Functions.HttpGetParamValue(Request, 'username');
    FJanuaHealthController.Password := Janua.Core.Functions.HttpGetParamValue(Request, 'password');
    if FJanuaHealthController.ActionDoLogin then
    begin
      WebResponseController(Response);
      Handled := true;
    end
    else
    begin
      // Chiama l'action di gestione di Errore 501 ..... e ne ottiene i parametri .........
      FJanuaHealthController.Action501;
    end;

  finally
    InternalDestroyController;
  end;
end;

procedure TJanuaWebSessionHealth.ActionDoLogout(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
var Handled: boolean; InternalCall: boolean);
begin
  GetSessionRequest(Request);
  InternalCreateController;
  try
    if FJanuaHealthController.ActionDoLogout then
    begin
      WebResponseController(Response);
      Handled := true;
    end
    else
    begin
      // Chiama l'action di gestione di Errore 501 ..... e ne ottiene i parametri .........
      FJanuaHealthController.Action501;
    end;

  finally
    InternalDestroyController;
  end;
end;

procedure TJanuaWebSessionHealth.ActionDoRegister(Sender: TObject; Request: TWebRequest;
Response: TWebResponse; var Handled: boolean);
var
  aUserProfile: TJanuaRecordUserProfile;
begin
  InternalCreateController;
  try
    GetSessionRequest(Request);
    aUserProfile.LoadFromHttpParams(Request);
    FJanuaHealthController.UserProfile := aUserProfile;
    if FJanuaHealthController.ActionDoRegister then
    begin
      WebResponseController(Response);
      Handled := true;
    end
    else
    begin
      // Chiama l'action di gestione di Errore 501 ..... e ne ottiene i parametri .........
      FJanuaHealthController.Action501;
    end;
  finally
    InternalDestroyController;
  end;
end;

procedure TJanuaWebSessionHealth.ActionPage(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
var Handled: boolean; InternalCall: boolean = False);
var
  aPage: string;
begin
  // importantissimo sempre inizializzare tutte le variabili anche gli Interi .......
  StartSession;
  try
    GetSessionRequest(Request);
    aPage := Janua.Core.Functions.HttpGetParamValue(Request, 'page');
    // esegue una verifica su booking_id per controllare se è il medesimo di sBooking.
    // if booking_id = 0 then
    // booking_id := Janua.Core.Functions.HttpGetCookieInteger(Request, 'booking_id');
    if (aPage <> '') and FJanuaHealthController.ActionPage(aPage) then
    begin
      WebResponseController(Response);
      Handled := true;
    end
    else
    begin
      // Chiama l'action di gestione di Errore 501 ..... e ne ottiene i parametri .........
      FJanuaHealthController.Action404;
      WebResponseController(Response);
      Handled := true;
    end;
  finally
    StopSession
  end;

end;

procedure TJanuaWebSessionHealth.ActionFinalisation(Sender: TObject; Request: TWebRequest;
Response: TWebResponse; var Handled: boolean; InternalCall: boolean);
var
  sText: TStrings;
  sBooking: Janua.Core.Health.TJanuaHealthBooking;
  aMime: TJanuaMime;
  booking_id: int64;
  sCookie, sSessionKey: string;
begin
  sBooking.Clear;
  booking_id := 0;
  // importantissimo sempre inizializzare tutte le variabili anche gli Interi .......
  StartSession;
  try
    GetSessionRequest(Request);
    sBooking.Clear;
    // sBooking.id := Janua.Core.Functions.HttpGetParamInteger('booking_id');
    // esegue una verifica su booking_id per controllare se è il medesimo di sBooking.
    if booking_id = 0 then
      booking_id := Janua.Core.Functions.HttpGetParamInteger(Request, 'booking_id');
    // if booking_id = 0 then
    // booking_id := Janua.Core.Functions.HttpGetCookieInteger(Request, 'booking_id');
    sBooking.LoadFromHttpParams(Request);
    if FJanuaHealthController.ActionFinalisation(sBooking) then
    begin
      WebResponseController(Response);
      Handled := true;
    end
    else
    begin
      // Chiama l'action di gestione di Errore 501 ..... e ne ottiene i parametri .........
      FJanuaHealthController.Action501;
      WebResponseController(Response);
      Handled := true;
    end;
  finally
    StopSession
  end;

end;

function TJanuaWebSessionHealth.CheckPublicAction(Sender: TObject; Request: TWebRequest;
Response: TWebResponse; var Handled: boolean; vToPage: TJanuaWebPage): boolean;
begin
  {
    Result := FJanuaHealthController.IsPublic;
    if Result then
    begin

    ActionLogin(Sender, Request, Response, Handled);
    end;
  }
  Result := False;
  { TODO : Web Session Health Implement Check Public Action }
end;

procedure TJanuaWebSessionHealth.HealthServicesDACAction(Sender: TObject; Request: TWebRequest;
Response: TWebResponse; var Handled: boolean);
var
  vSearch: string;
begin
  GetSessionRequest(Request);

  vSearch := Janua.Core.Functions.HttpGetParamValue(Request, 'search');
  if Length(vSearch) > 1 then
    FJanuaHealthController.ActionSearchDACServices(vSearch);
  JsonResponseController(Response);
  Handled := true;
end;

procedure TJanuaWebSessionHealth.HealthServicesAction(Sender: TObject; Request: TWebRequest;
Response: TWebResponse; var Handled: boolean);
var
  vSearch: string;
begin
  GetSessionRequest(Request);
  vSearch := Janua.Core.Functions.HttpGetParamValue(Request, 'search');
  if Length(vSearch) > 1 then
    FJanuaHealthController.ActionSearchServices(vSearch);
  JsonResponseController(Response);
  Handled := true;
end;

procedure TJanuaWebSessionHealth.JsonResponseController(Response: TWebResponse);
var
  sJson: string;
begin
  SetCookies(7, Response, true);
  if Assigned(FJanuaHealthController) then
    sJson := FJanuaHealthController.JsonResponse;
  Janua.Core.Http.EncodeUTF8Response(Response, sJson, FJanuaHealthController.Mime.MimeString);
  Response.SendResponse;
end;

procedure TJanuaWebSessionHealth.WebResponse404(Response: TWebResponse);
begin
  Response.StatusCode := 404;
  if Assigned(FJanuaHealthController) then
    Janua.Core.Http.EncodeUTF8Response(Response, FJanuaHealthController.WebResponse.Text,
      FJanuaHealthController.Mime.MimeString);
  Response.SendResponse;
end;

procedure TJanuaWebSessionHealth.WebResponse501(Response: TWebResponse);
begin
  Response.StatusCode := 501;
  if Assigned(FJanuaHealthController) then
    Janua.Core.Http.EncodeUTF8Response(Response, FJanuaHealthController.WebResponse.Text,
      FJanuaHealthController.Mime.MimeString);
  Response.SendResponse;
end;

procedure TJanuaWebSessionHealth.WebResponseController(Response: TWebResponse);
begin
  SetCookies(7, Response);
  if Assigned(FJanuaHealthController) then
    Janua.Core.Http.EncodeUTF8Response(Response, FJanuaHealthController.WebResponse.Text,
      FJanuaHealthController.Mime.MimeString);
  Response.SendResponse;
end;

procedure TJanuaWebSessionHealth.Action404(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
var Handled: boolean; InternalCall: boolean);
begin
  // Default Handler Action ..................................
  // primo step preparare il Controller ......................
  InternalCreateController;
  try
    // HS.JanuaPostgresSystem := JanuaPostgresSystem;
    // HS.Root := JanuaApplicationProfile1.ProtocolUrl;
    // HS.GetSessionRequest(Request);
    // il gestore di Sessione è disabilitato per le pagine di Errore 404
    // mantengo attiva l'analisi dei cookies
    GetSessionRequest(Request);
    if FJanuaHealthController.Action404 then
    begin
      WebResponse404(Response);
      Handled := true;
    end
    else
    begin
      // Chiama l'action di gestione di Errore 501 ..... e ne ottiene i parametri .........
      FJanuaHealthController.Action501;
      WebResponse501(Response);
    end;
  finally
    InternalDestroyController;
  end;
end;

procedure TJanuaWebSessionHealth.ActionBookingSearch(Sender: TObject; Request: TWebRequest;
Response: TWebResponse; var Handled: boolean);
begin

  // Default Handler Action ..................................
  // primo step preparare il Controller ......................
  InternalCreateController;
  try
    // HS.JanuaPostgresSystem := JanuaPostgresSystem;
    // HS.Root := JanuaApplicationProfile1.ProtocolUrl;
    // HS.GetSessionRequest(Request);
    GetSessionRequest(Request);
    if FJanuaHealthController.ActionBookingSearch then
    begin
      WebResponseController(Response);
      Handled := true;
    end
    else
    begin
      // Chiama l'action di gestione di Errore 501 ..... e ne ottiene i parametri .........
      FJanuaHealthController.Action501;
    end;
  finally
    InternalDestroyController;
  end;
end;

procedure TJanuaWebSessionHealth.ActionRestHealthSearch(Sender: TObject; Request: TWebRequest;
Response: TWebResponse; var Handled: boolean; InternalCall: boolean);
var
  sAddress, sService: string;
  page: integer;
begin
  // Default Handler Action ..................................
  // primo step preparare il Controller ......................
  InternalCreateController;
  try
    // HS.JanuaPostgresSystem := JanuaPostgresSystem;
    // HS.Root := JanuaApplicationProfile1.ProtocolUrl;
    // HS.GetSessionRequest(Request);
    GetSessionRequest(Request);

    // i parametri attesi per la funzione sono i parametri address e service che devono essere valorizzati per procedere
    sAddress := Janua.Core.Functions.HttpGetParamValue(Request, 'address');
    sAddress := StringReplace(sAddress, '+', ' ', [rfReplaceAll, rfIgnoreCase]);
    FJanuaHealthController.address := sAddress;
    // legge sService.
    sService := Janua.Core.Functions.HttpGetParamValue(Request, 'service');

    page := 0;
    page := Janua.Core.Functions.HttpGetParamInteger(Request, 'page');

    FJanuaHealthController.search_page := IfThen(page > 0, page, 1);

    if Janua.Core.Functions.IsNumeric(sService) then
      FJanuaHealthController.service_id := sService.ToInteger
    else
      FJanuaHealthController.service_id := 0;

    if FJanuaHealthController.ActionRestHealthSearch then
    begin
      JsonResponseController(Response);
      Handled := true;
    end
    else
    begin
      // Chiama l'action di gestione di Errore 501 ..... e ne ottiene i parametri .........
    end;
  finally
    InternalDestroyController;
  end;
end;

procedure TJanuaWebSessionHealth.ActionHealthRestInstitutes(Sender: TObject; Request: TWebRequest;
Response: TWebResponse; var Handled: boolean);
var
  booking_id: int64;
  page: integer;
begin
  // Default Handler Action ..................................
  // primo step preparare il Controller ......................
  InternalCreateController;
  try
    booking_id := 0;
    booking_id := Janua.Core.Functions.HttpGetParamInteger(Request, 'booking_id');

    if (booking_id <> 0) and Assigned(FJanuaHealthController) then
    begin
      FJanuaHealthController.bookingID := booking_id;

      if FJanuaHealthController.ActionHealthRestInstitutes then
      begin
        JsonResponseController(Response);
        Handled := true;
      end
      else
      begin
        // Chiama l'action di gestione di Errore 501 ..... e ne ottiene i parametri .........
        Response.Content := Janua.Core.JSON.JsonError('Error search: ');
        Response.SendResponse;
        Handled := true;
      end;
    end
    else
    begin
      Response.Content := Janua.Core.JSON.JsonError('Booking_id not set');
      Response.SendResponse;
      Handled := true;
    end;
  finally
    InternalDestroyController;
  end;
end;

procedure TJanuaWebSessionHealth.ActionHomeDefault(Sender: TObject; Request: TWebRequest;
Response: TWebResponse; var Handled: boolean);
begin
  // Default Handler Action ..................................
  // primo step preparare il Controller ......................
  InternalCreateController;
  try
    // HS.JanuaPostgresSystem := JanuaPostgresSystem;
    // HS.Root := JanuaApplicationProfile1.ProtocolUrl;
    // HS.GetSessionRequest(Request);
    GetSessionRequest(Request);
    if FJanuaHealthController.ActionHomeSearch then
    begin
      WebResponseController(Response);
      Handled := true;
    end
    else
    begin
      // Chiama l'action di gestione di Errore 501 ..... e ne ottiene i parametri .........
      { TODO : Gestire Errore 501 DatassnapApp }
    end;
  finally
    InternalDestroyController;
  end;

end;

procedure TJanuaWebSessionHealth.ActionLogin(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
var Handled: boolean; InternalCall: boolean = False; aFrame: boolean = False);
begin
  // procedura che processa la login o la registrazione dell'utente al sito Dico33 ..............
  // Default Handler Action ..................................
  // primo step preparare il Controller ......................
  InternalCreateController;
  try
    // HS.JanuaPostgresSystem := JanuaPostgresSystem;
    // HS.Root := JanuaApplicationProfile1.ProtocolUrl;
    // HS.GetSessionRequest(Request);
    GetSessionRequest(Request);
    if FJanuaHealthController.ActionLogin then
    begin
      WebResponseController(Response);
      Handled := true;
    end
    else
    begin
      // Chiama l'action di gestione di Errore 501 ..... e ne ottiene i parametri .........
      FJanuaHealthController.Action501;
    end;
  finally
    InternalDestroyController;
  end;
  // ..............................................................................................
end;

procedure TJanuaWebSessionHealth.ActionRestFinalisation(Sender: TObject; Request: TWebRequest;
Response: TWebResponse; var Handled: boolean; InternalCall: boolean);
begin
  // procedura che processa la login o la registrazione dell'utente al sito Dico33 ..............
  // Default Handler Action ..................................
  // primo step preparare il Controller ......................
  InternalCreateController;
  try
    // HS.JanuaPostgresSystem := JanuaPostgresSystem;
    // HS.Root := JanuaApplicationProfile1.ProtocolUrl;
    // HS.GetSessionRequest(Request);
    GetSessionRequest(Request);
    if FJanuaHealthController.booking_id = 0 then
      FJanuaHealthController.booking_id := Janua.Core.Functions.HttpGetParamInteger(Request, 'booking_id');
    if FJanuaHealthController.booking_id = 0 then
      FJanuaHealthController.booking_id := Janua.Core.Functions.HttpGetCookieInteger(Request, 'booking_id');

    if FJanuaHealthController.ActionRestFinalisation then
    begin
      WebResponseController(Response);
      Handled := true;
    end
    else
    begin
      // Chiama l'action di gestione di Errore 501 ..... e ne ottiene i parametri .........
      FJanuaHealthController.Action501;
    end;
  finally
    InternalDestroyController;
  end;
end;

procedure TJanuaWebSessionHealth.GetSessionRequest(const aRequest: TWebRequest);
var
  sCookie, sFrom, sTo, sItem, sService: string;
  iTest: TJanuaWebPage;
begin
  StartSession;
  inherited;
  if aRequest.CookieFields.Count > 0 then
  begin
    sService := aRequest.CookieFields.Values['service'];

    if Janua.Core.Functions.IsNumeric(sService) then
      FJanuaHealthController.JanuaServerHealthBooking.SearchItemID := sService.ToInt64
    else
      FJanuaHealthController.JanuaServerHealthBooking.SearchItemID := 0;

    sItem := aRequest.CookieFields.Values['item_id'];
    if (sItem <> '') and IsNumeric(sItem) then
      FJanuaHealthController.JanuaServerHealthBooking.SearchItemID := sItem.ToInt64;

    sTo := aRequest.CookieFields.Values['to_page'];

    if sTo = '' then
      FJanuaHealthController.ToPage := TJanuaWebPage.jwpNone
    else
    begin
      for iTest := TJanuaWebPage.jwpHome to TJanuaWebPage.jwpNone do
        if sTo.ToLower = sJanuaWebPageUrl[iTest].ToLower then
          FJanuaHealthController.ToPage := iTest;
    end;

    sFrom := aRequest.CookieFields.Values['from_page'];

    if sFrom = '' then
      FJanuaHealthController.FromPage := TJanuaWebPage.jwpNone
    else
    begin
      for iTest := TJanuaWebPage.jwpHome to TJanuaWebPage.jwpNone do
        if sFrom.ToLower = sJanuaWebPageUrl[iTest].ToLower then
          FJanuaHealthController.FromPage := iTest;
    end;

    // AddCookie(aResponse, 7, 'booking_id', FBookingID.ToString);
    FJanuaHealthController.JanuaServerHealthBooking.bookingID := 0;
    FJanuaHealthController.JanuaServerHealthBooking.bookingID := HttpGetParamInteger(aRequest, 'booking_id');

    if FJanuaHealthController.JanuaServerHealthBooking.bookingID = 0 then
    begin
      sCookie := aRequest.CookieFields.Values['booking_id'];
      if (sCookie <> '') and IsNumeric(sCookie) then
        FJanuaHealthController.JanuaServerHealthBooking.bookingID := sCookie.ToInt64;
    end;

    {
      sCookie := aRequest.CookieFields.Values['user_id'];
      if (sCookie <> '') and IsNumeric(sCookie) then
      UserProfile.User.id := sCookie.ToInt64;
    }
    writelog(', FItemID=' + FJanuaHealthController.JanuaServerHealthBooking.SearchItemID.ToString +
      ', user_id=' + FJanuaHealthController.JanuaServerHealthBooking.UserProfile.User.id.ToString);
  end;
end;

procedure TJanuaWebSessionHealth.RestNotificationsAction(Sender: TObject; Request: TWebRequest;
Response: TWebResponse; var Handled: boolean);
begin
  StartSession;
  GetSessionRequest(Request);
  if Assigned(FJanuaHealthController) then
    if JanuaHealthController.ActionRestNotifications then
      JsonResponseController(Response);
  {
    SetCookies(7, Response);
    Response.SendResponse;
  }
  Handled := true;

end;

procedure TJanuaWebSessionHealth.RestHealthBookingAction(Sender: TObject; Request: TWebRequest;
Response: TWebResponse; var Handled: boolean);
begin
  FJanuaHealthController.Institute1 := Janua.Core.Functions.HttpGetParamInteger(Request, 'institute1');
  FJanuaHealthController.Institute2 := Janua.Core.Functions.HttpGetParamInteger(Request, 'institute2');
  FJanuaHealthController.Institute3 := Janua.Core.Functions.HttpGetParamInteger(Request, 'institute3');
  FJanuaHealthController.address := Janua.Core.Functions.HttpGetParamValue(Request, 'address');
  FJanuaHealthController.service_id := Janua.Core.Functions.HttpGetParamInteger(Request, 'service_id');
  FJanuaHealthController.search_id := 0;

  begin
    // sospesi cookies
    GetSessionRequest(Request);
    // ..Values['search_id'].ToInt64;
  end;
  if FJanuaHealthController.search_id = 0 then
    FJanuaHealthController.search_id := Janua.Core.Functions.HttpGetParamInteger(Request, 'search_id');
  // booking_id := Janua.Core.Functions.HttpGetParamInteger(Request, 'booking_id');
  // JanuaServerHealthBooking1.OpenBooking(booking_id);
  FJanuaHealthController.ActionBooking;
  JsonResponseController(Response);
  {
    SetCookies(7, Response);
    Response.Content := FJanuaHealthController.JsonResponse;
    Response.ContentType := FJanuaHealthController.Mime.MimeString;
    Response.SendResponse;
  }
  Handled := true;
end;

procedure TJanuaWebSessionHealth.RestHealthSearchAction(Sender: TObject; Request: TWebRequest;
Response: TWebResponse; var Handled: boolean);
begin
  // Implementare la procedura in futuro .....
end;

procedure TJanuaWebSessionHealth.SetCookies(aValid: integer; var aResponse: TWebResponse;
isJson: boolean = False);
var
  sFrom, sTo, sCookie: string;
begin
  inherited;
  sCookie := FJanuaHealthController.bookingID.ToString;
  Janua.Core.Functions.AddCookie(aResponse, aValid, 'booking_id', sCookie);
  sCookie := FJanuaHealthController.search_id.ToString;
  Janua.Core.Functions.AddCookie(aResponse, aValid, 'search_id', sCookie);
  // imposto sia session_id che session_key
  sCookie := FJanuaHealthController.SessionKey;
  Janua.Core.Functions.AddCookie(aResponse, aValid, 'session_key', sCookie);
  Janua.Core.Functions.AddCookie(aResponse, aValid, 'session_id', sCookie);
  sCookie := FJanuaHealthController.service_id.ToString;
  AddCookie(aResponse, aValid, 'service', sCookie);
  sCookie := FJanuaHealthController.JanuaServerHealthBooking.SearchItemID.ToString;
  AddCookie(aResponse, aValid, 'item_id', sCookie);
  if not isJson then
  begin
    sFrom := sJanuaWebPageUrl[FJanuaHealthController.FromPage];
    AddCookie(aResponse, aValid, 'from_page', sFrom);
    sTo := sJanuaWebPageUrl[FJanuaHealthController.ToPage];
    AddCookie(aResponse, aValid, 'to_page', sTo);
  end;

end;

procedure TJanuaWebSessionHealth.WritePage(var aResponse: TWebResponse);
begin
  inherited;
  // aUrl := Janua.Core.Functions.URLEncode(Session_id);
  // sul server le action vanno corredate da /dico33
  with (FJanuaHealthController.FJanuaServerHealthBooking as TJanuaCustomHealthBooking) do
  begin
    aResponse.Content := StringReplace(aResponse.Content, '$actionsearch$',
      FRoot + '/search' + '?sid=' + SessionKey, [rfReplaceAll, rfIgnoreCase]);

    aResponse.Content := StringReplace(aResponse.Content, '$confirm$', FRoot + '/confirm' + '?sid=' +
      SessionKey, [rfReplaceAll, rfIgnoreCase]);

    aResponse.Content := StringReplace(aResponse.Content, '$actionbooking$',
      FRoot + '/booking' + '?sid=' + SessionKey, [rfReplaceAll, rfIgnoreCase]);

    SetCookies(7, aResponse);
    aResponse.Content := StringReplace(aResponse.Content, '$messages$', Messages, [rfReplaceAll]);
  end;
end;

{$ENDIF Defined(MSWINDOWS)}

constructor TJanuaWebSessionHealth.Create(AOwner: TComponent);
begin
  inherited;

end;

destructor TJanuaWebSessionHealth.Destroy;
begin

  inherited;
end;

function TJanuaWebSessionHealth.Messages: string;
begin
  Result := inherited;
  if TJanuaApplication.TestMode then
    with (FJanuaHealthController.JanuaServerHealthBooking as TJanuaCustomHealthBooking) do
    begin
      Result := Result + '<p>' + 'address = ' + FJanuaHealthController.address + ' - service_id = ' +
        FJanuaHealthController.service_id.ToString + '</p>';

      Result := Result + '<p> Activity log: </p>' + '<p> ' + 'BookingID: ' + bookingID.ToString +
        ' SearchID: ' + bookingID.ToString + ' Item_ID: ' + SearchItemID.ToString + '</p>';
    end;
end;

procedure TJanuaWebSessionHealth.SetJanuaHealthWebController(const Value: TJanuaHealthWebController);
begin
  FJanuaHealthController := Value;
  FJanuaController := Value;
end;

{ TJanuaTemplateHealth }

function TJanuaTemplateHealth.PreparePage(const aPage: string): boolean;
begin
  PrepareTemplate('Dico33', 'HiteshiPageCheckOut.html', aPage);
  Result := true;
end;

function TJanuaTemplateHealth.PreparePage501: boolean;
begin
  PrepareTemplate('Dico33', 'HiteshiPage1.html', 'body501.html');
  Result := true;
end;

procedure TJanuaTemplateHealth.PreparePageBooking;
begin
  ShowBooking;
end;

procedure TJanuaTemplateHealth.PreparePageBookingCompletion;
begin
  PrepareTemplate('Dico33', 'HiteshiPage1.html', 'bodyhiteshi3.html');
end;

procedure TJanuaTemplateHealth.PreparePageContent;
begin
  inherited;
end;

procedure TJanuaTemplateHealth.PreparePageLogin;
begin
  PrepareTemplate('Dico33', 'HiteshiPageLogin.html', 'bodylogin.html');
end;

procedure TJanuaTemplateHealth.PrepareBookingSearch;
begin
  PrepareTemplate('Dico33', 'HiteshiPage1.html', 'bodyhiteshi2.html');
end;

procedure TJanuaTemplateHealth.PrepareFinalisation;
begin
  PrepareTemplate('Dico33', 'HiteshiPageFinal.html', 'bodyfinalisation.html');
end;

procedure TJanuaTemplateHealth.PrepareHomeSearch;
begin
  // PrepareTemplate(FNameSpace, 'SearchPage.html', 'bodysearch.html');
  PrepareTemplate('Dico33', 'HiteshiPage1.html', 'bodyhiteshi1.html');
  // PrepareTemplate('Dico33', 'HomePage.html', 'bodyhiteshi1.html');
end;

procedure TJanuaTemplateHealth.PrepareMailBookingChoice;
begin
  PrepareMailTemplate(FNameSpace, 'BookingChoice.html', '', '');
  { TODO : Terminare la procedura Mail Password con il link ad user_id e un Token di recupero pwd }
  UserProfile.User.id.ToString
end;

procedure TJanuaTemplateHealth.PrepareMailBookingConfirmation;
begin
  PrepareMailTemplate(FNameSpace, 'BookingConfirmation.html', '', '');
  { TODO : Terminare la procedura Mail Password con il link ad user_id e un Token di recupero pwd }
  UserProfile.User.id.ToString
end;

procedure TJanuaTemplateHealth.PrepareMailMeetingReminder;
begin
  { TODO : Mettere qui la mail del promemoria del Meeting con il medico confermato }
end;

procedure TJanuaTemplateHealth.SetJanuaHealthBooking(const Value: TJanuaCustomHealthBooking);
begin
  FJanuaHealthBooking := Value;
end;

procedure TJanuaTemplateHealth.SetMessageBuilder(const Value: IJanuaMailMessageBuilder);
begin
  FMessageBuilder := Value;
end;

procedure TJanuaTemplateHealth.ShowBooking(HS: TJanuaCustomHealthBooking);
begin
  FJanuaHealthBooking := HS;
  PrepareTemplate(NameSpace, 'ConfirmPage.html', 'bodyConfirm');
  AddTemplate('homehead', 'homehead');
  FTemplate.Text := StringReplace(FTemplate.Text, '$title$',
    'Dico33 Cerca e prenota con noi in pi&ugrave di 700 strutture in Italia', [rfReplaceAll, rfIgnoreCase]);
  FTemplate.Text := StringReplace(FTemplate.Text, '$institutes$', HS.InstitutesHtmlList,
    [rfReplaceAll, rfIgnoreCase]);
  { TODO : JanuaMailSender.MsgText }
  { JanuaMailSender.MsgText.SetText (StringReplace(JanuaMailSender.MsgText.GetText, '$confirmmail$',
    'https://app.ergomercator.com/dico33/booking?session=' + HS.SessionKey + '& ' + 'booking_id=' +
    HS.bookingID.ToString, [rfReplaceAll, rfIgnoreCase])); }
  MessageBuilder.sTo := HS.UserProfile.User.Email;
  JanuaMailSender.SendMail;
end;

procedure TJanuaTemplateHealth.ShowBooking;
begin
  ShowBooking(FJanuaHealthBooking);
end;

procedure TJanuaTemplateHealth.TerminatePageBooking;
begin
  TerminatePageContent
end;

procedure TJanuaTemplateHealth.TerminatePageBookingCompletion;
begin
  TerminatePageContent
end;

procedure TJanuaTemplateHealth.TerminatePageConfirmation;
begin
  TerminatePageContent
end;

procedure TJanuaTemplateHealth.TerminatePageContent;
begin
  inherited;
  if Assigned(FJanuaHealthBooking) then
  begin
    if FJanuaHealthBooking.IsPublic then
    begin
      ReplaceTemplateString('login', 'login');
      // http://www.dico33.com/$actioninbox$    /health/dashboard
      ReplaceTemplateString('actioninbox', 'login');
      ReplaceTemplateString('loginlabel', 'Accedi');
      ReplaceTemplateString('firstname', 'Area Utente');
    end
    else
    begin
      ReplaceTemplateString('login', 'dologout');
      ReplaceTemplateString('actioninbox', 'health/dashboard');
      ReplaceTemplateString('loginlabel', 'Esci');
      ReplaceTemplateString('firstname', FJanuaHealthBooking.UserProfile.FirstName);
    end;
  end;
end;

procedure TJanuaTemplateHealth.TerminatePageDashboard;
begin
  TerminatePageContent
end;

procedure TJanuaTemplateHealth.TerminatePageFinalisation;
begin
  TerminatePageContent
end;

procedure TJanuaTemplateHealth.TerminatePageLogin;
begin
  TerminatePageContent;
  {
    <form class="login-form" action="$confirm$" method="post">
    $logintitle$
  }
  ReplaceTemplateString('logintitle', 'Inserisci nome utente e password o registrati per accedere a Dico33');
  // url dologin è l'url di 'passaggio che permette di eseguire una login ...................
  ReplaceTemplateString('confirm', '/dologin');
  // logintitle il motto della Login del sito di Dico33.
  // ReplaceTemplateString('logintitle');
  // actionregister
  ReplaceTemplateString('actionregister', '/register');
  ReplaceTemplateString('actionforget', '/forgetpassword');
end;

procedure TJanuaTemplateHealth.TerminatePageProfile;
begin
  TerminatePageContent
end;

procedure TJanuaTemplateHealth.TerminateFinalisation;
begin
  TerminatePageContent
end;

procedure TJanuaTemplateHealth.TerminateHomeSearch;
begin
  TerminatePageContent
end;

{ TJanuaHealthWebController }

function TJanuaHealthWebController.ActionPage(aPage: string): boolean;
begin
  FTemplateHealth.PreparePage(aPage);
  FTemplateHealth.TerminatePageContent;
  Mime.MimeType := TJanuaMimeType.jmtTextHtml;
  Result := true;
  WebResponse.Text := FTemplateHealth.Template.Text;
end;

function TJanuaHealthWebController.Action404(aFrame: boolean = False): boolean;
begin
  // Completely overrides original method
  FTemplateHealth.PreparePage404;
  FTemplateHealth.TerminatePageContent;
  Mime.MimeType := TJanuaMimeType.jmtTextHtml;
  Result := true;
  WebResponse.Text := FTemplateHealth.Template.Text;
end;

function TJanuaHealthWebController.ActionBooking: boolean;
var
  sMessage: string;
  JSON: TJsonObject;
begin
  Result := False;
  FJanuaServerHealthBooking.select1 := Institute1;
  FJanuaServerHealthBooking.select2 := Institute2;
  FJanuaServerHealthBooking.select3 := Institute3;
  FJanuaServerHealthBooking.latitude := 0;
  FJanuaServerHealthBooking.longitude := 0;
  FJanuaServerHealthBooking.SearchID := search_id;
  FJanuaServerHealthBooking.SessionKey := SessionKey;

  if (search_id = 0) and (Faddress > '') and (Fservice_id > 0) then
  begin
    if FJanuaServerHealthBooking.SearchInstitutes(Fservice_id, 10, Faddress, FCoordinates) > 0 then
    begin
      search_id := FJanuaServerHealthBooking.SearchID;
      booking_id := FJanuaServerHealthBooking.DoBooking;
      FJanuaServerHealthBooking.OpenBooking;
      Result := true;
      sMessage := 'Booking OK';
    end
    else
    begin
      Result := False;
      sMessage := 'Booking Error';
    end;
  end
  else if (search_id > 0) then
  begin
    booking_id := FJanuaServerHealthBooking.DoBooking;
    FJanuaServerHealthBooking.OpenBooking;
    Result := true;
    sMessage := 'Booking OK';
    Result := booking_id > -1;
  end
  else if (search_id = 0) and (Faddress = '') then
  begin
    sMessage := 'Error address not set';
    Result := False;
  end
  else if (search_id = 0) and (service_id = 0) then
  begin
    sMessage := 'Error search service not set';
    Result := False;
  end;

  JSON := TJsonObject.Create;
  try
    Janua.Core.JSON.JsonPair(JSON, 'result', Result);
    Janua.Core.JSON.JsonPair(JSON, 'booking_id', FJanuaServerHealthBooking.bookingID);
    Janua.Core.JSON.JsonPair(JSON, 'session_id', FJanuaServerHealthBooking.SessionKey);
    Janua.Core.JSON.JsonPair(JSON, 'message', sMessage);
    Janua.Core.JSON.JsonPair(JSON, 'booking', FJanuaServerHealthBooking.Booking.AsJsonObject);
    WebResponse.Text := JSON.ToJSON;
  finally
    if Assigned(JSON) then
      JSON.Free;
  end;

end;

function TJanuaHealthWebController.ActionBookingCompletion: boolean;
begin
  // DM.JanuaPgTemplateHealth1.PrepareTemplate('Dico33', 'HiteshiPage1.html', 'bodyhiteshi2.html');
  FToPage := TJanuaWebPage.jwpConfirmation;
  // origine e destinazione coincidono per eventuali altre operazioni
  FFromPage := TJanuaWebPage.jwpConfirmation;
  // origine e destinazione coincidono per eventuali altre operazioni

  if FJanuaServerHealthBooking.IsPublic then
  begin
    Result := ActionLogin
  end
  else
  begin
    FTemplateHealth.PreparePageBookingCompletion;
    FTemplateHealth.PageAuthor := 'Dico33 Srl Milano';
    FTemplateHealth.PageTitle := 'Dico33 completa la tua prenotazione';
    FTemplateHealth.PageDescription :=
      'Dico33 completa qui la tua ricerca inserendo la tua ricetta ed eventuali annotazioni';
    if (SessionKey = '') and Assigned(FJanuaServerHealthBooking) then
      FJanuaServerHealthBooking.StartPublicWebSession
    else if (SessionKey <> '') and Assigned(FJanuaServerHealthBooking) then
      FJanuaServerHealthBooking.CheckSessionKey(SessionKey);
    FTemplateHealth.TerminatePageBookingCompletion;
    Mime.MimeType := TJanuaMimeType.jmtTextHtml;
    WebResponse.Assign(FTemplateHealth.Template);
    Result := true;
  end;
end;

function TJanuaHealthWebController.ActionBookingSearch: boolean;
begin
  // DM.JanuaPgTemplateHealth1.PrepareTemplate('Dico33', 'HiteshiPage1.html', 'bodyhiteshi2.html');
  FToPage := TJanuaWebPage.jwpBooking;
  // origine e destinazione coincidono per eventuali altre operazioni
  FFromPage := TJanuaWebPage.jwpBooking;
  // origine e destinazione coincidono per eventuali altre operazioni
  FTemplateHealth.PrepareBookingSearch;
  FTemplateHealth.PageAuthor := 'Dico33 Srl Milano';
  FTemplateHealth.PageTitle := 'Dico33 prenota 3 istituti';
  FTemplateHealth.PageDescription :=
    'Dico33 pagina di ricerca e prenotazione di 3 istituti medici o diagnostici';
  if (SessionKey = '') and Assigned(FJanuaServerHealthBooking) then
    FJanuaServerHealthBooking.StartPublicWebSession
  else if (SessionKey <> '') and Assigned(FJanuaServerHealthBooking) then
    FJanuaServerHealthBooking.CheckSessionKey(SessionKey);
  FTemplateHealth.TerminatePageBooking;
  Mime.MimeType := TJanuaMimeType.jmtTextHtml;
  WebResponse.Assign(FTemplateHealth.Template);
  Result := true;
end;

function TJanuaHealthWebController.ActionCheckOut: boolean;
begin
  // DM.JanuaPgTemplateHealth1.PrepareTemplate('Dico33', 'HiteshiPage1.html', 'bodyhiteshi2.html');
  FToPage := TJanuaWebPage.jwpCheckOut;
  // origine e destinazione coincidono per eventuali altre operazioni
  FFromPage := TJanuaWebPage.jwpCheckOut;
  // origine e destinazione coincidono per eventuali altre operazioni
  try
    FTemplateHealth.PrepareTemplate('Dico33', 'HiteshiPageCheckOut.html', 'bodycheckhout.html');
    FTemplateHealth.PageAuthor := 'Dico33 Srl Milano';
    FTemplateHealth.PageTitle := 'Dico33 Prenotazione completata';
    FTemplateHealth.PageDescription :=
      'Dico33 grazie per avere completato la tua prenotazione verrai avvisato entro 24h ' +
      ' lavorative delle prenotazioni effettuate dal nostro servizio.';
    FTemplateHealth.ReplaceTemplateString('$BOOKING_MESSAGE$',
      'Grazie per avere concluso la tua richiesta, sarai contattato da Dico33 entro 24ore per confermare la tua prenotazione');

    if (SessionKey = '') or (bookingID = 0) then
    begin
      Result := False
    end
    else if (SessionKey <> '') and Assigned(FJanuaServerHealthBooking) then
    begin
      Result := FJanuaServerHealthBooking.CheckSessionKey(SessionKey);
      if Result then
      begin
        Result := FJanuaServerHealthBooking.CheckOut;
        if not Result then
        begin
          writelog(FJanuaServerHealthBooking.LastErrorMessage, true);
          Action501;
        end;
      end
      else
      begin
        writelog(FJanuaServerHealthBooking.LastErrorMessage, true);
        Action501;
      end;
    end;
    // Termina la pagina compilando il contenuto ed inserendo i dati base dei cookies;
    FTemplateHealth.ReplaceTemplateString('$BOOKING_MESSAGE$',
      'Grazie per avere concluso la tua richiesta, sarai contattato da Dico33 entro 24ore per confermare la tua prenotazione');
    FTemplateHealth.TerminatePageContent;
    // FTemplateHealth.ReplaceTemplateString('test', DM.JanuaServerHealthBooking1.Booking.HtmlForm);
    Mime.MimeType := TJanuaMimeType.jmtTextHtml;
    WebResponse.Assign(FTemplateHealth.Template);
    Result := true;

    // raise Exception.Create('Test Error 501');

  except
    on e: Exception do
    begin
      Result := False;
      WriteError('ActionCheckOut', e);
      Action501;
    end;

  end;

end;

function TJanuaHealthWebController.ActionChoice: boolean;
begin

  // DM.JanuaPgTemplateHealth1.PrepareTemplate('Dico33', 'HiteshiPage1.html', 'bodyhiteshi2.html');
  FToPage := TJanuaWebPage.jwpCheckOut;
  // origine e destinazione coincidono per eventuali altre operazioni
  FFromPage := TJanuaWebPage.jwpCheckOut;
  // origine e destinazione coincidono per eventuali altre operazioni
  try
    FTemplateHealth.PrepareTemplate('Dico33', 'HiteshiPageCheckOut.html', 'bodycheckhout.html');
    FTemplateHealth.PageAuthor := 'Dico33 Srl Milano';
    FTemplateHealth.PageTitle := 'Dico33 Prenotazione completata';
    FTemplateHealth.PageDescription :=
      'Dico33 grazie per avere confermato la prentoazione presso la struttura selezionata ' +
      ' ricordati di presentarti all''appuntamento alla data ed ora fissate.';

    if (SessionKey = '') or (bookingID = 0) or (institute_ID = 0) then
    begin
      Result := False
    end
    else if (SessionKey <> '') and Assigned(FJanuaServerHealthBooking) then
    begin
      Result := FJanuaServerHealthBooking.CheckSessionKey(SessionKey);
      if Result then
      begin
        Result := FJanuaServerHealthBooking.InstituteConfirmation;
        if Result then
        begin
          FTemplateHealth.ReplaceTemplateString('$booking_message$',
            'Grazie per avere confermato la tua prenotazione. ');
        end
        else
        begin
          FTemplateHealth.ReplaceTemplateString('$booking_message$', 'Prenotazione non confermata. ');
        end;

      end;
    end;
    // Termina la pagina compilando il contenuto ed inserendo i dati base dei cookies;
    FTemplateHealth.TerminatePageContent;
    // FTemplateHealth.ReplaceTemplateString('test', DM.JanuaServerHealthBooking1.Booking.HtmlForm);
    Mime.MimeType := TJanuaMimeType.jmtTextHtml;
    WebResponse.Assign(FTemplateHealth.Template);
    Result := true;

  except
    on e: Exception do
    begin
      Result := False;
      WriteError('ActionCheckOut', e);
    end;

  end;

end;

function TJanuaHealthWebController.ActionConfirmation: boolean;
begin
  // DM.JanuaPgTemplateHealth1.PrepareTemplate('Dico33', 'HiteshiPage1.html', 'bodyhiteshi2.html');
  FToPage := TJanuaWebPage.jwpConfirmation;
  // origine e destinazione coincidono per eventuali altre operazioni
  FFromPage := TJanuaWebPage.jwpConfirmation;
  // origine e destinazione coincidono per eventuali altre operazioni
  Result := False;
  if not IsPublic then
  begin
    try
      FTemplateHealth.PrepareTemplate('Dico33', 'HiteshiPage1.html', 'bodyhiteshi3.html');
      FTemplateHealth.PageAuthor := 'Dico33 Srl Milano';
      FTemplateHealth.PageTitle := 'Dico33 Completa la tua prenotazione compilando i dati essenziali';
      FTemplateHealth.PageDescription :=
        'Dico33 in questa pagina puoi completare la tua prenotazione inserendo' +
        ' eventuali note, la tua ricetta medica e altri dati';
      if (SessionKey = '') and Assigned(FJanuaServerHealthBooking) then
        FJanuaServerHealthBooking.StartPublicWebSession
      else if (SessionKey <> '') and Assigned(FJanuaServerHealthBooking) then
        FJanuaServerHealthBooking.CheckSessionKey(SessionKey);
      // Termina la pagina compilando il contenuto ed inserendo i dati base dei cookies;
      FTemplateHealth.TerminatePageConfirmation;
      // FTemplateHealth.ReplaceTemplateString('test', DM.JanuaServerHealthBooking1.Booking.HtmlForm);
      Mime.MimeType := TJanuaMimeType.jmtTextHtml;
      WebResponse.Assign(FTemplateHealth.Template);
      Result := true;
    except
      on e: Exception do
      begin
        Action501
      end;

    end;
  end
  else
  begin
    Result := ActionLogin()
  end;
end;

function TJanuaHealthWebController.ActionDashboard(notification_id: int64): boolean;
var
  sNotificationArea: string;
begin
  Result := False;
  // DM.JanuaPgTemplateHealth1.PrepareTemplate('Dico33', 'HiteshiPage1.html', 'bodyhiteshi2.html');
  FToPage := TJanuaWebPage.jwpDashBoard;
  // origine e destinazione coincidono per eventuali altre operazioni
  FFromPage := TJanuaWebPage.jwpDashBoard;
  // origine e destinazione coincidono per eventuali altre operazioni

  if not IsPublic then
  begin
    try
      FTemplateHealth.PrepareTemplate('Dico33', 'HiteshiPage1.html', 'bodyDashBoard.html');
      FTemplateHealth.PageAuthor := 'Dico33 Srl Milano';
      FTemplateHealth.PageTitle := 'Dico33 La tua Dashboard personale';
      FTemplateHealth.PageDescription :=
        'Dico33 in questa pagina puoi controllare le tue notifiche sul portale Dico33' +
        ' e puoi modificare i tuoi dati ed impostazioni.';
      if (SessionKey = '') and Assigned(FJanuaServerHealthBooking) then
        raise Exception.Create('JanuaHealthWebController ActionDashboard non chiamabile con sessione Public')
      else if (SessionKey <> '') and Assigned(FJanuaServerHealthBooking) then
      begin
        if FJanuaServerHealthBooking.CheckSessionKey(SessionKey) then
        begin
          if JanuaServerHealthBooking.GetHealthNotifications > 0 then
          begin
            sNotificationArea := '';
            sNotificationArea := sNotificationArea + JanuaServerHealthBooking.HealthNotifications.AsHtml;
            FTemplateHealth.ReplaceTemplateString('notifications', sNotificationArea);
            FTemplateHealth.Template.Text := FJanuaServerHealthBooking.UserProfile.AsHtml
              (FTemplateHealth.Template.Text);
          end;
        end;
      end;
      // Termina la pagina compilando il contenuto ed inserendo i dati base dei cookies;
      FTemplateHealth.TerminatePageDashboard;
      // FTemplateHealth.ReplaceTemplateString('test', DM.JanuaServerHealthBooking1.Booking.HtmlForm);
      Mime.MimeType := TJanuaMimeType.jmtTextHtml;
      WebResponse.Assign(FTemplateHealth.Template);
      Result := true;
    except
      on e: Exception do
      begin
        Action501
      end;

    end;
  end
  else
  begin
    Result := ActionLogin()
  end;
end;

function TJanuaHealthWebController.ActionDoLogin: boolean;
begin
  FFromPage := TJanuaWebPage.jwpLogin;
  if FToPage = TJanuaWebPage.jwpNone then
    FToPage := TJanuaWebPage.jwpHome;

  if Assigned(FJanuaSystem) then
  begin
    FJanuaSystem.Username := FUsername;
    FJanuaSystem.Password := FPassword;
    Result := FJanuaSystem.Login;
    if Result then
    begin
      if FJanuaServerHealthBooking.SessionKey <> FJanuaSystem.SessionKey then
      begin
        FJanuaServerHealthBooking.CheckSessionKey(FJanuaSystem.SessionKey);
        if bookingID > 0 then
          FJanuaServerHealthBooking.AssignSessionBooking
      end;
      GoToPage(Result);
    end
    else
    begin
      Result := ActionLogin(true, FJanuaSystem.LastErrorMessage);
    end;
  end;
end;

function TJanuaHealthWebController.ActionDoRegister: boolean;
begin
  Result := inherited;
  if Result then
  begin
    if bookingID > 0 then
      FJanuaServerHealthBooking.AssignSessionBooking;
    GoToPage(Result);
  end;
end;

function TJanuaHealthWebController.ActionFinalisation(aBooking: TJanuaHealthBooking): boolean;
begin
  Result := False;
  try
    if (SessionKey <> '') and Assigned(FJanuaServerHealthBooking) then
    begin
      if FJanuaServerHealthBooking.CheckSessionKey(SessionKey) then
        if not IsPublic then
        begin
          // esegue Open Booking in base a booking_id ..........................................
          if not FJanuaServerHealthBooking.OpenBooking(booking_id) then
            raise Exception.Create('TJanuaHealthWebController.ActionFinalisation: ' +
              FJanuaServerHealthBooking.LastErrorMessage + sLineBreak +
              FJanuaServerHealthBooking.LastMessage);

          Result := FJanuaServerHealthBooking.Finalisation(aBooking);
          if Result then
            try
              FTemplateHealth.PrepareFinalisation;
              FTemplateHealth.PageAuthor := 'Dico33 Srl Milano';
              FTemplateHealth.PageTitle := 'Dico33 conferma le tue prenotazioni';
              FTemplateHealth.PageDescription := 'Pagin di conferma della prenotazione utente';
              FTemplateHealth.TerminateFinalisation;
              Mime.MimeType := TJanuaMimeType.jmtTextHtml;
              FFromPage := TJanuaWebPage.jwpFinalisation;
              FToPage := TJanuaWebPage.jwpFinalisation;
              WebResponse.Text := FJanuaServerHealthBooking.Booking.AsHtml(FTemplateHealth.Template.Text);
            except
              on e: Exception do
              begin
                Result := False;
                WriteError('TJanuaHealthWebController.ActionFinalisation', e);
                raise
              end;
            end;
        end;
    end;
  except
    on e: Exception do
    begin
      Result := False;
      WriteError('TJanuaHealthWebController.ActionFinalisation', e);
      raise
    end;

  end;
end;

function TJanuaHealthWebController.ActionRestHealthSearch: boolean;
var
  aJson: TJsonObject;
begin
  Result := true;
  try
    if (Faddress <> '') and FJanuaServerHealthBooking.GeoCoding
      (FJanuaServerHealthBooking.SearchPostalCode(Faddress)) then
    begin
      if FJanuaServerHealthBooking.SearchInstitutes(FJanuaServerHealthBooking.SearchItemID, 10,
        FJanuaServerHealthBooking.SearchPostalCode(Faddress),
        FJanuaServerHealthBooking.Coordinates.Coordinates, IfThen(Fsearch_page > 0, Fsearch_page, 1)) > 0 then
      begin
        WebResponse.Text := FJanuaServerHealthBooking.InstitutesJson;
      end
      else
      begin
        aJson := TJsonObject.Create;
        Janua.Core.JSON.JsonPair(aJson, 'result', False);
        Janua.Core.JSON.JsonPair(aJson, 'message', 'Attenzione prestazione non trovata');
        WebResponse.Text := aJson.ToString;
      end;
    end
    else
    begin
      aJson := TJsonObject.Create;
      Janua.Core.JSON.JsonPair(aJson, 'result', False);
      Janua.Core.JSON.JsonPair(aJson, 'message', 'Attenzione indirizzo non valido');
      WebResponse.Text := aJson.ToString;
    end;
  except
    on e: Exception do
    begin
      Result := False;
      WriteError('TJanuaHealthWebController.ActionRestHealthSearch', e);
    end;

  end;
end;

function TJanuaHealthWebController.ActionRestNotifications: boolean;
var
  NB: TJanuaNotificationBadge;
  N: TJanuaNotification;
  aNotification: TJanuaHealthNotification;
begin
  Mime.MimeType := TJanuaMimeType.jmtApplicationJson;
  if Assigned(FJanuaServerHealthBooking) and (SessionKey <> '') then
  begin
    if FJanuaServerHealthBooking.CheckSessionKey(SessionKey) and not FJanuaServerHealthBooking.IsPublic then
    begin
      if FJanuaServerHealthBooking.GetHealthNotifications(6) > 0 then
      begin
        // preparo l'header valori 'custom': url e NotificatinCount
        NB.hint := 'Notifiche';
        NB.NotificationType := TJanuaNotificationBadgeType.jbtNotification;
        NB.Visible := true;
        NB.id := 1;
        NB.url := '/health/dashboard';
        NB.NotificatinCount := FJanuaServerHealthBooking.HealthNotifications.Count;
        for aNotification in FJanuaServerHealthBooking.HealthNotifications.Items do
        begin
          N.url := '/health/dashboard?notification_id=' + aNotification.id.ToString;
          // qui occorre che quando viene 'costruita' la pagina della Dashboard il sistema richiami
          // il contenuto della notification in base all'id richiesto.
          N.id := 1;
          N.time := aNotification.date;
          N.aMessage := aNotification.title;
          // occorre implementare una relazione tra notificaiton type health ed icon notification type.
          N.NotificationType := TJanuaNotificationType.jntNotificationSuccess;
          NB.Add(N);
        end;
      end;
    end;
  end;
  WebResponse.Text := NB.AsJson;

  Result := true;
end;

function TJanuaHealthWebController.ActionHealthRestInstitutes: boolean;
begin
  Result := FJanuaServerHealthBooking.OpenBooking(booking_id);
  WebResponse.Text := FJanuaServerHealthBooking.BookingInstitutesJson;
end;

function TJanuaHealthWebController.ActionHomeSearch: boolean;
begin
  // la creazione della home page da parte del controller è in effetti abbastanza 'triviale'.
  FTemplateHealth.PrepareHomeSearch;
  FTemplateHealth.PageAuthor := 'Dico33 Srl Milano';
  FTemplateHealth.PageTitle := 'Dico33 prenota la tua visita';
  FTemplateHealth.PageDescription := 'Con Dico33 puoi trovare il miglior istituto e prenotare la tua visita';
  if (SessionKey = '') and Assigned(FJanuaServerHealthBooking) then
    FJanuaServerHealthBooking.StartPublicWebSession
  else if (SessionKey <> '') and Assigned(FJanuaServerHealthBooking) then
    FJanuaServerHealthBooking.CheckSessionKey(SessionKey);
  FTemplateHealth.TerminateHomeSearch;
  Mime.MimeType := TJanuaMimeType.jmtTextHtml;
  FFromPage := TJanuaWebPage.jwpHome;
  FToPage := TJanuaWebPage.jwpHome;
  WebResponse.Assign(FTemplateHealth.Template);
  Result := true;
end;

function TJanuaHealthWebController.ActionLogin(error: boolean = False; ErrorMessage: string = ''): boolean;
begin
  FFromPage := TJanuaWebPage.jwpLogin;
  if FToPage = TJanuaWebPage.jwpNone then
    FToPage := TJanuaWebPage.jwpHome;
  // la creazione della home page da parte del controller è in effetti abbastanza 'triviale'.
  // Action Login non imposta le Variabili Page From e Page To perchè settate esternamente
  FTemplateHealth.PreparePageLogin;
  FTemplateHealth.PageAuthor := 'Dico33 Srl Milano';
  FTemplateHealth.PageTitle := 'Dico33 Accedi o registrati';
  FTemplateHealth.PageDescription :=
    'Accedi o registrati al portale Dico33. Potrai prenotare con noi le tue visite';
  if (SessionKey = '') and Assigned(FJanuaServerHealthBooking) then
    FJanuaServerHealthBooking.StartPublicWebSession
  else if (SessionKey <> '') and Assigned(FJanuaServerHealthBooking) then
    FJanuaServerHealthBooking.CheckSessionKey(SessionKey);
  // all'avvio della pagina di Login non vi sono errori di Login quindi viene presentato il display = none
  // se fosse presente un errore allora sarebbe display = block
  if error then
    FTemplateHealth.ReplaceTemplateString('displayerrorlogin', 'block')
  else
    FTemplateHealth.ReplaceTemplateString('displayerrorlogin', 'none');
  // il testo di default della box di messaggio è quello che viene usato dal componente ajax di test.
  if error then
    FTemplateHealth.ReplaceTemplateString('displayerrorloginmessage', ErrorMessage)
  else
    FTemplateHealth.ReplaceTemplateString('displayerrorloginmessage', 'Inserire nome utente e password.');
  // da creare la action Forget Password che verifica i dati dell'utente e gli invia un link di recupero password .....

  FTemplateHealth.TerminatePageLogin;
  Mime.MimeType := TJanuaMimeType.jmtTextHtml;
  WebResponse.Assign(FTemplateHealth.Template);
  Result := true;
end;

function TJanuaHealthWebController.ActionRestFinalisation: boolean;
begin
  Result := False;
end;

function TJanuaHealthWebController.ActionSearchDACServices(vSearch: string): boolean;
var
  JsonResponse: TJsonObject;
begin
  Result := FJanuaServerHealthBooking.SearchServices(vSearch) > 0;
  JsonResponse := TJsonObject.Create;
  try
    Janua.Core.JSON.JsonPair(JsonResponse, 'Result', true);
    Janua.Core.JSON.JsonPair(JsonResponse, 'Services', FJanuaServerHealthBooking.Services64);
    WebResponse.Text := JsonResponse.ToJSON;
  finally
    JsonResponse.Free;
  end;
end;

function TJanuaHealthWebController.ActionSearchServices(vSearch: string): boolean;
begin
  Result := FJanuaServerHealthBooking.SearchServices(vSearch) > 0;
  WebResponse.Text := FJanuaServerHealthBooking.JsonServices;
end;

function TJanuaHealthWebController.AssignSessionBooking: boolean;
begin
  Result := FJanuaServerHealthBooking.AssignSessionBooking;
end;

constructor TJanuaHealthWebController.Create(AOwner: TComponent);
begin
  inherited;
  // su creazione imposto di default le pagine a jwpNone come From e Come To Page.
  FFromPage := TJanuaWebPage.jwpNone;
  FToPage := TJanuaWebPage.jwpNone;
end;

function TJanuaHealthWebController.DoBooking: int64;
begin
  if FJanuaServerHealthBooking.SearchItemID > 0 then
  begin
    Result := FJanuaServerHealthBooking.DoBooking
  end
  else
  begin
    Result := -1;
  end;

end;

function TJanuaHealthWebController.GetAnagraphID64: string;
begin
  if Assigned(FJanuaServerHealthBooking) then
    Result := FJanuaServerHealthBooking.Institute64;
end;

function TJanuaHealthWebController.getBooking: TJanuaHealthBooking;
begin
  if Assigned(FJanuaServerHealthBooking) then
    Result := FJanuaServerHealthBooking.Booking;
end;

function TJanuaHealthWebController.GetBooking64: string;
begin
  if Assigned(FJanuaServerHealthBooking) then
    Result := FJanuaServerHealthBooking.booking64;
end;

function TJanuaHealthWebController.GetBookingID64: string;
begin
  if Assigned(FJanuaServerHealthBooking) then
    Result := FJanuaServerHealthBooking.booking64;
end;

function TJanuaHealthWebController.Getbooking_id: int64;
begin
  Result := FJanuaServerHealthBooking.bookingID;
end;

function TJanuaHealthWebController.getHtmlInsitutes: string;
begin
  if FHtmlInsitutes <> '' then
    Result := FHtmlInsitutes
  else
  begin
    if Assigned(FJanuaServerHealthBooking) then
    begin
      if FJanuaServerHealthBooking.getHtmlBookingInstitutes then
        Result := FHtmlInsitutes
    end;
  end;
end;

function TJanuaHealthWebController.GetInstitute64: string;
begin
  if Assigned(FJanuaServerHealthBooking) then
    Result := FJanuaServerHealthBooking.Institute64
  else
    Result := '';
end;

function TJanuaHealthWebController.GetInstituteID: integer;
begin
  if Assigned(FJanuaServerHealthBooking) then
    Result := FJanuaServerHealthBooking.InstituteID
  else
    Result := 0;
end;

function TJanuaHealthWebController.Getsearch_id: int64;
begin
  Result := FJanuaServerHealthBooking.SearchID;
end;

function TJanuaHealthWebController.getService_ID: int64;
begin
  if Assigned(FJanuaServerHealthBooking) then
    Result := FJanuaServerHealthBooking.SearchItemID
  else
    Result := 0;
end;

procedure TJanuaHealthWebController.PrepareHtmlInstitutes;
begin

end;

procedure TJanuaHealthWebController.Setaddress(const Value: string);
begin
  Faddress := Value;
end;

procedure TJanuaHealthWebController.SetAnagraphID64(const Value: string);
begin
  if Assigned(FJanuaServerHealthBooking) then
    FJanuaServerHealthBooking.Institute64 := Value;
end;

procedure TJanuaHealthWebController.setBooking(const Value: TJanuaHealthBooking);
begin
  if Assigned(FJanuaServerHealthBooking) then
    FJanuaServerHealthBooking.Booking := Value;
end;

procedure TJanuaHealthWebController.SetBooking64(const Value: string);
begin
  if Assigned(FJanuaServerHealthBooking) then
    FJanuaServerHealthBooking.booking64 := Value;
end;

procedure TJanuaHealthWebController.SetBookingID(aBookingID: integer);
begin
  FJanuaServerHealthBooking.bookingID := aBookingID;
end;

procedure TJanuaHealthWebController.SetBookingID64(const Value: string);
begin
  if Assigned(FJanuaServerHealthBooking) then
    FJanuaServerHealthBooking.booking64 := Value;
end;

procedure TJanuaHealthWebController.Setbooking_id(const Value: int64);
begin
  FJanuaServerHealthBooking.bookingID := Value;
end;

procedure TJanuaHealthWebController.SetCoordinates(const Value: TJanuaRecordCoordinates);
begin
  FCoordinates := Value;
end;

procedure TJanuaHealthWebController.SetHtmlInsitutes(const Value: string);
begin

end;

procedure TJanuaHealthWebController.SetInstitue2(const Value: integer);
begin
  FInstitue2 := Value;
end;

procedure TJanuaHealthWebController.SetInstitute1(const Value: integer);
begin
  FInstitute1 := Value;
end;

procedure TJanuaHealthWebController.SetInstitute3(const Value: integer);
begin
  FInstitute3 := Value;
end;

procedure TJanuaHealthWebController.SetInstitute64(const Value: string);
begin
  if Assigned(FJanuaServerHealthBooking) then
    FJanuaServerHealthBooking.Institute64 := Value
  else
    raise Exception.Create
      ('TJanuaHealthWebController.SetInstitute64 cannnot get Institute64 FJanuaServerHealthBooking is nil');

end;

procedure TJanuaHealthWebController.Setinstitute_id(const Value: integer);
begin
  if Assigned(FJanuaServerHealthBooking) then
    FJanuaServerHealthBooking.InstituteID := Value
  else
    raise Exception.Create
      ('TJanuaHealthWebController.SetInstitute64 cannnot get Institute64 FJanuaServerHealthBooking is nil');
end;

procedure TJanuaHealthWebController.SeTJanuaClientHealthBooking(const Value: TJanuaCustomHealthBooking);
begin
  if Assigned(Value) then
    FJanuaServerHealthBooking := Value
  else
    FJanuaServerHealthBooking := nil;

  FJanuaCustomServer := FJanuaServerHealthBooking;

end;

procedure TJanuaHealthWebController.Setsearch_id(const Value: int64);
begin
  FJanuaServerHealthBooking.SearchID := Value;
end;

procedure TJanuaHealthWebController.Setsearch_page(const Value: integer);
begin
  Fsearch_page := Value;
end;

procedure TJanuaHealthWebController.Setservice_id(const Value: int64);
begin
  FJanuaServerHealthBooking.SearchItemID := Value;
end;

procedure TJanuaHealthWebController.SetTemplateHealth(const Value: TJanuaTemplateHealth);
begin
  FTemplateHealth := Value;
  FJanuaRepository := FTemplateHealth;
end;

procedure TJanuaHealthWebController.TemplateHead(aUseFrame: boolean);
begin
  inherited;
  { TODO : ImplementTemplate Head Health Controller }
end;

{ TJanuaBooking }

procedure TJanuaHealthBooking.AddSearchSelectedInstitute;
begin
  if FSearch.Institutes.SelectedItem.anagraph_id > 0 then
  begin
    Institutes.Add(FSearch.Institutes.SelectedItem);
  end;
end;

function TJanuaHealthBooking.AsHtml(aTemplate: string): string;
var
  sBool, sDate: string;
begin
  Result := aTemplate;

  { Relative: Janua.Core.Anagraph.TJanuaAnagraphRecord;
    Institutes: Janua.Core.Anagraph.TJanuaAnagraphs;
    Log: string;
    checked: boolean;
    ErrorObject: string;
    ErrorMessage: string; }

  Janua.Core.Functions.HtmlReplace(Result, 'booking_id', id);
  Janua.Core.Functions.HtmlReplace(Result, 'booking64', URLParamEncode(id64));

  sDate := FormatDateTime('dd/mm/yyyy', System.SysUtils.date);
  Janua.Core.Functions.HtmlReplace(Result, 'booking_date', sDate);

  Janua.Core.Functions.HtmlReplace(Result, 'booking_notes', notes);

  if Book_Since > 0.0 then
    Janua.Core.Functions.HtmlReplace(Result, 'book_since', Book_Since)
  else
    Janua.Core.Functions.HtmlReplace(Result, '', Book_Since);

  if Book_Since > 0.0 then
    Janua.Core.Functions.HtmlReplace(Result, 'book_until', Book_Since)
  else
    Janua.Core.Functions.HtmlReplace(Result, '', Book_Since);

  if HasPrescription then
    sBool := 'Sì'
  else
    sBool := 'No';
  Janua.Core.Functions.HtmlReplace(Result, 'prescription', sBool);

  Janua.Core.Functions.HtmlReplace(Result, 'insurance', Insurance);
  Janua.Core.Functions.HtmlReplace(Result, 'agreement', Agreement);
  Janua.Core.Functions.HtmlReplace(Result, 'Notes', notes);
  Janua.Core.Functions.HtmlReplace(Result, 'service', Service.title);
  Janua.Core.Functions.HtmlReplace(Result, 'service_id', Service.id);

  Janua.Core.Functions.HtmlReplace(Result, 'institute1', Rows.Items[0].Institute.anagraph_id);
  Janua.Core.Functions.HtmlReplace(Result, 'institute164', URLParamEncode(Rows.Items[0].Institute.id64));
  Janua.Core.Functions.HtmlReplace(Result, 'institute1_name', Rows.Items[0].Institute.LastName);
  Janua.Core.Functions.HtmlReplace(Result, 'institute1_address', Rows.Items[0].Institute.address.address);
  Janua.Core.Functions.HtmlReplace(Result, 'institute1_town', Rows.Items[0].Institute.address.Town);
  Janua.Core.Functions.HtmlReplace(Result, 'institute1_notes', Rows.Items[0].notes);

  if Rows.Items[0].booked and (Rows.Items[0].booking_date <> 0.0) and not Rows.Items[0].cancelled then
  begin
    // institute1_date_time
    sDate := FormatDateTime('dd/mm/yyyy', Rows.Items[0].booking_date) + lpad(Rows.Items[0].booking_hour, 2,
      '0') + ':' + lpad(Rows.Items[0].booking_mins, 2, '0');
    Janua.Core.Functions.HtmlReplace(Result, 'institute1_date_time', sDate);
    // hidden1cancel
    Janua.Core.Functions.HtmlReplace(Result, 'hidden1cancel', 'display:none');
    Janua.Core.Functions.HtmlReplace(Result, 'button1_visible', '');
  end
  else
  begin
    Janua.Core.Functions.HtmlReplace(Result, 'hidden1cancel', '');
    Janua.Core.Functions.HtmlReplace(Result, 'institute1_date_time', '');
    // button1_visible
    Janua.Core.Functions.HtmlReplace(Result, 'button1_visible', 'display:none');
  end;

  if Count > 1 then
  begin
    Janua.Core.Functions.HtmlReplace(Result, 'institute2', Rows.Items[1].Institute.anagraph_id);
    Janua.Core.Functions.HtmlReplace(Result, 'institute264', URLParamEncode(Rows.Items[1].Institute.id64));
    Janua.Core.Functions.HtmlReplace(Result, 'institute2_name', Rows.Items[1].Institute.LastName);
    Janua.Core.Functions.HtmlReplace(Result, 'institute2_address', Rows.Items[1].Institute.address.address);
    Janua.Core.Functions.HtmlReplace(Result, 'institute2_town', Rows.Items[1].Institute.address.Town);
    Janua.Core.Functions.HtmlReplace(Result, 'institute2_notes', Rows.Items[1].notes);

    if Rows.Items[1].booked and (Rows.Items[1].booking_date <> 0.0) and not Rows.Items[1].cancelled then
    begin
      // institute1_date_time
      sDate := FormatDateTime('dd/mm/yyyy', Rows.Items[1].booking_date) + lpad(Rows.Items[1].booking_hour, 2,
        '0') + ':' + lpad(Rows.Items[1].booking_mins, 2, '0');
      Janua.Core.Functions.HtmlReplace(Result, 'institute2_date_time', sDate);
      // hidden1cancel
      Janua.Core.Functions.HtmlReplace(Result, 'hidden2cancel', 'display:none');
      Janua.Core.Functions.HtmlReplace(Result, 'button2_visible', '');
    end
    else
    begin
      Janua.Core.Functions.HtmlReplace(Result, 'hidden2cancel', '');
      Janua.Core.Functions.HtmlReplace(Result, 'institute2_date_time', '');
      Janua.Core.Functions.HtmlReplace(Result, 'button2_visible', 'display:none');
    end;
  end
  else
  begin
    Janua.Core.Functions.HtmlReplace(Result, 'institute2', '');
    Janua.Core.Functions.HtmlReplace(Result, 'institute2_name', '');
    Janua.Core.Functions.HtmlReplace(Result, 'institute2_address', '');
    Janua.Core.Functions.HtmlReplace(Result, 'institute2_town', '');
    Janua.Core.Functions.HtmlReplace(Result, 'hidden2cancel', 'display:none');
  end;

  if Count > 2 then
  begin
    Janua.Core.Functions.HtmlReplace(Result, 'institute3', Rows.Items[2].Institute.anagraph_id);
    Janua.Core.Functions.HtmlReplace(Result, 'institute364', URLParamEncode(Rows.Items[2].Institute.id64));
    Janua.Core.Functions.HtmlReplace(Result, 'institute3_name', Rows.Items[2].Institute.LastName);
    Janua.Core.Functions.HtmlReplace(Result, 'institute3_address', Rows.Items[2].Institute.address.address);
    Janua.Core.Functions.HtmlReplace(Result, 'institute3_town', Rows.Items[2].Institute.address.Town);
    Janua.Core.Functions.HtmlReplace(Result, 'institute3_notes', Rows.Items[2].notes);

    if Rows.Items[2].booked and (Rows.Items[2].booking_date <> 0.0) and not Rows.Items[2].cancelled then
    begin
      // institute1_date_time
      sDate := FormatDateTime('dd/mm/yyyy', Rows.Items[2].booking_date) + lpad(Rows.Items[2].booking_hour, 2,
        '0') + ':' + lpad(Rows.Items[2].booking_mins, 2, '0');
      Janua.Core.Functions.HtmlReplace(Result, 'institute3_date_time', sDate);
      // hidden1cancel
      Janua.Core.Functions.HtmlReplace(Result, 'hidden3cancel', 'display:none');
      Janua.Core.Functions.HtmlReplace(Result, 'button3_visible', '');
    end;
  end
  else
  begin
    Janua.Core.Functions.HtmlReplace(Result, 'hidden3cancel', 'display:none');
    Janua.Core.Functions.HtmlReplace(Result, 'institute3_date_time', '');
    Janua.Core.Functions.HtmlReplace(Result, 'institute3', '');
    Janua.Core.Functions.HtmlReplace(Result, 'institute3_name', '');
    Janua.Core.Functions.HtmlReplace(Result, 'institute3_address', '');
    Janua.Core.Functions.HtmlReplace(Result, 'institute3_town', '');
    Janua.Core.Functions.HtmlReplace(Result, 'button3_visible', 'display:none');
  end;

  Result := UserProfile.AsHtml(Result);

end;

function TJanuaHealthBooking.AsJson: string;
begin
  {
    id: int64;
    session_id: int64;
    db_user_id: integer;
    date: TDateTime;
    HealthPrescription: TJanuaITHealthPrescription;
    Service: TJanuaRecordService;
  }

  Result := AsJsonObject.ToJSON;

end;

function TJanuaHealthBooking.Check: boolean;
begin
  checked := true;
  if HasPrescription then
  // se è stata selezionata una ricetta devo controllarla
  begin
    checked := HealthPrescription.Check;
    if not checked then
    begin
      ErrorObject := HealthPrescription.ErrorObject;
      ErrorMessage := HealthPrescription.LastMessage;
    end;
  end;

  Result := checked;
end;

function TJanuaHealthBooking.CheckPerson(const aPerson: TJanuaAnagraphRecord; var aError: string): boolean;
begin
  Result := False;
  begin
    if aPerson.FirstName = '' then
    begin
      aError := 'Attenzione occorre inserire il Nome';
      // lbFirstName.FontColor := AlphaColorRec.Red;
    end
    else if aPerson.LastName = '' then
    begin
      aError := 'Attenzione occorre inserire il Cognome';
      // lbLastName.FontColor := AlphaColorRec.Red;
    end
    else if aPerson.FiscalCode = '' then
    begin
      aError := 'Attenzione occorre inserire il Codice Fiscale';
      // lbFiscalCode.FontColor := AlphaColorRec.Red;
    end
    else
      // if not ControllaCF(aPerson.FiscalCode, aError) then
      if not Janua.Core.Functions.StringLength(aPerson.FiscalCode) = 16 then
      // else if not Janua.Core.Functions.VerifyFiscalCode(aPerson.FiscalCode, aError) then
      begin
        aError := 'Attenzione errato Codice Fiscale';
        // lbFiscalCode.FontColor := AlphaColorRec.Red;
        // edFiscalCode.FontColor := AlphaColorRec.Red;
      end
      else if aPerson.Gender.GenderIndex = -1 then
      begin
        aError := 'Attenzione occorre indicare il sesso';
        // rgGender.FontColor := AlphaColorRec.Red;
      end
      else if aPerson.an_birthdate = -1 then
      begin
        aError := 'Attenzione occorre indicare il sesso';
        // rgGender.FontColor := AlphaColorRec.Red;
      end
      else
      begin
        Result := true;
      end;
    HasRelative := Result;
    if not HasRelative then
      Relative.Clear
    else
      Relative := aPerson;

  end;
end;

procedure TJanuaHealthBooking.Clear;
begin
  id := 0;
  session_id := 0;
  session_key := '';
  db_user_id := 0;
  date := 0.0;
  HasPrescription := False;
  HealthPrescription.Clear;
  HasRelative := False;
  Relative.Clear;
  Institutes.Clear;
  checked := true;
  ErrorObject := '';
  ErrorMessage := '';
end;

function TJanuaHealthBooking.Count: integer;
begin
  Result := (Institutes.Count)
end;

function TJanuaHealthBooking.GetAsJsonObject: TJsonObject;
begin
  Result := TJsonObject.Create;
  Janua.Core.JSON.JsonPair(Result, 'id', id);
  Janua.Core.JSON.JsonPair(Result, 'id64', id64);
  Janua.Core.JSON.JsonPair(Result, 'checked', checked);
  if checked then
  begin
    Janua.Core.JSON.JsonPair(Result, 'session_id', session_id);
    Janua.Core.JSON.JsonPair(Result, 'session_key', session_key);
    Janua.Core.JSON.JsonPair(Result, 'db_user_id', db_user_id);
    Janua.Core.JSON.JsonPair(Result, 'booked', booked);
    Janua.Core.JSON.JsonPair(Result, 'session_key', session_key);
    Janua.Core.JSON.JsonPair(Result, 'cancelled', cancelled);
    Janua.Core.JSON.JsonPair(Result, 'date', date);
    Janua.Core.JSON.JsonPair(Result, 'notes', notes);
    Janua.Core.JSON.JsonPair(Result, 'insurance', Insurance);
    Janua.Core.JSON.JsonPair(Result, 'agreement', Agreement);
    Janua.Core.JSON.JsonPair(Result, 'book_since', Book_Since);
    Janua.Core.JSON.JsonPair(Result, 'book_until', Book_Until);
    Janua.Core.JSON.JsonPair(Result, 'has_prescription', HasPrescription);
    Janua.Core.JSON.JsonPair(Result, 'prescription', HealthPrescription.AsJsonObject);
    Janua.Core.JSON.JsonPair(Result, 'has_person', HasRelative);
    Janua.Core.JSON.JsonPair(Result, 'person', Relative.AsJsonObject);
    Janua.Core.JSON.JsonPair(Result, 'institutes', Institutes.AsJsonObject);
    Janua.Core.JSON.JsonPair(Result, 'user_profile', UserProfile.AsJsonObject);
    Janua.Core.JSON.JsonPair(Result, 'search', Search.AsJsonObject);
    Janua.Core.JSON.JsonPair(Result, 'service', Service.AsJsonObject);
    Janua.Core.JSON.JsonPair(Result, 'has_relative', HasRelative);
    Janua.Core.JSON.JsonPair(Result, 'rows', Rows.AsJsonObject);
    Janua.Core.JSON.JsonPair(Result, 'log', Log);
    Janua.Core.JSON.JsonPair(Result, 'error_object', ErrorObject);
    Janua.Core.JSON.JsonPair(Result, 'error_message', ErrorMessage);
  end
  else
  begin
    Janua.Core.JSON.JsonPair(Result, 'error', ErrorMessage);
    Janua.Core.JSON.JsonPair(Result, 'input_name', ErrorObject);
    Janua.Core.JSON.JsonPair(Result, 'log', Log);
    Janua.Core.JSON.JsonPair(Result, 'error_object', ErrorObject);
    Janua.Core.JSON.JsonPair(Result, 'error_message', ErrorMessage);
  end;
end;

function TJanuaHealthBooking.GetHeder: TJanuaHealthSearchHeader;
begin
  Result := FSearch.Header;
end;

function TJanuaHealthBooking.HtmlForm: string;
var
  Container: Janua.Core.Metronics.TJanuaMetroContainer;
  Row: Janua.Core.Metronics.TJanuaMetroFormRow;
  frame: TJanuaMetroFrame;
  Input: TJanuaMetroFormInput;
  Value: TJanuaOptionValue;
  aControl: TJanuaMetroControl;
  Radio: TJanuaInputRadio;
  Conf: TJanuaInputConf;
begin
  Container.Create('booking_form', MetroArrangement.maAccordion, true, true, 12);
  // At First set the portlet if IsPortlet .............................................................................
  Container.Portlet.Create('booking_portlet', 'Conferma Prenotazione',
    'conferma qui i dati della tua prenotazione su Dico33');
  Container.Portlet.PortletType.PortletType := TMetroPortletType.mptLigthBordered;
  Container.Portlet.TitleFont.Clear;
  // imposta tutti i valori di Default al font
  Container.Portlet.TitleFont.Color.MetroColor := TMetronicColor.jmcPurplesoft;
  // imposto solo la variabile colore....
  Container.Portlet.TitleBackgroud.MetroColor := TMetronicColor.jmcWhite;
  Container.Portlet.Icon.IconType := Janua.Core.Metronics.TMetroIcon.jmiAddressCardOutline;
  // il colore è ereditato
  Container.Portlet.Fit := False;
  // fit false dovrebbe essere il default fit imposta il contenuto a pieno schermo...
  Container.Portlet.ContentFit := False;
  Container.Portlet.ContentScrollable := False;
  // Then Set Form if isForm ...........................................................................................
  Container.Form.Action := 'http://www.ergomercator.com';
  Container.Form.Bordered := False;
  Container.Form.FormType := TMetroFormType.mftHorizontal;
  // TMetroFormType.mftHorizontal;
  Container.Arrangement := MetroArrangement.maAccordion;

  // Container Portlet Button
  Container.Portlet.AddButton('Save All', 'test_save', true, TMetroIcon.jmiAddressCard,
    TMetronicColor.jmcBlue);

  // imposto la conf di Default:
  Conf.IconPos := TTMetroIconPos.jmpLeftBoxed;
  Conf.IconType := TMetroIcon.jmiAddressCard;
  Conf.IconColor := TMetronicColor.jmcNone;
  Conf.LabelType := TMetroLabel.jmlLeft;
  Conf.InputType := TMetroInput.jmtStandard;
  Conf.InputState := TMetroState.jmsEnabled;

  // un form contiene uno o più frames (nel test ne metteremo 3)
  frame.Create('person_frame', 'Prenota per un altra persona',
    'qui puoi confermare i dati di prenotazione per un altro paziente ...');
  frame.IsPortlet := False;
  frame.Size := 12;
  frame.Arrangement := MetroArrangement.maNone;
  frame.Conf := Conf;

  // La Row Eredita il Frame Conf......................
  Row.Conf := Conf;
  aControl.ControlType := TMetronicControlType.mctInput;
  aControl.Size := 12;

  // prima di tutto il segno di spunta
  Input.Clear;
  Input.InputConf := Conf;
  Input.name := 'person_checkbox';
  Input.Size := 12;
  Input.sLabel := 'Seleziona questo riquadro se guoi prenotare la visita per un altro paziente';
  Input.MetroType := TMetroInputType.jmtCheckBox;
  aControl.Input := Input;
  Row.Add(aControl);
  frame.Add(Row);
  Row.ItemsClear;

  // riga nome

  // Creo il Controllo ................................
  Input.Clear;
  Input.name := 'person_firstname';
  Input.Size := 6;
  Input.Text := '';
  Input.Suggestion := 'Scrivi qui il nome (obbligatorio)';
  Input.InputConf := Conf;
  Input.InputConf.InputType := TMetroInput.jmtStandard;
  Input.InputConf.IconType := TMetroIcon.jmiUser;
  Input.InputConf.IconColor := TMetronicColor.jmcNone;
  Input.sLabel := 'Nome ';
  Input.MetroType := TMetroInputType.jmtText;
  aControl.Input := Input;
  Row.Add(aControl);

  // Creo il Controllo ................................
  Input.Clear;
  Input.InputConf := Conf;
  Input.InputConf.InputType := TMetroInput.jmtStandard;
  Input.InputConf.IconType := TMetroIcon.jmiUser;
  Input.InputConf.IconColor := TMetronicColor.jmcNone;
  Input.name := 'person_lastname';
  Input.Text := '';
  Input.Suggestion := 'Scrivi qui il cognome (obbligatorio)';
  Input.Size := 6;
  Input.sLabel := 'Cognome';
  Input.MetroType := TMetroInputType.jmtText;
  // aggiungo il controllo alla row
  aControl.Input := Input;
  Row.Add(aControl);
  frame.Add(Row);
  Row.ItemsClear;

  // riga Fisco ....

  // Creo il Controllo ................................
  Input.Clear;
  Input.InputConf := Conf;
  Input.InputConf.InputType := TMetroInput.jmtStandard;
  Input.InputConf.IconType := TMetroIcon.jmiIDCard;
  Input.InputConf.IconColor := TMetronicColor.jmcNone;
  Input.name := 'person_fiscalcode';
  Input.Text := '';
  Input.Suggestion := 'Codice Fiscale Italiano';
  Input.Size := 6;
  Input.sLabel := 'Codice Fiscale';
  Input.MetroType := TMetroInputType.jmtText;
  // aggiungo il controllo alla row
  aControl.Input := Input;
  Row.Add(aControl);

  // Radiogroup il radio Group non prevede una Icona ma solo una Label ed una lista di scelte
  Input.Clear;
  Input.Size := 6;
  Input.InputConf := Conf;
  Input.name := 'person_sex';
  Input.sLabel := 'Sesso';
  // aggiungo i due selettori M e F
  Radio.Create('sex', 'sex1', 'M', 'M');
  Input.AddRadio(Radio);
  Radio.Create('sex', 'sex2', 'F', 'F');
  Input.AddRadio(Radio);
  // finalizzo il controllo
  Input.MetroType := TMetroInputType.jmtRadioGroup;
  aControl.Input := Input;
  Row.Add(aControl);

  frame.Add(Row);
  Row.ItemsClear;

  // ***** Riga indirizzo ***************************************************************************************

  Input.Clear;
  Input.InputConf := Conf;
  Input.InputConf.InputType := TMetroInput.jmtStandard;
  Input.InputConf.IconType := TMetroIcon.jmiAddressCardOutline;
  Input.InputConf.IconColor := TMetronicColor.jmcNone;
  Input.name := 'person_address';
  Input.Text := '';
  Input.Suggestion := 'Indirizzo: via/piazza e numero civico';
  Input.Size := 12;
  Input.sLabel := 'Indirizzo';
  Input.MetroType := TMetroInputType.jmtText;
  // aggiungo il controllo alla row
  aControl.Input := Input;
  Row.Add(aControl);

  frame.Add(Row);
  Row.ItemsClear;

  // ***** Riga cap-città ***************************************************************************************

  Input.Clear;
  Input.InputConf := Conf;
  Input.InputConf.InputType := TMetroInput.jmtStandard;
  Input.InputConf.IconType := TMetroIcon.jmiMapMarker;
  Input.InputConf.IconColor := TMetronicColor.jmcNone;
  Input.name := 'person_town';
  Input.Text := '';
  Input.Suggestion := 'Comune di Residenza';
  Input.Size := 6;
  Input.sLabel := 'Comune';
  Input.MetroType := TMetroInputType.jmtText;
  // aggiungo il controllo alla row
  aControl.Input := Input;
  Row.Add(aControl);

  Input.Clear;
  Input.InputConf := Conf;
  Input.InputConf.InputType := TMetroInput.jmtStandard;
  Input.InputConf.IconType := TMetroIcon.jmiAddressCardOutline;
  Input.InputConf.IconColor := TMetronicColor.jmcNone;
  Input.InputConf.InputType := TMetroInput.jmtStandard;
  Input.name := 'person_postalcode';
  Input.Text := '';
  Input.Suggestion := 'Cod. Postale';
  Input.Size := 3;
  Input.sLabel := 'CAP';
  Input.MetroType := TMetroInputType.jmtText;
  // aggiungo il controllo alla row
  aControl.Input := Input;
  Row.Add(aControl);

  Input.Clear;
  Input.InputConf := Conf;
  Input.InputConf.InputType := TMetroInput.jmtStandard;
  Input.InputConf.IconType := TMetroIcon.jmiAddressCardOutline;
  Input.name := 'person_stateprovince';
  Input.Text := '';
  Input.Suggestion := 'Prov.';
  Input.Size := 3;
  Input.sLabel := 'Prov.';
  Input.MetroType := TMetroInputType.jmtText;
  // aggiungo il controllo alla row
  aControl.Input := Input;
  aControl.Size := Input.Size;
  Row.Add(aControl);
  frame.Add(Row);
  Row.ItemsClear;

  // Inserimento del Frame.
  Container.Add(frame);

  Conf := frame.Conf;
  // ricorda la configurazione per ereditarla con il prossimo Frame.

  // un form contiene uno o più frames (nel test ne metteremo 2)
  frame.Create('notes_frame', 'Inserisci qui le note per la tua prenotazione',
    'qui puoi inserire delle annotazioni per la tua prenotazione, tipo di visita, indicazioni ...');
  frame.IsPortlet := False;
  frame.Arrangement := MetroArrangement.maNone;
  frame.Conf := Conf;
  // eredito la conf dal vecchio Frame;

  // La Row Eredita il Frame Conf......................
  Row.Conf := frame.Conf;
  aControl.ControlType := TMetronicControlType.mctInput;
  aControl.Size := 12;

  // prima di tutto il segno di spunta
  Input.Clear;
  Input.name := 'booking_notes';
  Input.Size := 12;
  Input.InputConf.Size := 12;
  Input.InputConf.Lines := 10;
  Input.InputConf.WidthPurcent := 80;
  Input.title := 'Note:';
  Input.Text := '';
  Input.Suggestion := 'Scrivi qui le tue annotazioni e le tue richieste per la vista o il servizio';
  Input.MetroType := TMetroInputType.jmtMemo;
  Input.sLabel :=
    'Scrivi qui eventuali annotazioni per la tua richiesta (es: indicazioni del medico, allergie)';
  aControl.ControlType := TMetronicControlType.mctInput;
  aControl.Input := Input;
  Row.Add(aControl);
  frame.Add(Row);
  Row.ItemsClear;

  // Aggiungo il frame Note al Form
  Container.Add(frame);

  // ********* finalizzazione del Form ********************************************************************************

  Result := Container.HtmlText;
end;

function TJanuaHealthBooking.HtmlInstitutes: string;
begin

end;

function TJanuaHealthBooking.JsForm: string;
begin

end;

function TJanuaHealthBooking.JsGmap: string;
begin

end;

function TJanuaHealthBooking.JsInstitutes: string;
begin

end;

procedure TJanuaHealthBooking.LoadFromDataset(dsDataset, dsPrescription, dsRelative, dsInstitutes: TDataset);
begin
  Clear;
  HealthPrescription.LoadFromDataset(dsPrescription);
  Relative.LoadFromDataset(dsRelative);
  Service.LoadFromDataset(dsDataset);
  Institutes.LoadFromDataset(dsInstitutes);
  Rows.LoadFromDataset(dsInstitutes);
  UserProfile.LoadFromDataset(dsDataset, dsDataset);

  id := Janua.Core.Functions.GetFieldAsLargeInt(dsDataset, 'booking_id');
  id64 := Janua.Core.Functions.GetFieldAsString(dsDataset, 'booking64');
  session_id := Janua.Core.Functions.GetFieldAsLargeInt(dsDataset, 'db_session_id');
  // session_key: string;
  db_user_id := Janua.Core.Functions.GetFieldAsInteger(dsDataset, 'db_user_id');
  HasPrescription := Janua.Core.Functions.GetFieldAsBoolean(dsDataset, 'prescription');
  HasRelative := Janua.Core.Functions.GetFieldAsBoolean(dsDataset, 'other_person');
  Book_Since := Janua.Core.Functions.GetFieldAsDate(dsDataset, 'book_since');
  Book_Until := Janua.Core.Functions.GetFieldAsDate(dsDataset, 'book_until');
  Insurance := Janua.Core.Functions.GetFieldAsString(dsDataset, 'insurance');
  Agreement := Janua.Core.Functions.GetFieldAsString(dsDataset, 'agreement');
  notes := Janua.Core.Functions.GetFieldAsString(dsDataset, 'notes');
end;

{$IF Defined(WEBBROKER)}

procedure TJanuaHealthBooking.LoadRelative(aRequest: TWebRequest);
begin
  Relative.LoadFromPersonHttpParams(aRequest);
end;

function TJanuaHealthBooking.LoadFromHttpParams(aRequest: TWebRequest): boolean;
begin
  Result := true;
  try
    Clear;
    // forse meglio non caricare l'id da un parametro on line :)
    if id = 0 then
      id := Janua.Core.Functions.HttpGetParamInteger(aRequest, 'booking_id');
    // forse idem per session id o session key è tutto da vedere ........................
    if session_id = 0 then
      session_id := Janua.Core.Functions.HttpGetParamInteger(aRequest, 'session_key');
    // session_id := Janua.Core.Functions.HttpGetParamInteger(aRequest, 'session_id');

    if session_id = 0 then
      session_key := Janua.Core.Functions.HttpGetParamValue(aRequest, 'session_key');
    if session_key = '' then
      session_key := Janua.Core.Functions.HttpGetParamValue(aRequest, 'session_id');

    // Inserimento di ricetta medica (Medical Prescription) ......................................
    HasPrescription := Janua.Core.Functions.HttpgetParamBoolean(aRequest, 'has_prescription');

    if HasPrescription then
      HealthPrescription.LoadFromHttpParams(aRequest);
    // Prenotazione per un parente o un conoscente ...............................................

    HasRelative := Janua.Core.Functions.HttpgetParamBoolean(aRequest, 'other_person');
    if HasRelative then
      Relative.LoadFromPersonHttpParams(aRequest);
    // la scheda relative si occupa di caricare i dati se
    {
      Book_Since := Janua.Core.Functions.HttpGetParamInteger(aRequest, 'book_since');
      Book_Until := Janua.Core.Functions.HttpGetParamInteger(aRequest, 'book_until');
    }
    // variabili del Booking ......................................................................
    Insurance := Janua.Core.Functions.HttpGetParamValue(aRequest, 'insurance');
    Agreement := Janua.Core.Functions.HttpGetParamValue(aRequest, 'agreement');
    notes := Janua.Core.Functions.HttpGetParamValue(aRequest, 'notes');
  except
    on e: Exception do
    begin
      ErrorObject := 'error_log';
      ErrorMessage := e.Message;
      checked := False;
      Result := False;
    end;
  end;
end;
{$ENDIF}

procedure TJanuaHealthBooking.LoadFromJson(aJson: string);
var
  LJSONObject: TJsonObject;
  vParsed: integer;

begin
  LJSONObject := nil;
  try
    LJSONObject := TJsonObject.Create;
    { convert String to JSON }
    vParsed := LJSONObject.Parse(BytesOf(aJson), 0);
    if vParsed > 0 then
    begin
      LoadFromJsonObject(LJSONObject);
    end;
  finally
    LJSONObject.Free;
  end;
end;

procedure TJanuaHealthBooking.LoadFromJsonObject(aJsonObject: TJsonObject);
var
  aRow: TJanuaHealthBookingRow;
begin
  Clear;
  Janua.Core.JSON.JsonValue(aJsonObject, 'id', id);
  Janua.Core.JSON.JsonValue(aJsonObject, 'checked', checked);
  if checked then
  begin
    Janua.Core.JSON.JsonValue(aJsonObject, 'session_id', session_id);
    Janua.Core.JSON.JsonValue(aJsonObject, 'session_key', session_key);
    Janua.Core.JSON.JsonValue(aJsonObject, 'db_user_id', db_user_id);
    Janua.Core.JSON.JsonValue(aJsonObject, 'booked', booked);
    Janua.Core.JSON.JsonValue(aJsonObject, 'cancelled', cancelled);

    // Json Objects Section
    HealthPrescription.LoadFromJsonObject(Janua.Core.JSON.JsonObject('prescription', aJsonObject));
    Institutes.AsJsonObject := Janua.Core.JSON.JsonObject('institutes', aJsonObject);
    UserProfile.AsJsonObject := Janua.Core.JSON.JsonObject('user_profile', aJsonObject);
    Search.AsJsonObject := Janua.Core.JSON.JsonObject('search', aJsonObject);
    Service.AsJsonObject := Janua.Core.JSON.JsonObject('service', aJsonObject);
    Janua.Core.JSON.JsonValue(aJsonObject, 'has_prescription', HasPrescription);
    Janua.Core.JSON.JsonValue(aJsonObject, 'has_person', HasRelative);
    if HasRelative then
      Relative.LoadFromJsonObject(aJsonObject.Get('person').JsonValue as TJsonObject);
    Rows.AsJsonObject := Janua.Core.JSON.JsonObject('rows', aJsonObject);
    // ..................................................................................
    Janua.Core.JSON.JsonValue(aJsonObject, 'date', date);
    Janua.Core.JSON.JsonValue(aJsonObject, 'notes', notes);
    Janua.Core.JSON.JsonValue(aJsonObject, 'insurance', Insurance);
    Janua.Core.JSON.JsonValue(aJsonObject, 'agreement', Agreement);
    Janua.Core.JSON.JsonValue(aJsonObject, 'book_since', Book_Since);
    Janua.Core.JSON.JsonValue(aJsonObject, 'book_until', Book_Until);

    // Verifica del loading di Rows and Institutes ......................................
    if (Institutes.Count = 0) and (Rows.Count > 0) then
    begin
      for aRow in Rows.Items do
        Institutes.Add(aRow.Institute);
    end;
  end
  else
  begin
    // Error Management .................................................................
    // Janua.Core.Json.JsonValue(aJsonObject, 'log', Log);
    Janua.Core.JSON.JsonValue(aJsonObject, 'error_object', ErrorObject);
    Janua.Core.JSON.JsonValue(aJsonObject, 'error_message', ErrorMessage);
  end;

end;

procedure TJanuaHealthBooking.SetHeader(const Value: TJanuaHealthSearchHeader);
begin
  FSearch.Header := Value;
end;

procedure TJanuaHealthBooking.SetSearch(const Value: TJanuaHealthSearch);
begin
  FSearch := Value;
end;

function TJanuaHealthBooking.ToString: string;
begin

end;

{ TJanuaITHealthPrescription }

function TJanuaITHealthPrescription.AsHtml: string;
begin

end;

function TJanuaITHealthPrescription.AsJson: string;
begin
  Result := AsJsonObject.ToJSON
end;

function TJanuaITHealthPrescription.AsJsonObject: TJsonObject;
begin
  Result := TJsonObject.Create;
  Janua.Core.JSON.JsonPair(Result, 'id', id);
  Janua.Core.JSON.JsonPair(Result, 'first_code', first_code);
  Janua.Core.JSON.JsonPair(Result, 'second_code', second_code);
  Janua.Core.JSON.JsonPair(Result, 'province', province);
  Janua.Core.JSON.JsonPair(Result, 'first_name', first_name);
  Janua.Core.JSON.JsonPair(Result, 'last_name', last_name);
  Janua.Core.JSON.JsonPair(Result, 'exemption', exemption);
  Janua.Core.JSON.JsonPair(Result, 'exemption_code', exemption_code);
  Janua.Core.JSON.JsonPair(Result, 'exemption_income', exemption_income);
  Janua.Core.JSON.JsonPair(Result, 'services', Services);
  Janua.Core.JSON.JsonPair(Result, 'date', date);
  Janua.Core.JSON.JsonPair(Result, 'priority', priority);
  Janua.Core.JSON.JsonPair(Result, 'booking_id', booking_id);
  Janua.Core.JSON.JsonPair(Result, 'checked', checked);
  Janua.Core.JSON.JsonPair(Result, 'lastmessage', LastMessage);
end;

function TJanuaITHealthPrescription.Check: boolean;
begin
  Result := False;
  if CheckFirst then
  begin
    if exemption and (exemption_code = '') then
      LastMessage := 'Attenzione occorre inserire il codice esenzione ricetta '
    else if date = 0.0 then
      LastMessage := 'Attenzione occorre inserire la data di emissione della ricetta'
    else if province = '' then
    begin
      LastMessage := 'Attenzione occorre inserire il codice provincia ASL ';
      ErrorObject := 'province';
    end
    else
      Result := true;
  end;

  checked := Result;
end;

function TJanuaITHealthPrescription.CheckFirst: boolean;
begin
  Result := False;
  if first_code = '' then
  begin
    LastMessage := 'Attenzione occorre inserire il primo codice ricetta';
    ErrorObject := 'first_code';
  end
  else if second_code = '' then
  begin
    LastMessage := 'Attenzione occorre inserire il secondo codice ricetta';
    ErrorObject := 'second_code';
  end
  else if first_name = '' then
  begin
    LastMessage := 'Attenzione occorre inserire il nome dell''''intestatario della ricetta';
    ErrorObject := 'first_name';
  end
  else if last_name = '' then
    LastMessage := 'Attenzione occorre inserire il cognome dell''''intestatario della ricetta'
  else if fiscal_code = '' then
    LastMessage := 'Attenzione occorre inserire il Codice fiscale dell''''intestatariio '
  else
    Result := true;

end;

procedure TJanuaITHealthPrescription.Clear;
begin
  id := 0;
  first_code := '';
  second_code := '';
  province := '';
  first_name := '';
  last_name := '';
  fiscal_code := '';
  exemption := False;
  exemption_code := '';
  exemption_income := False;
  Services := 0;
  date := 0.0;
  priority := '';
end;

function TJanuaITHealthPrescription.Count: integer;
begin
  Result := 0
end;

procedure TJanuaITHealthPrescription.LoadFromDataset(aDataset: TDataset);
begin
  { id bigint NOT NULL,
    first_code character varying(20),
    second_code character varying(20),
    province character varying(2),
    first_name character varying(128),
    last_name character varying(128),
    fiscal_code character varying(16),
    exemption boolean,
    exemption_code character varying(6),
    exemption_income boolean,
    services smallint,
    date date,
    priority "char",
    booking_id bigint }

  id := aDataset.FieldByName('id').AsLargeInt;
  first_code := aDataset.FieldByName('first_code').AsWideString;
  second_code := aDataset.FieldByName('second_code').AsWideString;
  province := aDataset.FieldByName('province').AsWideString;
  first_name := aDataset.FieldByName('first_name').AsWideString;
  last_name := aDataset.FieldByName('last_name').AsWideString;
  fiscal_code := aDataset.FieldByName('fiscal_code').AsWideString;
  exemption := aDataset.FieldByName('exemption').AsBoolean;
  exemption_code := aDataset.FieldByName('exemption_code').AsWideString;
  exemption_income := aDataset.FieldByName('exemption_income').AsBoolean;
  Services := aDataset.FieldByName('services').AsInteger;
  date := aDataset.FieldByName('date').AsDateTime;
  priority := aDataset.FieldByName('priority').AsWideString;
  booking_id := aDataset.FieldByName('booking_id').AsLargeInt;
end;

{$IF Defined(WEBBROKER)}

procedure TJanuaITHealthPrescription.LoadFromHttpParams(aRequest: TWebRequest);
begin
  if id = 0 then
    id := Janua.Core.Functions.HttpGetParamInteger(aRequest, 'id');
  first_code := Janua.Core.Functions.HttpGetParamValue(aRequest, 'first_code');
  second_code := Janua.Core.Functions.HttpGetParamValue(aRequest, 'second_code');
  province := Janua.Core.Functions.HttpGetParamValue(aRequest, 'province');
  first_name := Janua.Core.Functions.HttpGetParamValue(aRequest, 'first_name');
  last_name := Janua.Core.Functions.HttpGetParamValue(aRequest, 'last_name');
  fiscal_code := Janua.Core.Functions.HttpGetParamValue(aRequest, 'fiscal_code');
  exemption := not Janua.Core.Functions.HttpgetParamBoolean(aRequest, 'exemption');
  exemption_code := Janua.Core.Functions.HttpGetParamValue(aRequest, 'exemption_code');
  exemption_income := Janua.Core.Functions.HttpgetParamBoolean(aRequest, 'exemption_income');
  Services := Janua.Core.Functions.HttpGetParamInteger(aRequest, 'services');
  date := Janua.Core.Functions.HttpGetParamDate(aRequest, 'date');
  priority := Janua.Core.Functions.HttpGetParamValue(aRequest, 'priority');
  // booking_id := aDataset.FieldByName('booking_id').AsLargeInt;
end;
{$ENDIF Defined(MSWINDOWS)}

procedure TJanuaITHealthPrescription.LoadFromJson(aJson: string);
var
  FJsonObject: TJsonObject;
begin
  FJsonObject := TJsonObject.Create;
  try
    FJsonObject.Parse(BytesOf(aJson), 0);
    LoadFromJsonObject(FJsonObject);
  finally
    FJsonObject.Free;
  end;
end;

procedure TJanuaITHealthPrescription.LoadFromJsonObject(aJsonObject: TJsonObject);
begin

end;

procedure TJanuaITHealthPrescription.SaveToDataset(aDataset: TDataset);
begin

end;

function TJanuaITHealthPrescription.ToString: string;
begin

end;

{ TJanuaWebSessionHealth.TJanuaCustomHealthPrescriptionForm }

function TJanuaCustomHealthPrescriptionForm.Check: boolean;
begin
  Result := False;
  if Assigned(FJanuaServerHealthBooking) then
  begin
    SaveToServer;
    Result := FJanuaServerHealthBooking.CheckPrescription
  end;

end;

procedure TJanuaCustomHealthPrescriptionForm.LoadFromServer;
begin
  if Assigned(FJanuaServerHealthBooking) then
  begin
    // prima carica i dati dal server se assegnato
    FHealthPrescription := FJanuaServerHealthBooking.Booking.HealthPrescription;
    // poi li invia ai comandi.
    SetLocally
  end;
end;

procedure TJanuaCustomHealthPrescriptionForm.SaveToServer;
begin
  StoreLocally;
end;

procedure TJanuaCustomHealthPrescriptionForm.SetHealthPrescription(const Value: TJanuaITHealthPrescription);
begin
  FHealthPrescription := Value;
end;

procedure TJanuaCustomHealthPrescriptionForm.SeTJanuaClientHealthBooking
  (const Value: TJanuaCustomHealthBooking);
begin
  FJanuaServerHealthBooking := Value;
end;

procedure TJanuaCustomHealthPrescriptionForm.SetLocally;
begin
  Ffirst_code.Value := FHealthPrescription.first_code;
  Fsecond_code.Value := FHealthPrescription.second_code;
  Fprovince.Value := FHealthPrescription.province;
  Ffirst_name.Value := FHealthPrescription.first_name;
  Flast_name.Value := FHealthPrescription.last_name;
  Fexemption_code.Value := FHealthPrescription.exemption_code;
end;

procedure TJanuaCustomHealthPrescriptionForm.StoreLocally;
begin
  FHealthPrescription.first_code := Ffirst_code.Value;
  FHealthPrescription.second_code := Fsecond_code.Value;
  FHealthPrescription.province := Fprovince.Value;
  FHealthPrescription.first_name := Ffirst_name.Value;
  FHealthPrescription.last_name := Flast_name.Value;
  FHealthPrescription.exemption_code := Fexemption_code.Value;
end;

{ TJanuaHealthBookingRow }

function TJanuaHealthBookingRow.AsHtml(aTemplate: string): string;
begin

end;

function TJanuaHealthBookingRow.AsJson: string;
begin

end;

function TJanuaHealthBookingRow.AsJsonObject: TJsonObject;
begin
  Result := TJsonObject.Create;
  Janua.Core.JSON.JsonPair(Result, 'booking_id', booking_id);
  Janua.Core.JSON.JsonPair(Result, 'booking64', booking64);
  Janua.Core.JSON.JsonPair(Result, 'institute', Institute.AsJsonObject);
  Janua.Core.JSON.JsonPair(Result, 'booksince', booksince);
  Janua.Core.JSON.JsonPair(Result, 'bookuntil', bookuntil);
  Janua.Core.JSON.JsonPair(Result, 'notes', notes);
  Janua.Core.JSON.JsonPair(Result, 'confirmed', confirmed);
  Janua.Core.JSON.JsonPair(Result, 'opened', opened);
  Janua.Core.JSON.JsonPair(Result, 'db_operator_id', db_operator_id);
  Janua.Core.JSON.JsonPair(Result, 'closed', closed);
  Janua.Core.JSON.JsonPair(Result, 'closed_date', closed_date);
  Janua.Core.JSON.JsonPair(Result, 'booked', booked);
  Janua.Core.JSON.JsonPair(Result, 'booking_date', booking_date);
  Janua.Core.JSON.JsonPair(Result, 'booking_hour', booking_hour);
  Janua.Core.JSON.JsonPair(Result, 'booking_mins', booking_mins);
  Janua.Core.JSON.JsonPair(Result, 'sent', sent);
  Janua.Core.JSON.JsonPair(Result, 'sent_date', sent_date);
  Janua.Core.JSON.JsonPair(Result, 'received', received);
  Janua.Core.JSON.JsonPair(Result, 'received_date', received_date);
  Janua.Core.JSON.JsonPair(Result, 'alarm_sent', alarm_sent);
  Janua.Core.JSON.JsonPair(Result, 'alarm_read', alarm_read);
  Janua.Core.JSON.JsonPair(Result, 'distance', distance);
  Janua.Core.JSON.JsonPair(Result, 'cancelled', cancelled);
  Janua.Core.JSON.JsonPair(Result, 'call_center_notes', call_center_notes);
  Janua.Core.JSON.JsonPair(Result, 'insert_date', insert_date);
  Janua.Core.JSON.JsonPair(Result, 'update_date', update_date);
  Janua.Core.JSON.JsonPair(Result, 'selected', selected);
  Janua.Core.JSON.JsonPair(Result, 'ck_confirmed', ck_confirmed);
  Janua.Core.JSON.JsonPair(Result, 'insurance_confirmed', insurance_confirmed);
  Janua.Core.JSON.JsonPair(Result, 'agreement_confirmed', agreement_confirmed);
  Janua.Core.JSON.JsonPair(Result, 'ck_has_code', ck_has_code);
  Janua.Core.JSON.JsonPair(Result, 'ck_code', ck_code);
  Janua.Core.JSON.JsonPair(Result, 'ck_has_price', ck_has_price);
  Janua.Core.JSON.JsonPair(Result, 'ck_price', ck_price);
  Janua.Core.JSON.JsonPair(Result, 'ck_fast', ck_fast);
  Janua.Core.JSON.JsonPair(Result, 'ck_different_address', ck_different_address);
  Janua.Core.JSON.JsonPair(Result, 'ck_address', ck_address);
end;

procedure TJanuaHealthBookingRow.Clear;
begin
  Institute.Clear;
  booking_id := 0;
  booking64 := '';
  notes := '';
  booked := False;
  cancelled := False;
  confirmed := False;
  booking_date := 0.0;
  booking_hour := 0;
  booking_mins := 0;
end;

procedure TJanuaHealthBookingRow.LoadFromDataset(dsDataset: TDataset; const CheckFields: boolean = False);
begin
  Janua.Core.Functions.GetFieldValue(booking_id, dsDataset, 'booking_id', CheckFields);
  Janua.Core.Functions.GetFieldValue(booking64, dsDataset, 'booking64', CheckFields);
  // set the debug Trace Command on (True) non inserire o mettere False per disattivare il TraceON
  // Specifiche 2017-0013
  Institute.LoadFromDataset(dsDataset, true);
  Janua.Core.Functions.GetFieldValue(notes, dsDataset, 'notes', CheckFields);
  Janua.Core.Functions.GetFieldValue(booked, dsDataset, 'booked', CheckFields);
  Janua.Core.Functions.GetFieldValue(cancelled, dsDataset, 'cancelled', CheckFields);
  Janua.Core.Functions.GetFieldValue(confirmed, dsDataset, 'confirmed', CheckFields);
  Janua.Core.Functions.GetFieldValue(booking_date, dsDataset, 'booking_date', CheckFields);
  Janua.Core.Functions.GetFieldValue(booking_hour, dsDataset, 'booking_hour', CheckFields);
  Janua.Core.Functions.GetFieldValue(booking_mins, dsDataset, 'booking_mins', CheckFields);
end;

procedure TJanuaHealthBookingRow.LoadFromJsonObject(aJsonObject: TJsonObject);
begin
  Janua.Core.JSON.JsonValue(aJsonObject, 'booking_id', booking_id);
  Janua.Core.JSON.JsonValue(aJsonObject, 'booking64', booking64);
  Institute.LoadFromJsonObject(Janua.Core.JSON.JsonObject('institute', aJsonObject));
  Janua.Core.JSON.JsonValue(aJsonObject, 'booksince', booksince);
  Janua.Core.JSON.JsonValue(aJsonObject, 'bookuntil', bookuntil);
  Janua.Core.JSON.JsonValue(aJsonObject, 'notes', notes);
  Janua.Core.JSON.JsonValue(aJsonObject, 'confirmed', confirmed);
  Janua.Core.JSON.JsonValue(aJsonObject, 'opened', opened);
  Janua.Core.JSON.JsonValue(aJsonObject, 'db_operator_id', db_operator_id);
  Janua.Core.JSON.JsonValue(aJsonObject, 'closed', closed);
  Janua.Core.JSON.JsonValue(aJsonObject, 'closed_date', closed_date);
  Janua.Core.JSON.JsonValue(aJsonObject, 'booked', booked);
  Janua.Core.JSON.JsonValue(aJsonObject, 'booking_date', booking_date);
  Janua.Core.JSON.JsonValue(aJsonObject, 'booking_hour', booking_hour);
  Janua.Core.JSON.JsonValue(aJsonObject, 'booking_mins', booking_mins);
  Janua.Core.JSON.JsonValue(aJsonObject, 'sent', sent);
  Janua.Core.JSON.JsonValue(aJsonObject, 'sent_date', sent_date);
  Janua.Core.JSON.JsonValue(aJsonObject, 'received', received);
  Janua.Core.JSON.JsonValue(aJsonObject, 'received_date', received_date);
  Janua.Core.JSON.JsonValue(aJsonObject, 'alarm_sent', alarm_sent);
  Janua.Core.JSON.JsonValue(aJsonObject, 'alarm_read', alarm_read);
  Janua.Core.JSON.JsonValue(aJsonObject, 'distance', distance);
  Janua.Core.JSON.JsonValue(aJsonObject, 'cancelled', cancelled);
  Janua.Core.JSON.JsonValue(aJsonObject, 'call_center_notes', call_center_notes);
  Janua.Core.JSON.JsonValue(aJsonObject, 'insert_date', insert_date);
  Janua.Core.JSON.JsonValue(aJsonObject, 'update_date', update_date);
  Janua.Core.JSON.JsonValue(aJsonObject, 'selected', selected);
  Janua.Core.JSON.JsonValue(aJsonObject, 'ck_confirmed', ck_confirmed);
  Janua.Core.JSON.JsonValue(aJsonObject, 'insurance_confirmed', insurance_confirmed);
  Janua.Core.JSON.JsonValue(aJsonObject, 'agreement_confirmed', agreement_confirmed);
  Janua.Core.JSON.JsonValue(aJsonObject, 'ck_has_code', ck_has_code);
  Janua.Core.JSON.JsonValue(aJsonObject, 'ck_code', ck_code);
  Janua.Core.JSON.JsonValue(aJsonObject, 'ck_has_price', ck_has_price);
  Janua.Core.JSON.JsonValue(aJsonObject, 'ck_price', ck_price);
  Janua.Core.JSON.JsonValue(aJsonObject, 'ck_fast', ck_fast);
  Janua.Core.JSON.JsonValue(aJsonObject, 'ck_different_address', ck_different_address);
  Janua.Core.JSON.JsonValue(aJsonObject, 'ck_address', ck_address);
end;

{$IFDEF WEBBROKER}

procedure TJanuaHealthBookingRow.LoadFromHttpParams(aRequest: TWebRequest);
begin

end;

procedure TJanuaHealthBookingRow.LoadFromPersonHttpParams(aRequest: TWebRequest);
begin

end;

{$ENDIF}
{ TJanuaHealthBookingRows }

procedure TJanuaHealthBookingRows.Add(aAnagraph: TJanuaHealthBookingRow);
begin
  SetLength(Items, Count + 1);
  Items[Count - 1] := aAnagraph;
  SelectedItem := Items[Count - 1];
end;

procedure TJanuaHealthBookingRows.Add(aObject: TJsonObject);
var
  aAnagraph: TJanuaHealthBookingRow;
begin
  aAnagraph.LoadFromJsonObject(aObject);
  Add(aAnagraph);
end;

function TJanuaHealthBookingRows.AsHtml(aTemplateHeader, aTemplateRow: string; bJavascript: boolean): string;
begin

end;

{$IF Defined(WEBBROKER)}

procedure TJanuaHealthBookingRows.Add(aRequest: TWebRequest);
begin

end;
{$ENDIF}

function TJanuaHealthBookingRows.AsHtml(bJavascript: boolean): string;
begin

end;

function TJanuaHealthBookingRows.AsJson: string;
begin

end;

procedure TJanuaHealthBookingRows.Clear;
begin
  SetLength(Items, 0);
  SecondLineChar := '';
  TemplateHeader := '';
  TemplateRow := '';
  // Easy way to Clean;
end;

function TJanuaHealthBookingRows.Count: integer;
begin
  Result := Length(Items);
end;

function TJanuaHealthBookingRows.GetAsJsonObject: TJsonObject;
var
  aItem: TJanuaHealthBookingRow;
  aArray: TJsonArray;
begin
  Result := TJsonObject.Create;
  {
    Janua.Core.Json.JsonPair(Result, 'SecondLineChar', SecondLineChar);
    Janua.Core.Json.JsonPair(Result, 'TemplateHeader', TemplateHeader);
    Janua.Core.Json.JsonPair(Result, 'TemplateRow', TemplateRow);
  }
  Janua.Core.JSON.JsonPair(Result, 'count', Length(Items));
  aArray := TJsonArray.Create;
  for aItem in Items do
    aArray.AddElement(aItem.AsJsonObject);
  Janua.Core.JSON.JsonPair(Result, 'items', aArray);
end;

procedure TJanuaHealthBookingRows.LoadFromDataset(aDataset: TDataset);
begin
  // Specifiche 2017-0006 - Health Booking Rows
  Clear;
  if Assigned(aDataset) and (aDataset.RecordCount > 0) then
  begin
    aDataset.First;
    while not aDataset.Eof do
    begin
      SetLength(Items, Count + 1);
      Items[Count - 1].LoadFromDataset(aDataset);
      aDataset.Next;
    end;
  end;
end;

procedure TJanuaHealthBookingRows.LoadFromJson(aJson: string);
var
  LJSONObject: TJsonObject;
  vParsed: integer;

begin
  LJSONObject := nil;

  try
    LJSONObject := TJsonObject.Create;
    { convert String to JSON }
    vParsed := LJSONObject.Parse(BytesOf(aJson), 0);

    if vParsed > 0 then
    begin
      LoadFromJsonObject(LJSONObject);
    end
    else
    begin
      raise Exception.Create('TJanuaAnagraphs Error in Json Parse, not a json text');
    end;

  finally
    LJSONObject.Free;
  end;

end;

procedure TJanuaHealthBookingRows.LoadFromJsonObject(aJson: TJsonObject);
var
  aValue: TJsonValue;
  aPair: TJsonPair;
  aObject: TJsonObject;
begin
  Clear;
  aPair := aJson.Get('items');
  {
    SecondLineChar := aJson.GetValue('SecondLineChar').Value;
    TemplateHeader := aJson.GetValue('TemplateHeader').Value;
    TemplateRow := aJson.GetValue('TemplateRow').Value;
  }
  if Assigned(aPair) then
    for aValue in (aPair.JsonValue as TJsonArray) do
    begin
      aObject := (aValue as TJsonObject);
      Add(aObject);
    end;
end;

{$IF Defined(WEBBROKER)}

procedure TJanuaHealthBookingRows.AddFromHttpParams(aRequest: TWebRequest);
var
  aRow: TJanuaHealthBookingRow;
begin
  aRow.LoadFromHttpParams(aRequest);
  Add(aRow);
end;
{$ENDIF}
{ TJanuaClientHealthBooking }

procedure TJanuaClientHealthBooking.CreateDataModule;
begin
  inherited;

end;

destructor TJanuaClientHealthBooking.Destroy;
begin

  inherited;
end;

procedure TJanuaClientHealthBooking.DestroyDataModule(Force: boolean);
begin
  inherited;

end;

function TJanuaClientHealthBooking.InternalActivate: boolean;
begin
  Result := False;
end;

function TJanuaClientHealthBooking.InternalAssignSessionBooking: boolean;
begin
  Result := False;
end;

function TJanuaClientHealthBooking.InternalBookingInstitutes: TDataset;
begin
  Result := nil;
end;

function TJanuaClientHealthBooking.InternalCheckOut: boolean;
begin
  Result := False;
end;

function TJanuaClientHealthBooking.InternalCheckSessionKey: boolean;
begin
  Result := False;
end;

function TJanuaClientHealthBooking.InternalDoBooking: int64;
begin
  Result := 0;
end;

function TJanuaClientHealthBooking.InternalFinalisation(aBooking: TJanuaHealthBooking): boolean;
begin
  Result := False;
end;

function TJanuaClientHealthBooking.InternalInstituteConfirmation: boolean;
begin
  Result := False;
end;

function TJanuaClientHealthBooking.InternalOpenBooking: boolean;
begin
  Result := False;
end;

function TJanuaClientHealthBooking.InternalSearchInstitutes: boolean;
begin
  Result := False;
end;

function TJanuaClientHealthBooking.InternalSearchServices: boolean;
begin
  Result := False;
end;

function TJanuaClientHealthBooking.InternalSetUPServices: boolean;
begin
  Result := False;
end;

function TJanuaClientHealthBooking.SearchPostalCode(aCode: string): string;
begin
  Result := '';
end;

procedure TJanuaClientHealthBooking.SetUserSessionProfile;
begin
  inherited;

end;

{ TJanuaHealthSearch }

function TJanuaHealthSearch.AsJson: string;
begin
  Result := '';
end;

procedure TJanuaHealthSearch.Clear;
begin
  Institutes.Clear;
  Search := '';
  id := 0;
end;

function TJanuaHealthSearch.Count: integer;
begin
  Result := Institutes.Count;
end;

function TJanuaHealthSearch.GetAsJsonObject: TJsonObject;
begin

  { id: int64;
    Institutes: TJanuaAnagraphs;
    ItemID: int64;
    Limit: integer;
    Serch: string;
    Address: string;
    Coordinates: TJanuaRecordCoordinates; }

  Result := TJsonObject.Create;
  Janua.Core.JSON.JsonPair(Result, 'id', id);
  Janua.Core.JSON.JsonPair(Result, 'header', Header.AsJsonObject);
  Janua.Core.JSON.JsonPair(Result, 'search', Search);
  Janua.Core.JSON.JsonPair(Result, 'institutes', Institutes.AsJsonObject);
end;

procedure TJanuaHealthSearch.LoadFromJson(aJson: string);
begin
  LoadFromJsonObject(Janua.Core.JSON.JsonParse(aJson));
end;

procedure TJanuaHealthSearch.LoadFromJsonObject(aJson: TJsonObject);
begin
  { id: int64;
    Institutes: TJanuaAnagraphs;
    ItemID: int64;
    Limit: integer;
    Serch: string;
    Address: string;
    Coordinates: TJanuaRecordCoordinates; }
  Janua.Core.JSON.JsonValue(aJson, 'id', id);
  Header.LoadFromJsonObject(Janua.Core.JSON.JsonObject('header', aJson));
  Janua.Core.JSON.JsonValue(aJson, 'search', Search);
  Institutes.LoadFromJsonObject(Janua.Core.JSON.JsonObject('institutes', aJson));

end;

{ TJanuaHealthSearchHeader }

function TJanuaHealthSearchHeader.AsJson: string;
begin
  Result := AsJsonObject.ToJSON
end;

function TJanuaHealthSearchHeader.AsJsonObject: TJsonObject;
begin
  Result := TJsonObject.Create;
  Janua.Core.JSON.JsonPair(Result, 'itemid', ItemID);
  Janua.Core.JSON.JsonPair(Result, 'limit', Limit);
  Janua.Core.JSON.JsonPair(Result, 'page', page);
  Janua.Core.JSON.JsonPair(Result, 'address', address);
  Janua.Core.JSON.JsonPair(Result, 'coordinates', Coordinates.AsJsonObject);
end;

procedure TJanuaHealthSearchHeader.Clear;
begin
  Limit := 0;
  address := '';
  Coordinates.Clear;
  ItemID := 0;
end;

procedure TJanuaHealthSearchHeader.LoadFromJson(aJson: string);
begin
  LoadFromJsonObject(Janua.Core.JSON.JsonParse(aJson));
end;

procedure TJanuaHealthSearchHeader.LoadFromJsonObject(aJson: TJsonObject);
begin
  Janua.Core.JSON.JsonValue(aJson, 'itemid', ItemID);
  Janua.Core.JSON.JsonValue(aJson, 'limit', Limit);
  Janua.Core.JSON.JsonValue(aJson, 'address', address);
  Janua.Core.JSON.JsonValue(aJson, 'page', page);
  Coordinates.LoadFromJsonObject(Janua.Core.JSON.JsonObject('coordinates', aJson));
end;

{ TJanuaCustomHealthClient }

procedure TJanuaCustomHealthClient.BookingUndoLocalCache;
begin
  FBooking.Clear;
end;

constructor TJanuaCustomHealthClient.Create;
begin
  inherited;

end;

function TJanuaCustomHealthClient.CreateNewUser(aUser: TJanuaRecordUserProfile): boolean;
begin
  Result := inherited;
end;

destructor TJanuaCustomHealthClient.Destroy;
begin

  inherited;
end;

function TJanuaCustomHealthClient.GetCoordinates: TJanuaRecordCoordinates;
begin
  Result := FBooking.Coordinates;
end;

function TJanuaCustomHealthClient.getPrescription: TJanuaITHealthPrescription;
begin
  Result := FBooking.HealthPrescription
end;

function TJanuaCustomHealthClient.GetRelative: TJanuaAnagraphRecord;
begin
  Result := FBooking.Relative;
end;

function TJanuaCustomHealthClient.GetSearch: TJanuaHealthSearch;
begin
  Result := FBooking.Search;
end;

procedure TJanuaCustomHealthClient.NewBooking;
begin
  FBooking.Clear;
end;

procedure TJanuaCustomHealthClient.RandomInstitues(N: integer);
var
  i: integer;
begin
  // qrySearchInstitutes.First;
  if FBooking.Search.Institutes.Count > 0 then
    for i := 0 to Min(N, FBooking.Search.Institutes.Count) - 1 do
    begin
      FBooking.Institutes.Add(FBooking.Search.Institutes.Items[i]);
    end;
end;

procedure TJanuaCustomHealthClient.setBooking(const Value: TJanuaHealthBooking);
begin
  FBooking := Value;
end;

procedure TJanuaCustomHealthClient.SetCoordinates(const Value: TJanuaRecordCoordinates);
begin
  FBooking.Coordinates := Value;
end;

procedure TJanuaCustomHealthClient.SetMeetings(const Value: TJanuaHealthBookingRows);
begin
  FMeetings := Value;
end;

procedure TJanuaCustomHealthClient.SetNotifications(const Value: TJanuaHealthNotifications);
begin
  FNotifications := Value;
end;

procedure TJanuaCustomHealthClient.setPrescription(const Value: TJanuaITHealthPrescription);
begin
  if Value.checked then
  begin
    FBooking.HasPrescription := true;
    FBooking.HealthPrescription := Value;
  end
  else
  begin
    FBooking.HasPrescription := False;
    FBooking.HealthPrescription.Clear;
  end;
end;

procedure TJanuaCustomHealthClient.SetRelative(const Value: TJanuaAnagraphRecord);
begin
  // FBooking.Relative := Value;
  FBooking.HasRelative := FBooking.CheckPerson(Value, FLastErrorMessage);

  // True;
end;

procedure TJanuaCustomHealthClient.SetSearch(const Value: TJanuaHealthSearch);
begin
  FBooking.Search := Value;
end;

{ TJanuaHealthNotification }

function TJanuaHealthNotification.GetAsJsonObject: TJsonObject;
begin
  { id: int64;
    title: string;
    notification: string;
    bookingID: int64;
    UserID: integer;
    date: TDateTime;
    read: boolean;
  }
  Result := TJsonObject.Create;
  Janua.Core.JSON.JsonPair(Result, 'id', id);
  Janua.Core.JSON.JsonPair(Result, 'type_id', type_id);
  Janua.Core.JSON.JsonPair(Result, 'title', title);
  Janua.Core.JSON.JsonPair(Result, 'notification', notification);
  Janua.Core.JSON.JsonPair(Result, 'bookingid', bookingID);
  Janua.Core.JSON.JsonPair(Result, 'userid', UserID);
  Janua.Core.JSON.JsonPair(Result, 'date', date);
  Janua.Core.JSON.JsonPair(Result, 'read', read);
  Janua.Core.JSON.JsonPair(Result, 'level', level);
  Janua.Core.JSON.JsonPair(Result, 'solved', solved);
end;

function TJanuaHealthNotification.getId64: string;
begin
  Result := Encode64(id.ToString)
end;

function TJanuaHealthNotification.GetNotificationID: integer;
begin
  Result := -1;
  { TODO -oRiccardo -cImplment Method : Implementare TJanuaHealthNotification.GetNotificationID }
end;

procedure TJanuaHealthNotification.LoadFromDataset(aDataset: TDataset);
begin
  {
    SELECT n.id, n.type_id, n.title, n.message, n.db_schema_id, n.db_user_id, n.datetime,
    read, booking_id, solved, from_user_id, booking_action, t.level, t.type_name
    FROM health.notifications n, health.notifications_types t
    where t.id = n.type_id
    order by read, t.level
  }
  if Assigned(aDataset) then
  begin
    Janua.Core.Functions.GetFieldValue(id, aDataset, 'id');
    Janua.Core.Functions.GetFieldValue(type_id, aDataset, 'type_id');
    Janua.Core.Functions.GetFieldValue(title, aDataset, 'title');
    Janua.Core.Functions.GetFieldValue(notification, aDataset, 'message');
    Janua.Core.Functions.GetFieldValue(bookingID, aDataset, 'booking_id');
    Janua.Core.Functions.GetFieldValue(UserID, aDataset, 'db_user_id');
    Janua.Core.Functions.GetFieldValue(date, aDataset, 'datetime');
    Janua.Core.Functions.GetFieldValue(read, aDataset, 'read');
    Janua.Core.Functions.GetFieldValue(level, aDataset, 'level');
    Janua.Core.Functions.GetFieldValue(solved, aDataset, 'solved');
  end;
end;

procedure TJanuaHealthNotification.LoadFromJsonObject(const Value: TJsonObject);
begin
  if Assigned(Value) then
  begin
    Janua.Core.JSON.JsonValue(Value, 'id', id);
    Janua.Core.JSON.JsonValue(Value, 'type_id', type_id);
    Janua.Core.JSON.JsonValue(Value, 'title', title);
    Janua.Core.JSON.JsonValue(Value, 'notification', notification);
    Janua.Core.JSON.JsonValue(Value, 'bookingid', bookingID);
    Janua.Core.JSON.JsonValue(Value, 'userid', UserID);
    Janua.Core.JSON.JsonValue(Value, 'date', date);
    Janua.Core.JSON.JsonValue(Value, 'read', read);
    Janua.Core.JSON.JsonValue(Value, 'level', level);
    Janua.Core.JSON.JsonValue(Value, 'solved', solved);
  end;
end;

procedure TJanuaHealthNotification.SaveToDataset(aDataset: TDataset);
begin
  if Assigned(aDataset) then
  begin
    aDataset.Edit;
    Janua.Core.Functions.SetFieldValue(id, aDataset, 'id');
    Janua.Core.Functions.SetFieldValue(type_id, aDataset, 'type_id');
    Janua.Core.Functions.SetFieldValue(title, aDataset, 'title');
    Janua.Core.Functions.SetFieldValue(notification, aDataset, 'message');
    Janua.Core.Functions.SetFieldValue(bookingID, aDataset, 'booking_id');
    Janua.Core.Functions.SetFieldValue(UserID, aDataset, 'db_user_id');
    Janua.Core.Functions.SetFieldValue(date, aDataset, 'datetime');
    Janua.Core.Functions.SetFieldValue(read, aDataset, 'read');
    Janua.Core.Functions.SetFieldValue(level, aDataset, 'level');
    Janua.Core.Functions.SetFieldValue(solved, aDataset, 'solved');
    aDataset.Post;
  end;
end;

procedure TJanuaHealthNotification.setId64(const Value: string);
begin
  id := Decode64(Value).ToInt64;
end;

procedure TJanuaHealthNotification.SetNotificationType(const Value: TJanuaHealthNotificationType);
begin
  FNotificationType := Value;
end;

{ TJanuaHealthNotifications }

procedure TJanuaHealthNotifications.Add(aObject: TJsonObject);
var
  i: integer;
begin
  i := AddItem;
  Items[i].LoadFromJsonObject(aObject);
end;

procedure TJanuaHealthNotifications.Add(aDataset: TDataset);
var
  i: integer;
begin
  i := AddItem;
  Items[i].LoadFromDataset(aDataset);
end;

function TJanuaHealthNotifications.AddItem: integer;
begin
  SetLength(Items, Count + 1);
  Result := Count - 1;
end;

function TJanuaHealthNotifications.AsHtml(aTemplate: string): string;
begin

end;

function TJanuaHealthNotifications.AsHtml: string;
var
  aList: TStrings;
  aNotification: TJanuaHealthNotification;
begin
  aList := TStringList.Create;
  try
    aList.Add('<div class="portlet light bordered">');
    aList.Add('    <div class="portlet-title">');
    aList.Add('        <div class="caption">');
    aList.Add('            <i class="icon-list font-blue"></i>');
    aList.Add(
      '            <span class="caption-subject font-blue sbold uppercase">Lista Attivit&agrave;</span>');
    aList.Add('        </div>');
    aList.Add('        <div class="actions">');
    aList.Add('            <div class="btn-group btn-group-devided" data-toggle="buttons">');
    aList.Add('</div>');
    aList.Add('        </div>');
    aList.Add('    </div>');
    aList.Add('    <div class="portlet-body">');
    aList.Add('        <div class="table-scrollable">');
    aList.Add('            <table class="table table-hover">');
    aList.Add('                <thead>');
    aList.Add('                    <tr>');
    aList.Add('                        <th> Data </th>');
    aList.Add('                        <th> Notifica</th>');
    aList.Add('                    </tr>');
    aList.Add('                </thead>');
    aList.Add('                <tbody>');
    for aNotification in Items do
    begin
      aList.Add('                    <tr>');
      aList.Add('                        <td>' + FormatDateTime('dd/mm/yyyy', aNotification.date) +
        ' </td> ');
      aList.Add('                        <td> ' + aNotification.title + ' </td>');
      aList.Add('                    </tr>');
    end;
    aList.Add('                </tbody>');
    aList.Add('            </table>');
    Result := aList.Text;
  finally
    aList.DisposeOf
  end;
end;

procedure TJanuaHealthNotifications.Clear;
begin
  SetLength(Items, 0);
end;

function TJanuaHealthNotifications.FindItemByID(aID: int64): boolean;
var
  i: integer;
begin
  Result := False;
  for i := Low(Items) to High(Items) do
    if Items[i].id = aID then
    begin
      Result := true;
      FSelectedItem := Items[i];
      ItemIndex := i;
      Exit
    end;
end;

function TJanuaHealthNotifications.GetAsJsonObject: TJsonObject;
var
  aItem: TJanuaHealthNotification;
  aArray: TJsonArray;
begin
  Result := TJsonObject.Create;
  aArray := TJsonArray.Create;
  for aItem in Items do
    aArray.AddElement(aItem.AsJsonObject);
  Janua.Core.JSON.JsonPair(Result, 'items', aArray);
  Janua.Core.JSON.JsonPair(Result, 'count', Count);
end;

function TJanuaHealthNotifications.GetCount: integer;
begin
  Result := Length(Items);
end;

function TJanuaHealthNotifications.GetUnread: integer;
var
  a: TJanuaHealthNotification;
begin
  Result := 0;
  if Count > 0 then
    for a in Items do
      if not a.read then
        Inc(Result);

end;

procedure TJanuaHealthNotifications.LoadFromDataset(aDataset: TDataset);
begin
  Clear;
  if Assigned(aDataset) and aDataset.Active and (aDataset.RecordCount > 0) then
  begin
    aDataset.First;
    while not aDataset.Eof do
    begin
      Add(aDataset);
      aDataset.Next;
    end;
  end;

end;

procedure TJanuaHealthNotifications.LoadFromJsonObject(const Value: TJsonObject);
var
  aValue: TJsonValue;
  aPair: TJsonPair;
  aObject: TJsonObject;
begin
  Clear;
  // temporaneamente movimento solo l'array di items ma non le righe di template
  {
    SecondLineChar := aJson.GetValue('SecondLineChar').Value;
    TemplateHeader := aJson.GetValue('TemplateHeader').Value;
    TemplateRow := aJson.GetValue('TemplateRow').Value;
  }
  aPair := Value.Get('items');
  if Assigned(aPair) then
    for aValue in (aPair.JsonValue as TJsonArray) do
    begin
      aObject := (aValue as TJsonObject);
      Add(aObject);
    end;
end;

procedure TJanuaHealthNotifications.SaveToDataset(aDataset: TDataset);
begin

end;

procedure TJanuaHealthNotifications.SetSelectedItem(const Value: TJanuaHealthNotification);
begin
  FSelectedItem := Value;
end;

end.
