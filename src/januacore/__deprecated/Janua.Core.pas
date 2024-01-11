unit Janua.Core.Commons;

interface

uses
  System.SysUtils, System.Classes, System.TypInfo,
  // JsonSupport
  System.JSON, System.Rtti,
  // Neon Serializers Support
  Neon.Core.Types, Neon.Core.Persistence,
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

  TNSType = (CustomNeon, CustomDemo);
  TNSSet = set of TNSType;

  TJanuaJson = class
    // Janaproject Serializer Configuration for NEON Serializer
  private
    class var FNeonJsonConfig: INeonConfiguration;
  public
    class function BuildSerializerConfig(ASerializers: TNSSet = [TNSType.CustomNeon]): INeonConfiguration;
    class function SerializeSimple<T>(const aValue: T): string;
    class function SerializeJson(const aValue: TValue): TJSONValue;
    class function SerializeJsonObject<T>(const aValue: T): TJSONValue;
    class function DeserializeSimple<T>(const aValue: string): T; overload;
    class function DeserializeSimple<T>(const aValue: TJSONValue): T; overload;
  end;

  TJanuaCoreInterfacedObjectClass = class of TJanuaCoreInterfacedObject;
  TJanuaCustomComponentClass = class of TJanuaCustomComponent;

implementation

uses
  // Neon Json Serializer
  Neon.Core.Persistence.JSON, Neon.Core.Utils;

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

{ TJanuaJson }

class function TJanuaJson.BuildSerializerConfig(ASerializers: TNSSet): INeonConfiguration;
var
  LVis: TNeonVisibility;
  LMembers: TNeonMembersSet;
begin
  if Assigned(FNeonJsonConfig) then
    Result := FNeonJsonConfig
  else
  begin
    LVis := [];
    LMembers := [TNeonMembers.Standard];
    Result := TNeonConfiguration.Default;

    // Case settings
    Result.SetMemberCustomCase(nil);
    {
      // Different Suported Cases
      Result.SetMemberCase(TNeonCase.CamelCase);
      Result.SetMemberCase(TNeonCase.SnakeCase);
      Result.SetMemberCase(TNeonCase.UpperCase);
    }
    Result.SetMemberCase(TNeonCase.LowerCase);

    {
      // Custom Case Sample
      Result
      .SetMemberCase(TNeonCase.CustomCase)
      .SetMemberCustomCase(FCustomCaseAlgo);
    }

    // Member type settings (EXclude Fields but Include Properties)
    // LMembers := LMembers + [TNeonMembers.Fields];
    LMembers := LMembers + [TNeonMembers.Properties];
    Result.SetMembers(LMembers);

    // F Prefix setting (Not Set because I do not Serialize Fields)
    // Result.SetIgnoreFieldPrefix(chkIgnorePrefix.Checked);

    // Use UTC Date (I Use UTC Date);
    Result.SetUseUTCDate(true);

    // Pretty Printing (On Debug I use Pretty Printing but on Production Save space and Time)
    Result.SetPrettyPrint({$IFDEF DEBUG}true{$ELSE}false {$ENDIF});

    // Visibility settings (Only Private and Protected)
    // LVis := LVis + [mvPrivate];
    // LVis := LVis + [mvProtected];
    LVis := LVis + [mvPublic];
    LVis := LVis + [mvPublished];
    Result.SetVisibility(LVis);

    // Custom Serializers
    {
      if TSerializersType.CustomNeon in ASerializers then
      RegisterNeonSerializers(Result.GetSerializers);

      if TSerializersType.CustomDemo in ASerializers then
      RegisterDemoSerializers(Result.GetSerializers);
    }
  end;
end;

class function TJanuaJson.DeserializeSimple<T>(const aValue: string): T;
var
  LJSON: TJSONValue;
begin
  LJSON := TJsonObject.ParseJSONValue(aValue);
  if not Assigned(LJSON) then
    raise Exception.Create('Error parsing JSON string');
  try
    Result := DeserializeSimple<T>(LJSON);
  finally
    LJSON.Free;
  end;
end;

class function TJanuaJson.DeserializeSimple<T>(const aValue: TJSONValue): T;
var
  LValue: TValue;
  LReader: TNeonDeserializerJSON;
  LWriter: TNeonSerializerJSON;
begin
  LReader := TNeonDeserializerJSON.Create(BuildSerializerConfig);
  try
    LValue := LReader.JSONToTValue(aValue, TRttiUtils.Context.GetType(TypeInfo(T)));
    Result := LValue.AsType<T>;
  finally
    LReader.Free;
  end;
end;

class function TJanuaJson.SerializeJsonObject<T>(const aValue: T): TJSONValue;
var
  LWriter: TNeonSerializerJSON;
begin
  LWriter := TNeonSerializerJSON.Create(BuildSerializerConfig);
  try
    Result := LWriter.ValueToJSON(TValue.From<T>(aValue));
  finally
    LWriter.Free;
  end;
end;

class function TJanuaJson.SerializeJson(const aValue: TValue): TJSONValue;
var
  LWriter: TNeonSerializerJSON;
begin
  LWriter := TNeonSerializerJSON.Create(BuildSerializerConfig);
  try
    Result := LWriter.ValueToJSON(aValue);
  finally
    LWriter.Free;
  end;

end;

class function TJanuaJson.SerializeSimple<T>(const aValue: T): string;
var
  LJSON: TJSONValue;
begin
  LJSON := SerializeJson(TValue.From<T>(aValue));
  try
    Result := TNeon.Print(LJSON, BuildSerializerConfig.GetPrettyPrint);
  finally
    LJSON.Free;
  end;
end;


end.
