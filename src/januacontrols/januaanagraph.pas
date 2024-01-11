
unit januaanagraph;

interface

uses
  SysUtils, Classes, JanuaCore, JanuaVat;

type

  TJanuaAddress = class (TComponent)  {($M+)}
    private
    FPostalCode: String;
    FIsoCountry: TJanuaIsoCountry;
    FNumber: String;
    FCity: String;
    FAddress: String;
    procedure SetAddress(const Value: String);
    procedure SetCity(const Value: String);
    procedure SetIsoCountry(const Value: TJanuaISOCountry);
    procedure SetNumber(const Value: String);
    procedure SetPostalCode(const Value: String);
    { Private declarations }
    protected
    { Protected declarations }
    public
    { Public declarations }
    published
      property Address: String read FAddress write SetAddress;
      property City: String read FCity write SetCity;
      property Number: String read FNumber write SetNumber;
      property PostalCode: String read FPostalCode write SetPostalCode;
      property IsoCountry: TJanuaISOCountry read FIsoCountry write SetIsoCountry;
  end;

  TJanuaAnagGroups = class (TComponent)
  end;

type
  TJanuaBankAccount = class(TComponent)  {($M+)}
  strict private

  private
    FAccount_IBAN: Integer;
    FBank_Code: String;
    FAccountNumber: String;
    FBank_office_code: Integer;
    FBank_Country: TJanuaIsoCountry;
    procedure SetAccount_IBAN(const Value: Integer);
    procedure SetAccountNumber(const Value: String);
    procedure SetBank_Code(const Value: String);
    procedure SetBank_Country(const Value: TJanuaIsoCountry);
    procedure SetBank_office_code(const Value: Integer);
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    procedure Assign(aJanuaAnagraph:TPersistent); override;
  published
    property AccountNumber :  String  read FAccountNumber write SetAccountNumber;
    property Bank_Code :  String  read FBank_Code write SetBank_Code;
    property Bank_office_code : Integer read FBank_office_code write SetBank_office_code;
    property Bank_Country :  TJanuaIsoCountry read FBank_Country write SetBank_Country;
    property Account_IBAN : Integer read FAccount_IBAN write SetAccount_IBAN;
  { Published declarations }
  end;





  TJanuaAnagraph = class(TComponent) {($M+)}
  strict private

  private
    FBirthdate: TDateTime;
    FNotes2: String;
    FNotes3: String;
    FDocuments: String;
    FSecondName: String;
    FFiscalCode: TJanuaFiscalCode;
    FCellular: String;
    FEmail: String;
    FLastName: String;
    FFax: String;
    FDistance: Double;
    FVatCode: TJanuaVatCode;
    FNotes: String;
    FMainAddress: TJanuaAddress;
    FPhone: String;
    FTitle: String;
    FPrivacy: String;
    FWeb: String;
    FOffice: String;
    FSex: String;
    FBanckAccount: TJanuaBankAccount;
    FFirstName: String;
    FContact: String;
    FisoAnCountry: TJanuaISOCountry;
    function GetBanckAccount: TJanuaBankAccount;
    function GetBirthdate: TDateTime;
    function GetCellular: String;
    function GetContact: String;
    function GetDistance: TDateTime;
    function GetDocuments: String;
    function GetEmail: String;
    function GetFax: String;
    function GetFirstName: String;
    function GetLastName: String;
    function GetNotes: String;
    function GetNotes2: String;
    function GetNotes3: String;
    function GetOffice: String;
    function GetPhone: String;
    function GetPrivacy: String;
    function GetSecondName: String;
    function GetSex: String;
    function GetTitle: String;
    function GetWeb: String;
    procedure SetBanckAccount(const Value: TJanuaBankAccount);
    procedure SetBirthdate(val: TDateTime);
    procedure SetCellular(val: String);
    procedure SetContact(const Value: String);
    procedure SetDistance(const Value: Double);
    procedure SetDocuments(val: String);
    procedure SetEmail(val: String);
    procedure SetFax(val: String);
    procedure SetFirstName(val: String);
    procedure SetFiscalCode(const Value: TJanuaFiscalCode);
    procedure SetisoAnCountry(const Value: TJanuaISOCountry);
    procedure SetLastName(val: String);
    procedure SetMainAddress(const Value: TJanuaAddress);
    procedure SetNotes(val: String);
    procedure SetNotes2(val: String);
    procedure SetNotes3(val: String);
    procedure SetOffice(val: String);
    procedure SetPhone(val: String);
    procedure SetPrivacy(val: String);
    procedure SetProperty1(val: TJanuaBankAccount);
    procedure SetSecondName(val: String);
    procedure SetSex(val: String);
    procedure SetTitle(val: String);
    procedure SetVatCode(const Value: TJanuaVatCode);
    procedure SetWeb(val: String);

  { Private declarations }
  protected
  { Protected declarations }
  public
  { Public declarations }
    constructor Create(AOwner: TComponent) ; override;
    procedure Assign(aJanuaAnagraph: TPersistent); override;
  published
    property VatCode:TJanuaVatCode  read FVatCode write SetVatCode;
    property isoAnCountry:TJanuaISOCountry  read FisoAnCountry write SetisoAnCountry;
    property FiscalCode:TJanuaFiscalCode  read FFiscalCode write SetFiscalCode;
    property MainAddress:TJanuaAddress  read FMainAddress write SetMainAddress;
    property BanckAccount :  TJanuaBankAccount  read FBanckAccount write SetBanckAccount;
    property Title : String  read FTitle write SetTitle;
    property FirstName : String  read FFirstName write SetFirstName;
    property LastName : String  read FLastName write SetLastName;
    property SecondName : String  read FSecondName write SetSecondName;
    property Notes : String  read FNotes write SetNotes;
    property Phone : String  read FPhone write SetPhone;
    property Fax : String  read FFax write SetFax;
    property Cellular : String  read FCellular write SetCellular;
    property Email : String  read FEmail write SetEmail;
    property Web : String  read FWeb write SetWeb;
    property Contact : String  read FContact write SetContact;
    property Distance : Double  read FDistance write SetDistance;
    property Sex : String  read FSex write SetSex;
    property Notes2 : String  read FNotes2 write SetNotes2;
    property Notes3 : String  read FNotes3 write SetNotes3;
    property Privacy : String  read FPrivacy write SetPrivacy;
    property Documents : String  read FDocuments write SetDocuments;
    property Birthdate : TDateTime  read FBirthdate write SetBirthdate;
    property Office : String  read FOffice write SetOffice;
  end;


  TJanuaAnagraphHealth = class(TJanuaAnagraph)
  end;

  TJanuaAnagraphCarSharing = class(TJanuaAnagraph)
  end;

  TJanuaAnagraphLawyer =  class(TJanuaAnagraph)

  end;

type
  TJanuaAnIdentity = class(TComponent)
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
  { Public declarations }
   end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('JanuaCore', [TJanuaAnagraph]);
  RegisterComponents('JanuaCore', [TJanuaAnIdentity]);
  RegisterComponents('JanuaCore', [TJanuaAnIdentity]);
  RegisterComponents('JanuaCore', [TJanuaAnagraphLawyer]);
  RegisterComponents('JanuaCore', [TJanuaAnagraphCarSharing]);
  RegisterComponents('JanuaCore', [TJanuaAnagraphHealth]);
  RegisterComponents('JanuaCore', [TJanuaBankAccount]);
  RegisterComponents('JanuaCore', [TJanuaAnagGroups]);
end;


{ TJanuaAnagraph }

procedure TJanuaAnagraph.SetFiscalCode(const Value: TJanuaFiscalCode);
begin
  FFiscalCode := Value;
end;

procedure TJanuaAnagraph.SetisoAnCountry(const Value: TJanuaISOCountry);
begin
  FisoAnCountry := Value;
end;

procedure TJanuaAnagraph.SetMainAddress(const Value: TJanuaAddress);
begin
  FMainAddress := Value;
end;

procedure TJanuaAnagraph.SetVatCode(const Value: TJanuaVatCode);
begin
  FVatCode := Value;
end;

procedure TJanuaAnagraph.Assign(aJanuaAnagraph: TPersistent);
begin
    if aJanuaAnagraph is TJanuaAnagraph  then
  begin
     self.Birthdate  := TJanuaAnagraph(aJanuaAnagraph).Birthdate;
     self.Cellular  := TJanuaAnagraph(aJanuaAnagraph).Cellular;
     self.Contact  := TJanuaAnagraph(aJanuaAnagraph).Contact;
     self.Distance  := TJanuaAnagraph(aJanuaAnagraph).Distance;
     self.Documents  := TJanuaAnagraph(aJanuaAnagraph).Documents;
     self.Email := TJanuaAnagraph(aJanuaAnagraph).Email;   
     self.FiscalCode   := TJanuaAnagraph(aJanuaAnagraph).FiscalCode;
     self.Fax   := TJanuaAnagraph(aJanuaAnagraph).Fax;
     self.FirstName   := TJanuaAnagraph(aJanuaAnagraph).FirstName;
     self.isoAnCountry.Assign(TJanuaAnagraph(aJanuaAnagraph).isoAnCountry);
     self.BanckAccount.Assign(TJanuaAnagraph(aJanuaAnagraph).BanckAccount);
     self.LastName  := TJanuaAnagraph(aJanuaAnagraph).LastName;
  end
  else
    inherited Assign(aJanuaAnagraph);

end;

constructor TJanuaAnagraph.Create(AOwner: TComponent);
begin
  FVatCode := TJanuaVatCode.Create(self);
  inherited Create(AOwner);
end;

function TJanuaAnagraph.GetBanckAccount:  TJanuaBankAccount;
begin
  Result := FBanckAccount
end;

procedure TJanuaAnagraph.SetProperty1(val :  TJanuaBankAccount);
begin
end;


function TJanuaAnagraph.GetTitle: String;
begin
  Result := FTitle
end;

procedure TJanuaAnagraph.SetTitle(val : String);
begin
end;

function TJanuaAnagraph.GetFirstName: String;
begin
  Result := FFirstName
end;

procedure TJanuaAnagraph.SetFirstName(val : String);
begin
end;

function TJanuaAnagraph.GetLastName: String;
begin
  Result := FLastName
end;

procedure TJanuaAnagraph.SetLastName(val : String);
begin
end;

function TJanuaAnagraph.GetSecondName: String;
begin
  Result := FSecondName
end;

procedure TJanuaAnagraph.SetSecondName(val : String);
begin
end;

function TJanuaAnagraph.GetNotes: String;
begin
  Result := FNotes
end;

procedure TJanuaAnagraph.SetNotes(val : String);
begin
end;

function TJanuaAnagraph.GetPhone: String;
begin
  Result := FPhone
end;

procedure TJanuaAnagraph.SetPhone(val : String);
begin
end;

function TJanuaAnagraph.GetFax: String;
begin
  Result := FFax
end;

procedure TJanuaAnagraph.SetFax(val : String);
begin
end;

function TJanuaAnagraph.GetCellular: String;
begin
  Result := FCellular
end;

procedure TJanuaAnagraph.SetCellular(val : String);
begin
end;

procedure TJanuaAnagraph.SetContact(const Value: String);
begin
  FContact := Value;
end;

function TJanuaAnagraph.GetEmail: String;
begin
  Result := FEmail
end;

procedure TJanuaAnagraph.SetEmail(val : String);
begin
end;

function TJanuaAnagraph.GetWeb: String;
begin
  Result := FWeb
end;

procedure TJanuaAnagraph.SetWeb(val : String);
begin
end;

function TJanuaAnagraph.GetContact: String;
begin
  Result := FContact
end;



function TJanuaAnagraph.GetDistance: TDateTime;
begin
  Result := FDistance
end;

procedure TJanuaAnagraph.SetSex(val : String);
begin
end;

function TJanuaAnagraph.GetSex: String;
begin
  Result := FSex
end;

procedure TJanuaAnagraph.SetNotes2(val : String);
begin
end;

function TJanuaAnagraph.GetNotes2: String;
begin
  Result := FNotes2
end;

procedure TJanuaAnagraph.SetNotes3(val : String);
begin
end;

function TJanuaAnagraph.GetNotes3: String;
begin
  Result := FNotes3
end;

procedure TJanuaAnagraph.SetPrivacy(val : String);
begin
end;

function TJanuaAnagraph.GetPrivacy: String;
begin
  Result := FPrivacy
end;

procedure TJanuaAnagraph.SetDistance(const Value: Double);
begin
  FDistance := Value;
end;

procedure TJanuaAnagraph.SetDocuments(val : String);
begin
end;

function TJanuaAnagraph.GetDocuments: String;
begin
  Result := FDocuments
end;

procedure TJanuaAnagraph.SetBanckAccount(const Value: TJanuaBankAccount);
begin
  FBanckAccount := Value;
end;

procedure TJanuaAnagraph.SetBirthdate(val : TDateTime);
begin
end;

function TJanuaAnagraph.GetBirthdate: TDateTime;
begin
  Result := FBirthdate
end;

procedure TJanuaAnagraph.SetOffice(val : String);
begin
end;

function TJanuaAnagraph.GetOffice: String;
begin
  Result := FOffice
end;


{ TJanuaAddress }

procedure TJanuaAddress.SetAddress(const Value: String);
begin
  FAddress := Value;
end;

procedure TJanuaAddress.SetCity(const Value: String);
begin
  FCity := Value;
end;

procedure TJanuaAddress.SetIsoCountry(const Value: TJanuaISOCountry);
begin
  FIsoCountry := Value;
end;

procedure TJanuaAddress.SetNumber(const Value: String);
begin
  FNumber := Value;
end;

procedure TJanuaAddress.SetPostalCode(const Value: String);
begin
  FPostalCode := Value;
end;

{ TJanuaBankAccount }

procedure TJanuaBankAccount.Assign(aJanuaAnagraph: TPersistent);
begin
  if aJanuaAnagraph is TJanuaBankAccount  then
  begin
     self.AccountNumber := TJanuaBankAccount(aJanuaAnagraph).AccountNumber;
     self.AccountNumber := TJanuaBankAccount(aJanuaAnagraph).AccountNumber;
     self.AccountNumber := TJanuaBankAccount(aJanuaAnagraph).AccountNumber;
     self.AccountNumber := TJanuaBankAccount(aJanuaAnagraph).AccountNumber;
     self.AccountNumber := TJanuaBankAccount(aJanuaAnagraph).AccountNumber;
     self.AccountNumber := TJanuaBankAccount(aJanuaAnagraph).AccountNumber;
  end
  else
    inherited Assign(aJanuaAnagraph);

end;

procedure TJanuaBankAccount.SetAccountNumber(const Value: String);
begin
  if Value = FAccountNumber then Exit;
  FAccountNumber := Value;
end;

procedure TJanuaBankAccount.SetAccount_IBAN(const Value: Integer);
begin
  FAccount_IBAN := Value;
end;

procedure TJanuaBankAccount.SetBank_Code(const Value: String);
begin
  FBank_Code := Value;
end;

procedure TJanuaBankAccount.SetBank_Country(const Value: TJanuaIsoCountry);
begin
  FBank_Country := Value;
end;

procedure TJanuaBankAccount.SetBank_office_code(const Value: Integer);
begin
  FBank_office_code := Value;
end;

end.

