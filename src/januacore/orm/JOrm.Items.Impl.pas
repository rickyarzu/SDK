unit JOrm.Items.Impl;

interface


uses JOrm.Items.Definitions.Custom.Impl, Janua.Orm.Intf, Janua.Orm.Impl, Janua.Core.Types,
  JOrm.Items.Intf;

type
  TItemDefinition = class(TCustomItemDefinition, IItemDefinition)
  public
    constructor Create; override;
  end;

type
  TItemDefinitions = class(TCustomItemDefinitions, IItemDefinitions)
  protected
    function GetItemDefinition: IItemDefinition;
    procedure SetItemDefinition(const Value: IItemDefinition);
  public
    property ItemDefinition: IItemDefinition read GetItemDefinition write SetItemDefinition;
  public
    constructor Create; override;
  end;

  TItemDefinitionFactory = class
    class function CreateRecord(const aKey: string): IItemDefinition; overload;
    class function CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage)
      : IItemDefinitions; overload;
  end;

implementation

{ TItemDefinition }

constructor TItemDefinition.Create;
begin
  inherited;
end;

{ TItemDefinitions }

constructor TItemDefinitions.Create;
begin
  inherited;

end;

function TItemDefinitions.GetItemDefinition: IItemDefinition;
begin

end;

procedure TItemDefinitions.SetItemDefinition(const Value: IItemDefinition);
begin

end;

{ TItemDefinitionFactory }

class function TItemDefinitionFactory.CreateRecord(const aKey: string): IItemDefinition;
begin
  Result := TItemDefinition.Create;

end;

class function TItemDefinitionFactory.CreateRecordset(const aName: string;
  const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): IItemDefinitions;
begin

end;


end.
