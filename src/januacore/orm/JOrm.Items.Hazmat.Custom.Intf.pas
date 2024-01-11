unit JOrm.Items.Hazmat.Custom.Intf;

interface

uses Janua.Orm.Intf;
                           
type

  Ihazmat = interface(IJanuaRecord)
  ['{3D3CF252-74E8-4EDA-803A-1BF271BF886A}']
    function GetId: IJanuaField;
    procedure SetId(const Value: IJanuaField);
    property Id: IJanuaField read GetId write SetId;
    function GetSymbols: IJanuaField;
    procedure SetSymbols(const Value: IJanuaField);
    property Symbols: IJanuaField read GetSymbols write SetSymbols;
    function GetDescription: IJanuaField;
    procedure SetDescription(const Value: IJanuaField);
    property Description: IJanuaField read GetDescription write SetDescription;
    function GetHazClass: IJanuaField;
    procedure SetHazClass(const Value: IJanuaField);
    property HazClass: IJanuaField read GetHazClass write SetHazClass;
    function GetCode: IJanuaField;
    procedure SetCode(const Value: IJanuaField);
    property Code: IJanuaField read GetCode write SetCode;
    function GetPg: IJanuaField;
    procedure SetPg(const Value: IJanuaField);
    property Pg: IJanuaField read GetPg write SetPg;
    function GetLabelCodes: IJanuaField;
    procedure SetLabelCodes(const Value: IJanuaField);
    property LabelCodes: IJanuaField read GetLabelCodes write SetLabelCodes;
    function GetCpecialProvisions: IJanuaField;
    procedure SetCpecialProvisions(const Value: IJanuaField);
    property CpecialProvisions: IJanuaField read GetCpecialProvisions write SetCpecialProvisions;
    function GetExceptions: IJanuaField;
    procedure SetExceptions(const Value: IJanuaField);
    property Exceptions: IJanuaField read GetExceptions write SetExceptions;
    function GetNonBulk: IJanuaField;
    procedure SetNonBulk(const Value: IJanuaField);
    property NonBulk: IJanuaField read GetNonBulk write SetNonBulk;
    function GetBulk: IJanuaField;
    procedure SetBulk(const Value: IJanuaField);
    property Bulk: IJanuaField read GetBulk write SetBulk;
    function GetAircraftPassenger: IJanuaField;
    procedure SetAircraftPassenger(const Value: IJanuaField);
    property AircraftPassenger: IJanuaField read GetAircraftPassenger write SetAircraftPassenger;
    function GetAircraftCargo: IJanuaField;
    procedure SetAircraftCargo(const Value: IJanuaField);
    property AircraftCargo: IJanuaField read GetAircraftCargo write SetAircraftCargo;
    function GetVesselStowageLocation: IJanuaField;
    procedure SetVesselStowageLocation(const Value: IJanuaField);
    property VesselStowageLocation: IJanuaField read GetVesselStowageLocation write SetVesselStowageLocation;
    function GetVesselStowageOther: IJanuaField;
    procedure SetVesselStowageOther(const Value: IJanuaField);
    property VesselStowageOther: IJanuaField read GetVesselStowageOther write SetVesselStowageOther;
    function GetSearchIndex: IJanuaField;
    procedure SetSearchIndex(const Value: IJanuaField);
    property SearchIndex: IJanuaField read GetSearchIndex write SetSearchIndex;
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    property Jguid: IJanuaField read GetJguid write SetJguid;
  end;

  Ihazmats = interface(IJanuaRecordSet)
  ['{AD9CBEC6-8E37-41B3-BB0D-A241A27E04F1}']
    function GetId: IJanuaField;
    procedure SetId(const Value: IJanuaField);
    property Id: IJanuaField read GetId write SetId;
    function GetSymbols: IJanuaField;
    procedure SetSymbols(const Value: IJanuaField);
    property Symbols: IJanuaField read GetSymbols write SetSymbols;
    function GetDescription: IJanuaField;
    procedure SetDescription(const Value: IJanuaField);
    property Description: IJanuaField read GetDescription write SetDescription;
    function GetHazClass: IJanuaField;
    procedure SetHazClass(const Value: IJanuaField);
    property HazClass: IJanuaField read GetHazClass write SetHazClass;
    function GetCode: IJanuaField;
    procedure SetCode(const Value: IJanuaField);
    property Code: IJanuaField read GetCode write SetCode;
    function GetPg: IJanuaField;
    procedure SetPg(const Value: IJanuaField);
    property Pg: IJanuaField read GetPg write SetPg;
    function GetLabelCodes: IJanuaField;
    procedure SetLabelCodes(const Value: IJanuaField);
    property LabelCodes: IJanuaField read GetLabelCodes write SetLabelCodes;
    function GetCpecialProvisions: IJanuaField;
    procedure SetCpecialProvisions(const Value: IJanuaField);
    property CpecialProvisions: IJanuaField read GetCpecialProvisions write SetCpecialProvisions;
    function GetExceptions: IJanuaField;
    procedure SetExceptions(const Value: IJanuaField);
    property Exceptions: IJanuaField read GetExceptions write SetExceptions;
    function GetNonBulk: IJanuaField;
    procedure SetNonBulk(const Value: IJanuaField);
    property NonBulk: IJanuaField read GetNonBulk write SetNonBulk;
    function GetBulk: IJanuaField;
    procedure SetBulk(const Value: IJanuaField);
    property Bulk: IJanuaField read GetBulk write SetBulk;
    function GetAircraftPassenger: IJanuaField;
    procedure SetAircraftPassenger(const Value: IJanuaField);
    property AircraftPassenger: IJanuaField read GetAircraftPassenger write SetAircraftPassenger;
    function GetAircraftCargo: IJanuaField;
    procedure SetAircraftCargo(const Value: IJanuaField);
    property AircraftCargo: IJanuaField read GetAircraftCargo write SetAircraftCargo;
    function GetVesselStowageLocation: IJanuaField;
    procedure SetVesselStowageLocation(const Value: IJanuaField);
    property VesselStowageLocation: IJanuaField read GetVesselStowageLocation write SetVesselStowageLocation;
    function GetVesselStowageOther: IJanuaField;
    procedure SetVesselStowageOther(const Value: IJanuaField);
    property VesselStowageOther: IJanuaField read GetVesselStowageOther write SetVesselStowageOther;
    function GetSearchIndex: IJanuaField;
    procedure SetSearchIndex(const Value: IJanuaField);
    property SearchIndex: IJanuaField read GetSearchIndex write SetSearchIndex;
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    property Jguid: IJanuaField read GetJguid write SetJguid;
    function Gethazmat: Ihazmat;
    procedure Sethazmat(const Value: Ihazmat);
    property hazmat:Ihazmat read Gethazmat write Sethazmat;

  end;

implementation

end.