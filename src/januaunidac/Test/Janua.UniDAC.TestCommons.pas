unit Janua.UniDAC.TestCommons;

interface

uses
  DUnitX.TestFramework, Janua.UniDAC.Test.dmTestDatasets;

type

  [TestFixture]
  TUniCommons = class
  private
    FdmUniPgTestDatasets: TdmUniPgTestDatasets;
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Sample Methods
    // Simple single Test
    [Test]
    procedure XmlImportExport;
    // Test with TestCase Attribute to supply parameters.
    [Test]
    procedure BinImportExport;
    // Test with TestCase Attribute to supply parameters.
    [Test]
    procedure JsonImportExport;
    // Test with TestCase Attribute to supply parameters.
    [Test]
    procedure FDJsonImportExport;
    // Test with TestCase Attribute to supply parameters.
    [Test]
    procedure FDBinImportExport;
    // Test with TestCase Attribute to supply parameters.
    [Test]
    [TestCase('TestA', '1,2')]
    [TestCase('TestB', '3,4')]
    procedure Test2(const AValue1: Integer; const AValue2: Integer);
  end;

implementation

uses Janua.Core.Functions, Janua.UniDAC.Commons, Janua.FireDAC.Commons;

procedure TUniCommons.BinImportExport;
var
  tmp: string;
begin
  with FdmUniPgTestDatasets do
  begin
    tmp := TUniDacExporter.ExportToBase64(VirtualTable1);
    Assert.AreNotEqual('', tmp, 'tmp is empty');
    TUniDacExporter.ImportFromBase64(VirtualTable2, tmp);
    Assert.AreEqual(VirtualTable1.RecordCount, VirtualTable2.RecordCount, 'VirtualTable2');
    TUniDacExporter.ImportFromBase64(VirtualTable3, tmp);
    Assert.AreEqual(VirtualTable1.RecordCount, VirtualTable3.RecordCount, 'VirtualTable3.count');
    Assert.AreEqual(VirtualTable1.Fields.Count, VirtualTable3.Fields.Count, 'VirtualTable.fields');
  end;

end;

procedure TUniCommons.FDBinImportExport;
var
  tmp: string;
begin
  with FdmUniPgTestDatasets do
  begin
    tmp := TUniDacExporter.ExportToFDBase64(VirtualTable1);
    Assert.AreNotEqual('', tmp, 'tmp is empty');
    TFireDacExporter.ImportFromBase64(FDMemTable1, tmp);
    Assert.AreEqual(VirtualTable1.RecordCount, FDMemTable1.RecordCount, 'FDMemTable1');
    TFireDacExporter.ImportFromBase64(FDMemTable2, tmp);
    Assert.AreEqual(VirtualTable1.RecordCount, FDMemTable2.RecordCount, 'FDMemTable2');
  end;

end;

procedure TUniCommons.FDJsonImportExport;
begin

end;

procedure TUniCommons.JsonImportExport;
begin

end;

procedure TUniCommons.Setup;
begin
  FdmUniPgTestDatasets := TdmUniPgTestDatasets.Create(nil)
end;

procedure TUniCommons.TearDown;
begin
  FdmUniPgTestDatasets.Free;
  FdmUniPgTestDatasets := nil;
end;

procedure TUniCommons.XmlImportExport;
var
  tmp: string;
begin
  with FdmUniPgTestDatasets do
  begin
    tmp := TUniDacExporter.ExportToXML(VirtualTable1);
    Assert.AreNotEqual('', tmp, 'tmp is empty');
    TUniDacExporter.ImportFromXML(VirtualTable2, tmp);
    Assert.AreEqual(VirtualTable1.RecordCount, VirtualTable2.RecordCount, 'VirtualTable2');
    TUniDacExporter.ImportFromXML(VirtualTable3, tmp);
    Assert.IsTrue(VirtualTable3.Active, 'VirtualTable3.Active');
    Assert.AreEqual(VirtualTable1.RecordCount, VirtualTable3.RecordCount, 'VirtualTable3.count');
    Assert.AreEqual(VirtualTable1.Fields.Count, VirtualTable3.Fields.Count, 'VirtualTable.fields');
  end;
end;

procedure TUniCommons.Test2(const AValue1: Integer; const AValue2: Integer);
begin
end;

initialization

TDUnitX.RegisterTestFixture(TUniCommons);

end.
