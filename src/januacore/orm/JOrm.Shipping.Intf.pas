unit JOrm.Shipping.Intf;

interface

uses  Janua.Core.Types,  Janua.Orm.Intf, JOrm.Shipping.Vessel.Custom.Intf;

type

  IVessel = interface(ICustomVessel)
    ['{0DF36744-95A8-4F60-A2DF-E82C6B598FB6}']
  end;

  IVessels = interface(ICustomVessels)
    ['{01AC0F80-8414-4094-AB30-D03D4CE50340}']
    function GetVessel: IVessel;
    procedure SetVessel(const Value: IVessel);
    property Vessel: IVessel read GetVessel write SetVessel;
  end;

implementation

initialization

  Janua.Core.Types.RegisterInterface(TypeInfo(IVessel));
  Janua.Core.Types.RegisterInterface(TypeInfo(IVessels));

end.
