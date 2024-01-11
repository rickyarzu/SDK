unit unitTestJanuaApplication;


interface

uses
  DUnitX.TestFramework, System.Classes, Janua.Core.Classes;

type

  ITestIntf = interface
    ['{E9BFBD32-2021-404F-B926-7BCF4A7245F1}']
    function GetSTring: string;
    procedure SetString(const Value: string);
    property TestString: string read GetSTring write SetString;
  end;

  TTEstIntf = class(TJanuaInterfacedObject, ITestIntf)
  private
    FString: string;
  protected
    function GetSTring: string;
    procedure SetString(const Value: string);
  end;

  [TestFixture]
  TJanuaAppTest = class
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Test with TestCase Attribute to supply parameters.
    [Test]
    [TestCase('TestA', 'TestA,TestA,2')]
    [TestCase('TestB', 'TestB,TestB,4')]
    procedure TestRecord(const aTitle, aApplication: string; aIconIndex: Integer);
    [Test]
    procedure TestRecordMock;
    // Test with TestCase Attribute to supply parameters.
    [Test]
    [TestCase('TestA', 'TestA,Test A,2')]
    [TestCase('TestB', 'TestB,Test B,4')]
    procedure TestApplication(const aName, aTitle: string; const AIcon: Integer);
    [Test]
    [TestCase('Test -1', 'TNotExists,-1')]
    [TestCase('Test 0', 'TJanuaMockContainer,0')]
    procedure TestApplicationRecord(const aClassName: string; aFound: Integer);
    [Test]
    procedure TestApplicationRecordFound;
    [Test]
    procedure TestApplicationTree;
    [Test]
    procedure TestApplicationTreeRecord;
    [Test]
    procedure TestJanuaFormsApplication; // TJanuaFormsApplication
    [Test]
    procedure TestApplicationFrame;
    [Test]
    procedure TestRegisterClass;
    [Test]
    procedure TestGetInterfacedObject;
    [Test]
    procedure TestTryGetInterface;
    [Test]
    procedure TestRegisterDataModule;
    [Test]
    procedure TestGetDataModule;
    [Test]
    procedure TestTryGetDataModule;
    [Test]
    procedure TestRegisterComponent;
    [Test]
    procedure TestGetComponent;
    [Test]
    procedure TestTryGetComponent;
  end;

implementation

uses
  System.Types,  Janua.Test.ViewModel.Intf,
  Janua.Controls.Forms.Impl, Janua.Mock.Container, Janua.Controls.Forms.Intf, uframeTest,
  Janua.Application.Framework, ufrmTest, System.SysUtils, Janua.Test.FireDac.dmVirtual;

procedure TJanuaAppTest.Setup;
begin
end;

procedure TJanuaAppTest.TearDown;
begin
  try
  except
    on E: Exception do
      RaiseException('TearDown', E, self);

  end;
end;

procedure TJanuaAppTest.TestApplication(const aName, aTitle: string; const AIcon: Integer);
var
  lApplication: TJanuaApplicationRecord;
begin
  lApplication := TJanuaApplicationRecord.Create(aName, aTitle, 1, nil);

  Assert.AreEqual(lApplication.Name, aName);
  Assert.AreEqual(lApplication.IconIndex, 1);
end;

procedure TJanuaAppTest.TestApplicationFrame;
var
  lApplication: TJanuaApplicationRecord;
begin
  lApplication := TJanuaApplicationRecord.Create('TestFrame', 'Title Frame', 1, TframeTest);

  Assert.IsTrue(lApplication.isFrame, 'lApplication is not a Frame');
end;

procedure TJanuaAppTest.TestApplicationRecord(const aClassName: string; aFound: Integer);
var
  lOwner: TComponent;
  lTestRecord: TJanuaFormRecord;
  lRecord: TJanuaFormRecord;
  lApplication: TJanuaApplicationRecord;
  lContainer: IJanuaContainer;
begin
  lRecord := TJanuaFormRecord.Create('Test', 'Test', 1, TJanuaMockContainer, GUID_NULL);
  // TJanuaMockContainer
  lApplication := TJanuaApplicationRecord.Create('Application', 'Applicazione', 1, nil);

  lApplication.AddForm(lRecord);

  Assert.AreEqual(lApplication.FindForm(aClassName, lTestRecord), aFound);

  if aFound = 0 then
  begin
    lOwner := TComponent.Create(nil);
    try // TJanuaMockContainer
      lContainer := lTestRecord.CreateForm(lOwner);
      Assert.IsNotNull(lContainer);
    finally
      lOwner.Free;
    end;
  end;
end;

procedure TJanuaAppTest.TestApplicationRecordFound;
var
  lOwner: TComponent;
  lTestRecord: TJanuaFormRecord;
  lRecord: TJanuaFormRecord;
  lApplication: TJanuaApplicationRecord;
begin
  lRecord := TJanuaFormRecord.Create('Test', 'Test', 1, TJanuaMockContainer, GUID_NULL);
  // TJanuaMockContainer
  lApplication := TJanuaApplicationRecord.Create('Application', 'Applicazione', 1, nil);

  lApplication.AddForm(lRecord);
  Assert.AreEqual(lApplication.FindForm(TComponent, lTestRecord), -1);
  Assert.AreEqual(lApplication.FindForm(TJanuaMockContainer, lTestRecord), 0);

  lOwner := TComponent.Create(nil);
  try // TJanuaMockContainer
    var
      lContainer: IJanuaContainer := lTestRecord.CreateForm(lOwner);
    Assert.IsNotNull(lContainer);
  finally
    lOwner.Free;
  end;

end;

procedure TJanuaAppTest.TestApplicationTree;
begin
  var
    lApplication: TJanuaApplicationRecord := TJanuaApplicationRecord.Create('root', 'Root', 1, nil);

  var
    lApplication1: TJanuaApplicationRecord := TJanuaApplicationRecord.Create('leaf1', 'Leaf 1', 1, nil);

  Assert.AreEqual('leaf1', lApplication1.Name);

  lApplication.AddApplication(lApplication1);

  var
    tmpApplication: TJanuaApplicationRecord;

  Assert.IsTrue(lApplication.FindApplication(lApplication1.Name, tmpApplication),
    'lApplication1: ' + lApplication1.Name);

  Assert.AreEqual(tmpApplication.Title, lApplication1.Title);

  var
    lApplication2: TJanuaApplicationRecord := TJanuaApplicationRecord.Create('leaf2', 'Leaf 2', 2, nil);

  Assert.AreEqual('leaf2', lApplication2.Name);

  lApplication.AddApplication(lApplication2);

  Assert.IsTrue(lApplication.FindApplication(lApplication2.Name, tmpApplication));

  Assert.AreEqual(tmpApplication.Title, lApplication2.Title);

end;

procedure TJanuaAppTest.TestApplicationTreeRecord;
begin
  var
    lApplication: TJanuaApplicationRecord := TJanuaApplicationRecord.Create('root', 'Root', 1, nil);

  var
    lApplication1: TJanuaApplicationRecord := TJanuaApplicationRecord.Create('leaf1', 'Leaf 1', 1, nil);

  lApplication.AddApplication(lApplication1);

  var
    tmpApplication: TJanuaApplicationRecord;

  Assert.IsTrue(lApplication.FindApplication(lApplication1.Name, tmpApplication),
    'lApplication1: ' + lApplication1.Name);

  Assert.AreEqual(tmpApplication.Title, lApplication1.Title);

  var
    lApplication2: TJanuaApplicationRecord := TJanuaApplicationRecord.Create('leaf2', 'Leaf 2', 2, nil);

  Assert.AreEqual('leaf2', lApplication2.Name);

  lApplication.AddApplication(lApplication2);

  Assert.IsTrue(lApplication.FindApplication(lApplication2.Name, tmpApplication));

  Assert.AreEqual(tmpApplication.Title, lApplication2.Title);
end;

procedure TJanuaAppTest.TestGetComponent;
var
  LObj: TComponent;
  LIntf: ITestDMComponent;
  LBool: boolean;
  aContainer: TComponent;
begin
  // TJanuaApplicationFactory.RegisterClass(ITestIntf, TTEstIntf);
  // Assert.Pass('Error Registering (ITEstIntf, TTEstIntf)');
  aContainer := TComponent.Create(nil);
  try
    LBool := TJanuaApplicationFactory.GetComponent(ITestDMComponent, aContainer, LObj);
    Assert.IsTrue(LBool, 'GetDataModule(ITestIntf, aContainer, LObj)');
    if LBool then
      LBool := Supports(LObj, ITestDMComponent, LIntf);
    Assert.IsTrue(LBool, 'Support (LObj, ITestFunctionsDataset, LIntf)');
  finally
    aContainer.Free
  end;

end;

procedure TJanuaAppTest.TestGetDataModule;
var
  LObj: TDataModule;
  LIntf: ITestFunctionsDataset;
  LBool: boolean;
  aContainer: TComponent;
begin
  // TJanuaApplicationFactory.RegisterClass(ITestIntf, TTEstIntf);
  // Assert.Pass('Error Registering (ITEstIntf, TTEstIntf)');
  aContainer := TComponent.Create(nil);
  try
    LBool := TJanuaApplicationFactory.GetDataModule(ITestFunctionsDataset, aContainer, LObj);
    Assert.IsTrue(LBool, 'GetDataModule(ITestIntf, aContainer, LObj)');
    if LBool then
      LBool := Supports(LObj, ITestFunctionsDataset, LIntf);
    Assert.IsTrue(LBool, 'Support (LObj, ITestFunctionsDataset, LIntf)');
  finally
    aContainer.Free
  end;

end;

procedure TJanuaAppTest.TestGetInterfacedObject;
var
  LObj: TInterfacedObject;
  LIntf: ITestIntf;
  LBool: boolean;
begin
  // TJanuaApplicationFactory.RegisterClass(ITestIntf, TTEstIntf);
  // Assert.Pass('Error Registering (ITEstIntf, TTEstIntf)');
  LBool := TJanuaApplicationFactory.GetInterfacedObject(ITestIntf, [], LObj);
  Assert.IsTrue(LBool);
  if LBool then
    LBool := Supports(LObj, ITestIntf, LIntf);
  Assert.IsTrue(LBool, 'Support (LObj, ITestIntf, LIntf)');
end;

procedure TJanuaAppTest.TestJanuaFormsApplication;
var
  aForm: TJanuaFormRecord;
begin
  TJanuaFormsApplication.Applications.Clear;

  var
    lApplication: TJanuaApplicationRecord := TJanuaApplicationRecord.Create('root', 'Root', 1, nil);
  var
    lApplication1: TJanuaApplicationRecord := TJanuaApplicationRecord.Create('leaf1', 'Leaf 1', 1, nil);
  lApplication.AddApplication(lApplication1);
  var
    tmpApplication: TJanuaApplicationRecord;
  var
    lApplication2: TJanuaApplicationRecord := TJanuaApplicationRecord.Create('leaf2', 'Leaf 2', 2, nil);

  lApplication2.AddForm(TJanuaFormRecord.Create('FormTest', lApplication2.Name, 2, TfrmTest, GUID_NULL));

  Assert.AreEqual(0, lApplication2.FindForm('TfrmTest', aForm), 'lApplication2.FindForm(TfrmTest)');
  Assert.AreEqual(-1, lApplication2.FindForm('TfrmErrorTest', aForm),
    'lApplication2.FindForm(TfrmErrorTest)');

  lApplication.AddApplication(lApplication2);

  TJanuaFormsApplication.RegisterApplication(lApplication);

  Assert.AreEqual(TJanuaFormsApplication.Applications.Count, 1);

  var
    lApplication3: TJanuaApplicationRecord := TJanuaApplicationRecord.Create('App1', 'App 1', 1, TframeTest);

  TJanuaFormsApplication.RegisterApplication(lApplication3);

  Assert.AreEqual(TJanuaFormsApplication.Applications.Count, 2);

  Assert.IsTrue(TJanuaFormsApplication.FindForm('TFrmTest', aForm), 'FindForm(TFrmTest)');

end;

procedure TJanuaAppTest.TestRecord(const aTitle, aApplication: string; aIconIndex: Integer);
begin
  Assert.WillRaise(
    procedure
    var
      lRecord: TJanuaFormRecord;
    begin
      lRecord := TJanuaFormRecord.Create(aTitle, aApplication, aIconIndex, nil, GUID_NULL);
    end, // procedure that will raise an exception ........................................
  Exception, 'Error Record Title: ' + aTitle + ', App:' + aApplication);
end;

procedure TJanuaAppTest.TestRecordMock;
var
  lOwner: TComponent;

begin
  var
    lRecord: TJanuaFormRecord := TJanuaFormRecord.Create('Test', 'Test', 1, TJanuaMockContainer, GUID_NULL);
    // TJanuaMockContainer
  lOwner := TComponent.Create(nil);
  try
    var
      lContainer: IJanuaContainer := lRecord.CreateForm(lOwner);
    Assert.IsNotNull(lContainer);
  finally
    lOwner.Free;
  end;
end;

procedure TJanuaAppTest.TestRegisterClass;
begin
  TJanuaApplicationFactory.RegisterClass(ITestIntf, TTEstIntf);
  Assert.Pass('Error Registering (ITEstIntf, TTEstIntf)')
end;

procedure TJanuaAppTest.TestRegisterComponent;
begin
  TJanuaApplicationFactory.RegisterComponent(ITestDMComponent, TTestDataModuleComponent);
  Assert.Pass('Error Registering (ITestDMComponent, TTestDataModuleComponent)')
end;

procedure TJanuaAppTest.TestRegisterDataModule;
begin
  TJanuaApplicationFactory.RegisterDataModule(ITestFunctionsDataset, TdmFDacVirtualTest);
  Assert.Pass('Error Registering (ITestFunctionsDataset, TdmTestFunctionsDataset)')
end;

procedure TJanuaAppTest.TestTryGetComponent;
var
  LIntf: ITestDMComponent;
  LBool: boolean;
  aContainer: TComponent;
begin
  // TJanuaApplicationFactory.RegisterClass(ITestIntf, TTEstIntf);
  // Assert.Pass('Error Registering (ITEstIntf, TTEstIntf)');
  aContainer := TComponent.Create(nil);
  try
    LBool := TJanuaApplicationFactory.TryGetComponent(ITestDMComponent, aContainer, LIntf);
    Assert.IsNotNull(LIntf);
    Assert.IsTrue(LBool);
    if LBool then
    begin
      Assert.AreEqual(4, LIntf.DM.vtMaster.RecordCount);
    end;
  finally
    aContainer.Free
  end;

end;

procedure TJanuaAppTest.TestTryGetDataModule;
var
  LIntf: ITestFunctionsDataset;
  LBool: boolean;
  aContainer: TComponent;
begin
  // TJanuaApplicationFactory.RegisterClass(ITestIntf, TTEstIntf);
  // Assert.Pass('Error Registering (ITEstIntf, TTEstIntf)');
  aContainer := TComponent.Create(nil);
  try
    LBool := TJanuaApplicationFactory.TryGetDataModule(ITestFunctionsDataset, aContainer, LIntf);
    Assert.IsNotNull(LIntf);
    Assert.IsTrue(LBool);
    if LBool then
    begin
      Assert.AreEqual(4, LIntf.Table1.RecordCount);
    end;
  finally
    aContainer.Free
  end;

end;

procedure TJanuaAppTest.TestTryGetInterface;
var
  LIntf: ITestIntf;
  LBool: boolean;
begin
  // TJanuaApplicationFactory.RegisterClass(ITestIntf, TTEstIntf);
  // Assert.Pass('Error Registering (ITEstIntf, TTEstIntf)');
  LBool := TJanuaApplicationFactory.TryGetInterface(ITestIntf, LIntf);
  Assert.IsTrue(LBool);
  if LBool then
  begin
    LIntf.TestString := 'ciao';
    Assert.AreEqual('ciao', LIntf.TestString);
  end;
end;

{ TTEstIntf }

function TTEstIntf.GetSTring: string;
begin
  Result := self.FString
end;

procedure TTEstIntf.SetString(const Value: string);
begin
  FString := Value
end;

initialization

TDUnitX.RegisterTestFixture(TJanuaAppTest);

end.

