unit JOrm.Logistic.AWBs.Custom.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, Janua.Core.Types, JOrm.Logistic.AWBRows.Intf, JOrm.Logistic.AWBs.Intf;

// ------------------------------------------ Impl object interface ----------------------------------

type
  TCustomLogisticAWB = class(TJanuaRecord)
  private
    FYear: IJanuaField;
    FOfficeId: IJanuaField;
    FId: IJanuaField;
    FCode: IJanuaField;
    FDbSchemaId: IJanuaField;
    FField1a: IJanuaField;
    FField1b: IJanuaField;
    FField1c: IJanuaField;
    FCin: IJanuaField;
    FField2: IJanuaField;
    FField21: IJanuaField;
    FField22: IJanuaField;
    FField23: IJanuaField;
    FField3: IJanuaField;
    FField31: IJanuaField;
    FField32: IJanuaField;
    FField33: IJanuaField;
    FField4a: IJanuaField;
    FField4b: IJanuaField;
    FField4c: IJanuaField;
    FField4c2: IJanuaField;
    FField4c3: IJanuaField;
    FField5: IJanuaField;
    FField6: IJanuaField;
    FField7: IJanuaField;
    FField8: IJanuaField;
    FField8a: IJanuaField;
    FField8b: IJanuaField;
    FField8c: IJanuaField;
    FField8d: IJanuaField;
    FField8c1: IJanuaField;
    FField8d1: IJanuaField;
    FField8e: IJanuaField;
    FField8f: IJanuaField;
    FField8f1: IJanuaField;
    FField9: IJanuaField;
    FField10: IJanuaField;
    FField11: IJanuaField;
    FField12: IJanuaField;
    FField13: IJanuaField;
    FField14: IJanuaField;
    FField15: IJanuaField;
    FField16: IJanuaField;
    FField17: IJanuaField;
    FField28a: IJanuaField;
    FField28b: IJanuaField;
    FField29a: IJanuaField;
    FField29b: IJanuaField;
    FField30a: IJanuaField;
    FField30b: IJanuaField;
    FField31a: IJanuaField;
    FField31b: IJanuaField;
    FField32a: IJanuaField;
    FField32b: IJanuaField;
    FField33a: IJanuaField;
    FField33b: IJanuaField;
    FField34: IJanuaField;
    FField35: IJanuaField;
    FField36: IJanuaField;
    FField37: IJanuaField;
    FField38: IJanuaField;
    FHi1: IJanuaField;
    FHi2: IJanuaField;
    FHi3: IJanuaField;
    FCodother1: IJanuaField;
    FCodother2: IJanuaField;
    FCodother3: IJanuaField;
    FCodother4: IJanuaField;
    FCodother5: IJanuaField;
    FCodother6: IJanuaField;
    FCodother7: IJanuaField;
    FCodother8: IJanuaField;
    FCodother9: IJanuaField;
    FAmountother9: IJanuaField;
    FAmountother8: IJanuaField;
    FAmountother7: IJanuaField;
    FAmountother6: IJanuaField;
    FAmountother5: IJanuaField;
    FAmountother4: IJanuaField;
    FAmountother3: IJanuaField;
    FAmountother2: IJanuaField;
    FAmountother1: IJanuaField;
    FFieldhead: IJanuaField;
    FPartialmaster: IJanuaField;
    FPartialmasteryear: IJanuaField;
    FCurrencyId: IJanuaField;
    FAwbTypeId: IJanuaField;
    FJguid: IJanuaField;
    FNetamount: IJanuaField;
    FProgressive: IJanuaField;
    FMawbcosts: IJanuaField;
    FMawbothcosts: IJanuaField;
    FTaxableweight: IJanuaField;
    FMasterdate: IJanuaField;
    FEstimateflight: IJanuaField;
    FEffectiveflight: IJanuaField;
    FEtdestimate: IJanuaField;
    FEtdeffective: IJanuaField;
    FEtaestimate: IJanuaField;
    FEtaeffective: IJanuaField;
    FTransportcost: IJanuaField;
    FContainerseals: IJanuaField;
    FMasternotes: IJanuaField;
    FAwbType: IJanuaField;
    FOrderId: IJanuaField;
    FCustomsDocType: IJanuaField;
    FPalletcost: IJanuaField;
    FYearNumber: IJanuaField;
    FField19a: IJanuaField;
    FBranchlog: IJanuaField;
    FDeleted: IJanuaField;
    FCarrierId: IJanuaField;
    FCarrierName: IJanuaField;
    FCarrierCode: IJanuaField;
    FShipperId: IJanuaField;
    FShipperCode: IJanuaField;
    FShipperName: IJanuaField;
    FConsigneeId: IJanuaField;
    FConsigneeName: IJanuaField;
    FConsigneeCode: IJanuaField;
    FIataAgentId: IJanuaField;
    FIataAgentCode: IJanuaField;
    FIataAgentName: IJanuaField;
  protected
    function GetYear: IJanuaField;
    procedure SetYear(const Value: IJanuaField);
    function GetOfficeId: IJanuaField;
    procedure SetOfficeId(const Value: IJanuaField);
    function GetId: IJanuaField;
    procedure SetId(const Value: IJanuaField);
    function GetCode: IJanuaField;
    procedure SetCode(const Value: IJanuaField);
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    function GetField1a: IJanuaField;
    procedure SetField1a(const Value: IJanuaField);
    function GetField1b: IJanuaField;
    procedure SetField1b(const Value: IJanuaField);
    function GetField1c: IJanuaField;
    procedure SetField1c(const Value: IJanuaField);
    function GetCin: IJanuaField;
    procedure SetCin(const Value: IJanuaField);
    function GetField2: IJanuaField;
    procedure SetField2(const Value: IJanuaField);
    function GetField21: IJanuaField;
    procedure SetField21(const Value: IJanuaField);
    function GetField22: IJanuaField;
    procedure SetField22(const Value: IJanuaField);
    function GetField23: IJanuaField;
    procedure SetField23(const Value: IJanuaField);
    function GetField3: IJanuaField;
    procedure SetField3(const Value: IJanuaField);
    function GetField31: IJanuaField;
    procedure SetField31(const Value: IJanuaField);
    function GetField32: IJanuaField;
    procedure SetField32(const Value: IJanuaField);
    function GetField33: IJanuaField;
    procedure SetField33(const Value: IJanuaField);
    function GetField4a: IJanuaField;
    procedure SetField4a(const Value: IJanuaField);
    function GetField4b: IJanuaField;
    procedure SetField4b(const Value: IJanuaField);
    function GetField4c: IJanuaField;
    procedure SetField4c(const Value: IJanuaField);
    function GetField4c2: IJanuaField;
    procedure SetField4c2(const Value: IJanuaField);
    function GetField4c3: IJanuaField;
    procedure SetField4c3(const Value: IJanuaField);
    function GetField5: IJanuaField;
    procedure SetField5(const Value: IJanuaField);
    function GetField6: IJanuaField;
    procedure SetField6(const Value: IJanuaField);
    function GetField7: IJanuaField;
    procedure SetField7(const Value: IJanuaField);
    function GetField8: IJanuaField;
    procedure SetField8(const Value: IJanuaField);
    function GetField8a: IJanuaField;
    procedure SetField8a(const Value: IJanuaField);
    function GetField8b: IJanuaField;
    procedure SetField8b(const Value: IJanuaField);
    function GetField8c: IJanuaField;
    procedure SetField8c(const Value: IJanuaField);
    function GetField8d: IJanuaField;
    procedure SetField8d(const Value: IJanuaField);
    function GetField8c1: IJanuaField;
    procedure SetField8c1(const Value: IJanuaField);
    function GetField8d1: IJanuaField;
    procedure SetField8d1(const Value: IJanuaField);
    function GetField8e: IJanuaField;
    procedure SetField8e(const Value: IJanuaField);
    function GetField8f: IJanuaField;
    procedure SetField8f(const Value: IJanuaField);
    function GetField8f1: IJanuaField;
    procedure SetField8f1(const Value: IJanuaField);
    function GetField9: IJanuaField;
    procedure SetField9(const Value: IJanuaField);
    function GetField10: IJanuaField;
    procedure SetField10(const Value: IJanuaField);
    function GetField11: IJanuaField;
    procedure SetField11(const Value: IJanuaField);
    function GetField12: IJanuaField;
    procedure SetField12(const Value: IJanuaField);
    function GetField13: IJanuaField;
    procedure SetField13(const Value: IJanuaField);
    function GetField14: IJanuaField;
    procedure SetField14(const Value: IJanuaField);
    function GetField15: IJanuaField;
    procedure SetField15(const Value: IJanuaField);
    function GetField16: IJanuaField;
    procedure SetField16(const Value: IJanuaField);
    function GetField17: IJanuaField;
    procedure SetField17(const Value: IJanuaField);
    function GetField28a: IJanuaField;
    procedure SetField28a(const Value: IJanuaField);
    function GetField28b: IJanuaField;
    procedure SetField28b(const Value: IJanuaField);
    function GetField29a: IJanuaField;
    procedure SetField29a(const Value: IJanuaField);
    function GetField29b: IJanuaField;
    procedure SetField29b(const Value: IJanuaField);
    function GetField30a: IJanuaField;
    procedure SetField30a(const Value: IJanuaField);
    function GetField30b: IJanuaField;
    procedure SetField30b(const Value: IJanuaField);
    function GetField31a: IJanuaField;
    procedure SetField31a(const Value: IJanuaField);
    function GetField31b: IJanuaField;
    procedure SetField31b(const Value: IJanuaField);
    function GetField32a: IJanuaField;
    procedure SetField32a(const Value: IJanuaField);
    function GetField32b: IJanuaField;
    procedure SetField32b(const Value: IJanuaField);
    function GetField33a: IJanuaField;
    procedure SetField33a(const Value: IJanuaField);
    function GetField33b: IJanuaField;
    procedure SetField33b(const Value: IJanuaField);
    function GetField34: IJanuaField;
    procedure SetField34(const Value: IJanuaField);
    function GetField35: IJanuaField;
    procedure SetField35(const Value: IJanuaField);
    function GetField36: IJanuaField;
    procedure SetField36(const Value: IJanuaField);
    function GetField37: IJanuaField;
    procedure SetField37(const Value: IJanuaField);
    function GetField38: IJanuaField;
    procedure SetField38(const Value: IJanuaField);
    function GetHi1: IJanuaField;
    procedure SetHi1(const Value: IJanuaField);
    function GetHi2: IJanuaField;
    procedure SetHi2(const Value: IJanuaField);
    function GetHi3: IJanuaField;
    procedure SetHi3(const Value: IJanuaField);
    function GetCodother1: IJanuaField;
    procedure SetCodother1(const Value: IJanuaField);
    function GetCodother2: IJanuaField;
    procedure SetCodother2(const Value: IJanuaField);
    function GetCodother3: IJanuaField;
    procedure SetCodother3(const Value: IJanuaField);
    function GetCodother4: IJanuaField;
    procedure SetCodother4(const Value: IJanuaField);
    function GetCodother5: IJanuaField;
    procedure SetCodother5(const Value: IJanuaField);
    function GetCodother6: IJanuaField;
    procedure SetCodother6(const Value: IJanuaField);
    function GetCodother7: IJanuaField;
    procedure SetCodother7(const Value: IJanuaField);
    function GetCodother8: IJanuaField;
    procedure SetCodother8(const Value: IJanuaField);
    function GetCodother9: IJanuaField;
    procedure SetCodother9(const Value: IJanuaField);
    function GetAmountother9: IJanuaField;
    procedure SetAmountother9(const Value: IJanuaField);
    function GetAmountother8: IJanuaField;
    procedure SetAmountother8(const Value: IJanuaField);
    function GetAmountother7: IJanuaField;
    procedure SetAmountother7(const Value: IJanuaField);
    function GetAmountother6: IJanuaField;
    procedure SetAmountother6(const Value: IJanuaField);
    function GetAmountother5: IJanuaField;
    procedure SetAmountother5(const Value: IJanuaField);
    function GetAmountother4: IJanuaField;
    procedure SetAmountother4(const Value: IJanuaField);
    function GetAmountother3: IJanuaField;
    procedure SetAmountother3(const Value: IJanuaField);
    function GetAmountother2: IJanuaField;
    procedure SetAmountother2(const Value: IJanuaField);
    function GetAmountother1: IJanuaField;
    procedure SetAmountother1(const Value: IJanuaField);
    function GetFieldhead: IJanuaField;
    procedure SetFieldhead(const Value: IJanuaField);
    function GetPartialmaster: IJanuaField;
    procedure SetPartialmaster(const Value: IJanuaField);
    function GetPartialmasteryear: IJanuaField;
    procedure SetPartialmasteryear(const Value: IJanuaField);
    function GetCurrencyId: IJanuaField;
    procedure SetCurrencyId(const Value: IJanuaField);
    function GetAwbTypeId: IJanuaField;
    procedure SetAwbTypeId(const Value: IJanuaField);
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    function GetNetamount: IJanuaField;
    procedure SetNetamount(const Value: IJanuaField);
    function GetProgressive: IJanuaField;
    procedure SetProgressive(const Value: IJanuaField);
    function GetMawbcosts: IJanuaField;
    procedure SetMawbcosts(const Value: IJanuaField);
    function GetMawbothcosts: IJanuaField;
    procedure SetMawbothcosts(const Value: IJanuaField);
    function GetTaxableweight: IJanuaField;
    procedure SetTaxableweight(const Value: IJanuaField);
    function GetMasterdate: IJanuaField;
    procedure SetMasterdate(const Value: IJanuaField);
    function GetEstimateflight: IJanuaField;
    procedure SetEstimateflight(const Value: IJanuaField);
    function GetEffectiveflight: IJanuaField;
    procedure SetEffectiveflight(const Value: IJanuaField);
    function GetEtdestimate: IJanuaField;
    procedure SetEtdestimate(const Value: IJanuaField);
    function GetEtdeffective: IJanuaField;
    procedure SetEtdeffective(const Value: IJanuaField);
    function GetEtaestimate: IJanuaField;
    procedure SetEtaestimate(const Value: IJanuaField);
    function GetEtaeffective: IJanuaField;
    procedure SetEtaeffective(const Value: IJanuaField);
    function GetTransportcost: IJanuaField;
    procedure SetTransportcost(const Value: IJanuaField);
    function GetContainerseals: IJanuaField;
    procedure SetContainerseals(const Value: IJanuaField);
    function GetMasternotes: IJanuaField;
    procedure SetMasternotes(const Value: IJanuaField);
    function GetAwbType: IJanuaField;
    procedure SetAwbType(const Value: IJanuaField);
    function GetOrderId: IJanuaField;
    procedure SetOrderId(const Value: IJanuaField);
    function GetCustomsDocType: IJanuaField;
    procedure SetCustomsDocType(const Value: IJanuaField);
    function GetPalletcost: IJanuaField;
    procedure SetPalletcost(const Value: IJanuaField);
    function GetYearNumber: IJanuaField;
    procedure SetYearNumber(const Value: IJanuaField);
    function GetField19a: IJanuaField;
    procedure SetField19a(const Value: IJanuaField);
    function GetBranchlog: IJanuaField;
    procedure SetBranchlog(const Value: IJanuaField);
    function GetDeleted: IJanuaField;
    procedure SetDeleted(const Value: IJanuaField);
    function GetCarrierId: IJanuaField;
    procedure SetCarrierId(const Value: IJanuaField);
    function GetCarrierName: IJanuaField;
    procedure SetCarrierName(const Value: IJanuaField);
    function GetCarrierCode: IJanuaField;
    procedure SetCarrierCode(const Value: IJanuaField);
    function GetShipperId: IJanuaField;
    procedure SetShipperId(const Value: IJanuaField);
    function GetShipperCode: IJanuaField;
    procedure SetShipperCode(const Value: IJanuaField);
    function GetShipperName: IJanuaField;
    procedure SetShipperName(const Value: IJanuaField);
    function GetConsigneeId: IJanuaField;
    procedure SetConsigneeId(const Value: IJanuaField);
    function GetConsigneeName: IJanuaField;
    procedure SetConsigneeName(const Value: IJanuaField);
    function GetConsigneeCode: IJanuaField;
    procedure SetConsigneeCode(const Value: IJanuaField);
    function GetIataAgentId: IJanuaField;
    procedure SetIataAgentId(const Value: IJanuaField);
    function GetIataAgentCode: IJanuaField;
    procedure SetIataAgentCode(const Value: IJanuaField);
    function GetIataAgentName: IJanuaField;
    procedure SetIataAgentName(const Value: IJanuaField);
  public
    constructor Create; override;
    property Year: IJanuaField read GetYear write SetYear;
    property OfficeId: IJanuaField read GetOfficeId write SetOfficeId;
    property Id: IJanuaField read GetId write SetId;
    property Code: IJanuaField read GetCode write SetCode;
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    property Field1a: IJanuaField read GetField1a write SetField1a;
    property Field1b: IJanuaField read GetField1b write SetField1b;
    property Field1c: IJanuaField read GetField1c write SetField1c;
    property Cin: IJanuaField read GetCin write SetCin;
    property Field2: IJanuaField read GetField2 write SetField2;
    property Field21: IJanuaField read GetField21 write SetField21;
    property Field22: IJanuaField read GetField22 write SetField22;
    property Field23: IJanuaField read GetField23 write SetField23;
    property Field3: IJanuaField read GetField3 write SetField3;
    property Field31: IJanuaField read GetField31 write SetField31;
    property Field32: IJanuaField read GetField32 write SetField32;
    property Field33: IJanuaField read GetField33 write SetField33;
    property Field4a: IJanuaField read GetField4a write SetField4a;
    property Field4b: IJanuaField read GetField4b write SetField4b;
    property Field4c: IJanuaField read GetField4c write SetField4c;
    property Field4c2: IJanuaField read GetField4c2 write SetField4c2;
    property Field4c3: IJanuaField read GetField4c3 write SetField4c3;
    property Field5: IJanuaField read GetField5 write SetField5;
    property Field6: IJanuaField read GetField6 write SetField6;
    property Field7: IJanuaField read GetField7 write SetField7;
    property Field8: IJanuaField read GetField8 write SetField8;
    property Field8a: IJanuaField read GetField8a write SetField8a;
    property Field8b: IJanuaField read GetField8b write SetField8b;
    property Field8c: IJanuaField read GetField8c write SetField8c;
    property Field8d: IJanuaField read GetField8d write SetField8d;
    property Field8c1: IJanuaField read GetField8c1 write SetField8c1;
    property Field8d1: IJanuaField read GetField8d1 write SetField8d1;
    property Field8e: IJanuaField read GetField8e write SetField8e;
    property Field8f: IJanuaField read GetField8f write SetField8f;
    property Field8f1: IJanuaField read GetField8f1 write SetField8f1;
    property Field9: IJanuaField read GetField9 write SetField9;
    property Field10: IJanuaField read GetField10 write SetField10;
    property Field11: IJanuaField read GetField11 write SetField11;
    property Field12: IJanuaField read GetField12 write SetField12;
    property Field13: IJanuaField read GetField13 write SetField13;
    property Field14: IJanuaField read GetField14 write SetField14;
    property Field15: IJanuaField read GetField15 write SetField15;
    property Field16: IJanuaField read GetField16 write SetField16;
    property Field17: IJanuaField read GetField17 write SetField17;
    property Field28a: IJanuaField read GetField28a write SetField28a;
    property Field28b: IJanuaField read GetField28b write SetField28b;
    property Field29a: IJanuaField read GetField29a write SetField29a;
    property Field29b: IJanuaField read GetField29b write SetField29b;
    property Field30a: IJanuaField read GetField30a write SetField30a;
    property Field30b: IJanuaField read GetField30b write SetField30b;
    property Field31a: IJanuaField read GetField31a write SetField31a;
    property Field31b: IJanuaField read GetField31b write SetField31b;
    property Field32a: IJanuaField read GetField32a write SetField32a;
    property Field32b: IJanuaField read GetField32b write SetField32b;
    property Field33a: IJanuaField read GetField33a write SetField33a;
    property Field33b: IJanuaField read GetField33b write SetField33b;
    property Field34: IJanuaField read GetField34 write SetField34;
    property Field35: IJanuaField read GetField35 write SetField35;
    property Field36: IJanuaField read GetField36 write SetField36;
    property Field37: IJanuaField read GetField37 write SetField37;
    property Field38: IJanuaField read GetField38 write SetField38;
    property Hi1: IJanuaField read GetHi1 write SetHi1;
    property Hi2: IJanuaField read GetHi2 write SetHi2;
    property Hi3: IJanuaField read GetHi3 write SetHi3;
    property Codother1: IJanuaField read GetCodother1 write SetCodother1;
    property Codother2: IJanuaField read GetCodother2 write SetCodother2;
    property Codother3: IJanuaField read GetCodother3 write SetCodother3;
    property Codother4: IJanuaField read GetCodother4 write SetCodother4;
    property Codother5: IJanuaField read GetCodother5 write SetCodother5;
    property Codother6: IJanuaField read GetCodother6 write SetCodother6;
    property Codother7: IJanuaField read GetCodother7 write SetCodother7;
    property Codother8: IJanuaField read GetCodother8 write SetCodother8;
    property Codother9: IJanuaField read GetCodother9 write SetCodother9;
    property Amountother9: IJanuaField read GetAmountother9 write SetAmountother9;
    property Amountother8: IJanuaField read GetAmountother8 write SetAmountother8;
    property Amountother7: IJanuaField read GetAmountother7 write SetAmountother7;
    property Amountother6: IJanuaField read GetAmountother6 write SetAmountother6;
    property Amountother5: IJanuaField read GetAmountother5 write SetAmountother5;
    property Amountother4: IJanuaField read GetAmountother4 write SetAmountother4;
    property Amountother3: IJanuaField read GetAmountother3 write SetAmountother3;
    property Amountother2: IJanuaField read GetAmountother2 write SetAmountother2;
    property Amountother1: IJanuaField read GetAmountother1 write SetAmountother1;
    property Fieldhead: IJanuaField read GetFieldhead write SetFieldhead;
    property Partialmaster: IJanuaField read GetPartialmaster write SetPartialmaster;
    property Partialmasteryear: IJanuaField read GetPartialmasteryear write SetPartialmasteryear;
    property CurrencyId: IJanuaField read GetCurrencyId write SetCurrencyId;
    property AwbTypeId: IJanuaField read GetAwbTypeId write SetAwbTypeId;
    property Jguid: IJanuaField read GetJguid write SetJguid;
    property Netamount: IJanuaField read GetNetamount write SetNetamount;
    property Progressive: IJanuaField read GetProgressive write SetProgressive;
    property Mawbcosts: IJanuaField read GetMawbcosts write SetMawbcosts;
    property Mawbothcosts: IJanuaField read GetMawbothcosts write SetMawbothcosts;
    property Taxableweight: IJanuaField read GetTaxableweight write SetTaxableweight;
    property Masterdate: IJanuaField read GetMasterdate write SetMasterdate;
    property Estimateflight: IJanuaField read GetEstimateflight write SetEstimateflight;
    property Effectiveflight: IJanuaField read GetEffectiveflight write SetEffectiveflight;
    property Etdestimate: IJanuaField read GetEtdestimate write SetEtdestimate;
    property Etdeffective: IJanuaField read GetEtdeffective write SetEtdeffective;
    property Etaestimate: IJanuaField read GetEtaestimate write SetEtaestimate;
    property Etaeffective: IJanuaField read GetEtaeffective write SetEtaeffective;
    property Transportcost: IJanuaField read GetTransportcost write SetTransportcost;
    property Containerseals: IJanuaField read GetContainerseals write SetContainerseals;
    property Masternotes: IJanuaField read GetMasternotes write SetMasternotes;
    property AwbType: IJanuaField read GetAwbType write SetAwbType;
    property OrderId: IJanuaField read GetOrderId write SetOrderId;
    property CustomsDocType: IJanuaField read GetCustomsDocType write SetCustomsDocType;
    property Palletcost: IJanuaField read GetPalletcost write SetPalletcost;
    property YearNumber: IJanuaField read GetYearNumber write SetYearNumber;
    property Field19a: IJanuaField read GetField19a write SetField19a;
    property Branchlog: IJanuaField read GetBranchlog write SetBranchlog;
    property Deleted: IJanuaField read GetDeleted write SetDeleted;
    property CarrierId: IJanuaField read GetCarrierId write SetCarrierId;
    property CarrierName: IJanuaField read GetCarrierName write SetCarrierName;
    property CarrierCode: IJanuaField read GetCarrierCode write SetCarrierCode;
    property ShipperId: IJanuaField read GetShipperId write SetShipperId;
    property ShipperCode: IJanuaField read GetShipperCode write SetShipperCode;
    property ShipperName: IJanuaField read GetShipperName write SetShipperName;
    property ConsigneeId: IJanuaField read GetConsigneeId write SetConsigneeId;
    property ConsigneeName: IJanuaField read GetConsigneeName write SetConsigneeName;
    property ConsigneeCode: IJanuaField read GetConsigneeCode write SetConsigneeCode;
    property IataAgentId: IJanuaField read GetIataAgentId write SetIataAgentId;
    property IataAgentCode: IJanuaField read GetIataAgentCode write SetIataAgentCode;
    property IataAgentName: IJanuaField read GetIataAgentName write SetIataAgentName;

  end;

  TCustomLogisticAWBs = class(TJanuaRecordSet, IJanuaRecordSet)
  private
    function GetYear: IJanuaField;
    procedure SetYear(const Value: IJanuaField);
    function GetOfficeId: IJanuaField;
    procedure SetOfficeId(const Value: IJanuaField);
    function GetId: IJanuaField;
    procedure SetId(const Value: IJanuaField);
    function GetCode: IJanuaField;
    procedure SetCode(const Value: IJanuaField);
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    function GetField1a: IJanuaField;
    procedure SetField1a(const Value: IJanuaField);
    function GetField1b: IJanuaField;
    procedure SetField1b(const Value: IJanuaField);
    function GetField1c: IJanuaField;
    procedure SetField1c(const Value: IJanuaField);
    function GetCin: IJanuaField;
    procedure SetCin(const Value: IJanuaField);
    function GetField2: IJanuaField;
    procedure SetField2(const Value: IJanuaField);
    function GetField21: IJanuaField;
    procedure SetField21(const Value: IJanuaField);
    function GetField22: IJanuaField;
    procedure SetField22(const Value: IJanuaField);
    function GetField23: IJanuaField;
    procedure SetField23(const Value: IJanuaField);
    function GetField3: IJanuaField;
    procedure SetField3(const Value: IJanuaField);
    function GetField31: IJanuaField;
    procedure SetField31(const Value: IJanuaField);
    function GetField32: IJanuaField;
    procedure SetField32(const Value: IJanuaField);
    function GetField33: IJanuaField;
    procedure SetField33(const Value: IJanuaField);
    function GetField4a: IJanuaField;
    procedure SetField4a(const Value: IJanuaField);
    function GetField4b: IJanuaField;
    procedure SetField4b(const Value: IJanuaField);
    function GetField4c: IJanuaField;
    procedure SetField4c(const Value: IJanuaField);
    function GetField4c2: IJanuaField;
    procedure SetField4c2(const Value: IJanuaField);
    function GetField4c3: IJanuaField;
    procedure SetField4c3(const Value: IJanuaField);
    function GetField5: IJanuaField;
    procedure SetField5(const Value: IJanuaField);
    function GetField6: IJanuaField;
    procedure SetField6(const Value: IJanuaField);
    function GetField7: IJanuaField;
    procedure SetField7(const Value: IJanuaField);
    function GetField8: IJanuaField;
    procedure SetField8(const Value: IJanuaField);
    function GetField8a: IJanuaField;
    procedure SetField8a(const Value: IJanuaField);
    function GetField8b: IJanuaField;
    procedure SetField8b(const Value: IJanuaField);
    function GetField8c: IJanuaField;
    procedure SetField8c(const Value: IJanuaField);
    function GetField8d: IJanuaField;
    procedure SetField8d(const Value: IJanuaField);
    function GetField8c1: IJanuaField;
    procedure SetField8c1(const Value: IJanuaField);
    function GetField8d1: IJanuaField;
    procedure SetField8d1(const Value: IJanuaField);
    function GetField8e: IJanuaField;
    procedure SetField8e(const Value: IJanuaField);
    function GetField8f: IJanuaField;
    procedure SetField8f(const Value: IJanuaField);
    function GetField8f1: IJanuaField;
    procedure SetField8f1(const Value: IJanuaField);
    function GetField9: IJanuaField;
    procedure SetField9(const Value: IJanuaField);
    function GetField10: IJanuaField;
    procedure SetField10(const Value: IJanuaField);
    function GetField11: IJanuaField;
    procedure SetField11(const Value: IJanuaField);
    function GetField12: IJanuaField;
    procedure SetField12(const Value: IJanuaField);
    function GetField13: IJanuaField;
    procedure SetField13(const Value: IJanuaField);
    function GetField14: IJanuaField;
    procedure SetField14(const Value: IJanuaField);
    function GetField15: IJanuaField;
    procedure SetField15(const Value: IJanuaField);
    function GetField16: IJanuaField;
    procedure SetField16(const Value: IJanuaField);
    function GetField17: IJanuaField;
    procedure SetField17(const Value: IJanuaField);
    function GetField28a: IJanuaField;
    procedure SetField28a(const Value: IJanuaField);
    function GetField28b: IJanuaField;
    procedure SetField28b(const Value: IJanuaField);
    function GetField29a: IJanuaField;
    procedure SetField29a(const Value: IJanuaField);
    function GetField29b: IJanuaField;
    procedure SetField29b(const Value: IJanuaField);
    function GetField30a: IJanuaField;
    procedure SetField30a(const Value: IJanuaField);
    function GetField30b: IJanuaField;
    procedure SetField30b(const Value: IJanuaField);
    function GetField31a: IJanuaField;
    procedure SetField31a(const Value: IJanuaField);
    function GetField31b: IJanuaField;
    procedure SetField31b(const Value: IJanuaField);
    function GetField32a: IJanuaField;
    procedure SetField32a(const Value: IJanuaField);
    function GetField32b: IJanuaField;
    procedure SetField32b(const Value: IJanuaField);
    function GetField33a: IJanuaField;
    procedure SetField33a(const Value: IJanuaField);
    function GetField33b: IJanuaField;
    procedure SetField33b(const Value: IJanuaField);
    function GetField34: IJanuaField;
    procedure SetField34(const Value: IJanuaField);
    function GetField35: IJanuaField;
    procedure SetField35(const Value: IJanuaField);
    function GetField36: IJanuaField;
    procedure SetField36(const Value: IJanuaField);
    function GetField37: IJanuaField;
    procedure SetField37(const Value: IJanuaField);
    function GetField38: IJanuaField;
    procedure SetField38(const Value: IJanuaField);
    function GetHi1: IJanuaField;
    procedure SetHi1(const Value: IJanuaField);
    function GetHi2: IJanuaField;
    procedure SetHi2(const Value: IJanuaField);
    function GetHi3: IJanuaField;
    procedure SetHi3(const Value: IJanuaField);
    function GetCodother1: IJanuaField;
    procedure SetCodother1(const Value: IJanuaField);
    function GetCodother2: IJanuaField;
    procedure SetCodother2(const Value: IJanuaField);
    function GetCodother3: IJanuaField;
    procedure SetCodother3(const Value: IJanuaField);
    function GetCodother4: IJanuaField;
    procedure SetCodother4(const Value: IJanuaField);
    function GetCodother5: IJanuaField;
    procedure SetCodother5(const Value: IJanuaField);
    function GetCodother6: IJanuaField;
    procedure SetCodother6(const Value: IJanuaField);
    function GetCodother7: IJanuaField;
    procedure SetCodother7(const Value: IJanuaField);
    function GetCodother8: IJanuaField;
    procedure SetCodother8(const Value: IJanuaField);
    function GetCodother9: IJanuaField;
    procedure SetCodother9(const Value: IJanuaField);
    function GetAmountother9: IJanuaField;
    procedure SetAmountother9(const Value: IJanuaField);
    function GetAmountother8: IJanuaField;
    procedure SetAmountother8(const Value: IJanuaField);
    function GetAmountother7: IJanuaField;
    procedure SetAmountother7(const Value: IJanuaField);
    function GetAmountother6: IJanuaField;
    procedure SetAmountother6(const Value: IJanuaField);
    function GetAmountother5: IJanuaField;
    procedure SetAmountother5(const Value: IJanuaField);
    function GetAmountother4: IJanuaField;
    procedure SetAmountother4(const Value: IJanuaField);
    function GetAmountother3: IJanuaField;
    procedure SetAmountother3(const Value: IJanuaField);
    function GetAmountother2: IJanuaField;
    procedure SetAmountother2(const Value: IJanuaField);
    function GetAmountother1: IJanuaField;
    procedure SetAmountother1(const Value: IJanuaField);
    function GetFieldhead: IJanuaField;
    procedure SetFieldhead(const Value: IJanuaField);
    function GetPartialmaster: IJanuaField;
    procedure SetPartialmaster(const Value: IJanuaField);
    function GetPartialmasteryear: IJanuaField;
    procedure SetPartialmasteryear(const Value: IJanuaField);
    function GetCurrencyId: IJanuaField;
    procedure SetCurrencyId(const Value: IJanuaField);
    function GetAwbTypeId: IJanuaField;
    procedure SetAwbTypeId(const Value: IJanuaField);
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    function GetNetamount: IJanuaField;
    procedure SetNetamount(const Value: IJanuaField);
    function GetProgressive: IJanuaField;
    procedure SetProgressive(const Value: IJanuaField);
    function GetMawbcosts: IJanuaField;
    procedure SetMawbcosts(const Value: IJanuaField);
    function GetMawbothcosts: IJanuaField;
    procedure SetMawbothcosts(const Value: IJanuaField);
    function GetTaxableweight: IJanuaField;
    procedure SetTaxableweight(const Value: IJanuaField);
    function GetMasterdate: IJanuaField;
    procedure SetMasterdate(const Value: IJanuaField);
    function GetEstimateflight: IJanuaField;
    procedure SetEstimateflight(const Value: IJanuaField);
    function GetEffectiveflight: IJanuaField;
    procedure SetEffectiveflight(const Value: IJanuaField);
    function GetEtdestimate: IJanuaField;
    procedure SetEtdestimate(const Value: IJanuaField);
    function GetEtdeffective: IJanuaField;
    procedure SetEtdeffective(const Value: IJanuaField);
    function GetEtaestimate: IJanuaField;
    procedure SetEtaestimate(const Value: IJanuaField);
    function GetEtaeffective: IJanuaField;
    procedure SetEtaeffective(const Value: IJanuaField);
    function GetTransportcost: IJanuaField;
    procedure SetTransportcost(const Value: IJanuaField);
    function GetContainerseals: IJanuaField;
    procedure SetContainerseals(const Value: IJanuaField);
    function GetMasternotes: IJanuaField;
    procedure SetMasternotes(const Value: IJanuaField);
    function GetAwbType: IJanuaField;
    procedure SetAwbType(const Value: IJanuaField);
    function GetOrderId: IJanuaField;
    procedure SetOrderId(const Value: IJanuaField);
    function GetCustomsDocType: IJanuaField;
    procedure SetCustomsDocType(const Value: IJanuaField);
    function GetPalletcost: IJanuaField;
    procedure SetPalletcost(const Value: IJanuaField);
    function GetYearNumber: IJanuaField;
    procedure SetYearNumber(const Value: IJanuaField);
    function GetField19a: IJanuaField;
    procedure SetField19a(const Value: IJanuaField);
    function GetBranchlog: IJanuaField;
    procedure SetBranchlog(const Value: IJanuaField);
    function GetDeleted: IJanuaField;
    procedure SetDeleted(const Value: IJanuaField);
    function GetCarrierId: IJanuaField;
    procedure SetCarrierId(const Value: IJanuaField);
    function GetCarrierName: IJanuaField;
    procedure SetCarrierName(const Value: IJanuaField);
    function GetCarrierCode: IJanuaField;
    procedure SetCarrierCode(const Value: IJanuaField);
    function GetShipperId: IJanuaField;
    procedure SetShipperId(const Value: IJanuaField);
    function GetShipperCode: IJanuaField;
    procedure SetShipperCode(const Value: IJanuaField);
    function GetShipperName: IJanuaField;
    procedure SetShipperName(const Value: IJanuaField);
    function GetConsigneeId: IJanuaField;
    procedure SetConsigneeId(const Value: IJanuaField);
    function GetConsigneeName: IJanuaField;
    procedure SetConsigneeName(const Value: IJanuaField);
    function GetConsigneeCode: IJanuaField;
    procedure SetConsigneeCode(const Value: IJanuaField);
    function GetIataAgentId: IJanuaField;
    procedure SetIataAgentId(const Value: IJanuaField);
    function GetIataAgentCode: IJanuaField;
    procedure SetIataAgentCode(const Value: IJanuaField);
    function GetIataAgentName: IJanuaField;
    procedure SetIataAgentName(const Value: IJanuaField);
    function GetLogisticAWB: ILogisticAWB;
    procedure SetLogisticAWB(const Value: ILogisticAWB);
  public
    constructor Create; override;
    property Year: IJanuaField read GetYear write SetYear;
    property OfficeId: IJanuaField read GetOfficeId write SetOfficeId;
    property Id: IJanuaField read GetId write SetId;
    property Code: IJanuaField read GetCode write SetCode;
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    property Field1a: IJanuaField read GetField1a write SetField1a;
    property Field1b: IJanuaField read GetField1b write SetField1b;
    property Field1c: IJanuaField read GetField1c write SetField1c;
    property Cin: IJanuaField read GetCin write SetCin;
    property Field2: IJanuaField read GetField2 write SetField2;
    property Field21: IJanuaField read GetField21 write SetField21;
    property Field22: IJanuaField read GetField22 write SetField22;
    property Field23: IJanuaField read GetField23 write SetField23;
    property Field3: IJanuaField read GetField3 write SetField3;
    property Field31: IJanuaField read GetField31 write SetField31;
    property Field32: IJanuaField read GetField32 write SetField32;
    property Field33: IJanuaField read GetField33 write SetField33;
    property Field4a: IJanuaField read GetField4a write SetField4a;
    property Field4b: IJanuaField read GetField4b write SetField4b;
    property Field4c: IJanuaField read GetField4c write SetField4c;
    property Field4c2: IJanuaField read GetField4c2 write SetField4c2;
    property Field4c3: IJanuaField read GetField4c3 write SetField4c3;
    property Field5: IJanuaField read GetField5 write SetField5;
    property Field6: IJanuaField read GetField6 write SetField6;
    property Field7: IJanuaField read GetField7 write SetField7;
    property Field8: IJanuaField read GetField8 write SetField8;
    property Field8a: IJanuaField read GetField8a write SetField8a;
    property Field8b: IJanuaField read GetField8b write SetField8b;
    property Field8c: IJanuaField read GetField8c write SetField8c;
    property Field8d: IJanuaField read GetField8d write SetField8d;
    property Field8c1: IJanuaField read GetField8c1 write SetField8c1;
    property Field8d1: IJanuaField read GetField8d1 write SetField8d1;
    property Field8e: IJanuaField read GetField8e write SetField8e;
    property Field8f: IJanuaField read GetField8f write SetField8f;
    property Field8f1: IJanuaField read GetField8f1 write SetField8f1;
    property Field9: IJanuaField read GetField9 write SetField9;
    property Field10: IJanuaField read GetField10 write SetField10;
    property Field11: IJanuaField read GetField11 write SetField11;
    property Field12: IJanuaField read GetField12 write SetField12;
    property Field13: IJanuaField read GetField13 write SetField13;
    property Field14: IJanuaField read GetField14 write SetField14;
    property Field15: IJanuaField read GetField15 write SetField15;
    property Field16: IJanuaField read GetField16 write SetField16;
    property Field17: IJanuaField read GetField17 write SetField17;
    property Field28a: IJanuaField read GetField28a write SetField28a;
    property Field28b: IJanuaField read GetField28b write SetField28b;
    property Field29a: IJanuaField read GetField29a write SetField29a;
    property Field29b: IJanuaField read GetField29b write SetField29b;
    property Field30a: IJanuaField read GetField30a write SetField30a;
    property Field30b: IJanuaField read GetField30b write SetField30b;
    property Field31a: IJanuaField read GetField31a write SetField31a;
    property Field31b: IJanuaField read GetField31b write SetField31b;
    property Field32a: IJanuaField read GetField32a write SetField32a;
    property Field32b: IJanuaField read GetField32b write SetField32b;
    property Field33a: IJanuaField read GetField33a write SetField33a;
    property Field33b: IJanuaField read GetField33b write SetField33b;
    property Field34: IJanuaField read GetField34 write SetField34;
    property Field35: IJanuaField read GetField35 write SetField35;
    property Field36: IJanuaField read GetField36 write SetField36;
    property Field37: IJanuaField read GetField37 write SetField37;
    property Field38: IJanuaField read GetField38 write SetField38;
    property Hi1: IJanuaField read GetHi1 write SetHi1;
    property Hi2: IJanuaField read GetHi2 write SetHi2;
    property Hi3: IJanuaField read GetHi3 write SetHi3;
    property Codother1: IJanuaField read GetCodother1 write SetCodother1;
    property Codother2: IJanuaField read GetCodother2 write SetCodother2;
    property Codother3: IJanuaField read GetCodother3 write SetCodother3;
    property Codother4: IJanuaField read GetCodother4 write SetCodother4;
    property Codother5: IJanuaField read GetCodother5 write SetCodother5;
    property Codother6: IJanuaField read GetCodother6 write SetCodother6;
    property Codother7: IJanuaField read GetCodother7 write SetCodother7;
    property Codother8: IJanuaField read GetCodother8 write SetCodother8;
    property Codother9: IJanuaField read GetCodother9 write SetCodother9;
    property Amountother9: IJanuaField read GetAmountother9 write SetAmountother9;
    property Amountother8: IJanuaField read GetAmountother8 write SetAmountother8;
    property Amountother7: IJanuaField read GetAmountother7 write SetAmountother7;
    property Amountother6: IJanuaField read GetAmountother6 write SetAmountother6;
    property Amountother5: IJanuaField read GetAmountother5 write SetAmountother5;
    property Amountother4: IJanuaField read GetAmountother4 write SetAmountother4;
    property Amountother3: IJanuaField read GetAmountother3 write SetAmountother3;
    property Amountother2: IJanuaField read GetAmountother2 write SetAmountother2;
    property Amountother1: IJanuaField read GetAmountother1 write SetAmountother1;
    property Fieldhead: IJanuaField read GetFieldhead write SetFieldhead;
    property Partialmaster: IJanuaField read GetPartialmaster write SetPartialmaster;
    property Partialmasteryear: IJanuaField read GetPartialmasteryear write SetPartialmasteryear;
    property CurrencyId: IJanuaField read GetCurrencyId write SetCurrencyId;
    property AwbTypeId: IJanuaField read GetAwbTypeId write SetAwbTypeId;
    property Jguid: IJanuaField read GetJguid write SetJguid;
    property Netamount: IJanuaField read GetNetamount write SetNetamount;
    property Progressive: IJanuaField read GetProgressive write SetProgressive;
    property Mawbcosts: IJanuaField read GetMawbcosts write SetMawbcosts;
    property Mawbothcosts: IJanuaField read GetMawbothcosts write SetMawbothcosts;
    property Taxableweight: IJanuaField read GetTaxableweight write SetTaxableweight;
    property Masterdate: IJanuaField read GetMasterdate write SetMasterdate;
    property Estimateflight: IJanuaField read GetEstimateflight write SetEstimateflight;
    property Effectiveflight: IJanuaField read GetEffectiveflight write SetEffectiveflight;
    property Etdestimate: IJanuaField read GetEtdestimate write SetEtdestimate;
    property Etdeffective: IJanuaField read GetEtdeffective write SetEtdeffective;
    property Etaestimate: IJanuaField read GetEtaestimate write SetEtaestimate;
    property Etaeffective: IJanuaField read GetEtaeffective write SetEtaeffective;
    property Transportcost: IJanuaField read GetTransportcost write SetTransportcost;
    property Containerseals: IJanuaField read GetContainerseals write SetContainerseals;
    property Masternotes: IJanuaField read GetMasternotes write SetMasternotes;
    property AwbType: IJanuaField read GetAwbType write SetAwbType;
    property OrderId: IJanuaField read GetOrderId write SetOrderId;
    property CustomsDocType: IJanuaField read GetCustomsDocType write SetCustomsDocType;
    property Palletcost: IJanuaField read GetPalletcost write SetPalletcost;
    property YearNumber: IJanuaField read GetYearNumber write SetYearNumber;
    property Field19a: IJanuaField read GetField19a write SetField19a;
    property Branchlog: IJanuaField read GetBranchlog write SetBranchlog;
    property Deleted: IJanuaField read GetDeleted write SetDeleted;
    property CarrierId: IJanuaField read GetCarrierId write SetCarrierId;
    property CarrierName: IJanuaField read GetCarrierName write SetCarrierName;
    property CarrierCode: IJanuaField read GetCarrierCode write SetCarrierCode;
    property ShipperId: IJanuaField read GetShipperId write SetShipperId;
    property ShipperCode: IJanuaField read GetShipperCode write SetShipperCode;
    property ShipperName: IJanuaField read GetShipperName write SetShipperName;
    property ConsigneeId: IJanuaField read GetConsigneeId write SetConsigneeId;
    property ConsigneeName: IJanuaField read GetConsigneeName write SetConsigneeName;
    property ConsigneeCode: IJanuaField read GetConsigneeCode write SetConsigneeCode;
    property IataAgentId: IJanuaField read GetIataAgentId write SetIataAgentId;
    property IataAgentCode: IJanuaField read GetIataAgentCode write SetIataAgentCode;
    property IataAgentName: IJanuaField read GetIataAgentName write SetIataAgentName;
    property LogisticAWB: ILogisticAWB read GetLogisticAWB write SetLogisticAWB;
  end;

  (*
    TLogisticAWBFactory = class
    class function CreateRecord(const aKey: string): ILogisticAWB; overload;
    class function CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage)
    : ILogisticAWBs; overload;
    end;
  *)

implementation

// ------------------------------------------ Impl TLogisticAWB -------------------------------

{ TCustomLogisticAWB }

constructor TCustomLogisticAWB.Create;
begin
  inherited;
  FPrefix := 'lwb';
  FYear := AddCreateField(TJanuaFieldType.jptString, 'year', 'year');
  FOfficeId := AddCreateField(TJanuaFieldType.jptInteger, 'office_id', 'office_id');
  FId := AddCreateField(TJanuaFieldType.jptSmallint, 'id', 'id');
  FCode := AddCreateField(TJanuaFieldType.jptString, 'code', 'code');
  FDbSchemaId := AddCreateField(TJanuaFieldType.jptInteger, 'db_schema_id', 'db_schema_id');
  FField1a := AddCreateField(TJanuaFieldType.jptString, 'field1a', 'field1a');
  FField1b := AddCreateField(TJanuaFieldType.jptString, 'field1b', 'field1b');
  FField1c := AddCreateField(TJanuaFieldType.jptString, 'field1c', 'field1c');
  FCin := AddCreateField(TJanuaFieldType.jptFloat, 'cin', 'cin');
  FField2 := AddCreateField(TJanuaFieldType.jptString, 'field2', 'field2');
  FField21 := AddCreateField(TJanuaFieldType.jptString, 'field21', 'field21');
  FField22 := AddCreateField(TJanuaFieldType.jptString, 'field22', 'field22');
  FField23 := AddCreateField(TJanuaFieldType.jptString, 'field23', 'field23');
  FField3 := AddCreateField(TJanuaFieldType.jptString, 'field3', 'field3');
  FField31 := AddCreateField(TJanuaFieldType.jptString, 'field31', 'field31');
  FField32 := AddCreateField(TJanuaFieldType.jptString, 'field32', 'field32');
  FField33 := AddCreateField(TJanuaFieldType.jptString, 'field33', 'field33');
  FField4a := AddCreateField(TJanuaFieldType.jptString, 'field4a', 'field4a');
  FField4b := AddCreateField(TJanuaFieldType.jptString, 'field4b', 'field4b');
  FField4c := AddCreateField(TJanuaFieldType.jptString, 'field4c', 'field4c');
  FField4c2 := AddCreateField(TJanuaFieldType.jptString, 'field4c2', 'field4c2');
  FField4c3 := AddCreateField(TJanuaFieldType.jptString, 'field4c3', 'field4c3');
  FField5 := AddCreateField(TJanuaFieldType.jptString, 'field5', 'field5');
  // Campo non Gestitofield6 Type= ftWideMemo
  FField6 := AddCreateField(TJanuaFieldType.jptText, 'Field6', 'Field6');
  // Campo non Gestitofield7 Type= ftWideMemo
  FField7 := AddCreateField(TJanuaFieldType.jptText, 'field7', 'field7');

  FField8 := AddCreateField(TJanuaFieldType.jptString, 'field8', 'field8');
  FField8a := AddCreateField(TJanuaFieldType.jptString, 'field8a', 'field8a');
  FField8b := AddCreateField(TJanuaFieldType.jptString, 'field8b', 'field8b');
  FField8c := AddCreateField(TJanuaFieldType.jptString, 'field8c', 'field8c');
  FField8d := AddCreateField(TJanuaFieldType.jptString, 'field8d', 'field8d');
  FField8c1 := AddCreateField(TJanuaFieldType.jptString, 'field8c1', 'field8c1');
  FField8d1 := AddCreateField(TJanuaFieldType.jptString, 'field8d1', 'field8d1');
  FField8e := AddCreateField(TJanuaFieldType.jptString, 'field8e', 'field8e');
  FField8f := AddCreateField(TJanuaFieldType.jptString, 'field8f', 'field8f');
  FField8f1 := AddCreateField(TJanuaFieldType.jptDateTime, 'field8f1', 'field8f1');
  FField9 := AddCreateField(TJanuaFieldType.jptString, 'field9', 'field9');
  FField10 := AddCreateField(TJanuaFieldType.jptString, 'field10', 'field10');
  FField11 := AddCreateField(TJanuaFieldType.jptString, 'field11', 'field11');
  FField12 := AddCreateField(TJanuaFieldType.jptString, 'field12', 'field12');
  FField13 := AddCreateField(TJanuaFieldType.jptString, 'field13', 'field13');
  FField14 := AddCreateField(TJanuaFieldType.jptString, 'field14', 'field14');
  FField15 := AddCreateField(TJanuaFieldType.jptString, 'field15', 'field15');
  FField16 := AddCreateField(TJanuaFieldType.jptString, 'field16', 'field16');
  FField17 := AddCreateField(TJanuaFieldType.jptString, 'field17', 'field17');
  FField28a := AddCreateField(TJanuaFieldType.jptFloat, 'field28a', 'field28a');
  FField28b := AddCreateField(TJanuaFieldType.jptFloat, 'field28b', 'field28b');
  FField29a := AddCreateField(TJanuaFieldType.jptFloat, 'field29a', 'field29a');
  FField29b := AddCreateField(TJanuaFieldType.jptFloat, 'field29b', 'field29b');
  FField30a := AddCreateField(TJanuaFieldType.jptFloat, 'field30a', 'field30a');
  FField30b := AddCreateField(TJanuaFieldType.jptFloat, 'field30b', 'field30b');
  FField31a := AddCreateField(TJanuaFieldType.jptFloat, 'field31a', 'field31a');
  FField31b := AddCreateField(TJanuaFieldType.jptFloat, 'field31b', 'field31b');
  FField32a := AddCreateField(TJanuaFieldType.jptFloat, 'field32a', 'field32a');
  FField32b := AddCreateField(TJanuaFieldType.jptFloat, 'field32b', 'field32b');
  FField33a := AddCreateField(TJanuaFieldType.jptFloat, 'field33a', 'field33a');
  FField33b := AddCreateField(TJanuaFieldType.jptFloat, 'field33b', 'field33b');
  FField34 := AddCreateField(TJanuaFieldType.jptString, 'field34', 'field34');
  FField35 := AddCreateField(TJanuaFieldType.jptString, 'field35', 'field35');
  FField36 := AddCreateField(TJanuaFieldType.jptString, 'field36', 'field36');
  FField37 := AddCreateField(TJanuaFieldType.jptString, 'field37', 'field37');
  FField38 := AddCreateField(TJanuaFieldType.jptString, 'field38', 'field38');
  FHi1 := AddCreateField(TJanuaFieldType.jptString, 'hi1', 'hi1');
  FHi2 := AddCreateField(TJanuaFieldType.jptString, 'hi2', 'hi2');
  FHi3 := AddCreateField(TJanuaFieldType.jptString, 'hi3', 'hi3');
  FCodother1 := AddCreateField(TJanuaFieldType.jptString, 'codother1', 'codother1');
  FCodother2 := AddCreateField(TJanuaFieldType.jptString, 'codother2', 'codother2');
  FCodother3 := AddCreateField(TJanuaFieldType.jptString, 'codother3', 'codother3');
  FCodother4 := AddCreateField(TJanuaFieldType.jptString, 'codother4', 'codother4');
  FCodother5 := AddCreateField(TJanuaFieldType.jptString, 'codother5', 'codother5');
  FCodother6 := AddCreateField(TJanuaFieldType.jptString, 'codother6', 'codother6');
  FCodother7 := AddCreateField(TJanuaFieldType.jptString, 'codother7', 'codother7');
  FCodother8 := AddCreateField(TJanuaFieldType.jptString, 'codother8', 'codother8');
  FCodother9 := AddCreateField(TJanuaFieldType.jptString, 'codother9', 'codother9');
  FAmountother9 := AddCreateField(TJanuaFieldType.jptFloat, 'amountother9', 'amountother9');
  FAmountother8 := AddCreateField(TJanuaFieldType.jptFloat, 'amountother8', 'amountother8');
  FAmountother7 := AddCreateField(TJanuaFieldType.jptFloat, 'amountother7', 'amountother7');
  FAmountother6 := AddCreateField(TJanuaFieldType.jptFloat, 'amountother6', 'amountother6');
  FAmountother5 := AddCreateField(TJanuaFieldType.jptFloat, 'amountother5', 'amountother5');
  FAmountother4 := AddCreateField(TJanuaFieldType.jptFloat, 'amountother4', 'amountother4');
  FAmountother3 := AddCreateField(TJanuaFieldType.jptFloat, 'amountother3', 'amountother3');
  FAmountother2 := AddCreateField(TJanuaFieldType.jptFloat, 'amountother2', 'amountother2');
  FAmountother1 := AddCreateField(TJanuaFieldType.jptFloat, 'amountother1', 'amountother1');
  FFieldhead := AddCreateField(TJanuaFieldType.jptString, 'fieldhead', 'fieldhead');
  FPartialmaster := AddCreateField(TJanuaFieldType.jptInteger, 'partialmaster', 'partialmaster');
  FPartialmasteryear := AddCreateField(TJanuaFieldType.jptString, 'partialmasteryear', 'partialmasteryear');
  FCurrencyId := AddCreateField(TJanuaFieldType.jptSmallint, 'currency_id', 'currency_id');
  FAwbTypeId := AddCreateField(TJanuaFieldType.jptSmallint, 'awb_type_id', 'awb_type_id');
  // Campo non Gestitojguid Type= ftGuid
  FNetamount := AddCreateField(TJanuaFieldType.jptFloat, 'netamount', 'netamount');
  FProgressive := AddCreateField(TJanuaFieldType.jptFloat, 'progressive', 'progressive');
  FMawbcosts := AddCreateField(TJanuaFieldType.jptFloat, 'mawbcosts', 'mawbcosts');
  FMawbothcosts := AddCreateField(TJanuaFieldType.jptFloat, 'mawbothcosts', 'mawbothcosts');
  FTaxableweight := AddCreateField(TJanuaFieldType.jptFloat, 'taxableweight', 'taxableweight');
  FMasterdate := AddCreateField(TJanuaFieldType.jptDateTime, 'masterdate', 'masterdate');
  FEstimateflight := AddCreateField(TJanuaFieldType.jptString, 'estimateflight', 'estimateflight');
  FEffectiveflight := AddCreateField(TJanuaFieldType.jptString, 'effectiveflight', 'effectiveflight');
  FEtdestimate := AddCreateField(TJanuaFieldType.jptDateTime, 'etdestimate', 'etdestimate');
  FEtdeffective := AddCreateField(TJanuaFieldType.jptDateTime, 'etdeffective', 'etdeffective');
  FEtaestimate := AddCreateField(TJanuaFieldType.jptDateTime, 'etaestimate', 'etaestimate');
  FEtaeffective := AddCreateField(TJanuaFieldType.jptDateTime, 'etaeffective', 'etaeffective');
  FTransportcost := AddCreateField(TJanuaFieldType.jptFloat, 'transportcost', 'transportcost');
  FContainerseals := AddCreateField(TJanuaFieldType.jptString, 'containerseals', 'containerseals');
  FMasternotes := AddCreateField(TJanuaFieldType.jptString, 'masternotes', 'masternotes');
  FAwbType := AddCreateField(TJanuaFieldType.jptString, 'awb_type', 'awb_type');
  FOrderId := AddCreateField(TJanuaFieldType.jptSmallint, 'order_id', 'order_id');
  FCustomsDocType := AddCreateField(TJanuaFieldType.jptString, 'customs_doc_type', 'customs_doc_type');
  FPalletcost := AddCreateField(TJanuaFieldType.jptFloat, 'palletcost', 'palletcost');
  FYearNumber := AddCreateField(TJanuaFieldType.jptSmallint, 'year_number', 'year_number');
  FField19a := AddCreateField(TJanuaFieldType.jptString, 'field19a', 'field19a');
  FBranchlog := AddCreateField(TJanuaFieldType.jptString, 'branchlog', 'branchlog');
  FDeleted := AddCreateField(TJanuaFieldType.jptBoolean, 'deleted', 'deleted');
  FCarrierId := AddCreateField(TJanuaFieldType.jptInteger, 'carrier_id', 'carrier_id');
  FCarrierName := AddCreateField(TJanuaFieldType.jptString, 'carrier_name', 'carrier_name');
  FCarrierCode := AddCreateField(TJanuaFieldType.jptString, 'carrier_code', 'carrier_code');
  FShipperId := AddCreateField(TJanuaFieldType.jptInteger, 'shipper_id', 'shipper_id');
  FShipperCode := AddCreateField(TJanuaFieldType.jptString, 'shipper_code', 'shipper_code');
  FShipperName := AddCreateField(TJanuaFieldType.jptString, 'shipper_name', 'shipper_name');
  FConsigneeId := AddCreateField(TJanuaFieldType.jptInteger, 'consignee_id', 'consignee_id');
  FConsigneeName := AddCreateField(TJanuaFieldType.jptString, 'consignee_name', 'consignee_name');
  FConsigneeCode := AddCreateField(TJanuaFieldType.jptString, 'consignee_code', 'consignee_code');
  FIataAgentId := AddCreateField(TJanuaFieldType.jptInteger, 'iata_agent_id', 'iata_agent_id');
  FIataAgentCode := AddCreateField(TJanuaFieldType.jptInteger, 'iata_agent_code', 'iata_agent_code');
  FIataAgentName := AddCreateField(TJanuaFieldType.jptString, 'iata_agent_name', 'iata_agent_name');
end;

function TCustomLogisticAWB.GetYear: IJanuaField;
begin
  Result := FYear;
end;

procedure TCustomLogisticAWB.SetYear(const Value: IJanuaField);
begin
  FYear := Value;
end;

function TCustomLogisticAWB.GetOfficeId: IJanuaField;
begin
  Result := FOfficeId;
end;

procedure TCustomLogisticAWB.SetOfficeId(const Value: IJanuaField);
begin
  FOfficeId := Value;
end;

function TCustomLogisticAWB.GetId: IJanuaField;
begin
  Result := FId;
end;

procedure TCustomLogisticAWB.SetId(const Value: IJanuaField);
begin
  FId := Value;
end;

function TCustomLogisticAWB.GetCode: IJanuaField;
begin
  Result := FCode;
end;

procedure TCustomLogisticAWB.SetCode(const Value: IJanuaField);
begin
  FCode := Value;
end;

function TCustomLogisticAWB.GetDbSchemaId: IJanuaField;
begin
  Result := FDbSchemaId;
end;

procedure TCustomLogisticAWB.SetDbSchemaId(const Value: IJanuaField);
begin
  FDbSchemaId := Value;
end;

function TCustomLogisticAWB.GetField1a: IJanuaField;
begin
  Result := FField1a;
end;

procedure TCustomLogisticAWB.SetField1a(const Value: IJanuaField);
begin
  FField1a := Value;
end;

function TCustomLogisticAWB.GetField1b: IJanuaField;
begin
  Result := FField1b;
end;

procedure TCustomLogisticAWB.SetField1b(const Value: IJanuaField);
begin
  FField1b := Value;
end;

function TCustomLogisticAWB.GetField1c: IJanuaField;
begin
  Result := FField1c;
end;

procedure TCustomLogisticAWB.SetField1c(const Value: IJanuaField);
begin
  FField1c := Value;
end;

function TCustomLogisticAWB.GetCin: IJanuaField;
begin
  Result := FCin;
end;

procedure TCustomLogisticAWB.SetCin(const Value: IJanuaField);
begin
  FCin := Value;
end;

function TCustomLogisticAWB.GetField2: IJanuaField;
begin
  Result := FField2;
end;

procedure TCustomLogisticAWB.SetField2(const Value: IJanuaField);
begin
  FField2 := Value;
end;

function TCustomLogisticAWB.GetField21: IJanuaField;
begin
  Result := FField21;
end;

procedure TCustomLogisticAWB.SetField21(const Value: IJanuaField);
begin
  FField21 := Value;
end;

function TCustomLogisticAWB.GetField22: IJanuaField;
begin
  Result := FField22;
end;

procedure TCustomLogisticAWB.SetField22(const Value: IJanuaField);
begin
  FField22 := Value;
end;

function TCustomLogisticAWB.GetField23: IJanuaField;
begin
  Result := FField23;
end;

procedure TCustomLogisticAWB.SetField23(const Value: IJanuaField);
begin
  FField23 := Value;
end;

function TCustomLogisticAWB.GetField3: IJanuaField;
begin
  Result := FField3;
end;

procedure TCustomLogisticAWB.SetField3(const Value: IJanuaField);
begin
  FField3 := Value;
end;

function TCustomLogisticAWB.GetField31: IJanuaField;
begin
  Result := FField31;
end;

procedure TCustomLogisticAWB.SetField31(const Value: IJanuaField);
begin
  FField31 := Value;
end;

function TCustomLogisticAWB.GetField32: IJanuaField;
begin
  Result := FField32;
end;

procedure TCustomLogisticAWB.SetField32(const Value: IJanuaField);
begin
  FField32 := Value;
end;

function TCustomLogisticAWB.GetField33: IJanuaField;
begin
  Result := FField33;
end;

procedure TCustomLogisticAWB.SetField33(const Value: IJanuaField);
begin
  FField33 := Value;
end;

function TCustomLogisticAWB.GetField4a: IJanuaField;
begin
  Result := FField4a;
end;

procedure TCustomLogisticAWB.SetField4a(const Value: IJanuaField);
begin
  FField4a := Value;
end;

function TCustomLogisticAWB.GetField4b: IJanuaField;
begin
  Result := FField4b;
end;

procedure TCustomLogisticAWB.SetField4b(const Value: IJanuaField);
begin
  FField4b := Value;
end;

function TCustomLogisticAWB.GetField4c: IJanuaField;
begin
  Result := FField4c;
end;

procedure TCustomLogisticAWB.SetField4c(const Value: IJanuaField);
begin
  FField4c := Value;
end;

function TCustomLogisticAWB.GetField4c2: IJanuaField;
begin
  Result := FField4c2;
end;

procedure TCustomLogisticAWB.SetField4c2(const Value: IJanuaField);
begin
  FField4c2 := Value;
end;

function TCustomLogisticAWB.GetField4c3: IJanuaField;
begin
  Result := FField4c3;
end;

procedure TCustomLogisticAWB.SetField4c3(const Value: IJanuaField);
begin
  FField4c3 := Value;
end;

function TCustomLogisticAWB.GetField5: IJanuaField;
begin
  Result := FField5;
end;

procedure TCustomLogisticAWB.SetField5(const Value: IJanuaField);
begin
  FField5 := Value;
end;

function TCustomLogisticAWB.GetField6: IJanuaField;
begin
  Result := FField6;
end;

procedure TCustomLogisticAWB.SetField6(const Value: IJanuaField);
begin
  FField6 := Value;
end;

function TCustomLogisticAWB.GetField7: IJanuaField;
begin
  Result := FField7;
end;

procedure TCustomLogisticAWB.SetField7(const Value: IJanuaField);
begin
  FField7 := Value;
end;

function TCustomLogisticAWB.GetField8: IJanuaField;
begin
  Result := FField8;
end;

procedure TCustomLogisticAWB.SetField8(const Value: IJanuaField);
begin
  FField8 := Value;
end;

function TCustomLogisticAWB.GetField8a: IJanuaField;
begin
  Result := FField8a;
end;

procedure TCustomLogisticAWB.SetField8a(const Value: IJanuaField);
begin
  FField8a := Value;
end;

function TCustomLogisticAWB.GetField8b: IJanuaField;
begin
  Result := FField8b;
end;

procedure TCustomLogisticAWB.SetField8b(const Value: IJanuaField);
begin
  FField8b := Value;
end;

function TCustomLogisticAWB.GetField8c: IJanuaField;
begin
  Result := FField8c;
end;

procedure TCustomLogisticAWB.SetField8c(const Value: IJanuaField);
begin
  FField8c := Value;
end;

function TCustomLogisticAWB.GetField8d: IJanuaField;
begin
  Result := FField8d;
end;

procedure TCustomLogisticAWB.SetField8d(const Value: IJanuaField);
begin
  FField8d := Value;
end;

function TCustomLogisticAWB.GetField8c1: IJanuaField;
begin
  Result := FField8c1;
end;

procedure TCustomLogisticAWB.SetField8c1(const Value: IJanuaField);
begin
  FField8c1 := Value;
end;

function TCustomLogisticAWB.GetField8d1: IJanuaField;
begin
  Result := FField8d1;
end;

procedure TCustomLogisticAWB.SetField8d1(const Value: IJanuaField);
begin
  FField8d1 := Value;
end;

function TCustomLogisticAWB.GetField8e: IJanuaField;
begin
  Result := FField8e;
end;

procedure TCustomLogisticAWB.SetField8e(const Value: IJanuaField);
begin
  FField8e := Value;
end;

function TCustomLogisticAWB.GetField8f: IJanuaField;
begin
  Result := FField8f;
end;

procedure TCustomLogisticAWB.SetField8f(const Value: IJanuaField);
begin
  FField8f := Value;
end;

function TCustomLogisticAWB.GetField8f1: IJanuaField;
begin
  Result := FField8f1;
end;

procedure TCustomLogisticAWB.SetField8f1(const Value: IJanuaField);
begin
  FField8f1 := Value;
end;

function TCustomLogisticAWB.GetField9: IJanuaField;
begin
  Result := FField9;
end;

procedure TCustomLogisticAWB.SetField9(const Value: IJanuaField);
begin
  FField9 := Value;
end;

function TCustomLogisticAWB.GetField10: IJanuaField;
begin
  Result := FField10;
end;

procedure TCustomLogisticAWB.SetField10(const Value: IJanuaField);
begin
  FField10 := Value;
end;

function TCustomLogisticAWB.GetField11: IJanuaField;
begin
  Result := FField11;
end;

procedure TCustomLogisticAWB.SetField11(const Value: IJanuaField);
begin
  FField11 := Value;
end;

function TCustomLogisticAWB.GetField12: IJanuaField;
begin
  Result := FField12;
end;

procedure TCustomLogisticAWB.SetField12(const Value: IJanuaField);
begin
  FField12 := Value;
end;

function TCustomLogisticAWB.GetField13: IJanuaField;
begin
  Result := FField13;
end;

procedure TCustomLogisticAWB.SetField13(const Value: IJanuaField);
begin
  FField13 := Value;
end;

function TCustomLogisticAWB.GetField14: IJanuaField;
begin
  Result := FField14;
end;

procedure TCustomLogisticAWB.SetField14(const Value: IJanuaField);
begin
  FField14 := Value;
end;

function TCustomLogisticAWB.GetField15: IJanuaField;
begin
  Result := FField15;
end;

procedure TCustomLogisticAWB.SetField15(const Value: IJanuaField);
begin
  FField15 := Value;
end;

function TCustomLogisticAWB.GetField16: IJanuaField;
begin
  Result := FField16;
end;

procedure TCustomLogisticAWB.SetField16(const Value: IJanuaField);
begin
  FField16 := Value;
end;

function TCustomLogisticAWB.GetField17: IJanuaField;
begin
  Result := FField17;
end;

procedure TCustomLogisticAWB.SetField17(const Value: IJanuaField);
begin
  FField17 := Value;
end;

function TCustomLogisticAWB.GetField28a: IJanuaField;
begin
  Result := FField28a;
end;

procedure TCustomLogisticAWB.SetField28a(const Value: IJanuaField);
begin
  FField28a := Value;
end;

function TCustomLogisticAWB.GetField28b: IJanuaField;
begin
  Result := FField28b;
end;

procedure TCustomLogisticAWB.SetField28b(const Value: IJanuaField);
begin
  FField28b := Value;
end;

function TCustomLogisticAWB.GetField29a: IJanuaField;
begin
  Result := FField29a;
end;

procedure TCustomLogisticAWB.SetField29a(const Value: IJanuaField);
begin
  FField29a := Value;
end;

function TCustomLogisticAWB.GetField29b: IJanuaField;
begin
  Result := FField29b;
end;

procedure TCustomLogisticAWB.SetField29b(const Value: IJanuaField);
begin
  FField29b := Value;
end;

function TCustomLogisticAWB.GetField30a: IJanuaField;
begin
  Result := FField30a;
end;

procedure TCustomLogisticAWB.SetField30a(const Value: IJanuaField);
begin
  FField30a := Value;
end;

function TCustomLogisticAWB.GetField30b: IJanuaField;
begin
  Result := FField30b;
end;

procedure TCustomLogisticAWB.SetField30b(const Value: IJanuaField);
begin
  FField30b := Value;
end;

function TCustomLogisticAWB.GetField31a: IJanuaField;
begin
  Result := FField31a;
end;

procedure TCustomLogisticAWB.SetField31a(const Value: IJanuaField);
begin
  FField31a := Value;
end;

function TCustomLogisticAWB.GetField31b: IJanuaField;
begin
  Result := FField31b;
end;

procedure TCustomLogisticAWB.SetField31b(const Value: IJanuaField);
begin
  FField31b := Value;
end;

function TCustomLogisticAWB.GetField32a: IJanuaField;
begin
  Result := FField32a;
end;

procedure TCustomLogisticAWB.SetField32a(const Value: IJanuaField);
begin
  FField32a := Value;
end;

function TCustomLogisticAWB.GetField32b: IJanuaField;
begin
  Result := FField32b;
end;

procedure TCustomLogisticAWB.SetField32b(const Value: IJanuaField);
begin
  FField32b := Value;
end;

function TCustomLogisticAWB.GetField33a: IJanuaField;
begin
  Result := FField33a;
end;

procedure TCustomLogisticAWB.SetField33a(const Value: IJanuaField);
begin
  FField33a := Value;
end;

function TCustomLogisticAWB.GetField33b: IJanuaField;
begin
  Result := FField33b;
end;

procedure TCustomLogisticAWB.SetField33b(const Value: IJanuaField);
begin
  FField33b := Value;
end;

function TCustomLogisticAWB.GetField34: IJanuaField;
begin
  Result := FField34;
end;

procedure TCustomLogisticAWB.SetField34(const Value: IJanuaField);
begin
  FField34 := Value;
end;

function TCustomLogisticAWB.GetField35: IJanuaField;
begin
  Result := FField35;
end;

procedure TCustomLogisticAWB.SetField35(const Value: IJanuaField);
begin
  FField35 := Value;
end;

function TCustomLogisticAWB.GetField36: IJanuaField;
begin
  Result := FField36;
end;

procedure TCustomLogisticAWB.SetField36(const Value: IJanuaField);
begin
  FField36 := Value;
end;

function TCustomLogisticAWB.GetField37: IJanuaField;
begin
  Result := FField37;
end;

procedure TCustomLogisticAWB.SetField37(const Value: IJanuaField);
begin
  FField37 := Value;
end;

function TCustomLogisticAWB.GetField38: IJanuaField;
begin
  Result := FField38;
end;

procedure TCustomLogisticAWB.SetField38(const Value: IJanuaField);
begin
  FField38 := Value;
end;

function TCustomLogisticAWB.GetHi1: IJanuaField;
begin
  Result := FHi1;
end;

procedure TCustomLogisticAWB.SetHi1(const Value: IJanuaField);
begin
  FHi1 := Value;
end;

function TCustomLogisticAWB.GetHi2: IJanuaField;
begin
  Result := FHi2;
end;

procedure TCustomLogisticAWB.SetHi2(const Value: IJanuaField);
begin
  FHi2 := Value;
end;

function TCustomLogisticAWB.GetHi3: IJanuaField;
begin
  Result := FHi3;
end;

procedure TCustomLogisticAWB.SetHi3(const Value: IJanuaField);
begin
  FHi3 := Value;
end;

function TCustomLogisticAWB.GetCodother1: IJanuaField;
begin
  Result := FCodother1;
end;

procedure TCustomLogisticAWB.SetCodother1(const Value: IJanuaField);
begin
  FCodother1 := Value;
end;

function TCustomLogisticAWB.GetCodother2: IJanuaField;
begin
  Result := FCodother2;
end;

procedure TCustomLogisticAWB.SetCodother2(const Value: IJanuaField);
begin
  FCodother2 := Value;
end;

function TCustomLogisticAWB.GetCodother3: IJanuaField;
begin
  Result := FCodother3;
end;

procedure TCustomLogisticAWB.SetCodother3(const Value: IJanuaField);
begin
  FCodother3 := Value;
end;

function TCustomLogisticAWB.GetCodother4: IJanuaField;
begin
  Result := FCodother4;
end;

procedure TCustomLogisticAWB.SetCodother4(const Value: IJanuaField);
begin
  FCodother4 := Value;
end;

function TCustomLogisticAWB.GetCodother5: IJanuaField;
begin
  Result := FCodother5;
end;

procedure TCustomLogisticAWB.SetCodother5(const Value: IJanuaField);
begin
  FCodother5 := Value;
end;

function TCustomLogisticAWB.GetCodother6: IJanuaField;
begin
  Result := FCodother6;
end;

procedure TCustomLogisticAWB.SetCodother6(const Value: IJanuaField);
begin
  FCodother6 := Value;
end;

function TCustomLogisticAWB.GetCodother7: IJanuaField;
begin
  Result := FCodother7;
end;

procedure TCustomLogisticAWB.SetCodother7(const Value: IJanuaField);
begin
  FCodother7 := Value;
end;

function TCustomLogisticAWB.GetCodother8: IJanuaField;
begin
  Result := FCodother8;
end;

procedure TCustomLogisticAWB.SetCodother8(const Value: IJanuaField);
begin
  FCodother8 := Value;
end;

function TCustomLogisticAWB.GetCodother9: IJanuaField;
begin
  Result := FCodother9;
end;

procedure TCustomLogisticAWB.SetCodother9(const Value: IJanuaField);
begin
  FCodother9 := Value;
end;

function TCustomLogisticAWB.GetAmountother9: IJanuaField;
begin
  Result := FAmountother9;
end;

procedure TCustomLogisticAWB.SetAmountother9(const Value: IJanuaField);
begin
  FAmountother9 := Value;
end;

function TCustomLogisticAWB.GetAmountother8: IJanuaField;
begin
  Result := FAmountother8;
end;

procedure TCustomLogisticAWB.SetAmountother8(const Value: IJanuaField);
begin
  FAmountother8 := Value;
end;

function TCustomLogisticAWB.GetAmountother7: IJanuaField;
begin
  Result := FAmountother7;
end;

procedure TCustomLogisticAWB.SetAmountother7(const Value: IJanuaField);
begin
  FAmountother7 := Value;
end;

function TCustomLogisticAWB.GetAmountother6: IJanuaField;
begin
  Result := FAmountother6;
end;

procedure TCustomLogisticAWB.SetAmountother6(const Value: IJanuaField);
begin
  FAmountother6 := Value;
end;

function TCustomLogisticAWB.GetAmountother5: IJanuaField;
begin
  Result := FAmountother5;
end;

procedure TCustomLogisticAWB.SetAmountother5(const Value: IJanuaField);
begin
  FAmountother5 := Value;
end;

function TCustomLogisticAWB.GetAmountother4: IJanuaField;
begin
  Result := FAmountother4;
end;

procedure TCustomLogisticAWB.SetAmountother4(const Value: IJanuaField);
begin
  FAmountother4 := Value;
end;

function TCustomLogisticAWB.GetAmountother3: IJanuaField;
begin
  Result := FAmountother3;
end;

procedure TCustomLogisticAWB.SetAmountother3(const Value: IJanuaField);
begin
  FAmountother3 := Value;
end;

function TCustomLogisticAWB.GetAmountother2: IJanuaField;
begin
  Result := FAmountother2;
end;

procedure TCustomLogisticAWB.SetAmountother2(const Value: IJanuaField);
begin
  FAmountother2 := Value;
end;

function TCustomLogisticAWB.GetAmountother1: IJanuaField;
begin
  Result := FAmountother1;
end;

procedure TCustomLogisticAWB.SetAmountother1(const Value: IJanuaField);
begin
  FAmountother1 := Value;
end;

function TCustomLogisticAWB.GetFieldhead: IJanuaField;
begin
  Result := FFieldhead;
end;

procedure TCustomLogisticAWB.SetFieldhead(const Value: IJanuaField);
begin
  FFieldhead := Value;
end;

function TCustomLogisticAWB.GetPartialmaster: IJanuaField;
begin
  Result := FPartialmaster;
end;

procedure TCustomLogisticAWB.SetPartialmaster(const Value: IJanuaField);
begin
  FPartialmaster := Value;
end;

function TCustomLogisticAWB.GetPartialmasteryear: IJanuaField;
begin
  Result := FPartialmasteryear;
end;

procedure TCustomLogisticAWB.SetPartialmasteryear(const Value: IJanuaField);
begin
  FPartialmasteryear := Value;
end;

function TCustomLogisticAWB.GetCurrencyId: IJanuaField;
begin
  Result := FCurrencyId;
end;

procedure TCustomLogisticAWB.SetCurrencyId(const Value: IJanuaField);
begin
  FCurrencyId := Value;
end;

function TCustomLogisticAWB.GetAwbTypeId: IJanuaField;
begin
  Result := FAwbTypeId;
end;

procedure TCustomLogisticAWB.SetAwbTypeId(const Value: IJanuaField);
begin
  FAwbTypeId := Value;
end;

function TCustomLogisticAWB.GetJguid: IJanuaField;
begin
  Result := FJguid;
end;

procedure TCustomLogisticAWB.SetJguid(const Value: IJanuaField);
begin
  FJguid := Value;
end;

function TCustomLogisticAWB.GetNetamount: IJanuaField;
begin
  Result := FNetamount;
end;

procedure TCustomLogisticAWB.SetNetamount(const Value: IJanuaField);
begin
  FNetamount := Value;
end;

function TCustomLogisticAWB.GetProgressive: IJanuaField;
begin
  Result := FProgressive;
end;

procedure TCustomLogisticAWB.SetProgressive(const Value: IJanuaField);
begin
  FProgressive := Value;
end;

function TCustomLogisticAWB.GetMawbcosts: IJanuaField;
begin
  Result := FMawbcosts;
end;

procedure TCustomLogisticAWB.SetMawbcosts(const Value: IJanuaField);
begin
  FMawbcosts := Value;
end;

function TCustomLogisticAWB.GetMawbothcosts: IJanuaField;
begin
  Result := FMawbothcosts;
end;

procedure TCustomLogisticAWB.SetMawbothcosts(const Value: IJanuaField);
begin
  FMawbothcosts := Value;
end;

function TCustomLogisticAWB.GetTaxableweight: IJanuaField;
begin
  Result := FTaxableweight;
end;

procedure TCustomLogisticAWB.SetTaxableweight(const Value: IJanuaField);
begin
  FTaxableweight := Value;
end;

function TCustomLogisticAWB.GetMasterdate: IJanuaField;
begin
  Result := FMasterdate;
end;

procedure TCustomLogisticAWB.SetMasterdate(const Value: IJanuaField);
begin
  FMasterdate := Value;
end;

function TCustomLogisticAWB.GetEstimateflight: IJanuaField;
begin
  Result := FEstimateflight;
end;

procedure TCustomLogisticAWB.SetEstimateflight(const Value: IJanuaField);
begin
  FEstimateflight := Value;
end;

function TCustomLogisticAWB.GetEffectiveflight: IJanuaField;
begin
  Result := FEffectiveflight;
end;

procedure TCustomLogisticAWB.SetEffectiveflight(const Value: IJanuaField);
begin
  FEffectiveflight := Value;
end;

function TCustomLogisticAWB.GetEtdestimate: IJanuaField;
begin
  Result := FEtdestimate;
end;

procedure TCustomLogisticAWB.SetEtdestimate(const Value: IJanuaField);
begin
  FEtdestimate := Value;
end;

function TCustomLogisticAWB.GetEtdeffective: IJanuaField;
begin
  Result := FEtdeffective;
end;

procedure TCustomLogisticAWB.SetEtdeffective(const Value: IJanuaField);
begin
  FEtdeffective := Value;
end;

function TCustomLogisticAWB.GetEtaestimate: IJanuaField;
begin
  Result := FEtaestimate;
end;

procedure TCustomLogisticAWB.SetEtaestimate(const Value: IJanuaField);
begin
  FEtaestimate := Value;
end;

function TCustomLogisticAWB.GetEtaeffective: IJanuaField;
begin
  Result := FEtaeffective;
end;

procedure TCustomLogisticAWB.SetEtaeffective(const Value: IJanuaField);
begin
  FEtaeffective := Value;
end;

function TCustomLogisticAWB.GetTransportcost: IJanuaField;
begin
  Result := FTransportcost;
end;

procedure TCustomLogisticAWB.SetTransportcost(const Value: IJanuaField);
begin
  FTransportcost := Value;
end;

function TCustomLogisticAWB.GetContainerseals: IJanuaField;
begin
  Result := FContainerseals;
end;

procedure TCustomLogisticAWB.SetContainerseals(const Value: IJanuaField);
begin
  FContainerseals := Value;
end;

function TCustomLogisticAWB.GetMasternotes: IJanuaField;
begin
  Result := FMasternotes;
end;

procedure TCustomLogisticAWB.SetMasternotes(const Value: IJanuaField);
begin
  FMasternotes := Value;
end;

function TCustomLogisticAWB.GetAwbType: IJanuaField;
begin
  Result := FAwbType;
end;

procedure TCustomLogisticAWB.SetAwbType(const Value: IJanuaField);
begin
  FAwbType := Value;
end;

function TCustomLogisticAWB.GetOrderId: IJanuaField;
begin
  Result := FOrderId;
end;

procedure TCustomLogisticAWB.SetOrderId(const Value: IJanuaField);
begin
  FOrderId := Value;
end;

function TCustomLogisticAWB.GetCustomsDocType: IJanuaField;
begin
  Result := FCustomsDocType;
end;

procedure TCustomLogisticAWB.SetCustomsDocType(const Value: IJanuaField);
begin
  FCustomsDocType := Value;
end;

function TCustomLogisticAWB.GetPalletcost: IJanuaField;
begin
  Result := FPalletcost;
end;

procedure TCustomLogisticAWB.SetPalletcost(const Value: IJanuaField);
begin
  FPalletcost := Value;
end;

function TCustomLogisticAWB.GetYearNumber: IJanuaField;
begin
  Result := FYearNumber;
end;

procedure TCustomLogisticAWB.SetYearNumber(const Value: IJanuaField);
begin
  FYearNumber := Value;
end;

function TCustomLogisticAWB.GetField19a: IJanuaField;
begin
  Result := FField19a;
end;

procedure TCustomLogisticAWB.SetField19a(const Value: IJanuaField);
begin
  FField19a := Value;
end;

function TCustomLogisticAWB.GetBranchlog: IJanuaField;
begin
  Result := FBranchlog;
end;

procedure TCustomLogisticAWB.SetBranchlog(const Value: IJanuaField);
begin
  FBranchlog := Value;
end;

function TCustomLogisticAWB.GetDeleted: IJanuaField;
begin
  Result := FDeleted;
end;

procedure TCustomLogisticAWB.SetDeleted(const Value: IJanuaField);
begin
  FDeleted := Value;
end;

function TCustomLogisticAWB.GetCarrierId: IJanuaField;
begin
  Result := FCarrierId;
end;

procedure TCustomLogisticAWB.SetCarrierId(const Value: IJanuaField);
begin
  FCarrierId := Value;
end;

function TCustomLogisticAWB.GetCarrierName: IJanuaField;
begin
  Result := FCarrierName;
end;

procedure TCustomLogisticAWB.SetCarrierName(const Value: IJanuaField);
begin
  FCarrierName := Value;
end;

function TCustomLogisticAWB.GetCarrierCode: IJanuaField;
begin
  Result := FCarrierCode;
end;

procedure TCustomLogisticAWB.SetCarrierCode(const Value: IJanuaField);
begin
  FCarrierCode := Value;
end;

function TCustomLogisticAWB.GetShipperId: IJanuaField;
begin
  Result := FShipperId;
end;

procedure TCustomLogisticAWB.SetShipperId(const Value: IJanuaField);
begin
  FShipperId := Value;
end;

function TCustomLogisticAWB.GetShipperCode: IJanuaField;
begin
  Result := FShipperCode;
end;

procedure TCustomLogisticAWB.SetShipperCode(const Value: IJanuaField);
begin
  FShipperCode := Value;
end;

function TCustomLogisticAWB.GetShipperName: IJanuaField;
begin
  Result := FShipperName;
end;

procedure TCustomLogisticAWB.SetShipperName(const Value: IJanuaField);
begin
  FShipperName := Value;
end;

function TCustomLogisticAWB.GetConsigneeId: IJanuaField;
begin
  Result := FConsigneeId;
end;

procedure TCustomLogisticAWB.SetConsigneeId(const Value: IJanuaField);
begin
  FConsigneeId := Value;
end;

function TCustomLogisticAWB.GetConsigneeName: IJanuaField;
begin
  Result := FConsigneeName;
end;

procedure TCustomLogisticAWB.SetConsigneeName(const Value: IJanuaField);
begin
  FConsigneeName := Value;
end;

function TCustomLogisticAWB.GetConsigneeCode: IJanuaField;
begin
  Result := FConsigneeCode;
end;

procedure TCustomLogisticAWB.SetConsigneeCode(const Value: IJanuaField);
begin
  FConsigneeCode := Value;
end;

function TCustomLogisticAWB.GetIataAgentId: IJanuaField;
begin
  Result := FIataAgentId;
end;

procedure TCustomLogisticAWB.SetIataAgentId(const Value: IJanuaField);
begin
  FIataAgentId := Value;
end;

function TCustomLogisticAWB.GetIataAgentCode: IJanuaField;
begin
  Result := FIataAgentCode;
end;

procedure TCustomLogisticAWB.SetIataAgentCode(const Value: IJanuaField);
begin
  FIataAgentCode := Value;
end;

function TCustomLogisticAWB.GetIataAgentName: IJanuaField;
begin
  Result := FIataAgentName;
end;

procedure TCustomLogisticAWB.SetIataAgentName(const Value: IJanuaField);
begin
  FIataAgentName := Value;
end;

{ TCustomLogisticAWBs }
constructor TCustomLogisticAWBs.Create;
begin
  inherited;
  // self.FRecord := TLogisticAWBFactory.CreateRecord('LogisticAWB');
end;

function TCustomLogisticAWBs.GetYear: IJanuaField;
begin
  Result := LogisticAWB.Year;
end;

procedure TCustomLogisticAWBs.SetYear(const Value: IJanuaField);
begin
  LogisticAWB.Year := Value;
end;

function TCustomLogisticAWBs.GetOfficeId: IJanuaField;
begin
  Result := self.LogisticAWB.OfficeId;
end;

procedure TCustomLogisticAWBs.SetOfficeId(const Value: IJanuaField);
begin
  self.LogisticAWB.OfficeId := Value;
end;

function TCustomLogisticAWBs.GetId: IJanuaField;
begin
  Result := self.LogisticAWB.Id;
end;

procedure TCustomLogisticAWBs.SetId(const Value: IJanuaField);
begin
  self.LogisticAWB.Id := Value;
end;

function TCustomLogisticAWBs.GetCode: IJanuaField;
begin
  Result := self.LogisticAWB.Code;
end;

procedure TCustomLogisticAWBs.SetCode(const Value: IJanuaField);
begin
  self.LogisticAWB.Code := Value;
end;

function TCustomLogisticAWBs.GetDbSchemaId: IJanuaField;
begin
  Result := self.LogisticAWB.DbSchemaId;
end;

procedure TCustomLogisticAWBs.SetDbSchemaId(const Value: IJanuaField);
begin
  self.LogisticAWB.DbSchemaId := Value;
end;

function TCustomLogisticAWBs.GetField1a: IJanuaField;
begin
  Result := self.LogisticAWB.Field1a;
end;

procedure TCustomLogisticAWBs.SetField1a(const Value: IJanuaField);
begin
  self.LogisticAWB.Field1a := Value;
end;

function TCustomLogisticAWBs.GetField1b: IJanuaField;
begin
  Result := self.LogisticAWB.Field1b;
end;

procedure TCustomLogisticAWBs.SetField1b(const Value: IJanuaField);
begin
  self.LogisticAWB.Field1b := Value;
end;

function TCustomLogisticAWBs.GetField1c: IJanuaField;
begin
  Result := self.LogisticAWB.Field1c;
end;

procedure TCustomLogisticAWBs.SetField1c(const Value: IJanuaField);
begin
  self.LogisticAWB.Field1c := Value;
end;

function TCustomLogisticAWBs.GetCin: IJanuaField;
begin
  Result := self.LogisticAWB.Cin;
end;

procedure TCustomLogisticAWBs.SetCin(const Value: IJanuaField);
begin
  self.LogisticAWB.Cin := Value;
end;

function TCustomLogisticAWBs.GetField2: IJanuaField;
begin
  Result := self.LogisticAWB.Field2;
end;

procedure TCustomLogisticAWBs.SetField2(const Value: IJanuaField);
begin
  self.LogisticAWB.Field2 := Value;
end;

function TCustomLogisticAWBs.GetField21: IJanuaField;
begin
  Result := self.LogisticAWB.Field21;
end;

procedure TCustomLogisticAWBs.SetField21(const Value: IJanuaField);
begin
  self.LogisticAWB.Field21 := Value;
end;

function TCustomLogisticAWBs.GetField22: IJanuaField;
begin
  Result := self.LogisticAWB.Field22;
end;

procedure TCustomLogisticAWBs.SetField22(const Value: IJanuaField);
begin
  self.LogisticAWB.Field22 := Value;
end;

function TCustomLogisticAWBs.GetField23: IJanuaField;
begin
  Result := self.LogisticAWB.Field23;
end;

procedure TCustomLogisticAWBs.SetField23(const Value: IJanuaField);
begin
  self.LogisticAWB.Field23 := Value;
end;

function TCustomLogisticAWBs.GetField3: IJanuaField;
begin
  Result := self.LogisticAWB.Field3;
end;

procedure TCustomLogisticAWBs.SetField3(const Value: IJanuaField);
begin
  self.LogisticAWB.Field3 := Value;
end;

function TCustomLogisticAWBs.GetField31: IJanuaField;
begin
  Result := self.LogisticAWB.Field31;
end;

procedure TCustomLogisticAWBs.SetField31(const Value: IJanuaField);
begin
  self.LogisticAWB.Field31 := Value;
end;

function TCustomLogisticAWBs.GetField32: IJanuaField;
begin
  Result := self.LogisticAWB.Field32;
end;

procedure TCustomLogisticAWBs.SetField32(const Value: IJanuaField);
begin
  self.LogisticAWB.Field32 := Value;
end;

function TCustomLogisticAWBs.GetField33: IJanuaField;
begin
  Result := self.LogisticAWB.Field33;
end;

procedure TCustomLogisticAWBs.SetField33(const Value: IJanuaField);
begin
  self.LogisticAWB.Field33 := Value;
end;

function TCustomLogisticAWBs.GetField4a: IJanuaField;
begin
  Result := self.LogisticAWB.Field4a;
end;

procedure TCustomLogisticAWBs.SetField4a(const Value: IJanuaField);
begin
  self.LogisticAWB.Field4a := Value;
end;

function TCustomLogisticAWBs.GetField4b: IJanuaField;
begin
  Result := self.LogisticAWB.Field4b;
end;

procedure TCustomLogisticAWBs.SetField4b(const Value: IJanuaField);
begin
  self.LogisticAWB.Field4b := Value;
end;

function TCustomLogisticAWBs.GetField4c: IJanuaField;
begin
  Result := self.LogisticAWB.Field4c;
end;

procedure TCustomLogisticAWBs.SetField4c(const Value: IJanuaField);
begin
  self.LogisticAWB.Field4c := Value;
end;

function TCustomLogisticAWBs.GetField4c2: IJanuaField;
begin
  Result := self.LogisticAWB.Field4c2;
end;

procedure TCustomLogisticAWBs.SetField4c2(const Value: IJanuaField);
begin
  self.LogisticAWB.Field4c2 := Value;
end;

function TCustomLogisticAWBs.GetField4c3: IJanuaField;
begin
  Result := self.LogisticAWB.Field4c3;
end;

procedure TCustomLogisticAWBs.SetField4c3(const Value: IJanuaField);
begin
  self.LogisticAWB.Field4c3 := Value;
end;

function TCustomLogisticAWBs.GetField5: IJanuaField;
begin
  Result := self.LogisticAWB.Field5;
end;

procedure TCustomLogisticAWBs.SetField5(const Value: IJanuaField);
begin
  self.LogisticAWB.Field5 := Value;
end;

function TCustomLogisticAWBs.GetField6: IJanuaField;
begin
  Result := self.LogisticAWB.Field6;
end;

procedure TCustomLogisticAWBs.SetField6(const Value: IJanuaField);
begin
  self.LogisticAWB.Field6 := Value;
end;

function TCustomLogisticAWBs.GetField7: IJanuaField;
begin
  Result := self.LogisticAWB.Field7;
end;

procedure TCustomLogisticAWBs.SetField7(const Value: IJanuaField);
begin
  self.LogisticAWB.Field7 := Value;
end;

function TCustomLogisticAWBs.GetField8: IJanuaField;
begin
  Result := self.LogisticAWB.Field8;
end;

procedure TCustomLogisticAWBs.SetField8(const Value: IJanuaField);
begin
  self.LogisticAWB.Field8 := Value;
end;

function TCustomLogisticAWBs.GetField8a: IJanuaField;
begin
  Result := self.LogisticAWB.Field8a;
end;

procedure TCustomLogisticAWBs.SetField8a(const Value: IJanuaField);
begin
  self.LogisticAWB.Field8a := Value;
end;

function TCustomLogisticAWBs.GetField8b: IJanuaField;
begin
  Result := self.LogisticAWB.Field8b;
end;

procedure TCustomLogisticAWBs.SetField8b(const Value: IJanuaField);
begin
  self.LogisticAWB.Field8b := Value;
end;

function TCustomLogisticAWBs.GetField8c: IJanuaField;
begin
  Result := self.LogisticAWB.Field8c;
end;

procedure TCustomLogisticAWBs.SetField8c(const Value: IJanuaField);
begin
  self.LogisticAWB.Field8c := Value;
end;

function TCustomLogisticAWBs.GetField8d: IJanuaField;
begin
  Result := self.LogisticAWB.Field8d;
end;

procedure TCustomLogisticAWBs.SetField8d(const Value: IJanuaField);
begin
  self.LogisticAWB.Field8d := Value;
end;

function TCustomLogisticAWBs.GetField8c1: IJanuaField;
begin
  Result := self.LogisticAWB.Field8c1;
end;

procedure TCustomLogisticAWBs.SetField8c1(const Value: IJanuaField);
begin
  self.LogisticAWB.Field8c1 := Value;
end;

function TCustomLogisticAWBs.GetField8d1: IJanuaField;
begin
  Result := self.LogisticAWB.Field8d1;
end;

procedure TCustomLogisticAWBs.SetField8d1(const Value: IJanuaField);
begin
  self.LogisticAWB.Field8d1 := Value;
end;

function TCustomLogisticAWBs.GetField8e: IJanuaField;
begin
  Result := self.LogisticAWB.Field8e;
end;

procedure TCustomLogisticAWBs.SetField8e(const Value: IJanuaField);
begin
  self.LogisticAWB.Field8e := Value;
end;

function TCustomLogisticAWBs.GetField8f: IJanuaField;
begin
  Result := self.LogisticAWB.Field8f;
end;

procedure TCustomLogisticAWBs.SetField8f(const Value: IJanuaField);
begin
  self.LogisticAWB.Field8f := Value;
end;

function TCustomLogisticAWBs.GetField8f1: IJanuaField;
begin
  Result := self.LogisticAWB.Field8f1;
end;

procedure TCustomLogisticAWBs.SetField8f1(const Value: IJanuaField);
begin
  self.LogisticAWB.Field8f1 := Value;
end;

function TCustomLogisticAWBs.GetField9: IJanuaField;
begin
  Result := self.LogisticAWB.Field9;
end;

procedure TCustomLogisticAWBs.SetField9(const Value: IJanuaField);
begin
  self.LogisticAWB.Field9 := Value;
end;

function TCustomLogisticAWBs.GetField10: IJanuaField;
begin
  Result := self.LogisticAWB.Field10;
end;

procedure TCustomLogisticAWBs.SetField10(const Value: IJanuaField);
begin
  self.LogisticAWB.Field10 := Value;
end;

function TCustomLogisticAWBs.GetField11: IJanuaField;
begin
  Result := self.LogisticAWB.Field11;
end;

procedure TCustomLogisticAWBs.SetField11(const Value: IJanuaField);
begin
  self.LogisticAWB.Field11 := Value;
end;

function TCustomLogisticAWBs.GetField12: IJanuaField;
begin
  Result := self.LogisticAWB.Field12;
end;

procedure TCustomLogisticAWBs.SetField12(const Value: IJanuaField);
begin
  self.LogisticAWB.Field12 := Value;
end;

function TCustomLogisticAWBs.GetField13: IJanuaField;
begin
  Result := self.LogisticAWB.Field13;
end;

procedure TCustomLogisticAWBs.SetField13(const Value: IJanuaField);
begin
  self.LogisticAWB.Field13 := Value;
end;

function TCustomLogisticAWBs.GetField14: IJanuaField;
begin
  Result := self.LogisticAWB.Field14;
end;

procedure TCustomLogisticAWBs.SetField14(const Value: IJanuaField);
begin
  self.LogisticAWB.Field14 := Value;
end;

function TCustomLogisticAWBs.GetField15: IJanuaField;
begin
  Result := self.LogisticAWB.Field15;
end;

procedure TCustomLogisticAWBs.SetField15(const Value: IJanuaField);
begin
  self.LogisticAWB.Field15 := Value;
end;

function TCustomLogisticAWBs.GetField16: IJanuaField;
begin
  Result := self.LogisticAWB.Field16;
end;

procedure TCustomLogisticAWBs.SetField16(const Value: IJanuaField);
begin
  self.LogisticAWB.Field16 := Value;
end;

function TCustomLogisticAWBs.GetField17: IJanuaField;
begin
  Result := self.LogisticAWB.Field17;
end;

procedure TCustomLogisticAWBs.SetField17(const Value: IJanuaField);
begin
  self.LogisticAWB.Field17 := Value;
end;

function TCustomLogisticAWBs.GetField28a: IJanuaField;
begin
  Result := self.LogisticAWB.Field28a;
end;

procedure TCustomLogisticAWBs.SetField28a(const Value: IJanuaField);
begin
  self.LogisticAWB.Field28a := Value;
end;

function TCustomLogisticAWBs.GetField28b: IJanuaField;
begin
  Result := self.LogisticAWB.Field28b;
end;

procedure TCustomLogisticAWBs.SetField28b(const Value: IJanuaField);
begin
  self.LogisticAWB.Field28b := Value;
end;

function TCustomLogisticAWBs.GetField29a: IJanuaField;
begin
  Result := self.LogisticAWB.Field29a;
end;

procedure TCustomLogisticAWBs.SetField29a(const Value: IJanuaField);
begin
  self.LogisticAWB.Field29a := Value;
end;

function TCustomLogisticAWBs.GetField29b: IJanuaField;
begin
  Result := self.LogisticAWB.Field29b;
end;

procedure TCustomLogisticAWBs.SetField29b(const Value: IJanuaField);
begin
  self.LogisticAWB.Field29b := Value;
end;

function TCustomLogisticAWBs.GetField30a: IJanuaField;
begin
  Result := self.LogisticAWB.Field30a;
end;

procedure TCustomLogisticAWBs.SetField30a(const Value: IJanuaField);
begin
  self.LogisticAWB.Field30a := Value;
end;

function TCustomLogisticAWBs.GetField30b: IJanuaField;
begin
  Result := self.LogisticAWB.Field30b;
end;

procedure TCustomLogisticAWBs.SetField30b(const Value: IJanuaField);
begin
  self.LogisticAWB.Field30b := Value;
end;

function TCustomLogisticAWBs.GetField31a: IJanuaField;
begin
  Result := self.LogisticAWB.Field31a;
end;

procedure TCustomLogisticAWBs.SetField31a(const Value: IJanuaField);
begin
  self.LogisticAWB.Field31a := Value;
end;

function TCustomLogisticAWBs.GetField31b: IJanuaField;
begin
  Result := self.LogisticAWB.Field31b;
end;

procedure TCustomLogisticAWBs.SetField31b(const Value: IJanuaField);
begin
  self.LogisticAWB.Field31b := Value;
end;

function TCustomLogisticAWBs.GetField32a: IJanuaField;
begin
  Result := self.LogisticAWB.Field32a;
end;

procedure TCustomLogisticAWBs.SetField32a(const Value: IJanuaField);
begin
  self.LogisticAWB.Field32a := Value;
end;

function TCustomLogisticAWBs.GetField32b: IJanuaField;
begin
  Result := self.LogisticAWB.Field32b;
end;

procedure TCustomLogisticAWBs.SetField32b(const Value: IJanuaField);
begin
  self.LogisticAWB.Field32b := Value;
end;

function TCustomLogisticAWBs.GetField33a: IJanuaField;
begin
  Result := self.LogisticAWB.Field33a;
end;

procedure TCustomLogisticAWBs.SetField33a(const Value: IJanuaField);
begin
  self.LogisticAWB.Field33a := Value;
end;

function TCustomLogisticAWBs.GetField33b: IJanuaField;
begin
  Result := self.LogisticAWB.Field33b;
end;

procedure TCustomLogisticAWBs.SetField33b(const Value: IJanuaField);
begin
  self.LogisticAWB.Field33b := Value;
end;

function TCustomLogisticAWBs.GetField34: IJanuaField;
begin
  Result := self.LogisticAWB.Field34;
end;

procedure TCustomLogisticAWBs.SetField34(const Value: IJanuaField);
begin
  self.LogisticAWB.Field34 := Value;
end;

function TCustomLogisticAWBs.GetField35: IJanuaField;
begin
  Result := self.LogisticAWB.Field35;
end;

procedure TCustomLogisticAWBs.SetField35(const Value: IJanuaField);
begin
  self.LogisticAWB.Field35 := Value;
end;

function TCustomLogisticAWBs.GetField36: IJanuaField;
begin
  Result := self.LogisticAWB.Field36;
end;

procedure TCustomLogisticAWBs.SetField36(const Value: IJanuaField);
begin
  self.LogisticAWB.Field36 := Value;
end;

function TCustomLogisticAWBs.GetField37: IJanuaField;
begin
  Result := self.LogisticAWB.Field37;
end;

procedure TCustomLogisticAWBs.SetField37(const Value: IJanuaField);
begin
  self.LogisticAWB.Field37 := Value;
end;

function TCustomLogisticAWBs.GetField38: IJanuaField;
begin
  Result := self.LogisticAWB.Field38;
end;

procedure TCustomLogisticAWBs.SetField38(const Value: IJanuaField);
begin
  self.LogisticAWB.Field38 := Value;
end;

function TCustomLogisticAWBs.GetHi1: IJanuaField;
begin
  Result := self.LogisticAWB.Hi1;
end;

procedure TCustomLogisticAWBs.SetHi1(const Value: IJanuaField);
begin
  self.LogisticAWB.Hi1 := Value;
end;

function TCustomLogisticAWBs.GetHi2: IJanuaField;
begin
  Result := self.LogisticAWB.Hi2;
end;

procedure TCustomLogisticAWBs.SetHi2(const Value: IJanuaField);
begin
  self.LogisticAWB.Hi2 := Value;
end;

function TCustomLogisticAWBs.GetHi3: IJanuaField;
begin
  Result := self.LogisticAWB.Hi3;
end;

procedure TCustomLogisticAWBs.SetHi3(const Value: IJanuaField);
begin
  self.LogisticAWB.Hi3 := Value;
end;

function TCustomLogisticAWBs.GetCodother1: IJanuaField;
begin
  Result := self.LogisticAWB.Codother1;
end;

procedure TCustomLogisticAWBs.SetCodother1(const Value: IJanuaField);
begin
  self.LogisticAWB.Codother1 := Value;
end;

function TCustomLogisticAWBs.GetCodother2: IJanuaField;
begin
  Result := self.LogisticAWB.Codother2;
end;

procedure TCustomLogisticAWBs.SetCodother2(const Value: IJanuaField);
begin
  self.LogisticAWB.Codother2 := Value;
end;

function TCustomLogisticAWBs.GetCodother3: IJanuaField;
begin
  Result := self.LogisticAWB.Codother3;
end;

procedure TCustomLogisticAWBs.SetCodother3(const Value: IJanuaField);
begin
  self.LogisticAWB.Codother3 := Value;
end;

function TCustomLogisticAWBs.GetCodother4: IJanuaField;
begin
  Result := self.LogisticAWB.Codother4;
end;

procedure TCustomLogisticAWBs.SetCodother4(const Value: IJanuaField);
begin
  self.LogisticAWB.Codother4 := Value;
end;

function TCustomLogisticAWBs.GetCodother5: IJanuaField;
begin
  Result := self.LogisticAWB.Codother5;
end;

procedure TCustomLogisticAWBs.SetCodother5(const Value: IJanuaField);
begin
  self.LogisticAWB.Codother5 := Value;
end;

function TCustomLogisticAWBs.GetCodother6: IJanuaField;
begin
  Result := self.LogisticAWB.Codother6;
end;

procedure TCustomLogisticAWBs.SetCodother6(const Value: IJanuaField);
begin
  self.LogisticAWB.Codother6 := Value;
end;

function TCustomLogisticAWBs.GetCodother7: IJanuaField;
begin
  Result := self.LogisticAWB.Codother7;
end;

procedure TCustomLogisticAWBs.SetCodother7(const Value: IJanuaField);
begin
  self.LogisticAWB.Codother7 := Value;
end;

function TCustomLogisticAWBs.GetCodother8: IJanuaField;
begin
  Result := self.LogisticAWB.Codother8;
end;

procedure TCustomLogisticAWBs.SetCodother8(const Value: IJanuaField);
begin
  self.LogisticAWB.Codother8 := Value;
end;

function TCustomLogisticAWBs.GetCodother9: IJanuaField;
begin
  Result := self.LogisticAWB.Codother9;
end;

procedure TCustomLogisticAWBs.SetCodother9(const Value: IJanuaField);
begin
  self.LogisticAWB.Codother9 := Value;
end;

function TCustomLogisticAWBs.GetAmountother9: IJanuaField;
begin
  Result := self.LogisticAWB.Amountother9;
end;

procedure TCustomLogisticAWBs.SetAmountother9(const Value: IJanuaField);
begin
  self.LogisticAWB.Amountother9 := Value;
end;

function TCustomLogisticAWBs.GetAmountother8: IJanuaField;
begin
  Result := self.LogisticAWB.Amountother8;
end;

procedure TCustomLogisticAWBs.SetAmountother8(const Value: IJanuaField);
begin
  self.LogisticAWB.Amountother8 := Value;
end;

function TCustomLogisticAWBs.GetAmountother7: IJanuaField;
begin
  Result := self.LogisticAWB.Amountother7;
end;

procedure TCustomLogisticAWBs.SetAmountother7(const Value: IJanuaField);
begin
  self.LogisticAWB.Amountother7 := Value;
end;

function TCustomLogisticAWBs.GetAmountother6: IJanuaField;
begin
  Result := self.LogisticAWB.Amountother6;
end;

procedure TCustomLogisticAWBs.SetAmountother6(const Value: IJanuaField);
begin
  self.LogisticAWB.Amountother6 := Value;
end;

function TCustomLogisticAWBs.GetAmountother5: IJanuaField;
begin
  Result := self.LogisticAWB.Amountother5;
end;

procedure TCustomLogisticAWBs.SetAmountother5(const Value: IJanuaField);
begin
  self.LogisticAWB.Amountother5 := Value;
end;

function TCustomLogisticAWBs.GetAmountother4: IJanuaField;
begin
  Result := self.LogisticAWB.Amountother4;
end;

procedure TCustomLogisticAWBs.SetAmountother4(const Value: IJanuaField);
begin
  self.LogisticAWB.Amountother4 := Value;
end;

function TCustomLogisticAWBs.GetAmountother3: IJanuaField;
begin
  Result := self.LogisticAWB.Amountother3;
end;

procedure TCustomLogisticAWBs.SetAmountother3(const Value: IJanuaField);
begin
  self.LogisticAWB.Amountother3 := Value;
end;

function TCustomLogisticAWBs.GetAmountother2: IJanuaField;
begin
  Result := self.LogisticAWB.Amountother2;
end;

procedure TCustomLogisticAWBs.SetAmountother2(const Value: IJanuaField);
begin
  self.LogisticAWB.Amountother2 := Value;
end;

function TCustomLogisticAWBs.GetAmountother1: IJanuaField;
begin
  Result := self.LogisticAWB.Amountother1;
end;

procedure TCustomLogisticAWBs.SetAmountother1(const Value: IJanuaField);
begin
  self.LogisticAWB.Amountother1 := Value;
end;

function TCustomLogisticAWBs.GetFieldhead: IJanuaField;
begin
  Result := self.LogisticAWB.Fieldhead;
end;

procedure TCustomLogisticAWBs.SetFieldhead(const Value: IJanuaField);
begin
  self.LogisticAWB.Fieldhead := Value;
end;

function TCustomLogisticAWBs.GetPartialmaster: IJanuaField;
begin
  Result := self.LogisticAWB.Partialmaster;
end;

procedure TCustomLogisticAWBs.SetPartialmaster(const Value: IJanuaField);
begin
  self.LogisticAWB.Partialmaster := Value;
end;

function TCustomLogisticAWBs.GetPartialmasteryear: IJanuaField;
begin
  Result := self.LogisticAWB.Partialmasteryear;
end;

procedure TCustomLogisticAWBs.SetPartialmasteryear(const Value: IJanuaField);
begin
  self.LogisticAWB.Partialmasteryear := Value;
end;

function TCustomLogisticAWBs.GetCurrencyId: IJanuaField;
begin
  Result := self.LogisticAWB.CurrencyId;
end;

procedure TCustomLogisticAWBs.SetCurrencyId(const Value: IJanuaField);
begin
  self.LogisticAWB.CurrencyId := Value;
end;

function TCustomLogisticAWBs.GetAwbTypeId: IJanuaField;
begin
  Result := self.LogisticAWB.AwbTypeId;
end;

procedure TCustomLogisticAWBs.SetAwbTypeId(const Value: IJanuaField);
begin
  self.LogisticAWB.AwbTypeId := Value;
end;

function TCustomLogisticAWBs.GetJguid: IJanuaField;
begin
  Result := self.LogisticAWB.Jguid;
end;

procedure TCustomLogisticAWBs.SetJguid(const Value: IJanuaField);
begin
  self.LogisticAWB.Jguid := Value;
end;

function TCustomLogisticAWBs.GetNetamount: IJanuaField;
begin
  Result := self.LogisticAWB.Netamount;
end;

procedure TCustomLogisticAWBs.SetNetamount(const Value: IJanuaField);
begin
  self.LogisticAWB.Netamount := Value;
end;

function TCustomLogisticAWBs.GetProgressive: IJanuaField;
begin
  Result := self.LogisticAWB.Progressive;
end;

procedure TCustomLogisticAWBs.SetProgressive(const Value: IJanuaField);
begin
  self.LogisticAWB.Progressive := Value;
end;

function TCustomLogisticAWBs.GetMawbcosts: IJanuaField;
begin
  Result := self.LogisticAWB.Mawbcosts;
end;

procedure TCustomLogisticAWBs.SetMawbcosts(const Value: IJanuaField);
begin
  self.LogisticAWB.Mawbcosts := Value;
end;

function TCustomLogisticAWBs.GetMawbothcosts: IJanuaField;
begin
  Result := self.LogisticAWB.Mawbothcosts;
end;

procedure TCustomLogisticAWBs.SetMawbothcosts(const Value: IJanuaField);
begin
  self.LogisticAWB.Mawbothcosts := Value;
end;

function TCustomLogisticAWBs.GetTaxableweight: IJanuaField;
begin
  Result := self.LogisticAWB.Taxableweight;
end;

procedure TCustomLogisticAWBs.SetTaxableweight(const Value: IJanuaField);
begin
  self.LogisticAWB.Taxableweight := Value;
end;

function TCustomLogisticAWBs.GetMasterdate: IJanuaField;
begin
  Result := self.LogisticAWB.Masterdate;
end;

procedure TCustomLogisticAWBs.SetMasterdate(const Value: IJanuaField);
begin
  self.LogisticAWB.Masterdate := Value;
end;

function TCustomLogisticAWBs.GetEstimateflight: IJanuaField;
begin
  Result := self.LogisticAWB.Estimateflight;
end;

procedure TCustomLogisticAWBs.SetEstimateflight(const Value: IJanuaField);
begin
  self.LogisticAWB.Estimateflight := Value;
end;

function TCustomLogisticAWBs.GetEffectiveflight: IJanuaField;
begin
  Result := self.LogisticAWB.Effectiveflight;
end;

procedure TCustomLogisticAWBs.SetEffectiveflight(const Value: IJanuaField);
begin
  self.LogisticAWB.Effectiveflight := Value;
end;

function TCustomLogisticAWBs.GetEtdestimate: IJanuaField;
begin
  Result := self.LogisticAWB.Etdestimate;
end;

procedure TCustomLogisticAWBs.SetEtdestimate(const Value: IJanuaField);
begin
  self.LogisticAWB.Etdestimate := Value;
end;

function TCustomLogisticAWBs.GetEtdeffective: IJanuaField;
begin
  Result := self.LogisticAWB.Etdeffective;
end;

procedure TCustomLogisticAWBs.SetEtdeffective(const Value: IJanuaField);
begin
  self.LogisticAWB.Etdeffective := Value;
end;

function TCustomLogisticAWBs.GetEtaestimate: IJanuaField;
begin
  Result := self.LogisticAWB.Etaestimate;
end;

procedure TCustomLogisticAWBs.SetEtaestimate(const Value: IJanuaField);
begin
  self.LogisticAWB.Etaestimate := Value;
end;

function TCustomLogisticAWBs.GetEtaeffective: IJanuaField;
begin
  Result := self.LogisticAWB.Etaeffective;
end;

procedure TCustomLogisticAWBs.SetEtaeffective(const Value: IJanuaField);
begin
  self.LogisticAWB.Etaeffective := Value;
end;

function TCustomLogisticAWBs.GetTransportcost: IJanuaField;
begin
  Result := self.LogisticAWB.Transportcost;
end;

procedure TCustomLogisticAWBs.SetTransportcost(const Value: IJanuaField);
begin
  self.LogisticAWB.Transportcost := Value;
end;

function TCustomLogisticAWBs.GetContainerseals: IJanuaField;
begin
  Result := self.LogisticAWB.Containerseals;
end;

procedure TCustomLogisticAWBs.SetContainerseals(const Value: IJanuaField);
begin
  self.LogisticAWB.Containerseals := Value;
end;

function TCustomLogisticAWBs.GetMasternotes: IJanuaField;
begin
  Result := self.LogisticAWB.Masternotes;
end;

procedure TCustomLogisticAWBs.SetMasternotes(const Value: IJanuaField);
begin
  self.LogisticAWB.Masternotes := Value;
end;

function TCustomLogisticAWBs.GetAwbType: IJanuaField;
begin
  Result := self.LogisticAWB.AwbType;
end;

procedure TCustomLogisticAWBs.SetAwbType(const Value: IJanuaField);
begin
  self.LogisticAWB.AwbType := Value;
end;

function TCustomLogisticAWBs.GetOrderId: IJanuaField;
begin
  Result := self.LogisticAWB.OrderId;
end;

procedure TCustomLogisticAWBs.SetOrderId(const Value: IJanuaField);
begin
  self.LogisticAWB.OrderId := Value;
end;

function TCustomLogisticAWBs.GetCustomsDocType: IJanuaField;
begin
  Result := self.LogisticAWB.CustomsDocType;
end;

procedure TCustomLogisticAWBs.SetCustomsDocType(const Value: IJanuaField);
begin
  self.LogisticAWB.CustomsDocType := Value;
end;

function TCustomLogisticAWBs.GetPalletcost: IJanuaField;
begin
  Result := self.LogisticAWB.Palletcost;
end;

procedure TCustomLogisticAWBs.SetPalletcost(const Value: IJanuaField);
begin
  self.LogisticAWB.Palletcost := Value;
end;

function TCustomLogisticAWBs.GetYearNumber: IJanuaField;
begin
  Result := self.LogisticAWB.YearNumber;
end;

procedure TCustomLogisticAWBs.SetYearNumber(const Value: IJanuaField);
begin
  self.LogisticAWB.YearNumber := Value;
end;

function TCustomLogisticAWBs.GetField19a: IJanuaField;
begin
  Result := self.LogisticAWB.Field19a;
end;

procedure TCustomLogisticAWBs.SetField19a(const Value: IJanuaField);
begin
  self.LogisticAWB.Field19a := Value;
end;

function TCustomLogisticAWBs.GetBranchlog: IJanuaField;
begin
  Result := self.LogisticAWB.Branchlog;
end;

procedure TCustomLogisticAWBs.SetBranchlog(const Value: IJanuaField);
begin
  self.LogisticAWB.Branchlog := Value;
end;

function TCustomLogisticAWBs.GetDeleted: IJanuaField;
begin
  Result := self.LogisticAWB.Deleted;
end;

procedure TCustomLogisticAWBs.SetDeleted(const Value: IJanuaField);
begin
  self.LogisticAWB.Deleted := Value;
end;

function TCustomLogisticAWBs.GetCarrierId: IJanuaField;
begin
  Result := self.LogisticAWB.CarrierId;
end;

procedure TCustomLogisticAWBs.SetCarrierId(const Value: IJanuaField);
begin
  self.LogisticAWB.CarrierId := Value;
end;

function TCustomLogisticAWBs.GetCarrierName: IJanuaField;
begin
  Result := self.LogisticAWB.CarrierName;
end;

procedure TCustomLogisticAWBs.SetCarrierName(const Value: IJanuaField);
begin
  self.LogisticAWB.CarrierName := Value;
end;

function TCustomLogisticAWBs.GetCarrierCode: IJanuaField;
begin
  Result := self.LogisticAWB.CarrierCode;
end;

procedure TCustomLogisticAWBs.SetCarrierCode(const Value: IJanuaField);
begin
  self.LogisticAWB.CarrierCode := Value;
end;

function TCustomLogisticAWBs.GetShipperId: IJanuaField;
begin
  Result := self.LogisticAWB.ShipperId;
end;

procedure TCustomLogisticAWBs.SetShipperId(const Value: IJanuaField);
begin
  self.LogisticAWB.ShipperId := Value;
end;

function TCustomLogisticAWBs.GetShipperCode: IJanuaField;
begin
  Result := self.LogisticAWB.ShipperCode;
end;

procedure TCustomLogisticAWBs.SetShipperCode(const Value: IJanuaField);
begin
  self.LogisticAWB.ShipperCode := Value;
end;

function TCustomLogisticAWBs.GetShipperName: IJanuaField;
begin
  Result := self.LogisticAWB.ShipperName;
end;

procedure TCustomLogisticAWBs.SetShipperName(const Value: IJanuaField);
begin
  self.LogisticAWB.ShipperName := Value;
end;

function TCustomLogisticAWBs.GetConsigneeId: IJanuaField;
begin
  Result := self.LogisticAWB.ConsigneeId;
end;

procedure TCustomLogisticAWBs.SetConsigneeId(const Value: IJanuaField);
begin
  self.LogisticAWB.ConsigneeId := Value;
end;

function TCustomLogisticAWBs.GetConsigneeName: IJanuaField;
begin
  Result := self.LogisticAWB.ConsigneeName;
end;

procedure TCustomLogisticAWBs.SetConsigneeName(const Value: IJanuaField);
begin
  self.LogisticAWB.ConsigneeName := Value;
end;

function TCustomLogisticAWBs.GetConsigneeCode: IJanuaField;
begin
  Result := self.LogisticAWB.ConsigneeCode;
end;

procedure TCustomLogisticAWBs.SetConsigneeCode(const Value: IJanuaField);
begin
  self.LogisticAWB.ConsigneeCode := Value;
end;

function TCustomLogisticAWBs.GetIataAgentId: IJanuaField;
begin
  Result := self.LogisticAWB.IataAgentId;
end;

procedure TCustomLogisticAWBs.SetIataAgentId(const Value: IJanuaField);
begin
  self.LogisticAWB.IataAgentId := Value;
end;

function TCustomLogisticAWBs.GetIataAgentCode: IJanuaField;
begin
  Result := self.LogisticAWB.IataAgentCode;
end;

procedure TCustomLogisticAWBs.SetIataAgentCode(const Value: IJanuaField);
begin
  self.LogisticAWB.IataAgentCode := Value;
end;

function TCustomLogisticAWBs.GetIataAgentName: IJanuaField;
begin
  Result := self.LogisticAWB.IataAgentName;
end;

procedure TCustomLogisticAWBs.SetIataAgentName(const Value: IJanuaField);
begin
  self.LogisticAWB.IataAgentName := Value;
end;

function TCustomLogisticAWBs.GetLogisticAWB: ILogisticAWB;
begin
  Result := FRecord as ILogisticAWB;
end;

procedure TCustomLogisticAWBs.SetLogisticAWB(const Value: ILogisticAWB);
begin
  self.FRecord := Value;
end;

(*
  { TLogisticAWBFactory }

  class function TLogisticAWBFactory.CreateRecord(const aKey: string): ILogisticAWB;
  begin
  Result := TCustomLogisticAWB.Create;
  end;

  class function TLogisticAWBFactory.CreateRecordset(const aName: string;
  const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): ILogisticAWBs;
  begin
  Result := TCustomLogisticAWBs.Create(aName, aLocalStorage, aRemoteStorage);
  end;
*)

end.
