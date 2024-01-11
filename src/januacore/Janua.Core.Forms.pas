unit Janua.Core.Forms;

interface

{$I JANUACORE.INC}

uses
  System.Classes, Generics.Collections,
  Data.DB,
  // Janua Core Libraries
  Janua.Core.System, Janua.Core.Types, Janua.Core.Classes, Janua.Core.Servers, Janua.Orm.Types;

type
  TJanuaFormAlign = (jfaLeft, jfaRight, jfaCenter, jfaClient);

type
  TJanuaWebFormSchema = record
    id: integer;
    Name: string;
    Key: string;
    Title: string;
    JanuaFormDef: TJanuaFormDef;
    SiteUrl: string;
    FormUrl: string;
  end;

type
  TJanuaComponentProperty = record
    id: int64;
    Name: string;
    translatable: boolean;
    PropertyType: TJanuaFieldType;
    Value: Variant;
  public
    function AsString: string;
    function AsInteger: integer;
    function IsInteger: boolean;
    function IsNumber: boolean;
    function IsDate: boolean;
    function isString: boolean;
    function IsNull: boolean;
    function IsBoolean: boolean;
    function BasicType: integer;
  end;

type
  TJanuaFormComponent = record
    Name: string;
    ComponentType: TJanuaComponentTypes;
    id: int64;
    owner_id: int64;
    ownerName: string;
    ItemIndex: integer;
    properties: array of TJanuaComponentProperty;
    selectedProperty: TJanuaComponentProperty;
    Components: array of TJanuaFormComponent;
  public
    procedure AddChild(aElement: TJanuaFormComponent);
    function FindObject(aObject: string): boolean;
    procedure AddProperty(aProperty: TJanuaComponentProperty);
    function FindProperty(aName: string): boolean;
  end;

type
  TJanuaFrameDefinition = record
    Components: array of TJanuaFormComponent;
    id: int64;
    Title: string;
    hint: string;
    selectedComponent: TJanuaFormComponent;
  public
    procedure Add(aElement: TJanuaFormComponent);
    function FindObject(aObject: string): boolean;
  end;

type
  TJanuaFormDefinition = record
    Components: array of TJanuaFormComponent;
    Frames: array of TJanuaFrameDefinition;
    id: int64;
    Title: string;
    hint: string;
    selectedComponent: TJanuaFormComponent;
  public
    procedure Add(aElement: TJanuaFormComponent);
    function FindObject(aObject: string): boolean;
  end;

type
  /// <summary>
  /// this is the core Dialog Box for the complete form Translation
  /// </summary>
  TJanuaCustomFormTransDialog = class(TJanuaCoreComponent)
  private
    FDataSet: TDataset;
    procedure SetDataSet(const Value: TDataset);
  public
    function Execute: boolean; virtual; abstract;
  published
    property DataSet: TDataset read FDataSet write SetDataSet;
  end;

type
  /// <summary>
  /// Janua Custom Server Forms is the connection with Database definitions
  /// for Forms, is used to retrieve informations about the generation and
  /// translation of forms and web-forms
  /// </summary>
  TJanuaCustomServerForms = class(TJanuaCustomServer)
  private
    FJanuaServerSystem: TJanuaCustomServerSystem;
    FLanguage: TJanuaLanguage;
    FJanuaFormDefinition: TJanuaFormDefinition;
    FdsComponentsTranslations: TDataset;
    FJanuaTransDialog: TJanuaCustomFormTransDialog;
    FJanuaIsoCulture: TJanuaIsoCulture;
    procedure SetJanuaServerSystem(const Value: TJanuaCustomServerSystem);
    procedure SetJanuaFormDefinition(const Value: TJanuaFormDefinition);
    procedure SetdsComponentsTranslations(const Value: TDataset);
    procedure SetJanuaTransDialog(const Value: TJanuaCustomFormTransDialog);
    procedure SetJanuaIsoCulture(const Value: TJanuaIsoCulture);
  protected
    procedure TranslateFormInternal; virtual; abstract;
  public
    // procedure TranslateComponent(var aComponent: TJanuaFormComponent); virtual; abstract;
    procedure TranslateForm(var aDef: TJanuaFormDefinition); overload;
    procedure TranslateForm(var aDef: TJanuaFormDefinition; aLanguage: TJanuaLanguage); overload;
    procedure TranslateForm; overload;
    procedure OpenDialogTranslate;
    property JanuaIsoCulture: TJanuaIsoCulture read FJanuaIsoCulture write SetJanuaIsoCulture;
    property JanuaFormDefinition: TJanuaFormDefinition read FJanuaFormDefinition write SetJanuaFormDefinition;
  published
    property JanuaServerSystem: TJanuaCustomServerSystem read FJanuaServerSystem write SetJanuaServerSystem;

    /// <summary>
    /// This is the Dataset connected to the DataModule.
    /// </summary>
    property dsComponentsTranslations: TDataset read FdsComponentsTranslations write SetdsComponentsTranslations;
    property JanuaTransDialog: TJanuaCustomFormTransDialog read FJanuaTransDialog write SetJanuaTransDialog;

  end;

type
  /// <summary>
  /// This is the list of the Core form Schemas. E.G. the urls connected with
  /// a particular Schema. The url and forms list can b added even by Database
  /// The URLs are added to the list during creation of Server Controller a call to this class
  /// can help us to retrieve always the correct url of the form we are calling
  /// </summary>
  TJanuaCoreFormSchemas = class(TJanuaCoreComponent)
  private
    FJanuaWebFormDef: TJanuaFormDef;
    FSelectedJanuaWebFormSchema: TJanuaWebFormSchema;
    FJanuaWebFormSchemas: TDictionary<string, TJanuaWebFormSchema>;
    FFormCount: integer;
    FIsSet: boolean;
    FJanuaCulture: TJanuaIsoLanguageCountry;
    FJanuaServerForms: TJanuaCustomServerForms;
    procedure SetJanuaWebFormDef(const Value: TJanuaFormDef);
    procedure AddUni;
    procedure AddHay;
    procedure SetJanuaCulture(const Value: TJanuaIsoLanguageCountry);
    procedure SetJanuaServerForms(const Value: TJanuaCustomServerForms);
  strict protected
    function InternalActivate: boolean; override;
  protected
    function SearchFormSchema(aDef: TJanuaFormDef): boolean; overload;
    function SearchFormSchema(aName: string): boolean; overload;
  public
    procedure AddFormSchema(const aSchema: TJanuaWebFormSchema);
    function GetFormUrl(aDef: TJanuaFormDef): string; overload;
    function GetFormUrl(aName: string): string; overload;
    constructor Create(AOwner: TComponent); override;
  published
    property JanuaWebFormDef: TJanuaFormDef read FJanuaWebFormDef write SetJanuaWebFormDef default jwsNone;
    property SiteUrl: string read FSelectedJanuaWebFormSchema.SiteUrl;
    property FormName: string read FSelectedJanuaWebFormSchema.Name;
    property FormUrl: string read FSelectedJanuaWebFormSchema.FormUrl;
    property FormCount: integer read FFormCount;
    property IsSet: boolean read FIsSet default false;
    property JanuaCulture: TJanuaIsoLanguageCountry read FJanuaCulture write SetJanuaCulture;
    property JanuaServerForms: TJanuaCustomServerForms read FJanuaServerForms write SetJanuaServerForms;
  end;

type
  TJanuaCustomApplication = class(TJanuaCoreComponent)
  private
    FJanuaServerForm: TJanuaCustomServerForms;
    procedure SetJanuaServerForm(const Value: TJanuaCustomServerForms);
  public
  published

    property JanuaServerForm: TJanuaCustomServerForms read FJanuaServerForm write SetJanuaServerForm;

  end;

type
  /// <summary>
  /// <para>
  /// This is the root Component Class for DBNavController. This class is (usually)
  /// connected to a Frame Class to store and retrieve frame structure, according to app. dbnav.
  /// It can Store its informations in an Internal ClientDataset. This can
  /// be connected to a DBNav Define Dialog that is a custom Dialog, this class is usually nested
  /// into a Frame Class (simply beacause a frame cannot be create without a parent form) and its
  /// propreties can cange according to the containter form and the application
  /// </para>
  /// </summary>
  TJanuaCoreFrameDBNavController = class(TJanuaCoreComponent)

  end;

type
  /// <summary>
  /// <para>
  /// This is the root Component Class for Frames. This class is (usually)
  /// connected to a Server Form Class to store and retrieve frame structure.
  /// It can Store its informations in an Internal ClientDataset. This can
  /// be connected to a Frame Define Dialog that is a custom Dialog, this class is usually nested
  /// into a Form Class (simply beacause a frame cannot be create without a parent form) and its
  /// propreties can cange according to the containter form and the application
  /// </para>
  /// </summary>
  TJanuaCoreFrameComponent = class(TJanuaCoreComponent)

  end;

type
  /// <summary>
  /// <para>
  /// This is the root Component Class for Forms. This class is (usually)
  /// connected to a Server Form Class to store and retrieve form structure.
  /// It can Store its informations in an Internal ClientDataset. This can
  /// be connected to a Form Define Dialog that is a custom Dialog
  /// </para>
  /// </summary>
  TJanuaCoreFormComponent = class(TJanuaCoreComponent)
  private
    FApplication: TJanuaCustomApplication;
    FJanuaFormDef: TJanuaFormDef;
    FJanuaFormSchema: TJanuaWebFormSchema;
    FStoreForm: boolean;
    FJanuaIsoCulture: TJanuaIsoLanguageCountry;
    FOnChangeLanguage: TNotifyEvent;
    FFormKey: string;
    FFormTitle: string;
    FJanuaFrames: array of TJanuaCoreFrameComponent;
    FJanuaSelectedFrame: TJanuaCoreFrameComponent;
    procedure SetJanuaServerSystem(const Value: TJanuaCustomServerForms);
    procedure SetDefinition(const Value: TJanuaFormDefinition);
    procedure SetJanuaFormDef(const Value: TJanuaFormDef);
    procedure SetJanuaFormSchemas(const Value: TJanuaCoreFormSchemas);
    procedure AssignFormSchema;
    procedure SetStoreForm(const Value: boolean);
    procedure SetJanuaIsoCulture(const Value: TJanuaIsoLanguageCountry);
    procedure SetFormKey(const Value: string);
    procedure SetFormTitle(const Value: string);
  protected
    FDefinition: TJanuaFormDefinition;
    FDefined: boolean;
    FSelectedObject: TJanuaFormComponent;
    FSelectedProperty: TJanuaComponentProperty;
    FJanuaServerForms: TJanuaCustomServerForms;
    FJanuaFormSchemas: TJanuaCoreFormSchemas;
    procedure SetLanguage(const Value: TJanuaLanguage); override;
    procedure SetApplication(const Value: TJanuaCustomApplication); virtual;
  strict protected
    function InternalActivate: boolean; override;
  public
    Constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property Definition: TJanuaFormDefinition read FDefinition write SetDefinition;
    procedure TranslateForm(aLanguage: TJanuaLanguage); virtual;
    function StoreFormDB: boolean; Virtual;
    procedure UpdateForm; Virtual; Abstract;
    procedure GetForm; Virtual; Abstract;
    function AddFrame(aFrame: TJanuaCoreFrameComponent): integer;
  published
    property FormKey: string read FFormKey write SetFormKey;
    property JanuaFormSchemas: TJanuaCoreFormSchemas read FJanuaFormSchemas write SetJanuaFormSchemas;
    property JanuaApplication: TJanuaCustomApplication read FApplication write SetApplication;
    property JanuaServerForms: TJanuaCustomServerForms read FJanuaServerForms write SetJanuaServerSystem;
    property JanuaFormDef: TJanuaFormDef read FJanuaFormDef write SetJanuaFormDef;
    property StoreForm: boolean read FStoreForm write SetStoreForm stored false;
    property JanuaIsoCulture: TJanuaIsoLanguageCountry read FJanuaIsoCulture write SetJanuaIsoCulture;
    property OnChangeLanguage: TNotifyEvent read FOnChangeLanguage write FOnChangeLanguage;
    property FormTitle: string read FFormTitle write SetFormTitle;
    property SelectedFrame: TJanuaCoreFrameComponent read FJanuaSelectedFrame;
  end;
  { }

implementation

uses System.SysUtils, System.Variants, Janua.Core.Functions, Janua.Application.Framework;

{ TJanuaWebFormSchemas }

procedure TJanuaCoreFormSchemas.AddFormSchema(const aSchema: TJanuaWebFormSchema);
begin
  FJanuaWebFormSchemas.Add(aSchema.Name, aSchema);
  // SetLength(self.FJanuaWebFormSchemas, Length(FJanuaWebFormSchemas) + 1);
  // self.FJanuaWebFormSchemas[Length(FJanuaWebFormSchemas) - 1] := aSchema;
end;

procedure TJanuaCoreFormSchemas.AddHay;
var
  vFormSchema: TJanuaWebFormSchema;
begin
  vFormSchema.JanuaFormDef := jwsUniAbout;
  vFormSchema.id := 23;
  vFormSchema.Key := '37693cfc748049e45d87b8c7d8b9aacd21001323ffda6c7f9f2b922042793ba7';
  vFormSchema.SiteUrl := 'www.habyook.net';
  vFormSchema.FormUrl := 'haybook-intro.html';
  vFormSchema.Name := 'frmHayBookIntro';
  self.AddFormSchema(vFormSchema);
end;

procedure TJanuaCoreFormSchemas.AddUni;
var
  vFormSchema: TJanuaWebFormSchema;
begin
  // Intro & Login
  vFormSchema.JanuaFormDef := jwsUniLogin;
  vFormSchema.id := 2;
  vFormSchema.Key := 'c81e728d9d4c2f636f067f89cc14862c107d15a448726a7460e5b18f80601bf2';
  vFormSchema.SiteUrl := 'www.unibacheca.it';
  vFormSchema.FormUrl := 'unibacheca-login.html';
  vFormSchema.Name := 'frmUniBoardLogin';

  self.AddFormSchema(vFormSchema); // ok Form realizzato ed Attivo

  // Books
  vFormSchema.JanuaFormDef := jwsUniBookSearch;
  vFormSchema.id := 3;
  vFormSchema.Key := 'eccbc87e4b5ce2fe28308fd9f2a7baf3cb00a24f642438968389330b742b29b8';
  vFormSchema.SiteUrl := 'www.unibacheca.it';
  vFormSchema.FormUrl := 'unibacheca-ricerca-libri.html';
  vFormSchema.Name := 'frmUniBoardBookSearch';
  self.AddFormSchema(vFormSchema);

  vFormSchema.JanuaFormDef := jwsUniBookInsert;
  vFormSchema.id := 4;
  vFormSchema.Key := 'a87ff679a2f3e71d9181a67b7542122ca790217331227a9fafa843e06a321e37';
  vFormSchema.SiteUrl := 'www.unibacheca.it';
  vFormSchema.FormUrl := 'unibacheca-inserimento-libri.html';
  vFormSchema.Name := 'frmUniBookInsert';
  self.AddFormSchema(vFormSchema);

  vFormSchema.JanuaFormDef := jwsUniBookManage;
  vFormSchema.id := 5;
  vFormSchema.Key := 'a87ff679a2f3e71d9181a67b7542122ca790217331227a9fafa843e06a321e37';
  vFormSchema.SiteUrl := 'www.unibacheca.it';
  vFormSchema.FormUrl := 'unibacheca-gestione-libri.html';
  vFormSchema.Name := 'frmUniBookManage';
  self.AddFormSchema(vFormSchema);

  vFormSchema.JanuaFormDef := jwsUniBookShow;
  vFormSchema.id := 6;
  vFormSchema.Key := '1679091c5a880faf6fb5e6087eb1b2dc0d928e5a3b0c02157f79682187810b02';
  vFormSchema.SiteUrl := 'www.unibacheca.it';
  vFormSchema.FormUrl := 'unibacheca-scheda-libro.html';
  vFormSchema.Name := 'frmUniBookShow';
  self.AddFormSchema(vFormSchema);

  // Registration
  vFormSchema.JanuaFormDef := jwsRegisterStart;
  vFormSchema.id := 7;
  vFormSchema.Key := '8f14e45fceea167a5a36dedd4bea2543659555a18c8fd6c7932ad07a8ff3e23c';
  vFormSchema.SiteUrl := 'www.unibacheca.it';
  vFormSchema.FormUrl := 'unibacheca-registrazione-inizio.html';
  vFormSchema.Name := 'frmUniBoardRegistrationStart';
  self.AddFormSchema(vFormSchema);

  vFormSchema.JanuaFormDef := jwsRegisterStudent;
  vFormSchema.id := 8;
  vFormSchema.Key := 'c9f0f895fb98ab9159f51fd0297e236dff90a88353d108ebf42d5fd92f0aac4b';
  vFormSchema.SiteUrl := 'www.unibacheca.it';
  vFormSchema.FormUrl := 'unibacheca-registrazione-studente.html';
  vFormSchema.Name := 'frmUniBoardRegistrationStudent';
  self.AddFormSchema(vFormSchema);

  vFormSchema.JanuaFormDef := jwsRegisterPrivate;
  vFormSchema.id := 9;
  vFormSchema.Key := 'c9f0f895fb98ab9159f51fd0297e236dff90a88353d108ebf42d5fd92f0aac4b';
  vFormSchema.SiteUrl := 'www.unibacheca.it';
  vFormSchema.FormUrl := 'unibacheca-registrazione-privato.html';
  vFormSchema.Name := 'frmUniBoardRegistrationPrivate';
  self.AddFormSchema(vFormSchema);

  vFormSchema.JanuaFormDef := jwsRegisterCompany;
  vFormSchema.id := 10;
  vFormSchema.Key := 'd3d9446802a44259755d38e6d163e82096259ecf0a477498f6365a45d6558c6a';
  vFormSchema.SiteUrl := 'www.unibacheca.it';
  vFormSchema.FormUrl := 'unibacheca-registrazione-azienda-associazione.html';
  vFormSchema.Name := 'frmUniBoardRegistrationCompany';
  self.AddFormSchema(vFormSchema);

  vFormSchema.JanuaFormDef := jwsRegisterEnd;
  vFormSchema.id := 11;
  vFormSchema.Key := '6512bd43d9caa6e02c990b0a82652dca1275d311d9c648bf80bc6c4ff136de3d';
  vFormSchema.SiteUrl := 'www.unibacheca.it';
  vFormSchema.FormUrl := 'unibacheca-registrazione-fine.html';
  vFormSchema.Name := 'frmUniBoardRegistrationEnd';
  self.AddFormSchema(vFormSchema);

  // Rooms , , ,
  vFormSchema.JanuaFormDef := jwsUniRoomSearch;
  vFormSchema.id := 12;
  vFormSchema.Key := 'c20ad4d76fe97759aa27a0c99bff671092df38f335c72b3340ecc44b7cc0ac22';
  vFormSchema.SiteUrl := 'www.unibacheca.it';
  vFormSchema.FormUrl := 'unibacheca-ricerca-camere.html';
  vFormSchema.Name := 'frmUniBoardRoomSearch';
  self.AddFormSchema(vFormSchema);

  vFormSchema.JanuaFormDef := jwsUniRoomInsert;
  vFormSchema.id := 13;
  vFormSchema.Key := 'c51ce410c124a10e0db5e4b97fc2af39fd4152642a8f22f0d6c9ce3821d94df1';
  vFormSchema.SiteUrl := 'www.unibacheca.it';
  vFormSchema.FormUrl := 'unibacheca-camere-inserimento.html';
  vFormSchema.Name := 'frmUniBoardRoomInsert';
  self.AddFormSchema(vFormSchema);

  vFormSchema.JanuaFormDef := jwsUniRoomManage;
  vFormSchema.id := 14;
  vFormSchema.Key := 'aab3238922bcc25a6f606eb525ffdc5609317cde78799952283c6052445a1f9f';
  vFormSchema.SiteUrl := 'www.unibacheca.it';
  vFormSchema.FormUrl := 'unibacheca-camere-gestione.html';
  vFormSchema.Name := 'frmUniBoardRoomManage';
  self.AddFormSchema(vFormSchema);

  vFormSchema.JanuaFormDef := jwsUniRoomShow;
  vFormSchema.id := 15;
  vFormSchema.Key := '9bf31c7ff062936a96d3c8bd1f8f2ff31d3522cb755fa2bfb93139e7e0b44a52';
  vFormSchema.SiteUrl := 'www.unibacheca.it';
  vFormSchema.FormUrl := 'unibacheca-camere-vedi.html';
  vFormSchema.Name := 'frmUniBoardRoomShow';
  self.AddFormSchema(vFormSchema);

  // News e Ricerca Generale , , ,
  vFormSchema.JanuaFormDef := jwsUniHtmlPage;
  vFormSchema.id := 16;
  vFormSchema.Key := 'c74d97b01eae257e44aa9d5bade97bafe9270656084189296e4e1d1f1d0640e2';
  vFormSchema.SiteUrl := 'www.unibacheca.it';
  vFormSchema.FormUrl := 'unibacheca-articolo.html';
  vFormSchema.Name := 'frmUniBoardHtmlPage';
  self.AddFormSchema(vFormSchema);

  // jwsVirtualClassRoom
  vFormSchema.JanuaFormDef := jwsVirtualClassRoom;
  vFormSchema.id := 17;
  vFormSchema.Key := '70efdf2ec9b086079795c442636b55fb45cd81a79912b2ce04045d7721d16c71';
  vFormSchema.SiteUrl := 'www.unibacheca.it';
  vFormSchema.FormUrl := 'unibacheca-classe-virtuale.html';
  vFormSchema.Name := 'frmUniBoardVirtualClassRoom';
  self.AddFormSchema(vFormSchema);

  vFormSchema.JanuaFormDef := jwsUniNews;
  vFormSchema.id := 18;
  vFormSchema.Key := '6f4922f45568161a8cdf4ad2299f6d233ed8fe6424f5180d1bf2df7ea6ebc4e7';
  vFormSchema.SiteUrl := 'www.unibacheca.it';
  vFormSchema.FormUrl := 'unibacheca-camere-inserimento.html';
  vFormSchema.Name := 'frmUniBoardNews';
  self.AddFormSchema(vFormSchema);

  vFormSchema.JanuaFormDef := jwsUniWriteArticle;
  vFormSchema.id := 19;
  vFormSchema.Key := '1f0e3dad99908345f7439f8ffabdffc40a6182642c27a379a877ee99f920b5d9';
  vFormSchema.SiteUrl := 'www.unibacheca.it';
  vFormSchema.FormUrl := 'unibacheca-camere-gestione.html';
  vFormSchema.Name := 'frmUniBoardWriteArticle';
  self.AddFormSchema(vFormSchema);

  vFormSchema.JanuaFormDef := jwsUniPublish;
  vFormSchema.id := 20;
  vFormSchema.Key := '98f13708210194c475687be6106a3b84a74eed32d853e97d9788530daeb2cc96';
  vFormSchema.SiteUrl := 'www.unibacheca.it';
  vFormSchema.FormUrl := 'unibacheca-pubblica-annuncio.html';
  vFormSchema.Name := 'frmUniBoardPublish';
  self.AddFormSchema(vFormSchema);

  vFormSchema.JanuaFormDef := jwsUniSearch;
  vFormSchema.id := 21;
  vFormSchema.Key := '3c59dc048e8850243be8079a5c74d07986dcc4ad6077756979fd07387eefb7d8';
  vFormSchema.SiteUrl := 'www.unibacheca.it';
  vFormSchema.FormUrl := 'unibacheca-ricerca.html';
  vFormSchema.Name := 'frmUniBoardSearch';
  self.AddFormSchema(vFormSchema);

  //
  vFormSchema.JanuaFormDef := jwsUniAbout;
  vFormSchema.id := 22;
  vFormSchema.Key := 'b6d767d2f8ed5d21a44b0e5886680cb97904ab10c321aa3089a20a8148f5ecbf';
  vFormSchema.SiteUrl := 'www.unibacheca.it';
  vFormSchema.FormUrl := 'unibacheca-chi-siamo.html';
  vFormSchema.Name := 'frmUniBoardAbout';
  self.AddFormSchema(vFormSchema);

end;

constructor TJanuaCoreFormSchemas.Create(AOwner: TComponent);
begin
  inherited;
  self.FIsSet := false;
  self.FJanuaWebFormDef := TJanuaFormDef.jwsNone;
  self.AddUni;
  AddHay;
end;

function TJanuaCoreFormSchemas.GetFormUrl(aName: string): string;
begin
  if SearchFormSchema(aName) then
    Result := self.FSelectedJanuaWebFormSchema.FormUrl
  else
    Result := '';
end;

function TJanuaCoreFormSchemas.InternalActivate: boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        Result := FIsSet
      end;
    except
      on E: Exception do
        RaiseException('InternalActivate', E, self);
    end;
end;

function TJanuaCoreFormSchemas.GetFormUrl(aDef: TJanuaFormDef): string;
begin
  if SearchFormSchema(aDef) then
    Result := self.FSelectedJanuaWebFormSchema.FormUrl
  else
    Result := '';

end;

function TJanuaCoreFormSchemas.SearchFormSchema(aDef: TJanuaFormDef): boolean;
var
  aSchema: TJanuaWebFormSchema;
begin
  Result := false;
  for aSchema in FJanuaWebFormSchemas.Values do
  begin
    if aSchema.JanuaFormDef = aDef then
    begin
      self.FSelectedJanuaWebFormSchema := aSchema;
      Exit(true);
    end;
  end;
end;

function TJanuaCoreFormSchemas.SearchFormSchema(aName: string): boolean;
begin
  Result := FJanuaWebFormSchemas.ContainsKey(aName);
  if Result then
    FJanuaWebFormSchemas.TryGetValue(aName, FSelectedJanuaWebFormSchema);
end;

procedure TJanuaCoreFormSchemas.SetJanuaCulture(const Value: TJanuaIsoLanguageCountry);
begin
  if not Assigned(FJanuaCulture) and Assigned(Value) then
  begin
    FJanuaCulture := Value;
    // FJanuaCulture.AddComponent(self);
  end
  else if Assigned(FJanuaCulture) and not Assigned(Value) then
  begin
    // FJanuaCulture.DelComponent(self);
    FJanuaCulture := Value;
  end
  else if Assigned(FJanuaCulture) and Assigned(Value) and (Value.Name <> FJanuaCulture.Name) then
  begin
    // FJanuaCulture.DelComponent(self);
    FJanuaCulture := Value;
    // FJanuaCulture.AddComponent(self);
  end;
end;

procedure TJanuaCoreFormSchemas.SetJanuaServerForms(const Value: TJanuaCustomServerForms);
begin
  FJanuaServerForms := Value;
end;

procedure TJanuaCoreFormSchemas.SetJanuaWebFormDef(const Value: TJanuaFormDef);
begin
  FJanuaWebFormDef := Value;
  self.FIsSet := self.SearchFormSchema(Value);
end;

{ TJanuaCoreFormComponent }

constructor TJanuaCoreFormComponent.Create(AOwner: TComponent);

begin
  inherited;

  self.FDefined := false;
end;

destructor TJanuaCoreFormComponent.Destroy;
begin
  FJanuaFormSchemas.Free;
  inherited;
end;

function TJanuaCoreFormComponent.InternalActivate: boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        Result := false;
        self.GetForm;
        Result := true;
      end;
    except
      on E: Exception do
        RaiseException('InternalActivate', E, Self);
    end;
end;

procedure TJanuaCoreFormComponent.SetApplication(const Value: TJanuaCustomApplication);
begin
  FApplication := Value;
end;

procedure TJanuaCoreFormComponent.SetDefinition(const Value: TJanuaFormDefinition);
begin
  FDefinition := Value;
end;

procedure TJanuaCoreFormComponent.SetFormKey(const Value: string);
begin
  FFormKey := Value;
end;

procedure TJanuaCoreFormComponent.SetFormTitle(const Value: string);
begin
  FFormTitle := Value;
end;

procedure TJanuaCoreFormComponent.SetJanuaFormDef(const Value: TJanuaFormDef);
begin
  FJanuaFormDef := Value;
  AssignFormSchema

end;

procedure TJanuaCoreFormComponent.SetJanuaFormSchemas(const Value: TJanuaCoreFormSchemas);
begin
  FJanuaFormSchemas := Value;
  AssignFormSchema
end;

procedure TJanuaCoreFormComponent.SetJanuaIsoCulture(const Value: TJanuaIsoLanguageCountry);
begin
  if not Assigned(FJanuaIsoCulture) and Assigned(Value) then
  begin
    FJanuaIsoCulture := Value;
    // FJanuaIsoCulture.AddComponent(self);
  end
  else if Assigned(FJanuaIsoCulture) and not Assigned(Value) then
  begin
    // FJanuaIsoCulture.DelComponent(self);
    FJanuaIsoCulture := Value;
  end
  else if Assigned(FJanuaIsoCulture) and Assigned(Value) and (Value.Name <> FJanuaIsoCulture.Name) then
  begin
    // FJanuaIsoCulture.DelComponent(self);
    FJanuaIsoCulture := Value;
    // FJanuaIsoCulture.AddComponent(self);
  end;
end;

procedure TJanuaCoreFormComponent.SetJanuaServerSystem(const Value: TJanuaCustomServerForms);
begin
  FJanuaServerForms := Value;
end;

procedure TJanuaCoreFormComponent.SetLanguage(const Value: TJanuaLanguage);
begin
  if self.FLanguage <> Value then
  begin
    if Assigned(FJanuaIsoCulture) and (FJanuaIsoCulture.Language <> self.FLanguage) then
      FJanuaIsoCulture.Language := self.FLanguage;

    if Assigned(self.FJanuaServerForms) then
    begin
      self.FJanuaServerForms.Language := self.FLanguage;
    end;
  end;
end;

procedure TJanuaCoreFormComponent.SetStoreForm(const Value: boolean);
begin
  if Value and Assigned(self.FJanuaServerForms) then
  begin
    if not Active then
      self.Activate;
    FStoreForm := Active;
    if self.FStoreForm then
    begin
      self.FStoreForm := self.StoreFormDB;
    end;
  end
  else
    FStoreForm := Value;

end;

function TJanuaCoreFormComponent.StoreFormDB: boolean;
begin
  self.GetForm;
  if Assigned(self.FJanuaServerForms) then
  begin
    FJanuaServerForms.TranslateForm(self.FDefinition);
    Result := true;
  end
  else
    Result := false;

end;

procedure TJanuaCoreFormComponent.TranslateForm(aLanguage: TJanuaLanguage);
begin
  if Assigned(self.FJanuaServerForms) then
    self.FJanuaServerForms.TranslateForm(FDefinition);
  self.UpdateForm;
end;

function TJanuaCoreFormComponent.AddFrame(aFrame: TJanuaCoreFrameComponent): integer;
begin
  if Assigned(aFrame) then
  begin
    SetLength(self.FJanuaFrames, Length(self.FJanuaFrames) + 1);
    self.FJanuaFrames[Length(self.FJanuaFrames) - 1] := aFrame;
    FJanuaSelectedFrame := aFrame;
  end;
  Result := Length(self.FJanuaFrames);
end;

procedure TJanuaCoreFormComponent.AssignFormSchema;
begin
  if Assigned(self.FJanuaFormSchemas) and FJanuaFormSchemas.SearchFormSchema(FJanuaFormDef) then
    FJanuaFormSchema := FJanuaFormSchemas.FSelectedJanuaWebFormSchema;
end;

{ TJanuaCustomServerForms }

procedure TJanuaCustomServerForms.OpenDialogTranslate;
begin
  if Assigned(self.FJanuaTransDialog) and (self.FJanuaFormDefinition.id <> 0) and
    (self.FLanguage <> TJanuaLanguage.jlaNone) then
  begin
    CreateDataModule;
    if FJanuaTransDialog.Execute then
      self.TranslateFormInternal;
    DestroyDataModule
  end;
end;

procedure TJanuaCustomServerForms.SetdsComponentsTranslations(const Value: TDataset);
begin
  FdsComponentsTranslations := Value;
end;

procedure TJanuaCustomServerForms.SetJanuaFormDefinition(const Value: TJanuaFormDefinition);
begin
  FJanuaFormDefinition := Value;
end;

procedure TJanuaCustomServerForms.SetJanuaIsoCulture(const Value: TJanuaIsoCulture);
begin
  FJanuaIsoCulture := Value;
end;

procedure TJanuaCustomServerForms.SetJanuaServerSystem(const Value: TJanuaCustomServerSystem);
begin
  FJanuaServerSystem := Value;
end;

procedure TJanuaCustomServerForms.SetJanuaTransDialog(const Value: TJanuaCustomFormTransDialog);
begin
  FJanuaTransDialog := Value;
end;

procedure TJanuaCustomServerForms.TranslateForm;
begin
  if (self.FJanuaFormDefinition.id <> 0) and (self.FLanguage <> TJanuaLanguage.jlaNone) then
  begin
    CreateDataModule;
    self.TranslateFormInternal;
    DestroyDataModule
  end;
end;

procedure TJanuaCustomServerForms.TranslateForm(var aDef: TJanuaFormDefinition);
begin
  self.FJanuaFormDefinition := aDef;
  if (self.FJanuaFormDefinition.id <> 0) and (self.FLanguage <> TJanuaLanguage.jlaNone) then
  begin
    CreateDataModule;
    self.TranslateFormInternal;
    DestroyDataModule
  end;
end;

procedure TJanuaCustomServerForms.TranslateForm(var aDef: TJanuaFormDefinition; aLanguage: TJanuaLanguage);
begin
  self.FLanguage := aLanguage;
  self.FJanuaFormDefinition := aDef;
  if (self.FJanuaFormDefinition.id <> 0) and (self.FLanguage <> TJanuaLanguage.jlaNone) then
  begin
    CreateDataModule;
    self.TranslateFormInternal;
    DestroyDataModule
  end;
end;

{ TJanuaFormDefinition }

procedure TJanuaFormDefinition.Add(aElement: TJanuaFormComponent);
begin
  SetLength(self.Components, Length(self.Components) + 1);
  self.Components[Pred(Length(self.Components))] := aElement;
end;

function TJanuaFormDefinition.FindObject(aObject: string): boolean;
var
  sObject: TJanuaFormComponent;
begin
  Result := false;
  for sObject in self.Components do
  begin
    if UpperCase(sObject.Name) = UpperCase(aObject) then
    begin
      self.selectedComponent := sObject;
      Result := true;
      Exit;

    end;

  end;

end;

{ TJanuaCustomFormTransDialog }

procedure TJanuaCustomFormTransDialog.SetDataSet(const Value: TDataset);
begin
  FDataSet := Value;
end;

{ TJanuaComponentProperty }

function TJanuaComponentProperty.AsInteger: integer;
begin
  Result := Value.ToInteger;
end;

function TJanuaComponentProperty.AsString: string;
begin
  Result := Value.ToString;
end;

function TJanuaComponentProperty.BasicType: integer;
begin
  // Set a string to match the type
  {
    case basicType of
    varDispatch  : typeString := 'varDispatch';
    varError     : typeString := 'varError';
    varVariant   : typeString := 'varVariant';
    varUnknown   : typeString := 'varUnknown';
    varStrArg    : typeString := 'varStrArg';
    varAny       : typeString := 'varAny';
    varTypeMask  : typeString := 'varTypeMask';
    end;
  }
  Result := VarType(Value) and VarTypeMask;
end;

function TJanuaComponentProperty.IsBoolean: boolean;
begin
  Result := BasicType in [varBoolean];
end;

function TJanuaComponentProperty.IsDate: boolean;
begin
  Result := BasicType in [varDate];
end;

function TJanuaComponentProperty.IsInteger: boolean;
begin
  // Get the Variant basic type :
  // this means excluding array or indirection modifiers

  Result := BasicType in [varSmallInt, varInteger, varByte, varLongWord, varWord, varInt64];
end;

function TJanuaComponentProperty.IsNull: boolean;
begin
  Result := BasicType in [varEmpty, varNull];
end;

function TJanuaComponentProperty.IsNumber: boolean;
begin
  Result := self.IsInteger or (BasicType in [varSingle, varDouble, varCurrency]);
end;

function TJanuaComponentProperty.isString: boolean;
begin
  Result := BasicType = varString;
end;

{ TJanuaFormComponent }

procedure TJanuaFormComponent.AddChild(aElement: TJanuaFormComponent);
begin
  SetLength(self.Components, Length(self.Components) + 1);
  self.Components[Pred(Length(self.Components))] := aElement;
end;

procedure TJanuaFormComponent.AddProperty(aProperty: TJanuaComponentProperty);
begin
  SetLength(self.properties, Length(self.properties) + 1);
  self.properties[Pred(Length(self.properties))] := aProperty;
end;

function TJanuaFormComponent.FindObject(aObject: string): boolean;
var
  i: integer;
begin
  Result := false;
  for i := 0 to Pred(Length(Components)) do
  begin
    if UpperCase(Components[i].Name) = UpperCase(aObject) then
    begin
      self.ItemIndex := i;
      // selectedComponent := aObject;
      Result := true;
      Exit;
    end;
  end;
end;

function TJanuaFormComponent.FindProperty(aName: string): boolean;
var
  sObject: TJanuaComponentProperty;
begin
  Result := false;
  for sObject in properties do
  begin
    if UpperCase(sObject.Name) = UpperCase(aName) then
    begin
      self.selectedProperty := sObject;
      Result := true;
      Exit;
    end;
  end;

end;

{ TJanuaCustomApplication }

procedure TJanuaCustomApplication.SetJanuaServerForm(const Value: TJanuaCustomServerForms);
begin
  FJanuaServerForm := Value;
end;

{ TJanuaFrameDefinition }

procedure TJanuaFrameDefinition.Add(aElement: TJanuaFormComponent);
begin
  SetLength(self.Components, Length(self.Components) + 1);
  self.Components[Pred(Length(self.Components))] := aElement;
end;

function TJanuaFrameDefinition.FindObject(aObject: string): boolean;
var
  sObject: TJanuaFormComponent;
begin
  Result := false;
  for sObject in self.Components do
  begin
    if UpperCase(sObject.Name) = UpperCase(aObject) then
    begin
      self.selectedComponent := sObject;
      Result := true;
      Exit;

    end;

  end;

end;

end.
