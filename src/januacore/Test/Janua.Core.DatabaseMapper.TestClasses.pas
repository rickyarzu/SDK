unit Janua.Core.DatabaseMapper.TestClasses;

interface

uses System.Generics.Collections, REST.Json.Types,
  Janua.Core.DatabaseMapper, Pkg.Json.DTO, Janua.Core.Json.DTO;

type

  // Example class with custom mapping and JGUID support
  TCustomer = class
  private
    [JSONName('customer_id')]
    FId: Integer;
    [JSONName('jguid')]
    FJGuid: TGUID;
    [JSONName('customer_name')]
    FName: string;
    [JSONName('email_address')]
    FEmail: string;
    [SuppressZero, JSONName('birth_date')]
    FBirthDate: TDateTime;
    [JSONName('is_active')]
    FIsActive: Boolean;
    [JSONName('balance')]
    FBalance: Currency;
  public
    constructor Create;
    function GetChangeTracker: TChangeTracker;

    [KeyField('customer_id')]
    [DBField('customer_id')]
    property Id: Integer read FId write FId;

    [DBField('jguid')]
    property JGuid: TGUID read FJGuid write FJGuid;

    [DBField('customer_name')]
    property Name: string read FName write FName;

    [DBField('email_address')]
    property Email: string read FEmail write FEmail;

    [DBField('birth_date')]
    property BirthDate: TDateTime read FBirthDate write FBirthDate;

    [DBField('is_active')]
    property IsActive: Boolean read FIsActive write FIsActive;

    // Property without attribute - will use property name
    property Balance: Currency read FBalance write FBalance;
  end;

  TCustomers = class
  private
    [JSONName('balance')]
    FBalance: Double;
    [SuppressZero, JSONName('birth_date')]
    FBirth_Date: TDateTime;
    [JSONName('customer_id')]
    FCustomer_Id: Integer;
    [JSONName('customer_name')]
    FCustomer_Name: string;
    [JSONName('email_address')]
    FEmail_Address: string;
    [JSONName('is_active')]
    FIs_Active: Boolean;
    [JSONName('jguid')]
    FJGuid: string;
  published
    property Balance: Double read FBalance write FBalance;
    property Birth_Date: TDateTime read FBirth_Date write FBirth_Date;
    [KeyField('customer_id')]
    [DBField('customer_id')]
    property Customer_Id: Integer read FCustomer_Id write FCustomer_Id;
    property Customer_Name: string read FCustomer_Name write FCustomer_Name;
    property Email_Address: string read FEmail_Address write FEmail_Address;
    property Is_Active: Boolean read FIs_Active write FIs_Active;
    property JGuid: string read FJGuid write FJGuid;
  end;

  TJanuaCustomers = class(TJanuaJsonDTO)
  private
    [JSONName('Customers'), JSONMarshalled(False)]
    FCustomerArray: TArray<TCustomer>;
    [GenericListReflect]
    FCustomers: TObjectList<TCustomer>;
    function GetCustomers: TObjectList<TCustomer>;
  protected
    function GetAsJson: string; override;
  public
    procedure AddCustomer(aCustomer: TCustomer);
    property Customers: TObjectList<TCustomer> read GetCustomers;
  public
    destructor Destroy; override;
  end;

  TRoot = class(TJanuaJsonDTO)
  private
    [JSONName('customers'), JSONMarshalled(False)]
    FCustomersArray: TArray<TCustomers>;
    [GenericListReflect]
    FCustomers: TObjectList<TCustomers>;
    function GetCustomers: TObjectList<TCustomers>;
  protected
    function GetAsJson: string; override;
  published
    property Customers: TObjectList<TCustomers> read GetCustomers;
  public
    procedure AddCustomer(aCustomer: TJanuaCustomers);
    destructor Destroy; override;
  end;

implementation

uses Janua.Core.Json;

{ TRoot }

procedure TRoot.AddCustomer(aCustomer: TJanuaCustomers);
begin

end;

destructor TRoot.Destroy;
begin
  GetCustomers.Free;
  inherited;
end;

function TRoot.GetCustomers: TObjectList<TCustomers>;
begin
  Result := ObjectList<TCustomers>(FCustomers, FCustomersArray);
end;

function TRoot.GetAsJson: string;
begin
  RefreshArray<TCustomers>(FCustomers, FCustomersArray);
  Result := inherited;
end;

{ TCustomers }

procedure TJanuaCustomers.AddCustomer(aCustomer: TCustomer);
begin
  var
  lIndex := Length(FCustomerArray);
  SetLength(FCustomerArray, lIndex + 1);
  FCustomerArray[lIndex] := aCustomer;
  // FCustomers.Add(aCustomer);
end;

destructor TJanuaCustomers.Destroy;
begin
  GetCustomers.Free;
  inherited;
end;

function TJanuaCustomers.GetAsJson: string;
begin
  RefreshArray<TCustomer>(FCustomers, FCustomerArray);
  Result := inherited;
end;

function TJanuaCustomers.GetCustomers: TObjectList<TCustomer>;
begin
  Result := ObjectList<TCustomer>(FCustomers, FCustomerArray);
end;

{ TCustomer }

constructor TCustomer.Create;
begin
  inherited Create;
  FId := 0;
  FJGuid := TGUID.Empty;
  FName := '';
  FEmail := '';
  FBirthDate := 0;
  FIsActive := False;
  FBalance := 0;
end;



function TCustomer.GetChangeTracker: TChangeTracker;
begin

end;

end.
