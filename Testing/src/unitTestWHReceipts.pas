unit unitTestWHReceipts;

interface

uses
  DUnitX.TestFramework, Janua.Core.Classes, Janua.Core.Classes.Intf,
  Janua.Documents.WarehouseReceipts.Model.impl, Janua.Documents.WarehouseReceipts.ViewModel.Intf,
  Janua.Search.ViewModels.Engines.Intf;

type

  [TestFixture]
  TWHRMVVM = class
  private
    FTestCaption: string;
    FTestEnabled: boolean;
    FViewModel: IJanuaWHReceiptsViewModel;
    FModel: IJanuaWHReceiptsModel;
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
    [Test]
    procedure ViewModelDetails;
    [Test]
    procedure LookupTypes;
    [Test]
    procedure SearchVM;
  end;

implementation

uses System.SysUtils, Janua.Mock.Firedac.Framework, Janua.Application.Framework, Janua.ViewModels.Application,
{$IFDEF TESTPOSTGRES}
  Janua.Orm.UniDac, Janua.Uni.Framework,
{$ENDIF TESTPOSTGRES}
  System.Generics.Collections, Janua.Orm.Intf, Janua.Orm.Types, System.Types;

{ TWHRMVVM }

procedure TWHRMVVM.DataModule;
var
  lDataModule: IJanuaWHReceiptsDataModule;
  I, J, K: integer;
begin
  Assert.IsTrue(TJanuaApplicationFactory.TryGetInterface(IJanuaWHReceiptsDataModule, lDataModule),
    'IJanuaDocumentsDataModule not registered');
  Assert.IsNotNull(lDataModule, 'lDataModule');
  lDataModule.Activate;
  Assert.IsNotNull(lDataModule.jdsDocHeads, 'jdsDocHeads');
  I := 0;
  J := 0;
  // Test Grid:
  J := lDataModule.jdsDocHeads.AddGridColumn('id', 12, 'Doc. ID');
  Inc(I);
  Assert.AreEqual(J, Pred(I), 'AddGrid Col IJ');
  J := lDataModule.jdsDocHeads.AddGridColumn('dest_town', 60, 'Dest. Town');
  Inc(I);
  Assert.AreEqual(J, Pred(I), 'AddGrid Col IJ');
  J := lDataModule.jdsDocHeads.AddGridColumn('dest_town', 60, 'Dest. Town');
  Inc(I);
  Assert.AreEqual(J, Pred(I), 'AddGrid Col IJ');
  J := lDataModule.jdsDocHeads.AddGridColumn('taxable_amount', 12, 'Taxable Amnt.', '#,##0.00');
  Inc(I);
  Assert.AreEqual(J, Pred(I), 'AddGrid Col IJ');
  Assert.AreEqual('#,##0.00', lDataModule.jdsDocHeads.GridColumns[J].Mask, 'Mask');
  Assert.AreEqual('Taxable Amnt.', lDataModule.jdsDocHeads.GridColumns[J].Title, 'Title');
  K := lDataModule.jdsDocHeads.GridColumns[J].GridFieldDef.CharWidth;
  Assert.AreEqual(12, K, 'CharWidth');

  J := lDataModule.jdsDocHeads.GridColumns.Count;
  Assert.AreEqual(I, J, 'Grid Columns Count');
  // Test Filters:

  lDataModule := nil;

end;

procedure TWHRMVVM.DatasetFilter;
var
  lDataModule: IJanuaWHReceiptsDataModule;
begin

  Assert.IsTrue(TJanuaApplicationFactory.TryGetInterface(IJanuaWHReceiptsDataModule, lDataModule),
    'IJanuaDocumentsDataModule not registered');
  Assert.IsNotNull(lDataModule, 'lDataModule');
  lDataModule.Activate;
  if not lDataModule.jdsDocHeads.Active then
    lDataModule.jdsDocHeads.Open;
  Assert.IsNotNull(lDataModule.jdsDocHeads, 'jdsDocHeads');
  Assert.IsNotNull(lDataModule.jdsDocHeads.FilterParams.ParamByName('search_index'));
  lDataModule.jdsDocHeads.FilterParams.ParamByName('search_index').AsString := '9092020';
  Assert.AreEqual('9092020', lDataModule.jdsDocHeads.FilterParams.ParamByName('search_index').AsString);

  lDataModule.jdsDocHeads.FilterParams.Activate;
  lDataModule.jdsDocHeads.ApplyFilter;
  Assert.AreNotEqual(0, lDataModule.jdsDocHeads.RecordCount, 'RecordCount');
  Assert.AreNotEqual(0, Pos('9092020', lDataModule.jdsDocHeads.FieldByName('search_index').AsString),
    'search_index');
  lDataModule := nil;

end;

procedure TWHRMVVM.GenerateModel;
begin

  FModel := nil;
  Assert.IsTrue(TJanuaApplicationFactory.TryGetInterface(IJanuaWHReceiptsModel, FModel),
    'IJanuaDBAnagraphModel not registered');
  Assert.IsNotNull(FModel, 'lModel');
  FModel.Activate;

end;

procedure TWHRMVVM.GenerateViewModel;
begin
  FViewModel := nil;
  Assert.IsTrue(TJanuaApplicationFactory.TryGetInterface(IJanuaWHReceiptsViewModel, FViewModel),
    'IJanuaDBDocumentsViewModel not registered');
  Assert.IsNotNull(FViewModel, 'FViewModel not set');
  FViewModel.Activate;
  Assert.IsTrue(FViewModel.Active);
end;

procedure TWHRMVVM.LookupTypes;
var
  lLookupTypes: ILookupModelDocumentTypes;
  bTest: boolean;
begin
  // TJanuaViewModelApplication.RegisterLookupModelClass(TLookupPostgresDocumentTypes, ILookupModelDocumentTypes);

  bTest := TJanuaViewModelApplication.TryGetLookupModel(ILookupModelDocumentTypes, 1, lLookupTypes);
  Assert.IsTrue(bTest);
  Assert.IsNotNull(lLookupTypes);

  lLookupTypes := nil;
end;

procedure TWHRMVVM.Model;
var
  lModel: IJanuaWHReceiptsModel;
begin

  lModel := nil;
  Assert.IsTrue(TJanuaApplicationFactory.TryGetInterface(IJanuaWHReceiptsModel, lModel),
    'IJanuaDBAnagraphModel not registered');
  Assert.IsNotNull(lModel, 'lModel');
  lModel.Activate;

  Assert.IsNotNull(lModel.jdsDocHeads, 'jdsDocHeads');
  Assert.IsNotNull(lModel.jdsDocRows, 'jdsDocRows');
  {
    lModel.GroupID := 14;
    Assert.IsTrue(14 = lModel.GroupID, 'lModel.GroupID Before');
    lModel.OpenAll(False);
    Sleep(300);
    Assert.IsTrue(14 = lModel.GroupID, 'lModel.GroupID After');
  }

  // With Postgres that does not use a 'mock' OpenAll is mandatory to retrieve all records
  lModel.OpenAll(False);
  Assert.AreNotEqual(0, lModel.jdsDocHeads.RecordCount, 'jdsDocHeads.RecordCount');
  Assert.AreNotEqual(0, lModel.jdsDocRows.RecordCount, 'jdsDocRows.RecordCount');

  // test ricerca 'FERCAM SPA'
  lModel.First(nil);
  lModel.LoadRecord;
  Assert.AreNotEqual(GUID_NULL, lModel.CurrentRecord.GUID, 'NO RECORD loaded Guid not set');
  Assert.AreEqual(lModel.DocHeadRecord.Id.AsInteger,
    lModel.jdsDocHeads.Dataset.FieldByName(lModel.DocHeadRecord.Id.DBField).AsInteger);
  lModel := nil;

end;

procedure TWHRMVVM.ModelFilter;
var
  iTest, iStart: integer;
  vParams: string;
  lField: TPair<string, IJanuaField>;
begin
  // Genero il model con una funzione di classe
  GenerateModel;
  // qui devo eseguire il filtro sul 'master dataset'.
  Assert.IsNotNull(FModel.jdsDocHeads, 'jdsTestMaster');
  Assert.IsNotNull(FModel.jdsDocHeads.FilterParams, 'FilterParams');

  for lField in FModel.jdsDocHeads.FilterParams.Items do
    vParams := vParams + lField.Value.DBField + ' ';

  Assert.AreEqual(2, FModel.jdsDocHeads.FilterParams.ParamCount, 'Pre-Filter must be 2: ' + vParams);

  // With Postgres that does not use a 'mock' OpenAll is mandatory to retrieve all records
  FModel.OpenAll(False);
  iStart := FModel.jdsDocHeads.RecordCount;
  Assert.AreNotEqual(0, iStart);
  Assert.AreNotEqual(1, iStart);

  FModel.MainSearchText := '9092020';
  Sleep(1000);
  Assert.IsTrue(FModel.jdsDocHeads.FilterParams.Active);
  Assert.AreEqual('9092020', FModel.MainSearchText, 'MainSearchText');
  Assert.AreEqual('9092020', FModel.jdsDataset.FilterParams.ParamByName('search_index').AsString);
  Assert.IsTrue(FModel.jdsDataset.Filtered, 'Dataset Filtered');

  Assert.AreNotEqual(0, FModel.jdsDataset.RecordCount, 'Filter must be 1 Record');
  FModel.RefreshRecord;
  Assert.AreNotEqual(0, FModel.DocHeadRecord.Id.AsInteger, 'DocID');
  Assert.AreNotEqual('', FModel.DocHeadRecord.DocNumber.AsString.ToUpper, 'DocNumber');
  FModel.MainSearchText := '9092020';
  Assert.AreNotEqual(0, FModel.jdsDataset.RecordCount, 'Filter must be 5 Record');
  Assert.AreNotEqual(0, Pos('9092020', FModel.jdsDataset.FieldByName('search_index').AsString));

  FModel.MainSearchText := '';

  Sleep(1000);
  //
  iTest := FModel.jdsDataset.RecordCount;
  Assert.AreEqual(iTest, iStart, 'iStart <> iTest');
end;

procedure TWHRMVVM.RegisterPOstgres;
begin
  TJanuaUniPgApplication.RegisterFramework;
end;

procedure TWHRMVVM.SearchVM;
var
  iTest, iStart: integer;
  vParams: string;
  lField: TPair<string, IJanuaField>;
begin
  // Genero il model con una funzione di classe
  GenerateViewModel;
  // qui devo eseguire il filtro sul 'master dataset'.
  Assert.IsNotNull(FViewModel.jdsDocHeads, 'jdsTestMaster');
  Assert.IsNotNull(FViewModel.jdsDocHeads.FilterParams, 'FilterParams');
  Assert.IsNotNull(FViewModel.SVMShipment, 'SVMShipment');
  Assert.IsNotNull(FViewModel.SVMCarrier, 'SVMCarrier');
  Assert.IsNotNull(FViewModel.SVMHolder, 'SVMHolder');
  Assert.IsNotNull(FViewModel.SVMVesselLocation, 'SVMVesselLocation');
  Assert.IsNotNull(FViewModel.SVMRowItem, 'Items');
  Assert.IsNotNull(FViewModel.SVMAnagraph, 'SVMAnagraph');
  Assert.IsNotNull(FViewModel.SVMVessel, 'SVMVessel');

end;

procedure TWHRMVVM.Setup;
begin
  // TJanuaOrmFramework.Initialize;
  TJanuaApplication.DBSchemaID := 33;
{$IFDEF TESTPOSTGRES}
  TJanuaMockFiredacApplication.RegisterClasses;
  TJanuaUniPgApplication.RegisterFramework;
{$ELSE}
  TJanuaMockFiredacApplication.RegisterFireDacDataModules;
{$ENDIF TESTPOSTGRES}
end;

procedure TWHRMVVM.TearDown;
begin
  FModel := nil;
  FViewModel := nil;
  TJanuaUniPgApplication.Terminate;

end;

procedure TWHRMVVM.ViewModel;
var
  lViewModel: IJanuaWHReceiptsViewModel;
begin
  Assert.IsTrue(TJanuaApplicationFactory.TryGetInterface(IJanuaWHReceiptsViewModel, lViewModel),
    'IJanuaDBAnagraphViewModel not registered');
  Assert.IsNotNull(lViewModel, 'lModel');
  lViewModel.Activate;
  Assert.IsNotNull(lViewModel.jdsDocHeads, 'jdsAnagraphs');
  Assert.IsNotNull(lViewModel.jdsDocRows, 'CurrentRecord');
  lViewModel := nil;
end;

procedure TWHRMVVM.ViewModelDetails;
var
  iTest, iStart: integer;
  bTest: boolean;
  sTest: string;
begin
  // at first i Create The ViewModel
  GenerateViewModel;
  FViewModel.Activate;
  // we already know that there are 4 records
  FViewModel.GenerateSubModels;
  Assert.IsNotNull(FViewModel.WHRRowsViewModel, 'WHRRowsViewModel');
  Assert.IsNotNull(FViewModel.WHRRowsViewModel.SVMSupplier, 'SVMSupplier');
end;

procedure TWHRMVVM.ViewModelFilter;
var
  iTest, iStart: integer;
  bTest: boolean;
  sTest: string;
begin
  // at first i Create The ViewModel
  GenerateViewModel;
  FViewModel.Activate;
  // we already know that there are 4 records
  Assert.IsNotNull(FViewModel.dsMaster, '.dsMaster');
  Assert.IsNotNull(FViewModel.dsMaster.Dataset, '.DataSet');

  // With Postgres that does not use a 'mock' OpenAll is mandatory to retrieve all records
  FViewModel.OpenAll(False);
  iStart := FViewModel.jdsDocHeads.RecordCount;
  sTest := FViewModel.jdsDocHeads.FilterParams.FilterText;
  bTest := FViewModel.jdsDocHeads.Filtered;
  bTest := FViewModel.jdsDocHeads.Active and FViewModel.jdsDocHeads.Dataset.Active;
  Assert.IsTrue(bTest, 'bTest');
  Assert.AreNotEqual(0, iStart, '(1)jdsDocHeads.RecordCount');
  Assert.AreNotEqual(1, iStart, '(1)dsMaster.Dataset.RecordCount');

  // then I set the Main Search Text of the View model to test1
  FViewModel.MainSearchText := '9092020';
  // Must Wait 100ms for the Filter to be applied (because it is in a parallel thread).
  Assert.AreEqual('9092020', FViewModel.MainSearchText, 'MainSearchText');
  // Then to check if Filter is correctly applied we must check the record Count of AnLastName
  // Sleep beacuse of Thread and Queue
  Sleep(400);
  Assert.AreNotEqual(0, FViewModel.jdsDocHeads.RecordCount, 'FViewModel.jdsDocHeads');
  // PERSEVERANZA SPA DI NAVIGAZIONE
  Assert.IsNotNull(FViewModel.jdsDocHeads, '.dsMaster');
  Assert.IsNotNull(FViewModel.jdsDocHeads.Dataset, '.DataSet');
  FViewModel.jdsDocHeads.First;
  FViewModel.DBDocumentsModel.LoadRecord;
  Assert.AreNotEqual('', FViewModel.DocHeadRecord.DestName.AsString.ToUpper, 'DestName');

  // I must first check that information has passed to Model and Dataset
  // FViewModel.AnagraphRecord.LoadFromDataset;
  FViewModel.MainSearchText := '';
  Sleep(1000);
  Assert.AreNotEqual(0, FViewModel.dsMaster.Dataset.RecordCount, 'dsMaster.Dataset.RecordCount');
  Assert.AreNotEqual(1, FViewModel.dsMaster.Dataset.RecordCount, 'dsMaster.Dataset.RecordCount');

  FViewModel := nil;
end;

end.
