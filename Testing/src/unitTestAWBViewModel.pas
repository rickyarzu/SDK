unit unitTestAWBViewModel;

interface

uses
  DUnitX.TestFramework, Janua.Core.Classes, Janua.Core.Classes.Intf, Janua.Logistic.AWB.ViewModel.Intf,
  Janua.Search.ViewModels.Engines.Intf;

type

  [TestFixture]
  TTAWBMVVM = class
  private
    FTestCaption: string;
    FTestEnabled: boolean;
    FViewModel: IJanuaLogisticAWBDBViewModel;
    FModel: IJanuaLogisticAWBDBModel;
    FDataModule: IJanuaLogisticAWBsDataModule;
    procedure GenerateModel;
    procedure GenerateViewModel;
    /// <summary> This method Switches to the Postgres UniDAC Test Database Framework </summary>
    procedure RegisterPOstgres;
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Sample Methods
    // Simple single Test
    // Test with TestCase Attribute to supply parameters.
    [Test]
{$IFDEF TESTPOSTGRES}[TestCase('ErgoPg', 'true')]
{$ELSE} [TestCase('MemDS', 'False')]
{$ENDIF TESTPOSTGRES}
    procedure DataModule(const aPostgres: boolean);
    [Test]
{$IFDEF TESTPOSTGRES}[TestCase('ErgoPg', 'true')]
{$ELSE} [TestCase('MemDS', 'False')]
{$ENDIF TESTPOSTGRES}
    procedure Model(const aPostgres: boolean);
    [Test]
{$IFDEF TESTPOSTGRES}[TestCase('ErgoPg', 'true')]
{$ELSE} [TestCase('MemDS', 'False')]
{$ENDIF TESTPOSTGRES}
    procedure ViewModel(const aPostgres: boolean);
    [Test]
{$IFDEF TESTPOSTGRES}[TestCase('ErgoPg', 'true')]
{$ELSE} [TestCase('MemDS', 'False')]
{$ENDIF TESTPOSTGRES}
    procedure DatasetFilter(const aPostgres: boolean);
    [Test]
{$IFDEF TESTPOSTGRES}[TestCase('ErgoPg', 'true')]
{$ELSE} [TestCase('MemDS', 'False')]
{$ENDIF TESTPOSTGRES}
    procedure ModelFilter(const aPostgres: boolean);
    [Test]
{$IFDEF TESTPOSTGRES}[TestCase('ErgoPg', 'true')]
{$ELSE} [TestCase('MemDS', 'False')]
{$ENDIF TESTPOSTGRES}
    procedure ViewModelFilter(const aPostgres: boolean);
    [Test]
{$IFDEF TESTPOSTGRES}[TestCase('ErgoPg', 'true')]
{$ELSE} [TestCase('MemDS', 'False')]
{$ENDIF TESTPOSTGRES}
    procedure LookupTypes(const aPostgres: boolean);
  end;

implementation

uses System.SysUtils, Janua.Mock.Firedac.Framework, Janua.Application.Framework, Janua.ViewModels.Application,
{$IFDEF TESTPOSTGRES}Janua.Uni.Framework, {$ENDIF TESTPOSTGRES}System.Types;

{ TTAWBMVVM }

procedure TTAWBMVVM.DataModule(const aPostgres: boolean);
var
  lDataModule: IJanuaLogisticAWBsDataModule;
begin
  if aPostgres then
    RegisterPOstgres;
  Assert.IsTrue(TJanuaApplicationFactory.TryGetInterface(IJanuaLogisticAWBsDataModule, lDataModule),
    'IJanuaDocumentsDataModule not registered');
  Assert.IsNotNull(lDataModule, 'lDataModule');
  lDataModule.Activate;
  Assert.IsNotNull(lDataModule.GetjdsAWBs, 'GetjdsAWBs');
  lDataModule := nil;
end;

procedure TTAWBMVVM.DatasetFilter(const aPostgres: boolean);
var
  lDataModule: IJanuaLogisticAWBsDataModule;
begin
  if aPostgres then
    RegisterPOstgres;
  Assert.IsTrue(TJanuaApplicationFactory.TryGetInterface(IJanuaLogisticAWBsDataModule, lDataModule),
    'IJanuaDocumentsDataModule not registered');
  Assert.IsNotNull(lDataModule, 'lDataModule');
  lDataModule.Activate;
  if aPostgres then
    lDataModule.jdsAWBs.Open;
  Assert.IsNotNull(lDataModule.jdsAWBs, 'jdsDocHeads');
  // ------------------------------------------------------------------------------
  // k8,jlhjtr54e3r5ttàùòlokijuyt5r4e3w23er4tyukiloòàù
  // ------------------------------------------------------------------------------

  Assert.IsNotNull(lDataModule.jdsAWBs.FilterParams.ParamByName('search_index'));
  lDataModule.jdsAWBs.FilterParams.ParamByName('search_index').AsString := '9092020';
  Assert.AreEqual('9092020', lDataModule.jdsAWBs.FilterParams.ParamByName('search_index').AsString);

  lDataModule.jdsAWBs.FilterParams.Activate;
  lDataModule.jdsAWBs.ApplyFilter;
  if aPostgres then
    Assert.AreEqual(5, lDataModule.jdsAWBs.RecordCount)
    {
      else
      Assert.AreEqual(1, lDataModule.jdsAWBs.RecordCount) }

      ;

  lDataModule := nil;

end;

procedure TTAWBMVVM.GenerateModel;
begin

end;

procedure TTAWBMVVM.GenerateViewModel;
begin

end;

procedure TTAWBMVVM.LookupTypes(const aPostgres: boolean);
begin

end;

procedure TTAWBMVVM.Model(const aPostgres: boolean);
var
  lModel: IJanuaLogisticAWBDBModel;
  I, J: Integer;
begin

  if aPostgres then
    RegisterPOstgres;

  lModel := nil;
  Assert.IsTrue(TJanuaApplicationFactory.TryGetInterface(IJanuaLogisticAWBDBModel, lModel),
    'IJanuaDBAnagraphModel not registered');
  Assert.IsNotNull(lModel, 'lModel');
  lModel.Activate;

  Assert.IsNotNull(lModel.jdsAWBs, 'jdsDocHeads');
  Assert.IsNotNull(lModel.jdsAWBRows, 'jdsDocRows');

  // With Postgres that does not use a 'mock' OpenAll is mandatory to retrieve all records
  if aPostgres then
  begin
    lModel.OpenAll(False);
    Assert.AreNotEqual(0, lModel.jdsAWBs.RecordCount);
  end
  else
    Assert.AreNotEqual(0, lModel.jdsAWBs.RecordCount);

  Assert.AreNotEqual(0, lModel.jdsAWBs.RecordCount, 'jdsDocHeads.RecordCount');
  Assert.AreNotEqual(0, lModel.jdsAWBRows.RecordCount, 'jdsDocRows.RecordCount');

  // test First Record
  lModel.First(nil, True);
  Assert.IsNotNull(lModel.LogisticAWBRecord.DBDataset);
  Assert.IsTrue(lModel.LogisticAWBRecord.DBDataset = lModel.jdsAWBs.Dataset);
  lModel.LogisticAWBRecord.LoadFromDataset;
  I := lModel.LogisticAWBRecord.Id.AsInteger;
  J := lModel.jdsAWBs.Dataset.FieldByName(lModel.LogisticAWBRecord.Id.DBField).AsInteger;
  { Assert.AreNotEqual(GUID_NULL, lModel.CurrentRecord.GUID, 'NO RECORD loaded Guid not set'); }
  Assert.AreEqual(I, J, 'IRecord <> jdsAWBs');
  lModel := nil;

end;

procedure TTAWBMVVM.ModelFilter(const aPostgres: boolean);
begin

end;

procedure TTAWBMVVM.RegisterPOstgres;
begin
{$IFDEF TESTPOSTGRES}
  TJanuaUniPgApplication.RegisterFramework;
{$ENDIF TESTPOSTGRES}
end;

procedure TTAWBMVVM.Setup;
begin
  // TJanuaOrmFramework.Initialize;
  TJanuaApplication.DBSchemaID := 33;
  TJanuaMockFiredacApplication.RegisterFireDacDataModules;
end;

procedure TTAWBMVVM.TearDown;
begin
  FModel := nil;
  FViewModel := nil;
{$IFDEF TESTPOSTGRES}
  TJanuaUniPgApplication.Terminate;
{$ENDIF TESTPOSTGRES}
end;

procedure TTAWBMVVM.ViewModel(const aPostgres: boolean);
var
  lViewModel: IJanuaLogisticAWBDBViewModel;
begin
  if aPostgres then
    RegisterPOstgres;
  Assert.IsTrue(TJanuaApplicationFactory.TryGetInterface(IJanuaLogisticAWBDBViewModel, lViewModel),
    'IJanuaDBAnagraphViewModel not registered');
  Assert.IsNotNull(lViewModel, 'lModel');
  lViewModel.Activate;
  Assert.IsNotNull(lViewModel.jdsAWBs, 'jdsAWBs');
  Assert.IsNotNull(lViewModel.jdsAWBRows, 'jdsAWBRows');
  Assert.IsNotNull(lViewModel.jdsMaster, 'jdsMaster');
  Assert.IsNotNull(lViewModel.jdsDetail, 'jdsDetail');
  lViewModel := nil;

end;

procedure TTAWBMVVM.ViewModelFilter(const aPostgres: boolean);
begin

end;

end.
