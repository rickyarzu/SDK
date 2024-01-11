unit Janua.Test.System;

interface

  uses System.SysUtils, System.Classes, Janua.Server.System, Janua.Core.System,
       Janua.Core.JPublic, Janua.Server.Jpublic, Janua.Core.Classes;

  type
   TJanuaTestServerSystem = class(TComponent)
  private
    FUserProfile: TJanuaRecordUserProfile;
    FTown: string;
    FKey: string;
    FBirthDate: TDate;
    FCountryid: integer;
    FDistrict: string;
    Frole_name: string;
    FMainRoleLevel: TJanuaRoleLevel;
    FEmail: string;
    FLastName: string;
    FRegionid: integer;
    FLastMessage: string;
    FTownid: integer;
    Fid: int64;
    FDistrictid: integer;
    Frole_id: smallint;
    FPublicEmail: string;
    FCountry: string;
    FNumber: string;
    FLog: TStrings;
    FExecTest: boolean;
    FPassword: string;
    FAddress: string;
    FRegion: string;
    FFirstName: string;
    FUsername: string;

    procedure setUserProfile;
    procedure Setrole_id(const Value: smallint);
    procedure Setrole_name(const Value: string);
    procedure SetAddress(const Value: string);
    procedure SetBirthDate(const Value: TDate);

    procedure SetDistrict(const Value: string);
    procedure SetDistrictid(const Value: integer);
    procedure SetEmail(const Value: string);
    procedure SetExecTest(const Value: boolean);
    procedure SetFirstName(const Value: string);
    procedure Setid(const Value: int64);
    procedure SetKey(const Value: string);
    procedure SetLastMessage(const Value: string);
    procedure SetLastName(const Value: string);
    procedure SetLog(const Value: TStrings);
    procedure SetMainRoleLevel(const Value: TJanuaRoleLevel);
    procedure SetNumber(const Value: string);
    procedure SetPassword(const Value: string);
    procedure SetPublicEmail(const Value: string);
    procedure SetRegion(const Value: string);
    procedure SetRegionid(const Value: integer);

    procedure SetCountry(const Value: string);
    procedure SetCountryid(const Value: integer);

    procedure SetTown(const Value: string);
    procedure SetTownid(const Value: integer);
    procedure SetUsername(const Value: string);

  public

     constructor Create(AOwner: TComponent) ; override;

  published

   // Profile Properties ....................
   property   FirstName: string read FFirstName write SetFirstName;
   property   LastName: string read FLastName write SetLastName;
   property   BirthDate: TDate read FBirthDate write SetBirthDate;
   property   PublicEmail: string read FPublicEmail write SetPublicEmail;
   property   MainRoleLevel: TJanuaRoleLevel read FMainRoleLevel write SetMainRoleLevel;
   // User Properties
   property   Username: string read FUsername write SetUsername;
   property   Email: string read FEmail write SetEmail;
   property   Password: string read FPassword write SetPassword;
   property   Key: string read FKey write SetKey;
   property   id: int64 read Fid write Setid;
   property   role_id: smallint read Frole_id write Setrole_id;
   property   role_name: string read Frole_name write Setrole_name;

   // Address Properties
   property   Address: string read FAddress write SetAddress;
   property   Number: string read FNumber write SetNumber;
   property   Country: string read FCountry write SetCountry;
   property   Region: string read FRegion write SetRegion;
   property   Town: string read FTown write SetTown;
   property   District: string read FDistrict write SetDistrict;


   property   Countryid: integer read FCountryid write SetCountryid;
   property   Regionid: integer read FRegionid write SetRegionid;
   property   Townid: integer read FTownid write SetTownid;
   property   Districtid: integer read FDistrictid write SetDistrictid;
   // system properties

   property ExecTest: boolean read FExecTest write SetExecTest;
   property Log: TStrings read FLog write SetLog;
   property LastMessage: string read FLastMessage write SetLastMessage;

  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Janua Server Components', [TJanuaTestServerSystem]);
end;



{ TJanuaTestServerSystem }

constructor TJanuaTestServerSystem.Create(AOwner: TComponent);
begin
  inherited;
end;

procedure TJanuaTestServerSystem.SetAddress(const Value: string);
begin
  FAddress := Value;
end;

procedure TJanuaTestServerSystem.SetBirthDate(const Value: TDate);
begin
  FBirthDate := Value;
end;

procedure TJanuaTestServerSystem.SetCountry(const Value: string);
begin
  FCountry := Value;
end;

procedure TJanuaTestServerSystem.SetCountryid(const Value: integer);
begin
  FCountryid := Value;
end;

procedure TJanuaTestServerSystem.SetDistrict(const Value: string);
begin
  FDistrict := Value;
end;

procedure TJanuaTestServerSystem.SetDistrictid(const Value: integer);
begin
  FDistrictid := Value;
end;

procedure TJanuaTestServerSystem.SetEmail(const Value: string);
begin
  FEmail := Value;
end;

procedure TJanuaTestServerSystem.SetExecTest(const Value: boolean);
begin
  FExecTest := Value;
end;

procedure TJanuaTestServerSystem.SetFirstName(const Value: string);
begin
  FFirstName := Value;
end;

procedure TJanuaTestServerSystem.Setid(const Value: int64);
begin
  Fid := Value;
end;

procedure TJanuaTestServerSystem.SetKey(const Value: string);
begin
  FKey := Value;
end;

procedure TJanuaTestServerSystem.SetLastMessage(const Value: string);
begin
  FLastMessage := Value;
end;

procedure TJanuaTestServerSystem.SetLastName(const Value: string);
begin
  FLastName := Value;
end;

procedure TJanuaTestServerSystem.SetLog(const Value: TStrings);
begin
  FLog := Value;
end;

procedure TJanuaTestServerSystem.SetMainRoleLevel(const Value: TJanuaRoleLevel);
begin
  FMainRoleLevel := Value;
end;

procedure TJanuaTestServerSystem.SetNumber(const Value: string);
begin
  FNumber := Value;
end;

procedure TJanuaTestServerSystem.SetPassword(const Value: string);
begin
  FPassword := Value;
end;

procedure TJanuaTestServerSystem.SetPublicEmail(const Value: string);
begin
  FPublicEmail := Value;
end;

procedure TJanuaTestServerSystem.SetRegion(const Value: string);
begin
  FRegion := Value;
end;

procedure TJanuaTestServerSystem.SetRegionid(const Value: integer);
begin
  FRegionid := Value;
end;

procedure TJanuaTestServerSystem.Setrole_id(const Value: smallint);
begin
  Frole_id := Value;
end;

procedure TJanuaTestServerSystem.Setrole_name(const Value: string);
begin
  Frole_name := Value;
end;

procedure TJanuaTestServerSystem.SetTown(const Value: string);
begin
  FTown := Value;
end;

procedure TJanuaTestServerSystem.SetTownid(const Value: integer);
begin
  FTownid := Value;
end;

procedure TJanuaTestServerSystem.SetUsername(const Value: string);
begin
  FUsername := Value;
end;

procedure TJanuaTestServerSystem.setUserProfile;
begin
   FUserProfile.Address.Location.Town.name :=  FTown;
   FUserProfile.User.Key :=  FKey;
   FUserProfile.BirthDate :=  FBirthDate;
   FUserProfile.Address.Location.Country.ID :=  FCountryid;
   FUserProfile.Address.Location.District.name :=  FDistrict;
   FUserProfile.User.role_name := Frole_name;
   FUserProfile.User.Roles[0].Level :=  FMainRoleLevel;
   FUserProfile.User.Email :=  FEmail;
   FUserProfile.LastName :=  FLastName;
   FUserProfile.Address.Location.Region.ID :=  FRegionid;
   FUserProfile.Address.Location.Town.ID := FTownid;
   FUserProfile.User.id := Fid;
   FUserProfile.Address.Location.District.ID :=  FDistrictid;
   FUserProfile.User.Roles[0].ID := Frole_id;
   FUserProfile.PublicEmail := FPublicEmail;
   FUserProfile.Address.Location.Country.Name := FCountry;
   FUserProfile.Address.Number := FNumber;
   FUserProfile.User.Password := FPassword;
   FUserProfile.Address.Address := FAddress;
   FUserProfile.Address.Location.Region.Name := FRegion;
   FUserProfile.FirstName := FFirstName;
   FUserProfile.User.Username := FUsername;
end;

end.
