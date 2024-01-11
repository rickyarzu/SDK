unit JOrm.System.Users.Custom.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, JOrm.System.Users.Custom.Intf;

// ------------------------------------------ Impl object interface ----------------------------------

type
  TCustomUser = class(TJanuaRecord, ICustomUser)
  private
    FActive: IJanuaField;
    FActiveIndex: Integer;
    FEmail: IJanuaField;
    FEmailIndex: Integer;
    FDbUserId: IJanuaField;
    FDbUserIdIndex: Integer;
    FPassword: IJanuaField;
    FPasswordIndex: Integer;
    FUsername: IJanuaField;
    FUsernameIndex: Integer;
    FIsactive: IJanuaField;
    FIsactiveIndex: Integer;
    FVerifyToken: IJanuaField;
    FVerifyTokenIndex: Integer;
    FVerified: IJanuaField;
    FVerifiedIndex: Integer;
    FDefaultSchemaId: IJanuaField;
    FDefaultSchemaIdIndex: Integer;
    FIspublic: IJanuaField;
    FIspublicIndex: Integer;
    FInternalKey: IJanuaField;
    FInternalKeyIndex: Integer;
    FDefaultRoleId: IJanuaField;
    FDefaultRoleIdIndex: Integer;
    FSearchName: IJanuaField;
    FSearchNameIndex: Integer;
    FReverseSearch: IJanuaField;
    FReverseSearchIndex: Integer;
    FInsertDate: IJanuaField;
    FInsertDateIndex: Integer;
    FCountryId: IJanuaField;
    FCountryIdIndex: Integer;
    FMainProfileTypeId: IJanuaField;
    FMainProfileTypeIdIndex: Integer;
    FMainProfileId: IJanuaField;
    FMainProfileIdIndex: Integer;
    FImageId: IJanuaField;
    FImageIdIndex: Integer;
    FImageUrl: IJanuaField;
    FImageUrlIndex: Integer;
    FIsoLanguageCode: IJanuaField;
    FIsoLanguageCodeIndex: Integer;
    FIsoCultureCode: IJanuaField;
    FIsoCultureCodeIndex: Integer;
    FUserFirstName: IJanuaField;
    FUserFirstNameIndex: Integer;
    FUserFamilyName: IJanuaField;
    FUserFamilyNameIndex: Integer;
    FEmailsent: IJanuaField;
    FEmailsentIndex: Integer;
    FEmailconfirmed: IJanuaField;
    FEmailconfirmedIndex: Integer;
    FEmaildate: IJanuaField;
    FEmaildateIndex: Integer;
    FPayment: IJanuaField;
    FPaymentExpirationDate: IJanuaField;
    FJguid: IJanuaField;
    FJguidIndex: Integer;
    FDeleted: IJanuaField;
    FDeletedIndex: Integer;
    FSocialType: IJanuaField;
    FSocialID: IJanuaField;
  private
    function GetActive: IJanuaField;
    procedure SetActive(const Value: IJanuaField);
    function GetEmail: IJanuaField;
    procedure SetEmail(const Value: IJanuaField);
    function GetDbUserId: IJanuaField;
    procedure SetDbUserId(const Value: IJanuaField);
    function GetPassword: IJanuaField;
    procedure SetPassword(const Value: IJanuaField);
    function GeTUsername: IJanuaField;
    procedure SeTUsername(const Value: IJanuaField);
    function GetIsactive: IJanuaField;
    procedure SetIsactive(const Value: IJanuaField);
    function GetVerifyToken: IJanuaField;
    procedure SetVerifyToken(const Value: IJanuaField);
    function GetVerified: IJanuaField;
    procedure SetVerified(const Value: IJanuaField);
    function GetDefaultSchemaId: IJanuaField;
    procedure SetDefaultSchemaId(const Value: IJanuaField);
    function GetIspublic: IJanuaField;
    procedure SetIspublic(const Value: IJanuaField);
    function GetInternalKey: IJanuaField;
    procedure SetInternalKey(const Value: IJanuaField);
    function GetDefaultRoleId: IJanuaField;
    procedure SetDefaultRoleId(const Value: IJanuaField);
    function GetSearchName: IJanuaField;
    procedure SetSearchName(const Value: IJanuaField);
    function GetReverseSearch: IJanuaField;
    procedure SetReverseSearch(const Value: IJanuaField);
    function GetInsertDate: IJanuaField;
    procedure SetInsertDate(const Value: IJanuaField);
    function GetCountryId: IJanuaField;
    procedure SetCountryId(const Value: IJanuaField);
    function GetMainProfileTypeId: IJanuaField;
    procedure SetMainProfileTypeId(const Value: IJanuaField);
    function GetMainProfileId: IJanuaField;
    procedure SetMainProfileId(const Value: IJanuaField);
    function GetImageId: IJanuaField;
    procedure SetImageId(const Value: IJanuaField);
    function GetImageUrl: IJanuaField;
    procedure SetImageUrl(const Value: IJanuaField);
    function GetIsoLanguageCode: IJanuaField;
    procedure SetIsoLanguageCode(const Value: IJanuaField);
    function GetIsoCultureCode: IJanuaField;
    procedure SetIsoCultureCode(const Value: IJanuaField);
    function GeTUserFirstName: IJanuaField;
    procedure SeTUserFirstName(const Value: IJanuaField);
    function GeTUserFamilyName: IJanuaField;
    procedure SeTUserFamilyName(const Value: IJanuaField);
    function GetEmailsent: IJanuaField;
    procedure SetEmailsent(const Value: IJanuaField);
    function GetEmailconfirmed: IJanuaField;
    procedure SetEmailconfirmed(const Value: IJanuaField);
    function GetEmaildate: IJanuaField;
    procedure SetEmaildate(const Value: IJanuaField);
    function GetPayment: IJanuaField;
    procedure SetPayment(const Value: IJanuaField);
    function GetPaymentExpirationDate: IJanuaField;
    procedure SetPaymentExpirationDate(const Value: IJanuaField);
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    function GetDeleted: IJanuaField;
    procedure SetDeleted(const Value: IJanuaField);
    function GetSocialID: IJanuaField;
    procedure SetSocialID(const Value: IJanuaField);
    function GetSocialType: IJanuaField;
    procedure SetSocialType(const Value: IJanuaField);
  protected
    FPasswordVisible: boolean;
    FPasswordChar: char;
    function GetIsValidEmail: boolean;
    function ValidateUser: boolean;
    procedure OnUserNameChanged(const Sender: IJanuaField);
    function GetPasswordChar: char;
    procedure SetPasswordChar(const Value: char);
    function GetPasswordVisible: boolean;
    procedure SetPasswordVisible(const Value: boolean);
  public
    constructor Create; override;
    property PasswordVisible: boolean read GetPasswordVisible write SetPasswordVisible;
    property PasswordChar: char read GetPasswordChar write SetPasswordChar;
  public
    property Active: IJanuaField read GetActive write SetActive;
    property Email: IJanuaField read GetEmail write SetEmail;
    property DbUserId: IJanuaField read GetDbUserId write SetDbUserId;
    property Password: IJanuaField read GetPassword write SetPassword;
    property Username: IJanuaField read GeTUsername write SeTUsername;
    property Isactive: IJanuaField read GetIsactive write SetIsactive;
    property VerifyToken: IJanuaField read GetVerifyToken write SetVerifyToken;
    property Verified: IJanuaField read GetVerified write SetVerified;
    property DefaultSchemaId: IJanuaField read GetDefaultSchemaId write SetDefaultSchemaId;
    property Ispublic: IJanuaField read GetIspublic write SetIspublic;
    property InternalKey: IJanuaField read GetInternalKey write SetInternalKey;
    property DefaultRoleId: IJanuaField read GetDefaultRoleId write SetDefaultRoleId;
    property SearchName: IJanuaField read GetSearchName write SetSearchName;
    property ReverseSearch: IJanuaField read GetReverseSearch write SetReverseSearch;
    property InsertDate: IJanuaField read GetInsertDate write SetInsertDate;
    property CountryId: IJanuaField read GetCountryId write SetCountryId;
    property MainProfileTypeId: IJanuaField read GetMainProfileTypeId write SetMainProfileTypeId;
    property MainProfileId: IJanuaField read GetMainProfileId write SetMainProfileId;
    property ImageId: IJanuaField read GetImageId write SetImageId;
    property ImageUrl: IJanuaField read GetImageUrl write SetImageUrl;
    property IsoLanguageCode: IJanuaField read GetIsoLanguageCode write SetIsoLanguageCode;
    property IsoCultureCode: IJanuaField read GetIsoCultureCode write SetIsoCultureCode;
    property UserFirstName: IJanuaField read GeTUserFirstName write SeTUserFirstName;
    property UserFamilyName: IJanuaField read GeTUserFamilyName write SeTUserFamilyName;
    property Emailsent: IJanuaField read GetEmailsent write SetEmailsent;
    property Emailconfirmed: IJanuaField read GetEmailconfirmed write SetEmailconfirmed;
    property Emaildate: IJanuaField read GetEmaildate write SetEmaildate;
    property Payment: IJanuaField read GetPayment write SetPayment;
    property PaymentExpirationDate: IJanuaField read GetPaymentExpirationDate write SetPaymentExpirationDate;
    property Jguid: IJanuaField read GetJguid write SetJguid;
    property Deleted: IJanuaField read GetDeleted write SetDeleted;
    property IsValidEmail: boolean read GetIsValidEmail;
  end;

  TCustomUsers = class(TJanuaRecordSet, IJanuaRecordSet, ICustomUsers)
  private
    function GetActive: IJanuaField;
    procedure SetActive(const Value: IJanuaField);
    function GetEmail: IJanuaField;
    procedure SetEmail(const Value: IJanuaField);
    function GetDbUserId: IJanuaField;
    procedure SetDbUserId(const Value: IJanuaField);
    function GetPassword: IJanuaField;
    procedure SetPassword(const Value: IJanuaField);
    function GeTUsername: IJanuaField;
    procedure SeTUsername(const Value: IJanuaField);
    function GetIsactive: IJanuaField;
    procedure SetIsactive(const Value: IJanuaField);
    function GetVerifyToken: IJanuaField;
    procedure SetVerifyToken(const Value: IJanuaField);
    function GetVerified: IJanuaField;
    procedure SetVerified(const Value: IJanuaField);
    function GetDefaultSchemaId: IJanuaField;
    procedure SetDefaultSchemaId(const Value: IJanuaField);
    function GetIspublic: IJanuaField;
    procedure SetIspublic(const Value: IJanuaField);
    function GetInternalKey: IJanuaField;
    procedure SetInternalKey(const Value: IJanuaField);
    function GetDefaultRoleId: IJanuaField;
    procedure SetDefaultRoleId(const Value: IJanuaField);
    function GetSearchName: IJanuaField;
    procedure SetSearchName(const Value: IJanuaField);
    function GetReverseSearch: IJanuaField;
    procedure SetReverseSearch(const Value: IJanuaField);
    function GetInsertDate: IJanuaField;
    procedure SetInsertDate(const Value: IJanuaField);
    function GetCountryId: IJanuaField;
    procedure SetCountryId(const Value: IJanuaField);
    function GetMainProfileTypeId: IJanuaField;
    procedure SetMainProfileTypeId(const Value: IJanuaField);
    function GetMainProfileId: IJanuaField;
    procedure SetMainProfileId(const Value: IJanuaField);
    function GetImageId: IJanuaField;
    procedure SetImageId(const Value: IJanuaField);
    function GetImageUrl: IJanuaField;
    procedure SetImageUrl(const Value: IJanuaField);
    function GetIsoLanguageCode: IJanuaField;
    procedure SetIsoLanguageCode(const Value: IJanuaField);
    function GetIsoCultureCode: IJanuaField;
    procedure SetIsoCultureCode(const Value: IJanuaField);
    function GeTUserFirstName: IJanuaField;
    procedure SeTUserFirstName(const Value: IJanuaField);
    function GeTUserFamilyName: IJanuaField;
    procedure SeTUserFamilyName(const Value: IJanuaField);
    function GetEmailsent: IJanuaField;
    procedure SetEmailsent(const Value: IJanuaField);
    function GetEmailconfirmed: IJanuaField;
    procedure SetEmailconfirmed(const Value: IJanuaField);
    function GetEmaildate: IJanuaField;
    procedure SetEmaildate(const Value: IJanuaField);
    function GetPayment: IJanuaField;
    procedure SetPayment(const Value: IJanuaField);
    function GetPaymentExpirationDate: IJanuaField;
    procedure SetPaymentExpirationDate(const Value: IJanuaField);
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    function GetDeleted: IJanuaField;
    procedure SetDeleted(const Value: IJanuaField);
    function GeTCustomUser: ICustomUser;
    procedure SeTCustomUser(const Value: ICustomUser);
  public
    constructor Create; override;
    property Active: IJanuaField read GetActive write SetActive;
    property Email: IJanuaField read GetEmail write SetEmail;
    property DbUserId: IJanuaField read GetDbUserId write SetDbUserId;
    property Password: IJanuaField read GetPassword write SetPassword;
    property Username: IJanuaField read GeTUsername write SeTUsername;
    property Isactive: IJanuaField read GetIsactive write SetIsactive;
    property VerifyToken: IJanuaField read GetVerifyToken write SetVerifyToken;
    property Verified: IJanuaField read GetVerified write SetVerified;
    property DefaultSchemaId: IJanuaField read GetDefaultSchemaId write SetDefaultSchemaId;
    property Ispublic: IJanuaField read GetIspublic write SetIspublic;
    property InternalKey: IJanuaField read GetInternalKey write SetInternalKey;
    property DefaultRoleId: IJanuaField read GetDefaultRoleId write SetDefaultRoleId;
    property SearchName: IJanuaField read GetSearchName write SetSearchName;
    property ReverseSearch: IJanuaField read GetReverseSearch write SetReverseSearch;
    property InsertDate: IJanuaField read GetInsertDate write SetInsertDate;
    property CountryId: IJanuaField read GetCountryId write SetCountryId;
    property MainProfileTypeId: IJanuaField read GetMainProfileTypeId write SetMainProfileTypeId;
    property MainProfileId: IJanuaField read GetMainProfileId write SetMainProfileId;
    property ImageId: IJanuaField read GetImageId write SetImageId;
    property ImageUrl: IJanuaField read GetImageUrl write SetImageUrl;
    property IsoLanguageCode: IJanuaField read GetIsoLanguageCode write SetIsoLanguageCode;
    property IsoCultureCode: IJanuaField read GetIsoCultureCode write SetIsoCultureCode;
    property UserFirstName: IJanuaField read GeTUserFirstName write SeTUserFirstName;
    property UserFamilyName: IJanuaField read GeTUserFamilyName write SeTUserFamilyName;
    property Emailsent: IJanuaField read GetEmailsent write SetEmailsent;
    property Emailconfirmed: IJanuaField read GetEmailconfirmed write SetEmailconfirmed;
    property Emaildate: IJanuaField read GetEmaildate write SetEmaildate;
    property Payment: IJanuaField read GetPayment write SetPayment;
    property PaymentExpirationDate: IJanuaField read GetPaymentExpirationDate write SetPaymentExpirationDate;
    property Jguid: IJanuaField read GetJguid write SetJguid;
    property Deleted: IJanuaField read GetDeleted write SetDeleted;
  end;

  TCustomUsersFactory = class
    class function CreateRecord(const aKey: string): ICustomUser; overload;
    class function CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage)
      : ICustomUsers; overload;
  end;

implementation

uses Janua.Orm.Types, Janua.Core.Functions, System.SysUtils, System.StrUtils;

// ------------------------------------------ Impl TCustomUsers -------------------------------

{ TCustomUsers }

constructor TCustomUser.Create;
begin
  inherited;
  PasswordVisible:= False;
  FPasswordChar := '*';
  self.FPrefix := 'ssrs';
  SetEntity(TJanuaEntity.SysDbUsers);
  FSocialID := TJanuaOrmFactory.CreateStringField('social_id', 'social_id');
  FActiveIndex := AddField(FSocialID);
  // FSocialType
  FSocialType := TJanuaOrmFactory.CreateStringField('social_type', 'social_type');
  FActiveIndex := AddField(FSocialType);

  FActive := TJanuaOrmFactory.CreateBoolField('active', 'active');
  FActiveIndex := AddField(FActive);
  FEmail := TJanuaOrmFactory.CreateStringField('email', 'email');
  FEmailIndex := AddField(FEmail);
  FDbUserId := TJanuaOrmFactory.CreateIntegerField('db_user_id', 'db_user_id');
  FDbUserIdIndex := AddField(FDbUserId);
  FPassword := TJanuaOrmFactory.CreateStringField('password', 'password');
  FPasswordIndex := AddField(FPassword);
  FUsername := TJanuaOrmFactory.CreateStringField('username', 'username');
  FUsernameIndex := AddField(FUsername);
  FIsactive := TJanuaOrmFactory.CreateBoolField('isactive', 'isactive');
  FIsactiveIndex := AddField(FIsactive);
  FVerifyToken := TJanuaOrmFactory.CreateStringField('verify_token', 'verify_token');
  FVerifyTokenIndex := AddField(FVerifyToken);
  FVerified := TJanuaOrmFactory.CreateBoolField('verified', 'verified');
  FVerifiedIndex := AddField(FVerified);
  FDefaultSchemaId := TJanuaOrmFactory.CreateIntegerField('default_schema_id', 'default_schema_id');
  FDefaultSchemaIdIndex := AddField(FDefaultSchemaId);
  FIspublic := TJanuaOrmFactory.CreateBoolField('ispublic', 'ispublic');
  FIspublicIndex := AddField(FIspublic);
  FInternalKey := TJanuaOrmFactory.CreateStringField('internal_key', 'internal_key');
  FInternalKeyIndex := AddField(FInternalKey);
  FDefaultRoleId := TJanuaOrmFactory.CreateSmallintField('default_role_id', 'default_role_id');
  FDefaultRoleIdIndex := AddField(FDefaultRoleId);
  FSearchName := TJanuaOrmFactory.CreateStringField('search_name', 'search_name');
  FSearchNameIndex := AddField(FSearchName);
  FReverseSearch := TJanuaOrmFactory.CreateStringField('reverse_search', 'reverse_search');
  FReverseSearchIndex := AddField(FReverseSearch);
  FInsertDate := TJanuaOrmFactory.CreateDateTimeField('insert_date', 'insert_date');
  FInsertDateIndex := AddField(FInsertDate);
  FCountryId := TJanuaOrmFactory.CreateSmallintField('country_id', 'country_id');
  FCountryIdIndex := AddField(FCountryId);
  FMainProfileTypeId := TJanuaOrmFactory.CreateSmallintField('main_profile_type_id', 'main_profile_type_id');
  FMainProfileTypeIdIndex := AddField(FMainProfileTypeId);
  FMainProfileId := TJanuaOrmFactory.CreateStringField('main_profile_id', 'main_profile_id');
  FMainProfileIdIndex := AddField(FMainProfileId);
  FImageId := TJanuaOrmFactory.CreateLargeIntField('image_id', 'image_id');
  FImageIdIndex := AddField(FImageId);
  FImageUrl := TJanuaOrmFactory.CreateStringField('image_url', 'image_url');
  FImageUrlIndex := AddField(FImageUrl);
  FIsoLanguageCode := TJanuaOrmFactory.CreateStringField('iso_language_code', 'iso_language_code');
  FIsoLanguageCodeIndex := AddField(FIsoLanguageCode);
  FIsoCultureCode := TJanuaOrmFactory.CreateStringField('iso_culture_code', 'iso_culture_code');
  FIsoCultureCodeIndex := AddField(FIsoCultureCode);
  FUserFirstName := TJanuaOrmFactory.CreateStringField('user_first_name', 'user_first_name');
  FUserFirstNameIndex := AddField(FUserFirstName);
  FUserFamilyName := TJanuaOrmFactory.CreateStringField('user_family_name', 'user_family_name');
  FUserFamilyNameIndex := AddField(FUserFamilyName);
  FEmailsent := TJanuaOrmFactory.CreateBoolField('emailsent', 'emailsent');
  FEmailsentIndex := AddField(FEmailsent);
  FEmailconfirmed := TJanuaOrmFactory.CreateBoolField('emailconfirmed', 'emailconfirmed');
  FEmailconfirmedIndex := AddField(FEmailconfirmed);
  FEmaildate := TJanuaOrmFactory.CreateDateTimeField('emaildate', 'emaildate');
  FEmaildateIndex := AddField(FEmaildate);
  FPayment := TJanuaOrmFactory.CreateBoolField('payment', 'payment');
  ItemIndex := AddField(FPayment);
  FPaymentExpirationDate := TJanuaOrmFactory.CreateDateTimeField('payment_expiration_date', 'payment_expiration_date');
  ItemIndex := AddField(FPaymentExpirationDate);
  FJguid := TJanuaOrmFactory.CreateStringField('jguid', 'jguid');
  FJguidIndex := AddField(FJguid);
  FDeleted := TJanuaOrmFactory.CreateBoolField('deleted', 'deleted');
  FDeletedIndex := AddField(FDeleted);
  // MeThods
  self.FUsername.OnFieldDataChange := self.OnUserNameChanged;
end;

function TCustomUser.GetActive: IJanuaField;
begin
  Result := FActive;
end;

procedure TCustomUser.SetActive(const Value: IJanuaField);
begin
  FActive := Value;
end;

function TCustomUser.GetEmail: IJanuaField;
begin
  Result := FEmail;
end;

procedure TCustomUser.SetEmail(const Value: IJanuaField);
begin
  FEmail := Value;
end;

function TCustomUser.GetDbUserId: IJanuaField;
begin
  Result := FDbUserId;
end;

procedure TCustomUser.SetDbUserId(const Value: IJanuaField);
begin
  FDbUserId := Value;
end;

function TCustomUser.GetPassword: IJanuaField;
begin
  Result := FPassword;
end;

function TCustomUser.GetPasswordChar: char;
begin
  Result := FPasswordChar
end;

function TCustomUser.GetPasswordVisible: boolean;
begin
  Result := FPasswordVisible
end;

procedure TCustomUser.SetPassword(const Value: IJanuaField);
begin
  FPassword := Value;
end;

procedure TCustomUser.SetPasswordChar(const Value: char);
begin
  if FPasswordChar <> Value then
  begin
    FPasswordChar := Value;
    Notify('PasswordChar');
  end;
end;

procedure TCustomUser.SetPasswordVisible(const Value: boolean);
begin
  if Value <> FPasswordVisible then
  begin
    FPasswordVisible := Value;
    PasswordChar := JIfThen(FPasswordVisible, #0, '*');
    Notify('PasswordVisible');
  end;
end;

function TCustomUser.GeTUsername: IJanuaField;
begin
  Result := FUsername;
end;

procedure TCustomUser.SeTUsername(const Value: IJanuaField);
begin
  FUsername := Value;
end;

function TCustomUser.GetIsactive: IJanuaField;
begin
  Result := FIsactive;
end;

procedure TCustomUser.SetIsactive(const Value: IJanuaField);
begin
  FIsactive := Value;
end;

function TCustomUser.GetVerifyToken: IJanuaField;
begin
  Result := FVerifyToken;
end;

procedure TCustomUser.OnUserNameChanged(const Sender: IJanuaField);
begin
  if self.GetIsValidEmail then
    self.Email.AsString := self.FUsername.AsString;
end;

procedure TCustomUser.SetVerifyToken(const Value: IJanuaField);
begin
  FVerifyToken := Value;
end;

function TCustomUser.ValidateUser: boolean;
begin
  if (IsValidEmail) then
  begin
    Email.AsString := Username.AsString;
    Username.AsString := '';
  end;

  if (self.Username.AsString = '') and (self.Email.AsString <> '') then
    self.Username.AsString := Janua.Core.Functions.StripString(self.Email.AsString + '_' +
      FormatDateTime('ddhhnnss', Now()));

  Result := self.FUsername.AsString <> '';
end;

function TCustomUser.GetVerified: IJanuaField;
begin
  Result := FVerified;
end;

procedure TCustomUser.SetVerified(const Value: IJanuaField);
begin
  FVerified := Value;
end;

function TCustomUser.GetDefaultSchemaId: IJanuaField;
begin
  Result := FDefaultSchemaId;
end;

procedure TCustomUser.SetDefaultSchemaId(const Value: IJanuaField);
begin
  FDefaultSchemaId := Value;
end;

function TCustomUser.GetIspublic: IJanuaField;
begin
  Result := FIspublic;
end;

function TCustomUser.GetIsValidEmail: boolean;
begin
  Result := Janua.Core.Functions.IsValidEmail(self.FUsername.AsString);
end;

procedure TCustomUser.SetIspublic(const Value: IJanuaField);
begin
  FIspublic := Value;
end;

function TCustomUser.GetInternalKey: IJanuaField;
begin
  Result := FInternalKey;
end;

procedure TCustomUser.SetInternalKey(const Value: IJanuaField);
begin
  FInternalKey := Value;
end;

function TCustomUser.GetDefaultRoleId: IJanuaField;
begin
  Result := FDefaultRoleId;
end;

procedure TCustomUser.SetDefaultRoleId(const Value: IJanuaField);
begin
  FDefaultRoleId := Value;
end;

function TCustomUser.GetSearchName: IJanuaField;
begin
  Result := FSearchName;
end;

function TCustomUser.GetSocialID: IJanuaField;
begin
  Result := self.FSocialID
end;

function TCustomUser.GetSocialType: IJanuaField;
begin
  Result := self.FSocialType
end;

procedure TCustomUser.SetSearchName(const Value: IJanuaField);
begin
  FSearchName := Value;
end;

procedure TCustomUser.SetSocialID(const Value: IJanuaField);
begin
  self.FSocialID := Value
end;

procedure TCustomUser.SetSocialType(const Value: IJanuaField);
begin

end;

function TCustomUser.GetReverseSearch: IJanuaField;
begin
  Result := FReverseSearch;
end;

procedure TCustomUser.SetReverseSearch(const Value: IJanuaField);
begin
  FReverseSearch := Value;
end;

function TCustomUser.GetInsertDate: IJanuaField;
begin
  Result := FInsertDate;
end;

procedure TCustomUser.SetInsertDate(const Value: IJanuaField);
begin
  FInsertDate := Value;
end;

function TCustomUser.GetCountryId: IJanuaField;
begin
  Result := FCountryId;
end;

procedure TCustomUser.SetCountryId(const Value: IJanuaField);
begin
  FCountryId := Value;
end;

function TCustomUser.GetMainProfileTypeId: IJanuaField;
begin
  Result := FMainProfileTypeId;
end;

procedure TCustomUser.SetMainProfileTypeId(const Value: IJanuaField);
begin
  FMainProfileTypeId := Value;
end;

function TCustomUser.GetMainProfileId: IJanuaField;
begin
  Result := FMainProfileId;
end;

procedure TCustomUser.SetMainProfileId(const Value: IJanuaField);
begin
  FMainProfileId := Value;
end;

function TCustomUser.GetImageId: IJanuaField;
begin
  Result := FImageId;
end;

procedure TCustomUser.SetImageId(const Value: IJanuaField);
begin
  FImageId := Value;
end;

function TCustomUser.GetImageUrl: IJanuaField;
begin
  Result := FImageUrl;
end;

procedure TCustomUser.SetImageUrl(const Value: IJanuaField);
begin
  FImageUrl := Value;
end;

function TCustomUser.GetIsoLanguageCode: IJanuaField;
begin
  Result := FIsoLanguageCode;
end;

procedure TCustomUser.SetIsoLanguageCode(const Value: IJanuaField);
begin
  FIsoLanguageCode := Value;
end;

function TCustomUser.GetIsoCultureCode: IJanuaField;
begin
  Result := FIsoCultureCode;
end;

procedure TCustomUser.SetIsoCultureCode(const Value: IJanuaField);
begin
  FIsoCultureCode := Value;
end;

function TCustomUser.GeTUserFirstName: IJanuaField;
begin
  Result := FUserFirstName;
end;

procedure TCustomUser.SeTUserFirstName(const Value: IJanuaField);
begin
  FUserFirstName := Value;
end;

function TCustomUser.GeTUserFamilyName: IJanuaField;
begin
  Result := FUserFamilyName;
end;

procedure TCustomUser.SeTUserFamilyName(const Value: IJanuaField);
begin
  FUserFamilyName := Value;
end;

function TCustomUser.GetEmailsent: IJanuaField;
begin
  Result := FEmailsent;
end;

procedure TCustomUser.SetEmailsent(const Value: IJanuaField);
begin
  FEmailsent := Value;
end;

function TCustomUser.GetEmailconfirmed: IJanuaField;
begin
  Result := FEmailconfirmed;
end;

procedure TCustomUser.SetEmailconfirmed(const Value: IJanuaField);
begin
  FEmailconfirmed := Value;
end;

function TCustomUser.GetEmaildate: IJanuaField;
begin
  Result := FEmaildate;
end;

procedure TCustomUser.SetEmaildate(const Value: IJanuaField);
begin
  FEmaildate := Value;
end;

function TCustomUser.GetPayment: IJanuaField;
begin
  Result := FPayment;
end;

procedure TCustomUser.SetPayment(const Value: IJanuaField);
begin
  FPayment := Value;
end;

function TCustomUser.GetPaymentExpirationDate: IJanuaField;
begin
  Result := FPaymentExpirationDate;
end;

procedure TCustomUser.SetPaymentExpirationDate(const Value: IJanuaField);
begin
  FPaymentExpirationDate := Value;
end;

function TCustomUser.GetJguid: IJanuaField;
begin
  Result := FJguid;
end;

procedure TCustomUser.SetJguid(const Value: IJanuaField);
begin
  FJguid := Value;
end;

function TCustomUser.GetDeleted: IJanuaField;
begin
  Result := FDeleted;
end;

procedure TCustomUser.SetDeleted(const Value: IJanuaField);
begin
  FDeleted := Value;
end;

{ TCustomUserss }
constructor TCustomUsers.Create;
begin
  inherited;

end;

function TCustomUsers.GetActive: IJanuaField;
begin
  Result := GeTCustomUser.Active;
end;

procedure TCustomUsers.SetActive(const Value: IJanuaField);
begin
  GeTCustomUser.Active := Value;
end;

function TCustomUsers.GetEmail: IJanuaField;
begin
  Result := GeTCustomUser.Email;
end;

procedure TCustomUsers.SetEmail(const Value: IJanuaField);
begin
  GeTCustomUser.Email := Value;
end;

function TCustomUsers.GetDbUserId: IJanuaField;
begin
  Result := GeTCustomUser.DbUserId;
end;

procedure TCustomUsers.SetDbUserId(const Value: IJanuaField);
begin
  GeTCustomUser.DbUserId := Value;
end;

function TCustomUsers.GetPassword: IJanuaField;
begin
  Result := GeTCustomUser.Password;
end;

procedure TCustomUsers.SetPassword(const Value: IJanuaField);
begin
  GeTCustomUser.Password := Value;
end;

function TCustomUsers.GeTUsername: IJanuaField;
begin
  Result := GeTCustomUser.Username;
end;

procedure TCustomUsers.SeTUsername(const Value: IJanuaField);
begin
  GeTCustomUser.Username := Value;
end;

function TCustomUsers.GetIsactive: IJanuaField;
begin
  Result := GeTCustomUser.Isactive;
end;

procedure TCustomUsers.SetIsactive(const Value: IJanuaField);
begin
  GeTCustomUser.Isactive := Value;
end;

function TCustomUsers.GetVerifyToken: IJanuaField;
begin
  Result := GeTCustomUser.VerifyToken;
end;

procedure TCustomUsers.SetVerifyToken(const Value: IJanuaField);
begin
  GeTCustomUser.VerifyToken := Value;
end;

function TCustomUsers.GetVerified: IJanuaField;
begin
  Result := GeTCustomUser.Verified;
end;

procedure TCustomUsers.SetVerified(const Value: IJanuaField);
begin
  GeTCustomUser.Verified := Value;
end;

function TCustomUsers.GetDefaultSchemaId: IJanuaField;
begin
  Result := GeTCustomUser.DefaultSchemaId;
end;

procedure TCustomUsers.SetDefaultSchemaId(const Value: IJanuaField);
begin
  GeTCustomUser.DefaultSchemaId := Value;
end;

function TCustomUsers.GetIspublic: IJanuaField;
begin
  Result := GeTCustomUser.Ispublic;
end;

procedure TCustomUsers.SetIspublic(const Value: IJanuaField);
begin
  GeTCustomUser.Ispublic := Value;
end;

function TCustomUsers.GetInternalKey: IJanuaField;
begin
  Result := GeTCustomUser.InternalKey;
end;

procedure TCustomUsers.SetInternalKey(const Value: IJanuaField);
begin
  GeTCustomUser.InternalKey := Value;
end;

function TCustomUsers.GetDefaultRoleId: IJanuaField;
begin
  Result := GeTCustomUser.DefaultRoleId;
end;

procedure TCustomUsers.SetDefaultRoleId(const Value: IJanuaField);
begin
  GeTCustomUser.DefaultRoleId := Value;
end;

function TCustomUsers.GetSearchName: IJanuaField;
begin
  Result := GeTCustomUser.SearchName;
end;

procedure TCustomUsers.SetSearchName(const Value: IJanuaField);
begin
  GeTCustomUser.SearchName := Value;
end;

function TCustomUsers.GetReverseSearch: IJanuaField;
begin
  Result := GeTCustomUser.ReverseSearch;
end;

procedure TCustomUsers.SetReverseSearch(const Value: IJanuaField);
begin
  GeTCustomUser.ReverseSearch := Value;
end;

function TCustomUsers.GetInsertDate: IJanuaField;
begin
  Result := GeTCustomUser.InsertDate;
end;

procedure TCustomUsers.SetInsertDate(const Value: IJanuaField);
begin
  GeTCustomUser.InsertDate := Value;
end;

function TCustomUsers.GetCountryId: IJanuaField;
begin
  Result := GeTCustomUser.CountryId;
end;

procedure TCustomUsers.SetCountryId(const Value: IJanuaField);
begin
  GeTCustomUser.CountryId := Value;
end;

function TCustomUsers.GetMainProfileTypeId: IJanuaField;
begin
  Result := GeTCustomUser.MainProfileTypeId;
end;

procedure TCustomUsers.SetMainProfileTypeId(const Value: IJanuaField);
begin
  GeTCustomUser.MainProfileTypeId := Value;
end;

function TCustomUsers.GetMainProfileId: IJanuaField;
begin
  Result := GeTCustomUser.MainProfileId;
end;

procedure TCustomUsers.SetMainProfileId(const Value: IJanuaField);
begin
  GeTCustomUser.MainProfileId := Value;
end;

function TCustomUsers.GetImageId: IJanuaField;
begin
  Result := GeTCustomUser.ImageId;
end;

procedure TCustomUsers.SetImageId(const Value: IJanuaField);
begin
  GeTCustomUser.ImageId := Value;
end;

function TCustomUsers.GetImageUrl: IJanuaField;
begin
  Result := GeTCustomUser.ImageUrl;
end;

procedure TCustomUsers.SetImageUrl(const Value: IJanuaField);
begin
  GeTCustomUser.ImageUrl := Value;
end;

function TCustomUsers.GetIsoLanguageCode: IJanuaField;
begin
  Result := GeTCustomUser.IsoLanguageCode;
end;

procedure TCustomUsers.SetIsoLanguageCode(const Value: IJanuaField);
begin
  GeTCustomUser.IsoLanguageCode := Value;
end;

function TCustomUsers.GetIsoCultureCode: IJanuaField;
begin
  Result := GeTCustomUser.IsoCultureCode;
end;

procedure TCustomUsers.SetIsoCultureCode(const Value: IJanuaField);
begin
  GeTCustomUser.IsoCultureCode := Value;
end;

function TCustomUsers.GeTUserFirstName: IJanuaField;
begin
  Result := GeTCustomUser.UserFirstName;
end;

procedure TCustomUsers.SeTUserFirstName(const Value: IJanuaField);
begin
  GeTCustomUser.UserFirstName := Value;
end;

function TCustomUsers.GeTUserFamilyName: IJanuaField;
begin
  Result := GeTCustomUser.UserFamilyName;
end;

procedure TCustomUsers.SeTUserFamilyName(const Value: IJanuaField);
begin
  GeTCustomUser.UserFamilyName := Value;
end;

function TCustomUsers.GetEmailsent: IJanuaField;
begin
  Result := GeTCustomUser.Emailsent;
end;

procedure TCustomUsers.SetEmailsent(const Value: IJanuaField);
begin
  GeTCustomUser.Emailsent := Value;
end;

function TCustomUsers.GetEmailconfirmed: IJanuaField;
begin
  Result := GeTCustomUser.Emailconfirmed;
end;

procedure TCustomUsers.SetEmailconfirmed(const Value: IJanuaField);
begin
  GeTCustomUser.Emailconfirmed := Value;
end;

function TCustomUsers.GetEmaildate: IJanuaField;
begin
  Result := GeTCustomUser.Emaildate;
end;

procedure TCustomUsers.SetEmaildate(const Value: IJanuaField);
begin
  GeTCustomUser.Emaildate := Value;
end;

function TCustomUsers.GetPayment: IJanuaField;
begin
  Result := GeTCustomUser.Payment;
end;

procedure TCustomUsers.SetPayment(const Value: IJanuaField);
begin
  GeTCustomUser.Payment := Value;
end;

function TCustomUsers.GetPaymentExpirationDate: IJanuaField;
begin
  Result := GeTCustomUser.PaymentExpirationDate;
end;

procedure TCustomUsers.SetPaymentExpirationDate(const Value: IJanuaField);
begin
  GeTCustomUser.PaymentExpirationDate := Value;
end;

function TCustomUsers.GetJguid: IJanuaField;
begin
  Result := GeTCustomUser.Jguid;
end;

procedure TCustomUsers.SetJguid(const Value: IJanuaField);
begin
  GeTCustomUser.Jguid := Value;
end;

function TCustomUsers.GetDeleted: IJanuaField;
begin
  Result := GeTCustomUser.Deleted;
end;

procedure TCustomUsers.SetDeleted(const Value: IJanuaField);
begin
  GeTCustomUser.Deleted := Value;
end;

function TCustomUsers.GeTCustomUser: ICustomUser;
begin
  Result := self.FRecord as ICustomUser;
end;

procedure TCustomUsers.SeTCustomUser(const Value: ICustomUser);
begin
  self.FRecord := Value;
end;

{ TCustomUsersFactory }

class function TCustomUsersFactory.CreateRecord(const aKey: string): ICustomUser;
begin
  Result := TCustomUser.Create(aKey);
end;

class function TCustomUsersFactory.CreateRecordset(const aName: string;
  const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): ICustomUsers;
begin
  Result := TCustomUsers.Create(aName, aLocalStorage, aRemoteStorage);
end;

end.
