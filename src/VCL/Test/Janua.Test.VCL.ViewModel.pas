unit Janua.Test.VCL.ViewModel;


interface

uses
  DUnitX.TestFramework, Janua.Orm.Dataset.Intf, Janua.ViewModels.Intf, Janua.Test.ViewModel.Intf,
  Janua.Controls.Forms.Intf, Janua.Orm.Intf, Data.DB, Janua.Orm.Test.Intf, Janua.Core.Classes.Intf;

type

  [TestFixture]
  TTestViewModel = class(TObject)
  private
    FDM: IJanuaTestDataModule;
    FTestNestedRecord: IJanuaTestNestedRecord;
    FJanuaTestModel: IJanuaDBTestModel;
    FModel: IJanuaDBModel;
    FTestViewModel: IJanuaTestViewModel;
    FViewModel: IJanuaDBViewModel;
    procedure LoadRecord;
    procedure GenerateModel;
    procedure GenerateViewModel;
    procedure RegisterPOstgres;
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Sample Methods
    // Simple single Test
    [Test]
    procedure TestModel;
    // Test with TestCase Attribute to supply parameters.
    [Test]
    procedure InitializeModel;
    // Test with TestCase Attribute to supply parameters.
    [Test]
    procedure SupportModel;
    // Test with TestCase Attribute to supply parameters.
    [Test]
    procedure TestViewModel;
    [Test]
    procedure InitializeViewModel;
    // Test with TestCase Attribute to supply parameters.
    [Test]
    procedure SupportViewModel;
    // Test with TestCase Attribute to supply parameters.
    [Test]
    procedure ModelDatasets;
    // Test with TestCase Attribute to supply parameters.
    [Test]
    procedure TestFramework;
    [Test]
    procedure TestOrmRecord;
    [Test]
    procedure TestOrmDataModule;
    [Test]
    procedure TestSerialization;
    [Test]
    procedure TestDBSerialization;
    [Test]
    procedure TestDataModule;
    [Test]
    procedure TestDBserialSync;
    [Test]
    procedure TestDBPost;
    [Test]
    procedure ModelFrame;
    [Test]
    procedure ModelGenerateSubModels;
    [Test]
    procedure ViewModelGenerateSubViews;
    [Test]
    procedure ViewModelActions;
    [Test]
    procedure ViewModelNavigator;
    [Test]
    procedure ViewModelDetails;
    [Test]
    procedure ViewModelDetailNavigator;
    [Test]
    procedure ViewModelMasterDetailForm;
    [Test]
    procedure DatasetFilter;
    [Test]
    procedure ModelFilter;
    [Test]
    procedure ViewModelFilter;
  end;

implementation

uses
  // VCL Forms
  System.SysUtils, System.Types, VCL.Forms, ufrmBindTestOrm, ufrmVCLViewModelNavigator, ufrmTestDetailFrames,
  // Janua
  Janua.Uni.Framework, Janua.Mock.Firedac.Framework, Janua.Application.Framework, Janua.ViewModels.Application,
  Janua.Orm.Types;

procedure TTestViewModel.DatasetFilter;
var
  FDM: IJanuaTestDataModule;
begin
  if not TJanuaApplicationFactory.TryGetInterface(IJanuaTestDataModule, FDM) then
    raise Exception.Create('IJanuaTestDataModule not set');
  FDM.Activate;
  Assert.IsNotNull(FDM.jdsTestMaster.FilterParams.ParamByName('search_index'));
  FDM.jdsTestMaster.FilterParams.ParamByName('search_index').AsString := 'test1';
  Assert.AreEqual('test1', FDM.jdsTestMaster.FilterParams.ParamByName('search_index').AsString);
  FDM.jdsTestMaster.ApplyFilter;
  Assert.AreEqual(1, FDM.jdsTestMaster.RecordCount);
end;

procedure TTestViewModel.GenerateModel;
begin
  if not TJanuaApplicationFactory.TryGetInterface(IJanuaDBTestModel, FJanuaTestModel) then
    raise Exception.Create('IJanuaDBAnagraphModel not set');
  FJanuaTestModel.Activate;
  if not Supports(FJanuaTestModel, IJanuaDBModel, FModel) then
    raise Exception.Create('IJanuaDBModel not supported');
end;

procedure TTestViewModel.GenerateViewModel;
begin
  // FJanuaTestModel: IJanuaDBTestModel;
  if not TJanuaApplicationFactory.TryGetInterface(IJanuaTestViewModel, FTestViewModel) then
    raise Exception.Create('IJanuaTestViewModel not set');
  if not Supports(FTestViewModel, IJanuaDBViewModel, FViewModel) then
    raise Exception.Create('IJanuaDBViewModel not suported');
  FViewModel.Activate;
end;

procedure TTestViewModel.InitializeModel;
var
  FJanuaTestModel: IJanuaDBTestModel;
  FModel: IJanuaDBModel;
begin
  // FJanuaTestModel: IJanuaDBTestModel;
  Assert.IsTrue(TJanuaApplicationFactory.TryGetInterface(IJanuaDBTestModel, FJanuaTestModel),
    'IJanuaDBAnagraphModel not set');
  FJanuaTestModel.Activate;
  Assert.Pass('Initialize Error');
  Assert.IsTrue(Supports(FJanuaTestModel, IJanuaDBModel, FModel), 'IJanuaDBModel not supported');
end;

procedure TTestViewModel.InitializeViewModel;
var
  FTestViewModel: IJanuaDBTestModel;
  FViewModel: IJanuaDBViewModel;
begin
  // FJanuaTestModel: IJanuaDBTestModel;
  Assert.IsTrue(TJanuaApplicationFactory.TryGetInterface(IJanuaTestViewModel, FTestViewModel),
    'IJanuaTestViewModel not set');

  Assert.IsTrue(Supports(FTestViewModel, IJanuaDBViewModel, FViewModel), 'IJanuaDBViewModel not suported');

end;

procedure TTestViewModel.LoadRecord;
begin
  Assert.IsTrue(TJanuaOrmFactory.TryGetRecordIntf(IJanuaTestNestedRecord, FTestNestedRecord,
    'TestMaster', TestMaster), 'IJanuaTestNestedRecord not set');
  Assert.IsTrue(TJanuaApplicationFactory.TryGetInterface(IJanuaTestDataModule, FDM),
    'IJanuaTestDataModule not set');

  Assert.IsNotNull(FDM, 'FDM');
  Assert.IsNotNull(FTestNestedRecord, 'FTestNestedRecord');

  FDM.Activate;

  Assert.IsNotNull(FDM.jdsTestMaster, 'jdsTestMaster');
  Assert.IsNotNull(FDM.jdsTestDetail, 'jdsTestDetail');

  FTestNestedRecord.LoadFromDataset(FDM.jdsTestMaster, [FDM.jdsTestDetail]);
  Assert.AreNotEqual(0, FTestNestedRecord.SubRecordSet.RecordCount, 'SubRecordSet');
end;

procedure TTestViewModel.ModelDatasets;
var
  FJanuaTestModel: IJanuaDBTestModel;
  FModel: IJanuaDBModel;
begin
  // FJanuaTestModel: IJanuaDBTestModel;
  TJanuaApplicationFactory.TryGetInterface(IJanuaDBTestModel, FJanuaTestModel);
  FJanuaTestModel.Activate;
  Assert.IsNotNull(FJanuaTestModel.jdsTestMaster, 'jdsTestMaster');
  Assert.IsNotNull(FJanuaTestModel.jdsTestDetail, 'jdsTestDetail');
  Assert.IsNotNull(FJanuaTestModel.NestedRecord, 'TestNestedRecord');
  Assert.AreNotEqual(0, FJanuaTestModel.jdsTestMaster.RecordCount);
  Assert.AreNotEqual(0, FJanuaTestModel.jdsTestDetail.RecordCount);
  Assert.IsTrue(Supports(FJanuaTestModel, IJanuaDBModel, FModel), 'IJanuaDBModel');
end;

procedure TTestViewModel.ModelFrame;
var
  aFrame: ufrmBindTestOrm.TfrmBindTestOrm;
  R: IJanuaTestNestedRecord;
begin
  // Genero il model con una funzione di classe
  GenerateModel;
  // Genero i SubModels e verifico che la funzione non si schianti
  FModel.GenerateSubModels;
  try
    aFrame := TfrmBindTestOrm.Create(nil);
    R := FJanuaTestModel.NestedRecord;
    aFrame.CurrentRecord := R;

    aFrame.edBoolean.Checked := True;
    Assert.AreEqual(aFrame.edBoolean.Checked, FJanuaTestModel.NestedRecord.GetBoolean.AsBoolean, 'Bool');

    aFrame.edIntFiled.Value := 999;
    Assert.AreEqual(999, FJanuaTestModel.NestedRecord.GetInteger.AsInteger, 'I');

    aFrame.edStringField.Text := 'ciao mondo';
    Assert.AreEqual('ciao mondo', FJanuaTestModel.NestedRecord.TestString.AsString, 'S');
    {
      aFrame.edDateTime.Date := Date;
      Assert.AreEqual(Date, FJanuaTestModel.NestedRecord.TestDateTime.AsDateTime, 'Date');
    }
  finally
    aFrame.Free;
  end;
end;

procedure TTestViewModel.ModelGenerateSubModels;
begin
  // Genero il model con una funzione di classe
  GenerateModel;
  Assert.IsNotNull(FJanuaTestModel.NestedRecord.SubRecordSet, 'SubReordset');
  Assert.IsNotNull(FJanuaTestModel.NestedRecord.SubRecordSet2, 'SubReordset2');
  // Genero i SubModels e verifico che la funzione non si schianti
  FModel.GenerateSubModels;
  // Verifico che abbia generato almeno un submodel
  Assert.AreNotEqual(0, FModel.ModelCount);

  Assert.IsNotNull(FJanuaTestModel.DetailModel1, 'DetailModel1');
  Assert.IsNotNull(FJanuaTestModel.DetailModel2, 'DetailModel2');
  Assert.AreEqual(2, FJanuaTestModel.ModelCount, 'ModelCount');
  FJanuaTestModel.RemoveSubModels;
  Assert.IsNull(FJanuaTestModel.DetailModel1, 'DetailModel1');
  Assert.IsNull(FJanuaTestModel.DetailModel2, 'DetailModel2');
  Assert.AreEqual(0, FJanuaTestModel.ModelCount, 'ModelCount');
end;

procedure TTestViewModel.RegisterPOstgres;
begin
  TJanuaUniPgApplication.RegisterFramework;
end;

procedure TTestViewModel.ModelFilter;
begin
  // Genero il model con una funzione di classe
  GenerateModel;
  // qui devo eseguire il filtro sul 'master dataset'.
  Assert.IsNotNull(FJanuaTestModel.jdsTestMaster, 'jdsTestMaster');
  Assert.IsNotNull(FJanuaTestModel.jdsTestMaster.FilterParams, 'FilterParams');
  Assert.AreEqual(1, FJanuaTestModel.jdsTestMaster.FilterParams.ParamCount);
  Assert.IsTrue(FJanuaTestModel.jdsTestMaster.FilterParams.Active);
  FJanuaTestModel.MainSearchText := 'test1';
  Sleep(100);
  Assert.AreEqual('test1', FJanuaTestModel.MainSearchText, 'MainSearchText');
  Assert.AreEqual('test1', FJanuaTestModel.jdsDataset.FilterParams.ParamByName('search_index').AsString);
  Sleep(100);
  Assert.AreEqual(1, FJanuaTestModel.jdsDataset.RecordCount, 'Filter must be 1 Record');
end;

procedure TTestViewModel.Setup;
begin
  TJanuaMockFiredacApplication.RegisterFireDacDataModules;
end;

procedure TTestViewModel.SupportModel;
var
  FJanuaTestModel: IJanuaDBTestModel;
begin
  // FJanuaTestModel: IJanuaDBTestModel;
  Assert.IsTrue(TJanuaApplicationFactory.TryGetInterface(IJanuaDBTestModel, FJanuaTestModel),
    'IJanuaDBAnagraphModel not set');
  FJanuaTestModel.Activate;
  Assert.Pass('Initialize Error');
end;

procedure TTestViewModel.SupportViewModel;
var
  FTestViewModel: IJanuaTestViewModel;
  FViewModel: IJanuaDBViewModel;
begin
  // FJanuaTestModel: IJanuaDBTestModel;
  Assert.IsTrue(TJanuaApplicationFactory.TryGetInterface(IJanuaTestViewModel, FTestViewModel),
    'IJanuaTestViewModel not set');
  Assert.IsTrue(Supports(FTestViewModel, IJanuaDBViewModel, FViewModel), 'IJanuaDBViewModel not suported');
  FViewModel.Activate;

  FTestViewModel := nil;
  FViewModel := nil;
end;

procedure TTestViewModel.TearDown;
begin
  try
    FDM := nil;
    FTestNestedRecord := nil;
    FJanuaTestModel := nil;
    FModel := nil;
    FTestViewModel := nil;
    FViewModel := nil;
  except
    on E: Exception do
      RaiseException('TearDown', E, self);

  end;
end;

procedure TTestViewModel.TestFramework;
begin
  TJanuaViewModelApplication.Initialize;
  Assert.IsNotNull(TJanuaViewModelApplication.Settings, 'TJanuaViewModelApplication.Settings');
  Assert.IsNotNull(TJanuaViewModelApplication.Settings.AnagGroups, 'AnagGroups');
  Assert.AreNotEqual(0, TJanuaViewModelApplication.Settings.AnagGroups.RecordCount, 'AnagGroups.Count');
end;

procedure TTestViewModel.TestModel;
var
  FJanuaTestModel: IJanuaDBTestModel;
begin
  // FJanuaTestModel: IJanuaDBTestModel;
  Assert.IsTrue(TJanuaApplicationFactory.TryGetInterface(IJanuaDBTestModel, FJanuaTestModel),
    'IJanuaDBAnagraphModel not set');
  FJanuaTestModel.Activate;
  Assert.IsNotNull(FJanuaTestModel.jdsDataset, 'FJanuaTestModel.jdsMaster');
  Assert.IsNotNull(FJanuaTestModel.jdsDetail, 'FJanuaTestModel.jdsDetail');
  Assert.AreEqual(3, FJanuaTestModel.MainSearchParams.ParamCount, 'MainSearchParams.ParamCount');
  FJanuaTestModel.SelectedItem := 1;
  FJanuaTestModel := nil;
end;

procedure TTestViewModel.TestOrmDataModule;
var
  FDM: IJanuaTestDataModule;
  FTestNestedRecord: IJanuaTestNestedRecord;
begin
  Assert.IsTrue(TJanuaOrmFactory.TryGetRecordIntf(IJanuaTestNestedRecord, FTestNestedRecord,
    'TestMaster', TestMaster), 'IJanuaTestNestedRecord not set');
  Assert.IsTrue(TJanuaApplicationFactory.TryGetInterface(IJanuaTestDataModule, FDM),
    'IJanuaTestDataModule not set');

  Assert.IsNotNull(FDM, 'FDM');
  Assert.IsNotNull(FTestNestedRecord, 'FTestNestedRecord');

  FDM.Activate;

  Assert.IsNotNull(FDM.jdsTestMaster, 'jdsTestMaster');
  Assert.IsNotNull(FDM.jdsTestDetail, 'jdsTestDetail');

  FTestNestedRecord.LoadFromDataset(FDM.jdsTestMaster, [FDM.jdsTestDetail]);
  Assert.AreNotEqual(0, FTestNestedRecord.SubRecordSet.RecordCount, 'SubRecordSet');
  // Assert.AreNotEqual(0, FTestNestedRecord.SubRecordSet2.RecordCount, 'SubRecordSet2');
end;

procedure TTestViewModel.TestOrmRecord;
var
  FTestNestedRecord: IJanuaTestNestedRecord;
begin
  Assert.IsTrue(TJanuaOrmFactory.TryGetRecordIntf(IJanuaTestNestedRecord, FTestNestedRecord,
    'TestMaster', TestMaster), 'IJanuaTestNestedRecord not set');
end;

procedure TTestViewModel.TestSerialization;
var
  FSerialization: IJanuaDatasetSerialization;
  FTestNestedRecord: IJanuaTestNestedRecord;
begin
  // Test with Empty Dataset.
  Assert.IsTrue(TJanuaOrmFactory.TryGetRecordIntf(IJanuaTestNestedRecord, FTestNestedRecord,
    'TestMaster', TestMaster), 'IJanuaTestNestedRecord not set');
  FSerialization := TOrmDatasetFactory.CreateDatasetSerialization(FTestNestedRecord.SubRecordSet);
  Assert.IsNotNull(FSerialization, 'FSerialization');
  FSerialization.Activate;
  FSerialization := nil;
  FTestNestedRecord := nil;
end;

procedure TTestViewModel.TestDataModule;
var
  FDM: IJanuaTestDataModule;
begin
  Assert.IsTrue(TJanuaApplicationFactory.TryGetInterface(IJanuaTestDataModule, FDM),
    'IJanuaTestDataModule not set');
end;

procedure TTestViewModel.TestDBPost;
var
  fs: IJanuaDatasetSerialization;
begin
  self.LoadRecord;
  // Creo la serializzazione del SubRecordSet (1)
  fs := TOrmDatasetFactory.CreateDatasetSerialization(FTestNestedRecord.SubRecordSet);
  Assert.IsNotNull(fs, 'FSerialization');
  // Inizializzo (carica il contenuto del recorset nel MemDataset e sincronizza)
  fs.Activate;
  Assert.AreEqual(FTestNestedRecord.SubRecordSet.RecordCount, fs.Dataset.RecordCount, 'Count Before');

  FTestNestedRecord.SubRecordSet.Append;
  FTestNestedRecord.SubRecordSet.TestInteger.AsInteger := 99;
  FTestNestedRecord.SubRecordSet.TestString.AsString := 'novantanove';
  FTestNestedRecord.SubRecordSet.Post;
  Assert.AreEqual(FTestNestedRecord.SubRecordSet.RecordCount, fs.Dataset.RecordCount, 'Count After');

  Assert.AreEqual(fs.Dataset.FieldByName(FTestNestedRecord.SubRecordSet.TestInteger.DBField).AsInteger,
    FTestNestedRecord.SubRecordSet.TestInteger.AsInteger);

  FTestNestedRecord.TestBoolean.AsBoolean := True;
  FTestNestedRecord.TestInteger.AsInteger := 99;
  FTestNestedRecord.TestString.AsString := 'novantanove';
  FTestNestedRecord.TestDouble.AsFloat := 99.99;

  FTestNestedRecord.SaveToDataset(False);

  Assert.AreEqual(FTestNestedRecord.SubRecordSet.RecordCount, FDM.jdsTestDetail.RecordCount, 'Count Post');

  Assert.AreEqual(FDM.jdsTestMaster.FieldByName(FTestNestedRecord.TestInteger.DBField).AsInteger, 99,
    'Post I');
  Assert.AreEqual(FDM.jdsTestMaster.FieldByName(FTestNestedRecord.TestBoolean.DBField).AsBoolean, True,
    'Post B');
  Assert.AreEqual(FDM.jdsTestMaster.FieldByName(FTestNestedRecord.TestString.DBField).AsString, 'novantanove',
    'Post S');
  Assert.AreEqual(FDM.jdsTestMaster.FieldByName(FTestNestedRecord.TestInteger.DBField).AsInteger, 99,
    'Post I');

  fs := nil;
  FTestNestedRecord := nil;
  FDM := nil;

end;

procedure TTestViewModel.TestDBSerialization;
var
  FSerialization: IJanuaDatasetSerialization;
begin
  self.LoadRecord;
  // Creo la serializzazione del SubRecordSet (1)
  FSerialization := TOrmDatasetFactory.CreateDatasetSerialization(FTestNestedRecord.SubRecordSet);
  Assert.IsNotNull(FSerialization, 'FSerialization');
  // Inizializzo (carica il contenuto del recorset nel MemDataset e sincronizza)
  FSerialization.Activate;

  Assert.AreNotEqual(0, FSerialization.Dataset.RecordCount, 'Dataset has 0 Record');

  FSerialization := nil;
  FTestNestedRecord := nil;
  FDM := nil;
end;

procedure TTestViewModel.TestDBserialSync;
var
  fs: IJanuaDatasetSerialization;
begin
  self.LoadRecord;
  // Creo la serializzazione del SubRecordSet (1)
  fs := TOrmDatasetFactory.CreateDatasetSerialization(FTestNestedRecord.SubRecordSet);
  Assert.IsNotNull(fs, 'FSerialization');
  // Inizializzo (carica il contenuto del recorset nel MemDataset e sincronizza)
  fs.Activate;
  Assert.AreEqual(FTestNestedRecord.SubRecordSet.RecordCount, fs.Dataset.RecordCount, 'Count Before');

  FTestNestedRecord.SubRecordSet.Append;
  FTestNestedRecord.SubRecordSet.TestInteger.AsInteger := 99;
  FTestNestedRecord.SubRecordSet.TestString.AsString := 'novantanove';
  FTestNestedRecord.SubRecordSet.Post;
  Assert.AreEqual(FTestNestedRecord.SubRecordSet.RecordCount, fs.Dataset.RecordCount, 'Count After');

  Assert.AreEqual(fs.Dataset.FieldByName(FTestNestedRecord.SubRecordSet.TestInteger.DBField).AsInteger,
    FTestNestedRecord.SubRecordSet.TestInteger.AsInteger);

  FTestNestedRecord.SubRecordSet.Prev;

  Assert.AreEqual(fs.Dataset.FieldByName(FTestNestedRecord.SubRecordSet.TestInteger.DBField).AsInteger,
    FTestNestedRecord.SubRecordSet.TestInteger.AsInteger, 'Prev Record');

  FTestNestedRecord.SubRecordSet.Next;

  Assert.AreEqual(fs.Dataset.FieldByName(FTestNestedRecord.SubRecordSet.TestInteger.DBField).AsInteger,
    FTestNestedRecord.SubRecordSet.TestInteger.AsInteger, 'Next Record');

  FTestNestedRecord.SubRecordSet.First;

  Assert.AreEqual(fs.Dataset.FieldByName(FTestNestedRecord.SubRecordSet.TestInteger.DBField).AsInteger,
    FTestNestedRecord.SubRecordSet.TestInteger.AsInteger, 'First Record');

  FTestNestedRecord.SubRecordSet.Last;

  Assert.AreEqual(fs.Dataset.FieldByName(FTestNestedRecord.SubRecordSet.TestInteger.DBField).AsInteger,
    FTestNestedRecord.SubRecordSet.TestInteger.AsInteger, 'Last Record');

  fs := nil;
  FTestNestedRecord := nil;
  FDM := nil;

end;

procedure TTestViewModel.TestViewModel;
var
  FTestViewModel: IJanuaTestViewModel;
begin
  // FJanuaTestModel: IJanuaDBTestModel;
  Assert.IsTrue(TJanuaApplicationFactory.TryGetInterface(IJanuaTestViewModel, FTestViewModel),
    'IJanuaTestViewModel not set');

end;

procedure TTestViewModel.ViewModelActions;
begin
  GenerateViewModel;
  Assert.IsNotNull(FViewModel.MainActionList, 'MainActionList');
  Assert.AreNotEqual(0, FViewModel.MainActionList.Actions.Count);

end;

procedure TTestViewModel.ViewModelDetailNavigator;
var
  aForm: ufrmTestDetailFrames.TfrmTestDetailFrames;
begin
  aForm := ufrmTestDetailFrames.TfrmTestDetailFrames.Create(nil);
  try
    Assert.IsNotNull(aForm, 'aForm');
    Assert.IsNotNull(aForm.frameJanuaVCLViewModelDetail1, 'frameJanuaVCLViewModelDetail1');
    Assert.IsNotNull(aForm.frameJanuaVCLViewModelDetail2, 'frameJanuaVCLViewModelDetail1');
    GenerateViewModel;
    FTestViewModel.GenerateSubModels;
    aForm.frameJanuaVCLViewModelDetail1.ViewModel := FTestViewModel.DetailViewModel1;
    aForm.frameJanuaVCLViewModelDetail2.ViewModel := FTestViewModel.DetailViewModel2;
  finally
    aForm.Free;
  end;
end;

procedure TTestViewModel.ViewModelDetails;
var
  lCaption: string;
  lIntegerTest: Integer;
  lGUID: TGUID;
begin
  GenerateViewModel;
  Assert.IsNull(FViewModel.MainActionList[jasCustom]);

  Assert.IsNotNull(FViewModel.MainActionList[jasFirst]);
  // Mi sposto sul primo Record per iniziare ..................................................
  lCaption := FViewModel.MainActionList[jasFirst].Caption;
  FViewModel.MainActionList[jasFirst].Execute;
  Assert.Pass('Action ' + lCaption + ' Failed');

  lGUID := FTestViewModel.TestNestedRecord.GUID;
  Assert.IsTrue(lGUID <> GUID_NULL);

  FViewModel.GenerateSubModels;

  Assert.AreNotEqual(0, FTestViewModel.DetailViewModel1.RecordSet.RecordCount);
  Assert.AreNotEqual(0, FTestViewModel.DetailViewModel2.RecordSet.RecordCount);

  Assert.IsNotNull(FViewModel.MainActionList[jasPost]);
  // Eseguo un Post del Record sul Dataset ....................................................
  lCaption := FViewModel.MainActionList[jasPost].Caption;
  FViewModel.MainActionList[jasPost].Execute;
  Assert.Pass('Action ' + lCaption + ' Failed');
  // Salvato il 'record' rimuovo le SubView  ..................................................
  FViewModel.RemoveSubModels;

  Assert.IsNotNull(FViewModel.MainActionList[jasNext]);
  Assert.IsTrue(lGUID <> FTestViewModel.TestNestedRecord.GUID, 'attenzione spostamento record');
  lGUID := FTestViewModel.TestNestedRecord.GUID;

  lCaption := FViewModel.MainActionList[jasNext].Caption;
  FViewModel.MainActionList[jasNext].Execute;
  Assert.Pass('Action ' + lCaption + ' Failed');

  FViewModel.GenerateSubModels;

  Assert.AreNotEqual(0, FTestViewModel.DetailViewModel1.RecordSet.RecordCount);
  Assert.AreNotEqual(0, FTestViewModel.DetailViewModel2.RecordSet.RecordCount);
end;

procedure TTestViewModel.ViewModelFilter;
begin
  // at first i Create The ViewModel
  GenerateViewModel;
  FTestViewModel.Activate;
  // we already know that there are 4 records
  Assert.IsNotNull(FTestViewModel.dsMaster, '.dsMaster');
  Assert.IsNotNull(FTestViewModel.dsMaster.Dataset, '.DataSet');
  Assert.AreEqual(4, FTestViewModel.dsMaster.Dataset.RecordCount);
  // then I set the Main Search Text of the View model to test1
  FTestViewModel.MainSearchText := 'test1';

  // Must Wait 100ms for the Filter to be applied (because it is in a parallel thread).
  Assert.AreEqual('test1', FTestViewModel.MainSearchText, 'MainSearchText');
  // I must first check that information has passed to Model and Dataset
  Assert.AreEqual('test1', FTestViewModel.TestNestedRecord.TestString.AsString, 'TestString');
  // Then to check if Filter is correctly applied we must check the record Count of Dataset
  // Sleep beacuse of Thread and Queue
  Sleep(100);
  Assert.AreEqual(1, FTestViewModel.dsMaster.Dataset.RecordCount);
end;

procedure TTestViewModel.ViewModelGenerateSubViews;
begin
  GenerateViewModel;
  FViewModel.GenerateSubModels;
  Assert.IsNotNull(FTestViewModel.DetailViewModel1, 'DetailViewModel1');
  Assert.IsNotNull(FTestViewModel.DetailViewModel2, 'DetailViewModel2');
  Assert.AreEqual(2, FTestViewModel.DetailCount, 'DetailCount');
  FViewModel.RemoveSubModels;
  Assert.IsNull(FTestViewModel.DetailViewModel1, 'DetailViewModel1');
  Assert.IsNull(FTestViewModel.DetailViewModel2, 'DetailViewModel2');
  Assert.AreEqual(0, FTestViewModel.DetailCount, 'DetailCount');
end;

procedure TTestViewModel.ViewModelMasterDetailForm;
var
  lCaption: string;
  lIntegerTest: Integer;
  lGUID: TGUID;
  FCR: IJanuaTestNestedRecord;
  aForm: TfrmTestDetailFrames;
  lCount: Integer;
begin
  GenerateViewModel;

  Assert.IsNotNull(FViewModel.MainActionList[jasFirst]);
  // Mi sposto sul primo Record per iniziare ..................................................
  lCaption := FViewModel.MainActionList[jasFirst].Caption;
  FViewModel.MainActionList[jasFirst].Execute;

  lGUID := FTestViewModel.TestNestedRecord.GUID;
  Assert.IsTrue(lGUID <> GUID_NULL, 'lGUID <> GUID_NULL');

  FCR := FTestViewModel.TestNestedRecord;
  FViewModel.GenerateSubModels;

  lCount := FCR.BindManager.BindCount;

  aForm := TfrmTestDetailFrames.Create(nil);
  try
    Assert.IsNotNull(aForm);
    Assert.AreEqual(lCount, FCR.BindManager.BindCount, 'FCR.BindManager.BindCount');
    FCR.Bind('GUIDString', aForm.lbJguid, 'Caption', True);
    FCR.TestString.Bind('AsString', aForm.edStringField, 'Text');
    Assert.AreEqual(aForm.edStringField.Text, FCR.TestString.AsString);
    Assert.AreEqual(FCR.BindManager.BindCount, lCount + 1, 'FCR.BindManager.BindCount');

    // edIntFiled
    FCR.TestInteger.Bind('AsInteger', aForm.edIntFiled, 'Value');
    Assert.AreEqual(Trunc(aForm.edIntFiled.Value), FCR.TestInteger.AsLargeInt);

    // edExtended
    FCR.TestDouble.Bind('AsFloat', aForm.edExtended, 'Value');
    Assert.AreEqual(aForm.edExtended.Value, FCR.TestDouble.AsFloat);

    // edBoolean
    FCR.TestBoolean.Bind('AsBoolean', aForm.edBoolean, 'Checked');
    Assert.AreEqual(aForm.edBoolean.Checked, FCR.TestBoolean.AsBoolean);

    // edDateTime.DateTime
    FCR.TestDateTime.Bind('AsDateTime', aForm.edDateTime, 'DateTime');
    Assert.AreEqual(aForm.edDateTime.DateTime, FCR.TestDateTime.AsDateTime);

    // edMemo.Text
    FCR.TestMemo.Bind('AsString', aForm.edMemo, 'Text');
    Assert.AreEqual(aForm.edMemo.Text, FCR.TestMemo.AsString);

    Assert.AreEqual(aForm.edStringField.Text, FCR.TestString.AsString);

    lCaption := 'Test ' + DateToStr(Date);
    aForm.edStringField.Text := lCaption;
    Assert.AreEqual(aForm.edStringField.Text, FCR.TestString.AsString);

    FViewModel.MainActionList[jasPost].Execute;
    // Verifico che dopo il post i due dati siano uguali
    Assert.AreEqual(aForm.edStringField.Text, FCR.TestString.AsString);
    // e che la modifica sia stata recepita
    Assert.AreEqual(lCaption, FCR.TestString.AsString);

  finally
    // Simulo la chiusura della form e rimuovo i SubModels
    FViewModel.RemoveSubModels;
    // Faccio 'fuori' il Form
    aForm.Free;
    aForm := nil;
  end;

  Assert.AreEqual(lCount, FCR.BindManager.BindCount);
  try
    // Mi sposto di 1 record e verifico che lCaption sia <> dal nuovo record ......
    FTestViewModel.MainActionList[jasNext].Execute;

    FTestViewModel.TestNestedRecord.LoadFromDataset;
    // Verifico di essermi effettivamente spostato di 1 record
    Assert.IsTrue(lGUID <> FTestViewModel.TestNestedRecord.GUID,
      'lGUID <> FTestViewModel.TestNestedRecord.GUID');
    lGUID := FTestViewModel.TestNestedRecord.GUID;
    // Verifico che il nuovo Record non sia uguale a lCaption
    Assert.AreNotEqual(lCaption, FCR.TestString.AsString);

    lGUID := FTestViewModel.TestNestedRecord.GUID;
    Assert.IsTrue(lGUID <> GUID_NULL, 'lGUID <> GUID_NULL');

    FTestViewModel.GenerateSubModels;
  except
    on E: Exception do
      RaiseException('Next Exception', E, self);

  end;

  aForm := TfrmTestDetailFrames.Create(nil);
  try
    Assert.IsNotNull(aForm);
    Assert.AreEqual(lCount, FCR.BindManager.BindCount, 'FCR.BindManager.BindCount');
    FCR.Bind('GUIDString', aForm.lbJguid, 'Caption', True);
    FCR.TestString.Bind('AsString', aForm.edStringField, 'Text');
    Assert.AreEqual(aForm.edStringField.Text, FCR.TestString.AsString);
    Assert.AreEqual(FCR.BindManager.BindCount, lCount + 1, 'FCR.BindManager.BindCount');

    // edIntFiled
    FCR.TestInteger.Bind('AsInteger', aForm.edIntFiled, 'Value');
    Assert.AreEqual(Trunc(aForm.edIntFiled.Value), FCR.TestInteger.AsLargeInt);

    // edExtended
    FCR.TestDouble.Bind('AsFloat', aForm.edExtended, 'Value');
    Assert.AreEqual(aForm.edExtended.Value, FCR.TestDouble.AsFloat);

    // edBoolean
    FCR.TestBoolean.Bind('AsBoolean', aForm.edBoolean, 'Checked');
    Assert.AreEqual(aForm.edBoolean.Checked, FCR.TestBoolean.AsBoolean);

    // edDateTime.DateTime
    FCR.TestDateTime.Bind('AsDateTime', aForm.edDateTime, 'DateTime');
    Assert.AreEqual(aForm.edDateTime.DateTime, FCR.TestDateTime.AsDateTime);

    // edMemo.Text
    FCR.TestMemo.Bind('AsString', aForm.edMemo, 'Text');
    Assert.AreEqual(aForm.edMemo.Text, FCR.TestMemo.AsString);

    Assert.AreEqual(aForm.edStringField.Text, FCR.TestString.AsString);

    lCaption := 'Test ' + DateToStr(Date);
    aForm.edStringField.Text := lCaption;
    Assert.AreEqual(aForm.edStringField.Text, FCR.TestString.AsString);

    FTestViewModel.MainActionList[jasPost].Execute;
    // Verifico che dopo il post i due dati siano uguali
    Assert.AreEqual(aForm.edStringField.Text, FCR.TestString.AsString);
    // e che la modifica sia stata recepita
    Assert.AreEqual(lCaption, FCR.TestString.AsString);
  finally
    // Simulo la chiusura della form e rimuovo i SubModels
    FTestViewModel.RemoveSubModels;
    // Faccio 'fuori' il Form
    aForm.Free;
    aForm := nil;
  end;

  Assert.AreEqual(lCount, FCR.BindManager.BindCount);
  try
    // Mi sposto di 1 record e verifico che lCaption sia <> dal nuovo record ......
    FTestViewModel.MainActionList[jasPrev].Execute;
    Sleep(100);
    FTestViewModel.TestNestedRecord.LoadFromDataset;
  except
    on E: Exception do
      RaiseException('Prev Exception', E, self);
  end;

  Assert.AreEqual(lCaption, FCR.TestString.AsString);

  // Verifico di essermi effettivamente spostato di 1 record
  Assert.IsTrue(lGUID <> FTestViewModel.TestNestedRecord.GUID, 'MainActionList[jasPrev] lGUID');
  // Verifico che il precednete Record sia uguale a lCaption

end;

procedure TTestViewModel.ViewModelNavigator;
var
  MainForm: ufrmVCLViewModelNavigator.TfrmVCLViewModelNavigator;
begin
  MainForm := TfrmVCLViewModelNavigator.Create(nil);
  try
    Assert.IsNotNull(MainForm);
    GenerateViewModel;
    FViewModel.GenerateSubModels;
    MainForm.ViewModel := FTestViewModel as IJanuaDBViewModel;
    Assert.IsNotNull(MainForm.ViewModel);
  finally
    MainForm.Free
  end;
end;

initialization

TDUnitX.RegisterTestFixture(TTestViewModel);

end.

