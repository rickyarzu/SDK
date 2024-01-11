unit Janua.Test.ViewModel.Anagraph;

interface

uses
  DUnitX.TestFramework, Janua.Core.Classes, Janua.Core.Classes.Intf, Janua.Anagraph.ViewModel.Intf;

type

  [TestFixture]
  TTAnagMVVM = class
  private
    FTestCaption: string;
    FTestEnabled: boolean;
    FViewModel: IJanuaDBAnagraphViewModel;
    FModel: IJanuaDBAnagraphModel;

    // Anagraph DB Test coordinates
    FMainSearchText: string;
    FGroupID: Integer;

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
    [TestCase('MemDS', 'False')]
    procedure AnagraphDataModule(const aPostgres: boolean);
    [Test]
    [TestCase('MemDS', 'False')]
    procedure AnagraphModel(const aPostgres: boolean);
    [Test]
    [TestCase('MemDS', 'False')]
    procedure AnagraphViewModel(const aPostgres: boolean);
    [Test]
    [TestCase('MemDS', 'False')]
    procedure DatasetFilter(const aPostgres: boolean);
    [Test]
    [TestCase('MemDS', 'False')]
    procedure ModelFilter(const aPostgres: boolean);
    [Test]
    [TestCase('MemDS', 'False')]
    procedure ViewModelFilter(const aPostgres: boolean);
    [Test]
    [TestCase('MemDS', 'False')]
    procedure LookupTypes(const aPostgres: boolean);
  end;

implementation

uses System.SysUtils, System.StrUtils, Janua.Mock.Firedac.Framework, Janua.Application.Framework,
  System.Types;

{ TTAnagMVVM }

procedure TTAnagMVVM.AnagraphDataModule(const aPostgres: boolean);
var
  lDataModule: IJanuaAnagraphDataModule;
begin
  if aPostgres then
    RegisterPOstgres;
  Assert.IsTrue(TJanuaApplicationFactory.TryGetInterface(IJanuaAnagraphDataModule, lDataModule),
    'IJanuaAnagraphDataModule not registered');
  Assert.IsNotNull(lDataModule, 'lDataModule');
  lDataModule.Activate;
  Assert.IsNotNull(lDataModule.jdsAnagraphs, 'jdsAnagraphs');
end;

procedure TTAnagMVVM.AnagraphModel(const aPostgres: boolean);
var
  lModel: IJanuaDBAnagraphModel;
begin
  if aPostgres then
    RegisterPOstgres;
  Assert.IsTrue(TJanuaApplicationFactory.TryGetInterface(IJanuaDBAnagraphModel, lModel),
    'IJanuaDBAnagraphModel not registered');
  Assert.IsNotNull(lModel, 'lModel');
  lModel.Activate;
  Assert.IsNotNull(lModel.jdsGroups, 'jdsGroups');
  Assert.IsNotNull(lModel.jdsAnagraphs, 'jdsAnagraphs');
  if aPostgres then
  begin
    lModel.GroupID := 10;
    Assert.IsTrue(10 = lModel.GroupID, 'lModel.GroupID Before');
    lModel.OpenAllGroups;
    lModel.OpenAll(False { multi threading deactivated } );
    Assert.IsTrue(10 = lModel.GroupID, 'lModel.GroupID After');
  end
  else
  begin
    lModel.GroupID := 14;
    Assert.IsTrue(14 = lModel.GroupID, 'lModel.GroupID Before');
    lModel.OpenAll(False { multi threading deactivated } );
    lModel.OpenAllGroups;
    Assert.IsTrue(14 = lModel.GroupID, 'lModel.GroupID After');
  end;
  Assert.AreNotEqual(0, lModel.jdsGroups.RecordCount, 'JdsGroups.RecordCount');
  Assert.AreNotEqual(0, lModel.jdsAnagraphs.RecordCount, 'JdsGroups.RecordCount');
  // test ricerca 'FERCAM SPA'
  lModel.First(nil);
  Assert.AreNotEqual(GUID_NULL, lModel.CurrentRecord.GUID, 'NO RECORD loaded Guid not set');
  Assert.AreEqual(lModel.AnagraphRecord.AnagraphId.AsInteger,
    lModel.jdsAnagraphs.Dataset.FieldByName(lModel.AnagraphRecord.AnagraphId.DBField).AsInteger);
end;

procedure TTAnagMVVM.AnagraphViewModel(const aPostgres: boolean);
var
  lViewModel: IJanuaDBAnagraphViewModel;
begin
  if aPostgres then
    RegisterPOstgres;
  Assert.IsTrue(TJanuaApplicationFactory.TryGetInterface(IJanuaDBAnagraphViewModel, lViewModel),
    'IJanuaDBAnagraphViewModel not registered');
  Assert.IsNotNull(lViewModel, 'lModel');
  lViewModel.Activate;
  Assert.IsNotNull(lViewModel.jdsAnagraphs, 'jdsAnagraphs');
  Assert.IsNotNull(lViewModel.AnagraphRecord, 'CurrentRecord');
end;

procedure TTAnagMVVM.DatasetFilter(const aPostgres: boolean);
var
  FDM: IJanuaAnagraphDataModule;
begin
  if aPostgres then
    RegisterPOstgres;
  Assert.IsTrue(TJanuaApplicationFactory.TryGetInterface(IJanuaAnagraphDataModule, FDM),
    'IJanuaAnagraphDataModule not registered');
  Assert.IsNotNull(FDM, 'lDataModule');
  FDM.Activate;

  if aPostgres then
  begin
    FDM.jdsAnagraphs.ParamByName('db_schema_id').AsInteger := TJanuaApplication.DBSchemaID;
    FDM.jdsAnagraphs.ParamByName('p_group_id').AsInteger := FGroupID;
    FDM.jdsAnagraphs.ParamByName('p_search_name').AsString :=
      '%' + IfThen((FMainSearchText <> '') and (FMainSearchText <> '%'), FMainSearchText + '%', '');
    FDM.jdsAnagraphs.ParamByName('anagraph_id').AsInteger := 0;

    FDM.jdsAnagraphs.Open;
  end;

  Assert.AreNotEqual(0, FDM.jdsAnagraphs.RecordCount, '0 Record on Anagraph');

  FMainSearchText := 'ZUNINOMARMISA';

  // **** Test Search Params *************************************************************
  FDM.jdsAnagraphs.FilterParams.Activate;
  Assert.IsNotNull(FDM.jdsAnagraphs.FilterParams.ParamByName('search_index'));
  FDM.jdsAnagraphs.FilterParams.ParamByName('search_index').AsString := FMainSearchText;
  Assert.IsTrue(FDM.jdsAnagraphs.FilterParams.ParamByName('search_index').Active);
  Assert.AreEqual(FMainSearchText, FDM.jdsAnagraphs.FilterParams.ParamByName('search_index').AsString);
  FDM.jdsAnagraphs.ApplyFilter;
  Assert.AreEqual(1, FDM.jdsAnagraphs.RecordCount, 'Dataset Filter');

end;

procedure TTAnagMVVM.GenerateModel;
begin
  Assert.IsTrue(TJanuaApplicationFactory.TryGetInterface(IJanuaDBAnagraphModel, FModel),
    'IJanuaDBAnagraphModel not registered');
  Assert.IsNotNull(FModel, 'lModel');
  FModel.Activate;

end;

procedure TTAnagMVVM.GenerateViewModel;
begin
  Assert.IsTrue(TJanuaApplicationFactory.TryGetInterface(IJanuaDBAnagraphViewModel, FViewModel),
    'IJanuaDBAnagraphViewModel not registered');
  Assert.IsNotNull(FViewModel, 'lModel');
  FViewModel.Activate;

end;

procedure TTAnagMVVM.LookupTypes(const aPostgres: boolean);
begin

end;

procedure TTAnagMVVM.ModelFilter(const aPostgres: boolean);
begin
  if aPostgres then
    RegisterPOstgres;
  // Genero il model con una funzione di classe
  GenerateModel;
  // qui devo eseguire il filtro sul 'master dataset'.
  Assert.IsNotNull(FModel.jdsAnagraphs, 'jdsTestMaster');
  Assert.IsNotNull(FModel.jdsAnagraphs.FilterParams, 'FilterParams');
  Assert.AreEqual(1, FModel.jdsAnagraphs.FilterParams.ParamCount);

  if aPostgres then
  begin
    FModel.GroupID := 10;
    Assert.IsTrue(10 = FModel.GroupID, 'lModel.GroupID Before');
    FModel.OpenAllGroups;
    FModel.OpenAll(False { multi threading deactivated } );
    Assert.IsTrue(10 = FModel.GroupID, 'lModel.GroupID After');
  end
  else
  begin
    FModel.GroupID := 14;
    Assert.IsTrue(14 = FModel.GroupID, 'lModel.GroupID Before');
    FModel.OpenAll(False { multi threading deactivated } );
    FModel.OpenAllGroups;
    Assert.IsTrue(14 = FModel.GroupID, 'lModel.GroupID After');
  end;

  FModel.MainSearchText := 'ZUNINOMARMISA';
  { FModel.jdsAnagraphs.FilterParams.Activate; }
  // MainSearchText when set to anything but '' should activate a Filtering event setting Filters to True
  Sleep(400);
  Assert.IsTrue(FModel.jdsAnagraphs.FilterParams.Active);
  Assert.AreEqual('ZUNINOMARMISA', FModel.MainSearchText, 'MainSearchText');
  Assert.AreEqual('ZUNINOMARMISA', FModel.jdsDataset.FilterParams.ParamByName('search_index').AsString);
  Assert.AreEqual(1, FModel.jdsDataset.RecordCount, 'Filter must be 1 Record');
  Assert.AreEqual('ZUNINO MARMI S.A.S.', FModel.AnagraphRecord.AnLastName.AsString.ToUpper, 'LastName');
end;

procedure TTAnagMVVM.RegisterPOstgres;
begin
  { TJanuaUniPgApplication.RegisterFramework; }
end;

procedure TTAnagMVVM.Setup;
begin
  // TJanuaOrmFramework.Initialize;
  TJanuaMockFiredacApplication.RegisterFireDacDataModules;
  FMainSearchText := '';
  FGroupID := 10;
  TJanuaApplication.DBSchemaID := 33;
end;

procedure TTAnagMVVM.TearDown;
begin
  try
    FModel := nil;
    { TJanuaUniPgApplication.Terminate; }
  except
    on E: Exception do
      RaiseException('TearDown', E, self);
  end;

end;

procedure TTAnagMVVM.ViewModelFilter(const aPostgres: boolean);
begin
  if aPostgres then
    RegisterPOstgres;
  // at first i Create The ViewModel
  GenerateViewModel;
  FViewModel.Activate;
  // we already know that there are 4 records
  Assert.IsNotNull(FViewModel.dsMaster, '.dsMaster');
  Assert.IsNotNull(FViewModel.dsMaster.Dataset, '.DataSet');

  if aPostgres then
  begin
    FViewModel.OpenAll(False);
    Assert.AreEqual(22689, FViewModel.dsMaster.Dataset.RecordCount)
  end
  else
    Assert.AreEqual(22474, FViewModel.dsMaster.Dataset.RecordCount);

  // then I set the Main Search Text of the View model to test1
  FViewModel.MainSearchText := 'ZUNINOMARMISA';
  // Must Wait 100ms for the Filter to be applied (because it is in a parallel thread).
  Assert.AreEqual('ZUNINOMARMISA', FViewModel.MainSearchText, 'MainSearchText');
  // Then to check if Filter is correctly applied we must check the record Count of AnLastName
  // Sleep beacuse of Thread and Queue
  Sleep(300);
  Assert.AreEqual(1, FViewModel.dsMaster.Dataset.RecordCount);
  // I must first check that information has passed to Model and Dataset
  // FViewModel.AnagraphRecord.LoadFromDataset;
  Assert.AreEqual('ZUNINO MARMI S.A.S.', FViewModel.AnagraphRecord.AnLastName.AsString.ToUpper, 'LastName');
end;

end.
