unit Janua.Core.Commons;

interface

uses
  System.SysUtils, System.Classes, System.TypInfo,
  // Janua
  Janua.Core.Types, Janua.Bindings.Intf;

type
  TJanuaCoreInterfacedObject = class(TInterfacedObject)
  strict protected
    FActive: Boolean;
    function InternalActivate: Boolean; virtual;
  public
    constructor Create; overload; virtual;
    Constructor Create(aValues: TValueArray); overload; virtual;
    procedure Release;
    function Activate: Boolean;
  end;

  TJanuaCoreBindableObject = class(TObject)
  strict protected
    FBindManager: IJanuaBindManager;
    function GetBindManager: IJanuaBindManager;
  public
    property BindManager: IJanuaBindManager read GetBindManager;
  end;

type
  TJanuaCustomComponent = class(TComponent)
  strict protected
    FHasErrors: Boolean;
    FLastErrorMessage: string;
    // Profile : TJanuaRecordProfile;
  private
    procedure SetHasErrors(const Value: Boolean);
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  private
    FActive: Boolean;
    FEnabled: Boolean;
    function GetComponentInfo: string;
  strict protected
    Function InternalActivate: Boolean; virtual;
    procedure InternalDeactivate; virtual;
    procedure SetEnabled(const Value: Boolean);
  protected
    FAfterActivate: TProc;
    function GetAfterActivate: TProc;
    procedure SetAfterActivate(const Value: TProc);
    function GetActive: Boolean;
    procedure SetActive(const Value: Boolean);
  public
    function Activate: Boolean;
    procedure Deactivate;
  published
    /// <summary> Can be Set to initialize the Object (after creating it or in a IInd time) </summary>
    property HasErrors: Boolean read FHasErrors write SetHasErrors stored false default false;
    property Enabled: Boolean read FEnabled write SetEnabled;
    property ComponentInfo: string read GetComponentInfo;
    property Active: Boolean read FActive write SetActive stored false default false;
  end;

  TJanuaCoreInterfacedObjectClass = class of TJanuaCoreInterfacedObject;
  TJanuaCustomComponentClass = class of TJanuaCustomComponent;

implementation

{ TJanuaCustomComponent }

function TJanuaCustomComponent.Activate: Boolean;
begin
  Result := FActive;
  if not Result and Enabled then
  begin
    FActive := InternalActivate;
    Result := FActive;
  end;
end;

constructor TJanuaCustomComponent.Create(AOwner: TComponent);
begin
  inherited;
  FHasErrors := false;
  FEnabled := true;
  // FComponents := TObjectList<TJanuaCustomComponent>.Create;
  // Disabilito Temporaneamnte la Gestione dei TPersistents .............................
  // FPersistents := TObjectList<TJanuaCustomPersistent>.Create;
  // FObjects := TObjectList<TJanuaCustomObject>.Create;
end;

procedure TJanuaCustomComponent.Deactivate;
begin
  InternalDeactivate;
end;

destructor TJanuaCustomComponent.Destroy;
begin
  // FPersistents.Free;
  // FObjects.Free;
  // self.FComponents.Free;
  inherited;
end;

function TJanuaCustomComponent.GetActive: Boolean;
begin
  Result := FActive
end;

function TJanuaCustomComponent.GetAfterActivate: TProc;
begin

end;

function TJanuaCustomComponent.GetComponentInfo: string;
begin
  if Assigned(self.Owner) then
    Result := Owner.ClassName + '(' + Owner.Name + ').';
  Result := Result + self.ClassName + '(' + self.Name + ').';
end;

function TJanuaCustomComponent.InternalActivate: Boolean;
begin
  Result := true;
end;

procedure TJanuaCustomComponent.InternalDeactivate;
begin
  FActive := false;
end;

procedure TJanuaCustomComponent.SetActive(const Value: Boolean);
begin
  if Value and not FActive then
  begin
    FActive := InternalActivate;
  end
  else if not Value and FActive then
  begin
    Deactivate;
  end;
end;

procedure TJanuaCustomComponent.SetAfterActivate(const Value: TProc);
begin

end;

procedure TJanuaCustomComponent.SetEnabled(const Value: Boolean);
begin
  FEnabled := Value;
end;

procedure TJanuaCustomComponent.SetHasErrors(const Value: Boolean);
begin
  self.FHasErrors := Value;
end;

{ TJanuaCoreInterfacedObject }

function TJanuaCoreInterfacedObject.Activate: Boolean;
begin
  Result := FActive;
  if not Result then
  begin
    FActive := InternalActivate;
    Result := FActive
  end;
end;

constructor TJanuaCoreInterfacedObject.Create(aValues: TValueArray);
begin
  Create;
end;

constructor TJanuaCoreInterfacedObject.Create;
begin
  inherited;
  FActive := false;
end;

function TJanuaCoreInterfacedObject.InternalActivate: Boolean;
begin
  // First Ancestor Method
  Result := true;
end;

procedure TJanuaCoreInterfacedObject.Release;
begin
  _Release;
end;

{ TJanuaCoreBindableObject }

function TJanuaCoreBindableObject.GetBindManager: IJanuaBindManager;
begin
  Result := FBindManager
end;

end.
