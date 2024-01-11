unit JOrm.Shipping.Impl;

interface

uses JOrm.Shipping.Intf, Janua.Orm.Intf, JOrm.Shipping.Vessels.Custom.Impl;

type

  TVessel = class(TCustomVessel, IVessel)
  public
    constructor Create; override;
  end;

  TVessels = class(TCustomVessels, IVessels)
  private
    FVessel: IVessel;
  protected
    function GetVessel: IVessel;
    procedure SetVessel(const Value: IVessel);
  public
    constructor Create; override;
  end;

  TVesselFactory = class
  public
    class function CreateRecord(const aKey: string): IVessel; overload;
    class function CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage)
      : IVessels; overload;
  end;

implementation

uses Janua.Orm.Types;

{ TVesselFactory }

class function TVesselFactory.CreateRecord(const aKey: string): IVessel;
begin
  Result := TVessel.Create;
end;

class function TVesselFactory.CreateRecordset(const aName: string;
  const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): IVessels;
begin
  Result := TVessels.Create(aName, aLocalStorage, aRemoteStorage);
end;

{ TVessels }

constructor TVessels.Create;
begin
  inherited;
  FRecord := TVesselFactory.CreateRecord('Vessel');
end;

function TVessels.GetVessel: IVessel;
begin
  Result := self.FRecord as IVessel;
end;

procedure TVessels.SetVessel(const Value: IVessel);
begin
  self.FRecord := Value;
end;

{ TVessel }

constructor TVessel.Create;
begin
  inherited;
  SetEntity(TJanuaEntity.ShippingVessels);
  FPrefix := 'shvs';
end;

end.
