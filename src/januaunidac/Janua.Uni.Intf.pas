unit Janua.Uni.Intf;

interface

uses
  Janua.Core.DB.Intf, System.SysUtils, System.Classes, System.Variants, MemDS, Uni, Janua.Unidac.Connection;

type
  TDBTimeIntervalType = (dbiYear, dbiMonth, dbiDay, dbiMinute, dbiSecond);
  TGetTimeFunc = reference to function(const aBoolean: boolean): TDateTime;
  // System.SysUtils.TFunc<Boolean, TDateTime>;

const
  pgTimeInterval: array [TDBTimeIntervalType] of string = ('Y', 'M', 'D', 'N', 'S');

type
  IJanuaUniSessionSource = interface
    ['{8EF94987-4582-4ECB-8C22-A6756135C894}']
    { Public declarations }
    function GetDate: TDateTime;
    function GetTime: TDateTime;
    function GeTJanuaUniConnection: TJanuaUniConnection;
    procedure SeTJanuaUniConnection(const Value: TJanuaUniConnection);
    { Published declarations }
    property Connection: TJanuaUniConnection read GeTJanuaUniConnection write SeTJanuaUniConnection;
    property OraSession: TJanuaUniConnection read GeTJanuaUniConnection write SeTJanuaUniConnection;
    property Date: TDateTime read GetDate;
    property Now: TDateTime read GetTime;
  end;

type
  IJanuaOraSessionSource = interface(IJanuaUniSessionSource)
    ['{3EEEC543-22A7-4E39-B2B7-8104567D098D}']
  end;

type
  IJanuaSQLSrvSessionSource = interface(IJanuaUniSessionSource)
    ['{96333A10-A3CC-4DB4-A8C4-98FE0736EC81}']
  end;

type
  IJanuaPgSessionSource = interface(IJanuaUniSessionSource)
    ['{7DC12749-A4EF-443E-8772-58AEBB8D1B0D}']
  end;

type
  IJanuaUniDatasetFunctions = interface(IJanuaDatasetFunctions)
    ['{4B9D5AE7-5C01-4A54-927B-03D7D35419FC}']
    procedure SetupConnection(const aConnection: TUniConnection);
  end;

  IJanuaOraDatasetFunctions = interface(IJanuaUniDatasetFunctions)
    ['{4CC95A30-2C34-4941-BEED-B97A5BEA5AD2}']
  end;

  IJanuaPgDatasetFunctions = interface(IJanuaUniDatasetFunctions)
    ['{73942606-4A0C-42D4-9627-400F36FFA8AE}']
  end;

type
  IJanuaUniServerFunctions = interface(IJanuaServerFunctions)
    ['{9FD149D1-0141-4C58-AB7A-E961E50D4364}']
  end;

  IJanuaPgServerFunctions = interface(IJanuaServerFunctions)
    ['{9776E831-568D-439E-9F59-EAE35E949398}']
  end;

  IJanuaOraServerFunctions = interface(IJanuaServerFunctions)
    ['{984152EC-61E6-4E7D-8D37-EAB5CF934541}']
  end;

implementation

end.
