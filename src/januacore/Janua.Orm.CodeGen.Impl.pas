unit Janua.Orm.CodeGen.Impl;

interface

uses
  // System
  System.Classes, System.Json, System.SysUtils, System.Rtti, System.StrUtils,
  // Bindings
  System.Bindings.Expression, System.Bindings.Helper,
  // DB, RTL, .....
  Data.DB,
  // OS specifi
  // Third Party Libs
  Spring, Spring.Collections,
  // Janua Types
  Janua.Rest.Types, Janua.Core.DB.Types, Janua.Orm.Types, Janua.Core.Types,
  // Janua Interfaces
  Janua.Html.Intf, Janua.Core.Classes.Intf, Janua.Orm.Intf,
  // Janua Framework
  Janua.Core.Classes, Janua.Core.DB;

type
  TRecordCodeGen = class(TJanuaInterfacedBindableObject, IRecordCodeGen)
  public
    constructor Create; override;
  private
    FImplString: string;
    FCustomImplString: string;
    FIntfString: string;
    FCustomIntfString: string;
    FMasterRecord: IJanuaRecord;
    FMasterClassConf: TRecordUnitConf;
    FCustomMasterFiles: TRecordUnits;
    FMasterFiles: TRecordUnits;
    FAskPlurals: Boolean;
    FDetailGens: IDictionary<string, IRecordCodeGen>;
    function ind(l: integer): string;
    procedure SetCustomImplString(const Value: string);
    procedure SetCustomIntfString(const Value: string);
    procedure SetImplString(const Value: string);
    procedure SetIntfString(const Value: string);
    function GetCustomImplString: string;
    function GetCustomIntfString: string;
    function GetImplString: string;
    function GetIntfString: string;
  private
    sKey, sSet, sSetType, sSchema, sField: string;
    FDataset: TDataset;
    FIsMaster: boolean;
    function GetDetails(Index: string): IRecordCodeGen;
  protected
    function GetMasterRecord: IJanuaRecord;
    procedure SetMasterRecord(const Value: IJanuaRecord);
    function GetSchemaName: string;
    procedure SetSchemaName(const aValue: string);
    function GetTableName: string;
    procedure SetTableName(const aValue: string);
    function GetCustomMasterFiles: TRecordUnits;
    function GetMasterFiles: TRecordUnits;
    function GetMasterClassConf: TRecordUnitConf;
    procedure SetDataset(const Value: TDataset);
    function GetDataset: TDataset;
    procedure SetAskPlurals(const Value: Boolean);
    function GetAskPlurals: Boolean;
    procedure SetIsMaster(const Value: Boolean);
    function GetIsMaster: Boolean;
    function GetDetailGens: IDictionary<string, IRecordCodeGen>;
  strict protected
    function GenerateCustomIntfFromDataset(const aDataset: TDataset; aUnit: TRecordUnits): string;
    function GenerateCustomImplFromDataset(const aDataset: TDataset; aUnit: TRecordUnits): string;
    function GenerateIntfFromDataset(const aDataset: TDataset; aUnit: TRecordUnits): string;
    function GenerateImplFromDataset(const aDataset: TDataset; aUnit: TRecordUnits): string;
  public
    procedure Generate;
    procedure AddDetailDataset(const aDataset: TDataset; aTableName, aSchemaName: string);
  public
    property AskPlurals: Boolean read GetAskPlurals write SetAskPlurals;
    property MasterClassConf: TRecordUnitConf read GetMasterClassConf;
    property MasterRecord: IJanuaRecord read GetMasterRecord write SetMasterRecord;
    property SchemaName: string read GetSchemaName write SetSchemaName;
    property TableName: string read GetTableName write SetTableName;
    property Dataset: TDataset read GetDataset write SetDataset;
    property CustomMasterFiles: TRecordUnits read GetCustomMasterFiles;
    property MasterFiles: TRecordUnits read GetMasterFiles;
    property CustomIntfString: string read GetCustomIntfString write SetCustomIntfString;
    property CustomImplString: string read GetCustomImplString write SetCustomImplString;
    property IntfString: string read GetIntfString;
    property ImplString: string read GetImplString;
    property IsMaster: Boolean read GetIsMaster write SetIsMaster;
    property DetailGens: IDictionary<string, IRecordCodeGen> read GetDetailGens;
    property Details[Index: string]: IRecordCodeGen read GetDetails;
  End;

implementation

uses
  // System
  System.Math,
  // Janua Framework
  Janua.Orm.Impl, Janua.Core.Functions, Janua.Application.Framework;

function ind(l: integer): string;
begin
  Result := Janua.Core.Functions.Indent(2, l)
end;

function CheckGUID(const aStr: string): Boolean;
begin
  Result := not((aStr.ToLower = 'jguid') or (aStr.ToLower = 'deleted'))
end;

{ TRecordCodeGen }

procedure TRecordCodeGen.AddDetailDataset(const aDataset: TDataset; aTableName, aSchemaName: string);
var
  aRecordGen: IRecordCodeGen;
begin
  aRecordGen := TRecordCodeGen.Create;
  aDataset.Name := 'tb' + aTableName;
  aRecordGen.Dataset := aDataset;
  aRecordGen.SchemaName := aSchemaName;
  aRecordGen.AskPlurals := True;
  FDetailGens.Add(aTableName, aRecordGen);
end;

constructor TRecordCodeGen.Create;
begin
  inherited;
  FAskPlurals := False;
  FMasterClassConf := TRecordUnitConf.Create;
  FCustomMasterFiles := TRecordUnits.Create(FMasterClassConf);
  FMasterFiles := TRecordUnits.Create(FMasterClassConf);
  FMasterRecord := TJanuaRecord.Create;
  FDetailGens := TCollections.CreateDictionary<string, IRecordCodeGen>;
end;

procedure TRecordCodeGen.Generate;
begin
  FCustomMasterFiles.IntfFile.Text := GenerateCustomIntfFromDataset(FDataset, FCustomMasterFiles);
  FCustomMasterFiles.ImplFile.Text := GenerateCustomImplFromDataset(FDataset, FCustomMasterFiles);
  FMasterFiles.IntfFile.Text := GenerateIntfFromDataset(FDataset, FMasterFiles);
  FMasterFiles.ImplFile.Text := GenerateImplFromDataset(FDataset, FMasterFiles);
end;

function TRecordCodeGen.GenerateCustomImplFromDataset(const aDataset: TDataset; aUnit: TRecordUnits): string;
var
  i: integer;
  lTmp: TJanuaFieldType;
  sMyGuid: string;
  bTest: Boolean;
begin

  // Impl ..........................................................................................................
  var
  aBuilder := TStringBuilder.Create;
  try
    aBuilder.AppendLine('unit ' + aUnit.ImplFile.FileName + ';');
    aBuilder.AppendLine('');
    aBuilder.AppendLine('interface');
    aBuilder.AppendLine('');
    aBuilder.AppendLine('uses Janua.Orm.Intf, Janua.Orm.Impl, Janua.Core.Types, ' +
      aUnit.IntfFile.FileName + ';');
    aBuilder.AppendLine('');

    aBuilder.AppendLine
      ('//------------------------------------------ Impl Record interface ----------------------------------');

    aBuilder.AppendLine('');
    aBuilder.AppendLine('type');

    var
    sClass := aUnit.Conf.SingularName;

    var
    sClassType := 'TCustom' + sClass;

    // Generazione Implementazione della Classe Record .....................................................................
    aBuilder.AppendLine(ind(1) + sClassType + ' = class(TJanuaRecord, ICustom' + sClass + ')');
    aBuilder.AppendLine(ind(1) + 'private');

    for i := 0 to Pred(aDataset.FieldCount) do
    begin
      if CheckGUID(aDataset.Fields[i].FieldName) then
      begin
        var
        sName := CamelCase(aDataset.Fields[i].FieldName.ToLower);
        // F<FieldName> is the index of the field in the field list
        aBuilder.AppendLine(ind(2) + 'F' + sName + ': IJanuaField;');
      end;
    end;

    // aggiungo una seconda sezione private per i metodi Setter e Getter delle procedure in questione.
    aBuilder.AppendLine(ind(1) + 'protected');
    for i := 0 to Pred(aDataset.FieldCount) do
    begin
      if CheckGUID(aDataset.Fields[i].FieldName) then
      begin
        var
        sName := CamelCase(aDataset.Fields[i].FieldName.ToLower);
        aBuilder.AppendLine(ind(2) + 'function Get' + sName + ': IJanuaField;');
      end;
    end;

    // aggiungo una seconda sezione public per le proprietà dei campi definiti, conforme con interfaccia
    aBuilder.AppendLine(ind(1) + 'public');
    aBuilder.AppendLine(ind(2) + 'constructor Create; override;');

    for i := 0 to Pred(aDataset.FieldCount) do
    begin
      if CheckGUID(aDataset.Fields[i].FieldName.ToLower) then
      begin
        var
        sName := CamelCase(aDataset.Fields[i].FieldName.ToLower);
        aBuilder.AppendLine(ind(2) + 'property ' + sName + ': IJanuaField read Get' + sName + ';');
      end;
    end;

    aBuilder.AppendLine('');
    aBuilder.AppendLine(ind(1) + 'end;');
    aBuilder.AppendLine('');

    // ----------------------- RecordSet Type Interface ------------------------------------------------------

    // Generazione Interfaccia della Classe RecordSet ..................................................................
    aBuilder.AppendLine(ind(1) + sSetType + ' = class(TJanuaRecordSet, IJanuaRecordSet, I' + sSet + ')');

    // aggiungo una seconda sezione private per i metodi Setter e Getter delle procedure in questione.
    aBuilder.AppendLine(ind(1) + 'private');
    // Getters and Setters of Field
    for i := 0 to Pred(aDataset.FieldCount) do
    begin
      if CheckGUID(aDataset.Fields[i].FieldName) then
      begin
        var
        sName := CamelCase(aDataset.Fields[i].FieldName.ToLower);
        aBuilder.AppendLine(ind(2) + 'function Get' + sName + ': IJanuaField;');
      end;
    end;
    aBuilder.AppendLine(ind(1) + 'protected');
    // Getter and Setter of Record ..................................................
    aBuilder.AppendLine(ind(2) + 'function GetCustom' + sClass + ': ICustom' + sClass + ';');
    // Infine inserisco la property che punta al Record di definizione del RecordSet
    aBuilder.AppendLine(ind(2) + 'property Custom' + sClass + ': ICustom' + sClass + ' read GetCustom' +
      sClass + ';');

    // aggiungo una seconda sezione public per le proprietà dei campi definiti, conforme con interfaccia
    aBuilder.AppendLine(ind(1) + 'public');
    aBuilder.AppendLine(ind(2) + 'constructor Create; override;');

    for i := 0 to Pred(aDataset.FieldCount) do
    begin
      if CheckGUID(aDataset.Fields[i].FieldName) then
      begin
        var
        sName := CamelCase(aDataset.Fields[i].FieldName.ToLower);
        aBuilder.AppendLine(ind(2) + 'property ' + sName + ': IJanuaField read Get' + sName + ';');
      end;
    end;

    // Termino la Classe
    aBuilder.AppendLine(ind(1) + 'end;');
    aBuilder.AppendLine('');


    // Implementation Code --------------------------------------------------------------------------------------

    aBuilder.AppendLine('');
    aBuilder.AppendLine('implementation');
    aBuilder.AppendLine('');

    // ------------------------- Record Implementation ------------------------------------------------------------------

    aBuilder.AppendLine('//------------------------------------------ Impl ' + 'T' + sClass +
      ' -------------------------------');
    aBuilder.AppendLine('');
    aBuilder.AppendLine('{' + sClassType + '}');

    // Metodo Create (aName) ...........................................................................................
    aBuilder.AppendLine('');
    // Generazione Metodo Create della Classe Record ...................................................................
    // constructor TJanuaTestNestedRecord.Create; begin inherited;
    aBuilder.AppendLine(ind(1) + 'constructor ' + sClassType + '.Create;');
    aBuilder.AppendLine(ind(1) + 'begin');
    // inherited;
    aBuilder.AppendLine(ind(2) + 'inherited;');
    // Create Fields List As Interface Implementations .......................................................
    for i := 0 to Pred(aDataset.FieldCount) do
    begin
      if CheckGUID(aDataset.Fields[i].FieldName) then
      begin
        var
        sName := CamelCase(aDataset.Fields[i].FieldName.ToLower);
        sKey := aDataset.Fields[i].FieldName.ToLower;
        bTest := True;
        sField := QuotedStr(sKey) + ', ' + QuotedStr(sKey);

        // FDbSchemaId := AddCreateField(TJanuaFieldType.jptInteger, 'db_schema_id', 'db_schema_id');
        case aDataset.Fields[i].DataType of
          TFieldType.ftFloat:
            begin
              aBuilder.AppendLine(ind(2) + 'F' + sName + ':= AddCreateField(TJanuaFieldType.jptFloat, ' +
                sField + ');');
            end;
          TFieldType.ftString, TFieldType.ftWideString:
            begin
              aBuilder.AppendLine(ind(2) + 'F' + sName + ':= AddCreateField(TJanuaFieldType.jptString, ' +
                sField + ');');
              // FString := self.AddField(TJanuaOrmFactory.CreateStringField('str', 'StringField'));
            end;
          // ftWideMemo { 20 jptText }
          TFieldType.ftWideMemo, TFieldType.ftMemo:
            begin
              aBuilder.AppendLine(ind(2) + 'F' + sName + ':= AddCreateField(TJanuaFieldType.jptText, ' +
                sField + ');');
              // FString := self.AddField(TJanuaOrmFactory.CreateStringField('str', 'StringField'));
            end;
          TFieldType.ftInteger:
            begin
              aBuilder.AppendLine(ind(2) + 'F' + sName + ':= AddCreateField(TJanuaFieldType.jptInteger, ' +
                sField + ');');
              // FInteger := self.AddField(TJanuaOrmFactory.CreateIntegerField('int', 'IntField'));
            end;
          TFieldType.ftBoolean:
            begin
              aBuilder.AppendLine(ind(2) + 'F' + sName + ':= AddCreateField(TJanuaFieldType.jptBoolean, ' +
                sField + ');');
              // FBoolean := self.AddField(TJanuaOrmFactory.CreateBoolField('boo', 'BoolField'));
            end;
          TFieldType.ftGuid:
            begin
              lTmp := TJanuaFieldType.jptGUID;
              if not(aDataset.Fields[i].FieldName.ToLower = 'jguid') then
                // Managed by jguid identifier on class
                aBuilder.AppendLine(ind(2) + 'F' + sName + ':= AddCreateField(TJanuaFieldType.jptGUID, ' +
                  sField + ');');
            end;
          TFieldType.ftVariant:
            begin
              lTmp := TJanuaFieldType.jptVariant;
              aBuilder.AppendLine(ind(2) + 'F' + sName + ':= AddCreateField(TJanuaFieldType.jptVariant, ' +
                sField + ');');
            end;
          TFieldType.ftCurrency:
            begin
              lTmp := TJanuaFieldType.jptCurrency;
              aBuilder.AppendLine(ind(2) + 'F' + sName + ':= AddCreateField(TJanuaFieldType.jptCurrency, ' +
                sField + ');');
              // FBoolean := self.AddField(TJanuaOrmFactory.CreateBoolField('boo', 'BoolField'));
            end;
          TFieldType.ftDateTime, TFieldType.ftTimeStamp, TFieldType.ftTime:
            begin
              lTmp := TJanuaFieldType.jptDateTime;
              aBuilder.AppendLine(ind(2) + 'F' + sName + ':= AddCreateField(TJanuaFieldType.jptDateTime, ' +
                sField + ');');
              // FDateTime := self.AddField(TJanuaOrmFactory.CreateDateTimeField('dat', 'dat'));
            end;
          TFieldType.ftDate:
            begin
              lTmp := TJanuaFieldType.jptDate;
              aBuilder.AppendLine(ind(2) + 'F' + sName + ':= AddCreateField(TJanuaFieldType.jptDate, ' +
                sField + ');');
              // FDateTime := self.AddField(TJanuaOrmFactory.CreateDateTimeField('dat', 'dat'));
            end;
          TFieldType.ftExtended:
            begin
              lTmp := TJanuaFieldType.jptExtended;
              aBuilder.AppendLine(ind(2) + 'F' + sName + ':= AddCreateField(TJanuaFieldType.jptExtended, ' +
                sField + ');');
              // class function CreateExtentedField(aKey, aField: string): IJanuaField;
            end;
          TFieldType.ftSmallint:
            begin
              lTmp := TJanuaFieldType.jptSmallint;
              aBuilder.AppendLine(ind(2) + 'F' + sName + ':= AddCreateField(TJanuaFieldType.jptSmallint, ' +
                sField + ');');
            end;
          TFieldType.ftLargeInt:
            begin
              lTmp := TJanuaFieldType.jptLargeInt;
              aBuilder.AppendLine(ind(2) + 'F' + sName + ':= AddCreateField(TJanuaFieldType.jptLargeint, ' +
                sField + ');');
            end;
          TFieldType.ftBlob:
            begin
              lTmp := TJanuaFieldType.jptBlob;
              aBuilder.AppendLine(ind(2) + 'F' + sName + ':= AddCreateField(TJanuaFieldType.jptBlob, ' +
                sField + ');');
            end;
        else
          begin
            aBuilder.AppendLine(ind(2) + '// Campo non Gestito' + sKey + ' Type= ' +
              TEnumConvertor<TFieldType>.ToString(aDataset.Fields[i].DataType));
            bTest := False;
          end;
        end;
      end;
    end;
    aBuilder.AppendLine(ind(1) + 'end;');

    aBuilder.AppendLine('');

    // Generazione Implementazione della Classe Getters and Setters .................................................
    for i := 0 to Pred(aDataset.FieldCount) do
    begin
      if CheckGUID(aDataset.Fields[i].FieldName) then
      begin
        var
        sName := CamelCase(aDataset.Fields[i].FieldName.ToLower);
        if not((sName.ToLower = 'jguid') or (sName.ToLower = 'deleted')) then
        begin
          aBuilder.AppendLine(ind(1) + 'function ' + sClassType + '.Get' + sName + ': IJanuaField;');
          aBuilder.AppendLine(ind(1) + 'begin');
          aBuilder.AppendLine(ind(2) + 'Result := F' + sName + ';');
          aBuilder.AppendLine(ind(1) + 'end;');
          aBuilder.AppendLine('');
        end;
      end;
    end;


    // RecordSet Implementation .....................................................................................

    aBuilder.AppendLine(ind(1) + '{ ' + sSetType + ' }');

    // Metodo Create ................................................................................................
    aBuilder.AppendLine(ind(1) + 'constructor ' + sSetType + '.Create;');
    aBuilder.AppendLine(ind(1) + 'begin');
    aBuilder.AppendLine(ind(2) + 'inherited;');
    aBuilder.AppendLine(ind(1) + 'end;');
    aBuilder.AppendLine('');

    // Generazione Implementazione della Classe Getters and Setters .................................................
    for i := 0 to Pred(aDataset.FieldCount) do
    begin
      if CheckGUID(aDataset.Fields[i].FieldName.ToLower) then
      begin
        var
        sName := CamelCase(aDataset.Fields[i].FieldName.ToLower);
        if not((sName.ToLower = 'jguid') or (sName.ToLower = 'deleted')) then
        begin
          aBuilder.AppendLine(ind(1) + 'function ' + sSetType + '.Get' + sName + ': IJanuaField;');
          aBuilder.AppendLine(ind(1) + 'begin');
          aBuilder.AppendLine(ind(2) + 'Result := self.Custom' + sClass + '.' + sName + ';');
          aBuilder.AppendLine(ind(1) + 'end;');
          aBuilder.AppendLine('');
        end;
      end;
    end;

    // Generazione Getter & Setter del Record ..........................................................................
    aBuilder.AppendLine(ind(1) + 'function ' + sSetType + '.GetCustom' + sClass + ': ICustom' + sClass + ';');
    aBuilder.AppendLine(ind(1) + 'begin');
    aBuilder.AppendLine(ind(2) + 'Result := FRecord as ICustom' + sClass + ';');
    aBuilder.AppendLine(ind(1) + 'end;');
    aBuilder.AppendLine('');

    aBuilder.AppendLine('end.');
    Result := aBuilder.ToString;

  finally
    aBuilder.Free;
  end;

end;

function TRecordCodeGen.GenerateCustomIntfFromDataset(const aDataset: TDataset; aUnit: TRecordUnits): string;
var
  i: integer;
  lTmp: TJanuaFieldType;
  bTest: Boolean;
  MyGuid0, MyGuid1: TGUID;
begin
  // function InputText(const sTitle, sCaption: string; const sDefault: string = ''): string;
  if FAskPlurals and aUnit.Conf.SingularName.IsEmpty then
  begin
    aUnit.Conf.SingularName := TJanuaApplication.DialogText.InputText('Singolare', 'Inserire il nome Record',
      CamelCase(aUnit.Conf.DatasetName.ToLower));
  end;

  var
  sClass := IfThen(aUnit.Conf.SingularName.IsEmpty, CamelCase(aUnit.Conf.DatasetName.ToLower),
    CamelCase(aUnit.Conf.SingularName));

  aUnit.Conf.SingularName := sClass;

  // function InputText(const sTitle, sCaption: string; const sDefault: string = ''): string;
  if FAskPlurals and aUnit.Conf.PluralName.IsEmpty then
  begin
    aUnit.Conf.PluralName := TJanuaApplication.DialogText.InputText('Plurale', 'Inserire il nome Recordset',
      CamelCase(aUnit.Conf.DatasetName.ToLower) + 's');
  end;

  var
  sPlural := IfThen(aUnit.Conf.PluralName.IsEmpty, CamelCase(aUnit.Conf.DatasetName.ToLower) + 's',
    CamelCase(aUnit.Conf.PluralName));

  aUnit.Conf.PluralName := sPlural;

  sSchema := CamelCase(aUnit.Conf.SchemaName);

  aUnit.IntfFile.FileName := 'JOrm.' + sSchema + '.' + sPlural + '.Custom.Intf';

  aUnit.ImplFile.FileName := 'JOrm.' + sSchema + '.' + sPlural + '.Custom.Impl';

  var
  aBuilder := TStringBuilder.Create;
  try
    // Intf ............................................................................................................
    aBuilder.AppendLine('unit ' + aUnit.IntfFile.FileName + ';');
    aBuilder.AppendLine('');
    aBuilder.AppendLine('interface');
    aBuilder.AppendLine('');
    aBuilder.AppendLine('uses Janua.Orm.Intf;');
    aBuilder.AppendLine('');
    aBuilder.AppendLine('type');
    aBuilder.AppendLine('');

    // Generazione Interfaccia della Classe Record .....................................................................
    aBuilder.AppendLine(ind(1) + 'ICustom' + sClass + ' = interface(IJanuaRecord)');
    if CreateGUID(MyGuid0) <> 0 then
      aBuilder.AppendLine('Creating GUID failed!')
    else
    begin
      var
      sMyGuid := stringreplace(GUIDToString(MyGuid0), '{', '[''{', [rfReplaceAll, rfIgnoreCase]);
      sMyGuid := stringreplace(sMyGuid, '}', '}'']', [rfReplaceAll, rfIgnoreCase]);
      aBuilder.AppendLine(ind(1) + sMyGuid);
    end;

    // Generazione Getter - Setter - Properties ........................................................................
    for i := 0 to Pred(aDataset.FieldCount) do
    begin
      var
      sName := aDataset.Fields[i].FieldName.ToLower;
      if CheckGUID(sName) then
      begin
        sName := CamelCase(sName);
        aBuilder.AppendLine(ind(2) + 'function Get' + sName + ': IJanuaField;');
        aBuilder.AppendLine(ind(2) + 'property ' + sName + ': IJanuaField read Get' + sName + ';');
      end;
    end;

    aBuilder.AppendLine(ind(1) + 'end;');
    aBuilder.AppendLine('');

    // Generazione Interfaccia della Classe RecordSet ..................................................................
    sSet := 'Custom' + IfThen(sPlural.IsEmpty, sClass + 's', sPlural);
    // Il Type può essere Custom quindi implementabile in un discendente lasciando al gestore automatico il Custom
    sSetType := 'T' + sSet;

    aBuilder.AppendLine(ind(1) + 'I' + sSet + ' = interface(IJanuaRecordSet)');
    if CreateGUID(MyGuid1) <> 0 then
      aBuilder.AppendLine('Creating GUID failed!')
    else
    begin
      var
      sMyGuid := stringreplace(GUIDToString(MyGuid1), '{', '[''{', [rfReplaceAll, rfIgnoreCase]);
      sMyGuid := stringreplace(sMyGuid, '}', '}'']', [rfReplaceAll, rfIgnoreCase]);
      aBuilder.AppendLine(ind(1) + sMyGuid);
    end;

    // Generazione Getter - Setter - Properties ........................................................................
    for i := 0 to Pred(aDataset.FieldCount) do
    begin
      var
      sName := aDataset.Fields[i].FieldName.ToLower;
      if CheckGUID(sName) then
      begin
        sName := CamelCase(sName);
        aBuilder.AppendLine(ind(2) + 'function Get' + sName + ': IJanuaField;');
        aBuilder.AppendLine(ind(2) + 'property ' + sName + ': IJanuaField read Get' + sName + ';');
      end;
    end;

    aBuilder.AppendLine('');
    aBuilder.AppendLine(ind(1) + 'end;');
    aBuilder.AppendLine('');
    aBuilder.AppendLine('implementation');
    aBuilder.AppendLine('');
    aBuilder.AppendLine('end.');
    aBuilder.AppendLine('');
    aBuilder.AppendLine('');

    Result := aBuilder.ToString;

  finally
    aBuilder.Free;
  end;

end;

function TRecordCodeGen.GenerateImplFromDataset(const aDataset: TDataset; aUnit: TRecordUnits): string;
var
  i: integer;
  lTmp: TJanuaFieldType;
  sMyGuid: string;
  bTest: Boolean;
begin

  var
  sClass := aUnit.Conf.SingularName;

  var
  sClassType := 'T' + sClass;

  var
  sPlural := aUnit.Conf.PluralName;

  sSchema := CamelCase(aUnit.Conf.SchemaName);

  var
  sAncestorType := 'TCustom' + sClass;

  var
  aAncestorIntf := 'JOrm.' + sSchema + '.' + sPlural + '.Custom.Intf';

  var
  aAncestorImpl := 'JOrm.' + sSchema + '.' + sPlural + '.Custom.Impl';

  aUnit.IntfFile.FileName := 'JOrm.' + sSchema + '.' + sPlural + '.Intf';

  aUnit.ImplFile.FileName := 'JOrm.' + sSchema + '.' + sPlural + '.Impl';

  // Impl ..........................................................................................................
  var
  aBuilder := TStringBuilder.Create;
  try
    aBuilder.AppendLine('unit ' + aUnit.ImplFile.FileName + ';');
    aBuilder.AppendLine('');
    aBuilder.AppendLine('interface');
    aBuilder.AppendLine('');
    // Note Uses (in Intf Section) include both Custom Implementation and Final Interface
    aBuilder.AppendLine('uses Janua.Orm.Intf, Janua.Orm.Impl, Janua.Core.Types, ' + aUnit.IntfFile.FileName +
      ', ' + aAncestorImpl + ';');
    aBuilder.AppendLine('');

    aBuilder.AppendLine
      ('//------------------------------------------ Impl Record interface ----------------------------------');

    aBuilder.AppendLine('');
    aBuilder.AppendLine('type');

    // Generazione Implementazione della Classe Record .....................................................................
    aBuilder.AppendLine(ind(1) + sClassType + ' = class(' + sAncestorType + ', I' + sClass + ')');
    aBuilder.AppendLine(ind(1) + 'private');

    // aggiungo una seconda sezione public per le proprietà dei campi definiti, conforme con interfaccia
    aBuilder.AppendLine(ind(1) + 'public');
    aBuilder.AppendLine(ind(2) + 'constructor Create; override;');

    aBuilder.AppendLine('');
    aBuilder.AppendLine(ind(1) + 'end;');
    aBuilder.AppendLine('');

    // ----------------------- RecordSet Type Interface ------------------------------------------------------

    var
    sSetType := 'T' + sPlural;
    var
    sAncestorSetType := 'TCustom' + sPlural;

    // Generazione Interfaccia della Classe RecordSet ..................................................................
    aBuilder.AppendLine(ind(1) + sSetType + ' = class(' + sAncestorSetType + ', IJanuaRecordSet, I' +
      sPlural + ')');

    // aggiungo una seconda sezione private per i metodi Setter e Getter delle procedure in questione.
    aBuilder.AppendLine(ind(1) + 'protected');
    // Getter and Setter of Record ..................................................
    aBuilder.AppendLine(ind(2) + 'function Get' + sClass + ': I' + sClass + ';');

    // aggiungo una seconda sezione public per le proprietà dei campi definiti, conforme con interfaccia
    aBuilder.AppendLine(ind(1) + 'public');
    aBuilder.AppendLine(ind(2) + 'constructor Create; override;');

    // Infine inserisco la property che punta al Record di definizione del RecordSet
    // property TestNestedRecord: IJanuaTestNestedRecord read GetNestedRecord write SetNestedRecord;
    aBuilder.AppendLine(ind(2) + 'property ' + sClass + ':I' + sClass + ' read Get' + sClass + ';');

    // Termino la Classe
    aBuilder.AppendLine(ind(1) + 'end;');
    aBuilder.AppendLine('');


    // Factory Interface ...............................................................................................

    aBuilder.AppendLine(ind(1) + 'T' + sClass + 'Factory = class');
    // Record Factory
    aBuilder.AppendLine(ind(2) + 'class function CreateRecord(const aKey: string): I' + sClass +
      '; overload;');
    // RecordSet Factory Model
    // CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage):' +
    aBuilder.AppendLine
      (ind(2) + 'class function CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): I'
      + sSet + '; overload;');

    aBuilder.AppendLine(ind(2) + 'class function CreateRecordset(const aName: string): I' + sSet +
      '; overload;');

    aBuilder.AppendLine(ind(1) + 'end;');

    // Implementation Code --------------------------------------------------------------------------------------

    aBuilder.AppendLine('');
    aBuilder.AppendLine('implementation');
    aBuilder.AppendLine('');

    // ------------------------- Record Implementation ------------------------------------------------------------------

    aBuilder.AppendLine('//------------------------------------------ Impl ' + 'T' + sClass +
      ' -------------------------------');
    aBuilder.AppendLine('');
    aBuilder.AppendLine('{' + sClassType + '}');

    // Metodo Create (aName) ...........................................................................................
    aBuilder.AppendLine('');
    // Generazione Metodo Create della Classe Record ...................................................................
    // constructor TJanuaTestNestedRecord.Create; begin inherited;
    aBuilder.AppendLine(ind(1) + 'constructor ' + sClassType + '.Create;');
    aBuilder.AppendLine(ind(1) + 'begin');
    // inherited;
    aBuilder.AppendLine(ind(2) + 'inherited;');
    aBuilder.AppendLine(ind(1) + 'end;');

    aBuilder.AppendLine('');

    // RecordSet Implementation .....................................................................................

    aBuilder.AppendLine(ind(1) + '{ ' + sSetType + ' }');

    (*
      constructor TtimetableViews.Create;
      begin
      inherited;
      FRecord := TtimetableView.Create('TimetableView') // TTimetableViewFactory.CreateRecord();
      end;

      function TtimetableViews.GetTimeTableView: ItimetableView;
      begin
      Result := CurrentRecord as ItimetableView
      end;
    *)

    // Metodo Create ................................................................................................
    aBuilder.AppendLine(ind(1) + 'constructor ' + sSetType + '.Create;');
    aBuilder.AppendLine(ind(1) + 'begin');
    aBuilder.AppendLine(ind(2) + 'inherited;');
    aBuilder.AppendLine(ind(2) + 'FRecord := T' + sClass + 'Factory.CreateRecord(' +
      QuotedStr(sClass) + ');');
    aBuilder.AppendLine(ind(1) + 'end;');
    aBuilder.AppendLine('');

    // Generazione Getter & Setter del Record ..........................................................................
    aBuilder.AppendLine(ind(1) + 'function ' + sSetType + '.Get' + sClass + ': I' + sClass + ';');
    aBuilder.AppendLine(ind(1) + 'begin');
    aBuilder.AppendLine(ind(2) + 'Result := FRecord as I' + sClass + ';');
    aBuilder.AppendLine(ind(1) + 'end;');
    aBuilder.AppendLine('');

    // Factory Implementation ...................................................................................

    aBuilder.AppendLine(ind(1) + '{ T' + sClass + 'Factory }');
    aBuilder.AppendLine('');
    // Record Factory
    aBuilder.AppendLine(ind(1) + 'class function T' + sClass + 'Factory.CreateRecord(const aKey: string): I' +
      sClass + ';');
    aBuilder.AppendLine(ind(1) + 'begin');
    aBuilder.AppendLine(ind(2) + 'Result := ' + sClassType + '.Create(aKey);');
    aBuilder.AppendLine(ind(1) + 'end;');

    aBuilder.AppendLine('');
    aBuilder.AppendLine(ind(1) + 'class function T' + sClass +
      'Factory.CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): I'
      + sSet + ';');
    aBuilder.AppendLine(ind(1) + 'begin');
    aBuilder.AppendLine(ind(2) + 'Result := ' + sSetType + '.Create(aName, aLocalStorage, aRemoteStorage);');
    aBuilder.AppendLine(ind(1) + 'end;');
    aBuilder.AppendLine('');

    aBuilder.AppendLine('');
    aBuilder.AppendLine(ind(1) + 'class function T' + sClass +
      'Factory.CreateRecordset(const aName: string): I' + sSet + ';');
    aBuilder.AppendLine(ind(1) + 'begin');
    aBuilder.AppendLine(ind(2) + 'Result := ' + sSetType + '.Create(aName,  nil, nil);');
    aBuilder.AppendLine(ind(1) + 'end;');
    aBuilder.AppendLine('');

    aBuilder.AppendLine('end.');
    Result := aBuilder.ToString;

  finally
    aBuilder.Free;
  end;

end;

function TRecordCodeGen.GenerateIntfFromDataset(const aDataset: TDataset; aUnit: TRecordUnits): string;
var
  i: integer;
  lTmp: TJanuaFieldType;
  sMyGuid: string;
  bTest: Boolean;
  MyGuid0, MyGuid1: TGUID;
begin

  var
  sClass := aUnit.Conf.SingularName;

  var
  sPlural := aUnit.Conf.PluralName;

  sSchema := CamelCase(aUnit.Conf.SchemaName);

  var
  aAncestorIntf := 'JOrm.' + sSchema + '.' + sPlural + '.Custom.Intf';

  var
  aAncestorImpl := 'JOrm.' + sSchema + '.' + sPlural + '.Custom.Impl';

  aUnit.IntfFile.FileName := 'JOrm.' + sSchema + '.' + sPlural + '.Intf';

  aUnit.ImplFile.FileName := 'JOrm.' + sSchema + '.' + sPlural + '.Impl';

  var
  aBuilder := TStringBuilder.Create;
  try
    // Intf ............................................................................................................
    aBuilder.AppendLine('unit ' + aUnit.IntfFile.FileName + ';');
    aBuilder.AppendLine('');
    aBuilder.AppendLine('interface');
    aBuilder.AppendLine('');
    aBuilder.AppendLine('uses ' + aAncestorIntf + ', Janua.Orm.Intf;');
    aBuilder.AppendLine('');
    aBuilder.AppendLine('type');
    aBuilder.AppendLine('');

    // Generazione Interfaccia della Classe Record .....................................................................
    aBuilder.AppendLine(ind(1) + 'I' + sClass + ' = interface(ICustom' + sClass + ')');
    if CreateGUID(MyGuid0) <> 0 then
      aBuilder.AppendLine('Creating GUID failed!')
    else
    begin
      sMyGuid := stringreplace(GUIDToString(MyGuid0), '{', '[''{', [rfReplaceAll, rfIgnoreCase]);
      sMyGuid := stringreplace(sMyGuid, '}', '}'']', [rfReplaceAll, rfIgnoreCase]);
      aBuilder.AppendLine(ind(1) + sMyGuid);
    end;

    // Generazione Getter - Setter - Properties ........................................................................
    (*
      for i := 0 to Pred(aDataset.FieldCount) do
      begin
      var
      sName := aDataset.Fields[i].FieldName.ToLower;
      if CheckGUID(sName) then
      begin
      sName := CamelCase(sName);
      aBuilder.AppendLine(ind(2) + 'function Get' + sName + ': IJanuaField;');
      aBuilder.AppendLine(ind(2) + 'property ' + sName + ': IJanuaField read Get' + sName + ';');
      end;
      end;
    *)

    aBuilder.AppendLine(ind(1) + 'end;');
    aBuilder.AppendLine('');

    // Generazione Interfaccia della Classe RecordSet ..................................................................
    sSet := { 'Custom' + } IfThen(sPlural.IsEmpty, sClass + 's', sPlural);
    // Il Type può essere Custom quindi implementabile in un discendente lasciando al gestore automatico il Custom
    sSetType := 'T' + sSet;

    aBuilder.AppendLine(ind(1) + 'I' + sSet + ' = interface(IJanuaRecordSet)');
    if CreateGUID(MyGuid1) <> 0 then
      aBuilder.AppendLine('Creating GUID failed!')
    else
    begin
      sMyGuid := stringreplace(GUIDToString(MyGuid1), '{', '[''{', [rfReplaceAll, rfIgnoreCase]);
      sMyGuid := stringreplace(sMyGuid, '}', '}'']', [rfReplaceAll, rfIgnoreCase]);
      aBuilder.AppendLine(ind(1) + sMyGuid);
    end;

    // Generazione Getter - Setter - Properties ........................................................................
    (*
      for i := 0 to Pred(aDataset.FieldCount) do
      begin
      var
      sName := aDataset.Fields[i].FieldName.ToLower;
      if CheckGUID(sName) then
      begin
      sName := CamelCase(sName);
      aBuilder.AppendLine(ind(2) + 'function Get' + sName + ': IJanuaField;');
      aBuilder.AppendLine(ind(2) + 'property ' + sName + ': IJanuaField read Get' + sName + ';');
      end;
      end;
    *)

    // Generazione della proprietà di accesso alla classe record all'interno del record-set
    aBuilder.AppendLine(ind(2) + 'function Get' + sClass + ': I' + sClass + ';');
    aBuilder.AppendLine(ind(2) + 'property ' + sClass + ': I' + sClass + ' read Get' + sClass + ';');

    aBuilder.AppendLine('');
    aBuilder.AppendLine(ind(1) + 'end;');
    aBuilder.AppendLine('');
    aBuilder.AppendLine('implementation');
    aBuilder.AppendLine('');
    aBuilder.AppendLine('end.');
    aBuilder.AppendLine('');
    aBuilder.AppendLine('');

    Result := aBuilder.ToString;

  finally
    aBuilder.Free;
  end;

end;

function TRecordCodeGen.GetAskPlurals: Boolean;
begin
  Result := FAskPlurals
end;

function TRecordCodeGen.GetCustomImplString: string;
begin
  Result := FCustomMasterFiles.ImplFile.Text
end;

function TRecordCodeGen.GetCustomIntfString: string;
begin
  Result := FCustomMasterFiles.IntfFile.Text
end;

function TRecordCodeGen.GetCustomMasterFiles: TRecordUnits;
begin
  Result := FCustomMasterFiles
end;

function TRecordCodeGen.GetDataset: TDataset;
begin
  Result := FDataset;
end;

function TRecordCodeGen.GetDetailGens: IDictionary<string, IRecordCodeGen>;
begin
{$IFDEF DEBUG}
  Guard.CheckNotNull(FDetailGens, 'FDetailGens');
{$ENDIF}
  Result := FDetailGens;
end;

function TRecordCodeGen.GetDetails(Index: string): IRecordCodeGen;
begin
{$IFDEF DEBUG}
  Guard.CheckNotNull(FDetailGens, 'FDetailGens');
{$ENDIF}
  if not FDetailGens.TryGetValue(Index, Result) then
    raise Exception.Create('TRecordCodeGen.GetDetails(' + Index + ') not found');
end;

function TRecordCodeGen.GetImplString: string;
begin
  Result := FCustomMasterFiles.ImplFile.Text
end;

function TRecordCodeGen.GetIntfString: string;
begin
  Result := FCustomMasterFiles.IntfFile.Text;
end;

function TRecordCodeGen.GetIsMaster: Boolean;
begin

end;

function TRecordCodeGen.GetMasterClassConf: TRecordUnitConf;
begin
  Result := FMasterClassConf;
end;

function TRecordCodeGen.GetMasterFiles: TRecordUnits;
begin
  Result := FMasterFiles
end;

function TRecordCodeGen.GetMasterRecord: IJanuaRecord;
begin
  Result := FMasterRecord
end;

function TRecordCodeGen.GetSchemaName: string;
begin
  Result := FMasterClassConf.DatasetName
end;

function TRecordCodeGen.GetTableName: string;
begin
  Result := FMasterClassConf.DatasetName
end;

function TRecordCodeGen.ind(l: integer): string;
begin
  Result := Janua.Core.Functions.Indent(2, l)
end;

procedure TRecordCodeGen.SetAskPlurals(const Value: Boolean);
begin
  FAskPlurals := Value;
end;

procedure TRecordCodeGen.SetCustomImplString(const Value: string);
begin
  FCustomImplString := Value;
end;

procedure TRecordCodeGen.SetCustomIntfString(const Value: string);
begin
  FCustomIntfString := Value;
end;

procedure TRecordCodeGen.SetDataset(const Value: TDataset);
begin
  FDataset := Value;
end;

procedure TRecordCodeGen.SetImplString(const Value: string);
begin
  FImplString := Value;
end;

procedure TRecordCodeGen.SetIntfString(const Value: string);
begin
  FIntfString := Value;
end;

procedure TRecordCodeGen.SetIsMaster(const Value: Boolean);
begin
  FIsMaster := Value;
end;

procedure TRecordCodeGen.SetMasterRecord(const Value: IJanuaRecord);
begin
  FMasterRecord := Value
end;

procedure TRecordCodeGen.SetSchemaName(const aValue: string);
begin
  FMasterClassConf.SchemaName := aValue
end;

procedure TRecordCodeGen.SetTableName(const aValue: string);
begin
  FMasterClassConf.DatasetName := aValue
end;

end.
