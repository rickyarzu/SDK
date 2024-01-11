unit Janua.UniDAC.Test.MVVM.Shipments;

interface

uses
  DUnitX.TestFramework, Janua.Core.Classes, Janua.Core.Classes.Intf, Janua.Logistic.Shipments.ViewModel.Intf,
  Janua.Search.ViewModels.Engines.Intf;

type

  [TestFixture]
  TTShipmentsMVVM = class
  private
    FTestCaption: string;
    FTestEnabled: boolean;
    FViewModel: IJanuaDBShipmentsViewModel;
    FModel: IJanuaShipmentsModel;
    procedure GenerateModel;
    procedure GenerateViewModel;
    /// <summary> This method Switches to the Postgres UniDAC Test Database Framework </summary>
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Sample Methods
    // Simple single Test
    // Test with TestCase Attribute to supply parameters.
    [Test]
    procedure DataModule;
    [Test]
    procedure Model;
    [Test]
    procedure ViewModel;
    [Test]
    procedure DatasetFilter;
    [Test]
    procedure ModelFilter;
    [Test]
    procedure ViewModelFilter;
  end;

implementation

uses System.SysUtils, System.Math, Janua.Mock.Firedac.Framework, Janua.Application.Framework,
  Janua.ViewModels.Application,
{$IFDEF TESTPOSTGRES}Janua.Uni.Framework, {$ENDIF} System.Types;

{ TTShipmentsMVVM }

procedure TTShipmentsMVVM.DataModule;
var
  lDataModule: IJanuaShipmentsDataModule;
begin

  Assert.IsTrue(TJanuaApplicationFactory.TryGetInterface(IJanuaShipmentsDataModule, lDataModule),
    'IJanuaShipmentsDataModule not registered');
  Assert.IsNotNull(lDataModule, 'lDataModule');
  lDataModule.Activate;
  Assert.IsNotNull(lDataModule.jdsShipments, 'jdsDocHeads');
  lDataModule := nil;
end;

procedure TTShipmentsMVVM.DatasetFilter;
var
  lDataModule: IJanuaShipmentsDataModule;
begin

  Assert.IsTrue(TJanuaApplicationFactory.TryGetInterface(IJanuaShipmentsDataModule, lDataModule),
    'IJanuaDocumentsDataModule not registered');
  Assert.IsNotNull(lDataModule, 'lDataModule');
  lDataModule.Activate;
  { where
    (:p_work_type_id = 0 or type_id = :p_work_type_id)
    and
    (:p_work_id = 0 or workflow_id = :p_work_id) }

  if not lDataModule.jdsShipments.Active then
  begin
    lDataModule.jdsShipments.ParamByName('p_work_id').AsInteger := 0;
    lDataModule.jdsShipments.Open;
  end;

  Assert.IsNotNull(lDataModule.jdsShipments, 'jdsShipments');
  Assert.IsNotNull(lDataModule.jdsShipments.FilterParams.ParamByName('search_index'));
  Sleep(100);
  lDataModule.jdsShipments.FilterParams.ParamByName('search_index').AsString := 'SC115000022';// 'SC220000230';
  Assert.AreEqual('SC115000022', lDataModule.jdsShipments.FilterParams.ParamByName('search_index').AsString);

  lDataModule.jdsShipments.FilterParams.Activate;
  Sleep(100);
  lDataModule.jdsShipments.ApplyFilter;

  Assert.AreNotEqual(0, lDataModule.jdsShipments.RecordCount, 'lDataModule.jdsShipments.RecordCount');

  lDataModule := nil;

end;

procedure TTShipmentsMVVM.GenerateModel;
begin
  FModel := nil;
  Assert.IsTrue(TJanuaApplicationFactory.TryGetInterface(IJanuaShipmentsModel, FModel),
    'IJanuaShipmentsModel not registered');
  Assert.IsNotNull(FModel, 'lModel');
  FModel.Activate;
end;

procedure TTShipmentsMVVM.GenerateViewModel;
begin
  FViewModel := nil;
  Assert.IsTrue(TJanuaApplicationFactory.TryGetInterface(IJanuaDBShipmentsViewModel, FViewModel),
    'IJanuaShipmentsViewModel not registered');
  Assert.IsNotNull(FViewModel, 'FViewModel not set');
  FViewModel.Activate;
  Assert.IsTrue(FViewModel.Active);
end;


procedure TTShipmentsMVVM.Model;
var
  lModel: IJanuaShipmentsModel;
begin

  lModel := nil;
  Assert.IsTrue(TJanuaApplicationFactory.TryGetInterface(IJanuaShipmentsModel, lModel),
    'IJanuaShipmentsModel not registered');
  Assert.IsNotNull(lModel, 'lModel');
  lModel.Activate;

  Assert.IsNotNull(lModel.jdsShipments, 'jdsShipments');
  Assert.IsNotNull(lModel.jdsShipmentRows, 'jdsShipmentRows');

  // With Postgres that does not use a 'mock' OpenAll is mandatory to retrieve all records

  lModel.OpenAll(False);

  Assert.AreNotEqual(0, lModel.jdsShipments.RecordCount, 'jdsShipments.RecordCount');
  Assert.AreNotEqual(0, lModel.jdsShipmentRows.RecordCount, 'jdsShipmentRows.RecordCount');
  // test ricerca 'FERCAM SPA'
  lModel.First(nil, True);
  lModel.RefreshRecord;
  Assert.AreNotEqual(GUID_NULL, lModel.CurrentRecord.GUID, 'NO RECORD loaded Guid not set');
  Assert.AreEqual(lModel.ShipmentRecord.Id.AsInteger,
    lModel.jdsShipments.Dataset.FieldByName(lModel.ShipmentRecord.Id.DBField).AsInteger);
  lModel := nil;
end;

procedure TTShipmentsMVVM.ModelFilter;
var
  iTest: Integer;
begin

  // Genero il model con una funzione di classe
  GenerateModel;
  // qui devo eseguire il filtro sul 'master dataset'.
  Assert.IsNotNull(FModel.jdsShipments, 'jdsTestMaster');
  Assert.IsNotNull(FModel.jdsShipments.FilterParams, 'FilterParams');
  Assert.AreEqual(2, FModel.jdsShipments.FilterParams.ParamCount, 'Pre-Filter must be 1 Record');

  // With Postgres that does not use a 'mock' OpenAll is mandatory to retrieve all records
  FModel.OpenAll(False);
  Assert.AreNotEqual(0, FModel.jdsShipments.RecordCount);

  FModel.MainSearchText := 'SC115000022';
  Sleep(1000);
  Assert.IsTrue(FModel.jdsShipments.FilterParams.Active);
  Assert.AreEqual('SC115000022', FModel.MainSearchText, 'MainSearchText');
  Assert.AreEqual('SC115000022', FModel.jdsDataset.FilterParams.ParamByName('search_index').AsString);
  Assert.IsTrue(FModel.jdsDataset.Filtered, 'Dataset Filtered');

  Assert.AreEqual(1, FModel.jdsDataset.RecordCount, 'Filter must be 1 Record');
  FModel.LoadRecord;
  Assert.AreEqual('SC11500022', FModel.ShipmentRecord.Code.AsString.ToUpper, 'Code not SC11500022');
  FModel.MainSearchText := 'SC115000022';
  Assert.AreNotEqual(0, FModel.jdsDataset.RecordCount, 'Filter must be 5 Record');
  FModel.MainSearchText := '';

  Sleep(1000);

  iTest := FModel.jdsDataset.RecordCount;

  Assert.AreNotEqual(0, iTest, 'Searchtext empty');

  Assert.AreNotEqual(1, iTest, 'Searchtext 1 Record');

end;

procedure TTShipmentsMVVM.Setup;
begin
  // TJanuaOrmFramework.Initialize;
  TJanuaApplication.DBSchemaID := 33;
  TJanuaMockFiredacApplication.RegisterClasses;
{$IFDEF TESTPOSTGRES}
  TJanuaUniPgApplication.RegisterFramework;
  TJanuaUniPgApplication.RegisterDataModules;
{$ELSE}
  TJanuaMockFiredacApplication.RegisterFireDacDataModules;
{$ENDIF TESTPOSTGRES}
end;

procedure TTShipmentsMVVM.TearDown;
begin
  FModel := nil;
  FViewModel := nil;
  TJanuaUniPgApplication.Terminate;
end;

procedure TTShipmentsMVVM.ViewModel;
var
  lViewModel: IJanuaDBShipmentsViewModel;
begin

  Assert.IsTrue(TJanuaApplicationFactory.TryGetInterface(IJanuaDBShipmentsViewModel, lViewModel),
    'IJanuaDBShipmentsViewModel not registered');
  Assert.IsNotNull(lViewModel, 'lModel');
  lViewModel.Activate;
  Assert.IsNotNull(lViewModel.jdsShipments, 'jdsDocHeads');
  Assert.IsNotNull(lViewModel.jdsShipmentRows, 'jdsDocRows');
  Assert.IsNotNull(lViewModel.jdsMaster, 'jdsMaster');
  Assert.IsNotNull(lViewModel.jdsDetail, 'jdsDetail');
  lViewModel := nil;
end;

procedure TTShipmentsMVVM.ViewModelFilter;
begin

  // at first i Create The ViewModel
  GenerateViewModel;
  FViewModel.Activate;
  // we already know that there are 4 records
  Assert.IsNotNull(FViewModel.dsMaster, '.dsMaster');
  Assert.IsNotNull(FViewModel.dsMaster.Dataset, '.DataSet');

  // With Postgres that does not use a 'mock' OpenAll is mandatory to retrieve all records

  FViewModel.OpenAll(False);
  Assert.AreNotEqual(0, FViewModel.dsMaster.Dataset.RecordCount, 'OpenAll dsMaster.Dataset.RecordCount');
  Assert.AreNotEqual(1, FViewModel.dsMaster.Dataset.RecordCount, 'OpenAll dsMaster.Dataset.RecordCount');

  // then I set the Main Search Text of the View model to test1
  FViewModel.MainSearchText := 'SC115000022';
  // Must Wait 100ms for the Filter to be applied (because it is in a parallel thread).
  Assert.AreEqual('SC115000022', FViewModel.MainSearchText, 'MainSearchText');
  // Then to check if Filter is correctly applied we must check the record Count of AnLastName
  // Sleep beacuse of Thread and Queue
  Sleep(400);

  Assert.AreEqual(1, FViewModel.jdsShipments.RecordCount, 'MainSearchText jdsShipments.RecordCount');
  // PERSEVERANZA SPA DI NAVIGAZIONE
  Assert.IsNotNull(FViewModel.jdsShipments, '.dsMaster');
  Assert.IsNotNull(FViewModel.jdsShipments.Dataset, '.DataSet');
  FViewModel.jdsShipments.First;
  FViewModel.ShipmentsModel.LoadRecord;
  Assert.AreNotEqual(0, Pos('SC115000022', FViewModel.jdsShipments.FieldByName('search_index').AsString), 'Pos SC115000022');
  Assert.AreEqual('SC115000022', FViewModel.ShipmentRecord.WorkCode.AsString, 'Code');

  // I must first check that information has passed to Model and Dataset
  // FViewModel.AnagraphRecord.LoadFromDataset;
  FViewModel.MainSearchText := '';
  Sleep(1000);

  Assert.AreNotEqual(0, FViewModel.dsMaster.Dataset.RecordCount, 'Searchtext empty 0');
  Assert.AreNotEqual(1, FViewModel.dsMaster.Dataset.RecordCount, 'Searchtext Empty 1');

  FViewModel := nil;

end;

end.
