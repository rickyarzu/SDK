unit Janua.Unidac.Connection;

interface

uses System.Classes, System.SysUtils, Uni;

type
  // TOwnedCollection
  TJanuaUniConnection = class; // forward declaration
  TSettingsItem = class; // forward declaration

  TSettingsCollection = class(TOwnedCollection)
  private
    FMyComponent: TJanuaUniConnection;
  protected
    function GetItem(Index: Integer): TSettingsItem;
    procedure SetItem(Index: Integer; Value: TSettingsItem);
  public
    constructor Create(AOwner: TComponent); reintroduce;
    destructor Destroy; override;
    function Add: TSettingsItem; reintroduce;
    procedure Assign(Source: TPersistent); override;
    procedure Clear; reintroduce;
    procedure Delete(Index: Integer); reintroduce;
    property Items[Index: Integer]: TSettingsItem read GetItem write SetItem; default;

  end;

  TSettingsItem = class(TCollectionItem)
  private
    FKey: string;
    FValue: Variant;
    procedure SetKey(const Value: string);
    procedure SetValue(const Value: Variant);
  protected
    procedure AssignTo(Dest: TPersistent); override;
    function GetDisplayName: String; override;
    function GetSettings: TSettingsCollection;
    // function GetOwner: TComponent; override;
  public
    procedure Assign(Source: TPersistent); override;
    constructor Create(AOwner: TCollection); override;
    destructor Destroy; override;
  published
    property Key: string read FKey write SetKey;
    property Value: Variant read FValue write SetValue;
  end;

  TJanuaUniConnection = class(TUniConnection)
  private
    FSchemaID: Integer;
    FSchemaSQL: string;
    FSchemaResult: string;
    FSchemaParams: TSettingsCollection;
    FSchemaParamKey: string;
    procedure SetSchemaID(const Value: Integer);
    procedure SetSchemaSQL(const Value: string);
    procedure InternalSetSchema;
    procedure SetSchemaParams(const Value: TSettingsCollection);
    procedure SetSchemaParamKey(const Value: string);
  protected
    procedure DoConnect; override;
    procedure DoDisconnect; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure AfterConnection(Sender: TObject);
    procedure AfterConstruction; override;
  published
    property SchemaID: Integer read FSchemaID write SetSchemaID default 0;
    property SchemaParamKey: string read FSchemaParamKey write SetSchemaParamKey;
    property SchemaSQL: string read FSchemaSQL write SetSchemaSQL;
    property SchemaResult: string read FSchemaResult;
    property SchemaParams: TSettingsCollection read FSchemaParams write SetSchemaParams;
  end;

procedure Register;

implementation

uses System.Variants;

procedure Register;
begin
  RegisterComponents('Janua Unidac', [TJanuaUniConnection]);
end;

{ TJanuaUniConnection }

procedure TJanuaUniConnection.AfterConnection(Sender: TObject);
begin
  InternalSetSchema;
end;

procedure TJanuaUniConnection.AfterConstruction;
begin
  inherited;
  AfterConnect := AfterConnection;
  FSchemaParams := TSettingsCollection.Create(Self);
end;

constructor TJanuaUniConnection.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FSchemaID := 0;
  FSchemaParamKey := 'system.db_schema_id';
end;

destructor TJanuaUniConnection.Destroy;
begin
  FSchemaParams.Free;
  inherited;
end;

procedure TJanuaUniConnection.DoConnect;
begin
  try
    inherited;
    InternalSetSchema;
  except
    on e: Exception do
      raise Exception.Create(Owner.ClassName + '.' + Owner.Name + e.Message);
  end;
end;

procedure TJanuaUniConnection.DoDisconnect;
begin
  inherited;
  FSchemaResult := 'Disconnected Schema';
end;

procedure TJanuaUniConnection.InternalSetSchema;
var
  lBuilder: TStringBuilder;
begin
  if (FSchemaSQL <> '') then
  begin
    try
      lBuilder := TStringBuilder.Create;
      try
        lBuilder.Append(Format(FSchemaSQL, [FSchemaParamKey, FSchemaID.ToString]));
        if FSchemaParams.Count > 0 then
          for var I := 0 to Pred(FSchemaParams.Count) do
            lBuilder.Append(Format(FSchemaSQL, [FSchemaParams[I].Key, VarToStr(FSchemaParams[I].Value)]));
        ExecSQL(lBuilder.ToString);
        FSchemaResult := lBuilder.ToString;
      finally
        lBuilder.Free;
      end;
    except
      on e: Exception do
        FSchemaResult := FSchemaResult + sLineBreak + e.ToString
    end;
  end
  else
    FSchemaResult := 'Not Selected Schema';
end;

procedure TJanuaUniConnection.SetSchemaID(const Value: Integer);
begin
  FSchemaID := Value;
end;

procedure TJanuaUniConnection.SetSchemaParamKey(const Value: string);
begin
  FSchemaParamKey := Value;
end;

procedure TJanuaUniConnection.SetSchemaParams(const Value: TSettingsCollection);
begin
  // FSchemaParams.Assign(Value);
  FSchemaParams := Value;
end;

procedure TJanuaUniConnection.SetSchemaSQL(const Value: string);
begin
  FSchemaSQL := Value;
end;

{ TSettingsItem }

procedure TSettingsItem.Assign(Source: TPersistent);
begin
  if Source is TSettingsItem then
  begin
    FKey := TSettingsItem(Source).Key;
    FValue := TSettingsItem(Source).Value;
  end
  else
    inherited Assign(Source);
end;

procedure TSettingsItem.AssignTo(Dest: TPersistent);
begin
  if Dest is TSettingsItem then
  begin
    TSettingsItem(Dest).Key := FKey;
    TSettingsItem(Dest).Value := FValue;
  end
  else
    inherited AssignTo(Dest);
end;

constructor TSettingsItem.Create(AOwner: TCollection);
begin
  inherited Create(AOwner);
  FKey := '';
  FValue := 0;
end;

destructor TSettingsItem.Destroy;
begin

  inherited Destroy;
end;

function TSettingsItem.GetDisplayName: string;
begin
  Result := FKey;
  if Result = '' then
    Result := inherited GetDisplayName();
end;

{
  function TSettingsItem.GetOwner: TComponent;
  begin
  Result := GetSettings.GetOwner as TComponent;
  end;
}

function TSettingsItem.GetSettings: TSettingsCollection;
begin
  Result := Collection as TSettingsCollection;
end;

procedure TSettingsItem.SetKey(const Value: string);
begin
  FKey := Value;
end;

procedure TSettingsItem.SetValue(const Value: Variant);
begin
  FValue := Value;
end;

{ TSettingsCollection }

function TSettingsCollection.Add: TSettingsItem;
begin
  Result := TSettingsItem(inherited Add);
end;

procedure TSettingsCollection.Assign(Source: TPersistent);
begin
  inherited Assign(Source);
end;

procedure TSettingsCollection.Clear;
begin
  inherited Clear;
end;

constructor TSettingsCollection.Create(AOwner: TComponent);
begin
  inherited Create(AOwner, TSettingsItem);
end;

procedure TSettingsCollection.Delete(Index: Integer);
begin
  inherited Delete(Index);
end;

destructor TSettingsCollection.Destroy;
begin
  inherited Destroy;
end;

function TSettingsCollection.GetItem(Index: Integer): TSettingsItem;
begin
  Result := TSettingsItem(inherited Items[Index]);
end;

procedure TSettingsCollection.SetItem(Index: Integer; Value: TSettingsItem);
begin
  inherited SetItem(Index, Value);
end;

end.
