unit JOrm.Logistic.Locations.Intf;

interface

uses Janua.Orm.Intf, JOrm.Logistic.Locations.Custom.Intf;

type

  ILogisticLocation = interface(ICustomLogisticLocation)
    ['{54E0804B-5B15-4C24-A345-F026C64391DC}']
  end;

  ILogisticLocations = interface(ICustomLogisticLocations)
    ['{273F10A6-E734-4A19-82F3-997F3F90214A}']
    function GetLogisticLocation: ILogisticLocation;
    procedure SetLogisticLocation(const Value: ILogisticLocation);
    property LogisticLocation: ILogisticLocation read GetLogisticLocation write SetLogisticLocation;
  end;

implementation

end.
