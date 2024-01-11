unit JOrm.System.User.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, JOrm.System.User.Intf;

// ------------------------------------------ Impl object interface ----------------------------------

type
  TUser = class(TJanuaRecord, IUser)
  private
    FActive: Integer;
    FEmail: Integer;
    FDb_user_id: Integer;
    FPassword: Integer;
    FUsername: Integer;
    FIsactive: Integer;
    FVerify_token: Integer;
    FVerified: Integer;
    FDefault_schema_id: Integer;
    FIspublic: Integer;
    FInternal_key: Integer;
    FDefault_role_id: Integer;
    FSearch_name: Integer;
    FReverse_search: Integer;
    FInsert_date: Integer;
    FCountry_id: Integer;
    FMain_profile_type_id: Integer;
    FMain_profile_id: Integer;
    FImage_id: Integer;
    FImage_url: Integer;
    FIso_language_code: Integer;
    FIso_culture_code: Integer;
    FUser_first_name: Integer;
    FUser_family_name: Integer;
    FEmailsent: Integer;
    FEmailconfirmed: Integer;
    FEmaildate: Integer;
    FPayment: Integer;
    FPayment_expiration_date: Integer;
  private
    function GetActive: IJanuaField;
    procedure SetActive(const Value: IJanuaField);
    function GetEmail: IJanuaField;
    procedure SetEmail(const Value: IJanuaField);
    function GetDb_user_id: IJanuaField;
    procedure SetDb_user_id(const Value: IJanuaField);
    function GetPassword: IJanuaField;
    procedure SetPassword(const Value: IJanuaField);
    function GetUsername: IJanuaField;
    procedure SetUsername(const Value: IJanuaField);
    function GetIsactive: IJanuaField;
    procedure SetIsactive(const Value: IJanuaField);
    function GetVerify_token: IJanuaField;
    procedure SetVerify_token(const Value: IJanuaField);
    function GetVerified: IJanuaField;
    procedure SetVerified(const Value: IJanuaField);
    function GetDefault_schema_id: IJanuaField;
    procedure SetDefault_schema_id(const Value: IJanuaField);
    function GetIspublic: IJanuaField;
    procedure SetIspublic(const Value: IJanuaField);
    function GetInternal_key: IJanuaField;
    procedure SetInternal_key(const Value: IJanuaField);
    function GetDefault_role_id: IJanuaField;
    procedure SetDefault_role_id(const Value: IJanuaField);
    function GetSearch_name: IJanuaField;
    procedure SetSearch_name(const Value: IJanuaField);
    function GetReverse_search: IJanuaField;
    procedure SetReverse_search(const Value: IJanuaField);
    function GetInsert_date: IJanuaField;
    procedure SetInsert_date(const Value: IJanuaField);
    function GetCountry_id: IJanuaField;
    procedure SetCountry_id(const Value: IJanuaField);
    function GetMain_profile_type_id: IJanuaField;
    procedure SetMain_profile_type_id(const Value: IJanuaField);
    function GetMain_profile_id: IJanuaField;
    procedure SetMain_profile_id(const Value: IJanuaField);
    function GetImage_id: IJanuaField;
    procedure SetImage_id(const Value: IJanuaField);
    function GetImage_url: IJanuaField;
    procedure SetImage_url(const Value: IJanuaField);
    function GetIso_language_code: IJanuaField;
    procedure SetIso_language_code(const Value: IJanuaField);
    function GetIso_culture_code: IJanuaField;
    procedure SetIso_culture_code(const Value: IJanuaField);
    function GetUser_first_name: IJanuaField;
    procedure SetUser_first_name(const Value: IJanuaField);
    function GetUser_family_name: IJanuaField;
    procedure SetUser_family_name(const Value: IJanuaField);
    function GetEmailsent: IJanuaField;
    procedure SetEmailsent(const Value: IJanuaField);
    function GetEmailconfirmed: IJanuaField;
    procedure SetEmailconfirmed(const Value: IJanuaField);
    function GetEmaildate: IJanuaField;
    procedure SetEmaildate(const Value: IJanuaField);
    function GetPayment: IJanuaField;
    procedure SetPayment(const Value: IJanuaField);
    function GetPayment_expiration_date: IJanuaField;
    procedure SetPayment_expiration_date(const Value: IJanuaField);
  public
    constructor Create; override;
    property Active: IJanuaField read GetActive write SetActive;
    property Email: IJanuaField read GetEmail write SetEmail;
    property Db_user_id: IJanuaField read GetDb_user_id write SetDb_user_id;
    property Password: IJanuaField read GetPassword write SetPassword;
    property Username: IJanuaField read GetUsername write SetUsername;
    property Isactive: IJanuaField read GetIsactive write SetIsactive;
    property Verify_token: IJanuaField read GetVerify_token write SetVerify_token;
    property Verified: IJanuaField read GetVerified write SetVerified;
    property Default_schema_id: IJanuaField read GetDefault_schema_id write SetDefault_schema_id;
    property Ispublic: IJanuaField read GetIspublic write SetIspublic;
    property Internal_key: IJanuaField read GetInternal_key write SetInternal_key;
    property Default_role_id: IJanuaField read GetDefault_role_id write SetDefault_role_id;
    property Search_name: IJanuaField read GetSearch_name write SetSearch_name;
    property Reverse_search: IJanuaField read GetReverse_search write SetReverse_search;
    property Insert_date: IJanuaField read GetInsert_date write SetInsert_date;
    property Country_id: IJanuaField read GetCountry_id write SetCountry_id;
    property Main_profile_type_id: IJanuaField read GetMain_profile_type_id write SetMain_profile_type_id;
    property Main_profile_id: IJanuaField read GetMain_profile_id write SetMain_profile_id;
    property Image_id: IJanuaField read GetImage_id write SetImage_id;
    property Image_url: IJanuaField read GetImage_url write SetImage_url;
    property Iso_language_code: IJanuaField read GetIso_language_code write SetIso_language_code;
    property Iso_culture_code: IJanuaField read GetIso_culture_code write SetIso_culture_code;
    property User_first_name: IJanuaField read GetUser_first_name write SetUser_first_name;
    property User_family_name: IJanuaField read GetUser_family_name write SetUser_family_name;
    property Emailsent: IJanuaField read GetEmailsent write SetEmailsent;
    property Emailconfirmed: IJanuaField read GetEmailconfirmed write SetEmailconfirmed;
    property Emaildate: IJanuaField read GetEmaildate write SetEmaildate;
    property Payment: IJanuaField read GetPayment write SetPayment;
    property Payment_expiration_date: IJanuaField read GetPayment_expiration_date
      write SetPayment_expiration_date;

  end;

  TUsers = class(TJanuaRecordSet, IJanuaRecordSet, IUsers)
  private
    function GetActive: IJanuaField;
    procedure SetActive(const Value: IJanuaField);
    function GetEmail: IJanuaField;
    procedure SetEmail(const Value: IJanuaField);
    function GetDb_user_id: IJanuaField;
    procedure SetDb_user_id(const Value: IJanuaField);
    function GetPassword: IJanuaField;
    procedure SetPassword(const Value: IJanuaField);
    function GetUsername: IJanuaField;
    procedure SetUsername(const Value: IJanuaField);
    function GetIsactive: IJanuaField;
    procedure SetIsactive(const Value: IJanuaField);
    function GetVerify_token: IJanuaField;
    procedure SetVerify_token(const Value: IJanuaField);
    function GetVerified: IJanuaField;
    procedure SetVerified(const Value: IJanuaField);
    function GetDefault_schema_id: IJanuaField;
    procedure SetDefault_schema_id(const Value: IJanuaField);
    function GetIspublic: IJanuaField;
    procedure SetIspublic(const Value: IJanuaField);
    function GetInternal_key: IJanuaField;
    procedure SetInternal_key(const Value: IJanuaField);
    function GetDefault_role_id: IJanuaField;
    procedure SetDefault_role_id(const Value: IJanuaField);
    function GetSearch_name: IJanuaField;
    procedure SetSearch_name(const Value: IJanuaField);
    function GetReverse_search: IJanuaField;
    procedure SetReverse_search(const Value: IJanuaField);
    function GetInsert_date: IJanuaField;
    procedure SetInsert_date(const Value: IJanuaField);
    function GetCountry_id: IJanuaField;
    procedure SetCountry_id(const Value: IJanuaField);
    function GetMain_profile_type_id: IJanuaField;
    procedure SetMain_profile_type_id(const Value: IJanuaField);
    function GetMain_profile_id: IJanuaField;
    procedure SetMain_profile_id(const Value: IJanuaField);
    function GetImage_id: IJanuaField;
    procedure SetImage_id(const Value: IJanuaField);
    function GetImage_url: IJanuaField;
    procedure SetImage_url(const Value: IJanuaField);
    function GetIso_language_code: IJanuaField;
    procedure SetIso_language_code(const Value: IJanuaField);
    function GetIso_culture_code: IJanuaField;
    procedure SetIso_culture_code(const Value: IJanuaField);
    function GetUser_first_name: IJanuaField;
    procedure SetUser_first_name(const Value: IJanuaField);
    function GetUser_family_name: IJanuaField;
    procedure SetUser_family_name(const Value: IJanuaField);
    function GetEmailsent: IJanuaField;
    procedure SetEmailsent(const Value: IJanuaField);
    function GetEmailconfirmed: IJanuaField;
    procedure SetEmailconfirmed(const Value: IJanuaField);
    function GetEmaildate: IJanuaField;
    procedure SetEmaildate(const Value: IJanuaField);
    function GetPayment: IJanuaField;
    procedure SetPayment(const Value: IJanuaField);
    function GetPayment_expiration_date: IJanuaField;
    procedure SetPayment_expiration_date(const Value: IJanuaField);
    function GetUser: IUser;
    procedure SetUser(const Value: IUser);
  public
    constructor Create; override;
    property Active: IJanuaField read GetActive write SetActive;
    property Email: IJanuaField read GetEmail write SetEmail;
    property Db_user_id: IJanuaField read GetDb_user_id write SetDb_user_id;
    property Password: IJanuaField read GetPassword write SetPassword;
    property Username: IJanuaField read GetUsername write SetUsername;
    property Isactive: IJanuaField read GetIsactive write SetIsactive;
    property Verify_token: IJanuaField read GetVerify_token write SetVerify_token;
    property Verified: IJanuaField read GetVerified write SetVerified;
    property Default_schema_id: IJanuaField read GetDefault_schema_id write SetDefault_schema_id;
    property Ispublic: IJanuaField read GetIspublic write SetIspublic;
    property Internal_key: IJanuaField read GetInternal_key write SetInternal_key;
    property Default_role_id: IJanuaField read GetDefault_role_id write SetDefault_role_id;
    property Search_name: IJanuaField read GetSearch_name write SetSearch_name;
    property Reverse_search: IJanuaField read GetReverse_search write SetReverse_search;
    property Insert_date: IJanuaField read GetInsert_date write SetInsert_date;
    property Country_id: IJanuaField read GetCountry_id write SetCountry_id;
    property Main_profile_type_id: IJanuaField read GetMain_profile_type_id write SetMain_profile_type_id;
    property Main_profile_id: IJanuaField read GetMain_profile_id write SetMain_profile_id;
    property Image_id: IJanuaField read GetImage_id write SetImage_id;
    property Image_url: IJanuaField read GetImage_url write SetImage_url;
    property Iso_language_code: IJanuaField read GetIso_language_code write SetIso_language_code;
    property Iso_culture_code: IJanuaField read GetIso_culture_code write SetIso_culture_code;
    property User_first_name: IJanuaField read GetUser_first_name write SetUser_first_name;
    property User_family_name: IJanuaField read GetUser_family_name write SetUser_family_name;
    property Emailsent: IJanuaField read GetEmailsent write SetEmailsent;
    property Emailconfirmed: IJanuaField read GetEmailconfirmed write SetEmailconfirmed;
    property Emaildate: IJanuaField read GetEmaildate write SetEmaildate;
    property Payment: IJanuaField read GetPayment write SetPayment;
    property Payment_expiration_date: IJanuaField read GetPayment_expiration_date
      write SetPayment_expiration_date;
    property User: IUser read GetUser write SetUser;
  end;

  TUserFactory = class
    class function CreateRecord(const aKey: string): IUser; overload;
    class function CreateRecordset(aName, aTableName: string): IUsers; overload;
  end;

implementation

uses Janua.Orm.Types;
// ------------------------------------------ Impl TUser -------------------------------

{ TUser }

constructor TUser.Create;
begin
  inherited;
  FActive := AddField(TJanuaOrmFactory.CreateBoolField('active', 'Active'));
  FEmail := AddField(TJanuaOrmFactory.CreateStringField('email', 'Email'));
  FDb_user_id := AddField(TJanuaOrmFactory.CreateIntegerField('db_user_id', 'Db_user_id'));
  FPassword := AddField(TJanuaOrmFactory.CreateStringField('password', 'Password'));
  FUsername := AddField(TJanuaOrmFactory.CreateStringField('username', 'Username'));
  FIsactive := AddField(TJanuaOrmFactory.CreateBoolField('isactive', 'Isactive'));
  FVerify_token := AddField(TJanuaOrmFactory.CreateStringField('verify_token', 'Verify_token'));
  FVerified := AddField(TJanuaOrmFactory.CreateBoolField('verified', 'Verified'));
  FDefault_schema_id := AddField(TJanuaOrmFactory.CreateIntegerField('default_schema_id',
    'Default_schema_id'));
  FIspublic := AddField(TJanuaOrmFactory.CreateBoolField('ispublic', 'Ispublic'));
  FInternal_key := AddField(TJanuaOrmFactory.CreateStringField('internal_key', 'Internal_key'));
  FDefault_role_id := AddField(TJanuaOrmFactory.CreateSmallintField('default_role_id', 'Default_role_id'));
  FSearch_name := AddField(TJanuaOrmFactory.CreateStringField('search_name', 'Search_name'));
  FReverse_search := AddField(TJanuaOrmFactory.CreateStringField('reverse_search', 'Reverse_search'));
  // Campo non GestitoInsert_date Type= ftTimeStamp
  FCountry_id := AddField(TJanuaOrmFactory.CreateSmallintField('country_id', 'Country_id'));
  FMain_profile_type_id := AddField(TJanuaOrmFactory.CreateSmallintField('main_profile_type_id',
    'Main_profile_type_id'));
  FMain_profile_id := AddField(TJanuaOrmFactory.CreateStringField('main_profile_id', 'Main_profile_id'));
  // Campo non GestitoImage_id Type= ftLargeint
  FImage_url := AddField(TJanuaOrmFactory.CreateStringField('image_url', 'Image_url'));
  FIso_language_code := AddField(TJanuaOrmFactory.CreateStringField('iso_language_code',
    'Iso_language_code'));
  FIso_culture_code := AddField(TJanuaOrmFactory.CreateStringField('iso_culture_code', 'Iso_culture_code'));
  FUser_first_name := AddField(TJanuaOrmFactory.CreateStringField('user_first_name', 'User_first_name'));
  FUser_family_name := AddField(TJanuaOrmFactory.CreateStringField('user_family_name', 'User_family_name'));
  FEmailsent := AddField(TJanuaOrmFactory.CreateBoolField('emailsent', 'Emailsent'));
  FEmailconfirmed := AddField(TJanuaOrmFactory.CreateBoolField('emailconfirmed', 'Emailconfirmed'));
  // Campo non GestitoEmaildate Type= ftTimeStamp
  FPayment := AddField(TJanuaOrmFactory.CreateBoolField('payment', 'Payment'));
  // Campo non GestitoPayment_expiration_date Type= ftDate
end;

function TUser.GetActive: IJanuaField;
begin
  Result := self.Fields[FActive];
end;

procedure TUser.SetActive(const Value: IJanuaField);
begin
  self.Fields[FActive] := Value;
end;

function TUser.GetEmail: IJanuaField;
begin
  Result := self.Fields[FEmail];
end;

procedure TUser.SetEmail(const Value: IJanuaField);
begin
  self.Fields[FEmail] := Value;
end;

function TUser.GetDb_user_id: IJanuaField;
begin
  Result := self.Fields[FDb_user_id];
end;

procedure TUser.SetDb_user_id(const Value: IJanuaField);
begin
  self.Fields[FDb_user_id] := Value;
end;

function TUser.GetPassword: IJanuaField;
begin
  Result := self.Fields[FPassword];
end;

procedure TUser.SetPassword(const Value: IJanuaField);
begin
  self.Fields[FPassword] := Value;
end;

function TUser.GetUsername: IJanuaField;
begin
  Result := self.Fields[FUsername];
end;

procedure TUser.SetUsername(const Value: IJanuaField);
begin
  self.Fields[FUsername] := Value;
end;

function TUser.GetIsactive: IJanuaField;
begin
  Result := self.Fields[FIsactive];
end;

procedure TUser.SetIsactive(const Value: IJanuaField);
begin
  self.Fields[FIsactive] := Value;
end;

function TUser.GetVerify_token: IJanuaField;
begin
  Result := self.Fields[FVerify_token];
end;

procedure TUser.SetVerify_token(const Value: IJanuaField);
begin
  self.Fields[FVerify_token] := Value;
end;

function TUser.GetVerified: IJanuaField;
begin
  Result := self.Fields[FVerified];
end;

procedure TUser.SetVerified(const Value: IJanuaField);
begin
  self.Fields[FVerified] := Value;
end;

function TUser.GetDefault_schema_id: IJanuaField;
begin
  Result := self.Fields[FDefault_schema_id];
end;

procedure TUser.SetDefault_schema_id(const Value: IJanuaField);
begin
  self.Fields[FDefault_schema_id] := Value;
end;

function TUser.GetIspublic: IJanuaField;
begin
  Result := self.Fields[FIspublic];
end;

procedure TUser.SetIspublic(const Value: IJanuaField);
begin
  self.Fields[FIspublic] := Value;
end;

function TUser.GetInternal_key: IJanuaField;
begin
  Result := self.Fields[FInternal_key];
end;

procedure TUser.SetInternal_key(const Value: IJanuaField);
begin
  self.Fields[FInternal_key] := Value;
end;

function TUser.GetDefault_role_id: IJanuaField;
begin
  Result := self.Fields[FDefault_role_id];
end;

procedure TUser.SetDefault_role_id(const Value: IJanuaField);
begin
  self.Fields[FDefault_role_id] := Value;
end;

function TUser.GetSearch_name: IJanuaField;
begin
  Result := self.Fields[FSearch_name];
end;

procedure TUser.SetSearch_name(const Value: IJanuaField);
begin
  self.Fields[FSearch_name] := Value;
end;

function TUser.GetReverse_search: IJanuaField;
begin
  Result := self.Fields[FReverse_search];
end;

procedure TUser.SetReverse_search(const Value: IJanuaField);
begin
  self.Fields[FReverse_search] := Value;
end;

function TUser.GetInsert_date: IJanuaField;
begin
  Result := self.Fields[FInsert_date];
end;

procedure TUser.SetInsert_date(const Value: IJanuaField);
begin
  self.Fields[FInsert_date] := Value;
end;

function TUser.GetCountry_id: IJanuaField;
begin
  Result := self.Fields[FCountry_id];
end;

procedure TUser.SetCountry_id(const Value: IJanuaField);
begin
  self.Fields[FCountry_id] := Value;
end;

function TUser.GetMain_profile_type_id: IJanuaField;
begin
  Result := self.Fields[FMain_profile_type_id];
end;

procedure TUser.SetMain_profile_type_id(const Value: IJanuaField);
begin
  self.Fields[FMain_profile_type_id] := Value;
end;

function TUser.GetMain_profile_id: IJanuaField;
begin
  Result := self.Fields[FMain_profile_id];
end;

procedure TUser.SetMain_profile_id(const Value: IJanuaField);
begin
  self.Fields[FMain_profile_id] := Value;
end;

function TUser.GetImage_id: IJanuaField;
begin
  Result := self.Fields[FImage_id];
end;

procedure TUser.SetImage_id(const Value: IJanuaField);
begin
  self.Fields[FImage_id] := Value;
end;

function TUser.GetImage_url: IJanuaField;
begin
  Result := self.Fields[FImage_url];
end;

procedure TUser.SetImage_url(const Value: IJanuaField);
begin
  self.Fields[FImage_url] := Value;
end;

function TUser.GetIso_language_code: IJanuaField;
begin
  Result := self.Fields[FIso_language_code];
end;

procedure TUser.SetIso_language_code(const Value: IJanuaField);
begin
  self.Fields[FIso_language_code] := Value;
end;

function TUser.GetIso_culture_code: IJanuaField;
begin
  Result := self.Fields[FIso_culture_code];
end;

procedure TUser.SetIso_culture_code(const Value: IJanuaField);
begin
  self.Fields[FIso_culture_code] := Value;
end;

function TUser.GetUser_first_name: IJanuaField;
begin
  Result := self.Fields[FUser_first_name];
end;

procedure TUser.SetUser_first_name(const Value: IJanuaField);
begin
  self.Fields[FUser_first_name] := Value;
end;

function TUser.GetUser_family_name: IJanuaField;
begin
  Result := self.Fields[FUser_family_name];
end;

procedure TUser.SetUser_family_name(const Value: IJanuaField);
begin
  self.Fields[FUser_family_name] := Value;
end;

function TUser.GetEmailsent: IJanuaField;
begin
  Result := self.Fields[FEmailsent];
end;

procedure TUser.SetEmailsent(const Value: IJanuaField);
begin
  self.Fields[FEmailsent] := Value;
end;

function TUser.GetEmailconfirmed: IJanuaField;
begin
  Result := self.Fields[FEmailconfirmed];
end;

procedure TUser.SetEmailconfirmed(const Value: IJanuaField);
begin
  self.Fields[FEmailconfirmed] := Value;
end;

function TUser.GetEmaildate: IJanuaField;
begin
  Result := self.Fields[FEmaildate];
end;

procedure TUser.SetEmaildate(const Value: IJanuaField);
begin
  self.Fields[FEmaildate] := Value;
end;

function TUser.GetPayment: IJanuaField;
begin
  Result := self.Fields[FPayment];
end;

procedure TUser.SetPayment(const Value: IJanuaField);
begin
  self.Fields[FPayment] := Value;
end;

function TUser.GetPayment_expiration_date: IJanuaField;
begin
  Result := self.Fields[FPayment_expiration_date];
end;

procedure TUser.SetPayment_expiration_date(const Value: IJanuaField);
begin
  self.Fields[FPayment_expiration_date] := Value;
end;

{ TUsers }
constructor TUsers.Create;
begin
  inherited;
  self.FRecord := TUserFactory.CreateRecord('User')
end;

function TUsers.GetActive: IJanuaField;
begin
  Result := self.User.Active;
end;

procedure TUsers.SetActive(const Value: IJanuaField);
begin
  self.User.Active := Value;
end;

function TUsers.GetEmail: IJanuaField;
begin
  Result := self.User.Email;
end;

procedure TUsers.SetEmail(const Value: IJanuaField);
begin
  self.User.Email := Value;
end;

function TUsers.GetDb_user_id: IJanuaField;
begin
  Result := self.User.Db_user_id;
end;

procedure TUsers.SetDb_user_id(const Value: IJanuaField);
begin
  self.User.Db_user_id := Value;
end;

function TUsers.GetPassword: IJanuaField;
begin
  Result := self.User.Password;
end;

procedure TUsers.SetPassword(const Value: IJanuaField);
begin
  self.User.Password := Value;
end;

function TUsers.GetUsername: IJanuaField;
begin
  Result := self.User.Username;
end;

procedure TUsers.SetUsername(const Value: IJanuaField);
begin
  self.User.Username := Value;
end;

function TUsers.GetIsactive: IJanuaField;
begin
  Result := self.User.Isactive;
end;

procedure TUsers.SetIsactive(const Value: IJanuaField);
begin
  self.User.Isactive := Value;
end;

function TUsers.GetVerify_token: IJanuaField;
begin
  Result := self.User.Verify_token;
end;

procedure TUsers.SetVerify_token(const Value: IJanuaField);
begin
  self.User.Verify_token := Value;
end;

function TUsers.GetVerified: IJanuaField;
begin
  Result := self.User.Verified;
end;

procedure TUsers.SetVerified(const Value: IJanuaField);
begin
  self.User.Verified := Value;
end;

function TUsers.GetDefault_schema_id: IJanuaField;
begin
  Result := self.User.Default_schema_id;
end;

procedure TUsers.SetDefault_schema_id(const Value: IJanuaField);
begin
  self.User.Default_schema_id := Value;
end;

function TUsers.GetIspublic: IJanuaField;
begin
  Result := self.User.Ispublic;
end;

procedure TUsers.SetIspublic(const Value: IJanuaField);
begin
  self.User.Ispublic := Value;
end;

function TUsers.GetInternal_key: IJanuaField;
begin
  Result := self.User.Internal_key;
end;

procedure TUsers.SetInternal_key(const Value: IJanuaField);
begin
  self.User.Internal_key := Value;
end;

function TUsers.GetDefault_role_id: IJanuaField;
begin
  Result := self.User.Default_role_id;
end;

procedure TUsers.SetDefault_role_id(const Value: IJanuaField);
begin
  self.User.Default_role_id := Value;
end;

function TUsers.GetSearch_name: IJanuaField;
begin
  Result := self.User.Search_name;
end;

procedure TUsers.SetSearch_name(const Value: IJanuaField);
begin
  self.User.Search_name := Value;
end;

function TUsers.GetReverse_search: IJanuaField;
begin
  Result := self.User.Reverse_search;
end;

procedure TUsers.SetReverse_search(const Value: IJanuaField);
begin
  self.User.Reverse_search := Value;
end;

function TUsers.GetInsert_date: IJanuaField;
begin
  Result := self.User.Insert_date;
end;

procedure TUsers.SetInsert_date(const Value: IJanuaField);
begin
  self.User.Insert_date := Value;
end;

function TUsers.GetCountry_id: IJanuaField;
begin
  Result := self.User.Country_id;
end;

procedure TUsers.SetCountry_id(const Value: IJanuaField);
begin
  self.User.Country_id := Value;
end;

function TUsers.GetMain_profile_type_id: IJanuaField;
begin
  Result := self.User.Main_profile_type_id;
end;

procedure TUsers.SetMain_profile_type_id(const Value: IJanuaField);
begin
  self.User.Main_profile_type_id := Value;
end;

function TUsers.GetMain_profile_id: IJanuaField;
begin
  Result := self.User.Main_profile_id;
end;

procedure TUsers.SetMain_profile_id(const Value: IJanuaField);
begin
  self.User.Main_profile_id := Value;
end;

function TUsers.GetImage_id: IJanuaField;
begin
  Result := self.User.Image_id;
end;

procedure TUsers.SetImage_id(const Value: IJanuaField);
begin
  self.User.Image_id := Value;
end;

function TUsers.GetImage_url: IJanuaField;
begin
  Result := self.User.Image_url;
end;

procedure TUsers.SetImage_url(const Value: IJanuaField);
begin
  self.User.Image_url := Value;
end;

function TUsers.GetIso_language_code: IJanuaField;
begin
  Result := self.User.Iso_language_code;
end;

procedure TUsers.SetIso_language_code(const Value: IJanuaField);
begin
  self.User.Iso_language_code := Value;
end;

function TUsers.GetIso_culture_code: IJanuaField;
begin
  Result := self.User.Iso_culture_code;
end;

procedure TUsers.SetIso_culture_code(const Value: IJanuaField);
begin
  self.User.Iso_culture_code := Value;
end;

function TUsers.GetUser_first_name: IJanuaField;
begin
  Result := self.User.User_first_name;
end;

procedure TUsers.SetUser_first_name(const Value: IJanuaField);
begin
  self.User.User_first_name := Value;
end;

function TUsers.GetUser_family_name: IJanuaField;
begin
  Result := self.User.User_family_name;
end;

procedure TUsers.SetUser_family_name(const Value: IJanuaField);
begin
  self.User.User_family_name := Value;
end;

function TUsers.GetEmailsent: IJanuaField;
begin
  Result := self.User.Emailsent;
end;

procedure TUsers.SetEmailsent(const Value: IJanuaField);
begin
  self.User.Emailsent := Value;
end;

function TUsers.GetEmailconfirmed: IJanuaField;
begin
  Result := self.User.Emailconfirmed;
end;

procedure TUsers.SetEmailconfirmed(const Value: IJanuaField);
begin
  self.User.Emailconfirmed := Value;
end;

function TUsers.GetEmaildate: IJanuaField;
begin
  Result := self.User.Emaildate;
end;

procedure TUsers.SetEmaildate(const Value: IJanuaField);
begin
  self.User.Emaildate := Value;
end;

function TUsers.GetPayment: IJanuaField;
begin
  Result := self.User.Payment;
end;

procedure TUsers.SetPayment(const Value: IJanuaField);
begin
  self.User.Payment := Value;
end;

function TUsers.GetPayment_expiration_date: IJanuaField;
begin
  Result := self.User.Payment_expiration_date;
end;

procedure TUsers.SetPayment_expiration_date(const Value: IJanuaField);
begin
  self.User.Payment_expiration_date := Value;
end;

function TUsers.GetUser: IUser;
begin
  Result := self.FRecord as IUser;
end;

procedure TUsers.SetUser(const Value: IUser);
begin
  self.FRecord := Value;
end;

{ TUserFactory }

class function TUserFactory.CreateRecord(const aKey: string): IUser;
begin
  Result := TUser.Create;
end;

class function TUserFactory.CreateRecordset(aName, aTableName: string): IUsers;
begin
  Result := TUsers.Create(aName, nil, nil);
end;

end.
