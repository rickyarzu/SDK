unit Janua.Orm.Types;

interface

uses Data.DB, System.UITypes, Spring, Janua.Core.Types, System.JSON;

type
  /// <summary>   Record State is similar to Dataset State in Delphi DB Unit and is used to manage events </summary>
  TJanuaRecordState = (jrsNone, jrsModified, jrsNewRecord, jrsDeleted, jrsErased, jrsDatabaseLoading,
    jrsStoreLoading, jrsPosting, jrsAssigning);
  /// <summary>   Field Kind groups both standard Field Kinds and Parameters (standard and Lookup) </summary>
  TJanuaFieldKind = (jfkCalculated, jfkData, jfkLookup, jfkParam, jfkParamLookup);
  /// <summary>   Operator is used to build ParamsFilter string  </summary>
  TJanuaOperator = (Equals, MoreThan, LessThan, Like, NotEqual, LikeUpper, LikeLower, LikeStrippedUpper,
    LikeStrippedLower, MoreThanEquals, LessThanEquals);

type
  TDatasetPagination = record
    /// <summary>Boolean: if True pagination is active</summary>
    Active: Boolean;
    /// <summary>Word: Page number to retriev acorrding to page size</summary>
    Page: Word;
    /// <summary> Number of Records per Page </summary>
    Size: UInt32;
  public
    procedure Assign(const Value: TDatasetPagination);
    function GetAsJsonValue: TJsonValue;
    procedure SetAsJsonValue(const aJson: TJsonValue);
    function GetFromRecord: UInt32;
    function GetToRecord: UInt32;
  end;

const
  CJanuaOperators: array [TJanuaOperator] of string = ('=', '>', '<', 'like', '<>', 'likeU', 'likeL',
    'likeSU', 'likeSL', '>=', '<=');

type
  TRecordSetState = (rsNone, rsInserting, rsEditing, rsDeleting, rsLoading);

  TJanuaEntity = (None,
    // Test Tables -------------------------------------------------------------------------------------------
    TestMaster, TestDetail,
    // Ads Schema --------------------------------------------------------------------------------------------
    /// <summary>   Detailed log of Ads banners published </summary>
    AdsBannerLogs,
    /// <summary>   All banners with image url and visions/click summary, vibility period  </summary>
    AdsBanners,
    /// <summary>  Detailed log of any click including url and ip address or browser type   </summary>
    AdsClickLogs,
    /// <summary>  Domains associated  </summary>
    AdsDomains,
    /// <summary>   Association between Locations and Ads.  </summary>
    AdsDomainsLocations,
    /// <summary>   Last bannner published per ip Address  </summary>
    AdsLastBanner,
    /// <summary>   Slots available per site (location) </summary>
    AdsPublishSlots,
    // 'ads.banner_logs', 'ads.banners', 'ads.click_logs', 'ads.domains', 'ads.last_banner',
    // 'ads.last_banner',   'ads.publish_slots',
    // Anagraph ----------------------------------------------------------------------------------------------
    /// <summary>  Sub cateogories for anagraph classifications  </summary>
    AnagraphCategories,
    /// <summary>  Main identity information for a contact member  </summary>
    AnagraphAnagraphs,
    /// <summary>  Branches or different addesses for an anagraph contact usually a company  </summary>
    AnagraphBranches,
    /// <summary>  Main Anagraph Contact Groups each anagraph record can be linked to many groups </summary>
    AnagraphGroups,
    /// <summary>   </summary>
    AnagraphIdentities,
    /// <summary>   </summary>
    AnagraphAddresses,
    // Football ----------------------------------------------------------------------------------------------
    FtArgumentsChampionships, FtCalendar, FtChampionships, FtClubSeasons, FtClubs, FtEventTypes, FtFieldTypes,
    FtFields, FtLeagueGroups, FtLeagues, FtMatchDays, ftMatches, FtMatchEvents, FtMatchPlayers,
    FtPlayerCareer, FtPlayers, FtRankingTable, FtRoles, FtSeasons, FtTeams, FtTeamsChampionships,
    FtTeams_history, FtTeamsPlayers, FtTeamsTrainers, FtTrainers, FtTrainersCareer, FtJsonCalendar,
    FtGoalRanking { View } ,
    { Custom Datasets }
    FtTeamsHome, FtTeamsVisitors,
    // Cms ---------------------------------------------------------------------------------------------------
    CmsAppLanguages, CmsApps, CmsArguments, CmsArguments_groups, CmsArgumentsRoles, CmsArticles, CmsEvents,
    CmsGraphicMenu, CmsGraphicMenu_groups, CmsGraphicMenuRows, CmsMainArguments, CmsMenu, CmsMenuItems,
    CmsMenuItemsT, CmsNews, CmsNewsTypes, CmsPages, CmsPagesT, CmsPagesTypes, CmsRssArticles, CmsRssFeeds,
    CmsSessionLogs, CmsSessions, CmsSpecifications, CmsSubArguments, CmsTemplates, CmsTemplatesPages,
    CmsThemes, CmsThemesPages, CmsWebMenus, CmsWebSites, CmsWebitemsPictures, CmsArticlesAttachments,
    // System ------------------------------------------------------------------------------------------------
    SysAppForms, SysAppFormsObjects, SysAppFormsObjectsProperties, SysAppFormsObjectsTranslations,
    SysAppFormsTranslations, SysAppFunctions, SysAppLicenses, SysAppMemberForms, SysAppMessages,
    SysApplications, SysDbAppGrpParam, SysDbAppSchemas, SysDbApplicationsRoles, SysDbEsrSchParam, SysDbGroups,
    SysDbGroupsSchemas, SysDbGrpSchParam, SysDbPackagesSchemas, SysDbRoles, SysDbSchemaParams, SysDbSchemas,
    SysDbSchemasRoles, SysDbUserGroups, SysDbUserSessions, SysDbUsers, SysDbUsersPayments, SysDbUsersProfiles,
    SysDbUsersRoles, SysDbUsersSchemas, SysDbUsersSchemasApps, SysDbUsersSchemasRoles, SysFinancialYears,
    SysFormModels, SysFormObjectsTrans, SysPackages, SysPackagesApplications, SysSchemalog, SysSysParams,
    SysSysRoles, SysSyslog, SysTempSession,
    // Documents ---------------------------------------------------------------------------------------------
    DocHeads, DocRows, DocAttachments, DocTypes, DocVatAmounts
    // Logistic ----------------------------------------------------------------------------------------------
    , LogShipments, LogShipmentRows, LogAWBs, LogAWBRows, LogAWBCodes, LogContainerTypes, LogLocations,
    LogTypeOfGoods, LogConditions
    // Planner
    , PlannerTimetable, PlannerActivities, ActivitiesPlannerGroup
    // WorkFlow
    , WorkTypes, WorkFlows, WorkAttachments, WorkLevels
    // Shipping
    , ShippingVessels
    // Items
    , ItemsGroups, ItemsDefinitions
    // -------- ----------------------------------------------------------------------------------------------
    );

  TJanuaEntities = TArray<TJanuaEntity>;
  TJanuaEntityNames = TArray<string>;

const
  /// <summary>   Schema.Name string constants for entities definitions </summary>
  JanuaEntityNames: array [TJanuaEntity] of string = ('', // not Assigned (None)
    // Test Tables
    'test.masters', 'test.details',
    // Ads Schema ..........................................................................................
    'ads.banner_logs', 'ads.banners', 'ads.click_logs', 'ads.domains', 'ads.domains_locations',
    'ads.last_banner', 'ads.publish_slots',
    // Anagraph Schema .......................................................................................
    'anagraph.categories', 'anagraph.anagraphs', 'anagraph.branches', 'anagraph.groups',
    'anagraph.identities', 'anagraph.an_addresses',
    // Football Schema .......................................................................................
    'football.arguments_championships', 'football.ft_calendar', 'football.ft_championships',
    'football.ft_club_seasons', 'football.ft_clubs', 'football.ft_event_types', 'football.ft_field_types',
    'football.ft_fields', 'football.ft_league_groups', 'football.ft_leagues', 'football.ft_match_days',
    'football.ft_matches', 'football.ft_match_events', 'football.ft_match_players',
    'football.ft_player_career', 'football.ft_players', 'football.ft_ranking_table', 'football.ft_roles',
    'football.ft_seasons', 'football.ft_teams', 'football.ft_teams_championships',
    'football.ft_teams_history', 'football.ft_teams_players', 'football.ft_teams_trainers',
    'football.ft_trainers', 'football.ft_trainers_career', 'football.json_calendar', 'football.goal_ranking',
    { Custom Datasets }
    'football.ft_teams.home', 'football.ft_teams.visitors',
    // Cms Schema ............................................................................................
    'cms.app_languages', 'cms.apps', 'cms.arguments', 'cms.arguments_groups', 'cms.arguments_roles',
    'cms.articles', 'cms.events', 'cms.graphic_menu', 'cms.graphic_menu_groups', 'cms.graphic_menu_rows',
    'cms.main_arguments', 'cms.menu', 'cms.menu_items', 'cms.menu_items_t', 'cms.news', 'cms.news_types',
    'cms.pages', 'cms.pages_t', 'cms.pages_types', 'cms.rss_articles', 'cms.rss_feeds', 'cms.session_logs',
    'cms.sessions', 'cms.specifications', 'cms.sub_arguments', 'cms.templates', 'cms.templates_pages',
    'cms.themes', 'cms.themes_pages', 'cms.web_menus', 'cms.web_sites', 'cms.webitems_pictures',
    'cms.articles_attachments',
    // System   ----------------------------------------------------------------------------------------------
    'system.app_forms', 'system.app_forms_objects', 'system.app_forms_objects_properties',
    'system.app_forms_objects_translations', 'system.app_forms_translations', 'system.app_functions',
    'system.app_licenses', 'system.app_member_forms', 'system.app_messages', 'system.applications',
    'system.db_app_grp_param', 'system.db_app_schemas', 'system.db_applications_roles',
    'system.db_esr_sch_param', 'system.db_groups', 'system.db_groups_schemas', 'system.db_grp_sch_param',
    'system.db_packages_schemas', 'system.db_roles', 'system.db_schema_params', 'system.db_schemas',
    'system.db_schemas_roles', 'system.db_user_groups', 'system.db_user_sessions', 'system.db_users',
    'system.db_users_payments', 'system.db_users_profiles', 'system.db_users_roles',
    'system.db_users_schemas', 'system.db_users_schemas_apps', 'system.db_users_schemas_roles',
    'system.financial_years', 'system.form_models', 'system.form_objects_trans', 'system.packages',
    'system.packages_applications', 'system.schemalog', 'system.sys_params', 'system.sys_roles',
    'system.syslog', 'system.temp_session',
    // Documents ---------------------------------------------------------------------------------------------
    'documents.heads', 'documents.rows', 'documents.attachments', 'documents.types', 'documents.vat_amounts'
    // Logistic ----------------------------------------------------------------------------------------------
    , 'logistic.shipment', 'logistic.shipment_rows', 'logistic.awb', 'logistic.awb_rows',
    'logistic.awb_codes', 'logistic.container_types', 'logistic.locations', 'logistic.type_of_goods',
    'logistic.conditions'
    // Planner  ---------------------------------------------------------------------------------------------
    , 'planner.timetable', 'planner.Activities', 'planner.activities_groups'
    // WorkFlow ---------------------------------------------------------------------------------------------
    , 'workflow.types', 'workflow.workflows', 'workflow.attachments', 'workflow.levels'
    // Shipping ----------------------------------------------------------------------------------------------
    , 'shipping.vessels'
    // Items    ----------------------------------------------------------------------------------------------
    , 'items.groups', 'items.definitions'

    // ......................................................................................................
    );

type
  TOrderByEnum = (jobASC, jobDESC);
  TOrderByCompare = (jocDefault, jocCaseSensitive, jocCaseInsensitive, jocOrdinal);

  TJanuaOrderByField = record
  private
    FOrderBy: TOrderByEnum;
    FFieldName: string;
    FCompare: TOrderByCompare;
    procedure SetCompare(const Value: TOrderByCompare);
    procedure SetFieldName(const Value: string);
    procedure SetOrderBy(const Value: TOrderByEnum);
  public
    constructor Create(const aFieldName: string; const aOrderBy: TOrderByEnum = jobASC;
      const aCompare: TOrderByCompare = jocDefault);
  public
    property FieldName: string read FFieldName write SetFieldName;
    property OrderBy: TOrderByEnum read FOrderBy write SetOrderBy;
    property Compare: TOrderByCompare read FCompare write SetCompare;
  end;

type
  TJanuaGridFieldDef = record
  private
    FGridExport: Boolean;
    FGridPos: Word;
    FGridVisible: Boolean;
    FGridFontColor: TNullableColor;
    FGridTitle: TNullableString;
    FCharWidth: TNullableInteger;
    FDisplayWidth: TNullableInteger;
    function GetCharWidth: TNullableInteger;
    function GetGridFontColor: TNullableColor;
    procedure SetGridFontColor(const Value: TNullableColor);
    procedure SetGridPos(const aValue: Word);
    procedure SetGridVisible(const aValue: Boolean);
    function GetGridExport: Boolean;
    procedure SetGridExport(const Value: Boolean);
    function GetGridPos: Word;
    function GetGridVisible: Boolean;
    procedure SetGridTitle(const Value: TNullableString);
    procedure SetCharWidth(const Value: TNullableInteger);
    function GetDisplayWidth: TNullableInteger;
    procedure SetDisplayWidth(const Value: TNullableInteger);
  public
    constructor Create(const aGridVisible: Boolean; const aCharWidth: Word = 0);
  public
    property DisplayWidth: TNullableInteger read GetDisplayWidth write SetDisplayWidth;
    /// <summary> Tells us if a Field has to be 'exported'  </summary>
    property GridExport: Boolean read GetGridExport write SetGridExport;
    /// <summary> Position of the Field in the grid, GridFields are a 0 based array </summary>
    property GridPos: Word read GetGridPos write SetGridPos;
    /// <summary> Maps a Relation 1 to 1 from JanuaField to Db.TField for faster Updates </summary>
    property GridVisible: Boolean read GetGridVisible write SetGridVisible;
    // <summary> This property is linked to Field Design Color. This can 'vary' from Color-Scheme </summary>
    property GridFontColor: TNullableColor read GetGridFontColor write SetGridFontColor;
    /// <summary> Equals Field Title but can Differ from standard Field Title </summary>
    property GridTitle: TNullableString read FGridTitle write SetGridTitle;
    /// <summary> Visible width in Char on a Grid </summary>
    property CharWidth: TNullableInteger read GetCharWidth write SetCharWidth;
  end;

type
  TJanuaDBFieldDef = record
  private
    FFieldGUID: TGUID;
    FMappedField: TField;
    function GetMappedField: TField;
    procedure SetMappedField(const Value: TField);
    procedure SetFieldGUID(const Value: TGUID);
  public
    /// <summary> Maps a Relation 1 to 1 from JanuaField to Db.TField for faster Updates </summary>
    property MappedField: TField read GetMappedField write SetMappedField;
    property FieldGUID: TGUID read FFieldGUID write SetFieldGUID;
  public
    Constructor Create(aGuid: TGUID; aMappedField: TField);
  end;

  TJanuaGridColumnField = record
  private
    FMappedField: TField;
    FGridFieldDef: TJanuaGridFieldDef;
    FDisplayWidth: TNullableInteger;
    function GetMappedField: TField;
    procedure SetMappedField(const Value: TField);
    function GetGridFieldDef: TJanuaGridFieldDef;
    procedure SetGridFieldDef(const Value: TJanuaGridFieldDef);
    function GetTitle: String;
    procedure SetTitle(const Value: String);
    function GetMask: String;
    procedure SetMask(const aMask: String);
  public
    /// <summary> Maps a Relation 1 to 1 from JanuaField to Db.TField for faster Updates </summary>
    property MappedField: TField read GetMappedField write SetMappedField;
    property GridFieldDef: TJanuaGridFieldDef read GetGridFieldDef write SetGridFieldDef;
    property Mask: String read GetMask write SetMask;
    property Title: String read GetTitle write SetTitle;
  public
    Constructor Create(aMappedField: TField; aGridVisible: Boolean = False; aGridExport: Boolean = False;
      aWidth: integer = 0);
  end;

  TRecordUnits = class;

  TRecordUnitFile = class
    DatasetName: string;
    PluralName: string;
    FileName: string;
    Text: string;
  end;

  TRecordUnits = class
    IntfFile: TRecordUnitFile;
    ImplFile: TRecordUnitFile;
  end;

function IsEntityInSet(const ANumber: TJanuaEntity; const AArray: TJanuaEntities): Boolean;
procedure AddEntityToSet(const ANumber: TJanuaEntity; var AArray: TJanuaEntities);

implementation

uses System.StrUtils, System.Math, Janua.Application.Framework, Janua.Core.JSON;

function IsEntityInSet(const ANumber: TJanuaEntity; const AArray: TJanuaEntities): Boolean;
var
  i: integer;
begin
  for i := Low(AArray) to High(AArray) do
    if ANumber = AArray[i] then
      Exit(true);
  result := False;
end;

procedure AddEntityToSet(const ANumber: TJanuaEntity; var AArray: TJanuaEntities);
var
  i: Smallint;
begin
  i := Length(AArray);
  SetLength(AArray, i + 1);
  AArray[i] := ANumber;

end;

constructor TJanuaGridFieldDef.Create(const aGridVisible: Boolean; const aCharWidth: Word);
begin
  FGridVisible := aGridVisible;
  FCharWidth := aCharWidth;
end;

function TJanuaGridFieldDef.GetCharWidth: TNullableInteger;
begin
  result := FCharWidth;
end;

function TJanuaGridFieldDef.GetDisplayWidth: TNullableInteger;
begin
  result := FDisplayWidth; // FGridFieldDef.CharWidth
end;

function TJanuaGridFieldDef.GetGridExport: Boolean;
begin
  result := FGridExport
end;

function TJanuaGridFieldDef.GetGridFontColor: TNullableColor;
begin
  result := FGridFontColor;
end;

function TJanuaGridFieldDef.GetGridPos: Word;
begin
  result := FGridPos
end;

function TJanuaGridFieldDef.GetGridVisible: Boolean;
begin
  result := FGridVisible
end;

constructor TJanuaDBFieldDef.Create(aGuid: TGUID; aMappedField: TField);
begin
  FFieldGUID := aGuid;
  Guard.CheckNotNull(aMappedField, 'TJanuaDBFieldDef.Create aMappedField');
  FMappedField := aMappedField;
end;

function TJanuaDBFieldDef.GetMappedField: TField;
begin
  result := FMappedField
end;

function TJanuaGridColumnField.GetMappedField: TField;
begin
  result := FMappedField
end;

function TJanuaGridColumnField.GetMask: String;
begin
  if Assigned(FMappedField) then
  begin
    if (FMappedField is TNumericField) then
      result := (FMappedField as TNumericField).DisplayFormat
    else if (FMappedField is TDateTimeField) then
      result := (FMappedField as TDateTimeField).DisplayFormat
      // TSQLTimeStampField
    else if (FMappedField is TSQLTimeStampField) then
      result := (FMappedField as TSQLTimeStampField).DisplayFormat
      // TAggregateField
    else if (FMappedField is TAggregateField) then
      result := (FMappedField as TAggregateField).DisplayFormat
  end;
end;

function TJanuaGridColumnField.GetTitle: String;
begin
  result := FMappedField.DisplayLabel;
end;

procedure TJanuaDBFieldDef.SetFieldGUID(const Value: TGUID);
begin
  FFieldGUID := Value;
end;

procedure TJanuaGridFieldDef.SetCharWidth(const Value: TNullableInteger);
begin
  if Value <> 0 then
    FCharWidth := Value;
end;

procedure TJanuaGridFieldDef.SetDisplayWidth(const Value: TNullableInteger);
begin
  if Value <> 0 then
    { FGridFieldDef.CharWidth } FDisplayWidth := Value;
end;

procedure TJanuaGridFieldDef.SetGridExport(const Value: Boolean);
begin
  FGridExport := Value;
end;

procedure TJanuaGridFieldDef.SetGridFontColor(const Value: TNullableColor);
begin
  FGridFontColor := Value;
end;

procedure TJanuaGridFieldDef.SetGridPos(const aValue: Word);
begin
  FGridPos := aValue;
end;

procedure TJanuaGridFieldDef.SetGridTitle(const Value: TNullableString);
begin
  FGridTitle := Value;
end;

procedure TJanuaGridFieldDef.SetGridVisible(const aValue: Boolean);
begin
  FGridVisible := aValue;
end;

procedure TJanuaDBFieldDef.SetMappedField(const Value: TField);
begin
  FMappedField := Value
end;

procedure TJanuaGridColumnField.SetMappedField(const Value: TField);
begin
  FMappedField := Value;
end;

procedure TJanuaGridColumnField.SetMask(const aMask: String);
begin
  if (FMappedField is TNumericField) then
    (FMappedField as TNumericField).DisplayFormat := aMask
  else if (FMappedField is TDateTimeField) then
    (FMappedField as TDateTimeField).DisplayFormat := aMask
    // TSQLTimeStampField
  else if (FMappedField is TSQLTimeStampField) then
    (FMappedField as TSQLTimeStampField).DisplayFormat := aMask
    // TAggregateField
  else if (FMappedField is TAggregateField) then
    (FMappedField as TAggregateField).DisplayFormat := aMask
end;

procedure TJanuaGridColumnField.SetTitle(const Value: String);
begin
  if Assigned(FMappedField) and (Value <> '') then
    FMappedField.DisplayLabel := Value;
end;

constructor TJanuaGridColumnField.Create(aMappedField: TField; aGridVisible, aGridExport: Boolean;
  aWidth: integer);
begin
  FMappedField := aMappedField;
  FGridFieldDef.Create(aGridVisible, 0);
  FGridFieldDef.GridExport := aGridExport;
  FGridFieldDef.CharWidth := aWidth;
  FGridFieldDef.DisplayWidth := aWidth;
  aMappedField.DisplayWidth := aWidth;
  { FGridFieldDef.GridTitle := aMappedField.DisplayText; }
end;

function TJanuaGridColumnField.GetGridFieldDef: TJanuaGridFieldDef;
begin
  result := FGridFieldDef;
end;

procedure TJanuaGridColumnField.SetGridFieldDef(const Value: TJanuaGridFieldDef);
begin
  FGridFieldDef := Value;
end;

{ TJanuaOrderByField }

constructor TJanuaOrderByField.Create(const aFieldName: string; const aOrderBy: TOrderByEnum;
  const aCompare: TOrderByCompare);
begin
  FFieldName := aFieldName;
  FOrderBy := aOrderBy;
  FCompare := aCompare;
end;

procedure TJanuaOrderByField.SetCompare(const Value: TOrderByCompare);
begin
  FCompare := Value;
end;

procedure TJanuaOrderByField.SetFieldName(const Value: string);
begin
  FFieldName := Value;
end;

procedure TJanuaOrderByField.SetOrderBy(const Value: TOrderByEnum);
begin
  FOrderBy := Value;
end;

{ TDatasetPagination }

procedure TDatasetPagination.Assign(const Value: TDatasetPagination);
begin
  self.Active := Value.Active;
  self.Page := Value.Page;
  self.Size := Value.Size;
end;

function TDatasetPagination.GetAsJsonValue: TJsonValue;
begin
  result := TJanuaJson.SerializeJsonObject<TDatasetPagination>(self);
end;

function TDatasetPagination.GetFromRecord: UInt32;
begin
  result := IfThen(Active, UInt32(Page - 1) * Size, 0);
end;

function TDatasetPagination.GetToRecord: UInt32;
begin
  result := IfThen(Active, Page * Size, -1);
end;

procedure TDatasetPagination.SetAsJsonValue(const aJson: TJsonValue);
begin
  // TJanuaJson.DeserializeSimple<T>(const AValue: TJSONValue): T;
  self := TJanuaJson.DeserializeSimple<TDatasetPagination>(aJson)
end;

end.
