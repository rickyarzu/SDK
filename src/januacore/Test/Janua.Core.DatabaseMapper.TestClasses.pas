unit Janua.Core.DatabaseMapper.TestClasses;

interface

uses System.Classes, System.Generics.Collections, Data.DB,
  // Json
  Pkg.Json.DTO, REST.Json.Types,
  // Janua
  Janua.Core.Commons, Janua.Core.DatabaseMapper, Janua.Core.Iterator, Janua.Core.Json.DTO;

{$M+}

type
  // Example class with custom mapping and JGUID support
  TCustomer = class(TJanuaBindableClass)
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

  TCustomerManager = class(TJanuaJsonDTO)
  private
    [JSONName('customers') { , JSONMarshalled(False) } ]
    FCustomerArray: TArray<TCustomer>;
    [GenericListReflect]
    FCustomers: TObjectList<TCustomer>;
    [JSONMarshalled(False)]
    FCustomerList: TStringList;
    [JSONMarshalled(False)]
    FCustomerIndex: Integer;
    [JSONMarshalled(False)]
    FCurrentCustomer: TCustomer;
    function GetCustomers: TObjectList<TCustomer>;
    procedure SetCustomerList(const Value: TStrings);
    function GetCustomerList: TStrings;
    procedure SetCustomerIndex(const Value: Integer);
    procedure SetCurrentCustomer(const Value: TCustomer);
    function GetCustomerText: string;
    procedure RebuildList;
  protected
    function GetAsJson: string; override;
    procedure SetAsJson(aJson: string); override;
  public
    Constructor Create; override;
    procedure AddCustomer(aCustomer: TCustomer; aUpdateCustomer: Boolean = True);
    procedure AddCustomersFromDataset(const aDataset: TDataset);
    destructor Destroy; override;
    property CustomerList: TStrings read GetCustomerList write SetCustomerList;
    property CustomerIndex: Integer read FCustomerIndex write SetCustomerIndex;
    property CurrentCustomer: TCustomer read FCurrentCustomer write SetCurrentCustomer;
    property CustomerText: string read GetCustomerText;
  published
    property Customers: TObjectList<TCustomer> read GetCustomers;
  end;

  TCustomerManagerIterator = class(TJanuaJsonDTO)
  private
    [JSONName('customers') { , JSONMarshalled(False) } ]
    FCustomerArray: TArray<TCustomer>;
    [GenericListReflect]
    FCustomers: TObjectList<TCustomer>;
    [JSONMarshalled(False)]
    FCustIterator: TJanuaBindableIterator<TCustomer>;
    function GetCustomers: TObjectList<TCustomer>;
  protected
    procedure RebuildList; Virtual;
    function GetAsJson: string; override;
    procedure SetAsJson(aJson: string); override;
  public
    Constructor Create; override;
  published
    property Customers: TObjectList<TCustomer> read GetCustomers;
  end;

implementation

uses Janua.Core.Json;

{ TCustomers }

procedure TCustomerManager.AddCustomer(aCustomer: TCustomer; aUpdateCustomer: Boolean = True);
begin
  var
  lIndex := Length(FCustomerArray);
  SetLength(FCustomerArray, lIndex + 1);
  FCustomerArray[lIndex] := aCustomer;
  if aUpdateCustomer then
  begin
    FCurrentCustomer.Assign(aCustomer);
    FCustomerIndex := FCustomerList.AddObject(aCustomer.Name, aCustomer);
  end;
end;

procedure TCustomerManager.AddCustomersFromDataset(const aDataset: TDataset);
begin
  if Assigned(aDataset) and (aDataset.RecordCount > 0) then
  begin
    aDataset.First;
    While not aDataset.Eof do
    begin
      AddCustomer(TDatabaseMapper.CreateObjectFromQuery<TCustomer>(aDataset), False);
      aDataset.Next;
    end;
  end;

  RebuildList;
end;

constructor TCustomerManager.Create;
begin
  inherited;
  FCustomerList := TStringList.Create;

  FCustomerList.Sorted := True;
  FCustomerList.Duplicates := dupError;

  // Usa il metodo factory per creare l'istanza
  FCurrentCustomer := TCustomer.Create;
  FCustomerIndex := -1;
end;

destructor TCustomerManager.Destroy;
begin
  FCustomerList.Free;
  GetCustomers.Free;
  inherited;
end;

function TCustomerManager.GetAsJson: string;
begin
  RefreshArray<TCustomer>(FCustomers, FCustomerArray);
  Result := inherited;
end;

function TCustomerManager.GetCustomerList: TStrings;
begin
  Result := FCustomerList;
end;

function TCustomerManager.GetCustomers: TObjectList<TCustomer>;
begin
  Result := ObjectList<TCustomer>(FCustomers, FCustomerArray);
end;

function TCustomerManager.GetCustomerText: string;
begin
  Result := FCustomerList.Text;
end;

procedure TCustomerManager.RebuildList;
begin
  FCustomerList.Clear;
  for var I := 0 to Length(FCustomerArray) - 1 do
    FCustomerList.AddObject(FCustomerArray[I].Name, FCustomerArray[I]);
  FCustomerIndex := 0;
  FCurrentCustomer.Assign(TCustomer(FCustomerList.Objects[0]));

  var
  Nome := TCustomer(FCustomerList.Objects[FCustomerIndex]).Name;
  var
  Id := TCustomer(FCustomerList.Objects[FCustomerIndex]).Id;

  Notify('CustomerText');
  Notify('CustomerIndex');

  Nome := TCustomer(FCustomerList.Objects[FCustomerIndex]).Name;
  Id := TCustomer(FCustomerList.Objects[FCustomerIndex]).Id;
end;

procedure TCustomerManager.SetAsJson(aJson: string);
begin
  inherited;
  RebuildList;
end;

procedure TCustomerManager.SetCurrentCustomer(const Value: TCustomer);
begin
  FCurrentCustomer := Value;
end;

procedure TCustomerManager.SetCustomerIndex(const Value: Integer);
begin
  if (Value >= 0) and (FCustomerIndex <> Value) then
  begin
    TCustomer(FCustomerList.Objects[FCustomerIndex]).Assign(FCurrentCustomer);

    FCustomerIndex := Value;

    var
    Nome := TCustomer(FCustomerList.Objects[FCustomerIndex]).Name;
    var
    Id := TCustomer(FCustomerList.Objects[FCustomerIndex]).Id;

    FCurrentCustomer.Assign(TCustomer(FCustomerList.Objects[FCustomerIndex]));
    FCurrentCustomer.NotifiyAllProperties;
  end;
end;

procedure TCustomerManager.SetCustomerList(const Value: TStrings);
begin
  FCustomerList.Assign(Value);
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

{ TCustomerManagerIterator }

constructor TCustomerManagerIterator.Create;
begin
  inherited;
  FCustIterator := TJanuaBindableIterator<TCustomer>.Create(imCopy);
end;

function TCustomerManagerIterator.GetAsJson: string;
begin
  inherited;
end;

function TCustomerManagerIterator.GetCustomers: TObjectList<TCustomer>;
begin

end;

procedure TCustomerManagerIterator.RebuildList;
begin
  FCustIterator.Initialize('Name', GetCustomers);
end;

procedure TCustomerManagerIterator.SetAsJson(aJson: string);
begin
  inherited;
  RebuildList;
end;

end.
