unit JOrm.System.Settings.Impl;

interface

uses JOrm.System.Settings.Intf, Janua.Orm.Intf, Janua.Orm.Impl;

type

  TKeyValue = Class(TJanuaRecord, IKeyValue)
  private
    FKey: IJanuaField;
    FValue: IJanuaField;
    FParamType: IJanuaField;
    FHasTranslation: IJanuaField;
  protected
    function GetKey: IJanuaField;
    procedure SetKey(const aValue: IJanuaField);
    function GetParamType: IJanuaField;
    procedure SetParamType(const aValue: IJanuaField);
    function GetValue: IJanuaField;
    procedure SetValue(const aValue: IJanuaField);
    function GetHasTranslation: IJanuaField;
    procedure SetHasTranslation(const aValue: IJanuaField);
  public
    property Key: IJanuaField read GetKey write SetKey;
    property ParamType: IJanuaField read GetParamType write SetParamType;
    property Value: IJanuaField read GetValue write SetValue;
    property HasTranslation: IJanuaField read GetHasTranslation write SetHasTranslation;
  end;

  TKeyValues = Class(TJanuaRecordSet, IKeyValues)
  private
    FtKeyValue: IKeyValue;
  protected
    function GetKey: IJanuaField;
    procedure SetKey(const aValue: IJanuaField);
    function GetParamType: IJanuaField;
    procedure SetParamType(const aValue: IJanuaField);
    function GetValue: IJanuaField;
    procedure SetValue(const aValue: IJanuaField);
    function GetHasTranslation: IJanuaField;
    procedure SetHasTranslation(const aValue: IJanuaField);
  public
    property Key: IJanuaField read GetKey write SetKey;
    property ParamType: IJanuaField read GetParamType write SetParamType;
    property Value: IJanuaField read GetValue write SetValue;
    property HasTranslation: IJanuaField read GetHasTranslation write SetHasTranslation;
    function GetKeyValue: IKeyValue;
    procedure SetDBSchemaKeyValue(const aValue: IKeyValue);
    property KeyValue: IKeyValue read GetKeyValue write SetDBSchemaKeyValue;
  end;

  TSetting = Class(TJanuaRecord, ISetting)
  private
    FSection: IJanuaField;
    FKeyValues: IKeyValues;
  protected
    function GetSection: IJanuaField;
    procedure SetSection(const aValue: IJanuaField);
    function GetKeyValues: IKeyValues;
    procedure SetKeyValues(const aValue: IKeyValues);
  public
    property Section: IJanuaField read GetSection write SetSection;
    property KeyValues: IKeyValues read GetKeyValues write SetKeyValues;
  end;

  TSettings = Class(TJanuaRecordSet, ISettings)
  private
    FSetting: ISetting;
  protected
    function GetSection: IJanuaField;
    procedure SetSection(const aValue: IJanuaField);
    function GetSetting: ISetting;
    procedure SetSetting(const aValue: ISetting);
  public
    property Section: IJanuaField read GetSection write SetSection;
    function GetKeyValues: IKeyValues;
    procedure SetKeyValues(const aValue: IKeyValues);
    property KeyValues: IKeyValues read GetKeyValues write SetKeyValues;
    property Setting: ISetting read GetSetting write SetSetting;
  end;

implementation

{ TKeyValue }

function TKeyValue.GetHasTranslation: IJanuaField;
begin
  Result := FHasTranslation;
end;

function TKeyValue.GetKey: IJanuaField;
begin
  Result := FKey;
end;

function TKeyValue.GetParamType: IJanuaField;
begin
  Result := FParamType;
end;

function TKeyValue.GetValue: IJanuaField;
begin
  Result := FValue;
end;

procedure TKeyValue.SetHasTranslation(const aValue: IJanuaField);
begin
  FHasTranslation := aValue;
end;

procedure TKeyValue.SetKey(const aValue: IJanuaField);
begin
  FKey := aValue;
end;

procedure TKeyValue.SetParamType(const aValue: IJanuaField);
begin
  FParamType := aValue;
end;

procedure TKeyValue.SetValue(const aValue: IJanuaField);
begin

end;

{ TKeyValues }

function TKeyValues.GetHasTranslation: IJanuaField;
begin

end;

function TKeyValues.GetKey: IJanuaField;
begin

end;

function TKeyValues.GetKeyValue: IKeyValue;
begin

end;

function TKeyValues.GetParamType: IJanuaField;
begin

end;

function TKeyValues.GetValue: IJanuaField;
begin

end;

procedure TKeyValues.SetDBSchemaKeyValue(const aValue: IKeyValue);
begin

end;

procedure TKeyValues.SetHasTranslation(const aValue: IJanuaField);
begin

end;

procedure TKeyValues.SetKey(const aValue: IJanuaField);
begin

end;

procedure TKeyValues.SetParamType(const aValue: IJanuaField);
begin

end;

procedure TKeyValues.SetValue(const aValue: IJanuaField);
begin

end;

{ TSetting }

function TSetting.GetKeyValues: IKeyValues;
begin

end;

function TSetting.GetSection: IJanuaField;
begin

end;

procedure TSetting.SetKeyValues(const aValue: IKeyValues);
begin

end;

procedure TSetting.SetSection(const aValue: IJanuaField);
begin

end;

{ TSettings }

function TSettings.GetKeyValues: IKeyValues;
begin

end;

function TSettings.GetSection: IJanuaField;
begin

end;

function TSettings.GetSetting: ISetting;
begin

end;

procedure TSettings.SetKeyValues(const aValue: IKeyValues);
begin

end;

procedure TSettings.SetSection(const aValue: IJanuaField);
begin

end;

procedure TSettings.SetSetting(const aValue: ISetting);
begin

end;

end.
