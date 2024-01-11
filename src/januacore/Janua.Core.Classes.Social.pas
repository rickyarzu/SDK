unit Janua.Core.Classes.Social;

interface

uses System.Json, System.StrUtils, System.SysUtils, Janua.Core.Types, Janua.Core.Functions;

// Cloud REST Framework Types .......................................................................................
Type
  // Social Cloud Active for oAuth or other procedures ......................................
  TJanuaSocialType = (jstFacebook, jstTwitter, jstLinkedIN, jstVKontakte);
  // Facebook Record for Facebook URL for Login/oAuth/... and so on .........................
  TJanuaFBUrlType = (jfuNone, jfuAuth, jfuLike);
  TJanuaFBSCopeType = (jfsEmail, jfsAboutMe, jfsBirthDay, jfsPublicProfile, jfsEducation, jfsFriends, jfsHomeTown,
    jfsLocation);
  TJanuaFBSCopeTypes = set of TJanuaFBSCopeType;
  TJanuaFBResponseType = (jfrCode, jfrToken, jfrCodeToken, jfrCodeGranted, jfrTokenGranted);
  // Twitter Record ........................................................................
  TJanuaTWUrlType = (jtuNone, jtuAuth, jtuTweet);
  TJanuaTWSCopeType = (jtsTweet);
  TJanuaTWSCopeTypes = set of TJanuaTWSCopeType;

  {
    /// we need to transfer the data here manually
    OAuth1_Twitter.ConsumerKey := edt_Twitter_ConsumerKey.Text;
    OAuth1_Twitter.ConsumerSecret := edt_Twitter_ConsumerSecret.Text;
  }
const
  JanuaFBSCopes: array [TJanuaFBSCopeType] of string = ('email', 'user_about_me', 'user_birthday', 'public_profile',
    'user_education_history', 'user_friends', 'user_hometown', 'user_location');
  JanuaFBResponseTypes: array [TJanuaFBResponseType] of string = ('code', 'token', 'code token', 'code,granted_scopes',
    'token,granted_scopes');
  (*
    Autorizzazioni di lettura - Carattseristiche degli utenti
    read_custom_friendlists
    user_relationship_details
    user_relationships
    user_religion_politics
    user_work_history
  *)
  JanuaTWSCopes: array [TJanuaTWSCopeType] of string = ('1.1/statuses/update.json');

type
  TJanuaFacebookUrl = record
    UrlType: TJanuaFBUrlType; // jfuNone, jfuAuth, jfuLike
    AuthURL: string;
    BaseURL: string;
    DestURL: string;
    Scopes: TJanuaFBSCopeTypes;
    AppID: string;
    AppSecret: string;
    ResponseType: TJanuaFBResponseType;
    Code: string;
    ErrorMessage: string;
  private
    function CheckUp: boolean;
  public
    procedure Clear;
    function GetURL: string;
    function GetCodeURL: string;
    function GetResourceURI: string;
    constructor Create(const aAppID: string; aUrlType: TJanuaFBUrlType); overload;
    constructor Create(const aAppID: string; aUrlType: TJanuaFBUrlType; aDestUrl: string); overload;
  end;

Type
  TJanuaFacebookLocation = record
    city: string;
    city_id: UInt32; // City ID. Any city identified is also a city you can use for targeting ads.
    country: string;
    country_code: string;
    latitude: Double;
    located_in: UInt32; // id The parent location if this location is located within another location
    longitude: Double;
    name: string;
    region: string;
    region_id: UInt32;
    // Region ID. Specifies a geographic region, such as California. An identified region is the same as one you can use to target ads.
    state: string;
    street: string;
    zip: string; // Zip Code
  end;

type
  TJanuaFBPage = record
    id: string;
  end;

type
  TJanuaFBAdminNote = record
    body: string; // Content of this note
    from: TJanuaFBPage; // Page that owns the note
    id: string; // numeric string ID of the tag
    user_id: UInt64; // unique ID of the user
  end;

Type
  TJanuaFBAgeRange = record
    Max: UInt8; // intero ad 8 bit senza segno da 0 a 255
    Min: UInt8;
  end;

Type
  TJanuaFBUserDevice = record

  end;

Type
  TJanuaFBEducationExperience = record

  end;

Type
  TJanuaFBExperience = record
    id: string; // numeric string
    description: string; // Description
    from: UInt32; // User From
    name: string;
    with_users: TArray<UInt32>; // Tagged users
  end;

Type
  TJanuaFBAboutMe = record
    about: string; // Equivalent to the bio field
    id: string;
    // The id of this person's user account. This ID is unique to each app and cannot be used across different apps. Our upgrade guide provides more information about app-specific IDs
    Address: TJanuaFacebookLocation; // The person's address
    admin_notes: string; // list<PageAdminNote> Notes added by viewing page on this person
    age_range: TJanuaFBAgeRange;
    // AgeRange The age segment for this person expressed as A minimum and maximum age.For example, more than 18,
    birthday: string;
    // The person's birthday. This is a fixed format string, like MM/DD/YYYY. However, people can control who can see the year they were born separately from the month and day so this string can be only the year (YYYY) or the month + day (MM/DD)
    can_review_measurement_request: boolean;
    // Can The person review brand polls context UserContext Social context for
    // this person cover CoverPhoto The person 's cover photo currency currency The person 's local currency information
    devices: TArray<TJanuaFBUserDevice>;
    // The list of devices The person is using.this will return only iOS and Android devices
    education: TArray<TJanuaFBEducationExperience>;
    // The person 's education email string The person 's primary email address listed on their profile. This field will not be returned if no valid email address is available
    employee_number: string; // The person 's employee number, as set by the company via SCIM API
    favorite_athletes: TArray<TJanuaFBExperience>; // Athletes The person likes favorite_teams
    sports: TArray<TJanuaFBExperience>; // Sports teams The person likes
    first_name: string; // The person 's first name Core
    gender: string;
    // The gender selected by this person,  male or female.If The gender is set to A custom Value,
    // this Value will be based off of The preferred pronoun; it will be omitted if The preferred preferred pronoun is neutral Core
    hometown_page_id: string; // Page The person 's hometown
    (* inspirational_people list<Experience> The person 's inspirational people install_type enum Install type installed
      bool Is The app making The request installed ? interested_in list<string> Genders The person is interested
      in is_payment_enabled bool Is The user eligible for messenger platform payment is_shared_login bool Is this A
      shared login(e.g.A gray user)is_verified bool People with large numbers of followers Can have The authenticity of
      their identity manually verified by Facebook.this field indicates whether The person
      's profile is verified in this way. This is distinct from the verified field labels list<PageLabel> labels applied
      by viewing Page on this person languages list<Experience> Facebook Pages representing The languages this person
      knows last_ad_referral MessengerPlatformReferral Last Ad referral for The user last_name string The person
      's last name Core link string A link to The person 's Timeline Core local_news_megaphone_dismiss_status bool
      Display megaphone for local news bookmark Deprecated locale string The person 's locale Core location Page The
      person 's current location as entered by them on their profile. This field is not related to check-ins Core
      meeting_for list<string> What The person is interested in meeting for middle_name string The person 's middle name
      Core name string The person 's full name CoreDefault name_format string The person
      's name formatted to correctly handle Chinese, Japanese, or Korean ordering payment_pricepoints PaymentPricepoints
      The person 's payment pricepoints political string The person 's political views profile_pic string The profile
      picture url of The messenger user public_key string The person 's PGP public key quotes string The person
      's favorite quotes relationship_status string The person 's relationship status religion string The person
      's religion security_settings SecuritySettings Security settings shared_login_upgrade_required_by datetime The
      time that The shared loginneeds to be upgraded to Business Manager by short_name string Shortened,
      locale - aware name for The person significant_other user The person 's significant other Sports list<Experience>
      Sports played by The person test_group unsigned int32 Platform test group third_party_id string A string
      containing an anonymous, but unique identifier for The person.You Can use this identifier with third parties
      timezone float(min: - 24)(max: 24)The person 's current timezone offset from UTC Core token_for_business string A
      token that is The same across A Business
      's apps. Access to this token requires that the person be logged into your app or have a role on your app. This token will change if the business owning the app changes
      updated_time datetime Updated time verified bool indicates whether The account has been verified.this is distinct
      from The is_verified field.Someone is considered verified if they take any of The following actions
      : * Register for mobile * Confirm their account via SMS *
      Enter A valid credit card video_upload_limits VideoUploadLimits Video upload limits viewer_can_send_gift bool Can
      The viewer send A gift to this person ? website string The person 's website work list<WorkExperience>
    *)
  end;

type
  TJanuaFacebookPublicFields = (jfpID, jfpAbout, jfpAgeRange, jpfBirthday, jpfContext, jfpCover, jfpCurrency,
    jfpDevices, jfpEducation, jfpEmail, jfpFirstName, jfpGender, jfpHomeTown, jfpLastName, jfpLink, jfpLocation,
    jfpMiddleName, jfpName, jfpPicture, jfpLocale, jfpAddress, jfpSports, jftpTimezone, jfpWebsite);

const
  sJanuaFacebookPublicFields: array [TJanuaFacebookPublicFields] of string = ('id', 'about', 'age_range', 'birthday',
    'context', 'cover', 'currency', 'devices', 'education', 'email', 'first_name', 'gender', 'hometown', 'last_name',
    'link', 'location', 'middle_name', 'name', 'picture', 'locale', 'address', 'sports', 'timezone', 'website');

Type
  TJanuaFacebookUser = record
    id: string;
    about: string;
    cover: string;
    name: string;
    first_name: string;
    last_name: string;
    age_range: string;
    link: string;
    gender: string;
    locale: string;
    picture: string;
    timezone: string;
    updated_time: string;
    verified: string;
    email: string;
    user_about_me: TJanuaFBAboutMe;
    user_birthday: string;
    user_hometown: string;
  public
    constructor Create(aObject: TJsonObject); overload;
    constructor Create(aJson: String); overload;
  public
    class function GetURIFields: string; static;
  end;

Type
  TJanuaTwitterUrl = record
    UrlType: TJanuaTWUrlType;
    DestURL: string;
    Scopes: TJanuaTWSCopeTypes;
    AppID: string;
    AppSecret: string;
  public
    function GetURL: string;
    constructor Create(const aAppID: string; aUrlType: TJanuaTWUrlType); overload;
    constructor Create(const aAppID: string; aUrlType: TJanuaTWUrlType; aDestUrl: string); overload;
  end;

implementation

uses
  REST.Utils, Janua.Core.Json;

{ TJanuaFacebookUrl }

constructor TJanuaFacebookUrl.Create(const aAppID: string; aUrlType: TJanuaFBUrlType);
begin
  self.Clear;
  self.AppID := aAppID;
  self.UrlType := aUrlType;
  self.DestURL := '';
end;

constructor TJanuaFacebookUrl.Create(const aAppID: string; aUrlType: TJanuaFBUrlType; aDestUrl: string);
begin
  self.Create(aAppID, aUrlType);
  self.DestURL := aDestUrl;
end;

function TJanuaFacebookUrl.CheckUp: boolean;
begin
  Result := True;
  if self.DestURL = '' then
  begin
    self.ErrorMessage := ('TJanuaFacebookUrl.GetCodeURL DestURL  Not Set');
    Exit(False)
  end;
  if self.AppID = '' then
  begin
    self.ErrorMessage := ('TJanuaFacebookUrl.GetCodeURL AppID  Not Set');
    Exit(False)
  end;
  if self.AppSecret = '' then
  begin
    self.ErrorMessage := ('TJanuaFacebookUrl.GetCodeURL AppSecret  Not Set');
    Exit(False)
  end;
end;

procedure TJanuaFacebookUrl.Clear;
begin
  self := Default (TJanuaFacebookUrl);
  ResponseType := TJanuaFBResponseType.jfrCode;
  // il response type pu? avere come struttura Code ed in questo caso sar? un parametro o token e sar? un frammento
  self.UrlType := TJanuaFBUrlType.jfuAuth;
  self.AuthURL := 'https://www.facebook.com/dialog/oauth'; // Url da cui ottnere oAuth
  self.BaseURL := 'https://graph.facebook.com/'; // Base URL da cui partire per Resource-URI.
  self.Scopes := [jfsEmail, jfsPublicProfile, jfsFriends];
  // self.Scopes := [jfsEmail, jfsAboutMe, jfsBirthDay, jfsPublicProfile, jfsEducation, jfsHomeTown, jfsLocation];
end;

function TJanuaFacebookUrl.GetCodeURL: string;
begin
  Result := '';
  if CheckUp and (self.Code <> '')

  // ebe8cb227561474f7cfb114cedfbffef
  (*
    GET https://graph.facebook.com/v2.11/oauth/access_token?
    client_id={app-id}
    &redirect_uri={redirect-uri}
    &client_secret={app-secret}
    &code={code-parameter}
  *)

  then
  begin

    Result := 'https://graph.facebook.com/v2.11/oauth/access_token';
    Result := Result + '?client_id=' + URIEncode(self.AppID); // Indice univoco della App Facebook .........
    Result := Result + '&redirect_uri=' + URIEncode(self.DestURL);
    // Dest-Url ? il Redirect URL usato per richiesta
    Result := Result + '&client_secret=' + URIEncode(self.AppSecret);
    // App Secret ? il codice App Secret associato ad ID
    Result := Result + '&code=' + URIEncode(self.Code);
  end
  else
  begin
    self.ErrorMessage := ('TJanuaFacebookUrl.GetCodeURL Code  Not Set');
  end;
end;

function TJanuaFacebookUrl.GetResourceURI: string;
begin
  Result := 'me?fields=' + TJanuaFacebookUser.GetURIFields;
  // sovrascritto in quanto per ora non leggibile .....
  // Result := 'me?fields=' + TJanuaFacebookUser.GetURIFields;
  // Result := 'me?fields=id,name,email,birthday,friends.limit(10).fields(name)'
  // name,email,birthday,friends.limit(10).fields(name)
end;

function TJanuaFacebookUrl.GetURL: string;
var
  aScope: TJanuaFBSCopeType;
  I: integer;
  sScopes: string;
begin
  Result := self.AuthURL;
  I := 0;
  sScopes := '';
  for aScope in self.Scopes do
  begin
    sScopes := sScopes + IfThen(I = 0, JanuaFBSCopes[aScope], ',' + JanuaFBSCopes[aScope]);
    case aScope of
      jfsEmail:
        ; // non ha parametri speciali ............................................
      jfsAboutMe:
        ;
      jfsBirthDay:
        ;
      jfsPublicProfile:
        ;
      jfsEducation:
        ;
      jfsFriends:
        ; // parametrizzato sul numero limite di record da analizzare ...................
      jfsHomeTown:
        ;
      jfsLocation:
        ;
    end;
    Inc(I);
  end;
  // Client ID is not the AppID, App Url is not Required.
  Result := Result + '?client_id=' + URIEncode(self.AppID);
  // il response Type ? definito proprio dal parametro Response Type di tipo TJanuaFBResponseTypes
  Result := Result + '&response_type=' + JanuaFBResponseTypes[self.ResponseType];
  if I > 0 then
    Result := Result + '&scope=' + URIEncode(sScopes);
  // the destination URL needs to be encoded before it is Sent to Facebook Engine ......................................
  Result := Result + '&redirect_uri=' + URIEncode(self.DestURL);
end;

{ TJanuaTwitterUrl }

constructor TJanuaTwitterUrl.Create(const aAppID: string; aUrlType: TJanuaTWUrlType);
begin

end;

constructor TJanuaTwitterUrl.Create(const aAppID: string; aUrlType: TJanuaTWUrlType; aDestUrl: string);
begin

end;

function TJanuaTwitterUrl.GetURL: string;
begin

end;

{ TJanuaFacebookUser }

constructor TJanuaFacebookUser.Create(aObject: TJsonObject);
begin
  JsonValue(aObject, 'id', self.id);
  JsonValue(aObject, 'first_name', self.first_name);
  JsonValue(aObject, 'last_name', self.last_name);
  JsonValue(aObject, 'email', self.email);
  JsonValue(aObject, 'picture', self.picture);
end;

constructor TJanuaFacebookUser.Create(aJson: String);
begin
  self.Create(Janua.Core.Json.JsonParse(aJson));
end;

class function TJanuaFacebookUser.GetURIFields: string;
var
  I: TJanuaFacebookPublicFields;
begin
  Result := '';
  for I := Low(TJanuaFacebookPublicFields) to High(TJanuaFacebookPublicFields) do
    Result := Result + IfThen(I = jfpID, '', ',') + sJanuaFacebookPublicFields[I];
end;

end.
