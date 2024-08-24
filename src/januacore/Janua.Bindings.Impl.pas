unit Janua.Bindings.Impl;

interface

uses
  // RTL
  System.Classes, Spring.Collections, System.Bindings.Expression, System.Bindings.Helper,
  // Janua
  Janua.Core.Commons, Janua.Core.Types, Janua.Bindings.Intf;

type

  TJanuaBindRecord = class(TInterfacedObject, IJanuaBindRecord)
  private
    FOwner: TObject;
    [weak]
    FBindManager: IJanuaBindManager;
  private
    FBindings: IDictionary<TObject, TBindingExpression>; // *** bindings
    function GetBindCount: Integer;
  strict protected // *** bindings
    property Bindings: IDictionary<TObject, TBindingExpression> read FBindings; // *** bindings
  public
    procedure Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
      const ACreateOptions: TJanuaBindCreateOptions = [jbcNotifyOutput]);
    // jbcEvaluate
    procedure ClearBindings;
    procedure RemoveBindings(const aObject: TObject);
  public
    property BindCount: Integer read GetBindCount;
    property Owner: TObject read FOwner;
  public
    constructor Create(aOwner: TObject); overload;
    destructor Destroy; override;
    constructor Create; overload;
  end;

  TJanuaBindControlsList = class(TInterfacedObject, IJanuaBindControlsList)
  private
    FBindListObject: IList<IJanuaBindableControl>;
  public
    procedure AddControl(aControl: TComponent);
    procedure ClearBindings;
    procedure Clear;
  public
    constructor Create; overload;
    destructor Destroy; override;
  end;

type
  TJanuaBindings = class(TJanuaCoreInterfacedObject, IJanuaBindEngine)
  public
    Destructor Destroy; override;
  strict private
    function InternalActivate: boolean; override;
  private
    FObjectBindings: IDictionary<TObject, IJanuaBindRecord>;
  protected
    /// <summary> Create a Binding Record according to Actual binding Framework </summary>
    function GeTJanuaBindRecord(const aObject: TObject): IJanuaBindRecord;
  public
    procedure Bind(const aObject: TObject; const AProperty: string; const ABindToObject: TObject;
      const ABindToProperty: string; { const aBidiRectional: boolean = False; } const AReadOnly
      : boolean = false; const ACreateOptions: TJanuaBindCreateOptions = [jbcNotifyOutput, jbcEvaluate]);
    procedure UnBind(const aObject: TObject; const AProperty: string; const ABindToObject: TObject;
      const ABindToProperty: string); overload;
    procedure UnBind(const aObject, ABindToObject: TObject); overload;
    procedure ClearBindings(const aObject: TObject);
    procedure Notify(const aObject: TObject; const APropertyName: string = '');
    procedure ClearAllBindings;
  public
    function NewBindControlsList: IJanuaBindControlsList;
  end;

implementation

uses System.SysUtils, Spring, Janua.Core.Functions, System.StrUtils;

// JanuaProperty: array [jptUnknown .. jptUrl] of string = ('', 'currency'
const
  JanuaCreateBindOptions: array [jbcNotifyOutput .. jbcEvaluate] of TBindings.TCreateOption = (coNotifyOutput,
    coEvaluate);

function lOwnerName(aOwner: TObject): string;
begin
  if Assigned(aOwner) then
  begin
    Result := aOwner.ClassName;

    if (aOwner is TComponent) then
    begin
      Result := Result + (aOwner as TComponent).Name + '.';
      if Assigned((aOwner as TComponent).Owner) then
        Result := (aOwner as TComponent).Owner.Name + '.' + Result;
    end;
  end;
end;

{ TJanuaBindRecord }

procedure TJanuaBindRecord.Bind(const AProperty: string; const ABindToObject: TObject;
  const ABindToProperty: string; const ACreateOptions: TJanuaBindCreateOptions = [jbcNotifyOutput]);
// jbcEvaluate

  function GetCreateOptions: TBindings.TCreateOptions;
  var
    LJanuaOption: TJanuaBindCreateOption;
  begin
    Result := [];
    for LJanuaOption in ACreateOptions do
      Result := Result + [JanuaCreateBindOptions[LJanuaOption]];
  end;

  function InternalErrorMessage(const aMessage: string): string;
  var
    lComponentName: string;
  begin
    if (ABindToObject is TComponent) then
    begin
      lComponentName := (ABindToObject as TComponent).Name + '.';
      if Assigned((ABindToObject as TComponent).Owner) then
        lComponentName := (ABindToObject as TComponent).Owner.Name + '.' + lComponentName;
    end;

    Result := lOwnerName(FOwner) + '.' + AProperty + ' Bind Error Binding to ' + ABindToObject.ClassName + '.'
      + lComponentName + ABindToProperty + sLineBreak + aMessage;
  end;

begin
  // lBindableControl: IJanuaBindableControl

  (* To connect a UI control to a user defined object the binding must be created at runtime (after the object
    and control have been created). The TBindings class in the System.Bindings.Helper unit provides utility
    functions to accomplish this. One of these is CreateManagedBinding. *)
  try
    Guard.CheckNotNull(FOwner, 'Owner');

    if not FBindings.ContainsKey(ABindToObject) then
    begin
      FBindManager.IncBindCount;

      Guard.CheckNotNull(ABindToObject, InternalErrorMessage('ABindToObject is nil'));
      // From source to dest
      // 2020-01-25 Removed Bi-Directional Binding from Binding Record to simplify Clear Bindings Management.
      FBindings.Add(ABindToObject, TBindings.CreateManagedBinding(
        { inputs }
        [TBindings.CreateAssociationScope([Associate(FOwner, 'src')])], 'src.' + AProperty,
        { outputs }
        [TBindings.CreateAssociationScope([Associate(ABindToObject, 'dst')])], 'dst.' + ABindToProperty, nil,
        nil, GetCreateOptions));
    end;

  except
    on e: Exception do
      raise Exception.Create('Bind Engine.Bind ' + e.Message);
  end;
end;

procedure TJanuaBindRecord.ClearBindings;
var
  i: Spring.Collections.TPair<TObject, TBindingExpression>;
  lBindObject: IJanuaBindable;
  lBindControl: IJanuaBindableControl;
begin
  if Assigned(FOwner) and Assigned(FBindings) and (FBindings.Count > 0) then
  begin
    if not Supports(FOwner, IJanuaBindableControl, lBindControl) then
      if not Supports(FOwner, IJanuaBindable, lBindObject) then
        if not(FOwner is TJanuaCoreBindableObject) then
          Raise Exception.Create('Bind engine IBindable not Supported: ' + FOwner.ClassName);

    for i in FBindings do
      try
        TBindings.RemoveBinding(i.Value);
        if Assigned(lBindObject) and Assigned(lBindObject.BindManager) then
          lBindObject.BindManager.DecBindCount
        else if Assigned(lBindControl) and Assigned(lBindControl.BindManager) then
          lBindControl.BindManager.DecBindCount
        else if (FOwner is TJanuaCoreBindableObject) and
          Assigned((FOwner as TJanuaCoreBindableObject).BindManager) then
          (FOwner as TJanuaCoreBindableObject).BindManager.DecBindCount;
      except
        on e: Exception do
          Raise Exception.Create('Bind engine ClearBindings' + e.Message);
      end
  end;
  FBindings.Clear;
end;

constructor TJanuaBindRecord.Create(aOwner: TObject);
var
  lBindable: IJanuaBindable;
  lBindableControl: IJanuaBindableControl;
begin
  Create;
  Guard.CheckNotNull(aOwner, 'Bind Record Creation failed AOwner not set');
  FOwner := aOwner;

  if Supports(FOwner, IJanuaBindableControl, lBindableControl { out valorizzata se è Bindable } ) then
    FBindManager := lBindableControl.BindManager
  else if Supports(FOwner, IJanuaBindable, lBindable) then
    FBindManager := lBindable.BindManager
  else if (FOwner is TJanuaCoreBindableObject) then
    FBindManager := (FOwner as TJanuaCoreBindableObject).BindManager
  else
    raise Exception.Create('Bind Engine IBindable not Supported: ' + lOwnerName(FOwner));
  Guard.CheckNotNull(FBindManager, FOwner.ClassName + '.BindManager');
end;

constructor TJanuaBindRecord.Create;
begin
  inherited;
  FBindings := Spring.Collections.TCollections.CreateDictionary<TObject, TBindingExpression>;
end;

destructor TJanuaBindRecord.Destroy;
begin
  ClearBindings;
  inherited;
end;

function TJanuaBindRecord.GetBindCount: Integer;
begin
  Result := FBindings.Count
end;

procedure TJanuaBindRecord.RemoveBindings(const aObject: TObject);
var
  aBindingExpression: TBindingExpression;
  lBindObject: IJanuaBindable;
  lBindControl: IJanuaBindableControl;
begin
  if Assigned(FOwner) and Assigned(FBindings) and (FBindings.Count > 0) and
    FBindings.TryGetValue(aObject, aBindingExpression) then
  begin
    aBindingExpression.Clear;
    FBindings.Remove(aObject);
    if Supports(FOwner, IJanuaBindableControl, lBindControl) then
      lBindControl.BindManager.DecBindCount
    else if Supports(FOwner, IJanuaBindable, lBindObject) then
      lBindObject.BindManager.DecBindCount
    else if (FOwner is TJanuaCoreBindableObject) then
      (FOwner as TJanuaCoreBindableObject).BindManager.DecBindCount;
  end;

end;

{ TJanuaBindings }

procedure TJanuaBindings.Bind(const aObject: TObject; const AProperty: string; const ABindToObject: TObject;
  const ABindToProperty: string; const { aBidiRectional, } AReadOnly: boolean;
  const ACreateOptions: TJanuaBindCreateOptions);
var
  lBindRecord: IJanuaBindRecord;
begin

  if not FObjectBindings.TryGetValue(aObject, lBindRecord) then
  begin
    lBindRecord := TJanuaBindRecord.Create(aObject);
    FObjectBindings.Add(aObject, lBindRecord);
  end;
  lBindRecord.Bind(AProperty, ABindToObject, ABindToProperty, { AReadOnly, } ACreateOptions);

  if not AReadOnly then
  begin
    if not FObjectBindings.TryGetValue( { aObject } ABindToObject, lBindRecord) then
    begin
      lBindRecord := TJanuaBindRecord.Create( { aObject } ABindToObject);
      FObjectBindings.Add(ABindToObject, lBindRecord);
    end;
    lBindRecord.Bind(ABindToProperty, aObject, AProperty, { AReadOnly, } ACreateOptions);
  end;
end;

procedure TJanuaBindings.ClearAllBindings;
var
  LOB: Spring.Collections.TPair<TObject, IJanuaBindRecord>;
begin
  if Assigned(FObjectBindings) then
    for LOB in FObjectBindings do
      IJanuaBindRecord(LOB.Value).ClearBindings;
end;

procedure TJanuaBindings.ClearBindings(const aObject: TObject);
var
  LOB: Spring.Collections.TPair<TObject, IJanuaBindRecord>;
  aRecord: IJanuaBindRecord;
begin
  if FObjectBindings.TryExtract(aObject, aRecord) then
  begin
    aRecord.ClearBindings;
    // questa procedura rimuove un record e lo elimina.
    { FObjectBindings.Remove(aObject); }
    aRecord := nil;
  end;

  for LOB in FObjectBindings do
    LOB.Value.RemoveBindings(aObject);

end;

destructor TJanuaBindings.Destroy;
begin
  ClearAllBindings;
  FObjectBindings := nil;
  inherited;
end;

function TJanuaBindings.GeTJanuaBindRecord(const aObject: TObject): IJanuaBindRecord;
begin
  if not FObjectBindings.TryGetValue(aObject, Result) then
  begin
    Result := TJanuaBindRecord.Create(aObject);
    FObjectBindings.Add(aObject, Result);
  end;
end;

function TJanuaBindings.InternalActivate: boolean;
begin
  Result := FActive;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        if not Assigned(FObjectBindings) then
          FObjectBindings := TCollections.CreateDictionary<TObject, IJanuaBindRecord>;
      end;
    except
      on e: Exception do
        raise Exception.Create('TJanuaBindings.InternalActivate' + e.Message);
    end;
end;

function TJanuaBindings.NewBindControlsList: IJanuaBindControlsList;
begin
  Result := TJanuaBindControlsList.Create;
end;

procedure TJanuaBindings.Notify(const aObject: TObject; const APropertyName: string);
begin
  if Assigned(aObject) then
    TBindings.Notify(aObject, APropertyName);
end;

procedure TJanuaBindings.UnBind(const aObject: TObject; const AProperty: string; const ABindToObject: TObject;
  const ABindToProperty: string);
begin

end;

procedure TJanuaBindings.UnBind(const aObject, ABindToObject: TObject);
begin

end;

{ TJanuaBindControlsList }

procedure TJanuaBindControlsList.AddControl(aControl: TComponent);
var
  aBindControl: IJanuaBindableControl;
begin
  if Supports(aControl, IJanuaBindableControl, aBindControl) then
    FBindListObject.Add(aBindControl);
  aBindControl := nil;
end;

procedure TJanuaBindControlsList.Clear;
begin
  FBindListObject.Clear;
end;

procedure TJanuaBindControlsList.ClearBindings;
var
  aControl: IJanuaBindableControl;
begin
  for aControl in FBindListObject do
    aControl.ClearBindings;
end;

constructor TJanuaBindControlsList.Create;
begin
  FBindListObject := Spring.Collections.TCollections.CreateList<IJanuaBindableControl>;
end;

destructor TJanuaBindControlsList.Destroy;
begin
  ClearBindings;
  Clear;
  FBindListObject := nil;
  inherited;
end;

end.
