unit Janua.Lookups.Impl;

interface

uses Spring.Collections, Janua.Orm.Types, Janua.Core.Types, Janua.Core.Entities, Janua.Core.Classes,
  Janua.Lookups.Intf, Janua.Orm.Intf;

type
  TJanuaQueryDef = record
  private
    FEntityType: TJanuaEntity;
    FSQL: string;
    procedure SetEntityType(const Value: TJanuaEntity);
    procedure SetSQL(const Value: string);
  public
    property SQL: string read FSQL write SetSQL;
    property EntityType: TJanuaEntity read FEntityType write SetEntityType;
  public
    constructor Create(aEntity: TJanuaEntity; aSQL: string);
  end;

  TJanuaCustomLookups = class(TJanuaInterfacedObject, IJanuaLookupFactory)
  private
    FQueryDefs: IDictionary<TGUID, TJanuaQueryDef>;
  strict protected
    procedure RegisterQueryDef(const aGUID: TGUID; const aQueryDef: TJanuaQueryDef);
    function TryGetQueryDef(const aGUID: TGUID; out aQueryDef: TJanuaQueryDef): Boolean;
  public
    function TryGetJanuaDataset(const aGUID: TGUID; const aGroupID: Variant; out aDataset: IJanuaDBDataset)
      : Boolean; virtual;
    procedure GetJanuaDataset(const aGUID: TGUID; const aGroupID: Variant; out aDataset: IJanuaDBDataset);
    constructor Create; override;
  end;

implementation

uses System.SysUtils, Janua.Application.Framework;

{ TJanuaCustomLookups }

constructor TJanuaCustomLookups.Create;
begin
  inherited;
  FQueryDefs := TCollections.CreateDictionary<TGUID, TJanuaQueryDef>;
end;

procedure TJanuaCustomLookups.GetJanuaDataset(const aGUID: TGUID; const aGroupID: Variant;
  out aDataset: IJanuaDBDataset);
var
  lIntfName: string;
begin
  lIntfName := Janua.Core.Types.GetInterfaceName(aGUID);
  if not TryGetJanuaDataset(aGUID, aGroupID, aDataset) then
    raise Exception.Create('GetJanuaDataset Interface not found: ' + lIntfName);
end;

procedure TJanuaCustomLookups.RegisterQueryDef(const aGUID: TGUID; const aQueryDef: TJanuaQueryDef);
begin
  FQueryDefs[aGUID] := aQueryDef;
end;

function TJanuaCustomLookups.TryGetJanuaDataset(const aGUID: TGUID; const aGroupID: Variant;
  out aDataset: IJanuaDBDataset): Boolean;
begin
  Result := TJanuaApplicationFactory.TryGetLookupDataset(aGUID, aGroupID, aDataset);
end;

function TJanuaCustomLookups.TryGetQueryDef(const aGUID: TGUID; out aQueryDef: TJanuaQueryDef): Boolean;
begin
  Result := FQueryDefs.TryGetValue(aGUID, aQueryDef)
end;

{ TJanuaQueryDef }

constructor TJanuaQueryDef.Create(aEntity: TJanuaEntity; aSQL: string);
begin
  FEntityType := aEntity;
  FSQL := aSQL;
end;

procedure TJanuaQueryDef.SetEntityType(const Value: TJanuaEntity);
begin
  FEntityType := Value;
end;

procedure TJanuaQueryDef.SetSQL(const Value: string);
begin
  FSQL := Value;
end;

end.
