unit Janua.Orm.Generator;

interface

uses
  // System
  Janua.Core.Types, Janua.Orm.Intf, Janua.Orm.Types,
  // DB, RTL, .....
  Data.DB;

/// <summary>
/// Funzione che genera il codice di un recordset partendo da un template IJanuaRecord e IJanuaRecordSet.
/// </summary>
/// <param name="aIntf">Out Text for Interface</param>
/// <param name="aImpl">Out Text for Implementation</param>
/// <param name="aSCustom">Out Text set only if Custom parent class is requested</param>
/// <param name="aDataset">TDataset to Extract Metadata</param>
/// <param name="aName">Name for Dataset</param>
/// <param name="aSchema">Schema for the Dataset</param>
/// <param name="aAbbr">Abbreviation for Dataset (it must be unique) </param>
/// <param name="aFileIntf"> Out Optional file name and location for Interface</param>
/// <param name="aFileImpl"> Out Abbreviation for Dataset (it must be unique) </param>
/// <param name="Si"> Single Name for Record Class (if empty uses Schema+Dataset </param>
/// <param name="Pl"> Plural Name for RecordSet Class (if empty uses Schema+Dataset + 's') </param>
/// <param name="aCustom">Bool True if Custom parent class is requested</param>
function GenerateRecordSet(out aIntf, aImpl, aSCustom: string; aDataset: TDataset;
  const aName, aSchema, aAbbr: string; out aFileIntf, aFileImpl: string; Si, Pl: string;
  const aCustom: Boolean = True): string;

function GenerateServer(out aIntf, aImpl, aCustom: string; const aName, aSchema, aAbbr: string;
  Si, Pl, St: string): string;


implementation

uses
  // System
  System.SysUtils, System.Math, System.StrUtils,
  // Janua Framework
  Janua.Core.Functions, System.Classes;

function GenerateServer(out aIntf, aImpl, aCustom: string; const aName, aSchema, aAbbr: string;
  Si, Pl, St: string): string;
var
  i: integer;
  sClass, sSchema, sSet: string;
  aList: TStringList;
  aFileIntf, aFileImpl: string;
begin
  if Si <> '' then
    sClass := Si
  else
    sClass := CamelCase(aName);

  sSet := IfThen(Pl = '', sClass + 's', Pl);

  sSchema := CamelCase(aSchema);

  aFileIntf := 'JOrm.' + sSchema + '.' + sClass + '.Intf';
  aFileImpl := 'JOrm.' + sSchema + '.' + sClass + '.Impl';

  aList := TStringList.Create;
  try
    aList.Add('uses ' + aFileIntf + ';');
    aList.Add('');
    aList.Add('interface');
    aList.Add('');
    { function GetMatchDayStorage: IJanuaRecordSetStorage;
      procedure SetNextMatchDayStorage(const Value: IJanuaRecordSetStorage);
      property NextMatchDayStorage: IJanuaRecordSetStorage read GetNextMatchDayStorage write SetNextMatchDayStorage; }
    aList.Add('// Storage');
    aList.Add('function Get' + sSet + 'Storage: IJanuaRecordSetStorage;');
    aList.Add('procedure Set' + sSet + 'Storage(const Value: IJanuaRecordSetStorage);');
    aList.Add('property ' + sSet + 'Storage: IJanuaRecordSetStorage read Get' + sSet + 'Storage write Set' +
      sSet + 'Storage;');
    aList.Add('');

    { // DB Storage }
    aList.Add('function Getjds' + sSet + ': IJanuaDBDataset;');
    aList.Add('procedure Setjds' + sSet + '(Value: IJanuaDBDataset);');
    aList.Add('property jds' + sSet + ': IJanuaDBDataset read Getjds' + sSet + ' write Setjds' + sSet + ';');
    aList.Add('');

    { // Server }
    aList.Add('');
    aList.Add('T' + aSchema + 'Sever');
    aList.Add('strict private');
    aList.Add('{Server_Recordset_Storage}');
    aList.Add('FLocalAnagraphsStorage: IJanuaRecordSetStorage; // Questa è una classe di Database.');
    aList.Add(
      'FRemoteAnagraphsStorage: IJanuaRecordSetStorage; // remote è usualmente una classe REST Storage');
    aList.Add('strict protected');
    aList.Add('function Get' + sSet + ': I' + sSet + ';');
    aList.Add('procedure Set' + sSet + '(const Value: I' + sSet + ');');
    aList.Add('property ' + sSet + ': I' + sSet + ' read Get' + sSet + ' write Set' + sSet + ';');
    aList.Add('function RestGet' + sSet + '(const aParams: IJanuaParams): IJanuaFuncResult;');

    aIntf := aList.Text;
  finally
    aList.Free;
  end;

  aList := TStringList.Create;
  try
    aList.Add('uses ' + aFileIntf + ', ' + aFileImpl + ';');
    aList.Add('');
    aList.Add('interface');
    aList.Add('');

    aList.Add('//Storage Dataset');
    aList.Add('Fjds' + sSet + ': IJanuaDBDataset;');
    aList.Add('');
    aList.Add('function Getjds' + sSet + ': IJanuaDBDataset;');
    aList.Add('procedure Setjds' + sSet + '(Value: IJanuaDBDataset);');
    aList.Add('property jds' + sSet + ': IJanuaDBDataset read Getjds' + sSet + ' write Setjds' + sSet + ';');
    aList.Add('');
    aList.Add('//Private Field');
    // FNextMatchDayStorage: IJanuaRecordSetStorage;
    aList.Add('F' + sSet + 'Storage: IJanuaRecordSetStorage;');
    aList.Add('//Storage');
    aList.Add('function Get' + sSet + 'Storage: IJanuaRecordSetStorage;');
    aList.Add('procedure Set' + sSet + 'Storage(const Value: IJanuaRecordSetStorage);');
    aList.Add('property ' + sSet + 'Storage: IJanuaRecordSetStorage read Get' + sSet + 'Storage write Set' +
      sSet + 'Storage;');
    aList.Add('');

    aList.Add('//Server');
    aList.Add('function Get' + sSet + ': I' + sSet + ';');
    aList.Add('procedure Set' + sSet + '(const Value: I' + sSet + ');');
    aList.Add('function RestGet' + sSet + '(const aParams: IJanuaParams): IJanuaFuncResult;');

    aList.Add('implementation');
    aList.Add('');

    St := IfThen(St = '', St, 'TStorage');

    { // Implementation

      procedure TJanuaCustomFootballStorage.SetjdsNextMatchDay(Value: IJanuaDBDataset);
      begin
      FjdsNextMatchDay := Value;
      end;

      function TJanuaCustomFootballStorage.GetjdsNextMatchDay: IJanuaDBDataset;
      begin
      Result := self.FjdsNextMatchDay
      end; }

    aList.Add('{' + St + '}');
    aList.Add('function ' + St + '.Getjds' + sSet + ': IJanuaDBDataset;');
    aList.Add('begin');
    aList.Add('');
    aList.Add('end;');
    aList.Add('');
    aList.Add('procedure ' + St + '.Setjds' + sSet + '(Value: IJanuaDBDataset);');
    aList.Add('begin');
    aList.Add('Fjds' + sSet + ' := Value;');
    aList.Add('end;');

    { function TJanuaCustomFootballStorage.GetNextMatchDayStorage: IJanuaRecordSetStorage;
      begin
      Result := self.FNextMatchDayStorage
      end;

      procedure TJanuaCustomFootballStorage.SetNextMatchDayStorage(const Value: IJanuaRecordSetStorage);
      begin
      FNextMatchDayStorage := Value;
      end; }

    aList.Add('');
    aList.Add('procedure ' + St + '.Get' + sSet + 'Storage: IJanuaRecordSetStorage;');
    aList.Add('begin');
    aList.Add('Result := self.F' + sSet + 'Storage');
    aList.Add('end;');
    aList.Add('');
    aList.Add('procedure ' + St + '.Set' + sSet + 'Storage(const Value: IJanuaRecordSetStorage);');
    aList.Add('begin');
    aList.Add('F' + sSet + ' := Value;');
    aList.Add('end;');

    // AfterCreateDataset
    // FNextMatchDayStorage := TJanuaClassDatasetStorage.Create('nextmatchday', TMatchDays, [jdsNextMatchDay]);
    aList.Add('');
    aList.Add('procedure ' + St + '.AfterCreateDataset;');
    aList.Add('begin');
    aList.Add('F' + sSet + ' := TJanuaCustomDatasetStorage.Create(' + sSet.ToLower + ', I' + sSet + ', [jds' +
      sSet + ']);');
    aList.Add('end;');

    aList.Add('');
    { FAnagraphs := TAnagraphFactory.CreateRecordset('anagraphs', 'anagraphs', FLocalAnagraphsStorage,
      FRemoteAnagraphsStorage) as IAnagraphs;
      self.AddRecordSet(self.FAnagraphs); }

    aImpl := aList.Text;
  finally
    aList.Free;
  end;

end;

function GenerateRecordSet(out aIntf, aImpl, aSCustom: string; aDataset: TDataset;
  const aName, aSchema, aAbbr: string; out aFileIntf, aFileImpl: string; Si, Pl: string;
  const aCustom: Boolean): string;

  function ind(l: integer): string;
  begin
    Result := Janua.Core.Functions.Indent(2, l)
  end;

  function CheckGUID(const aStr: string): Boolean;
  begin
    Result := not((aStr.ToLower = aAbbr.ToLower + '_jguid') or (aStr.ToLower = aAbbr.ToLower + '_deleted'))
  end;

var
  i: integer;
  sName, sKey, sClass, sClassType, sSet, sSetType, sSchema, sField: string;
  lTmp: TJanuaFieldType;
  aList: TStringList;
  MyGuid0, MyGuid1: TGUID;
  sMyGuid: string;
  bTest: Boolean;
begin
  if Si <> '' then
    sClass := Si
  else
    sClass := CamelCase(aName);

  sSchema := GetName(aSchema);

  aFileIntf := 'JOrm.' + sSchema + '.' + sClass + '.Intf';
  aFileImpl := 'JOrm.' + sSchema + '.' + sClass + IfThen(aCustom, '.Custom', '') + '.Impl';

  aList := TStringList.Create;
  try
    // Intf ............................................................................................................
    aList.Add('unit ' + aFileIntf + ';');
    aList.Add('');
    aList.Add('interface');
    aList.Add('');
    aList.Add('uses Janua.Orm.Intf;');
    aList.Add('');
    aList.Add('type');
    aList.Add('');
    // after  := stringreplace(before, ' a ', ' THE ',
    // [rfReplaceAll, rfIgnoreCase]);
    // Generazione Interfaccia della Classe Record .....................................................................
    aList.Add(ind(1) + 'I' + sClass + ' = interface(IJanuaRecord)');
    if CreateGUID(MyGuid0) <> 0 then
      aList.Add('Creating GUID failed!')
    else
    begin
      sMyGuid := stringreplace(GUIDToString(MyGuid0), '{', '[''{', [rfReplaceAll, rfIgnoreCase]);
      sMyGuid := stringreplace(sMyGuid, '}', '}'']', [rfReplaceAll, rfIgnoreCase]);
      aList.Add(ind(1) + sMyGuid);
    end;

    // Generazione Getter - Setter - Properties ........................................................................
    for i := 0 to Pred(aDataset.FieldCount) do
    begin
      if CheckGUID(aDataset.Fields[i].FieldName) then
      begin
        sName := GetName(aDataset.Fields[i].FieldName);
        aList.Add(ind(2) + 'function Get' + sName + ': IJanuaField;');
        aList.Add(ind(2) + 'procedure Set' + sName + '(const Value: IJanuaField);');
        aList.Add(ind(2) + 'property ' + sName + ': IJanuaField read Get' + sName + ' write Set' +
          sName + ';');
      end;
    end;

    aList.Add(ind(1) + 'end;');
    aList.Add('');
    // Generazione Interfaccia della Classe RecordSet ..................................................................
    sSet := IfThen(Pl = '', sClass + 's', Pl);
    // Il Type può essere Custom quindi implementabile in un discendente lasciando al gestore automatico il Custom
    sSetType := 'T' + IfThen(aCustom, 'Custom', '') + sSet;

    aList.Add(ind(1) + 'I' + sSet + ' = interface(IJanuaRecordSet)');
    if CreateGUID(MyGuid1) <> 0 then
      aList.Add('Creating GUID failed!')
    else
    begin
      sMyGuid := stringreplace(GUIDToString(MyGuid1), '{', '[''{', [rfReplaceAll, rfIgnoreCase]);
      sMyGuid := stringreplace(sMyGuid, '}', '}'']', [rfReplaceAll, rfIgnoreCase]);
      aList.Add(ind(1) + sMyGuid);
    end;

    // Generazione Getter - Setter - Properties ........................................................................
    for i := 0 to Pred(aDataset.FieldCount) do
    begin
      if CheckGUID(aDataset.Fields[i].FieldName) then
      begin
        sName := GetName(aDataset.Fields[i].FieldName);
        aList.Add(ind(2) + 'function Get' + sName + ': IJanuaField;');
        aList.Add(ind(2) + 'procedure Set' + sName + '(const Value: IJanuaField);');
        aList.Add(ind(2) + 'property ' + sName + ': IJanuaField read Get' + sName + ' write Set' +
          sName + ';');
      end;
    end;

    // Generazione della proprietà di accesso alla classe record all'interno del record-set
    aList.Add(ind(2) + 'function Get' + sClass + ': I' + sClass + ';');
    aList.Add(ind(2) + 'procedure Set' + sClass + '(const Value: I' + sClass + ');');
    aList.Add(ind(2) + 'property ' + sClass + ':I' + sClass + ' read Get' + sClass + ' write Set' +
      sClass + ';');

    aList.Add('');
    aList.Add(ind(1) + 'end;');
    aList.Add('');
    aList.Add('implementation');
    aList.Add('');
    aList.Add('end.');
    aList.Add('');
    aList.Add('');

    aIntf := aList.Text;
    aList.Clear;

    // Impl ..........................................................................................................

    aList.Add('unit ' + aFileImpl + ';');
    aList.Add('');
    aList.Add('interface');
    aList.Add('');
    aList.Add('uses Janua.Orm.Intf, Janua.Orm.Impl, Janua.Core.Types, ' + aFileIntf + ';');
    aList.Add('');

    aList.Add(
      '//------------------------------------------ Impl object interface ----------------------------------');

    aList.Add('');
    aList.Add('type');

    sClassType := 'T' + IfThen(aCustom, 'Custom', '') + sClass;

    // Generazione Implementazione della Classe Record .....................................................................
    aList.Add(ind(1) + sClassType + ' = class(TJanuaRecord, I' + sClass + ')');
    aList.Add(ind(1) + 'private');

    for i := 0 to Pred(aDataset.FieldCount) do
    begin
      if CheckGUID(aDataset.Fields[i].FieldName) then
      begin
        sName := GetName(aDataset.Fields[i].FieldName);
        // F<FieldName> is the index of the field in the field list
        aList.Add(ind(2) + 'F' + sName + ': IJanuaField;');
        { 2020-08-15 Eliminato il campo 'Index' }
        // aList.Add(ind(2) + 'F' + sName + 'Index : Integer;');
      end;
    end;

    // aggiungo una seconda sezione private per i metodi Setter e Getter delle procedure in questione.
    aList.Add(ind(1) + 'private');
    for i := 0 to Pred(aDataset.FieldCount) do
    begin
      if CheckGUID(aDataset.Fields[i].FieldName) then
      begin
        sName := GetName(aDataset.Fields[i].FieldName);
        aList.Add(ind(2) + 'function Get' + sName + ': IJanuaField;');
        aList.Add(ind(2) + 'procedure Set' + sName + '(const Value: IJanuaField);');
      end;
    end;

    // aggiungo una seconda sezione public per le proprietà dei campi definiti, conforme con interfaccia
    aList.Add(ind(1) + 'public');
    aList.Add(ind(2) + 'constructor Create; override;');
    // aList.Add(ind(2) + 'Constructor Create(aName: string); overload; override;');

    for i := 0 to Pred(aDataset.FieldCount) do
    begin
      if CheckGUID(aDataset.Fields[i].FieldName) then
      begin
        sName := GetName(aDataset.Fields[i].FieldName);
        aList.Add(ind(2) + 'property ' + sName + ': IJanuaField read Get' + sName + ' write Set' +
          sName + ';');
      end;
    end;

    aList.Add('');
    aList.Add(ind(1) + 'end;');
    aList.Add('');

    // Generazione Interfaccia della Classe RecordSet ..................................................................
    aList.Add(ind(1) + sSetType + ' = class(TJanuaRecordSet, IJanuaRecordSet, I' + sSet + ')');
    // aList.Add(ind(1) + 'private');

    // Deprecato
    {
      for i := 0 to Pred(aDataset.FieldCount) do
      begin
      sName := GetName(aDataset.Fields[i].FieldName);
      // F<FieldName> is the index of the field in the field list
      aList.Add(ind(2) + 'F' + sName + ': Integer;');
      end;
    }

    // aggiungo una seconda sezione private per i metodi Setter e Getter delle procedure in questione.
    aList.Add(ind(1) + 'private');
    // Getters and Setters of Field
    for i := 0 to Pred(aDataset.FieldCount) do
    begin
      if CheckGUID(aDataset.Fields[i].FieldName) then
      begin
        sName := GetName(aDataset.Fields[i].FieldName);
        aList.Add(ind(2) + 'function Get' + sName + ': IJanuaField;');
        aList.Add(ind(2) + 'procedure Set' + sName + '(const Value: IJanuaField);');
      end;
    end;
    // Getter and Setter of Record ..................................................
    aList.Add(ind(2) + 'function Get' + sClass + ': I' + sClass + ';');
    aList.Add(ind(2) + 'procedure Set' + sClass + '(const Value: I' + sClass + ');');

    // aggiungo una seconda sezione public per le proprietà dei campi definiti, conforme con interfaccia
    aList.Add(ind(1) + 'public');
    aList.Add(ind(2) + 'constructor Create; override;');
    // aList.Add(ind(2) + 'Constructor Create(aName, aTableName: string); overload;');
    // aList.Add(ind(2) + 'Constructor Create(const aName: string; aRecord: IJanuaRecord); override;');

    for i := 0 to Pred(aDataset.FieldCount) do
    begin
      if CheckGUID(aDataset.Fields[i].FieldName) then
      begin
        sName := GetName(aDataset.Fields[i].FieldName);
        aList.Add(ind(2) + 'property ' + sName + ': IJanuaField read Get' + sName + ' write Set' +
          sName + ';');
      end;
    end;

    // Infine inserisco la property che punta al Record di definizione del RecordSet
    // property TestNestedRecord: IJanuaTestNestedRecord read GetNestedRecord write SetNestedRecord;
    aList.Add(ind(2) + 'property ' + sClass + ':I' + sClass + ' read Get' + sClass + ' write Set' +
      sClass + ';');

    // Termino la Classe
    aList.Add(ind(1) + 'end;');
    aList.Add('');


    // Factory Interface ...............................................................................................

    aList.Add(ind(1) + 'T' + sClass + 'Factory = class');
    // Record Factory
    aList.Add(ind(2) + 'class function CreateRecord(const aKey: string): I' + sClass + '; overload;');
    // RecordSet Factory Model
    // CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage):' +
    aList.Add(ind(2) +
      'class function CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): I'
      + sSet + '; overload;');
    aList.Add(ind(1) + 'end;');

    // Implementation Code --------------------------------------------------------------------------------------

    aList.Add('');
    aList.Add('implementation');
    aList.Add('');

    // ------------------------- Record Implementation ------------------------------------------------------------------

    aList.Add('//------------------------------------------ Impl ' + 'T' + sClass +
      ' -------------------------------');
    aList.Add('');
    aList.Add('{' + sClassType + '}');

    // Metodo Create (aName) ...........................................................................................
    (*
      aList.Add(ind(1) + 'constructor ' + 'T' + sClass + '.Create(aName: string);');
      aList.Add(ind(1) + 'begin');
      aList.Add(ind(2) + 'Create;');
      aList.Add(ind(2) + 'self.Name := ''' + aName + ''';');
      // aList.Add(ind(2) + 'self.Name := aName;');
      aList.Add(ind(2) + 'self.FPrefix := ''' + aAbbr + ''';');
      aList.Add(ind(1) + 'end;');
    *)
    aList.Add('');
    // Generazione Metodo Create della Classe Record ...................................................................
    // constructor TJanuaTestNestedRecord.Create; begin inherited;
    aList.Add(ind(1) + 'constructor ' + sClassType + '.Create;');
    aList.Add(ind(1) + 'begin');
    // inherited;
    aList.Add(ind(2) + 'inherited;');
    aList.Add(ind(2) + 'FPrefix := ''' + aAbbr + ''';');
    // FInteger := self.AddField(TJanuaOrmFactory.CreateIntegerField('int', 'IntField'));
    // aList.Add('');
    // Create Fields List As Interface Implementations .......................................................
    for i := 0 to Pred(aDataset.FieldCount) do
    begin
      if CheckGUID(aDataset.Fields[i].FieldName) then
      begin
        sName := GetName(aDataset.Fields[i].FieldName);
        sKey := aDataset.Fields[i].FieldName.ToLower;
        bTest := True;
        sField := QuotedStr(sKey) + ', ' + QuotedStr(sKey);

        // FDbSchemaId := AddCreateField(TJanuaFieldType.jptInteger, 'db_schema_id', 'db_schema_id');
        case aDataset.Fields[i].DataType of
          TFieldType.ftFloat:
            begin
              aList.Add(ind(2) + 'F' + sName + ':= AddCreateField(TJanuaFieldType.jptFloat, ' +
                sField + ');');
            end;
          TFieldType.ftString, TFieldType.ftWideString:
            begin
              aList.Add(ind(2) + 'F' + sName + ':= AddCreateField(TJanuaFieldType.jptString, ' +
                sField + ');');
              // FString := self.AddField(TJanuaOrmFactory.CreateStringField('str', 'StringField'));
            end;
          // ftWideMemo { 20 jptText }
          TFieldType.ftWideMemo, TFieldType.ftMemo:
            begin
              aList.Add(ind(2) + 'F' + sName + ':= AddCreateField(TJanuaFieldType.jptText, ' + sField + ');');
              // FString := self.AddField(TJanuaOrmFactory.CreateStringField('str', 'StringField'));
            end;
          TFieldType.ftInteger:
            begin
              aList.Add(ind(2) + 'F' + sName + ':= AddCreateField(TJanuaFieldType.jptInteger, ' +
                sField + ');');
              // FInteger := self.AddField(TJanuaOrmFactory.CreateIntegerField('int', 'IntField'));
            end;
          TFieldType.ftBoolean:
            begin
              aList.Add(ind(2) + 'F' + sName + ':= AddCreateField(TJanuaFieldType.jptBoolean, ' +
                sField + ');');
              // FBoolean := self.AddField(TJanuaOrmFactory.CreateBoolField('boo', 'BoolField'));
            end;
          TFieldType.ftGuid:
            begin
              lTmp := TJanuaFieldType.jptGUID;
              if not(aDataset.Fields[i].FieldName.ToLower = 'jguid') then
              // Managed by jguid identifier on class
                aList.Add(ind(2) + 'F' + sName + ':= AddCreateField(TJanuaFieldType.jptGUID, ' +
                  sField + ');');
            end;
          TFieldType.ftVariant:
            begin
              lTmp := TJanuaFieldType.jptVariant;
              aList.Add(ind(2) + 'F' + sName + ':= AddCreateField(TJanuaFieldType.jptVariant, ' +
                sField + ');');
            end;
          TFieldType.ftCurrency:
            begin
              lTmp := TJanuaFieldType.jptCurrency;
              aList.Add(ind(2) + 'F' + sName + ':= AddCreateField(TJanuaFieldType.jptCurrency, ' +
                sField + ');');
              // FBoolean := self.AddField(TJanuaOrmFactory.CreateBoolField('boo', 'BoolField'));
            end;
          TFieldType.ftDateTime, TFieldType.ftTimeStamp, TFieldType.ftTime:
            begin
              lTmp := TJanuaFieldType.jptDateTime;
              aList.Add(ind(2) + 'F' + sName + ':= AddCreateField(TJanuaFieldType.jptDateTime, ' +
                sField + ');');
              // FDateTime := self.AddField(TJanuaOrmFactory.CreateDateTimeField('dat', 'dat'));
            end;
          TFieldType.ftDate:
            begin
              lTmp := TJanuaFieldType.jptDate;
              aList.Add(ind(2) + 'F' + sName + ':= AddCreateField(TJanuaFieldType.jptDate, ' + sField + ');');
              // FDateTime := self.AddField(TJanuaOrmFactory.CreateDateTimeField('dat', 'dat'));
            end;
          TFieldType.ftExtended:
            begin
              lTmp := TJanuaFieldType.jptExtended;
              aList.Add(ind(2) + 'F' + sName + ':= AddCreateField(TJanuaFieldType.jptExtended, ' +
                sField + ');');
              // class function CreateExtentedField(aKey, aField: string): IJanuaField;
            end;
          TFieldType.ftSmallint:
            begin
              lTmp := TJanuaFieldType.jptSmallint;
              aList.Add(ind(2) + 'F' + sName + ':= AddCreateField(TJanuaFieldType.jptSmallint, ' +
                sField + ');');
            end;
          TFieldType.ftLargeInt:
            begin
              lTmp := TJanuaFieldType.jptLargeInt;
              aList.Add(ind(2) + 'F' + sName + ':= AddCreateField(TJanuaFieldType.jptLargeint, ' +
                sField + ');');
            end;
          TFieldType.ftBlob:
            begin
              lTmp := TJanuaFieldType.jptBlob;
              aList.Add(ind(2) + 'F' + sName + ':= AddCreateField(TJanuaFieldType.jptBlob, ' + sField + ');');
            end;
        else
          begin
            aList.Add(ind(2) + '// Campo non Gestito' + sKey + ' Type= ' + TEnumConvertor<TFieldType>.ToString
              (aDataset.Fields[i].DataType));
            bTest := False;
          end;
        end;
        (*
          if bTest then
          aList.Add(ind(2) + 'F' + sName + 'Index := ' + 'AddField(' + 'F' + sName + ');');
        *)
      end;
    end;
    aList.Add(ind(1) + 'end;');

    aList.Add('');

    // Generazione Implementazione della Classe Getters and Setters .................................................
    for i := 0 to Pred(aDataset.FieldCount) do
    begin
      if CheckGUID(aDataset.Fields[i].FieldName) then
      begin
        sName := GetName(aDataset.Fields[i].FieldName);
        if not((aName.ToLower = aAbbr.ToLower + '_jguid') or (aName.ToLower = aAbbr.ToLower + '_deleted'))
        then
        begin
          aList.Add(ind(1) + 'function ' + sClassType + '.Get' + sName + ': IJanuaField;');
          aList.Add(ind(1) + 'begin');
          aList.Add(ind(2) + 'Result := F' + sName + ';');
          aList.Add(ind(1) + 'end;');
          aList.Add('');
          aList.Add(ind(1) + 'procedure ' + sClassType + '.Set' + sName + '(const Value: IJanuaField);');
          aList.Add(ind(1) + 'begin');
          aList.Add(ind(2) + 'F' + sName + ' := Value;');
          aList.Add(ind(1) + 'end;');
          aList.Add('');
        end;
      end;
    end;


    // RecordSet Implementation .....................................................................................

    aList.Add(ind(1) + '{ ' + sSetType + ' }');

    // Metodo Create ................................................................................................
    aList.Add(ind(1) + 'constructor ' + sSetType + '.Create;');
    aList.Add(ind(1) + 'begin');
    aList.Add(ind(2) + 'inherited;');
    // self.FRecord := TUserProfileFactory.CreateRecord('UserProfile')
    aList.Add(ind(2) + 'self.FRecord := T' + sClass + 'Factory.CreateRecord(' + QuotedStr(sClass) + ');');
    aList.Add(ind(1) + 'end;');

    // Metodo Create (const aName: string; aRecord: IJanuaRecord) ............................................................
    (*
      aList.Add(ind(1) + 'constructor ' + 'T' + sSet + '.Create(const aName: string; aRecord: IJanuaRecord);');
      aList.Add(ind(1) + 'begin');
      aList.Add(ind(2) + 'Create;');
      aList.Add(ind(2) + 'inherited;');
      aList.Add(ind(1) + 'end;');

      // Metodo Create (aName, aTableName: string) ............................................................

      aList.Add(ind(1) + 'constructor ' + 'T' + sSet + '.Create(aName, aTableName: string);');
      aList.Add(ind(1) + 'begin');
      aList.Add(ind(2) + 'Create;');
      aList.Add(ind(2) + 'self.Create(aName, T' + sClass + 'Factory.CreateRecord(' + QuotedStr(sClass) + '));');
      aList.Add(ind(1) + 'end;');
    *)
    aList.Add('');

    // Generazione Implementazione della Classe Getters and Setters .................................................
    for i := 0 to Pred(aDataset.FieldCount) do
    begin
      if CheckGUID(aDataset.Fields[i].FieldName) then
      begin
        sName := GetName(aDataset.Fields[i].FieldName);
        if not((aName.ToLower = aAbbr.ToLower + '_jguid') or (aName.ToLower = aAbbr.ToLower + '_deleted'))
        then
        begin
          aList.Add(ind(1) + 'function ' + sSetType + '.Get' + sName + ': IJanuaField;');
          aList.Add(ind(1) + 'begin');
          aList.Add(ind(2) + 'Result := self.' + sClass + '.' + sName + ';');
          aList.Add(ind(1) + 'end;');
          aList.Add('');
          aList.Add(ind(1) + 'procedure ' + sSetType + '.Set' + sName + '(const Value: IJanuaField);');
          aList.Add(ind(1) + 'begin');
          aList.Add(ind(2) + 'self.' + sClass + '.' + sName + ' := Value;');
          aList.Add(ind(1) + 'end;');
          aList.Add('');
        end;
      end;
    end;

    // Generazione Getter & Setter del Record ..........................................................................
    {
      procedure TJanuaTestRecordSet.SetNestedRecord(const Value: IJanuaTestNestedRecord);
      begin
      self.CurrentRecord := Value
      end;
    }

    aList.Add(ind(1) + 'function ' + sSetType + '.Get' + sClass + ': I' + sClass + ';');
    aList.Add(ind(1) + 'begin');
    aList.Add(ind(2) + 'Result := self.FRecord as I' + sClass + ';');
    aList.Add(ind(1) + 'end;');
    aList.Add('');
    aList.Add(ind(1) + 'procedure ' + sSetType + '.Set' + sClass + '(const Value: I' + sClass + ');');
    aList.Add(ind(1) + 'begin');
    aList.Add(ind(2) + 'self.FRecord := Value;');
    aList.Add(ind(1) + 'end;');
    aList.Add('');



    // Factory Implementation ...................................................................................

    aList.Add(ind(1) + '{ T' + sClass + 'Factory }');
    aList.Add('');
    // Record Factory
    aList.Add(ind(1) + 'class function T' + sClass + 'Factory.CreateRecord(const aKey: string): I' +
      sClass + ';');
    aList.Add(ind(1) + 'begin');
    aList.Add(ind(2) + 'Result := ' + sClassType + '.Create;');
    aList.Add(ind(1) + 'end;');
    aList.Add('');
    aList.Add(ind(1) + 'class function T' + sClass +
      'Factory.CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): I'
      + sSet + ';');
    aList.Add(ind(1) + 'begin');
    aList.Add(ind(2) + 'Result := ' + sSetType + '.Create(aName, aLocalStorage, aRemoteStorage);');
    aList.Add(ind(1) + 'end;');
    aList.Add('');
    aList.Add('end.');
    aImpl := aList.Text;

  finally
    aList.Free;
  end;

end;

end.
