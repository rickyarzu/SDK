unit Janua.Core.Iterator;

interface

uses System.SysUtils, System.Classes, System.Generics.Collections, System.Rtti, System.TypInfo,
  // Spring
  Spring, Spring.Collections,
  // Janua
  Janua.Core.Commons;

type
//------------------------------------------------------------------------------------------------------------
  // Iterator mode enumeration
  TIteratorMode = (imReference, imCopy);

  // RTTI Cache for performance optimization
  TRttiCache = class
  private
    FContext: TRttiContext;
    FType: TRttiType;
    FAssignMethod: TRttiMethod;
    FConstructor: TRttiMethod;
    FProperties: TDictionary<string, TRttiProperty>;
    FIsTPersistent: Boolean;
  public
    constructor Create(ATypeInfo: PTypeInfo);
    destructor Destroy; override;

    property Context: TRttiContext read FContext;
    property RttiType: TRttiType read FType;
    property AssignMethod: TRttiMethod read FAssignMethod;
    property DefaultConstructor: TRttiMethod read FConstructor;
    property IsTPersistent: Boolean read FIsTPersistent;

    function GetProperty(const PropertyName: string): TRttiProperty;
  end;

  // Base iterator for any class type
  TJanuaObjectIterator<T: class> = class(TJanuaBindableClass)
  private
    FList: TStringList;
    FPropertyRTTI: TRttiProperty;
    FItemIndex: Integer;
    FPropertyName: string;
    FMode: TIteratorMode;
    FCurrentCopy: T;
    FRttiCache: TRttiCache;

    procedure SetItemIndex(const Value: Integer);
    function GetCurrent: T;
    function GetCount: Integer;
    function GetIsEOF: Boolean;
    function GetIsBOF: Boolean;
    function GetHasNext: Boolean;
    function GetHasPrevious: Boolean;
    function GetItem(Index: Integer): T;
    procedure UpdateCurrentCopy;
  protected
    function CreateInstance: T; virtual;
    procedure InitializeRttiCache;
  public
    constructor Create(AMode: TIteratorMode = imReference);
    destructor Destroy; override;

    // Initialize the iterator with property name and array of objects
    procedure Initialize(const PropertyName: string; const ObjectArray: TArray<T>); overload;
    procedure Initialize(const PropertyName: string; const ObjectList: TList<T>); overload;

    // Iterator navigation methods
    procedure MoveFirst;
    procedure MoveLast;
    procedure MoveNext;
    procedure MovePrevious;
    function MoveBy(Delta: Integer): Integer;

    // Reset iterator to initial state
    procedure Reset;

    // Find an object by property value
    function Seek(const PropertyValue: string): Boolean;

    // Add a new object to the iterator collection
    procedure Add(AObject: T);

    // Remove current object from iterator
    procedure RemoveCurrent;

    // Clear all objects from iterator
    procedure Clear;

    // Check if a property value exists
    function Contains(const PropertyValue: string): Boolean;

    // Get all objects as array
    function ToArray: TArray<T>;

    // Get all property values as array
    function GetPropertyValues: TArray<string>;

    // Properties
    property ItemIndex: Integer read FItemIndex write SetItemIndex;
    property Current: T read GetCurrent;
    property Items[Index: Integer]: T read GetItem; default;
    property Count: Integer read GetCount;
    property IsEOF: Boolean read GetIsEOF;
    property IsBOF: Boolean read GetIsBOF;
    property HasNext: Boolean read GetHasNext;
    property HasPrevious: Boolean read GetHasPrevious;
    property PropertyName: string read FPropertyName;
    property Mode: TIteratorMode read FMode;
  end;

  // Specialized iterator for TPersistent descendants with Assign support
  TJanuaPersistentIterator<T: TPersistent, constructor> = class(TJanuaObjectIterator<T>)
  protected
    function CreateInstance: T; override;
  public
    constructor Create(AMode: TIteratorMode = imCopy);
  end;

  // Specialized iterator for TPersistent descendants with Assign support
  TJanuaBindableIterator<T: TJanuaBindableClass, constructor> = class(TJanuaObjectIterator<T>)
  protected
    function CreateInstance: T; override;
  public
    constructor Create(AMode: TIteratorMode = imCopy);
  end;

  EJanuaIteratorException = class(Exception);

implementation

{ TRttiCache }

constructor TRttiCache.Create(ATypeInfo: PTypeInfo);
var
  Method: TRttiMethod;
begin
  inherited Create;
  FContext := TRttiContext.Create;
  FProperties := TDictionary<string, TRttiProperty>.Create;

  FType := FContext.GetType(ATypeInfo);
  if FType = nil then
    raise EJanuaIteratorException.CreateFmt(
      'Cannot obtain RTTI information for type', []);

  // Check if type inherits from TPersistent
  FIsTPersistent := FType.IsInstance and
    FType.AsInstance.MetaclassType.InheritsFrom(TPersistent);

  // Cache Assign method if available
  FAssignMethod := FType.GetMethod('Assign');
  if (FAssignMethod <> nil) and (Length(FAssignMethod.GetParameters) <> 1) then
    FAssignMethod := nil;

  // Cache parameterless constructor
  for Method in FType.GetMethods do
  begin
    if Method.IsConstructor and (Length(Method.GetParameters) = 0) then
    begin
      FConstructor := Method;
      Break;
    end;
  end;

  // Cache all properties for quick access
  for var Prop in FType.GetProperties do
    FProperties.Add(Prop.Name, Prop);
end;

destructor TRttiCache.Destroy;
begin
  FProperties.Free;
  FContext.Free;
  inherited;
end;

function TRttiCache.GetProperty(const PropertyName: string): TRttiProperty;
begin
  if not FProperties.TryGetValue(PropertyName, Result) then
    Result := nil;
end;

{ TJanuaObjectIterator<T> }

constructor TJanuaObjectIterator<T>.Create(AMode: TIteratorMode);
begin
  inherited Create;
  FList := TStringList.Create;
  FList.Sorted := True;
  FList.Duplicates := dupIgnore;
  FItemIndex := -1;
  FMode := AMode;

  // Initialize RTTI cache
  InitializeRttiCache;

  if FMode = imCopy then
  begin
    FCurrentCopy := CreateInstance;
    if FCurrentCopy = nil then
      raise EJanuaIteratorException.Create(
        'Copy mode requires type with parameterless constructor or use TJanuaPersistentIterator');
  end;
end;

destructor TJanuaObjectIterator<T>.Destroy;
begin
  FList.Free;
  if FMode = imCopy then
    FCurrentCopy.Free;
  FRttiCache.Free;
  inherited;
end;

procedure TJanuaObjectIterator<T>.InitializeRttiCache;
begin
  FRttiCache := TRttiCache.Create(TypeInfo(T));
end;

function TJanuaObjectIterator<T>.CreateInstance: T;
var
  Instance: TValue;
begin
  Result := nil;
  if (FRttiCache <> nil) and (FRttiCache.DefaultConstructor <> nil) then
  begin
    Instance := FRttiCache.DefaultConstructor.Invoke(TClass(T), []);
    Result := Instance.AsType<T>;
  end;
end;

procedure TJanuaObjectIterator<T>.UpdateCurrentCopy;
var
  SourceObj: T;
  SourcePersistent, DestPersistent: TPersistent;
begin
  if (FMode <> imCopy) or (FCurrentCopy = nil) then
    Exit;

  if (FItemIndex >= 0) and (FItemIndex < FList.Count) then
  begin
    SourceObj := T(FList.Objects[FItemIndex]);

    // Fast path for TPersistent types
    if FRttiCache.IsTPersistent then
    begin
      SourcePersistent := TPersistent(TObject(SourceObj));
      DestPersistent := TPersistent(TObject(FCurrentCopy));
      DestPersistent.Assign(SourcePersistent);
    end
    // Use cached Assign method via RTTI
    else if FRttiCache.AssignMethod <> nil then
    begin
      FRttiCache.AssignMethod.Invoke(FCurrentCopy, [SourceObj]);
    end
    else
      raise EJanuaIteratorException.Create(
        'Copy mode requires type to implement Assign method. Use TJanuaPersistentIterator for TPersistent types');
  end;
end;

procedure TJanuaObjectIterator<T>.Initialize(const PropertyName: string;
  const ObjectArray: TArray<T>);
var
  i: Integer;
  PropertyValue: string;
  Obj: T;
begin
  Clear;

  if Length(ObjectArray) = 0 then
    raise EJanuaIteratorException.Create('Object array is empty');

  FPropertyName := PropertyName;

  // Get property from cache
  FPropertyRTTI := FRttiCache.GetProperty(PropertyName);
  if FPropertyRTTI = nil then
    raise EJanuaIteratorException.CreateFmt(
      'Property "%s" not found in type %s',
      [PropertyName, T.ClassName]);

  // Verify that the property is readable
  if not FPropertyRTTI.IsReadable then
    raise EJanuaIteratorException.CreateFmt(
      'Property "%s" is not readable', [PropertyName]);

  // Add all objects to the internal list
  for i := 0 to Length(ObjectArray) - 1 do
  begin
    Obj := ObjectArray[i];
    if Obj = nil then
      Continue;

    // Get the property value as string
    PropertyValue := FPropertyRTTI.GetValue(TObject(Obj)).ToString;

    // Add to list (duplicates are automatically ignored due to dupIgnore setting)
    FList.AddObject(PropertyValue, TObject(Obj));
  end;

  // Position iterator on first element if present
  if FList.Count > 0 then
  begin
    FItemIndex := 0;
    UpdateCurrentCopy;
  end;
end;

procedure TJanuaObjectIterator<T>.Initialize(const PropertyName: string;
  const ObjectList: TList<T>);
var
  TempArray: TArray<T>;
begin
  TempArray := ObjectList.ToArray;
  Initialize(PropertyName, TempArray);
end;

procedure TJanuaObjectIterator<T>.SetItemIndex(const Value: Integer);
begin
  if (Value >= -1) and (Value < FList.Count) then
  begin
    FItemIndex := Value;
    UpdateCurrentCopy;
  end
  else
    raise EJanuaIteratorException.CreateFmt(
      'ItemIndex %d is out of range. Valid range: -1..%d',
      [Value, FList.Count - 1]);
end;

function TJanuaObjectIterator<T>.GetCurrent: T;
begin
  if FMode = imCopy then
  begin
    Result := FCurrentCopy;
  end
  else
  begin
    if (FItemIndex >= 0) and (FItemIndex < FList.Count) then
      Result := T(FList.Objects[FItemIndex])
    else
      Result := nil;
  end;
end;

function TJanuaObjectIterator<T>.GetItem(Index: Integer): T;
begin
  if (Index >= 0) and (Index < FList.Count) then
  begin
    if FMode = imCopy then
    begin
      // Temporarily update current copy for the requested index
      var OldIndex := FItemIndex;
      try
        FItemIndex := Index;
        UpdateCurrentCopy;
        Result := FCurrentCopy;
      finally
        FItemIndex := OldIndex;
        UpdateCurrentCopy;
      end;
    end
    else
      Result := T(FList.Objects[Index]);
  end
  else
    raise EJanuaIteratorException.CreateFmt(
      'Index %d is out of range. Valid range: 0..%d',
      [Index, FList.Count - 1]);
end;

function TJanuaObjectIterator<T>.GetCount: Integer;
begin
  Result := FList.Count;
end;

function TJanuaObjectIterator<T>.GetIsEOF: Boolean;
begin
  Result := (FItemIndex >= FList.Count - 1) or (FList.Count = 0);
end;

function TJanuaObjectIterator<T>.GetIsBOF: Boolean;
begin
  Result := (FItemIndex <= 0) or (FList.Count = 0);
end;

function TJanuaObjectIterator<T>.GetHasNext: Boolean;
begin
  Result := (FItemIndex < FList.Count - 1) and (FList.Count > 0);
end;

function TJanuaObjectIterator<T>.GetHasPrevious: Boolean;
begin
  Result := (FItemIndex > 0) and (FList.Count > 0);
end;

procedure TJanuaObjectIterator<T>.MoveFirst;
begin
  if FList.Count > 0 then
  begin
    FItemIndex := 0;
    UpdateCurrentCopy;
  end
  else
    FItemIndex := -1;
end;

procedure TJanuaObjectIterator<T>.MoveLast;
begin
  if FList.Count > 0 then
  begin
    FItemIndex := FList.Count - 1;
    UpdateCurrentCopy;
  end
  else
    FItemIndex := -1;
end;

procedure TJanuaObjectIterator<T>.MoveNext;
begin
  if HasNext then
  begin
    Inc(FItemIndex);
    UpdateCurrentCopy;
  end;
end;

procedure TJanuaObjectIterator<T>.MovePrevious;
begin
  if HasPrevious then
  begin
    Dec(FItemIndex);
    UpdateCurrentCopy;
  end;
end;

function TJanuaObjectIterator<T>.MoveBy(Delta: Integer): Integer;
var
  NewIndex: Integer;
begin
  Result := 0;
  if FList.Count = 0 then
    Exit;

  NewIndex := FItemIndex + Delta;

  // Constrain movement within list bounds
  if NewIndex < 0 then
    NewIndex := 0
  else if NewIndex >= FList.Count then
    NewIndex := FList.Count - 1;

  Result := NewIndex - FItemIndex;
  FItemIndex := NewIndex;
  UpdateCurrentCopy;
end;

procedure TJanuaObjectIterator<T>.Reset;
begin
  MoveFirst;
end;

function TJanuaObjectIterator<T>.Seek(const PropertyValue: string): Boolean;
var
  Index: Integer;
begin
  Index := FList.IndexOf(PropertyValue);
  Result := Index >= 0;
  if Result then
  begin
    FItemIndex := Index;
    UpdateCurrentCopy;
  end;
end;

function TJanuaObjectIterator<T>.Contains(const PropertyValue: string): Boolean;
begin
  Result := FList.IndexOf(PropertyValue) >= 0;
end;

procedure TJanuaObjectIterator<T>.Add(AObject: T);
var
  PropertyValue: string;
begin
  if AObject = nil then
    raise EJanuaIteratorException.Create('Cannot add nil object');

  if FPropertyRTTI = nil then
    raise EJanuaIteratorException.Create(
      'Iterator not initialized. Call Initialize method first');

  // Extract property value
  PropertyValue := FPropertyRTTI.GetValue(TObject(AObject)).ToString;

  // Add to internal list
  FList.AddObject(PropertyValue, TObject(AObject));

  // If this is the first object, position iterator on it
  if FList.Count = 1 then
  begin
    FItemIndex := 0;
    UpdateCurrentCopy;
  end;
end;

procedure TJanuaObjectIterator<T>.RemoveCurrent;
begin
  if (FItemIndex >= 0) and (FItemIndex < FList.Count) then
  begin
    FList.Delete(FItemIndex);

    // Adjust index after removal
    if FItemIndex >= FList.Count then
      FItemIndex := FList.Count - 1;

    UpdateCurrentCopy;
  end;
end;

procedure TJanuaObjectIterator<T>.Clear;
begin
  FList.Clear;
  FItemIndex := -1;
  FPropertyRTTI := nil;
  FPropertyName := '';
end;

function TJanuaObjectIterator<T>.ToArray: TArray<T>;
var
  i: Integer;
begin
  SetLength(Result, FList.Count);
  for i := 0 to FList.Count - 1 do
    Result[i] := T(FList.Objects[i]);
end;

function TJanuaObjectIterator<T>.GetPropertyValues: TArray<string>;
var
  i: Integer;
begin
  SetLength(Result, FList.Count);
  for i := 0 to FList.Count - 1 do
    Result[i] := FList[i];
end;

{ TJanuaPersistentIterator<T> }

constructor TJanuaPersistentIterator<T>.Create(AMode: TIteratorMode);
begin
  // For TPersistent descendants, default to copy mode
  inherited Create(AMode);
end;

function TJanuaPersistentIterator<T>.CreateInstance: T;
begin
  // Use the constructor constraint to create instance
  Result := T.Create;
end;

{ TJanuaBindableIterator<T> }

constructor TJanuaBindableIterator<T>.Create(AMode: TIteratorMode);
begin
  // For TJanuaBindableClass descendants, default to copy mode
  inherited Create(AMode);
end;

function TJanuaBindableIterator<T>.CreateInstance: T;
begin
  // Use the constructor constraint to create instance
  Result := T.Create;
end;

end.
