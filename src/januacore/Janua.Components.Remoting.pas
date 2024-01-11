unit Janua.Components.Remoting;

interface

uses System.Classes,
  // Janua Core
  Janua.Core.Types, Janua.Core.Classes, Janua.Server.Intf, Janua.Orm.Intf, Janua.Orm.Types,
  // Janua Orm Object
  JORM.System.Intf;

type
  TJanuaFieldItem = class(TJanuaBindableItem)
  private
    FField: IJanuaField;
    FFieldType: TJanuaFieldType;
    /// <summary> GetValue returns FField.AsVariant if Assigned(FField)  </summary>
    function GetValue: Variant;
    /// <summary> GetValue returns FField.Name if Assigned(FField)  </summary>
    function GetName: string;
    procedure SetName(const Value: string);
    procedure SetValue(const Value: Variant);
    procedure SetField(const Value: IJanuaField);
    procedure SetFieldType(const Value: TJanuaFieldType);
  public
    /// <summary> A Field Item points to an IJanuaField object </summary>
    property Field: IJanuaField read FField write SetField;
    /// <summary> Overrides Standard Field Creation.  </summary>
    constructor Create(Collection: TCollection); override;
  published
    /// <summary> DBField Name </summary>
    property Name: string read GetName write SetName;
    /// <summary> Field as Variant in Read and Write Mode  </summary>
    property Value: Variant read GetValue write SetValue;
    /// <summary> Sets the Field Type. Default Not Set  </summary>
    property FieldType: TJanuaFieldType read FFieldType write SetFieldType;
  end;

type
  TJanuaRemoteComponent = class; // Forward Declaration

  TJanuaRemoteParams = class(TCollection)
  private
    FJanuaRemoteComponent: TJanuaRemoteComponent;
    function GetItem(Index: Integer): TJanuaFieldItem;
    procedure SetItem(Index: Integer; Value: TJanuaFieldItem);
  protected
    function GetOwner: TPersistent; override;
  public
    constructor Create(aRemoteComponent: TJanuaRemoteComponent);
    /// <summary> Add Function Returns a TJanuaFieldItem. </summary>
    function Add: TJanuaFieldItem;
    /// <summary> Adds a New Param and  </summary>
    function AddByType(const aName: string; aType: TJanuaFieldType): TJanuaFieldItem; // default jptUnknown
    /// <summary> Adds a New Param and  </summary>
    property Items[Index: Integer]: TJanuaFieldItem read GetItem write SetItem; default;
  end;

  TJanuaRemoteFields = class(TJanuaRemoteParams)

  end;

  TJanuaRemoteComponent = class(TJanuaCoreComponent)
  private
    FParams: TJanuaRemoteParams;
    FJSonStructure: TJanuaJsonString;
    FFields: TJanuaRemoteFields;
    procedure SetParams(const Value: TJanuaRemoteParams);
    procedure SetJSonStructure(const Value: TJanuaJsonString);
    procedure SetFields(const Value: TJanuaRemoteFields);
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    property Params: TJanuaRemoteParams read FParams write SetParams;
    property Fields: TJanuaRemoteFields read FFields write SetFields;
    property JSonStructure: TJanuaJsonString read FJSonStructure write SetJSonStructure;
  end;

  /// <summary>
  /// Is Responsible of the connection to a Remote Janua Server.
  /// It simply open a Network connection between Client and Server. Is Esposed a component
  /// to be used at Design-Time.
  /// Remote Connection should expose a List of Recordsets and Procedures organized in
  /// Schemas from the Remote Server. Or just give connection credentials to a local
  /// IServer implementation.
  /// <summary>
  TJanuaRemoteConnection = class(TJanuaRemoteComponent)
  private
    FServerURL: string;
    FPassword: string;
    FUserName: string;
    FUserSession: IUserSession;
    procedure SetPassword(const Value: string);
    procedure SetServerURL(const Value: string);
    procedure SetUserName(const Value: string);
    procedure SetUserSession(const Value: IUserSession);
  strict protected
    // virtual abstract Methods to be implemented by descendant classes .....................................
    function InternalActivate: boolean; override;
  public
    function Connect: boolean;
    property UserSession: IUserSession read FUserSession write SetUserSession;
  published
    property UserName: string read FUserName write SetUserName;
    property Password: string read FPassword write SetPassword;
    property ServerURL: string read FServerURL write SetServerURL;
  end;

  TJanuaRemoteProcedure = class(TJanuaRemoteComponent)

  end;

  TJanuaRemoteDataset = class(TJanuaRemoteComponent)

  end;

implementation

uses Janua.Server.Impl, Janua.Orm.Impl, System.SysUtils;

{ TJanuaRecordSetParam }

constructor TJanuaFieldItem.Create(Collection: TCollection);
begin
  inherited;
  FFieldType := TJanuaFieldType.jptUnknown;
end;

function TJanuaFieldItem.GetName: string;
begin
  if Assigned(self.FField) then
    Result := self.FField.DBField
  else
    Result := '';
end;

function TJanuaFieldItem.GetValue: Variant;
begin
  // All variants are initialized on creation to the special value Unassigned
  if Assigned(self.FField) then
    Result := self.FField.AsVariant;
end;

procedure TJanuaFieldItem.SetField(const Value: IJanuaField);
begin
  FField := Value;
end;

procedure TJanuaFieldItem.SetFieldType(const Value: TJanuaFieldType);
begin
  FFieldType := Value;
end;

procedure TJanuaFieldItem.SetName(const Value: string);
begin
  if Assigned(self.FField) and (Value <> FField.DBField) then
    FField.DBField := Value;
end;

procedure TJanuaFieldItem.SetValue(const Value: Variant);
begin
  if Assigned(self.FField) then
    FField.AsVariant := Value;
end;

{ TJanuaRemoteRecordSet }

constructor TJanuaRemoteComponent.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FParams := TJanuaRemoteParams.Create(self);
  // self.FJSonStructure := TJsonString.Create;
end;

destructor TJanuaRemoteComponent.Destroy;
begin
  self.FParams.Free;
  // self.FJSonStructure.Free;
  inherited Destroy;
end;

procedure TJanuaRemoteComponent.SetFields(const Value: TJanuaRemoteFields);
begin
  FFields := Value;
end;

procedure TJanuaRemoteComponent.SetJSonStructure(const Value: TJanuaJsonString);
begin
  if Value <> FJSonStructure then
  begin
    FJSonStructure := Value;
    BindManager.Notify('FJSonStructure');
  end;
end;

procedure TJanuaRemoteComponent.SetParams(const Value: TJanuaRemoteParams);
begin
  FParams := Value;
end;

{ TJanuaRecordSetParams }

function TJanuaRemoteParams.Add: TJanuaFieldItem;
begin
  Result := TJanuaFieldItem(inherited Add);
end;

function TJanuaRemoteParams.AddByType(const aName: string; aType: TJanuaFieldType): TJanuaFieldItem;
begin
  Result := self.Add;
  Result.Field := Janua.Orm.Impl.TJanuaOrmFactory.CreateField(aName, aType)
end;

constructor TJanuaRemoteParams.Create(aRemoteComponent: TJanuaRemoteComponent);
begin
  inherited Create(TJanuaFieldItem);
  self.FJanuaRemoteComponent := aRemoteComponent;
end;

function TJanuaRemoteParams.GetItem(Index: Integer): TJanuaFieldItem;
begin
  Result := TJanuaFieldItem(inherited GetItem(Index));
end;

function TJanuaRemoteParams.GetOwner: TPersistent;
begin
  Result := FJanuaRemoteComponent;
end;

procedure TJanuaRemoteParams.SetItem(Index: Integer; Value: TJanuaFieldItem);
begin

end;

{ TJanuaRemoteConnection }

function TJanuaRemoteConnection.Connect: boolean;
begin
  Result := False;
  { TODO : Connettere con Server la procedura di Remote Connection }
end;

function TJanuaRemoteConnection.InternalActivate: boolean;
var
  LParams: IJanuaParams;
  LResult: IJanuaFuncResult;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        LResult := TServerHelper.OpenServerFunction('system', 'login', LParams);
        { TODO : Manage LResult to populate local vs/remote fields }
      end;
    except
      on e: exception do
        RaiseLocalException('InternalActivate', e);
    end;
end;

procedure TJanuaRemoteConnection.SetPassword(const Value: string);
begin
  FPassword := Value;
end;

procedure TJanuaRemoteConnection.SetServerURL(const Value: string);
begin
  FServerURL := Value;
end;

procedure TJanuaRemoteConnection.SetUserName(const Value: string);
begin
  FUserName := Value;
end;

procedure TJanuaRemoteConnection.SetUserSession(const Value: IUserSession);
begin
  FUserSession := Value;
end;

end.
