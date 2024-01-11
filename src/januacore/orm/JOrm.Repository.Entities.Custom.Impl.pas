unit JOrm.Repository.Entities.Custom.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, Janua.Core.Types, JOrm.Repository.Entities.Intf;

// ------------------------------------------ Impl object interface ----------------------------------

type
  TCustomEntity = class(TJanuaRecord, IEntity)
  private
    FJguid: IJanuaField;
    FSchema: IJanuaField;
    FName: IJanuaField;
    FSingular: IJanuaField;
    FPlural: IJanuaField;
    FTitle: IJanuaField;
    FDescription: IJanuaField;
    FIsvirtual: IJanuaField;
    FModelUid: IJanuaField;
    FQueryText: IJanuaField;
  private
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    function GetSchema: IJanuaField;
    procedure SetSchema(const Value: IJanuaField);
    function GetName: IJanuaField;
    procedure SetName(const Value: IJanuaField);
    function GetSingular: IJanuaField;
    procedure SetSingular(const Value: IJanuaField);
    function GetPlural: IJanuaField;
    procedure SetPlural(const Value: IJanuaField);
    function GetTitle: IJanuaField;
    procedure SetTitle(const Value: IJanuaField);
    function GetDescription: IJanuaField;
    procedure SetDescription(const Value: IJanuaField);
    function GetIsvirtual: IJanuaField;
    procedure SetIsvirtual(const Value: IJanuaField);
    function GetModelUid: IJanuaField;
    procedure SetModelUid(const Value: IJanuaField);
    function GetQueryText: IJanuaField;
    procedure SetQueryText(const Value: IJanuaField);
  public
    constructor Create; override;
    property Jguid: IJanuaField read GetJguid write SetJguid;
    property Schema: IJanuaField read GetSchema write SetSchema;
    property Name: IJanuaField read GetName write SetName;
    property Singular: IJanuaField read GetSingular write SetSingular;
    property Plural: IJanuaField read GetPlural write SetPlural;
    property Title: IJanuaField read GetTitle write SetTitle;
    property Description: IJanuaField read GetDescription write SetDescription;
    property Isvirtual: IJanuaField read GetIsvirtual write SetIsvirtual;
    property ModelUid: IJanuaField read GetModelUid write SetModelUid;
    property QueryText: IJanuaField read GetQueryText write SetQueryText;

  end;

  TCustomEntities = class(TJanuaRecordSet, IJanuaRecordSet, IEntities)
  private
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    function GetSchema: IJanuaField;
    procedure SetSchema(const Value: IJanuaField);
    function GetName: IJanuaField;
    procedure SetName(const Value: IJanuaField);
    function GetSingular: IJanuaField;
    procedure SetSingular(const Value: IJanuaField);
    function GetPlural: IJanuaField;
    procedure SetPlural(const Value: IJanuaField);
    function GetTitle: IJanuaField;
    procedure SetTitle(const Value: IJanuaField);
    function GetDescription: IJanuaField;
    procedure SetDescription(const Value: IJanuaField);
    function GetIsvirtual: IJanuaField;
    procedure SetIsvirtual(const Value: IJanuaField);
    function GetModelUid: IJanuaField;
    procedure SetModelUid(const Value: IJanuaField);
    function GetQueryText: IJanuaField;
    procedure SetQueryText(const Value: IJanuaField);
    function GetEntity: IEntity;
    procedure SetEntity(const Value: IEntity);
  public
    constructor Create; override;
    property Jguid: IJanuaField read GetJguid write SetJguid;
    property Schema: IJanuaField read GetSchema write SetSchema;
    property Name: IJanuaField read GetName write SetName;
    property Singular: IJanuaField read GetSingular write SetSingular;
    property Plural: IJanuaField read GetPlural write SetPlural;
    property Title: IJanuaField read GetTitle write SetTitle;
    property Description: IJanuaField read GetDescription write SetDescription;
    property Isvirtual: IJanuaField read GetIsvirtual write SetIsvirtual;
    property ModelUid: IJanuaField read GetModelUid write SetModelUid;
    property QueryText: IJanuaField read GetQueryText write SetQueryText;
    property Entity: IEntity read GetEntity write SetEntity;
  end;

  TEntityFactory = class
    class function CreateRecord(aKey: string): IEntity; overload;
    class function CreateRecordset(aName: string; aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage)
      : IEntities; overload;
  end;

implementation

// ------------------------------------------ Impl TEntity -------------------------------

{ TCustomEntity }

constructor TCustomEntity.Create;
begin
  inherited;
  FPrefix := 'rntt';
  // Campo non Gestitojguid Type= ftGuid
  FSchema := AddCreateField(TJanuaFieldType.jptString, 'schema', 'schema');
  FName := AddCreateField(TJanuaFieldType.jptString, 'name', 'name');
  FSingular := AddCreateField(TJanuaFieldType.jptString, 'singular', 'singular');
  FPlural := AddCreateField(TJanuaFieldType.jptString, 'plural', 'plural');
  FTitle := AddCreateField(TJanuaFieldType.jptString, 'title', 'title');
  FDescription := AddCreateField(TJanuaFieldType.jptString, 'description', 'description');
  FIsvirtual := AddCreateField(TJanuaFieldType.jptBoolean, 'isvirtual', 'isvirtual');
  // Campo non Gestitomodel_uid Type= ftGuid
  // Campo non Gestitoquery_text Type= ftWideMemo
end;

function TCustomEntity.GetJguid: IJanuaField;
begin
  Result := FJguid;
end;

procedure TCustomEntity.SetJguid(const Value: IJanuaField);
begin
  FJguid := Value;
end;

function TCustomEntity.GetSchema: IJanuaField;
begin
  Result := FSchema;
end;

procedure TCustomEntity.SetSchema(const Value: IJanuaField);
begin
  FSchema := Value;
end;

function TCustomEntity.GetName: IJanuaField;
begin
  Result := FName;
end;

procedure TCustomEntity.SetName(const Value: IJanuaField);
begin
  FName := Value;
end;

function TCustomEntity.GetSingular: IJanuaField;
begin
  Result := FSingular;
end;

procedure TCustomEntity.SetSingular(const Value: IJanuaField);
begin
  FSingular := Value;
end;

function TCustomEntity.GetPlural: IJanuaField;
begin
  Result := FPlural;
end;

procedure TCustomEntity.SetPlural(const Value: IJanuaField);
begin
  FPlural := Value;
end;

function TCustomEntity.GetTitle: IJanuaField;
begin
  Result := FTitle;
end;

procedure TCustomEntity.SetTitle(const Value: IJanuaField);
begin
  FTitle := Value;
end;

function TCustomEntity.GetDescription: IJanuaField;
begin
  Result := FDescription;
end;

procedure TCustomEntity.SetDescription(const Value: IJanuaField);
begin
  FDescription := Value;
end;

function TCustomEntity.GetIsvirtual: IJanuaField;
begin
  Result := FIsvirtual;
end;

procedure TCustomEntity.SetIsvirtual(const Value: IJanuaField);
begin
  FIsvirtual := Value;
end;

function TCustomEntity.GetModelUid: IJanuaField;
begin
  Result := FModelUid;
end;

procedure TCustomEntity.SetModelUid(const Value: IJanuaField);
begin
  FModelUid := Value;
end;

function TCustomEntity.GetQueryText: IJanuaField;
begin
  Result := FQueryText;
end;

procedure TCustomEntity.SetQueryText(const Value: IJanuaField);
begin
  FQueryText := Value;
end;

{ TCustomEntities }
constructor TCustomEntities.Create;
begin
  inherited;
  self.FRecord := TEntityFactory.CreateRecord('Entity');
end;

function TCustomEntities.GetJguid: IJanuaField;
begin
  Result := self.Entity.Jguid;
end;

procedure TCustomEntities.SetJguid(const Value: IJanuaField);
begin
  self.Entity.Jguid := Value;
end;

function TCustomEntities.GetSchema: IJanuaField;
begin
  Result := self.Entity.Schema;
end;

procedure TCustomEntities.SetSchema(const Value: IJanuaField);
begin
  self.Entity.Schema := Value;
end;

function TCustomEntities.GetName: IJanuaField;
begin
  Result := self.Entity.Name;
end;

procedure TCustomEntities.SetName(const Value: IJanuaField);
begin
  self.Entity.Name := Value;
end;

function TCustomEntities.GetSingular: IJanuaField;
begin
  Result := self.Entity.Singular;
end;

procedure TCustomEntities.SetSingular(const Value: IJanuaField);
begin
  self.Entity.Singular := Value;
end;

function TCustomEntities.GetPlural: IJanuaField;
begin
  Result := self.Entity.Plural;
end;

procedure TCustomEntities.SetPlural(const Value: IJanuaField);
begin
  self.Entity.Plural := Value;
end;

function TCustomEntities.GetTitle: IJanuaField;
begin
  Result := self.Entity.Title;
end;

procedure TCustomEntities.SetTitle(const Value: IJanuaField);
begin
  self.Entity.Title := Value;
end;

function TCustomEntities.GetDescription: IJanuaField;
begin
  Result := self.Entity.Description;
end;

procedure TCustomEntities.SetDescription(const Value: IJanuaField);
begin
  self.Entity.Description := Value;
end;

function TCustomEntities.GetIsvirtual: IJanuaField;
begin
  Result := self.Entity.Isvirtual;
end;

procedure TCustomEntities.SetIsvirtual(const Value: IJanuaField);
begin
  self.Entity.Isvirtual := Value;
end;

function TCustomEntities.GetModelUid: IJanuaField;
begin
  Result := self.Entity.ModelUid;
end;

procedure TCustomEntities.SetModelUid(const Value: IJanuaField);
begin
  self.Entity.ModelUid := Value;
end;

function TCustomEntities.GetQueryText: IJanuaField;
begin
  Result := self.Entity.QueryText;
end;

procedure TCustomEntities.SetQueryText(const Value: IJanuaField);
begin
  self.Entity.QueryText := Value;
end;

function TCustomEntities.GetEntity: IEntity;
begin
  Result := self.FRecord as IEntity;
end;

procedure TCustomEntities.SetEntity(const Value: IEntity);
begin
  self.FRecord := Value;
end;

{ TEntityFactory }

class function TEntityFactory.CreateRecord(aKey: string): IEntity;
begin
  Result := TCustomEntity.Create;
end;

class function TEntityFactory.CreateRecordset(aName: string; aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage)
  : IEntities;
begin
  Result := TCustomEntities.Create(aName, aLocalStorage, aRemoteStorage);
end;

end.
