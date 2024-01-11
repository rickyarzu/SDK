unit unitTestCoreTypes;

interface

uses
  DUnitX.TestFramework,
  Janua.Core.Types;

type
  TTest = class
    Data: string;
    destructor Destroy; override;
  end;

type

  [TestFixture]
  TTestJanuaCoreTypesObject = class(TObject)
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    [Test]
    procedure SmartObject;
    [Test]
    procedure JanuaBlob;
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

procedure TTestJanuaCoreTypesObject.JanuaBlob;
var
  aBlob, bBlob: TJanuaBlob;
  aFilename: string;
  aInteger: Integer;
  aSmallint: SmallInt;
  aLargeInt: Int64;
begin
  aBlob.Create(sGitHubHome + '\SDK\Testing\res\images\logo.jpg');
  Assert.IsTrue(aBlob.size > 0, 'aBlob.size = 0');
  aFilename := FormatDateTime('yymmddhhnn', now) + '.jpg';
  aBlob.SaveToFile(sGitHubHome + '\SDK\Testing\res\images\' + aFilename);
  Assert.IsTrue(FileExists(sGitHubHome + '\SDK\Testing\res\images\' + aFilename),
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
