unit Janua.Core.Functions.Test;

interface

uses
  DUnitX.TestFramework, FireDAC.Comp.Client,
  System.StrUtils, System.SysUtils, System.Classes, Data.DB,
  // Janua Units to Test
  Janua.Core.Functions, Janua.Test.FireDAC.dmVirtual;

{ dmTestFunctionsDataset := TdmTestFunctionsDataset.Create(nil); }

type

  [TestFixture]
  TFunctionsTest = class(TObject)
  public
    function CreateDataset: TdmFDacVirtualTest;
  private
    procedure TestGenerateEAN13(const expected, number: string);
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Sample Methods
    // Simple single Test
    [Test]
{$IFDEF MSWINDOWS} [TestCase('Win', 'C:')]
{$ELSE} [TestCase('Linux', '/root')]
{$ENDIF}
    procedure TestTpl(aPath: string);
    [Test]
    [TestCase('Nil', '')]
    procedure TestFreeAndNil;
    [Test]
    [TestCase('A', 'àèì^')]
    procedure TestEncode64(aString: string);
    [TestCase('A', 'àèì^')]
    procedure TestEncode64UTF8(aString: string);
    [TestCase('A', 'àèì^')]
    procedure TestEncode64String(aString: string);
    // Test with TestCase Attribute to supply parameters.
    [Test]
    [TestCase('TestA', '1,2')]
    [TestCase('TestB', '3,4')]
    procedure Test2(const AValue1: Integer; const AValue2: Integer);
    [Test]
    [TestCase('2Digit', '1.50', '1.4950, 2')]
    [TestCase('4Digit', '3.0000', '3.000001, 4')]
    procedure TestFRoundDouble(const expected, number: Double; const digits: Integer);
    [Test]
    [TestCase('2Digit', '1.50', '1.4950, 2')]
    [TestCase('4Digit', '3.0000', '3.0001, 4')]
    procedure TestFRoundSingle(const expected, number: Single; const digits: Integer);
    [Test]
    [TestCase('2Digit', '1.50', '1.4950, 2')]
    [TestCase('4Digit', '3.0000', '3.0001, 4')]
    procedure TestFRoundExtended(const expected, number: Extended; const digits: Integer);
    [Test]
    // Test FPartitaIva
    [TestCase('True', '03623590100, 1')]
    [TestCase('False', '03623590101, 0')]
    procedure TestItalianVAT(aVat: string; bTest: byte);
    // GenerateEAN13
    [Test]
    [TestCase('A', '9780201379624,978020137962')]
    procedure GenerateEAN13(const expected, number: string);
    // CloneDataset
    [TestCase('A', '4')]
    procedure CloneVirtualTable(const expected: Integer);
    // ClientDataSet1: TFDMemTable; CloneDataset
    [Test]
    [TestCase('A', '8')]
    procedure CloneStructVTVT(const expected: Integer);
    // ClientDataSet1: TFDMemTable; CloneDatasetStruct
    [Test]
    [TestCase('A', '8')]
    procedure CloneStructDSVT(const expected: Integer);
    // procedure CopyRecord(Dataset, dataclone: TDataset);
    [Test]
    [TestCase('A', '4')]
    procedure CloneRecordDSVT(const expected: Integer);
    [Test]
    // rinuncio al test ma non so come mai ....
    // function ExistFieldByName(Dataset: TDataset; fieldName: string): boolean;
    [TestCase('A', '7,1,StringField')]
    [TestCase('A', '7,0,StringField1')]
    // [TestCase('A', '7,1,StringField')]
    procedure CExistFieldByName(const expected: Integer; const bTest: byte; const sFieldName: string);
    [TestCase('True', 'true,true')]
    [TestCase('False', 'false,false')]
    procedure TestXMLBool(const expected: boolean; const Value: string);
    [Test]
    procedure TestXMLDate;
    [Test]
    [TestCase('Lat', '44.3870917,44.3870917')]
    [TestCase('Lon', '9.0174817,9.0174817')]
    procedure TestXMLDouble(const expected: Double; const Value: string);
    [TestCase('True', 'true,FF0199')]
    [TestCase('False', 'false,F91GG')]
    [TestCase('False', 'false,-+81GG')]
    procedure TestHex(const expected: boolean; const aHex: string);
    [TestCase('True', 'ed4c34dcfe7bfebc95f90151804b0f40e196652d8d4ba9caf4dcceb04ba3e3ed,AbCdEfGhIlMnOp')]
    procedure TestSha256(const expected: string; const Value: string);
  end;

implementation

uses System.DateUtils, Janua.Application.Framework, FireDAC.Comp.DataSet;

procedure TFunctionsTest.CloneRecordDSVT(const expected: Integer);
var
  aDataset: TFDMemTable;
  a: TdmFDacVirtualTest;
begin
  a := self.CreateDataset;
  try
    Assert.AreEqual(expected, a.vtMaster.RecordCount);
    aDataset := TFDMemTable.Create(nil);
    try
      Janua.Core.Functions.CloneDatasetStruct(a.vtMaster, aDataset);
      a.vtMaster.First;
      while not a.vtMaster.Eof do
      begin
        aDataset.Append;
        Janua.Core.Functions.CopyRecord(a.vtMaster, aDataset);
        Assert.AreEqual(a.vtMaster.FieldByName('StringField').AsWideString,
          aDataset.FieldByName('StringField').AsWideString);
        a.vtMaster.Next;
      end;
      Assert.AreEqual(expected, aDataset.RecordCount);
    finally
      aDataset.Free;
    end;
  finally
    a.Free
  end;

end;

procedure TFunctionsTest.CloneStructDSVT(const expected: Integer);
var
  aDataset: TFDMemTable;
  a: TdmFDacVirtualTest;
begin
  a := self.CreateDataset;
  try
    aDataset := TFDMemTable.Create(nil);
    try
      Janua.Core.Functions.CloneDatasetStruct(a.vtMaster, aDataset);
      Assert.AreEqual(aDataset.FieldCount, a.vtMaster.FieldCount);
      // Assert.AreEqual(expected, aDataset.FieldCount);
    finally
      aDataset.Free;
    end;
  finally
    a.Free
  end;

end;

procedure TFunctionsTest.CloneStructVTVT(const expected: Integer);
var
  aDataset: TFDMemTable;
  a: TdmFDacVirtualTest;
begin
  a := self.CreateDataset;
  try
    aDataset := TFDMemTable.Create(nil);
    try
      Janua.Core.Functions.CloneDatasetStruct(a.vtMaster, aDataset);
      Assert.AreEqual(aDataset.FieldCount, a.vtMaster.FieldCount);
      // Assert.AreEqual(expected, aDataset.FieldCount);
    finally
      aDataset.Free;
    end;
  finally
    a.Free
  end;

end;

procedure TFunctionsTest.CloneVirtualTable(const expected: Integer);
var
  aDataset: TFDMemTable;
  a: TdmFDacVirtualTest;
begin
  a := self.CreateDataset;
  try
    aDataset := TFDMemTable.Create(nil);
    try
      Janua.Core.Functions.CloneDataset(a.vtMaster, aDataset);
      Assert.AreEqual(expected, a.vtMaster.RecordCount);
      Assert.AreEqual(expected, aDataset.RecordCount);
    finally
      aDataset.Free;
    end;
  finally
    a.Free
  end;
end;

function TFunctionsTest.CreateDataset: TdmFDacVirtualTest;
begin
  Result := TdmFDacVirtualTest.Create(nil);
end;

procedure TFunctionsTest.CExistFieldByName(const expected: Integer; const bTest: byte;
  const sFieldName: string);
var
  boolTest, vTest: boolean;
  sMessage: string;
  i: Integer;
  a: TdmFDacVirtualTest;
begin
  a := self.CreateDataset;
  try
    for i := 0 to a.vtMaster.FieldCount - 1 do
      sMessage := sMessage + IfThen(i = 0, '', '; ') + a.vtMaster.Fields[i].FieldName;
    vTest := Janua.Core.Functions.ExistFieldByName(a.vtMaster, sFieldName);
    boolTest := bTest = 1;
    Assert.AreEqual(boolTest, vTest, 'Search of Field: ' + sFieldName + ' is not ' + bTest.ToString +
      sMessage);
  finally
    a.Free
  end;
end;

procedure TFunctionsTest.GenerateEAN13(const expected, number: string);
begin
  DUnitX.TestFramework.Assert.AreEqual(expected, Janua.Core.Functions.GenerateEAN13(number));
end;

procedure TFunctionsTest.Setup;
begin
end;

procedure TFunctionsTest.TearDown;
begin
  try
  except
    on E: Exception do
      RaiseException('TearDown', E, self);

  end;
end;

procedure TFunctionsTest.Test2(const AValue1: Integer; const AValue2: Integer);
begin
  DUnitX.TestFramework.Assert.AreNotEqual(AValue1, AValue2, 'Values are Identical ... Error');
end;

procedure TFunctionsTest.TestEncode64(aString: string);
begin
  DUnitX.TestFramework.Assert.AreEqual(aString, Decode64(Encode64(aString)));
end;

procedure TFunctionsTest.TestEncode64String(aString: string);
begin
  DUnitX.TestFramework.Assert.AreEqual(aString, DecodeString64(EncodeString64(aString)));
end;

procedure TFunctionsTest.TestEncode64UTF8(aString: string);
begin
  DUnitX.TestFramework.Assert.AreEqual(aString, Decode64UTF8(Encode64UTF8(aString)));
end;

procedure TFunctionsTest.TestFreeAndNil;
var
  aObject: TObject;
begin
  aObject := TObject.Create;
  Janua.Core.Functions.JanuaFree(aObject);
  aObject := nil;
  Assert.IsNull(aObject);
end;

procedure TFunctionsTest.TestFRoundDouble(const expected, number: Double; const digits: Integer);
begin
  DUnitX.TestFramework.Assert.AreEqual(expected, Janua.Core.Functions.FRound(number, digits));
end;

procedure TFunctionsTest.TestFRoundExtended(const expected, number: Extended; const digits: Integer);
begin
  DUnitX.TestFramework.Assert.AreEqual(expected, Extended(Janua.Core.Functions.FRound(number, digits)));
end;

procedure TFunctionsTest.TestFRoundSingle(const expected, number: Single; const digits: Integer);
begin
  DUnitX.TestFramework.Assert.AreEqual(expected, Single(Janua.Core.Functions.FRound(number, digits)));
end;

procedure TFunctionsTest.TestGenerateEAN13(const expected, number: string);
var
  sTemp: string;
begin
  sTemp := Janua.Core.Functions.GenerateEAN13(number);
  DUnitX.TestFramework.Assert.AreEqual(expected, sTemp);
end;

procedure TFunctionsTest.TestHex(const expected: boolean; const aHex: string);
begin
  Assert.AreEqual(expected, Janua.Core.Functions.IsHex(aHex));
end;

procedure TFunctionsTest.TestItalianVAT(aVat: string; bTest: byte);
var
  sError, sSpec: string;
  bResult, boolTest: boolean;
begin
  boolTest := bTest = 1;
  bResult := Janua.Core.Functions.FPartitaIva(aVat, sError, sSpec);
  DUnitX.TestFramework.Assert.AreEqual(bResult, boolTest);
end;

procedure TFunctionsTest.TestSha256(const expected, Value: string);
begin
  var
  vTest := Janua.Core.Functions.Sha256(Value);
  Assert.AreEqual(expected, vTest, 'Sha256 Convertion Error');
end;

procedure TFunctionsTest.TestTpl(aPath: string);
begin
  // PathDelim
  DUnitX.TestFramework.Assert.AreEqual(aPath + PathDelim, Janua.Core.Functions.tpl(aPath));
end;

procedure TFunctionsTest.TestXMLBool(const expected: boolean; const Value: string);
begin
  Assert.AreEqual(expected, Janua.Core.Functions.XMLBool(Value));
end;

procedure TFunctionsTest.TestXMLDate;
var
  aTest: TDateTime;
const
  aString: string = '2007-09-06T15:11:05Z';
begin
  aTest := EncodeDateTime(2007, 9, 6, 15, 11, 5, 0);
  Assert.AreEqual(aTest, Janua.Core.Functions.XMLDateTime(aString));
  Assert.Pass();
end;

procedure TFunctionsTest.TestXMLDouble(const expected: Double; const Value: string);
begin
  Assert.AreEqual(expected, Janua.Core.Functions.XMLDouble(Value));
end;

initialization

TDUnitX.RegisterTestFixture(TFunctionsTest);

end.
