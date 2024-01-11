unit JOrm.Anagraph.AnagraphView.Custom.Impl;

interface

uses JOrm.Anagraph.Anagraphs.Custom.Impl, Janua.Orm.Intf, Janua.Orm.Impl, Janua.Core.Types,
  JOrm.Anagraph.AnagraphView.Custom.Intf;

// ------------------------------------------ Impl object interface ----------------------------------

type
  TCustomAnagraphView = class(TCustomAnagraph, ICustomAnagraphView)
  private
    FAnGroupId: IJanuaField;
    FAnCreditLimit: IJanuaField;
    FAnCredit: IJanuaField;
    FShipmentName: IJanuaField;
    FShipmentPostalCode: IJanuaField;
    FShipmentTown: IJanuaField;
    FShipmentAddress: IJanuaField;
    FShipmentPhone: IJanuaField;
    FShipmentStateProvince: IJanuaField;
    FBillingName: IJanuaField;
    FBillingPostalCode: IJanuaField;
    FBillingTown: IJanuaField;
    FBillingAddress: IJanuaField;
    FBillingPhone: IJanuaField;
    FBillingStateProvince: IJanuaField;
  protected
    function GetAnGroupId: IJanuaField;
    procedure SetAnGroupId(const Value: IJanuaField);
    function GetAnCreditLimit: IJanuaField;
    procedure SetAnCreditLimit(const Value: IJanuaField);
    function GetAnCredit: IJanuaField;
    procedure SetAnCredit(const Value: IJanuaField);
    function GetShipmentName: IJanuaField;
    procedure SetShipmentName(const Value: IJanuaField);
    function GetShipmentPostalCode: IJanuaField;
    procedure SetShipmentPostalCode(const Value: IJanuaField);
    function GetShipmentTown: IJanuaField;
    procedure SetShipmentTown(const Value: IJanuaField);
    function GetShipmentAddress: IJanuaField;
    procedure SetShipmentAddress(const Value: IJanuaField);
    function GetShipmentPhone: IJanuaField;
    procedure SetShipmentPhone(const Value: IJanuaField);
    function GetShipmentStateProvince: IJanuaField;
    procedure SetShipmentStateProvince(const Value: IJanuaField);
    function GetBillingName: IJanuaField;
    procedure SetBillingName(const Value: IJanuaField);
    function GetBillingPostalCode: IJanuaField;
    procedure SetBillingPostalCode(const Value: IJanuaField);
    function GetBillingTown: IJanuaField;
    procedure SetBillingTown(const Value: IJanuaField);
    function GetBillingAddress: IJanuaField;
    procedure SetBillingAddress(const Value: IJanuaField);
    function GetBillingPhone: IJanuaField;
    procedure SetBillingPhone(const Value: IJanuaField);
    function GetBillingStateProvince: IJanuaField;
    procedure SetBillingStateProvince(const Value: IJanuaField);
  public
    constructor Create; override;
    property AnGroupId: IJanuaField read GetAnGroupId write SetAnGroupId;
    property AnCreditLimit: IJanuaField read GetAnCreditLimit write SetAnCreditLimit;
    property AnCredit: IJanuaField read GetAnCredit write SetAnCredit;
    property ShipmentName: IJanuaField read GetShipmentName write SetShipmentName;
    property ShipmentPostalCode: IJanuaField read GetShipmentPostalCode write SetShipmentPostalCode;
    property ShipmentTown: IJanuaField read GetShipmentTown write SetShipmentTown;
    property ShipmentAddress: IJanuaField read GetShipmentAddress write SetShipmentAddress;
    property ShipmentPhone: IJanuaField read GetShipmentPhone write SetShipmentPhone;
    property ShipmentStateProvince: IJanuaField read GetShipmentStateProvince write SetShipmentStateProvince;
    property BillingName: IJanuaField read GetBillingName write SetBillingName;
    property BillingPostalCode: IJanuaField read GetBillingPostalCode write SetBillingPostalCode;
    property BillingTown: IJanuaField read GetBillingTown write SetBillingTown;
    property BillingAddress: IJanuaField read GetBillingAddress write SetBillingAddress;
    property BillingPhone: IJanuaField read GetBillingPhone write SetBillingPhone;
    property BillingStateProvince: IJanuaField read GetBillingStateProvince write SetBillingStateProvince;

  end;

  TCustomAnagraphViews = class(TCustomAnagraphs, IJanuaRecordSet, ICustomAnagraphViews)
  protected
    function GetAnGroupId: IJanuaField;
    procedure SetAnGroupId(const Value: IJanuaField);
    function GetAnCreditLimit: IJanuaField;
    procedure SetAnCreditLimit(const Value: IJanuaField);
    function GetAnCredit: IJanuaField;
    procedure SetAnCredit(const Value: IJanuaField);
    function GetShipmentName: IJanuaField;
    procedure SetShipmentName(const Value: IJanuaField);
    function GetShipmentPostalCode: IJanuaField;
    procedure SetShipmentPostalCode(const Value: IJanuaField);
    function GetShipmentTown: IJanuaField;
    procedure SetShipmentTown(const Value: IJanuaField);
    function GetShipmentAddress: IJanuaField;
    procedure SetShipmentAddress(const Value: IJanuaField);
    function GetShipmentPhone: IJanuaField;
    procedure SetShipmentPhone(const Value: IJanuaField);
    function GetShipmentStateProvince: IJanuaField;
    procedure SetShipmentStateProvince(const Value: IJanuaField);
    function GetBillingName: IJanuaField;
    procedure SetBillingName(const Value: IJanuaField);
    function GetBillingPostalCode: IJanuaField;
    procedure SetBillingPostalCode(const Value: IJanuaField);
    function GetBillingTown: IJanuaField;
    procedure SetBillingTown(const Value: IJanuaField);
    function GetBillingAddress: IJanuaField;
    procedure SetBillingAddress(const Value: IJanuaField);
    function GetBillingPhone: IJanuaField;
    procedure SetBillingPhone(const Value: IJanuaField);
    function GetBillingStateProvince: IJanuaField;
    procedure SetBillingStateProvince(const Value: IJanuaField);
  strict protected
    function GetCustomAnagraphView: ICustomAnagraphView;
    procedure SetCustomAnagraphView(const Value: ICustomAnagraphView);
  public
    constructor Create; override;
    property AnGroupId: IJanuaField read GetAnGroupId write SetAnGroupId;
    property AnCreditLimit: IJanuaField read GetAnCreditLimit write SetAnCreditLimit;
    property AnCredit: IJanuaField read GetAnCredit write SetAnCredit;
    property ShipmentName: IJanuaField read GetShipmentName write SetShipmentName;
    property ShipmentPostalCode: IJanuaField read GetShipmentPostalCode write SetShipmentPostalCode;
    property ShipmentTown: IJanuaField read GetShipmentTown write SetShipmentTown;
    property ShipmentAddress: IJanuaField read GetShipmentAddress write SetShipmentAddress;
    property ShipmentPhone: IJanuaField read GetShipmentPhone write SetShipmentPhone;
    property ShipmentStateProvince: IJanuaField read GetShipmentStateProvince write SetShipmentStateProvince;
    property BillingName: IJanuaField read GetBillingName write SetBillingName;
    property BillingPostalCode: IJanuaField read GetBillingPostalCode write SetBillingPostalCode;
    property BillingTown: IJanuaField read GetBillingTown write SetBillingTown;
    property BillingAddress: IJanuaField read GetBillingAddress write SetBillingAddress;
    property BillingPhone: IJanuaField read GetBillingPhone write SetBillingPhone;
    property BillingStateProvince: IJanuaField read GetBillingStateProvince write SetBillingStateProvince;
  end;

implementation

// ------------------------------------------ Impl TAnagraphView -------------------------------

{ TCustomAnagraphView }

constructor TCustomAnagraphView.Create;
begin
  inherited;
  FPrefix := 'anv';
  FAnGroupId := AddCreateField(TJanuaFieldType.jptSmallint, 'an_group_id', 'an_group_id');
  FAnCreditLimit := AddCreateField(TJanuaFieldType.jptFloat, 'an_credit_limit', 'an_credit_limit');
  FAnCredit := AddCreateField(TJanuaFieldType.jptBoolean, 'an_credit', 'an_credit');
  FShipmentName := AddCreateField(TJanuaFieldType.jptString, 'shipment_name', 'shipment_name');
  FShipmentPostalCode := AddCreateField(TJanuaFieldType.jptString, 'shipment_postal_code',
    'shipment_postal_code');
  FShipmentTown := AddCreateField(TJanuaFieldType.jptString, 'shipment_town', 'shipment_town');
  FShipmentAddress := AddCreateField(TJanuaFieldType.jptString, 'shipment_address', 'shipment_address');
  FShipmentPhone := AddCreateField(TJanuaFieldType.jptString, 'shipment_phone', 'shipment_phone');
  FShipmentStateProvince := AddCreateField(TJanuaFieldType.jptString, 'shipment_state_province',
    'shipment_state_province');
  FBillingName := AddCreateField(TJanuaFieldType.jptString, 'billing_name', 'billing_name');
  FBillingPostalCode := AddCreateField(TJanuaFieldType.jptString, 'billing_postal_code',
    'billing_postal_code');
  FBillingTown := AddCreateField(TJanuaFieldType.jptString, 'billing_town', 'billing_town');
  FBillingAddress := AddCreateField(TJanuaFieldType.jptString, 'billing_address', 'billing_address');
  FBillingPhone := AddCreateField(TJanuaFieldType.jptString, 'billing_phone', 'billing_phone');
  FBillingStateProvince := AddCreateField(TJanuaFieldType.jptString, 'billing_state_province',
    'billing_state_province');
end;

procedure TCustomAnagraphView.SetAnCreditLimit(const Value: IJanuaField);
begin
  FAnCreditLimit := Value;
end;

procedure TCustomAnagraphView.SetAnGroupId(const Value: IJanuaField);
begin
  FAnGroupId := Value
end;

function TCustomAnagraphView.GetAnCredit: IJanuaField;
begin
  Result := FAnCredit;
end;

function TCustomAnagraphView.GetAnCreditLimit: IJanuaField;
begin
  Result := FAnCreditLimit
end;

function TCustomAnagraphView.GetAnGroupId: IJanuaField;
begin
  Result := FAnGroupId;
end;

procedure TCustomAnagraphView.SetAnCredit(const Value: IJanuaField);
begin
  FAnCredit := Value;
end;

function TCustomAnagraphView.GetShipmentName: IJanuaField;
begin
  Result := FShipmentName;
end;

procedure TCustomAnagraphView.SetShipmentName(const Value: IJanuaField);
begin
  FShipmentName := Value;
end;

function TCustomAnagraphView.GetShipmentPostalCode: IJanuaField;
begin
  Result := FShipmentPostalCode;
end;

procedure TCustomAnagraphView.SetShipmentPostalCode(const Value: IJanuaField);
begin
  FShipmentPostalCode := Value;
end;

function TCustomAnagraphView.GetShipmentTown: IJanuaField;
begin
  Result := FShipmentTown;
end;

procedure TCustomAnagraphView.SetShipmentTown(const Value: IJanuaField);
begin
  FShipmentTown := Value;
end;

function TCustomAnagraphView.GetShipmentAddress: IJanuaField;
begin
  Result := FShipmentAddress;
end;

procedure TCustomAnagraphView.SetShipmentAddress(const Value: IJanuaField);
begin
  FShipmentAddress := Value;
end;

function TCustomAnagraphView.GetShipmentPhone: IJanuaField;
begin
  Result := FShipmentPhone;
end;

procedure TCustomAnagraphView.SetShipmentPhone(const Value: IJanuaField);
begin
  FShipmentPhone := Value;
end;

function TCustomAnagraphView.GetShipmentStateProvince: IJanuaField;
begin
  Result := FShipmentStateProvince;
end;

procedure TCustomAnagraphView.SetShipmentStateProvince(const Value: IJanuaField);
begin
  FShipmentStateProvince := Value;
end;

function TCustomAnagraphView.GetBillingName: IJanuaField;
begin
  Result := FBillingName;
end;

procedure TCustomAnagraphView.SetBillingName(const Value: IJanuaField);
begin
  FBillingName := Value;
end;

function TCustomAnagraphView.GetBillingPostalCode: IJanuaField;
begin
  Result := FBillingPostalCode;
end;

procedure TCustomAnagraphView.SetBillingPostalCode(const Value: IJanuaField);
begin
  FBillingPostalCode := Value;
end;

function TCustomAnagraphView.GetBillingTown: IJanuaField;
begin
  Result := FBillingTown;
end;

procedure TCustomAnagraphView.SetBillingTown(const Value: IJanuaField);
begin
  FBillingTown := Value;
end;

function TCustomAnagraphView.GetBillingAddress: IJanuaField;
begin
  Result := FBillingAddress;
end;

procedure TCustomAnagraphView.SetBillingAddress(const Value: IJanuaField);
begin
  FBillingAddress := Value;
end;

function TCustomAnagraphView.GetBillingPhone: IJanuaField;
begin
  Result := FBillingPhone;
end;

procedure TCustomAnagraphView.SetBillingPhone(const Value: IJanuaField);
begin
  FBillingPhone := Value;
end;

function TCustomAnagraphView.GetBillingStateProvince: IJanuaField;
begin
  Result := FBillingStateProvince;
end;

procedure TCustomAnagraphView.SetBillingStateProvince(const Value: IJanuaField);
begin
  FBillingStateProvince := Value;
end;

{ TCustomAnagraphViews }
constructor TCustomAnagraphViews.Create;
begin
  inherited;
end;

function TCustomAnagraphViews.GetAnGroupId: IJanuaField;
begin
  Result := GetCustomAnagraphView.AnGroupId;
end;

procedure TCustomAnagraphViews.SetAnGroupId(const Value: IJanuaField);
begin
  GetCustomAnagraphView.AnGroupId := Value;
end;

function TCustomAnagraphViews.GetAnCreditLimit: IJanuaField;
begin
  Result := GetCustomAnagraphView.AnCreditLimit;
end;

procedure TCustomAnagraphViews.SetAnCreditLimit(const Value: IJanuaField);
begin
  GetCustomAnagraphView.AnCreditLimit := Value;
end;

function TCustomAnagraphViews.GetAnCredit: IJanuaField;
begin
  Result := GetCustomAnagraphView.AnCredit;
end;

procedure TCustomAnagraphViews.SetAnCredit(const Value: IJanuaField);
begin
  GetCustomAnagraphView.AnCredit := Value;
end;

function TCustomAnagraphViews.GetShipmentName: IJanuaField;
begin
  Result := GetCustomAnagraphView.ShipmentName;
end;

procedure TCustomAnagraphViews.SetShipmentName(const Value: IJanuaField);
begin
  GetCustomAnagraphView.ShipmentName := Value;
end;

function TCustomAnagraphViews.GetShipmentPostalCode: IJanuaField;
begin
  Result := GetCustomAnagraphView.ShipmentPostalCode;
end;

procedure TCustomAnagraphViews.SetShipmentPostalCode(const Value: IJanuaField);
begin
  GetCustomAnagraphView.ShipmentPostalCode := Value;
end;

function TCustomAnagraphViews.GetShipmentTown: IJanuaField;
begin
  Result := GetCustomAnagraphView.ShipmentTown;
end;

procedure TCustomAnagraphViews.SetShipmentTown(const Value: IJanuaField);
begin
  GetCustomAnagraphView.ShipmentTown := Value;
end;

function TCustomAnagraphViews.GetShipmentAddress: IJanuaField;
begin
  Result := GetCustomAnagraphView.ShipmentAddress;
end;

procedure TCustomAnagraphViews.SetShipmentAddress(const Value: IJanuaField);
begin
  GetCustomAnagraphView.ShipmentAddress := Value;
end;

function TCustomAnagraphViews.GetShipmentPhone: IJanuaField;
begin
  Result := GetCustomAnagraphView.ShipmentPhone;
end;

procedure TCustomAnagraphViews.SetShipmentPhone(const Value: IJanuaField);
begin
  GetCustomAnagraphView.ShipmentPhone := Value;
end;

function TCustomAnagraphViews.GetShipmentStateProvince: IJanuaField;
begin
  Result := GetCustomAnagraphView.ShipmentStateProvince;
end;

procedure TCustomAnagraphViews.SetShipmentStateProvince(const Value: IJanuaField);
begin
  GetCustomAnagraphView.ShipmentStateProvince := Value;
end;

function TCustomAnagraphViews.GetBillingName: IJanuaField;
begin
  Result := GetCustomAnagraphView.BillingName;
end;

procedure TCustomAnagraphViews.SetBillingName(const Value: IJanuaField);
begin
  GetCustomAnagraphView.BillingName := Value;
end;

function TCustomAnagraphViews.GetBillingPostalCode: IJanuaField;
begin
  Result := GetCustomAnagraphView.BillingPostalCode;
end;

procedure TCustomAnagraphViews.SetBillingPostalCode(const Value: IJanuaField);
begin
  GetCustomAnagraphView.BillingPostalCode := Value;
end;

function TCustomAnagraphViews.GetBillingTown: IJanuaField;
begin
  Result := GetCustomAnagraphView.BillingTown;
end;

procedure TCustomAnagraphViews.SetBillingTown(const Value: IJanuaField);
begin
  GetCustomAnagraphView.BillingTown := Value;
end;

function TCustomAnagraphViews.GetBillingAddress: IJanuaField;
begin
  Result := GetCustomAnagraphView.BillingAddress;
end;

procedure TCustomAnagraphViews.SetBillingAddress(const Value: IJanuaField);
begin
  GetCustomAnagraphView.BillingAddress := Value;
end;

function TCustomAnagraphViews.GetBillingPhone: IJanuaField;
begin
  Result := GetCustomAnagraphView.BillingPhone;
end;

procedure TCustomAnagraphViews.SetBillingPhone(const Value: IJanuaField);
begin
  GetCustomAnagraphView.BillingPhone := Value;
end;

function TCustomAnagraphViews.GetBillingStateProvince: IJanuaField;
begin
  Result := GetCustomAnagraphView.BillingStateProvince;
end;

procedure TCustomAnagraphViews.SetBillingStateProvince(const Value: IJanuaField);
begin
  GetCustomAnagraphView.BillingStateProvince := Value;
end;

function TCustomAnagraphViews.GetCustomAnagraphView: ICustomAnagraphView;
begin
  Result := FRecord as ICustomAnagraphView;
end;

procedure TCustomAnagraphViews.SetCustomAnagraphView(const Value: ICustomAnagraphView);
begin
  FRecord := Value;
end;

end.
