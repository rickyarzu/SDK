unit JOrm.Logistic.AWBs.Intf;

interface

uses Janua.Orm.Intf, JOrm.Logistic.AWBs.Custom.Intf, JOrm.Logistic.AWBRows.Intf, JOrm.Anagraph.Intf;

type

  ILogisticAWB = interface(ILogisticCustomAWB)
    ['{E0CA5FBF-C328-44EB-B128-2752FAB05796}']
    { function GetAirAnagraph: IAnagraph;
      property AirAnagraph: IAnagraph read GetAirAnagraph; }
    // ILogisticAWBRows
    function GetLogisticAWBRows: ILogisticAWBRows;
    property LogisticAWBRows: ILogisticAWBRows read GetLogisticAWBRows;
  end;

  ILogisticAWBs = interface(ILogisticCustomAWBs)
    ['{6C581F3C-4966-46C8-883E-2195CA333CC3}']
    function GetLogisticAWB: ILogisticAWB;
    procedure SetLogisticAWB(const Value: ILogisticAWB);
    property LogisticAWB: ILogisticAWB read GetLogisticAWB write SetLogisticAWB;
  end;

implementation

end.
