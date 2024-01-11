unit Janua.VCL.Classes.Test;

{$I januacore.inc}

interface

uses
  DUnitX.TestFramework, Janua.Core.Classes, {$IFDEF HAS_VCL}ufrmTest, {$ENDIF} Janua.Test.FireDac.dmVirtual;

type
  ITestInterface = interface
    ['{DB29731D-022C-436D-BA03-3F7782AD754F}']
    function GetTestInteger: integer;
    function GetTestDate: TDateTime;
    function GetTestDouble: Double;
    function GetTestString: string;
    procedure SetTestDate(const Value: TDateTime);
    procedure SetTestDouble(const Value: Double);
    procedure SetTestInteger(const Value: integer);
    procedure SetTestString(const Value: string);
    property TestString: string read GetTestString write SetTestString;
    property TestInteger: integer read GetTestInteger write SetTestInteger;
    property TestDouble: Double read GetTestDouble write SetTestDouble;
    property TestDate: TDateTime read GetTestDate write SetTestDate;
  end;

type

  TBindableTest = class(TJanuaBindableObject)
  private
    FTestInteger: integer;
    FTestDate: TDateTime;
    FTestDouble: Double;
    FTestString: string;
  protected
    procedure SetTestDate(const Value: TDateTime);
    procedure SetTestDouble(const Value: Double);
    procedure SetTestInteger(const Value: integer);
    procedure SetTestString(const Value: string);
  public
    property TestString: string read FTestString write SetTestString;
    property TestInteger: integer read FTestInteger write SetTestInteger;
    property TestDouble: Double read FTestDouble write SetTestDouble;
    property TestDate: TDateTime read FTestDate write SetTestDate;
  end;

  TBindableIntfTest = class(TJanuaInterfacedBindableObject, ITestInterface)
  private
    FTestInteger: integer;
    FTestDate: TDateTime;
    FTestDouble: Double;
    FTestString: string;
  protected
    function GetTestInteger: integer;
    function GetTestDate: TDateTime;
    function GetTestDouble: Double;
    function GetTestString: string;
    procedure SetTestDate(const Value: TDateTime);
    procedure SetTestDouble(const Value: Double);
    procedure SetTestInteger(const Value: integer);
    procedure SetTestString(const Value: string);
  end;

  TObj = class
  public
    procedure onEditChange(Sender: TObject);

  end;

  [TestFixture]
  TTestJanuaCoreClasses = class(TObject)
  private
    FdmTestFunctionsDatase: TdmVirtualTest;
    aBindableObject: TBindableTest;
    aForm: TfrmTest;
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    [Test]
    procedure VirtualTableJsonStream;
    [Test]
    procedure BindingRecord;
    [Test]
    procedure BindingFramework;
    [Test]
    procedure BindingInterfaces;
    [Test]
    procedure BindCreateDestroy;
    [Test]
    procedure JanuaCoreComponent;
  end;

var
  obj: TObj;

implementation

uses
{$IFDEF HAS_VCL}
  Vcl.Forms, Vcl.Buttons, Vcl.Controls, Vcl.StdCtrls, Janua.Vcl.Interposers, Janua.Vcl.Framework,
{$ENDIF HAS_VCL}
  System.SysUtils, System.Bindings.Helper, Janua.Application.Framework, Janua.Bindings.Impl,
  Janua.Bindings.Intf, Janua.Orm.Intf;
// Contains TBindings class;

procedure TTestJanuaCoreClasses.JanuaCoreComponent;
var
  aComponent: TJanuaCoreComponent;
begin
  aComponent := TJanuaCoreComponent.Create(aForm);
  aComponent.Activate;
  Assert.IsTrue(aComponent.Active, 'aComponent.Activate');
  aComponent.Name := 'aComponent';
  aForm.Edit1.Text := aComponent.Name;
  aComponent.Bind('Name', aForm.Edit1, 'Text');
  aComponent.Free;
  aComponent := nil;
end;

procedure TTestJanuaCoreClasses.Setup;
begin
{$IFDEF HAS_VCL}
  TJanuaVCLApplication.Initialize;
{$ENDIF HAS_VCL}
  FdmTestFunctionsDatase := TdmVirtualTest.Create(nil);
  obj := TObj.Create;
  aForm := TfrmTest.Create(nil);
  aBindableObject := TBindableTest.Create;
end;

procedure TTestJanuaCoreClasses.TearDown;
begin
  try
    if Assigned(FdmTestFunctionsDatase) then
      FreeAndNil(FdmTestFunctionsDatase);
    if Assigned(obj) then
      FreeAndNil(obj);
    if Assigned(aForm) then
      FreeAndNil(aForm);
    if Assigned(aBindableObject) then
      FreeAndNil(aBindableObject);
  except
    on E: Exception do
      RaiseException('TearDown', E, Self);

  end;

end;

procedure TTestJanuaCoreClasses.BindCreateDestroy;
{$IFDEF HAS_VCL}
var
  lControl: IJanuaBindableEditControl;
  aField: IJanuaField;
  lBool: Boolean;
  lDouble: Double;
begin
  // aForm.Edit1.OnChange := obj.onEditChange;
  aForm.Edit1.Text := 'Ciao';
  aBindableObject.TestString := 'Belin';

  // Creo lRecord Assegnandogli come 'Owner' aBindableObject
  TJanuaApplication.BindEngine.Bind(aBindableObject, 'TestString', aForm.Edit1, 'Text');
  Assert.AreEqual(1, aBindableObject.BindManager.BindCount);

  Assert.IsTrue(Supports(aForm.Edit1, IJanuaBindableEditControl, lControl));
  Assert.AreEqual(1, lControl.BindManager.BindCount, 'aForm.Edit1');

  Assert.AreEqual('Belin', aBindableObject.TestString, 'TestString <> Belin');
  Assert.AreEqual(aBindableObject.TestString, aForm.Edit1.Text);
  // testo il bind 'inverso'
  aForm.Edit1.Text := 'Ciao';
  Assert.AreEqual(aForm.Edit1.Text, aBindableObject.TestString, 'Test Form->Oggetto');

  aBindableObject.BindManager.ClearBindings;

  Assert.AreEqual(0, aBindableObject.BindManager.BindCount, 'aBindableObject ClearBind');
  Assert.IsNotNull(lControl, 'lControl');
  Assert.AreEqual(0, lControl.BindManager.BindCount, 'aForm.Edit1 Rel 1');


  // Ripeto il Test ma in questo caso distruggo il Form e vedo come si comportano i vari soggetti

  aForm.Edit1.Text := 'Ciao';
  aBindableObject.TestString := 'Belin';

  // Creo lRecord Assegnandogli come 'Owner' aBindableObject
  TJanuaApplication.BindEngine.Bind(aBindableObject, 'TestString', aForm.Edit1, 'Text');
  Assert.AreEqual(1, aBindableObject.BindManager.BindCount);

  Assert.IsTrue(Supports(aForm.Edit1, IJanuaBindableEditControl, lControl));
  Assert.AreEqual(1, lControl.BindManager.BindCount, 'aForm.Edit1');

  Assert.AreEqual('Belin', aBindableObject.TestString, 'TestString <> Belin');
  Assert.AreEqual(aBindableObject.TestString, aForm.Edit1.Text);
  // testo il bind 'inverso'
  aForm.Edit1.Text := 'Ciao';
  Assert.AreEqual(aForm.Edit1.Text, aBindableObject.TestString, 'Test Form->Oggetto');

  aBindableObject.Bind('TestDouble', aForm.JvCalcEdit1, 'Value');
  Assert.AreEqual(2, aBindableObject.BindManager.BindCount, 'aBindableObject BindCount');
  Assert.AreEqual(1, aForm.JvCalcEdit1.BindManager.BindCount, 'aForm.JvCalcEdit1 BindCount');
  aForm.JvCalcEdit1.Value := 99.99;
  lDouble := aForm.JvCalcEdit1.Value;
  lBool := lDouble = aBindableObject.TestDouble;
  Assert.IsTrue(lBool, ' JvCalcEdit1->TestDouble');

  FreeAndNil(aForm);

  Assert.AreEqual(0, aBindableObject.BindManager.BindCount, 'aBindableObject');
  aBindableObject.TestDouble := 100.99;

  {
    TJanuaApplication.BindEngine.ClearBindings(aBindableObject);

    Assert.AreEqual(0, aBindableObject.BindCount, 'aBindableObject ClearBind');
    Assert.AreEqual(01, lControl.BindCount, 'aForm.Edit1 Rel 1');
  }

{$ELSE HAS_VCL}
begin

{$ENDIF HAS_VCL}
end;

procedure TTestJanuaCoreClasses.BindingFramework;
{$IFDEF HAS_VCL}
begin
  aForm.Edit1.OnChange := obj.onEditChange;
  aForm.Edit1.Text := 'Ciao';
  aBindableObject := TBindableTest.Create;
  aBindableObject.TestString := 'Belin';
  aBindableObject.BindManager.Bind('TestString', aForm.Edit1, 'Text', False);
  Assert.AreEqual('Belin', aBindableObject.TestString, 'TestString <> Belin');
  Assert.AreEqual(aBindableObject.TestString, aForm.Edit1.Text);
end;
{$ELSE HAS_VCL}

begin

end;

{$ENDIF HAS_VCL}

procedure TTestJanuaCoreClasses.BindingInterfaces;
var
  lBindableControl: IJanuaBindableControl;
begin
  aForm.Edit1.Text := 'Ciao';
  aBindableObject := TBindableTest.Create;
  aBindableObject.TestString := 'Belin';
  aBindableObject.Bind('TestString', aForm.Edit1, 'Text', False);
  Assert.AreEqual('Belin', aBindableObject.TestString, 'TestString <> Belin');
  Assert.AreEqual(aBindableObject.TestString, aForm.Edit1.Text);

  Assert.IsTrue(1 = aBindableObject.BindManager.BindCount,
    'BindCount = ' + aBindableObject.BindManager.BindCount.ToString);

  Assert.IsTrue(Supports(aForm.Edit1, IJanuaBindableControl, lBindableControl),
    'Edit1 no support BindableControl');
  // lBindableControl.IncBindings;

  Assert.IsTrue(1 = lBindableControl.BindManager.BindCount, 'BindableControl.BindCount = ' +
    lBindableControl.BindManager.BindCount.ToString);
  Assert.IsTrue(lBindableControl.BindManager.HasBindings, 'HasBindings False');

  aForm.Edit1.Text := 'Ciao';
  Assert.AreEqual(aForm.Edit1.Text, aBindableObject.TestString, 'Test Form->Oggetto');
  aBindableObject.TestString := 'Belin';
  Assert.AreEqual(aForm.Edit1.Text, aBindableObject.TestString, 'Test Oggetto->Form');
end;

procedure TTestJanuaCoreClasses.BindingRecord;
{$IFDEF HAS_VCL}
var
  lRecordO, lRecordE: IJanuaBindRecord;
  lControl: IJanuaBindableEditControl;

begin
  // aForm.Edit1.OnChange := obj.onEditChange;
  aForm.Edit1.Text := 'Ciao';
  aBindableObject.TestString := 'Belin';
  Assert.AreEqual(0, aBindableObject.BindManager.BindCount, 'aBindableObject start');

  // Creo lRecord Assegnandogli come 'Owner' aBindableObject
  lRecordO := TBindRecord.Create(aBindableObject);
  // ed eseguo il bind che testo
  lRecordO.Bind('TestString', aForm.Edit1, 'Text');
  Assert.AreEqual(1, aBindableObject.BindManager.BindCount);

  Assert.IsTrue(Supports(aForm.Edit1, IJanuaBindableEditControl, lControl));
  Assert.AreEqual(0, lControl.BindManager.BindCount, 'aForm.Edit1');

  // Creo lRecord Assegnandogli come 'Owner' aBindableObject
  lRecordE := TBindRecord.Create(aForm.Edit1);
  // ed eseguo il bind che testo
  lRecordE.Bind('Text', aBindableObject, 'TestString');
  Assert.AreEqual(1, lControl.BindManager.BindCount, 'aForm.Edit1');
  Assert.AreEqual(1, aBindableObject.BindManager.BindCount);

  Assert.AreEqual('Belin', aBindableObject.TestString, 'TestString <> Belin');
  Assert.AreEqual(aBindableObject.TestString, aForm.Edit1.Text);
  // testo il bind 'inverso'
  aForm.Edit1.Text := 'Ciao';
  Assert.AreEqual(aForm.Edit1.Text, aBindableObject.TestString, 'Test Form->Oggetto');

  lRecordO.ClearBindings;
  lRecordO := nil;
  Assert.AreEqual(0, aBindableObject.BindManager.BindCount, 'aBindableObject lRecordO ClearBind');
  Assert.AreEqual(1, lControl.BindManager.BindCount, 'aForm.Edit1 lRecord0');

  lRecordE.ClearBindings;
  lRecordE := nil;
  Assert.AreEqual(0, aBindableObject.BindManager.BindCount, 'aBindableObject lRecordE ClearBind');
  Assert.AreEqual(0, lControl.BindManager.BindCount, 'aForm.Edit1 lRecordE');

end;
{$ELSE HAS_VCL}

begin

end;

procedure TTestJanuaCoreClasses.JanuaCoreComponent;
begin

end;

{$ENDIF HAS_VCL}

procedure TTestJanuaCoreClasses.VirtualTableJsonStream;
var
  aFrom, aTo: TJanuaJsonDacDataset;
  aJson, bJson: string;
begin
  aFrom := TJanuaJsonDacDataset.Create(nil);
  try
    aFrom.AssignDataset(FdmTestFunctionsDatase.vtMaster);
    aJson := aFrom.AsJson;
    Assert.AreNotEqual('', aJson);
    aTo := TJanuaJsonDacDataset.Create(nil);
    try
      aTo.LoadFromJson(aJson);
      Assert.AreEqual(aTo.MemDataset.RecordCount, aFrom.MemDataset.RecordCount);
      aFrom.MemDataset.First;
      aTo.MemDataset.First;
      Assert.AreEqual(aTo.MemDataset.Fields[0].AsWideString, aFrom.MemDataset.Fields[0].AsWideString);
    finally
      aTo.Free;
    end;
  finally
    aFrom.Free;
  end;
end;

{ TBindableTest }

procedure TBindableTest.SetTestDate(const Value: TDateTime);
begin
  if FTestDate <> Value then
  begin
    FTestDate := Value;
    BindManager.Notify('TestDate');
  end;
end;

procedure TBindableTest.SetTestDouble(const Value: Double);
begin
  if FTestDouble <> Value then
  begin
    FTestDouble := Value;
    BindManager.Notify('TestDouble');
  end;
end;

procedure TBindableTest.SetTestInteger(const Value: integer);
begin
  if FTestInteger <> Value then
  begin
    FTestInteger := Value;
    BindManager.Notify('TestInteger');
  end;
end;

procedure TBindableTest.SetTestString(const Value: string);
begin
  if FTestString <> Value then
  begin
    FTestString := Value;
    BindManager.Notify('TestString');
  end;
end;

{ TObj }

procedure TObj.onEditChange(Sender: TObject);
begin
  TJanuaApplication.BindEngine.Notify(Sender, 'Text');
end;

{ TBindableIntfTest }

function TBindableIntfTest.GetTestDate: TDateTime;
begin
  Result := Self.FTestDate
end;

function TBindableIntfTest.GetTestDouble: Double;
begin
  Result := Self.FTestDouble
end;

function TBindableIntfTest.GetTestInteger: integer;
begin
  Result := Self.FTestInteger
end;

function TBindableIntfTest.GetTestString: string;
begin
  Result := Self.FTestString
end;

procedure TBindableIntfTest.SetTestDate(const Value: TDateTime);
begin
  Self.FTestDate := Value
end;

procedure TBindableIntfTest.SetTestDouble(const Value: Double);
begin
  Self.FTestDouble := Value
end;

procedure TBindableIntfTest.SetTestInteger(const Value: integer);
begin
  Self.FTestInteger := Value
end;

procedure TBindableIntfTest.SetTestString(const Value: string);
begin
  if FTestString <> Value then
  begin
    FTestString := Value;
    BindManager.Notify('TestString'); // does notify that TestString changed
  end;
end;

initialization

TDUnitX.RegisterTestFixture(TTestJanuaCoreClasses);

end.
