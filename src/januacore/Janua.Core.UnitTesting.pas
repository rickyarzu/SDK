unit Janua.Core.UnitTesting;

interface

uses Janua.Core.Types, Spring.Collections;

type

  TJanuaAssert = record
    ProcName: string;
    TestClass: TObject;
  public
    procedure AreEqual(const a, b: integer; const aMessage: string = ''); overload;
    procedure AreEqual(const a, b: string; const aMessage: string = ''); overload;
    procedure AreEqual(const a, b: boolean; const aMessage: string = ''); overload;
    procedure AreNotEqual(const a, b: integer; const aMessage: string = ''); overload;
    procedure AreNotEqual(const a, b: string; const aMessage: string = ''); overload;
    procedure StartWatch;
    procedure StopWatch;
    procedure IsTrue(const condition: boolean; const aMessage: string = '');
    procedure IsFalse(const condition: boolean; const aMessage: string = '');
    procedure IsNull(const condition: TObject; const aMessage: string = ''); overload;
    procedure IsNull(const condition: Pointer; const aMessage: string = ''); overload;
    procedure IsNull(const condition: IInterface; const aMessage: string = ''); overload;
    procedure IsNull(const condition: Variant; const aMessage: string = ''); overload;
    procedure IsNotNull(const condition: TObject; const aMessage: string = ''); overload;
    procedure IsNotNull(const condition: Pointer; const aMessage: string = ''); overload;
    procedure IsNotNull(const condition: IInterface; const aMessage: string = ''); overload;
    procedure IsNotNull(const condition: Variant; const aMessage: string = ''); overload;
    procedure IsEmpty(const value: string; const aMessage: string = ''); overload;
  end;

  TJanuaRecordTests = record
    Logger: Janua.Core.Types.TJanuaLogRecords;
    ProcName: string;
    Passed: boolean;
  end;

  TJanuaUnitTesting = record
  private
    FRecordTests: IList<TJanuaRecordTests>;
  public
    procedure initialize;
    procedure finalize;
  end;

var
  Assert: TJanuaAssert;
  JanuaUnitTesting: TJanuaUnitTesting;

implementation

uses
  System.Math, System.StrUtils, System.SysUtils, System.Variants, Janua.Application.Framework;

{ TJanuaAssert }

procedure TJanuaAssert.AreEqual(const a, b: boolean; const aMessage: string);
var
  Assertion: string;
begin
  Assertion := IfThen(a, 'True expected found False', 'True expected found False');
  if a = b then
    TJanuaLogger.LogRecord(self.ProcName, 'Test OK: ' + aMessage, self.TestClass)
  else
  begin
    TJanuaLogger.LogWarning(self.ProcName, 'Test Failed: ' + aMessage, self.TestClass);
    raise exception.Create('TJanuaAssert.AreEqual Test Failed ' + Assertion + ' ' + aMessage);
  end;

end;

procedure TJanuaAssert.AreEqual(const a, b: integer; const aMessage: string);
begin

end;

procedure TJanuaAssert.AreNotEqual(const a, b, aMessage: string);
var
  Assertion: string;
begin
  Assertion := a + ' expected <> ' + b + ' found';
  if a = b then
    TJanuaLogger.LogRecord(self.ProcName, 'Test OK: ' + aMessage, self.TestClass)
  else
  begin
    TJanuaLogger.LogWarning(ProcName, 'Test Failed: ' + Assertion + sl + aMessage, TestClass);
    raise exception.Create('TJanuaAssert.AreEqual Test Failed ' + Assertion + ' ' + aMessage);
  end;

end;

procedure TJanuaAssert.AreNotEqual(const a, b: integer; const aMessage: string);
var
  Assertion: string;
begin
  Assertion := a.ToString + ' expected = ' + b.ToString + ' found';
  if a <> b then
    TJanuaLogger.LogRecord(self.ProcName, 'Test OK Not Nil: ' + aMessage, TestClass)
  else
  begin
    TJanuaLogger.LogWarning(ProcName, 'Test Failed: ' + Assertion + sl + aMessage, TestClass);
    raise exception.Create('TJanuaAssert.AreEqual Test Failed ' + Assertion + ' ' + aMessage);
  end;
end;

procedure TJanuaAssert.IsNotNull(const condition: IInterface; const aMessage: string);
var
  Assertion: string;
begin
  Assertion := 'IInterface is nil';
  if Assigned(condition) then
    TJanuaLogger.LogRecord(self.ProcName, 'Test OK Not Nil: ' + aMessage, TestClass)
  else
  begin
    TJanuaLogger.LogWarning(ProcName, 'Test Failed: ' + Assertion + sl + aMessage, TestClass);
    raise exception.Create('TJanuaAssert.AreEqual Test Failed ' + Assertion + ' ' + aMessage);
  end;

end;

procedure TJanuaAssert.IsNotNull(const condition: Pointer; const aMessage: string);
var
  Assertion: string;
begin
  Assertion := 'Pointer is nil';
  if condition <> nil then
    TJanuaLogger.LogRecord(self.ProcName, 'Test OK Pointer is not null', TestClass)
  else
  begin
    TJanuaLogger.LogWarning(ProcName, 'Test Failed: ' + Assertion + sl + aMessage, TestClass);
    raise exception.Create('TJanuaAssert.AreEqual Test Failed ' + Assertion + ' ' + aMessage);
  end;

end;

procedure TJanuaAssert.IsNotNull(const condition: TObject; const aMessage: string);
var
  Assertion: string;
begin
  Assertion := 'TObject is nil';
  if Assigned(condition) then
    TJanuaLogger.LogRecord(self.ProcName, 'Test OK TObject is not null', TestClass)
  else
  begin
    TJanuaLogger.LogWarning(ProcName, 'Test Failed: ' + Assertion + sl + aMessage, TestClass);
    raise exception.Create('TJanuaAssert.AreEqual Test Failed ' + Assertion + ' ' + aMessage);
  end;

end;

procedure TJanuaAssert.IsEmpty(const value, aMessage: string);
var
  Assertion: string;
begin
  Assertion := 'String is not empty';
  if value <> '' then
    TJanuaLogger.LogRecord(self.ProcName, 'Test OK string is empty: ', TestClass)
  else
  begin
    TJanuaLogger.LogWarning(ProcName, 'Test Failed: ' + Assertion + sl + aMessage, TestClass);
    raise exception.Create('TJanuaAssert.AreEqual Test Failed ' + Assertion + ' ' + aMessage);
  end;

end;

procedure TJanuaAssert.IsFalse(const condition: boolean; const aMessage: string);
var
  Assertion: string;
begin
  Assertion := 'False expected found True';
  if not condition then
    TJanuaLogger.LogRecord(self.ProcName, 'Test OK True is True ', self.TestClass)
  else
  begin
    TJanuaLogger.LogWarning(ProcName, 'Test Failed: ' + Assertion + ' ' + aMessage, TestClass);
    raise exception.Create('TJanuaAssert.AreEqual Test Failed ' + Assertion + ' ' + aMessage);
  end;

end;

procedure TJanuaAssert.IsNotNull(const condition: Variant; const aMessage: string);
var
  Assertion: string;
begin
  Assertion := 'Variant is Empty';
  if not VarIsEmpty(condition) then
    TJanuaLogger.LogRecord(ProcName, 'Test OK True is True ', self.TestClass)
  else
  begin
    TJanuaLogger.LogWarning(ProcName, 'Test Failed: ' + Assertion + ' ' + aMessage, TestClass);
    raise exception.Create('TJanuaAssert.AreEqual Test Failed ' + Assertion + ' ' + aMessage);
  end;

end;

procedure TJanuaAssert.IsNull(const condition: IInterface; const aMessage: string);
begin

end;

procedure TJanuaAssert.IsNull(const condition: Pointer; const aMessage: string);
begin

end;

procedure TJanuaAssert.IsNull(const condition: Variant; const aMessage: string);
begin

end;

procedure TJanuaAssert.IsNull(const condition: TObject; const aMessage: string);
begin

end;

procedure TJanuaAssert.IsTrue(const condition: boolean; const aMessage: string);
begin

end;

procedure TJanuaAssert.StartWatch;
begin

end;

procedure TJanuaAssert.StopWatch;
begin

end;

procedure TJanuaAssert.AreEqual(const a, b, aMessage: string);
begin

end;

{ TJanuaUnitTesting }

procedure TJanuaUnitTesting.finalize;
begin
  FRecordTests := nil;
end;

procedure TJanuaUnitTesting.initialize;
begin
  FRecordTests := TCollections.CreateList<TJanuaRecordTests>
end;

initialization

JanuaUnitTesting.initialize;

finalization

JanuaUnitTesting.finalize;

end.
