unit JOrm.Logistic.Locations.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, Janua.Orm.Types, JOrm.Logistic.Locations.Intf,
  JOrm.Logistic.Locations.Custom.Impl;

// ------------------------------------------ Impl object interface ----------------------------------

type
  TLogisticLocation = class(TCustomLogisticLocation, ILogisticLocation)
  public
    constructor Create; override;
  end;

  TLogisticLocations = class(TCustomLogisticLocations, IJanuaRecordSet, ILogisticLocations)
  protected
    function GetLogisticLocation: ILogisticLocation;
    procedure SetLogisticLocation(const Value: ILogisticLocation);
    property LogisticLocation: ILogisticLocation read GetLogisticLocation write SetLogisticLocation;
  public
    constructor Create; override;
  end;

  TLogisticLocationFactory = class
    class function CreateRecord(const aKey: string): ILogisticLocation; overload;
    class function CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage)
      : TCustomLogisticLocations; overload;
  end;

implementation

{ TLogisticLocations }

constructor TLogisticLocations.Create;
begin
  inherited;

end;

function TLogisticLocations.GetLogisticLocation: ILogisticLocation;
begin
  Result := FRecord as ILogisticLocation
end;

procedure TLogisticLocations.SetLogisticLocation(const Value: ILogisticLocation);
begin
  FRecord := Value
end;

{ TLogisticLocationFactory }

class function TLogisticLocationFactory.CreateRecord(const aKey: string): ILogisticLocation;
begin
  Result := TLogisticLocation.Create;
end;

class function TLogisticLocationFactory.CreateRecordset(const aName: string;
  const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): TCustomLogisticLocations;
begin
  Result := TCustomLogisticLocations.Create(aName, aLocalStorage, aRemoteStorage);
end;

{ TLogisticLocation }

constructor TLogisticLocation.Create;
begin
  inherited;
  SetEntity(TJanuaEntity.LogLocations);
  FPrefix := 'lglc';
end;

end.
