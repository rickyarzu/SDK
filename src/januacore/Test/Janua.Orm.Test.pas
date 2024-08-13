unit Janua.Orm.Test;

interface

{$I januacore.inc}

uses
  DUnitX.TestFramework, Janua.Orm.Types, Janua.Test.FireDac.dmVirtual;

type

  [TestFixture]
  TOrmTest = class(TObject)
  private
    dmTest: TdmFDacVirtualTest;
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Sample Methods
    // Simple single Test
    [Test]
    procedure IntegerField;
    [Test]
    procedure FloatField;
    [Test]
    procedure StringField;
    [Test]
    procedure BoolField;
    [Test]
    procedure CurrencyField;
    [Test]
    procedure DateTimeField;
    [Test]
    procedure JanuaRecord;
    [Test]
    procedure RecordSet;
    [Test]
    procedure NestedRecordSet;
    // Test with TestCase Attribute to supply parameters.
    [Test]
    procedure MegaTest;
    [Test]
    procedure NestedTest;
    [Test]
    procedure JsonFields;
    [Test]
    procedure JsonParams;
    [Test]
    procedure TestFuncResult;
    [Test]
    procedure TestMetadata;
    [Test]
    procedure TestControlBindings;
    [Test]
    procedure ParamsFilterText;
    [Test]
    procedure Serialize64;
    [Test]
    procedure SerializeAll;
    [Test]
    procedure SerializeJson;

  end;

implementation

uses
  System.Rtti, Spring, Spring.Collections, Janua.Orm.Intf, Janua.Orm.Impl, System.JSON, System.DateUtils,
  System.SysUtils, Janua.Application.Framework, Janua.Orm.Test.Intf, Janua.Server.Intf,
  Janua.Core.Types, Janua.Server.Impl, Janua.Orm.Test.Impl, Janua.Core.JSON;

procedure TOrmTest.Serialize64;
var
  lFrom, lTo: IJanuaDBDataset;
  lExportText: string;
begin
  {
    jdsOrigin := TJanuaVtDataset.Create(FDMemTable2, [TestMaster]);
    jdsTarget := TJanuaVtDataset.Create(fdTargetTable, [TestMaster]);
  }
  // Test As Base64,
  lExportText := dmTest.jdsOrigin.AsBase64;
  dmTest.jdsTarget.AsBase64 := lExportText;
  Assert.AreEqual(dmTest.jdsOrigin.RecordCount, dmTest.jdsTarget.RecordCount);

end;

procedure TOrmTest.SerializeAll;
begin

end;

procedure TOrmTest.SerializeJson;
begin

end;

procedure TOrmTest.Setup;
begin
  try
    dmTest := TdmFDacVirtualTest.Create(nil);
  except
    on E: Exception do
      RaiseException('Setup', E, Self);
  end;
end;

procedure TOrmTest.StringField;
var
  a: Janua.Orm.Intf.IJanuaField;
  aObject: TJsonObject;
  d: TDateTime;
  tmp, Lassert: string;
begin
  a := Janua.Orm.Impl.TJanuaOrmFactory.CreateStringField('test', 'test');
  a.AsInteger := 1;
  Assert.AreEqual('1', a.AsString);
  d := System.DateUtils.Today();
  a.AsDateTime := d;
  Assert.AreEqual(d, a.AsDateTime);
  a.Value := 'ciao';
  Assert.AreEqual('ciao', a.Value.ToString);
  a.AsFloat := 8.0;
  Assert.AreEqual(8.0, a.AsFloat);
  a.AsLargeInt := 3;
  Assert.AreEqual(3, a.AsInteger);
  a.AsString := '2';
  Assert.AreEqual('2', a.AsString);
  aObject := TJsonObject.Create;
  try
    a.Value := 'ciao';
    a.WriteJsonValue(aObject);
    a.Value := 'buongiorno';
    Assert.AreEqual('buongiorno', a.AsString);
    a.ReadJsonValue(aObject);
    Assert.AreEqual('ciao', a.AsString);
  finally
    aObject.Free
  end;

  a.Activate;
  Assert.IsTrue(a.Active);
  a.ParamOperator := TJanuaOperator.Equals;
  tmp := a.FilterText;
  Assert.AreEqual('test = ' + QuotedStr(a.AsString), tmp, 'param');

  a.ParamOperator := TJanuaOperator.NotEqual;
  Assert.AreEqual(TJanuaOperator.NotEqual, a.ParamOperator, 'NotEqual Setter Operator');
  tmp := a.FilterText;
  Assert.AreEqual('test <> ' + QuotedStr(a.AsString), tmp, 'param');

  a.ParamOperator := TJanuaOperator.LessThan;
  tmp := a.FilterText;
  Assert.AreEqual('test < ' + QuotedStr(a.AsString), tmp, 'param');

  a.ParamOperator := TJanuaOperator.MoreThan;
  tmp := a.FilterText;
  Assert.AreEqual('test > ' + QuotedStr(a.AsString), tmp, 'param');

  a.ParamOperator := TJanuaOperator.LikeLower;
  tmp := a.FilterText;
  Lassert := 'test like ' + QuotedStr('%' + a.AsString.ToLower + '%');
  Assert.AreEqual(Lassert, tmp, 'param');

end;

procedure TOrmTest.TearDown;
begin
  try
    if Assigned(dmTest) then
      FreeAndNil(dmTest);
  except
    on E: Exception do
      RaiseException('TearDown', E, Self);

  end;
end;

procedure TOrmTest.TestControlBindings;
var
  aRecordSet: IJanuaTestRecordSet;
begin
  // Per prima cosa creo il mio RecordSet
  // aRecordSet := TJanuaNestedFactory.CreateRecordset('test', 'test');
  Assert.IsTrue(TJanuaOrmFactory.TryGetRecordSetIntf(IJanuaTestRecordSet, 'test', nil, nil, aRecordSet),
    'TryGetRecordSetIntf(IJanuaTestRecordSet)');
  // Aggiungo un Record e lo valorizzo
  aRecordSet.Append;
  aRecordSet.TestInteger.AsInteger := 100;
  aRecordSet.TestString.AsString := 'Ciao';
  aRecordSet.TestDateTime.AsDateTime := now();
  aRecordSet.TestDouble.AsFloat := 4.4;
  aRecordSet.TestBoolean.AsBoolean := True;
  // doppia linea per il test del Memo Field
  aRecordSet.TestMemo.AsString := 'Ciao a Tutti' + sLineBreak + 'Ciao a Tutti';
end;

procedure TOrmTest.TestFuncResult;
var
  LResultO, LResultD: IJanuaFuncResult;
  LJsonO, LJsonD: TJsonObject;
  // RecordSet e Record che possono comporre una risposta
  aRecord, bRecord, cRecord: IJanuaRecord;
  aRecordSet, bRecordSet, cRecordSet: IJanuaRecordSet;
  i, j, k: integer;
  t1, t2: integer; // variabili di Test ....
  tmp: IJanuaField; // Queto 'field' Server per creare i parametri da inserire
begin
  LResultO := TJanuaFuncResult.Create;
  Assert.IsNotNull(LResultO);
  LResultO.ErrorMessage := 'Test Error Message';
  LResultO.HasErrors := True;
  Assert.AreEqual(LResultO.ErrorMessage, 'Test Error Message');
  Assert.IsTrue(LResultO.HasErrors);
  LJsonO := LResultO.AsJsonObject;
  Assert.IsNotNull(LJsonO);
  LResultD := TJanuaFuncResult.Create;
  LResultD.AsJsonObject := LJsonO;
  Assert.AreEqual(LResultO.ErrorMessage, LResultD.ErrorMessage);
  Assert.IsTrue(LResultD.HasErrors);
  LResultO := nil;
  LResultD := nil;
  FreeAndNil(LJsonO);
  { FreeAndNil(LJsonD); }

  LResultO := TJanuaFuncResult.Create;
  Assert.IsNotNull(LResultO);

  // Playground

  aRecord := Janua.Orm.Impl.TJanuaOrmFactory.CreateRecord('test');
  j := 0;
  i := aRecord.AddField(TJanuaOrmFactory.CreateIntegerField('int', 'int'));
  Inc(j);
  i := aRecord.AddField(TJanuaOrmFactory.CreateExtentedField('ext', 'ext'));
  Inc(j);
  i := aRecord.AddField(TJanuaOrmFactory.CreateStringField('str', 'str'));
  Inc(j);
  i := aRecord.AddField(TJanuaOrmFactory.CreateDateTimeField('dat', 'dat'));
  Inc(j);

  // cRecord è la matrice di cRecordset
  cRecord := Janua.Orm.Impl.TJanuaOrmFactory.CreateRecord('sub');
  i := cRecord.AddField(TJanuaOrmFactory.CreateIntegerField('int', 'int'));
  i := cRecord.AddField(TJanuaOrmFactory.CreateExtentedField('ext', 'ext'));
  i := cRecord.AddField(TJanuaOrmFactory.CreateStringField('str', 'str'));
  i := cRecord.AddField(TJanuaOrmFactory.CreateDateTimeField('dat', 'dat'));

  // popolo aRecord per testare la copia
  aRecord.FieldByName('int').Value := 100;
  aRecord.FieldByName('ext').Value := 1234.12345;
  aRecord.FieldByName('str').Value := 'ciao';
  aRecord.FieldByName('dat').Value := now();

  // verifico che la copia Json del record con metadati sia corretta
  bRecord := TJanuaRecord.Create;
  bRecord.AsMetadata := aRecord.AsMetadata;
  bRecord.AsJsonObject := aRecord.AsJsonObject;

  // Verifico anche la funzione Equals che effettua la comparazione di due Reoords
  Assert.IsTrue(bRecord.ContentEquals(aRecord), 'bRecord Not Equals (aRecord)');

  // terminato il test imposto a nil il puntatore bRecord
  bRecord := nil;

  // Creo C Recorset
  cRecordSet := aRecord.AddRecordSet(TJanuaOrmFactory.CreateRecordset('subset', cRecord));
  // Lo aggiungo a aRecord che ha quindi 1 recordset di indice 0
  k := aRecord.RecordSets.Count - 1;
  t1 := aRecord.RecordSetIndex;
  Assert.IsTrue(k = t1, 'TfrmFmxDesktopMain.OrmCreation k(' + (k.ToString) + ') <> RecordSetIndex, t1=' +
    t1.ToString);
  t2 := Pred(aRecord.RecordSetCount);
  Assert.IsTrue(k = t2, 'TfrmFmxDesktopMain.OrmCreation k <> Pred(aRecord.RecordSetCount) t2=' + t2.ToString);

  aRecordSet := TJanuaOrmFactory.CreateRecordset('set', aRecord);
  aRecordSet.Append;
  aRecordSet.CurrentRecord.FieldByName('int').Value := 100;
  aRecordSet.CurrentRecord.FieldByName('ext').Value := 1234.12345;
  aRecordSet.CurrentRecord.FieldByName('str').Value := 'ciao';
  aRecordSet.CurrentRecord.FieldByName('dat').Value := now();
  aRecordSet.CurrentRecord.RecordSets[k].Append;
  aRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('int').Value := 100;
  aRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('int').Value := 100;
  aRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('ext').Value := 1234.12345;
  aRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('str').Value := 'ciao';
  aRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('dat').Value := now();
  aRecordSet.CurrentRecord.RecordSets[k].Post;
  aRecordSet.CurrentRecord.RecordSets[k].Append;
  aRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('int').Value := 100;
  aRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('int').Value := 100;
  aRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('ext').Value := 1234.12345;
  aRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('str').Value := 'ciao';
  aRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('dat').Value := now();
  aRecordSet.CurrentRecord.RecordSets[k].Post;
  t1 := aRecordSet.CurrentRecord.RecordSets[k].RecordCount;
  Assert.IsTrue(t1 = 2, 'aRecordSet.CurrentRecord.RecordSets[k] <> 2; t1 = ' + t1.ToString);
  aRecordSet.Post;

  LResultO.RecResult.AddRecordSet(aRecordSet);
  LResultO.RecResult.Records.Add(aRecord);

  // Test Export-Import Dei soli Parametri
  Assert.IsNotNull(LResultO.Params, 'LOrigin is nil');
  tmp := TJanuaOrmFactory.CreateIntegerField('int', 'int', False);
  tmp.AsInteger := 10;
  LResultO.Params.AddParam(tmp);
  tmp := TJanuaOrmFactory.CreateIntegerField('ext', 'ext', False);
  tmp.AsFloat := 11.21;
  LResultO.Params.AddParam(tmp);
  // Controllo che il conto dei parametri sia almeno pari a 2
  Assert.AreEqual(2, LResultO.Params.ParamCount, 'LOrigin <> 2');
  // Verifico che l'oggetto di destinazione non sia un nullo
  LJsonO := LResultO.Params.AsJsonObject;
  // Creo la funzione di destinazione LResultD
  LResultD := TJanuaFuncResult.Create;
  LResultD.Params.AsJsonObject := LJsonO;
  // Verifico che orginne  e destinazioe siano identici
  Assert.AreEqual(LResultO.Params.ParamCount, LResultD.Params.ParamCount, 'LDestination <> LOrigin');
  Assert.IsTrue(LResultO.Params.ContentEquals(LResultD.Params), 'LDestination not Equals LOrigin');
  LJsonO.Free;
  // Testo Import/Export dei metadati. Per prima cosa esporto i metadati del Record di Origine
  LJsonO := LResultO.RecResult.AsMetadata;
  // Quindi li assegno al record di destinazione che dovrebbe ricostruire la struttura dell'origine
  LResultD.RecResult.AsMetadata := LJsonO;
  // Verifico che Destination RecResult abbia lo stesso numero di RecordSet di
  Assert.AreEqual(LResultO.RecResult.RecordSetCount(False), LResultD.RecResult.RecordSetCount(False),
    'Rec Result Metadata Export 1st Level Failed');
  (* Assert.AreEqual(LResultO.RecResult.RecordSetCount(True), LResultD.RecResult.RecordSetCount(True),
    'Rec Result Metadata Export 2nd Level Failed'); *)
  LResultD := nil;
  LJsonO.Free;

  // Test di copia completa da Origin Function a Destination Function
  LJsonO := LResultO.AsJsonObject;
  Assert.IsNotNull(LJsonO);
  // Testo JanuaFuncResult (era usata nel framework precedente per gestire risultati REST).
  LResultD := TJanuaFuncResult.Create;
  LResultD.AsJsonObject := LJsonO;
  Assert.AreEqual(LResultO.ErrorMessage, LResultD.ErrorMessage);
  Assert.AreEqual(LResultO.RecResult.RecordSetCount(False), LResultD.RecResult.RecordSetCount(False),
    'LResultO.RecResult Metadata Export 1st Level Failed');
  Assert.IsTrue(LResultO.Params.ContentEquals(LResultD.Params), 'LDestination not Equals LOrigin');

end;

procedure TOrmTest.TestMetadata;
var
  // TJanuaTestNestedsSubRecord = class(TJanuaRecord, IJanuaTestNestedRecord, IJanuaTestNestedSubRecord)
  a: IJanuaTestNestedSubRecord;
  o: string;
  b: IJanuaRecord;
begin
  a := TJanuaTestNestedsSubRecord.Create('TestS');
  Assert.AreEqual(2, a.RecordCount, 'Record Count not 2');
  o := a.AsJsonWithMeta;
  try
    b := TJanuaOrmFactory.CreateRecordWithMeta(o);
  except
    on E: Exception do
      raise Exception.Create('b := TJanuaRecord.Create(o) ' + E.Message);
  end;
  Assert.AreEqual(b.FieldCount, a.FieldCount);
  Assert.AreEqual(a.RecordCount, b.RecordCount);

end;

procedure TOrmTest.BoolField;
var
  a: Janua.Orm.Intf.IJanuaField;
  aObject: TJsonObject;
begin
  a := Janua.Orm.Impl.TJanuaOrmFactory.CreateBoolField('test', 'test');
  a.AsInteger := 4;
  Assert.AreEqual(True, a.AsBoolean);
  a.AsDateTime := 0.0;
  Assert.AreEqual(False, a.AsBoolean);
  a.Value := True;
  Assert.AreEqual(1, a.AsInteger);
  a.AsFloat := 1;
  Assert.AreEqual(1, a.AsInteger);
  a.AsLargeInt := 3;
  Assert.AreEqual(1.0, a.AsFloat);
  a.AsString := 'true';
  Assert.AreEqual(1, a.AsInteger);
  aObject := TJsonObject.Create;
  try
    a.Value := True;
    a.WriteJsonValue(aObject);
    a.Value := False;
    Assert.AreEqual(False, a.AsBoolean);
    a.ReadJsonValue(aObject);
    Assert.AreEqual(True, a.AsBoolean);
  finally
    aObject.Free
  end;

end;

procedure TOrmTest.CurrencyField;
var
  a: Janua.Orm.Intf.IJanuaField;
  aObject: TJsonObject;
begin
  a := Janua.Orm.Impl.TJanuaOrmFactory.CreateDoubleField('test', 'test');
  a.AsInteger := 1;
  Assert.AreEqual(1.0, a.AsFloat);
  a.AsDateTime := 2.0;
  Assert.AreEqual(2.0, a.AsFloat);
  a.Value := 5.0;
  Assert.AreEqual(5.0, a.AsFloat);
  a.AsFloat := 8.0;
  Assert.AreEqual(8.0, a.AsFloat);
  a.AsLargeInt := 3;
  Assert.AreEqual(3.0, a.AsFloat);
  a.AsString := '2';
  Assert.AreEqual(2.0, a.AsFloat);
  aObject := TJsonObject.Create;
  try
    a.Value := 10.0;
    a.WriteJsonValue(aObject);
    a.Value := 0;
    Assert.AreEqual(0.0, a.AsFloat);
    a.ReadJsonValue(aObject);
    Assert.AreEqual(10.0, a.AsFloat);
  finally
    aObject.Free
  end;

end;

procedure TOrmTest.DateTimeField;
var
  a: Janua.Orm.Intf.IJanuaField;
  aObject: TJsonObject;
  s: string;
begin
  a := Janua.Orm.Impl.TJanuaOrmFactory.CreateDateTimeField('test', 'test');
  a.AsInteger := 1;
  Assert.AreEqual(1.0, a.AsFloat);
  a.AsDateTime := Today;
  Assert.AreEqual(Today, a.AsDateTime);
  a.Value := 5.0;
  Assert.AreEqual(5.0, a.AsFloat);
  a.AsFloat := 8.0;
  Assert.AreEqual(8.0, a.AsFloat);
  a.AsLargeInt := 3;
  Assert.AreEqual(3.0, a.AsFloat);
  a.AsDataString := DateToISO8601(Today);
  Assert.AreEqual(Today, a.AsDateTime);
  s := DateToStr(Today);
  a.AsString := s;
  s := a.AsString;
  Assert.AreEqual(Today, a.AsDateTime);
  aObject := TJsonObject.Create;
  try
    a.Value := 10.0;
    a.WriteJsonValue(aObject);
    a.Value := 0;
    Assert.AreEqual(0.0, a.AsFloat);
    a.ReadJsonValue(aObject);
    Assert.AreEqual(10.0, a.AsFloat);
  finally
    aObject.Free
  end;
end;

procedure TOrmTest.FloatField;
var
  a: Janua.Orm.Intf.IJanuaField;
  aObject: TJsonObject;
begin
  a := Janua.Orm.Impl.TJanuaOrmFactory.CreateDoubleField('test', 'test');
  a.AsInteger := 1;
  Assert.AreEqual(1.0, a.AsFloat);
  a.AsDateTime := 2.0;
  Assert.AreEqual(2.0, a.AsFloat);
  a.Value := 5.0;
  Assert.AreEqual(5.0, a.AsFloat);
  a.AsFloat := 8.0;
  Assert.AreEqual(8.0, a.AsFloat);
  a.AsLargeInt := 3;
  Assert.AreEqual(3.0, a.AsFloat);
  a.AsString := '2';
  Assert.AreEqual(2.0, a.AsFloat);
  aObject := TJsonObject.Create;
  try
    a.Value := 10.0;
    a.WriteJsonValue(aObject);
    a.Value := 0;
    Assert.AreEqual(0.0, a.AsFloat);
    a.ReadJsonValue(aObject);
    Assert.AreEqual(10.0, a.AsFloat);
  finally
    aObject.Free
  end;

end;

procedure TOrmTest.IntegerField;
var
  a: Janua.Orm.Intf.IJanuaField;
  aObject: TJsonObject;
  tmp: string;
begin
  a := Janua.Orm.Impl.TJanuaOrmFactory.CreateIntegerField('test', 'test');
  Assert.AreEqual(a.DBField, 'test');
  a.AsInteger := 1;
  a.AsDateTime := Date();
  Assert.AreEqual(Trunc(Date) { Int64 } , a.AsLargeInt { Int64 } );
  a.Value := 3;
  Assert.AreEqual(3, a.AsInteger);
  a.AsFloat := 4;
  Assert.AreEqual(4, a.AsInteger);
  a.AsLargeInt := 5;
  Assert.AreEqual(5, a.AsInteger);
  aObject := TJsonObject.Create;
  try
    a.Value := 1;
    a.WriteJsonValue(aObject);
    a.Value := 0;
    Assert.AreEqual(0, a.AsInteger);
    a.ReadJsonValue(aObject);
    Assert.AreEqual(1, a.AsInteger);
  finally
    aObject.Free
  end;

  a.Activate;
  Assert.IsTrue(a.Active);
  a.ParamOperator := TJanuaOperator.Equals;
  tmp := a.FilterText;
  Assert.AreEqual('test = ' + a.AsString, tmp, 'param');

  a.ParamOperator := TJanuaOperator.NotEqual;
  Assert.AreEqual(TJanuaOperator.NotEqual, a.ParamOperator, 'NotEqual Setter Operator');
  tmp := a.FilterText;
  Assert.AreEqual('test <> ' + a.AsString, tmp, 'param');

  a.ParamOperator := TJanuaOperator.LessThan;
  tmp := a.FilterText;
  Assert.AreEqual('test < ' + a.AsString, tmp, 'param');

  a.ParamOperator := TJanuaOperator.MoreThan;
  tmp := a.FilterText;
  Assert.AreEqual('test > ' + a.AsString, tmp, 'param');
end;

procedure TOrmTest.JanuaRecord;
var
  aRecord, bRecord: IJanuaRecord;
  lJson: string;
  i, j: integer;
begin
  aRecord := Janua.Orm.Impl.TJanuaOrmFactory.CreateRecord('aRecord');
  Assert.AreEqual('aRecord', aRecord.Name);
  Assert.AreEqual(0, aRecord.FieldCount);
  j := 0;

  i := aRecord.AddField(TJanuaOrmFactory.CreateIntegerField('int', 'int'));
  Assert.AreEqual(j, i);
  Assert.AreEqual(Succ(j), aRecord.FieldCount);
  aRecord.FieldByName('int').Value := 10;
  Assert.AreEqual(10, aRecord.Fields[i].AsInteger);
  Inc(j);
  i := aRecord.AddField(TJanuaOrmFactory.CreateExtentedField('ext', 'ext'));
  Assert.AreEqual(j, i);
  Assert.AreEqual(Succ(j), aRecord.FieldCount);
  aRecord.FieldByName('ext').Value := 10.0;
  Assert.AreEqual(10.0, aRecord.Fields[i].AsFloat);

  Inc(j);
  i := aRecord.AddField(TJanuaOrmFactory.CreateStringField('str', 'str'));
  Assert.AreEqual(j, i);
  Assert.AreEqual(Succ(j), aRecord.FieldCount);
  aRecord.FieldByName('str').Value := 'ciao';
  Assert.AreEqual('ciao', aRecord.Fields[i].AsString);

  Inc(j);
  i := aRecord.AddField(TJanuaOrmFactory.CreateBoolField('boo', 'boo'));
  Assert.AreEqual(j, i);
  Assert.AreEqual(Succ(j), aRecord.FieldCount);
  aRecord.FieldByName('boo').Value := True;
  Assert.AreEqual(True, aRecord.Fields[i].AsBoolean);

  Inc(j);
  i := aRecord.AddField(TJanuaOrmFactory.CreateDateTimeField('dat', 'dat'));
  Assert.AreEqual(j, i);
  Assert.AreEqual(Succ(j), aRecord.FieldCount);
  aRecord.FieldByName('dat').Value := Today;
  Assert.AreEqual(Today, aRecord.Fields[i].AsDateTime);

  lJson := aRecord.AsJsonWithMeta;
  Assert.AreNotEqual('', lJson, 'lJson');
  bRecord := TJanuaOrmFactory.CreateRecordWithMeta(lJson, 'bRecord');
  Assert.IsNotNull(bRecord, 'bRecord');

  Assert.IsTrue(aRecord.ContentEquals(bRecord), aRecord.LastMessage);

end;

procedure TOrmTest.JsonFields;
var
  LOrigin, LDestination: TJanuaFields;
  LObjectO, LObjectD: TJsonObject;
  i: integer;
begin
  // function FieldsToJsonObject(const aFields: TJanuaFields): TJsonObject;
  // function JsonObjectToFields(const LObjectO: TJsonObject): TJanuaFields;
  (*
    Questa procedura testa la serializzazione e deserializzazione di un insieme di Parametri (IList<IJanuaField>)
    definita da TJanuaFields. I parametri vengono serializzat/deserializzati attraverso un oggetto Json
    TJson Object che poi verrà impiegato come parametro di chiamata alla funzione tramite un metodo
    POST contenente appunto l'oggetto in questione.
    Una possibile evoluzione potrebbe essere la conversione in parametri 'get' nel caso dei Dataset.
    In questo caso la funzione parametrica passerebbe una serie di stringe TStrings con le ocppie chiave-valore.
    In output però sempre un record di tipo Result. Serializzabile in Json.
  *)
  // per prima cosa genero 'Origin' mentre LDestination sarà auto-generato.
  LOrigin := Spring.Collections.TCollections.CreateList<IJanuaField>;
  Assert.IsNotNull(LOrigin, 'LDestination is nil');
  LOrigin.Add(TJanuaOrmFactory.CreateIntegerField('int', 'int', False));
  LOrigin.Items[Pred(LOrigin.Count)].AsInteger := 10;
  LOrigin.Add(TJanuaOrmFactory.CreateExtentedField('ext', 'ext', False));
  LOrigin.Items[Pred(LOrigin.Count)].AsFloat := 11.21;
  LObjectO := FieldsToJsonObject(LOrigin);
  LDestination := JsonObjectToFields(LObjectO);
  Assert.IsNotNull(LDestination, 'LDestination is nil');
  Assert.AreEqual(LOrigin.Count, LDestination.Count);
  for i := 0 to Pred(LOrigin.Count) do
    Assert.IsTrue(LOrigin.Items[i].Value.Equals(LDestination.Items[i].Value) , 'LOrigin: ' + LOrigin.Items[i].Key +
      ' = ' + LOrigin.Items[i].AsString + ' Item <> LDestination: ' + LDestination.Items[i].Key + ' = ' +
      LDestination.Items[i].AsString);

end;

procedure TOrmTest.JsonParams;
var
  LOrigin, LDestination: IJanuaParams;
  LObjectO, LObjectD: TJsonObject;
  tmp: IJanuaField;
  i: integer;
  lJson: string;

  vTest, vTest2: TJsonValue;
  sTest: string;
begin
  // function FieldsToJsonObject(const aFields: TJanuaFields): TJsonObject;
  // function JsonObjectToFields(const LObjectO: TJsonObject): TJanuaFields;
  (*
    Questa procedura testa la serializzazione e deserializzazione di un insieme di Parametri (IList<IJanuaField>)
    definita da TJanuaFields. I parametri vengono serializzat/deserializzati attraverso un oggetto Json
    TJson Object che poi verrà impiegato come parametro di chiamata alla funzione tramite un metodo
    POST contenente appunto l'oggetto in questione.
    Una possibile evoluzione potrebbe essere la conversione in parametri 'get' nel caso dei Dataset.
    In questo caso la funzione parametrica passerebbe una serie di stringe TStrings con le ocppie chiave-valore.
    In output però sempre un record di tipo Result. Serializzabile in Json.
  *)
  // per prima cosa genero 'Origin' mentre LDestination sarà auto-generato.
  LOrigin := TJanuaParams.Create;
  // Spring.Collections.TCollections.CreateList<IJanuaField>;
  Assert.IsNotNull(LOrigin, 'LOrigin is nil');
  tmp := TJanuaOrmFactory.CreateIntegerField('int', 'int', False);
  tmp.AsInteger := 10;
  LOrigin.AddParam(tmp);
  tmp := TJanuaOrmFactory.CreateIntegerField('ext', 'ext', False);
  tmp.AsFloat := 11.21;
  LOrigin.AddParam(tmp);
  // Controllo che il conto dei parametri sia almeno pari a 2
  Assert.AreEqual(2, LOrigin.ParamCount, 'LOrigin <> 2');
  // Verifico che l'oggetto di destinazione non sia un nullo
  LObjectO := LOrigin.AsJsonObject;
  Assert.IsNotNull(LObjectO, 'LObjectO is nil');
  Assert.AreEqual(2, LOrigin.ParamCount, 'LOrigin after AsJsonObject');
  // Creo e verifico l'oggetto di Destinayione
  LDestination := TJanuaParams.Create(LObjectO);
  Assert.IsNotNull(LDestination, 'LDestination is nil');
  Assert.AreEqual(2, LDestination.ParamCount, 'LDestination <> 2');
  Assert.AreEqual(LOrigin.ParamCount, LDestination.ParamCount, 'LDestination <> LOrigin');
  Assert.IsTrue(LOrigin.ContentEquals(LDestination), 'LDestination not Equals LOrigin');
  LDestination := TJanuaParams.Create;
  LDestination.AsJsonObject := LOrigin.AsJsonObject;
  Assert.IsTrue(LDestination.ContentEquals(LOrigin), 'LDestination.ContentEquals');
  Assert.AreEqual(2, LDestination.ParamCount, 'LDestination <> 2');
  tmp := nil;
  tmp := LOrigin.ParamByName('ext');
  Assert.IsNotNull(tmp, 'tmp ParambyName');
  tmp.AsFloat := 20.20;
  Assert.AreEqual(20, tmp.AsInteger, 'tmp.AsFloat');
  Assert.IsFalse(LDestination.ContentEquals(LOrigin), 'LDestination.ContentEquals');

  // Test che venga correttamente serializzata e deserializzata anche la Paginazione dei Parametri
  LOrigin.Page := 2;
  Assert.AreEqual(2, LOrigin.Page, 'LOrigin.Page');
  LOrigin.PageSize := 100;
  Assert.AreEqual(2, LOrigin.Page, 'LOrigin.PageSize');
  LOrigin.HasPagination := True;
  Assert.IsTrue(LOrigin.HasPagination, 'LOrigin.HasPagination');

  lJson := LOrigin.asJson;
  Assert.AreNotEqual('', lJson);

  vTest := Janua.Core.JSON.JsonParse(lJson);
  Janua.Core.JSON.JsonValue(vTest as TJsonObject, 'pagination', vTest2);
  sTest := vTest2.ToJSON;

  LDestination.asJson := lJson;
  Assert.IsTrue(LDestination.ContentEquals(LOrigin), 'LDestination.ContentEquals');
  Assert.AreEqual(LOrigin.Page, LDestination.Page, 'LDestination.Page');
  Assert.AreEqual(LOrigin.PageSize, LDestination.PageSize, 'LDestination.PageSize');
  Assert.AreEqual(LOrigin.HasPagination, LDestination.HasPagination, 'LDestination.HasPagination');

  lJson := LOrigin.AsBase64Url;
  LDestination.AsBase64Url := lJson;

  Assert.IsTrue(LDestination.ContentEquals(LOrigin), 'LDestination.ContentEquals');
  Assert.AreEqual(LOrigin.Page, LDestination.Page, 'LDestination.Page');
  Assert.AreEqual(LOrigin.PageSize, LDestination.PageSize, 'LDestination.PageSize');
  Assert.AreEqual(LOrigin.HasPagination, LDestination.HasPagination, 'LDestination.HasPagination');
end;

procedure TOrmTest.MegaTest;
var
  aRecord, bRecord, cRecord: IJanuaRecord;
  aRecordSet, bRecordSet, cRecordSet, dRecordSet: IJanuaRecordSet;
  i, j, k: integer;
  t1, t2: integer; // variabili di Test ....
  tmp: string;
  vTest: TJsonObject;
begin
  aRecord := Janua.Orm.Impl.TJanuaOrmFactory.CreateRecord('test');
  j := 0;
  i := aRecord.AddField(TJanuaOrmFactory.CreateIntegerField('int', 'int'));
  Inc(j);
  i := aRecord.AddField(TJanuaOrmFactory.CreateExtentedField('ext', 'ext'));
  Inc(j);
  i := aRecord.AddField(TJanuaOrmFactory.CreateStringField('str', 'str'));
  Inc(j);
  i := aRecord.AddField(TJanuaOrmFactory.CreateDateTimeField('dat', 'dat'));
  Inc(j);

  cRecord := Janua.Orm.Impl.TJanuaOrmFactory.CreateRecord('sub');
  i := cRecord.AddField(TJanuaOrmFactory.CreateIntegerField('int', 'int'));
  i := cRecord.AddField(TJanuaOrmFactory.CreateExtentedField('ext', 'ext'));
  i := cRecord.AddField(TJanuaOrmFactory.CreateStringField('str', 'str'));
  i := cRecord.AddField(TJanuaOrmFactory.CreateDateTimeField('dat', 'dat'));

  cRecordSet := aRecord.AddRecordSet(TJanuaOrmFactory.CreateRecordset('subset', cRecord));
  k := aRecord.RecordSets.Count - 1;
  t1 := aRecord.RecordSetIndex;
  Assert.IsTrue(k = t1, 'TfrmFmxDesktopMain.OrmCreation k <> RecordSetIndex, t1=' + t1.ToString);
  t2 := Pred(aRecord.RecordSetCount);
  Assert.IsTrue(k = t2, 'TfrmFmxDesktopMain.OrmCreation k <> Pred(aRecord.RecordSetCount) t2=' + t2.ToString);

  aRecordSet := TJanuaOrmFactory.CreateRecordset('set', aRecord);
  aRecordSet.Append;
  aRecordSet.CurrentRecord.FieldByName('int').Value := 100;
  aRecordSet.CurrentRecord.FieldByName('ext').Value := 1234.12345;
  aRecordSet.CurrentRecord.FieldByName('str').Value := 'ciao';
  aRecordSet.CurrentRecord.FieldByName('dat').Value := now();
  aRecordSet.CurrentRecord.RecordSets[k].Append;
  aRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('int').Value := 100;
  aRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('int').Value := 100;
  aRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('ext').Value := 1234.12345;
  aRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('str').Value := 'ciao';
  aRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('dat').Value := now();
  aRecordSet.CurrentRecord.RecordSets[k].Post;
  aRecordSet.CurrentRecord.RecordSets[k].Append;
  aRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('int').Value := 100;
  aRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('int').Value := 100;
  aRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('ext').Value := 1234.12345;
  aRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('str').Value := 'ciao';
  aRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('dat').Value := now();
  aRecordSet.CurrentRecord.RecordSets[k].Post;
  t1 := aRecordSet.CurrentRecord.RecordSets[k].RecordCount;
  Assert.IsTrue(t1 = 2, 'aRecordSet.CurrentRecord.RecordSets[k] <> 2; t1 = ' + t1.ToString);
  aRecordSet.Post;

  for i := 0 to Pred(j) do
    tmp := aRecordSet.CurrentRecord.Fields[i].Key + ': ' + aRecordSet.CurrentRecord.Fields[i].AsString;

  bRecord := Janua.Orm.Impl.TJanuaOrmFactory.CreateRecord('test');
  j := 0;
  i := bRecord.AddField(TJanuaOrmFactory.CreateIntegerField('int', 'int'));
  Inc(j);
  i := bRecord.AddField(TJanuaOrmFactory.CreateExtentedField('ext', 'ext'));
  Inc(j);
  i := bRecord.AddField(TJanuaOrmFactory.CreateStringField('str', 'str'));
  Inc(j);
  i := bRecord.AddField(TJanuaOrmFactory.CreateDateTimeField('dat', 'dat'));
  Inc(j);

  dRecordSet := bRecord.AddRecordSet(TJanuaOrmFactory.CreateRecordset('subset', cRecord));
  k := Pred(bRecord.RecordSets.Count);
  Assert.IsTrue(k = bRecord.RecordSetIndex, 'TfrmFmxDesktopMain.OrmCreation k(' + k.ToString +
    ') <> RecordSetIndex(' + bRecord.RecordSetIndex.ToString + ')');
  Assert.IsTrue(k = Pred(bRecord.RecordSetCount),
    'TfrmFmxDesktopMain.OrmCreation k <> Pred(aRecord.RecordSetCount)');

  bRecordSet := TJanuaOrmFactory.CreateRecordset('test', bRecord);
  bRecordSet.Append;
  bRecordSet.CurrentRecord.FieldByName('int').Value := 100;
  bRecordSet.CurrentRecord.FieldByName('ext').Value := 1234.12345;
  bRecordSet.CurrentRecord.FieldByName('str').Value := 'ciao';
  bRecordSet.CurrentRecord.FieldByName('dat').Value := now();
  // Primo Record
  bRecordSet.CurrentRecord.RecordSets[k].Append;
  bRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('int').Value := 100;
  bRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('int').Value := 100;
  bRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('ext').Value := 1234.12345;
  bRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('str').Value := 'ciao';
  bRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('dat').Value := now();
  bRecordSet.CurrentRecord.RecordSets[k].Post;
  // Secondo Reocrd
  bRecordSet.CurrentRecord.RecordSets[k].Append;
  bRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('int').Value := 99;
  bRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('int').Value := 99;
  bRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('ext').Value := 54321.54321;
  bRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('str').Value := 'notte';
  bRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('dat').Value := now() - 1;
  bRecordSet.CurrentRecord.RecordSets[k].Post;
  bRecordSet.Post;
  Assert.IsTrue(bRecordSet.RecordCount = 1, 'aRecordset non ha conteggio = 1 ma ' +
    bRecordSet.RecordCount.ToString);
  t2 := bRecordSet.CurrentRecord.RecordSets[k].RecordCount;
  Assert.IsTrue(t2 = 2, 'bRecordSet.CurrentRecord.RecordSets[k] non ha conteggio = 2, ma ' + t2.ToString);
  vTest := (bRecordSet.CurrentRecord.AsJsonObject);
  vTest.Free;
  vTest := bRecordSet.AsJsonObject;
  vTest.Free;

  bRecordSet.Clear;
  Assert.IsTrue(bRecordSet.RecordCount = 0, 'aRecordset non ha conteggio = 0');

  aRecord.Clear;
  t1 := aRecord.RecordSets[k].RecordCount;
  Assert.IsTrue(t1 = 0, 'aRecord.RecordSets[k] non ha conteggio = 0 ma vale: ' + t1.ToString);
  t2 := aRecord.RecordSets[k].CurrentRecord.FieldByName('int').AsInteger;
  Assert.IsTrue(t2 = 0, 'aRecord.RecordSets[k].CurrentRecord.Field(int) non ha valore = 0, t2=' +
    t2.ToString);

  // inizializzo bRecord
  bRecord.FieldByName('int').Value := 100;
  bRecord.FieldByName('ext').Value := 1234.12345;
  bRecord.FieldByName('str').Value := 'ciao';
  bRecord.FieldByName('dat').Value := now();
  // Testo 1 sub Record
  bRecord.RecordSets[k].Append;
  bRecord.RecordSets[k].CurrentRecord.FieldByName('int').Value := 100;
  bRecord.RecordSets[k].CurrentRecord.FieldByName('int').Value := 100;
  bRecord.RecordSets[k].CurrentRecord.FieldByName('ext').Value := 1234.12345;
  bRecord.RecordSets[k].CurrentRecord.FieldByName('str').Value := 'ciao';
  bRecord.RecordSets[k].CurrentRecord.FieldByName('dat').Value := now();
  bRecord.RecordSets[k].Post;
  // Testo 2 Sub Record
  bRecord.RecordSets[k].Append;
  bRecord.RecordSets[k].CurrentRecord.FieldByName('int').Value := 99;
  bRecord.RecordSets[k].CurrentRecord.FieldByName('int').Value := 99;
  bRecord.RecordSets[k].CurrentRecord.FieldByName('ext').Value := 54321.54321;
  bRecord.RecordSets[k].CurrentRecord.FieldByName('str').Value := 'notte';
  bRecord.RecordSets[k].CurrentRecord.FieldByName('dat').Value := now() - 1;
  bRecord.RecordSets[k].Post;
  t1 := bRecord.RecordSets[k].RecordCount;
  Assert.IsTrue(t1 = 2, 'bRecord.RecordSets[k] non ha conteggio = 2 ma vale: ' + t1.ToString);
  bRecord.RecordSets[k].First;
  t1 := bRecord.RecordSets[k].CurrentRecord.FieldByName('int').AsInteger;
  Assert.IsTrue(t1 = 100, 'bRecord.RecordSets[k].CurrentRecord.Field(int) non ha valore = 100, t1=' +
    t1.ToString);

  vTest := bRecord.AsJsonObject;
  vTest.Free;

  // Azzero aRecordSet
  aRecordSet.Clear;
  // verifico che record Count = 0
  Assert.IsTrue(aRecordSet.RecordCount = 0, 'aRecordset non ha conteggio = 0');

  // Verifico il record aREcord prima di Inserirlo che non si sa mai  ................................................
  t1 := bRecord.RecordSets[k].RecordCount;
  Assert.IsTrue(t1 = 2, 'bRecord.RecordSets[k] non ha conteggio = 2 ma vale: ' + t1.ToString);
  bRecord.RecordSets[k].First;
  t1 := bRecord.RecordSets[k].CurrentRecord.FieldByName('int').AsInteger;
  Assert.IsTrue(t1 = 100, 'bRecord.RecordSets[k].CurrentRecord.Field(int) non ha valore = 100, t1=' +
    t1.ToString);
  t2 := bRecord.FieldByName('int').AsInteger;
  Assert.IsTrue(t2 = 100, 'bRecord.FieldByName(int) non ha valore = 100, t2=' + t2.ToString);

  // inserisco 1 aRecord
  aRecordSet.Append(bRecord);
  // inserisco 2 aRecord
  aRecordSet.Append(bRecord);
  // verifico che record Count = 2
  Assert.IsTrue(aRecordSet.RecordCount = 2, 'aRecordset non ha conteggio = 2');
  t1 := aRecordSet.RecordCount;
  vTest := aRecordSet.AsJsonObject;
  bRecordSet.AsJsonObject := vTest;
  t2 := bRecordSet.RecordCount;
  Assert.AreEqual(t1, t2, 'b and a Recordset do not match Record Count: ' + t1.ToString + ' - ' +
    t2.ToString);
  vTest.Free;
  t1 := 0;
  t2 := 0;

  tmp := aRecordSet.ToJSON;

  t1 := aRecordSet.CurrentRecord.RecordSetCount;
  t2 := bRecordSet.CurrentRecord.RecordSetCount;

  Assert.AreEqual(t1, t2, 'aRecordSet vs bRecordSet RecordSetCount: ' + t1.ToString + ' - ' + t2.ToString);

  Assert.IsTrue(tmp <> '', 'Tmp is empty');
  Assert.IsTrue(tmp <> '{}', 'Tmp is empty');

  // bRecordSet.ReadFromJson(tmp);
  bRecordSet.AsJsonObject := aRecordSet.AsJsonObject;

  aRecordSet.First;
  bRecordSet.First;

  t1 := aRecordSet.CurrentRecord.RecordSets[0].RecordCount;
  t2 := bRecordSet.CurrentRecord.RecordSets[0].RecordCount;

  Assert.AreEqual(t1, t2, 'aRecordSet vs bRecordSet RecordSets[0].RecordCount: ' + t1.ToString + ' - ' +
    t2.ToString);
end;

procedure TOrmTest.NestedRecordSet;
var
  aRecordSet, aNestedRecordSet: IJanuaRecordSet;
  aTestRecordSet, aTestNestedRecordSet: Janua.Orm.Test.Intf.IJanuaTestRecordSet;
  aNestedRecord: Janua.Orm.Intf.IJanuaRecord;
  aTestNestedRecord: Janua.Orm.Test.Intf.IJanuaTestNestedRecord;

  aSubRecordSet: Janua.Orm.Test.Intf.IJanuaTestSubRecordSet;

  i, j: integer;
begin
  // VirtualTable1
  // aNestedRecord := TJanuaTestNestedRecord{IJanuaTestNestedRecord}.Create('nested');

  Assert.IsTrue(TJanuaOrmFactory.TryGetRecordIntf(IJanuaTestNestedRecord, aTestNestedRecord, 'nested'),
    'TryGetRecordSetIntf(IJanuaTestNestedRecord)');

  Assert.IsTrue(Supports(aTestNestedRecord, IJanuaRecord, aNestedRecord),
    'Supports(aTestNestedRecord, IJanuaRecord)');

  // Creo un sub RecorodSet ....................................................................
  // aSubRecordSet := TJanuaNestedFactory.CreateSubRecordset('sub', 'VirtualTable2');
  Assert.IsTrue(TJanuaOrmFactory.TryGetRecordSetIntf(IJanuaTestSubRecordSet, 'sub', nil, nil, aSubRecordSet),
    'TryGetRecordSetIntf(IJanuaTestSubRecordSet)');

  aTestNestedRecord.SubRecordSet := aSubRecordSet;
  // Assert.AreEqual(0, aTestNestedRecord.SubRecordSet.RecordCount );

  aTestNestedRecord.TestInteger.AsInteger := 100;
  aTestNestedRecord.TestString.AsString := 'ciao';
  aTestNestedRecord.TestDateTime.AsDateTime := now();
  aTestNestedRecord.TestBoolean.AsBoolean := True;
  aTestNestedRecord.TestDouble.AsFloat := 12345.12345;

  Assert.AreEqual(100, aTestNestedRecord.TestInteger.AsInteger);
  aTestNestedRecord.StoreDataset := dmTest.jdsVirtualTable1;
  Assert.IsTrue(aTestNestedRecord.IsMappedDataset(dmTest.jdsVirtualTable1.Dataset));
  aTestNestedRecord.RecordSets[0].CurrentRecord.StoreDataset := dmTest.jdsVirtualTable2;
  // Carica i Dati dai Dataset Assegnati ................................................
  aTestNestedRecord.LoadFromDataset;
  Assert.AreEqual(dmTest.vtMasterIntField.AsInteger, aTestNestedRecord.TestInteger.AsInteger);
  Assert.AreEqual(dmTest.vtMasterStringField.AsString, aTestNestedRecord.TestString.AsString);

  // aRecordSet := TJanuaNestedFactory.CreateRecordset('testTable', 'VirtualTable1');
  Assert.IsTrue(TJanuaOrmFactory.TryGetRecordSetIntf(IJanuaTestRecordSet, 'testTable', nil, nil, aRecordSet),
    'TryGetRecordSetIntf(IJanuaTestSubRecordSet)');

  // aSubRecordSet := TJanuaNestedFactory.CreateSubRecordset('sub', 'VirtualTable2');
  Assert.IsTrue(TJanuaOrmFactory.TryGetRecordSetIntf(IJanuaTestSubRecordSet, 'sub', nil, nil, aSubRecordSet),
    'TryGetRecordSetIntf(IJanuaTestSubRecordSet)');

  aRecordSet.CurrentRecord.AddRecordSet(aSubRecordSet);
  Assert.AreEqual('testTable', aRecordSet.Name);
  Assert.AreEqual('subset', aRecordSet.CurrentRecord.RecordSets[0].Name);
  aRecordSet.Clear;
  Assert.AreEqual(0, aRecordSet.RecordCount);
  aRecordSet.CurrentRecord.StoreDataset := dmTest.jdsVirtualTable1;
  aRecordSet.CurrentRecord.RecordSets[0].CurrentRecord.StoreDataset := dmTest.jdsVirtualTable2;
  Assert.IsTrue(aRecordSet.CurrentRecord.IsMappedDataset(dmTest.jdsVirtualTable1.Dataset));
  aRecordSet.LoadFromDataset;
  Assert.AreEqual(4, aRecordSet.RecordCount);
  aRecordSet.CurrentRecord.UnMapDatasets;
  Assert.IsFalse(aRecordSet.CurrentRecord.IsMappedDataset(dmTest.jdsVirtualTable1.Dataset));
end;

procedure TOrmTest.NestedTest;
var
  // TJanuaTestNestedsSubRecord = class(TJanuaRecord, IJanuaTestNestedRecord, IJanuaTestNestedSubRecord)
  a: IJanuaTestNestedSubRecord;
begin
  a := TJanuaTestNestedsSubRecord.Create('TestS');
  Assert.AreEqual(2, a.RecordCount, 'Record Count not 2');
  {
    a.NewRecord;
    Assert.IsTrue(a.IsNewRecord, 'Record Seems to be Modified instead is NewRecord');
    Assert.IsFalse(a.Modified, 'Record Seems to be Modified instead is NewRecord');
  }
end;

procedure TOrmTest.ParamsFilterText;
var
  lParams: IJanuaParams;
  lParam: IJanuaField;
  lTmp, lExpected: string;
begin
  lParams := TJanuaParams.Create;

  lParam := lParams.AddParam('campo1', TJanuaFieldType.jptString, 'BELIN');
  lParam.ParamOperator := TJanuaOperator.Equals;
  lParam.Activate;

  Assert.IsTrue(lParam.Active, 'lParam.Active');

  lParam := lParams.AddParam('campo2', TJanuaFieldType.jptInteger, 100);
  lParam.ParamOperator := TJanuaOperator.LessThan;
  lParam.Activate;

  Assert.IsTrue(lParam.Active, 'lParam.Active');

  lParams.Activate;

  Assert.IsTrue(lParams.Active, 'lParams.Active');

  lTmp := lParams.FilterText;
  lExpected := 'campo1 = ' + QuotedStr('BELIN') + ' and campo2 < 100';

  Assert.AreEqual(lExpected, lTmp);

  lParam := lParams.AddParam('campo3', TJanuaFieldType.jptString, 'ELI');
  lParam.ParamOperator := TJanuaOperator.LikeLower;
  lParam.Activate;

  lTmp := lParams.FilterText;
  lExpected := lExpected + ' and campo3 like ' + QuotedStr('%' + 'eli' + '%');
  Assert.AreEqual(lExpected, lTmp);
end;

procedure TOrmTest.RecordSet;
var
  aRecord, bRecord: IJanuaRecord;
  aRecordSet, bRecordSet: IJanuaRecordSet;
  i, j, t: integer;
  tmp: string;
  tmpj: TJsonObject;
begin
  aRecord := Janua.Orm.Impl.TJanuaOrmFactory.CreateRecord('test');
  j := 0;
  i := aRecord.AddField(TJanuaOrmFactory.CreateIntegerField('int', 'int'));
  Inc(j);
  i := aRecord.AddField(TJanuaOrmFactory.CreateExtentedField('ext', 'ext'));
  Inc(j);
  i := aRecord.AddField(TJanuaOrmFactory.CreateStringField('str', 'str'));
  Inc(j);
  i := aRecord.AddField(TJanuaOrmFactory.CreateDateTimeField('dat', 'dat'));
  Inc(j);

  aRecordSet := TJanuaOrmFactory.CreateRecordset('test', aRecord);
  Assert.AreEqual('test', aRecordSet.Name);

  aRecordSet.Append;
  Assert.AreEqual(1, aRecordSet.RecordCount);

  aRecordSet.CurrentRecord.FieldByName('int').Value := 100;
  aRecordSet.CurrentRecord.FieldByName('ext').Value := 1234.12345;
  aRecordSet.CurrentRecord.FieldByName('str').Value := 'ciao';
  aRecordSet.CurrentRecord.FieldByName('dat').Value := now();

  Assert.AreEqual(4, aRecordSet.CurrentRecord.FieldCount);

  aRecordSet.Post;
  Assert.AreEqual(1, aRecordSet.RecordCount);

  for i := 0 to aRecordSet.CurrentRecord.FieldCount - 1 do
    tmp := aRecordSet.CurrentRecord.Fields[i].Key + ': ' + aRecordSet.CurrentRecord.Fields[i].AsString;

  tmp := aRecordSet.AsJsonObject.ToJSON;
  tmpj := aRecordSet.AsJsonObject;

  bRecord := Janua.Orm.Impl.TJanuaOrmFactory.CreateRecord('test');

  j := 0;
  i := bRecord.AddField(TJanuaOrmFactory.CreateIntegerField('int', 'int'));
  Inc(j);
  i := bRecord.AddField(TJanuaOrmFactory.CreateExtentedField('ext', 'ext'));
  Inc(j);
  i := bRecord.AddField(TJanuaOrmFactory.CreateStringField('str', 'str'));
  Inc(j);
  i := bRecord.AddField(TJanuaOrmFactory.CreateDateTimeField('dat', 'dat'));
  Inc(j);

  bRecordSet := TJanuaOrmFactory.CreateRecordset('test', bRecord);
  bRecordSet.Append;
  bRecordSet.CurrentRecord.FieldByName('int').Value := 100;
  bRecordSet.CurrentRecord.FieldByName('ext').Value := 1234.12345;
  bRecordSet.CurrentRecord.FieldByName('str').Value := 'ciao';
  bRecordSet.CurrentRecord.FieldByName('dat').Value := now();
  bRecordSet.Post;

  bRecord.Clear;
  bRecord.FieldByName('int').Value := 100;
  Assert.AreEqual(bRecord.FieldByName('int').AsInteger, 100, 'aRecord Before (int)');
  aRecordSet.Append(bRecord);
  Assert.AreEqual(bRecord.FieldByName('int').AsInteger, 100, 'aRecord  After(int) Error');
  Assert.AreEqual(bRecord.FieldByName('int').AsInteger, aRecordSet.CurrentRecord.FieldByName('int').AsInteger,
    'aRecord  vs CurrentRecord');
  Assert.AreEqual(2, aRecordSet.RecordCount);

  aRecordSet.Append(bRecord);
  Assert.AreEqual(3, aRecordSet.RecordCount);

  aRecordSet.First;
  j := 0;
  i := 0;
  while not aRecordSet.Eof do
  begin
    Inc(i);
    t := aRecordSet.CurrentRecord.FieldByName('int').AsInteger;
    Assert.AreEqual(100, t, 'i = ' + i.ToString);
    Inc(j, aRecordSet.CurrentRecord.FieldByName('int').AsInteger);
    aRecordSet.Next;
  end;
  Assert.AreEqual(3, i, 'aRecordSet i and 3 loops are not equal');
  Assert.AreEqual(300, j, 'aRecordSet j and 300 are not equal');

  bRecordSet.AsJsonObject := aRecordSet.AsJsonObject;

  Assert.AreEqual(3, bRecordSet.RecordCount);
  bRecordSet.First;
  j := 0;
  while not bRecordSet.Eof do
  begin
    Inc(j, bRecordSet.CurrentRecord.FieldByName('int').AsInteger);
    bRecordSet.Next;
  end;
  Assert.AreEqual(300, j, 'bRecordSet j and 300 are not equal');

  tmpj.Free;
end;

initialization

TDUnitX.RegisterTestFixture(TOrmTest);

end.
