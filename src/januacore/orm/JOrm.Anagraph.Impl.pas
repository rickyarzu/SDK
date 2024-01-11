unit JOrm.Anagraph.Impl;

interface

uses
  System.SysUtils, System.StrUtils, Data.DB, System.Types,
  // Janua Intf
  Janua.Orm.Intf, JOrm.Anagraph.Intf, JOrm.Anagraph.AnagraphView.Custom.Intf,
  // Janua Lib and Impl
  Janua.Orm.Impl, Janua.Core.Entities,
  // Janua Impl
  JOrm.Anagraph.Anagraphs.Custom.Impl, JOrm.Anagraph.AnagraphView.Custom.Impl,
  JOrm.Anagraph.Address.Impl, JOrm.Anagraph.Branch.Custom.Impl;

// ------------------------------------------ Impl object interface ----------------------------------

type
  TAnAddress = class(TAddress, IAnAddress, IJanuaRecord)
  private
    FAnagraphId: IJanuaField;
  protected
    function GetAnagraphId: IJanuaField;
    procedure SetAnagraphId(const Value: IJanuaField);
  public
    constructor Create; override;
    procedure LoadFromDataset(const aRecursively: Boolean = True); override;
    procedure SaveToDataset(Force: Boolean = False; aRecursive: Boolean = True); override;
    procedure SetfromRecordAddress(const aAddress: TJanuaRecordAddress);
    procedure SetfromAnagraph(const aAnagraph: IAnagraph);
    property AnagraphId: IJanuaField read GetAnagraphId write SetAnagraphId;
  end;

  TAnAddresses = class(TAddresses, IJanuaRecordSet, IAnAddresses)
  protected
    function GetAnAddress: IAnAddress;
    procedure SetAnAddress(const Value: IAnAddress);
    function GetAnagraphId: IJanuaField;
    procedure SetAnagraphId(const Value: IJanuaField);
  public
    constructor Create; override;
    property AnAddress: IAnAddress read GetAnAddress write SetAnAddress;
    property AnagraphId: IJanuaField read GetAnagraphId write SetAnagraphId;
  end;

  TBranch = class(TCustomBranch, IBranch, IJanuaRecord)
  end;

  TBranches = class(TCustomBranches, IJanuaRecordSet, IBranches)
  protected
    function GetBranch: IBranch;
    procedure SetBranch(const Value: IBranch);
  public
    property Branch: IBranch read GetBranch write SetBranch;
  end;

  TAnagraph = class(TCustomAnagraph, IAnagraph, IJanuaRecord)
  private
    procedure InternalDoNewRecord; override;
  public
    constructor Create; override;
    procedure AfterConstruction; override;
    procedure SetfromRecordAddress(const aAddress: TJanuaRecordAddress);
    class function New: IAnagraph; static;
  end;

  TAnagraphs = class(TCustomAnagraphs, IJanuaRecordSet, IAnagraphs)
  public
    constructor Create; override;
    procedure AfterConstruction; override;
  protected
    function GetAnagraph: IAnagraph;
    procedure SetAnagraph(const Value: IAnagraph);
  public
    property Anagraph: IAnagraph read GetAnagraph write SetAnagraph;
  end;

type
  TAnagraphView = class(TCustomAnagraphView, IAnagraphView, IAnagraph, IJanuaRecord)
  private
    FAddresses: IAnAddresses;
    FMainAddress: IAnAddress;
    FTested: Boolean;
  protected
    function GetAddresses: IAnAddresses;
    procedure SetAddresses(const Value: IAnAddresses);
    function GetMainAddress: IAnAddress;
    procedure SetMainAddress(const Value: IAnAddress);
  strict protected
    procedure BeforePost; override;
  public
    property Addresses: IAnAddresses read GetAddresses write SetAddresses;
    // <summary> Main MainAddress is exactly the Anagraph MainAddress but can be used connected to the addresses array </summary>
    property MainAddress: IAnAddress read GetMainAddress write SetMainAddress;
  public
    constructor Create; override;
    function AsIAnagraph: IAnagraph;
    procedure AfterConstruction; override;
    procedure UpdateAddressList; virtual;
    procedure SyncMainAddress;
    procedure SetfromRecordAddress(const aAddress: TJanuaRecordAddress);
    procedure LoadFromDataset(const aRecursively: Boolean = True); override;
    procedure DirectLoadFromDataset(const aDataset: TDataset; const aRelease: Boolean = False;
      const aRecursively: Boolean = True); override;
    class function New: IAnagraphView; static;
  end;

  TAnagraphViews = class(TCustomAnagraphViews, IJanuaRecordSet, IAnagraphViews)
  public
    constructor Create; override;
  protected
    function GetAnagraphView: IAnagraphView;
    procedure SetAnagraphView(const Value: IAnagraphView);
  public
    property AnagraphView: IAnagraphView read GetAnagraphView write SetAnagraphView;
  end;

  TAnagraphViewFactory = class
    class function CreateRecord(const aKey: string): IAnagraphView; overload;
    class function CreateRecordset(const aName: string;
      const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): IAnagraphViews; overload;
  end;

procedure SetAnagraphTitles(const aAnagraph: IJanuaRecord);

implementation

uses Spring, Janua.Core.Types, Janua.Orm.Types, Janua.Application.Framework;

procedure SetAnagraphTitles(const aAnagraph: IJanuaRecord);
begin
  aAnagraph.FieldByName('an_last_name').Title := 'Company Name / Lastname';
  aAnagraph.FieldByName('an_code').Title := 'Code';
  aAnagraph.FieldByName('an_address').Title := 'Address';
end;

// ------------------------------------------ Impl TAnagraph -------------------------------

{ TAnagraph }

procedure TAnagraph.AfterConstruction;
begin
  inherited;
  AnagraphId.IsEntityKey := True;
  AnContactId.IsEntityKey := True;
  AnOfficeId.IsEntityKey := True;
  AnCurrencyId.IsEntityKey := True;
  AnCatId.IsEntityKey := True;
  AnAgentId.IsEntityKey := True;
  AnAreaId.IsEntityKey := True;
  AnZoneId.IsEntityKey := True;
  AnOfficeTypeId.IsEntityKey := True;
  AnInsId.IsEntityKey := True;
  AnUpdId.IsEntityKey := True;
  AnInsuranceId.IsEntityKey := True;
  AnAnagraphsAnagraphId.IsEntityKey := True;
  AnVatId.IsEntityKey := True;
  AnMainGroupId.IsEntityKey := True;
  AnImageId.IsEntityKey := True;
  MainCategoryId.IsEntityKey := True;
  OsmId.IsEntityKey := True;
  AnStatus.IsEntityKey := True;
  SupplierId.IsEntityKey := True;
  VesselId.IsEntityKey := True;
  AnContactId.IsEntityKey := True;
  AnCountryId.IsEntityKey := True;
end;

constructor TAnagraph.Create;
begin
  inherited;
  SetEntity(TJanuaEntity.AnagraphAnagraphs);
  FPrefix := 'anag';
end;

procedure TAnagraph.InternalDoNewRecord;
begin
  inherited;

end;

class function TAnagraph.New: IAnagraph;
begin
  Result := TAnagraph.Create as IAnagraph
end;

procedure TAnagraph.SetfromRecordAddress(const aAddress: TJanuaRecordAddress);
begin
  AnAddress.AsString := aAddress.Address;
  AnAddressNumber.AsString := aAddress.Number;
  AnPostalCode.AsString := aAddress.postalcode;
  AnStateProvince.AsString := aAddress.StateProvince;
  Latitude.AsFloat := aAddress.Latitude;
  Longitude.AsFloat := aAddress.Longitude;
  AnTown.AsString := aAddress.Town;
  AnIsoCountryCode2.AsString := aAddress.CountryCode;
  AnFullAddress.AsString := aAddress.AddressFull;
end;

{ TAnagraphs }

procedure TAnagraphs.AfterConstruction;
begin
  inherited;
  AnagraphId.IsEntityKey := True;
  AnContactId.IsEntityKey := True;
  AnOfficeId.IsEntityKey := True;
  AnCurrencyId.IsEntityKey := True;
  AnCatId.IsEntityKey := True;
  AnAgentId.IsEntityKey := True;
  AnAreaId.IsEntityKey := True;
  AnZoneId.IsEntityKey := True;
  AnOfficeTypeId.IsEntityKey := True;
  AnInsId.IsEntityKey := True;
  AnUpdId.IsEntityKey := True;
  AnInsuranceId.IsEntityKey := True;
  AnAnagraphsAnagraphId.IsEntityKey := True;
  AnVatId.IsEntityKey := True;
  AnMainGroupId.IsEntityKey := True;
  AnImageId.IsEntityKey := True;
  MainCategoryId.IsEntityKey := True;
  OsmId.IsEntityKey := True;
  AnStatus.IsEntityKey := True;
  SupplierId.IsEntityKey := True;
  VesselId.IsEntityKey := True;
  AnContactId.IsEntityKey := True;
  AnCountryId.IsEntityKey := True;
end;

constructor TAnagraphs.Create;
begin
  inherited;
  FPrefix := 'anag';
  SetAnagraph(TAnagraph.New);
end;

function TAnagraphs.GetAnagraph: IAnagraph;
begin
  Result := FRecord as IAnagraph
end;

procedure TAnagraphs.SetAnagraph(const Value: IAnagraph);
begin
  FRecord := Value as IJanuaRecord
end;

{ TAnagraphViewFactory }

class function TAnagraphViewFactory.CreateRecord(const aKey: string): IAnagraphView;
begin
  Result := TAnagraphView.New;
  Result.Name := aKey;
end;

class function TAnagraphViewFactory.CreateRecordset(const aName: string;
  const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): IAnagraphViews;
begin
  Result := TAnagraphViews.Create(aName, aLocalStorage, aRemoteStorage);
end;

{ TAnagraphViews }

constructor TAnagraphViews.Create;
begin
  inherited;
  FRecord := TAnagraphView.New;
  FRecord.Name := 'AnagraphView';
end;

function TAnagraphViews.GetAnagraphView: IAnagraphView;
begin
  Result := FRecord as IAnagraphView
end;

procedure TAnagraphViews.SetAnagraphView(const Value: IAnagraphView);
begin
  FRecord := Value as IJanuaRecord;
end;

{ TAnagraphView }

procedure TAnagraphView.AfterConstruction;
begin
  inherited;
  AnagraphId.IsEntityKey := True;
  AnContactId.IsEntityKey := True;
  AnOfficeId.IsEntityKey := True;
  AnCurrencyId.IsEntityKey := True;
  AnCatId.IsEntityKey := True;
  AnAgentId.IsEntityKey := True;
  AnAreaId.IsEntityKey := True;
  AnZoneId.IsEntityKey := True;
  AnOfficeTypeId.IsEntityKey := True;
  AnInsId.IsEntityKey := True;
  AnUpdId.IsEntityKey := True;
  AnInsuranceId.IsEntityKey := True;
  AnAnagraphsAnagraphId.IsEntityKey := True;
  AnVatId.IsEntityKey := True;
  AnMainGroupId.IsEntityKey := True;
  AnImageId.IsEntityKey := True;
  MainCategoryId.IsEntityKey := True;
  OsmId.IsEntityKey := True;
  AnStatus.IsEntityKey := True;
  SupplierId.IsEntityKey := True;
  VesselId.IsEntityKey := True;
  AnContactId.IsEntityKey := True;
  AnCountryId.IsEntityKey := True;
  SetAnagraphTitles(self);
end;

function TAnagraphView.AsIAnagraph: IAnagraph;
begin
  Result := self as IAnagraph;
end;

procedure TAnagraphView.BeforePost;
var
  aAnagraph: IAnagraph;
begin
  inherited;
  if FMainAddress.AnagraphId.AsInteger = 0 then
    FMainAddress.Append;
  FMainAddress.SetfromAnagraph(self as IAnagraph);
end;

constructor TAnagraphView.Create;
begin
  inherited;
  SetEntity(TJanuaEntity.AnagraphAnagraphs);
  FPrefix := 'anav';
  FAddresses := TAnAddresses.Create;
  AddRecordSet(FAddresses as IJanuaRecordSet);
  FAddresses.CurrentRecord.AddMasterField(AnagraphId, FAddresses.AnagraphId);
  FMainAddress := TAnAddress.Create;
  AddRecordDef(FMainAddress as IJanuaRecord);
  // AddMasterField(aMaster, aDetail: IJanuaField);
  FMainAddress.AddMasterField(AnagraphId, FMainAddress.AnagraphId);
  FAddresses.ForceRefresh := True;
end;

procedure TAnagraphView.DirectLoadFromDataset(const aDataset: TDataset;
  const aRelease, aRecursively: Boolean);
begin
  var
  vTest := aRecursively;
  inherited;
  if vTest then
    FTested := vTest;
end;

function TAnagraphView.GetAddresses: IAnAddresses;
begin
  Result := FAddresses
end;

function TAnagraphView.GetMainAddress: IAnAddress;
begin
  Result := FMainAddress;
end;

procedure TAnagraphView.LoadFromDataset(const aRecursively: Boolean);
begin
  var
  vTest := aRecursively;
  inherited;
  if vTest then
    FTested := vTest;
end;

class function TAnagraphView.New: IAnagraphView;
begin
  Result := TAnagraphView.Create as IAnagraphView
end;

procedure TAnagraphView.SetAddresses(const Value: IAnAddresses);
begin
  FAddresses := Value;
end;

procedure TAnagraphView.SetfromRecordAddress(const aAddress: TJanuaRecordAddress);
begin
  AnAddress.AsString := aAddress.Address;
  AnAddressNumber.AsString := aAddress.Number;
  AnTown.AsString := aAddress.Town;
  AnPostalCode.AsString := aAddress.postalcode;
  AnStateProvince.AsString := aAddress.StateProvince;
  Latitude.AsFloat := aAddress.Latitude;
  Longitude.AsFloat := aAddress.Longitude;
  AnIsoCountryCode2.AsString := aAddress.CountryCode;
  AnFullAddress.AsString := aAddress.AddressFull;
  Post;
  SyncMainAddress;
  UpdateAddressList;
end;

procedure TAnagraphView.SetMainAddress(const Value: IAnAddress);
begin
  FMainAddress := Value;
end;

procedure TAnagraphView.SyncMainAddress;
begin
  Post;
  FMainAddress.Pos.AsInteger := 1;
  FMainAddress.Address.AsString := AnAddress.AsString;
  FMainAddress.AnagraphId.AsInteger := AnagraphId.AsInteger;
  FMainAddress.DbSchemaId.AsInteger := DbSchemaId.AsInteger;
  FMainAddress.postalcode.AsString := AnPostalCode.AsString;
  FMainAddress.StateProvince.AsString := AnStateProvince.AsString;
  FMainAddress.TownName.AsString := AnTown.AsString;
  FMainAddress.Latitude.AsFloat := Latitude.AsFloat;
  FMainAddress.Longitude.AsFloat := Longitude.AsFloat;
  FMainAddress.CountryCode.AsString := AnIsoCountryCode2.AsString;
  FMainAddress.AddressNumber.AsString := AnAddressNumber.AsString;
  FMainAddress.FullAddress.AsString := AnFullAddress.AsString;
  FMainAddress.AddressName.AsString := AnName.AsString + ' ' + AnLastName.AsString;
  FMainAddress.Post;
end;

procedure TAnagraphView.UpdateAddressList;
begin
{$IFDEF DEBUG}
  Guard.CheckNotNull(FAddresses, 'TAnagraphView.FAddresses');
  Guard.CheckNotNull(FMainAddress, 'TAnagraphView.FMainAddress');
{$ENDIF}
  if (FAddresses.RecordCount = 0) and Assigned(FAddresses.StoreDataset) then
    FAddresses.StoreDataset.Refresh;

  if (FAddresses.RecordCount > 0) then
  begin
    FAddresses.First;
    FAddresses.AnAddress.Assign(FMainAddress);
    FAddresses.Post;
  end
end;

constructor TAnAddress.Create;
begin
  inherited;
  FAnagraphId := AddCreateField(TJanuaFieldType.jptInteger, 'anagraph_id', 'anagraph_id');
end;

function TAnAddress.GetAnagraphId: IJanuaField;
begin
  Result := FAnagraphId
end;

procedure TAnAddress.LoadFromDataset(const aRecursively: Boolean);
begin
  var
  vTest := aRecursively;
  inherited;
end;

procedure TAnAddress.SaveToDataset(Force, aRecursive: Boolean);
begin
  if Address.AsString <> '' then
    inherited;
end;

procedure TAnAddress.SetAnagraphId(const Value: IJanuaField);
begin
  FAnagraphId := Value;
end;

procedure TAnAddress.SetfromAnagraph(const aAnagraph: IAnagraph);
begin
  Phone.AsString := IfThen(aAnagraph.AnCellular.AsString > '', aAnagraph.AnCellular.AsString,
    aAnagraph.AnPhone.AsString);
  Address.AsString := aAnagraph.AnAddress.AsString;
  AddressNumber.AsString := aAnagraph.AnAddressNumber.AsString;
  TownName.AsString := aAnagraph.AnTown.AsString;
  postalcode.AsString := aAnagraph.AnPostalCode.AsString;
  StateProvince.AsString := aAnagraph.AnStateProvince.AsString;
  Latitude.AsFloat := aAnagraph.Latitude.AsFloat;
  Longitude.AsFloat := aAnagraph.Longitude.AsFloat;
  CountryCode.AsString := aAnagraph.AnTown.AsString;
  FullAddress.AsString := aAnagraph.AnFullAddress.AsString;
end;

procedure TAnAddress.SetfromRecordAddress(const aAddress: TJanuaRecordAddress);
begin
  Address.AsString := aAddress.Address;
  AddressNumber.AsString := aAddress.Number;
  TownName.AsString := aAddress.Town;
  postalcode.AsString := aAddress.postalcode;
  StateProvince.AsString := aAddress.StateProvince;
  Latitude.AsFloat := aAddress.Latitude;
  Longitude.AsFloat := aAddress.Longitude;
  CountryCode.AsString := aAddress.Town;
  FullAddress.AsString := aAddress.AddressFull;
end;

{ TAnAddresses }

constructor TAnAddresses.Create;
begin
  inherited;
  FRecord := TAnAddress.Create;
end;

function TAnAddresses.GetAnAddress: IAnAddress;
begin
  Result := FRecord as IAnAddress;
end;

function TAnAddresses.GetAnagraphId: IJanuaField;
begin
  Result := GetAnAddress.AnagraphId;
end;

procedure TAnAddresses.SetAnAddress(const Value: IAnAddress);
begin
  FRecord := Value;
end;

procedure TAnAddresses.SetAnagraphId(const Value: IJanuaField);
begin
  GetAnAddress.AnagraphId := Value;
end;

{ TBranches }

function TBranches.GetBranch: IBranch;
begin
  Result := FRecord as IBranch;
end;

procedure TBranches.SetBranch(const Value: IBranch);
begin
  self.FRecord := Value;
end;

initialization

try
  // TAnAddress = class(TAddress, IAnAddress)
  TJanuaApplicationFactory.RegisterClass(IAnAddress, TAnAddress);
  TJanuaApplicationFactory.RegisterClass(IAnAddresses, TAnAddresses);
  // TAnagraph = class(TCustomAnagraph, IAnagraph)
  TJanuaApplicationFactory.RegisterClass(IAnagraph, TAnagraph);
  TJanuaApplicationFactory.RegisterClass(IAnagraphs, TAnagraphs);
  // TAnagraphView = class(TCustomAnagraphView, IAnagraphView, IAnagraph)
  TJanuaApplicationFactory.RegisterClass(IAnagraphView, TAnagraphView);
  TJanuaApplicationFactory.RegisterClass(IAnagraphViews, TAnagraphViews);
  // TBranch = class(TCustomBranch, IBranch)
  TJanuaApplicationFactory.RegisterClass(IBranch, TBranch);
  TJanuaApplicationFactory.RegisterClass(IBranches, TBranches);

except
  on e: exception do
  begin
    TJanuaLogger.LogError('TJanuaApplicationFactory.RegisterClass', '{"level" : "ERROR", "message" : "' +
      e.Message + '"}', nil);
    raise exception.Create('TJanuaApplicationFactory.RegisterClass: ' + e.Message);
  end;
end;

end.
