unit JOrm.Anagraph.Group.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, JOrm.Anagraph.Group.Intf, JOrm.Anagraph.Group.Custom.Impl;

// ------------------------------------------ Impl object interface ----------------------------------

type
  TAnagGroup = class(TCustomAnagGroup, IAnagGroup)
  public
    constructor Create; override;
  end;

  TAnagGroups = class(TCustomAnagGroups, IJanuaRecordSet, IAnagGroups)
  public
    constructor Create; override;
  end;

  TAnagGroupFactory = class
    class function CreateRecord(const aKey: string): IAnagGroup; overload;
    class function CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage)
      : IAnagGroups; overload;
  end;

implementation

uses Janua.Orm.Types;

// ------------------------------------------ Impl TGroup -------------------------------

{ TGroup }

constructor TAnagGroup.Create;
begin
  inherited;
  SetEntity(TJanuaEntity.AnagraphGroups);
  self.FPrefix := 'angr';
end;

{ TAnagGroups }
constructor TAnagGroups.Create;
begin
  inherited;
  FRecord := TAnagGroupFactory.CreateRecord('AnagGroup');
end;

{ TAnagGroupFactory }

class function TAnagGroupFactory.CreateRecord(const aKey: string): IAnagGroup;
begin
  Result := TAnagGroup.Create;
end;

class function TAnagGroupFactory.CreateRecordset(const aName: string;
  const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): IAnagGroups;
begin
  Result := TAnagGroups.Create(aName, aLocalStorage, aRemoteStorage);
end;

end.
