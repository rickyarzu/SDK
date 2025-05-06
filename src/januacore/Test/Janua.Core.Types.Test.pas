unit Janua.Core.Types.Test;

interface

uses
  DUnitX.TestFramework,
  Janua.Test.FireDac.dmVirtual,
  Janua.Core.Types, Janua.Cloud.Types;

type
  TTest = class
    Data: string;
    destructor Destroy; override;
  end;

type

  [TestFixture]
  TTestJanuaCoreTypesObject = class(TObject)
  public
    function CreateDataset: TdmFDacVirtualTest;
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    [Test]
    procedure SmartObject;
    [Test]
    procedure JanuaBlob;
    [Test]
    procedure JanuaArray;
    [Test]
    procedure CustomParams;
    [Test]
    procedure ServerRecordConf;
  end;

procedure TestLog(aLog: string);

implementation

uses Janua.Application.Framework, System.StrUtils, System.SysUtils;

var
  FLog: string;

procedure TestLog(aLog: string);
begin
  FLog := aLog;
end;

destructor TTest.Destroy;
begin
  TestLog('Destroyed');
  inherited;
end;

procedure WorkWithTestObj(Obj: TTest);
begin
  TestLog(Obj.Data);
end;

function TTestJanuaCoreTypesObject.CreateDataset: TdmFDacVirtualTest;
begin
  Result := TdmFDacVirtualTest.Create(nil);
end;

procedure TTestJanuaCoreTypesObject.CustomParams;
var
  Params, Params2: TRecParams;
  lDataset: TdmFDacVirtualTest;
begin
  Params.AddReplaceCustomField('key', 'value');
  Assert.IsTrue(Params.HasCustomFields);
  Assert.AreEqual('value', Params['key']);
  Params['key'] := 'new';
  Assert.AreEqual('new', Params['key']);

  Params.AddReplaceCustomField('key2', 'value2');
  Assert.AreEqual(2, Params.Count);
  Assert.AreEqual('value2', Params['key2']);
  Params['key2'] := 'new2';
  Assert.AreEqual('new2', Params['key2']);
  Params.RemoveCustomField('key2');
  Assert.AreEqual(1, Params.Count);

  lDataset := CreateDataset;
  try
    if not lDataset.fdmParams.Active then
      lDataset.fdmParams.Open;
    Params.SaveToDataset(lDataset.fdmParams);
    Assert.AreEqual(1, lDataset.fdmParams.RecordCount);
    Params2.LoadFromDataset(lDataset.fdmParams);
    Assert.AreEqual(1, Params2.Count);
    Assert.AreEqual(Params['key'], Params2['key']);
  finally
    lDataset.Free;
  end;
end;

procedure TTestJanuaCoreTypesObject.JanuaArray;
var
  sA, sB: TJanuaArray<string>;
  iA, iB: TJanuaArray<Integer>;
  rA, rB: TJanuaArray<TJanuaConfCustomField>;

begin
  (*
    property Items[Index: Integer]: T read GetItems write SetItems; default;
    property Count: Integer read GetCount;
    property HasValues: Boolean read GetHasValues;
    property ItemArray: TArray<T> read FArray;
    constructor Create(aArray: TArray<T>);
    procedure Assign(aArray: TJanuaArray<T>);
    procedure Add(aValue: T);
    procedure RemoveRecord(Index: Integer);
  *)
  sA.Items[sA.Inc] := 'uno';
  sA.Items[sA.Inc] := 'due';
  Assert.AreEqual(2, sA.Count);
  sA.Items[1] := 'tre';
  Assert.AreEqual('tre', sA[1]);
  sA.Remove(0);
  Assert.AreEqual(1, sA.Count);
  Assert.AreEqual('tre', sA[0]);
  sB := sA;
  Assert.AreEqual(sB.Count, sA.Count);

  rA.Items[rA.Inc] := TJanuaConfCustomField.Create('a', 'a');
  rA.Items[rA.Inc] := TJanuaConfCustomField.Create('b', 'b');
  Assert.AreEqual(2, rA.Count);

  var
  rTest := TJanuaConfCustomField.Create('b', 'b');
  var
  rTest2 := TJanuaConfCustomField.Create('c', 'c');

  rA.Items[1] := rTest2;
  Assert.AreEqual(rTest2, rA[1]);
  rA.Remove(0);
  Assert.AreEqual(1, rA.Count);
  Assert.AreEqual(rTest2, rA[0]);
  rB := rA;
  Assert.AreEqual(rB.Count, rA.Count);

  iA.Items[iA.Inc] := 1;
  iA.Items[iA.Inc] := 2;
  Assert.AreEqual(2, iA.Count);
  iA.Items[1] := 3;
  Assert.AreEqual(3, iA[1]);
  iA.Remove(0);
  Assert.AreEqual(1, iA.Count);
  iB := iA;
  Assert.AreEqual(iB.Count, iA.Count);
end;

procedure TTestJanuaCoreTypesObject.JanuaBlob;
var
  aBlob, bBlob: TJanuaBlob;
  aFilename: string;
  aInteger: Integer;
  aSmallint: SmallInt;
  aLargeInt: Int64;
begin
  aBlob.Create( { sGitHubHome } sJanuaHome + '\test\res\images\logo.jpg');
  Assert.IsTrue(aBlob.size > 0, 'aBlob.size = 0');
  aFilename := FormatDateTime('yymmddhhnn', now) + '.jpg';
  aBlob.SaveToFile( { sGitHubHome } sJanuaHome + '\test\res\images\' + aFilename);
  Assert.IsTrue(FileExists( { sGitHubHome } sJanuaHome + '\test\res\images\' + aFilename),
    'File ' + aFilename + ' does not exist');
  aBlob.Clear;
  aInteger := aBlob.size;
  Assert.AreEqual(0, aInteger);
  (*
    // Disabled Test
    bBlob.AsInteger := 123456;
    aInteger := bBlob.AsInteger;
    Assert.AreEqual(123456, aInteger);
  *)
end;

procedure TTestJanuaCoreTypesObject.ServerRecordConf;
begin
  var
  lConf := TJanuaServerRecordConf.Create('TestAddress');
  var
  aObject := lConf.AsJsonObject;
  var
  vTestString := aObject.ToJson;

  var
  lConf2 :=  TJanuaServerRecordConf.Create('NewAddress');

  lConf2.AsJson := vTestString;

  Assert.IsTrue(lConf.Equals(lConf2), lConf.AsJson + ' - ' + lConf2.AsJson );

end;

procedure TTestJanuaCoreTypesObject.Setup;
begin
end;

procedure TTestJanuaCoreTypesObject.SmartObject;
var
  // la variabiile oggetto è la smart reference all’oggetto TTEst
  TestObj: ISmartReference<TTest>;
begin
  TestObj := TSmartReference<TTest>.Create(TTest.Create);
  // dopo avere distrutto l’oggetto l’evento destroy deve ritornare  Destroyed come log di essere stato distrutto
  TestObj.Data := 'Anonymous methods can be pretty neat';
  WorkWithTestObj(TestObj);
  Assert.AreEqual('Anonymous methods can be pretty neat', FLog);
  TestObj := nil;
  Assert.AreEqual('Destroyed', FLog);
end;

procedure TTestJanuaCoreTypesObject.TearDown;
begin
  try
  except
    on E: Exception do
      RaiseException('TearDown', E, self);

  end;
end;

initialization

TDUnitX.RegisterTestFixture(TTestJanuaCoreTypesObject);

end.
