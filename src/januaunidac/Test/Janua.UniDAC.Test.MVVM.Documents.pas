unit Janua.UniDAC.Test.MVVM.Documents;

interface

uses
  DUnitX.TestFramework, Janua.Core.Classes, Janua.Core.Classes.Intf, Janua.Documents.ViewModel.Intf,
  Janua.Search.ViewModels.Engines.Intf, Janua.Core.Types, Janua.Orm.Types, Janua.Orm.Intf;

type

  [TestFixture]
  TTDocsMVVM = class
  private
    FTestCaption: string;
    FTestEnabled: boolean;
    FViewModel: IJanuaDBDocumentsViewModel;
    FModel: IJanuaDBDocumentsModel;
    procedure GenerateModel;
    procedure GenerateViewModel;
  public
    [Setup]
    /// <summary> This method Switches to the Postgres UniDAC Test Database Framework </summary>
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Sample Methods
    // Simple single Test
    // Test with TestCase Attribute to supply parameters.
    [Test]
    procedure DocRecord;
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
    procedure LookupTypes;
    [Test]
    procedure RowsModel;
    [Test]
    procedure RowsViewModel;
    [Test]
    procedure DocChargesModel;
    [Test]
    procedure DocChargesViewModel;
    [Test]
    procedure AttachmentsModel;
    [Test]
    procedure AttachmentsViewModel;
  end;

implementation

uses System.SysUtils, Janua.Mock.Firedac.Framework, Janua.Application.Framework, Janua.ViewModels.Application,
  System.StrUtils, JOrm.Documents.Impl, JOrm.Documents.Intf, {$IFDEF TESTPOSTGRES} Janua.Uni.Framework,
{$ENDIF TESTPOSTGRES} System.Types;

{ TTDocsMVVM }

procedure TTDocsMVVM.AttachmentsModel;
begin
  GenerateModel;
  Assert.IsNotNull(FModel);
  FModel.GenerateSubModels;
  Assert.IsNotNull(FModel.DocAttachments);
end;

procedure TTDocsMVVM.AttachmentsViewModel;
begin
  GenerateViewModel;
  Assert.IsNotNull(FViewModel);
  FViewModel.GenerateSubModels;
  // property AttachmentsViewModel: IJanuaDocAttachmentsViewModel read GetVMAttachments;
  Assert.IsNotNull(FViewModel.AttachmentsViewModel);
end;

procedure TTDocsMVVM.DataModule;
var
  lDataModule: IJanuaDocumentsDataModule;
begin

  Assert.IsTrue(TJanuaApplicationFactory.TryGetInterface(IJanuaDocumentsDataModule, lDataModule),
    'IJanuaDocumentsDataModule not registered');
  Assert.IsNotNull(lDataModule, 'lDataModule');
  lDataModule.Activate;
  Assert.IsNotNull(lDataModule.jdsDocCharges);
  Assert.IsNotNull(lDataModule.jdsDocTypes);
  Assert.IsNotNull(lDataModule.jdsDocHeads);
  Assert.IsNotNull(lDataModule.jdsDocRows);
  Assert.IsNotNull(lDataModule.jdsDocAttachments);

  lDataModule.jdsDocHeads.ParamByName('p_group_id').AsInteger := 16;
  Assert.IsNotNull(lDataModule.jdsDocHeads, 'jdsDocHeads');
  lDataModule := nil;
end;

procedure TTDocsMVVM.DatasetFilter;
var
  lDataModule: IJanuaDocumentsDataModule;
  aParam: IJanuaField;
begin

  Assert.IsTrue(TJanuaApplicationFactory.TryGetInterface(IJanuaDocumentsDataModule, lDataModule),
    'IJanuaDocumentsDataModule not registered');
  Assert.IsNotNull(lDataModule, 'lDataModule');
  lDataModule.Activate;
  Assert.IsNotNull(lDataModule.jdsDocHeads, 'jdsDocHeads');

  begin
    lDataModule.jdsDocHeads.ParamByName('p_group_id').AsInteger := 16;
    lDataModule.jdsDocHeads.Open;
  end;
  if not lDataModule.jdsDocHeads.FilterParams.FindParam('search_index', aParam) then
    lDataModule.jdsDocHeads.FilterParams.AddParam('search_index', TJanuaFieldType.jptString, '');

  Assert.IsNotNull(lDataModule.jdsDocHeads.FilterParams.ParamByName('search_index'));
  lDataModule.jdsDocHeads.FilterParams.ParamByName('search_index').AsString := '9092020';
  Assert.AreEqual('9092020', lDataModule.jdsDocHeads.FilterParams.ParamByName('search_index').AsString);

  lDataModule.jdsDocHeads.FilterParams.Activate;
  lDataModule.jdsDocHeads.ApplyFilter;

  Assert.IsTrue(lDataModule.jdsDocHeads.RecordCount > 0);

  lDataModule := nil;

end;

procedure TTDocsMVVM.DocChargesModel;
var
  lDocCharges: IJanuaRsDocCharges;
begin
  GenerateModel;
  Assert.IsNotNull(FModel);
  FModel.OpenAll(False);
  FModel.GenerateSubModels;
  FModel.LoadRecord;
  Assert.IsNotNull(FModel.RSDocCharges, 'RSDocCharges');
  Assert.IsNotNull(FModel.RSDocCharges.Charges, 'Charges');
  Assert.IsNotNull(FModel.RSDocCharges.Rows, 'Rows');
  // Assert.IsNotNull(FModel.RSDocCharges.Charge, 'Charge');
  Assert.IsNotNull(FModel.RSDocCharges.Row, 'Row');
  Assert.IsNotNull(FModel.RSDocCharges.jdsDataset, 'jdsDataset');
  lDocCharges := FModel.RSDocCharges;
  lDocCharges.AppendRecord;
  lDocCharges.Charges.Row.Id.AsInteger := Random(100000);
  Assert.AreNotEqual(0, lDocCharges.Charges.Row.DocId.AsInteger, 'DocId');

end;

procedure TTDocsMVVM.DocChargesViewModel;
begin
  GenerateViewModel;
  Assert.IsNotNull(FViewModel);
  FViewModel.GenerateSubModels;
  Assert.IsNotNull(FViewModel.ChargesViewModel, 'ChargesViewModel');
  Assert.IsNotNull(FViewModel.ChargesViewModel.RsDocDocCharges, 'RsDocDocCharges');

end;

procedure TTDocsMVVM.DocRecord;
var
  aDocHead: IDocHeadView;
begin
  aDocHead := TDocHeadView.Create('DocHead', TJanuaEntity.DocHeads);
  Assert.IsNotNull(aDocHead);
  Assert.IsNotNull(aDocHead.Rows);
  Assert.IsNotNull(aDocHead.Attachments);
  Assert.IsNotNull(aDocHead.Charges);
end;

procedure TTDocsMVVM.GenerateModel;
var
  aDocHead: IDocHeadView;
begin
  FModel := nil;
  Assert.IsTrue(TJanuaApplicationFactory.TryGetInterface(IJanuaDBDocumentsModel, FModel),
    'IJanuaDBAnagraphModel not registered');
  Assert.IsNotNull(FModel, 'lModel');
  Assert.IsNotNull(FModel.jdsDocHeads);
  Assert.IsNotNull(FModel.jdsDocCharges);
  Assert.IsNotNull(FModel.jdsDocRows);
  Assert.IsNotNull(FModel.jdsDocAttachments);
  { Assert.IsNotNull(FModel.jdsVatAmounts, 'jdsVatAmounts'); }
  FModel.GroupID := 16;
  FModel.Activate;

  aDocHead := TDocHeadView.Create('DocHead', TJanuaEntity.DocHeads);
  Assert.IsNotNull(aDocHead);
  Assert.IsNotNull(aDocHead.Rows);
  Assert.IsNotNull(aDocHead.Attachments);
  Assert.IsNotNull(aDocHead.Charges);

  aDocHead.StoreDataset := FModel.jdsDocHeads;
  aDocHead.Rows.StoreDataset := FModel.jdsDocRows;
  aDocHead.Attachments.StoreDataset := FModel.jdsDocAttachments;
  aDocHead.Charges.StoreDataset := FModel.jdsDocCharges;

  aDocHead.LoadFromDataset;
end;

procedure TTDocsMVVM.GenerateViewModel;
begin
  FViewModel := nil;
  Assert.IsTrue(TJanuaApplicationFactory.TryGetInterface(IJanuaDBDocumentsViewModel, FViewModel),
    'IJanuaDBDocumentsViewModel not registered');
  FViewModel.GroupID := 16;
  Assert.IsNotNull(FViewModel, 'FViewModel not set');
  FViewModel.Activate;
  Assert.IsTrue(FViewModel.Active);
end;

procedure TTDocsMVVM.LookupTypes;
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

procedure TTDocsMVVM.Model;
var
  lModel: IJanuaDBDocumentsModel;
begin
  lModel := nil;
  Assert.IsTrue(TJanuaApplicationFactory.TryGetInterface(IJanuaDBDocumentsModel, lModel),
    'IJanuaDBAnagraphModel not registered');
  Assert.IsNotNull(lModel, 'lModel');
  lModel.GroupID := 16;
  Assert.IsTrue(lModel.GroupID = 16, 'lModel GroupID error');
  lModel.Activate;
  Assert.IsNotNull(lModel.jdsDocHeads, 'jdsDocHeads');
  Assert.IsNotNull(lModel.jdsDocRows, 'jdsDocRows');

  // With Postgres that does not use a 'mock' OpenAll is mandatory to retrieve all records
  lModel.LazyLoading := False;
  lModel.OpenAll(False);
  Assert.IsTrue(lModel.jdsDocHeads.RecordCount > 1000); // (35400, );

  Assert.AreNotEqual(0, lModel.jdsDocHeads.RecordCount, 'jdsDocHeads.RecordCount');
  Assert.AreNotEqual(0, lModel.jdsDocRows.RecordCount, 'jdsDocRows.RecordCount');
  // Lazy Loading needs a command to open Details
  lModel.RefreshRecord;
  Assert.AreNotEqual(0, lModel.DocHeadRecord.Rows.RecordCount, 'lModel.DocHeadRecord.Rows.RecordCount');
  Assert.AreNotEqual(0, lModel.jdsDocRows.RecordCount, 'jdsDocRows.RecordCount');
  // Don't check right now

  // test ricerca 'FERCAM SPA'
  lModel.First(nil, True);
  Assert.AreNotEqual(GUID_NULL, lModel.CurrentRecord.GUID, 'NO RECORD loaded Guid not set');
  Assert.AreEqual(lModel.DocHeadRecord.Id.AsInteger,
    lModel.jdsDocHeads.Dataset.FieldByName(lModel.DocHeadRecord.Id.DBField).AsInteger);
  lModel := nil;

end;

procedure TTDocsMVVM.ModelFilter;
var
  iTest: Integer;
begin
  // Genero il model con una funzione di classe
  GenerateModel;
  // qui devo eseguire il filtro sul 'master dataset'.
  Assert.IsNotNull(FModel.jdsDocHeads, 'jdsTestMaster');
  Assert.IsNotNull(FModel.jdsDocHeads.FilterParams, 'FilterParams');
  Assert.AreEqual(2, FModel.jdsDocHeads.FilterParams.ParamCount, 'Pre-Filter must be 2 Record');

  // With Postgres that does not use a 'mock' OpenAll is mandatory to retrieve all records
  FModel.OpenAll(False);

  Assert.IsTrue(FModel.jdsDocHeads.RecordCount > 1000); // (35400, );

  FModel.MainSearchText := '9092020';
  Sleep(100);
  Assert.IsTrue(FModel.jdsDocHeads.FilterParams.Active);
  Assert.AreEqual('9092020', FModel.MainSearchText, 'MainSearchText');
  Assert.AreEqual('9092020', FModel.jdsDataset.FilterParams.ParamByName('search_index').AsString);
  Assert.IsTrue(FModel.jdsDataset.Filtered, 'Dataset Filtered');

  Assert.IsTrue(FModel.jdsDataset.RecordCount > 0);
  Assert.IsTrue(Pos('9092020', FModel.jdsDataset.FieldByName('search_index').AsString) > 0);
  { Assert.AreEqual('MASTER AND OWNER PF PS FRAMURA', FModel.DocHeadRecord.DestName.AsString.ToUpper,
    'DestName'); }
  FModel.MainSearchText := '9092020';
  Assert.IsTrue(FModel.jdsDataset.RecordCount > 0);
  Assert.IsTrue(Pos('9092020', FModel.jdsDataset.FieldByName('search_index').AsString) > 0);

  FModel.MainSearchText := '';

  Sleep(100);

  iTest := FModel.jdsDataset.RecordCount;
  Assert.IsTrue(FModel.jdsDocHeads.RecordCount > 1000); // (35400, );
end;

procedure TTDocsMVVM.RowsModel;
begin
  GenerateModel;
  Assert.IsNotNull(FModel);
  FModel.GenerateSubModels;
  Assert.IsNotNull(FModel.DocumentRows);
end;

procedure TTDocsMVVM.RowsViewModel;
begin
  GenerateViewModel;
  Assert.IsNotNull(FViewModel);
  FViewModel.GenerateSubModels;
end;

procedure TTDocsMVVM.Setup;
begin
  // TJanuaOrmFramework.Initialize;
  TJanuaApplication.DBSchemaID := 33;
  TJanuaMockFiredacApplication.RegisterClasses;
{$IFDEF TESTPOSTGRES}
  TJanuaUniPgApplication.RegisterFramework;
{$ELSE}
  TJanuaMockFiredacApplication.RegisterFireDacDataModules;
{$ENDIF TESTPOSTGRES}
end;

procedure TTDocsMVVM.TearDown;
begin
  FModel := nil;
  FViewModel := nil;
{$IFDEF TESTPOSTGRES}TJanuaUniPgApplication.Terminate; {$ENDIF TESTPOSTGRES}
end;

procedure TTDocsMVVM.ViewModel;
var
  lViewModel: IJanuaDBDocumentsViewModel;
begin
  Assert.IsTrue(TJanuaApplicationFactory.TryGetInterface(IJanuaDBDocumentsViewModel, lViewModel),
    'IJanuaDBAnagraphViewModel not registered');
  Assert.IsNotNull(lViewModel, 'lModel');
  lViewModel.Activate;
  Assert.IsNotNull(lViewModel.jdsDocHeads, 'jdsDocHeads');
  Assert.IsNotNull(lViewModel.jdsDocRows, 'jdsDocRows');
  Assert.IsNotNull(lViewModel.jdsMaster, 'jdsMaster');
  Assert.IsNotNull(lViewModel.jdsDetail, 'jdsDetail');

  // Check SVM Components
  Assert.IsNotNull(lViewModel.SVMCarrier, 'SVMCarrier');
  Assert.IsNotNull(lViewModel.SVMHolder, 'SVMHolder');
  Assert.IsNotNull(lViewModel.SVMVesselLocation, 'SVMVesselLocation');
  Assert.IsNotNull(lViewModel.SVMAnagraph, 'SVMAnagraph');
  Assert.IsNotNull(lViewModel.SVMRowItem, 'SVMRowItem');
  Assert.IsNotNull(lViewModel.SVMVessel, 'SVMVessel');

  lViewModel := nil;
end;

procedure TTDocsMVVM.ViewModelFilter;
begin
  // at first i Create The ViewModel
  GenerateViewModel;
  FViewModel.Activate;
  // we already know that there are 4 records
  Assert.IsNotNull(FViewModel.dsMaster, '.dsMaster');
  Assert.IsNotNull(FViewModel.dsMaster.Dataset, '.DataSet');

  // With Postgres that does not use a 'mock' OpenAll is mandatory to retrieve all records

  FViewModel.OpenAll(False);

  Assert.IsTrue(FViewModel.dsMaster.Dataset.RecordCount > 1000); // (35400, );

  // then I set the Main Search Text of the View model to test1
  FViewModel.MainSearchText := '9092020';
  // Must Wait 100ms for the Filter to be applied (because it is in a parallel thread).
  Assert.AreEqual('9092020', FViewModel.MainSearchText, 'MainSearchText');
  // Then to check if Filter is correctly applied we must check the record Count of AnLastName
  // Sleep beacuse of Thread and Queue
  Sleep(100);

  Assert.IsTrue(FViewModel.jdsDocHeads.RecordCount > 0);
  // PERSEVERANZA SPA DI NAVIGAZIONE
  Assert.IsNotNull(FViewModel.jdsDocHeads, '.dsMaster');
  Assert.IsNotNull(FViewModel.jdsDocHeads.Dataset, '.DataSet');
  FViewModel.jdsDocHeads.First;
  Assert.IsTrue(Pos('9092020', FViewModel.jdsDocHeads.FieldByName('search_index').AsString) > 0);

  { Assert.AreEqual('M/V NACC POROS - KENTON SHIPPING INC',
    FViewModel.DocHeadRecord.DestName.AsString.ToUpper, 'DestName'); }

  // I must first check that information has passed to Model and Dataset
  // FViewModel.AnagraphRecord.LoadFromDataset;
  FViewModel.MainSearchText := '';
  Sleep(100);

  Assert.IsTrue(FViewModel.jdsDocHeads.RecordCount > 1000);

  FViewModel := nil;
end;

initialization

TDUnitX.RegisterTestFixture(TTDocsMVVM);

end.
