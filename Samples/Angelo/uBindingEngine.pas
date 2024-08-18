unit uBindingEngine;

interface

uses // RTL
  System.SysUtils, System.Classes, {System.Bindings.Expression, System.Bindings.Helper,}
  // Spring
  Spring.Collections;

type
  TBindCreateOption = (jbcNotifyOutput, jbcEvaluate);
  TBindCreateOptions = set of TBindCreateOption;

  IBindManager = interface
    ['{80BB8463-9C08-4A79-AABD-800D43EE24AD}']
    /// <summary>
    /// Janua Binding Framework. This procedure binds a Field from the record to a property of 'any' Object.
    /// </summary>
    procedure Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
      const AReadOnly: boolean = false; const ACreateOptions: TBindCreateOptions = [jbcNotifyOutput { ,
        jbcEvaluate } ]);
    /// <summary> Clears all Bindings to all properties of the object </summary>
    procedure ClearBindings;
    procedure UnBind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string);
    procedure Notify(const AProperty: string);
    function GetHasBindings: boolean;
    function GetBindCount: Integer;
    procedure IncBindCount;
    procedure DecBindCount;
    property HasBindings: boolean read GetHasBindings;
    property BindCount: Integer read GetBindCount;
    /// <summary> Calls Notify for each binded proprerty in a Class</summary>
    procedure NotifyAll;
  end;

  IBindable = interface
    ['{3A24B921-32CA-459B-A443-4DE66C1E8D14}']
    /// <summary> ClearBindings can be called externally when the object is no longer needed </summary>
    procedure ClearBindings;

    function GetBindManager: IBindManager;
    property BindManager: IBindManager read GetBindManager;

    function GetSelf: TObject;
    property AsObject: TObject read GetSelf;

    procedure Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
      const AReadOnly: boolean = false;
      const ACreateOptions: TBindCreateOptions = [jbcNotifyOutput { , jbcEvaluate } ]);
  end;

  IBindableControl = interface(IBindable)
    ['{FB02DC97-B980-466A-B9A1-764A94CBAC73}']
    function AsComponent: TComponent;
  end;

type
  TBindManager = class(TInterfacedObject, IBindManager)
  private
    FBindCount: Integer;
    FOwner: TObject;
    FBindedProperties: IList<string>;
  protected
    function GetHasBindings: boolean;
    function GetBindCount: Integer;
  public
    constructor Create(AOwner: TObject); overload;
    destructor Destroy; override;
    /// <summary>
    /// Janua Binding Framework. This procedure binds a Field from the record to a property of 'any' Object.
    /// </summary>
    procedure Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
      const AReadOnly: boolean = false; const ACreateOptions: TBindCreateOptions = [jbcNotifyOutput,
      jbcEvaluate]);
    /// <summary> Clears all Bindings to all properties of the object </summary>
    procedure ClearBindings;
    procedure Notify(const AProperty: string);
    procedure UnBind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string);
    procedure IncBindCount;
    procedure DecBindCount;
    procedure NotifyAll;
  public
    property HasBindings: boolean read GetHasBindings;
    property BindCount: Integer read GetBindCount;
  end;

  TBindRecord = class(TObject)
  private
    FOwner: TObject;
  strict protected // *** bindings
    FBindManager: IBindManager;
    function GetBindCount: Integer; virtual;
  public
    procedure Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
      { const AReadOnly: boolean = False; } const ACreateOptions: TBindCreateOptions = [jbcNotifyOutput
      { , jbcEvaluate } ]); virtual; abstract;
    procedure ClearBindings; virtual; abstract;
    procedure RemoveBindings(const aObject: TObject); virtual; abstract;
  public
    property BindCount: Integer read GetBindCount;
    property Owner: TObject read FOwner;
  public
    constructor Create(AOwner: TObject); overload; virtual;
    destructor Destroy; override;
    constructor Create; overload;
  end;

  TBindingEngine = class(TObject)
  public
    Destructor Destroy; override;
    constructor Create; overload;
  strict private
    function InternalActivate: boolean;
  private
    FObjectBindings: IDictionary<TObject, TBindRecord>;
  protected
    /// <summary> Create a Binding Record according to Actual binding Framework </summary>
    function GetBIndRecord(const aObject: TObject): TBindRecord;
  public
    procedure Bind(const aObject: TObject; const AProperty: string; const ABindToObject: TObject;
      const ABindToProperty: string; { const aBidiRectional: boolean = False; } const AReadOnly
      : boolean = false; const ACreateOptions: TBindCreateOptions = [jbcNotifyOutput, jbcEvaluate]);
    procedure UnBind(const aObject: TObject; const AProperty: string; const ABindToObject: TObject;
      const ABindToProperty: string); overload;
    procedure UnBind(const aObject, ABindToObject: TObject); overload;
    procedure ClearBindings(const aObject: TObject);
    procedure Notify(const aObject: TObject; const APropertyName: string = ''); virtual; abstract;
    procedure ClearAllBindings;
    { public
      function NewBindControlsList: IJanuaBindControlsList; }
  end;

  TBindingEngineClass = class of TBindingEngine;
  TBindRecordClass = class of TBindRecord;

  TBindApplication = class
  private
    class var FBindEngineClass: TBindingEngineClass;
    class var FBindRecordClass: TBindRecordClass;
    class var FBindEngine: TBindingEngine;
    class function CreateBindEgine: TBindingEngine;
    class function GetBindingEngine: TBindingEngine; static;
  public
    class function CreateBindRecord(AOwner: TObject): TBindRecord;
    class destructor Destroy;
  public
    class property BindEngine: TBindingEngine read GetBindingEngine;
    class property BindEngineClass: TBindingEngineClass read FBindEngineClass write FBindEngineClass;
    class property BindRecordClass: TBindRecordClass read FBindRecordClass write FBindRecordClass;
  end;

function lOwnerName(AOwner: TObject): string;

implementation

uses Spring;

function lOwnerName(AOwner: TObject): string;
begin
  if Assigned(AOwner) then
  begin
    Result := AOwner.ClassName;

    if (AOwner is TComponent) then
    begin
      Result := Result + (AOwner as TComponent).Name + '.';
      if Assigned((AOwner as TComponent).Owner) then
        Result := (AOwner as TComponent).Owner.Name + '.' + Result;
    end;
  end;
end;

{ TBindingEngine }

procedure TBindingEngine.Bind(const aObject: TObject; const AProperty: string; const ABindToObject: TObject;
  const ABindToProperty: string; const AReadOnly: boolean; const ACreateOptions: TBindCreateOptions);
var
  lBindRecord: TBindRecord;
begin

  if not FObjectBindings.TryGetValue(aObject, lBindRecord) then
  begin
    lBindRecord := TBindApplication.CreateBindRecord(aObject);
    FObjectBindings.Add(aObject, lBindRecord);
  end;
  lBindRecord.Bind(AProperty, ABindToObject, ABindToProperty, ACreateOptions);

  if not AReadOnly then
  begin
    if not FObjectBindings.TryGetValue(ABindToObject, lBindRecord) then
    begin
      lBindRecord := TBindApplication.CreateBindRecord(ABindToObject);
      FObjectBindings.Add(ABindToObject, lBindRecord);
    end;
    lBindRecord.Bind(ABindToProperty, aObject, AProperty, ACreateOptions);
  end;

end;

procedure TBindingEngine.ClearAllBindings;
var
  LOB: TPair<TObject, TBindRecord>;
begin
  if Assigned(FObjectBindings) then
    for LOB in FObjectBindings do
      TBindRecord(LOB.Value).ClearBindings;
end;

procedure TBindingEngine.ClearBindings(const aObject: TObject);
var
  LOB: Spring.Collections.TPair<TObject, TBindRecord>;
  aRecord: TBindRecord;
begin
  if FObjectBindings.TryExtract(aObject, aRecord) then
  begin
    aRecord.ClearBindings;
    // questa procedura rimuove un record e lo elimina.
    aRecord.Free;
    { FObjectBindings.Remove(aObject); }
    aRecord := nil;
  end;

  for LOB in FObjectBindings do
    LOB.Value.RemoveBindings(aObject);
end;

constructor TBindingEngine.Create;
begin
  InternalActivate
end;

destructor TBindingEngine.Destroy;
begin
  ClearAllBindings;
  FObjectBindings := nil;
  inherited;
end;

function TBindingEngine.GetBIndRecord(const aObject: TObject): TBindRecord;
begin
  if not FObjectBindings.TryGetValue(aObject, Result) then
  begin
    Result := TBindApplication.CreateBindRecord(aObject);
    FObjectBindings.Add(aObject, Result);
  end;
end;

function TBindingEngine.InternalActivate: boolean;
begin
  if not Assigned(FObjectBindings) then
    FObjectBindings := TCollections.CreateDictionary<TObject, TBindRecord>;
end;

procedure TBindingEngine.UnBind(const aObject: TObject; const AProperty: string; const ABindToObject: TObject;
  const ABindToProperty: string);
begin

end;

procedure TBindingEngine.UnBind(const aObject, ABindToObject: TObject);
begin

end;

{ TBindRecord }

constructor TBindRecord.Create(AOwner: TObject);
var
  lBindable: IBindable;
  lBindableControl: IBindableControl;
begin
  Create;
  Guard.CheckNotNull(AOwner, 'Bind Record Creation failed AOwner not set');
  FOwner := AOwner;

  if Supports(FOwner, IBindableControl, lBindableControl { out valorizzata se è Bindable } ) then
    FBindManager := lBindableControl.BindManager
  else if Supports(FOwner, IBindable, lBindable) then
    FBindManager := lBindable.BindManager
    { else if (FOwner is TJanuaCoreBindableObject) then
      FBindManager := (FOwner as TJanuaCoreBindableObject).BindManager }
  else
    raise Exception.Create('Bind Engine IBindable not Supported: ' + lOwnerName(FOwner));

{$IFDEF DEBUG}
  Guard.CheckNotNull(FBindManager, FOwner.ClassName + '.BindManager');
{$ENDIF}
end;

constructor TBindRecord.Create;
begin
  inherited;

end;

destructor TBindRecord.Destroy;
begin
  ClearBindings;
  inherited;
end;

function TBindRecord.GetBindCount: Integer;
begin
  Result := -1
end;

{ TBindManager }

procedure TBindManager.Bind(const AProperty: string; const ABindToObject: TObject;
  const ABindToProperty: string; const AReadOnly: boolean; const ACreateOptions: TBindCreateOptions);

  function GetDescription: string;
  begin
    if Assigned(FOwner) then
    begin
      Result := FOwner.ClassName;
      if (FOwner is TComponent) and ((FOwner as TComponent).Name <> '') then
        Result := Result + '.' + (FOwner as TComponent).Name;
      Result := Result + '.' + AProperty + '->';
    end;
    if Assigned(ABindToObject) then
    begin
      Result := Result + ABindToObject.ClassName;
      if (ABindToObject is TComponent) and ((ABindToObject as TComponent).Name <> '') then
        Result := Result + '.' + (ABindToObject as TComponent).Name;
      Result := Result + '.' + ABindToProperty;
    end;
  end;

begin
  try
{$IFDEF DEBUG}
    Assert(AProperty <> '', 'Unable to Bind AProperty is nil');
    Assert(ABindToProperty <> '', 'Unable to Bind AProperty is nil');
{$ENDIF}
    if FBindedProperties.IndexOf(AProperty) = -1 then
      FBindedProperties.Add(AProperty);

    if Assigned(FOwner) and Assigned(ABindToObject) then
      TBindApplication.BindEngine.Bind(FOwner, AProperty, ABindToObject, ABindToProperty, AReadOnly,
        ACreateOptions);
  Except
    on e: Exception do
    begin
      // LogException('Bind ' + GetDescription, e, self);
      raise;
    end;
  end;
end;

procedure TBindManager.ClearBindings;
begin
  if Assigned(TBindApplication.BindEngine) then
    TBindApplication.BindEngine.ClearBindings(FOwner);
  FBindedProperties.Clear;
  FBindCount := 0;
end;

constructor TBindManager.Create(AOwner: TObject);
begin
  inherited Create;
  FBindCount := 0;
  FOwner := AOwner;
  FBindedProperties := TCollections.CreateList<string>;
end;

procedure TBindManager.DecBindCount;
begin
  if FBindCount > 0 then
    Dec(FBindCount);
end;

destructor TBindManager.Destroy;
begin
  try
    ClearBindings;
    FBindedProperties := nil;
    FOwner := nil;
  finally
    inherited;
  end;
end;

function TBindManager.GetBindCount: Integer;
begin
  Result := FBindCount
end;

function TBindManager.GetHasBindings: boolean;
begin
  Result := FBindCount > 0
end;

procedure TBindManager.IncBindCount;
begin
  Inc(FBindCount);
end;

procedure TBindManager.Notify(const AProperty: string);
begin
  if Assigned(FOwner) then
    TBindApplication.BindEngine.Notify(FOwner, AProperty);
end;

procedure TBindManager.NotifyAll;
var
  lProperty: string;
begin
  for lProperty in FBindedProperties do
    Notify(lProperty);
end;

procedure TBindManager.UnBind(const AProperty: string; const ABindToObject: TObject;
  const ABindToProperty: string);
begin
  TBindApplication.BindEngine.UnBind(FOwner, AProperty, ABindToObject, ABindToProperty);
end;

{ TBindApplication }

{ class var FBindEngineClass: TBindingEngineClass;
  class var FBindRecordClass: TBindRecordClass;
  class function CreateBindEgine: TBindingEngine;
  class function GetBindingEngine: TBindingEngine; static;
}

class function TBindApplication.CreateBindEgine: TBindingEngine;
begin
  Result := FBindEngineClass.Create
end;

class function TBindApplication.CreateBindRecord(AOwner: TObject): TBindRecord;
begin
  Result := FBindRecordClass.Create(AOwner)
end;

class destructor TBindApplication.Destroy;
begin
  if Assigned(FBindEngine) then
    FBindEngine.Free;
  FBindEngine := nil;
end;

class function TBindApplication.GetBindingEngine: TBindingEngine;
begin
  if not Assigned(FBindEngine) then
    FBindEngine := CreateBindEgine;
  Result := FBindEngine;
end;

end.
