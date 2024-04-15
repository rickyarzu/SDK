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
    sKey, sClass, sPlural, sClassType, sSet, sSetType, sSchema, sField: string;
    FDataset: TDataset;
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
  strict protected
    function GenerateCustomIntfFromDataset(const aDataset: TDataset; aUnit: TRecordUnits): string;
    function GenerateCustomImplFromDataset(const aDataset: TDataset; aUnit: TRecordUnits): string;
    function GenerateIntfFromDataset(const aDataset: TDataset; aUnit: TRecordUnits): string;
    function GenerateImplFromDataset(const aDataset: TDataset; aUnit: TRecordUnits): string;
  public
    procedure Generate;
    procedure AddDetailDataset(const aDataset: TDataset; aSingular, aPlural: string);
  public
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
  End;

implementation

uses
  // System
  System.Math,
  // Janua Framework
  Janua.Orm.Impl, Janua.Core.Functions;

function ind(l: integer): string;
begin
  Result := Janua.Core.Functions.Indent(2, l)
end;

function CheckGUID(const aStr: string): Boolean;
begin
  Result := not((aStr.ToLower = 'jguid') or (aStr.ToLower = 'deleted'))
end;

{ TRecordCodeGen }

procedure TRecordCodeGen.AddDetailDataset(const aDataset: TDataset; aSingular, aPlural: string);
begin

end;

constructor TRecordCodeGen.Create;
begin
  inherited;
  FMasterRecord := TJanuaRecord.Create;
  FMasterClassConf := TRecordUnitConf.Create;
  FCustomMasterFiles := TRecordUnits.Create;
  FMasterFiles := TRecordUnits.Create;
end;

procedure TRecordCodeGen.Generate;
begin
  FCustomMasterFiles.IntfFile.Text := GenerateCustomIntfFromDataset(FDataset, FCustomMasterFiles);
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
    aBuilder.Append('unit ' + aUnit.ImplFile.FileName + ';');
    aBuilder.Append('');
    aBuilder.Append('interface');
    aBuilder.Append('');
    aBuilder.Append('uses Janua.Orm.Intf, Janua.Orm.Impl, Janua.Core.Types, ' +
      aUnit.IntfFile.FileName + ';');
    aBuilder.Append('');

    aBuilder.Append
      ('//------------------------------------------ Impl object interface ----------------------------------');

    aBuilder.Append('');
    aBuilder.Append('type');

    sClassType := 'TCustom' + sClass;

    // Generazione Implementazione della Classe Record .....................................................................
    aBuilder.Append(ind(1) + sClassType + ' = class(TJanuaRecord, I' + sClass + ')');
    aBuilder.Append(ind(1) + 'private');

    for i := 0 to Pred(aDataset.FieldCount) do
    begin
      if CheckGUID(aDataset.Fields[i].FieldName) then
      begin
        var
        sName := CamelCase(aDataset.Fields[i].FieldName);
        // F<FieldName> is the index of the field in the field list
        aBuilder.Append(ind(2) + 'F' + sName + ': IJanuaField;');
        { 2020-08-15 Eliminato il campo 'Index' }
        // aBuilder.Append(ind(2) + 'F' + sName + 'Index : Integer;');
      end;
    end;

    // aggiungo una seconda sezione private per i metodi Setter e Getter delle procedure in questione.
    aBuilder.Append(ind(1) + 'private');
    for i := 0 to Pred(aDataset.FieldCount) do
    begin
      if CheckGUID(aDataset.Fields[i].FieldName) then
      begin
        var
        sName := CamelCase(aDataset.Fields[i].FieldName);
        aBuilder.Append(ind(2) + 'function Get' + sName + ': IJanuaField;');
        aBuilder.Append(ind(2) + 'procedure Set' + sName + '(const Value: IJanuaField);');
      end;
    end;

    // aggiungo una seconda sezione public per le proprietà dei campi definiti, conforme con interfaccia
    aBuilder.Append(ind(1) + 'public');
    aBuilder.Append(ind(2) + 'constructor Create; override;');
    // aBuilder.Append(ind(2) + 'Constructor Create(aName: string); overload; override;');

    for i := 0 to Pred(aDataset.FieldCount) do
    begin
      if CheckGUID(aDataset.Fields[i].FieldName) then
      begin
        var
        sName := CamelCase(aDataset.Fields[i].FieldName);
        aBuilder.Append(ind(2) + 'property ' + sName + ': IJanuaField read Get' + sName + ' write Set' +
          sName + ';');
      end;
    end;

    aBuilder.Append('');
    aBuilder.Append(ind(1) + 'end;');
    aBuilder.Append('');

    // ----------------------- RecordSet Type Interface ------------------------------------------------------

    // Generazione Interfaccia della Classe RecordSet ..................................................................
    aBuilder.Append(ind(1) + sSetType + ' = class(TJanuaRecordSet, IJanuaRecordSet, I' + sSet + ')');
    // aBuilder.Append(ind(1) + 'private');

    // aggiungo una seconda sezione private per i metodi Setter e Getter delle procedure in questione.
    aBuilder.Append(ind(1) + 'private');
    // Getters and Setters of Field
    for i := 0 to Pred(aDataset.FieldCount) do
    begin
      if CheckGUID(aDataset.Fields[i].FieldName) then
      begin
        var
        sName := CamelCase(aDataset.Fields[i].FieldName);
        aBuilder.Append(ind(2) + 'function Get' + sName + ': IJanuaField;');
        aBuilder.Append(ind(2) + 'procedure Set' + sName + '(const Value: IJanuaField);');
      end;
    end;
    // Getter and Setter of Record ..................................................
    aBuilder.Append(ind(2) + 'function Get' + sClass + ': I' + sClass + ';');
    aBuilder.Append(ind(2) + 'procedure Set' + sClass + '(const Value: I' + sClass + ');');

    // aggiungo una seconda sezione public per le proprietà dei campi definiti, conforme con interfaccia
    aBuilder.Append(ind(1) + 'public');
    aBuilder.Append(ind(2) + 'constructor Create; override;');

    for i := 0 to Pred(aDataset.FieldCount) do
    begin
      if CheckGUID(aDataset.Fields[i].FieldName) then
      begin
        var
        sName := CamelCase(aDataset.Fields[i].FieldName);
        aBuilder.Append(ind(2) + 'property ' + sName + ': IJanuaField read Get' + sName + ' write Set' +
          sName + ';');
      end;
    end;

    // Infine inserisco la property che punta al Record di definizione del RecordSet
    // property TestNestedRecord: IJanuaTestNestedRecord read GetNestedRecord write SetNestedRecord;
    aBuilder.Append(ind(2) + 'property ' + sClass + ':I' + sClass + ' read Get' + sClass + ' write Set' +
      sClass + ';');

    // Termino la Classe
    aBuilder.Append(ind(1) + 'end;');
    aBuilder.Append('');


    // Factory Interface ...............................................................................................

    aBuilder.Append(ind(1) + 'T' + sClass + 'Factory = class');
    // Record Factory
    aBuilder.Append(ind(2) + 'class function CreateRecord(const aKey: string): I' + sClass + '; overload;');
    // RecordSet Factory Model
    // CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage):' +
    aBuilder.Append(ind(2) +
      'class function CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): I'
      + sSet + '; overload;');
    aBuilder.Append(ind(1) + 'end;');

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
  sPlural := IfThen(aUnit.Conf.PluralName.IsEmpty, CamelCase(aUnit.Conf.DatasetName),
    CamelCase(aUnit.Conf.PluralName));

  sSchema := CamelCase(aUnit.Conf.SchemaName);

  aUnit.IntfFile.FileName := 'JOrm.' + sSchema + '.' + sPlural + '.Custom.Intf';

  aUnit.ImplFile.FileName := 'JOrm.' + sSchema + '.' + sPlural + '.Custom.Impl';

  var
  aBuilder := TStringBuilder.Create;
  try
    // Intf ............................................................................................................
    aBuilder.Append('unit ' + aUnit.IntfFile.FileName + ';');
    aBuilder.Append('');
    aBuilder.Append('interface');
    aBuilder.Append('');
    aBuilder.Append('uses Janua.Orm.Intf;');
    aBuilder.Append('');
    aBuilder.Append('type');
    aBuilder.Append('');

    // Generazione Interfaccia della Classe Record .....................................................................
    aBuilder.Append(ind(1) + 'I' + sClass + ' = interface(IJanuaRecord)');
    if CreateGUID(MyGuid0) <> 0 then
      aBuilder.Append('Creating GUID failed!')
    else
    begin
      var
      sMyGuid := stringreplace(GUIDToString(MyGuid0), '{', '[''{', [rfReplaceAll, rfIgnoreCase]);
      sMyGuid := stringreplace(sMyGuid, '}', '}'']', [rfReplaceAll, rfIgnoreCase]);
      aBuilder.Append(ind(1) + sMyGuid);
    end;

    // Generazione Getter - Setter - Properties ........................................................................
    for i := 0 to Pred(aDataset.FieldCount) do
    begin
      if CheckGUID(aDataset.Fields[i].FieldName) then
      begin
        var
        sName := CamelCase(aDataset.Fields[i].FieldName);
        aBuilder.Append(ind(2) + 'function Get' + sName + ': IJanuaField;');
        aBuilder.Append(ind(2) + 'property ' + sName + ': IJanuaField read Get' + sName + ';');
      end;
    end;

    aBuilder.Append(ind(1) + 'end;');
    aBuilder.Append('');

    // Generazione Interfaccia della Classe RecordSet ..................................................................
    sSet := 'Custom' + IfThen(sPlural.IsEmpty, sClass + 's', sPlural);
    // Il Type può essere Custom quindi implementabile in un discendente lasciando al gestore automatico il Custom
    sSetType := 'TCustom' + sSet;

    aBuilder.Append(ind(1) + 'I' + sSet + ' = interface(IJanuaRecordSet)');
    if CreateGUID(MyGuid1) <> 0 then
      aBuilder.Append('Creating GUID failed!')
    else
    begin
      var
      sMyGuid := stringreplace(GUIDToString(MyGuid1), '{', '[''{', [rfReplaceAll, rfIgnoreCase]);
      sMyGuid := stringreplace(sMyGuid, '}', '}'']', [rfReplaceAll, rfIgnoreCase]);
      aBuilder.Append(ind(1) + sMyGuid);
    end;

    // Generazione Getter - Setter - Properties ........................................................................
    for i := 0 to Pred(aDataset.FieldCount) do
    begin
      if CheckGUID(aDataset.Fields[i].FieldName) then
      begin
        var
        sName := CamelCase(aDataset.Fields[i].FieldName);
        aBuilder.Append(ind(2) + 'function Get' + sName + ': IJanuaField;');
        aBuilder.Append(ind(2) + 'property ' + sName + ': IJanuaField read Get' + sName + ';');
      end;
    end;

    // Generazione della proprietà di accesso alla classe record all'interno del record-set
    aBuilder.Append(ind(2) + 'function Get' + sClass + ': I' + sClass + ';');
    aBuilder.Append(ind(2) + 'property ' + sClass + ':I' + sClass + ';');

    aBuilder.Append('');
    aBuilder.Append(ind(1) + 'end;');
    aBuilder.Append('');
    aBuilder.Append('implementation');
    aBuilder.Append('');
    aBuilder.Append('end.');
    aBuilder.Append('');
    aBuilder.Append('');

    Result := aBuilder.ToString;

  finally
    aBuilder.Free;
  end;

end;

function TRecordCodeGen.GenerateImplFromDataset(const aDataset: TDataset; aUnit: TRecordUnits): string;
begin

end;

function TRecordCodeGen.GenerateIntfFromDataset(const aDataset: TDataset; aUnit: TRecordUnits): string;
begin

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

function TRecordCodeGen.GetImplString: string;
begin
  Result := FCustomMasterFiles.ImplFile.Text
end;

function TRecordCodeGen.GetIntfString: string;
begin
  Result := FCustomMasterFiles.IntfFile.Text;
end;

function TRecordCodeGen.GetMasterClassConf: TRecordUnitConf;
begin
  Result := FMasterClassConf;
end;

function TRecordCodeGen.GetMasterFiles: TRecordUnits;
begin
  Result := FCustomMasterFiles
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
