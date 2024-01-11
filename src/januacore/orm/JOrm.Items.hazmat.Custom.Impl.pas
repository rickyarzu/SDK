unit JOrm.Items.hazmat.Custom.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, Janua.Core.Types, JOrm.Items.hazmat.Intf;

//------------------------------------------ Impl object interface ----------------------------------

type
  TCustomhazmat = class(TJanuaRecord, Ihazmat)
  private
    FId: IJanuaField;
    FSymbols: IJanuaField;
    FDescription: IJanuaField;
    FHazClass: IJanuaField;
    FCode: IJanuaField;
    FPg: IJanuaField;
    FLabelCodes: IJanuaField;
    FCpecialProvisions: IJanuaField;
    FExceptions: IJanuaField;
    FNonBulk: IJanuaField;
    FBulk: IJanuaField;
    FAircraftPassenger: IJanuaField;
    FAircraftCargo: IJanuaField;
    FVesselStowageLocation: IJanuaField;
    FVesselStowageOther: IJanuaField;
    FSearchIndex: IJanuaField;
    FJguid: IJanuaField;
  private
    function GetId: IJanuaField;
    procedure SetId(const Value: IJanuaField);
    function GetSymbols: IJanuaField;
    procedure SetSymbols(const Value: IJanuaField);
    function GetDescription: IJanuaField;
    procedure SetDescription(const Value: IJanuaField);
    function GetHazClass: IJanuaField;
    procedure SetHazClass(const Value: IJanuaField);
    function GetCode: IJanuaField;
    procedure SetCode(const Value: IJanuaField);
    function GetPg: IJanuaField;
    procedure SetPg(const Value: IJanuaField);
    function GetLabelCodes: IJanuaField;
    procedure SetLabelCodes(const Value: IJanuaField);
    function GetCpecialProvisions: IJanuaField;
    procedure SetCpecialProvisions(const Value: IJanuaField);
    function GetExceptions: IJanuaField;
    procedure SetExceptions(const Value: IJanuaField);
    function GetNonBulk: IJanuaField;
    procedure SetNonBulk(const Value: IJanuaField);
    function GetBulk: IJanuaField;
    procedure SetBulk(const Value: IJanuaField);
    function GetAircraftPassenger: IJanuaField;
    procedure SetAircraftPassenger(const Value: IJanuaField);
    function GetAircraftCargo: IJanuaField;
    procedure SetAircraftCargo(const Value: IJanuaField);
    function GetVesselStowageLocation: IJanuaField;
    procedure SetVesselStowageLocation(const Value: IJanuaField);
    function GetVesselStowageOther: IJanuaField;
    procedure SetVesselStowageOther(const Value: IJanuaField);
    function GetSearchIndex: IJanuaField;
    procedure SetSearchIndex(const Value: IJanuaField);
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
  public
    constructor Create; override;
    property Id: IJanuaField read GetId write SetId;
    property Symbols: IJanuaField read GetSymbols write SetSymbols;
    property Description: IJanuaField read GetDescription write SetDescription;
    property HazClass: IJanuaField read GetHazClass write SetHazClass;
    property Code: IJanuaField read GetCode write SetCode;
    property Pg: IJanuaField read GetPg write SetPg;
    property LabelCodes: IJanuaField read GetLabelCodes write SetLabelCodes;
    property CpecialProvisions: IJanuaField read GetCpecialProvisions write SetCpecialProvisions;
    property Exceptions: IJanuaField read GetExceptions write SetExceptions;
    property NonBulk: IJanuaField read GetNonBulk write SetNonBulk;
    property Bulk: IJanuaField read GetBulk write SetBulk;
    property AircraftPassenger: IJanuaField read GetAircraftPassenger write SetAircraftPassenger;
    property AircraftCargo: IJanuaField read GetAircraftCargo write SetAircraftCargo;
    property VesselStowageLocation: IJanuaField read GetVesselStowageLocation write SetVesselStowageLocation;
    property VesselStowageOther: IJanuaField read GetVesselStowageOther write SetVesselStowageOther;
    property SearchIndex: IJanuaField read GetSearchIndex write SetSearchIndex;
    property Jguid: IJanuaField read GetJguid write SetJguid;

  end;

  TCustomhazmats = class(TJanuaRecordSet, IJanuaRecordSet, Ihazmats)
  private
    function GetId: IJanuaField;
    procedure SetId(const Value: IJanuaField);
    function GetSymbols: IJanuaField;
    procedure SetSymbols(const Value: IJanuaField);
    function GetDescription: IJanuaField;
    procedure SetDescription(const Value: IJanuaField);
    function GetHazClass: IJanuaField;
    procedure SetHazClass(const Value: IJanuaField);
    function GetCode: IJanuaField;
    procedure SetCode(const Value: IJanuaField);
    function GetPg: IJanuaField;
    procedure SetPg(const Value: IJanuaField);
    function GetLabelCodes: IJanuaField;
    procedure SetLabelCodes(const Value: IJanuaField);
    function GetCpecialProvisions: IJanuaField;
    procedure SetCpecialProvisions(const Value: IJanuaField);
    function GetExceptions: IJanuaField;
    procedure SetExceptions(const Value: IJanuaField);
    function GetNonBulk: IJanuaField;
    procedure SetNonBulk(const Value: IJanuaField);
    function GetBulk: IJanuaField;
    procedure SetBulk(const Value: IJanuaField);
    function GetAircraftPassenger: IJanuaField;
    procedure SetAircraftPassenger(const Value: IJanuaField);
    function GetAircraftCargo: IJanuaField;
    procedure SetAircraftCargo(const Value: IJanuaField);
    function GetVesselStowageLocation: IJanuaField;
    procedure SetVesselStowageLocation(const Value: IJanuaField);
    function GetVesselStowageOther: IJanuaField;
    procedure SetVesselStowageOther(const Value: IJanuaField);
    function GetSearchIndex: IJanuaField;
    procedure SetSearchIndex(const Value: IJanuaField);
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    function Gethazmat: Ihazmat;
    procedure Sethazmat(const Value: Ihazmat);
  public
    constructor Create; override;
    property Id: IJanuaField read GetId write SetId;
    property Symbols: IJanuaField read GetSymbols write SetSymbols;
    property Description: IJanuaField read GetDescription write SetDescription;
    property HazClass: IJanuaField read GetHazClass write SetHazClass;
    property Code: IJanuaField read GetCode write SetCode;
    property Pg: IJanuaField read GetPg write SetPg;
    property LabelCodes: IJanuaField read GetLabelCodes write SetLabelCodes;
    property CpecialProvisions: IJanuaField read GetCpecialProvisions write SetCpecialProvisions;
    property Exceptions: IJanuaField read GetExceptions write SetExceptions;
    property NonBulk: IJanuaField read GetNonBulk write SetNonBulk;
    property Bulk: IJanuaField read GetBulk write SetBulk;
    property AircraftPassenger: IJanuaField read GetAircraftPassenger write SetAircraftPassenger;
    property AircraftCargo: IJanuaField read GetAircraftCargo write SetAircraftCargo;
    property VesselStowageLocation: IJanuaField read GetVesselStowageLocation write SetVesselStowageLocation;
    property VesselStowageOther: IJanuaField read GetVesselStowageOther write SetVesselStowageOther;
    property SearchIndex: IJanuaField read GetSearchIndex write SetSearchIndex;
    property Jguid: IJanuaField read GetJguid write SetJguid;
    property hazmat:Ihazmat read Gethazmat write Sethazmat;
  end;

  ThazmatFactory = class
    class function CreateRecord(const aKey: string): Ihazmat; overload;
    class function CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): Ihazmats; overload;
  end;

implementation

//------------------------------------------ Impl Thazmat -------------------------------

{TCustomhazmat}

  constructor TCustomhazmat.Create;
  begin
    inherited;
    FPrefix := 'ithz';
    FId:= AddCreateField(TJanuaFieldType.jptSmallint, 'id', 'id');
    FSymbols:= AddCreateField(TJanuaFieldType.jptString, 'symbols', 'symbols');
    FDescription:= AddCreateField(TJanuaFieldType.jptString, 'description', 'description');
    FHazClass:= AddCreateField(TJanuaFieldType.jptString, 'haz_class', 'haz_class');
    FCode:= AddCreateField(TJanuaFieldType.jptString, 'code', 'code');
    FPg:= AddCreateField(TJanuaFieldType.jptString, 'pg', 'pg');
    FLabelCodes:= AddCreateField(TJanuaFieldType.jptString, 'label_codes', 'label_codes');
    FCpecialProvisions:= AddCreateField(TJanuaFieldType.jptString, 'cpecial_provisions', 'cpecial_provisions');
    FExceptions:= AddCreateField(TJanuaFieldType.jptString, 'exceptions', 'exceptions');
    FNonBulk:= AddCreateField(TJanuaFieldType.jptString, 'non_bulk', 'non_bulk');
    FBulk:= AddCreateField(TJanuaFieldType.jptString, 'bulk', 'bulk');
    FAircraftPassenger:= AddCreateField(TJanuaFieldType.jptString, 'aircraft_passenger', 'aircraft_passenger');
    FAircraftCargo:= AddCreateField(TJanuaFieldType.jptString, 'aircraft_cargo', 'aircraft_cargo');
    FVesselStowageLocation:= AddCreateField(TJanuaFieldType.jptString, 'vessel_stowage_location', 'vessel_stowage_location');
    FVesselStowageOther:= AddCreateField(TJanuaFieldType.jptString, 'vessel_stowage_other', 'vessel_stowage_other');
    FSearchIndex:= AddCreateField(TJanuaFieldType.jptString, 'search_index', 'search_index');
  end;

  function TCustomhazmat.GetId: IJanuaField;
  begin
    Result := FId;
  end;

  procedure TCustomhazmat.SetId(const Value: IJanuaField);
  begin
    FId := Value;
  end;

  function TCustomhazmat.GetSymbols: IJanuaField;
  begin
    Result := FSymbols;
  end;

  procedure TCustomhazmat.SetSymbols(const Value: IJanuaField);
  begin
    FSymbols := Value;
  end;

  function TCustomhazmat.GetDescription: IJanuaField;
  begin
    Result := FDescription;
  end;

  procedure TCustomhazmat.SetDescription(const Value: IJanuaField);
  begin
    FDescription := Value;
  end;

  function TCustomhazmat.GetHazClass: IJanuaField;
  begin
    Result := FHazClass;
  end;

  procedure TCustomhazmat.SetHazClass(const Value: IJanuaField);
  begin
    FHazClass := Value;
  end;

  function TCustomhazmat.GetCode: IJanuaField;
  begin
    Result := FCode;
  end;

  procedure TCustomhazmat.SetCode(const Value: IJanuaField);
  begin
    FCode := Value;
  end;

  function TCustomhazmat.GetPg: IJanuaField;
  begin
    Result := FPg;
  end;

  procedure TCustomhazmat.SetPg(const Value: IJanuaField);
  begin
    FPg := Value;
  end;

  function TCustomhazmat.GetLabelCodes: IJanuaField;
  begin
    Result := FLabelCodes;
  end;

  procedure TCustomhazmat.SetLabelCodes(const Value: IJanuaField);
  begin
    FLabelCodes := Value;
  end;

  function TCustomhazmat.GetCpecialProvisions: IJanuaField;
  begin
    Result := FCpecialProvisions;
  end;

  procedure TCustomhazmat.SetCpecialProvisions(const Value: IJanuaField);
  begin
    FCpecialProvisions := Value;
  end;

  function TCustomhazmat.GetExceptions: IJanuaField;
  begin
    Result := FExceptions;
  end;

  procedure TCustomhazmat.SetExceptions(const Value: IJanuaField);
  begin
    FExceptions := Value;
  end;

  function TCustomhazmat.GetNonBulk: IJanuaField;
  begin
    Result := FNonBulk;
  end;

  procedure TCustomhazmat.SetNonBulk(const Value: IJanuaField);
  begin
    FNonBulk := Value;
  end;

  function TCustomhazmat.GetBulk: IJanuaField;
  begin
    Result := FBulk;
  end;

  procedure TCustomhazmat.SetBulk(const Value: IJanuaField);
  begin
    FBulk := Value;
  end;

  function TCustomhazmat.GetAircraftPassenger: IJanuaField;
  begin
    Result := FAircraftPassenger;
  end;

  procedure TCustomhazmat.SetAircraftPassenger(const Value: IJanuaField);
  begin
    FAircraftPassenger := Value;
  end;

  function TCustomhazmat.GetAircraftCargo: IJanuaField;
  begin
    Result := FAircraftCargo;
  end;

  procedure TCustomhazmat.SetAircraftCargo(const Value: IJanuaField);
  begin
    FAircraftCargo := Value;
  end;

  function TCustomhazmat.GetVesselStowageLocation: IJanuaField;
  begin
    Result := FVesselStowageLocation;
  end;

  procedure TCustomhazmat.SetVesselStowageLocation(const Value: IJanuaField);
  begin
    FVesselStowageLocation := Value;
  end;

  function TCustomhazmat.GetVesselStowageOther: IJanuaField;
  begin
    Result := FVesselStowageOther;
  end;

  procedure TCustomhazmat.SetVesselStowageOther(const Value: IJanuaField);
  begin
    FVesselStowageOther := Value;
  end;

  function TCustomhazmat.GetSearchIndex: IJanuaField;
  begin
    Result := FSearchIndex;
  end;

  procedure TCustomhazmat.SetSearchIndex(const Value: IJanuaField);
  begin
    FSearchIndex := Value;
  end;

  function TCustomhazmat.GetJguid: IJanuaField;
  begin
    Result := FJguid;
  end;

  procedure TCustomhazmat.SetJguid(const Value: IJanuaField);
  begin
    FJguid := Value;
  end;

  { TCustomhazmats }
  constructor TCustomhazmats.Create;
  begin
    inherited;
    self.FRecord := ThazmatFactory.CreateRecord('hazmat');
  end;

  function TCustomhazmats.GetId: IJanuaField;
  begin
    Result := self.hazmat.Id;
  end;

  procedure TCustomhazmats.SetId(const Value: IJanuaField);
  begin
    self.hazmat.Id := Value;
  end;

  function TCustomhazmats.GetSymbols: IJanuaField;
  begin
    Result := self.hazmat.Symbols;
  end;

  procedure TCustomhazmats.SetSymbols(const Value: IJanuaField);
  begin
    self.hazmat.Symbols := Value;
  end;

  function TCustomhazmats.GetDescription: IJanuaField;
  begin
    Result := self.hazmat.Description;
  end;

  procedure TCustomhazmats.SetDescription(const Value: IJanuaField);
  begin
    self.hazmat.Description := Value;
  end;

  function TCustomhazmats.GetHazClass: IJanuaField;
  begin
    Result := self.hazmat.HazClass;
  end;

  procedure TCustomhazmats.SetHazClass(const Value: IJanuaField);
  begin
    self.hazmat.HazClass := Value;
  end;

  function TCustomhazmats.GetCode: IJanuaField;
  begin
    Result := self.hazmat.Code;
  end;

  procedure TCustomhazmats.SetCode(const Value: IJanuaField);
  begin
    self.hazmat.Code := Value;
  end;

  function TCustomhazmats.GetPg: IJanuaField;
  begin
    Result := self.hazmat.Pg;
  end;

  procedure TCustomhazmats.SetPg(const Value: IJanuaField);
  begin
    self.hazmat.Pg := Value;
  end;

  function TCustomhazmats.GetLabelCodes: IJanuaField;
  begin
    Result := self.hazmat.LabelCodes;
  end;

  procedure TCustomhazmats.SetLabelCodes(const Value: IJanuaField);
  begin
    self.hazmat.LabelCodes := Value;
  end;

  function TCustomhazmats.GetCpecialProvisions: IJanuaField;
  begin
    Result := self.hazmat.CpecialProvisions;
  end;

  procedure TCustomhazmats.SetCpecialProvisions(const Value: IJanuaField);
  begin
    self.hazmat.CpecialProvisions := Value;
  end;

  function TCustomhazmats.GetExceptions: IJanuaField;
  begin
    Result := self.hazmat.Exceptions;
  end;

  procedure TCustomhazmats.SetExceptions(const Value: IJanuaField);
  begin
    self.hazmat.Exceptions := Value;
  end;

  function TCustomhazmats.GetNonBulk: IJanuaField;
  begin
    Result := self.hazmat.NonBulk;
  end;

  procedure TCustomhazmats.SetNonBulk(const Value: IJanuaField);
  begin
    self.hazmat.NonBulk := Value;
  end;

  function TCustomhazmats.GetBulk: IJanuaField;
  begin
    Result := self.hazmat.Bulk;
  end;

  procedure TCustomhazmats.SetBulk(const Value: IJanuaField);
  begin
    self.hazmat.Bulk := Value;
  end;

  function TCustomhazmats.GetAircraftPassenger: IJanuaField;
  begin
    Result := self.hazmat.AircraftPassenger;
  end;

  procedure TCustomhazmats.SetAircraftPassenger(const Value: IJanuaField);
  begin
    self.hazmat.AircraftPassenger := Value;
  end;

  function TCustomhazmats.GetAircraftCargo: IJanuaField;
  begin
    Result := self.hazmat.AircraftCargo;
  end;

  procedure TCustomhazmats.SetAircraftCargo(const Value: IJanuaField);
  begin
    self.hazmat.AircraftCargo := Value;
  end;

  function TCustomhazmats.GetVesselStowageLocation: IJanuaField;
  begin
    Result := self.hazmat.VesselStowageLocation;
  end;

  procedure TCustomhazmats.SetVesselStowageLocation(const Value: IJanuaField);
  begin
    self.hazmat.VesselStowageLocation := Value;
  end;

  function TCustomhazmats.GetVesselStowageOther: IJanuaField;
  begin
    Result := self.hazmat.VesselStowageOther;
  end;

  procedure TCustomhazmats.SetVesselStowageOther(const Value: IJanuaField);
  begin
    self.hazmat.VesselStowageOther := Value;
  end;

  function TCustomhazmats.GetSearchIndex: IJanuaField;
  begin
    Result := self.hazmat.SearchIndex;
  end;

  procedure TCustomhazmats.SetSearchIndex(const Value: IJanuaField);
  begin
    self.hazmat.SearchIndex := Value;
  end;

  function TCustomhazmats.GetJguid: IJanuaField;
  begin
    Result := self.hazmat.Jguid;
  end;

  procedure TCustomhazmats.SetJguid(const Value: IJanuaField);
  begin
    self.hazmat.Jguid := Value;
  end;

  function TCustomhazmats.Gethazmat: Ihazmat;
  begin
    Result := self.FRecord as Ihazmat;
  end;

  procedure TCustomhazmats.Sethazmat(const Value: Ihazmat);
  begin
    self.FRecord := Value;
  end;

  { ThazmatFactory }

  class function ThazmatFactory.CreateRecord(const aKey: string): Ihazmat;
  begin
    Result := TCustomhazmat.Create;
  end;

  class function ThazmatFactory.CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): Ihazmats;
  begin
    Result := TCustomhazmats.Create(aName, aLocalStorage, aRemoteStorage);
  end;

end.