unit JOrm.Documents.Types.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, Janua.Core.Types, JOrm.Documents.Types.Custom.Impl,
  JOrm.Documents.Types.Intf;

// ------------------------------------------ Impl object interface ----------------------------------

type
  TDocType = class(TCustomDocType, IDocType)
  public
    constructor Create; override;
  end;

  TDocTypes = class(TCustomDocTypes, IJanuaRecordSet, IDocTypes)
  public
    constructor Create; override;
  end;

  TDocTypeFactory = class
    class function CreateRecord(const aKey: string): IDocType; overload;
    class function CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage)
      : IDocTypes; overload;
  end;

implementation

uses Janua.Orm.Types;

// ------------------------------------------ Impl TDocType -------------------------------

{ TDocType }

constructor TDocType.Create;
begin
  inherited;
  SetEntity(TJanuaEntity.DocTypes);
  self.FPrefix := 'dtps';
end;

{ TDocTypeFactory }

class function TDocTypeFactory.CreateRecord(const aKey: string): IDocType;
begin
  Result := TDocType.Create;
end;

class function TDocTypeFactory.CreateRecordset(const aName: string;
  const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): IDocTypes;
begin
  Result := TDocTypes.Create(aName, aLocalStorage, aRemoteStorage);
end;

{ TDocTypes }

constructor TDocTypes.Create;
begin
  inherited;
  FRecord := TDocTypeFactory.CreateRecord('DocType');
end;

end.
