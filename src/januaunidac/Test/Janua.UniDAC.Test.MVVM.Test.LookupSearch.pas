unit Janua.UniDAC.Test.MVVM.Test.LookupSearch;

interface

uses
  DUnitX.TestFramework, Janua.Orm.Intf, Janua.Lookups.Intf;

type

  [TestFixture]
  TLookupEngine = class
  private
    FEngine: IJanuaLookupFactory;
    procedure GetEngine;
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    [Test]
    procedure Factory;
    [Test]
    procedure VesselsDataset;
    [Test]
    procedure CustomSearchModel;
    [Test]
    procedure CustomSearchVM;

  end;

implementation

uses
{$IFDEF TESTPOSTGRES}
  Janua.Lookups.UniDAC.Postgres,
  Janua.Uni.Framework,
{$ELSE}
  Janua.Lookups.Firedac.Virtual,
{$ENDIF TESTPOSTGRES}
  // Application
  Janua.Mock.Firedac.Framework, Janua.Application.Framework, Janua.ViewModels.Application,
  System.SysUtils, JOrm.Shipping.Intf,
  // ViewModels
  Janua.Search.ViewModels.Intf, Janua.Search.ViewModels.Impl, Janua.Lookups.Impl;

procedure TLookupEngine.CustomSearchModel;
var
  lModel: ISearchModel;
  lGuid: string;
  lSearchCount: Integer;
begin

  lModel := TCustomSearchModel.Create(0, JOrm.Shipping.Intf.IVessel, Janua.Lookups.Intf.IjlsVessels);
  Assert.IsNotNull(lModel);
  lModel.Activate;
  Assert.IsNotNull(lModel.jdsSearch);
  Assert.IsNotNull(lModel.CurrentRecord);
  Assert.AreNotEqual(0, lModel.jdsSearch.RecordCount);
  lModel.Enabled := True;
  lModel.SearchText := 'MSC PREZIOSA';
  lModel.StartSearch(
    procedure(aSearchCount: Integer)
    begin
      lSearchCount := aSearchCount;
    end);
  Assert.AreNotEqual(0, lModel.jdsSearch.RecordCount);
  Assert.AreEqual(lSearchCount, lModel.jdsSearch.RecordCount);

end;

procedure TLookupEngine.CustomSearchVM;
var
  lViewModel: ISearchViewModel;
  lSearchCount: Integer;
  lJGUID: string;
begin
  lViewModel := TCustomSearchViewModel.Create(0, JOrm.Shipping.Intf.IVessel, Janua.Lookups.Intf.IjlsVessels);
  Assert.IsNotNull(lViewModel);
  lViewModel.Activate;
  Assert.IsNotNull(lViewModel.CurrentRecord);
  Assert.IsNotNull(lViewModel.jdsSearch);
  Assert.AreNotEqual(0, lViewModel.jdsSearch.RecordCount);
  lViewModel.Enabled := True;
  lViewModel.EnterSearch;
  lViewModel.SearchText := 'MSC PREZIOSA';
  lViewModel.StartSearch(
    procedure(aSearchCount: Integer)
    begin
      lSearchCount := aSearchCount;
    end);
  Assert.AreNotEqual(0, lViewModel.jdsSearch.RecordCount);
  Assert.AreEqual(lSearchCount, lViewModel.jdsSearch.RecordCount);
  lJGUID := lViewModel.jdsSearch.FieldByName('jguid').AsString;
  Assert.AreEqual(lJGUID, lViewModel.CurrentRecord.GUIDString);
end;

procedure TLookupEngine.Factory;
// TJanuaCustomLookups = class(TJanuaInterfacedObject, IJanuaLookupFactory)
var
  lEngine: IJanuaLookupFactory;
begin
{$IFDEF TESTPOSTGRES}
  lEngine := TJanuaUniPgLookups.Create;
{$ELSE}
  lEngine := TJanuaFDACMemLookups.Create;
{$ENDIF TESTPOSTGRES}
  Assert.IsNotNull(lEngine, 'lEngine not set');

end;

procedure TLookupEngine.GetEngine;
begin
{$IFDEF TESTPOSTGRES}
  FEngine := TJanuaUniPgLookups.Create;
{$ELSE}
  FEngine := TJanuaFDACMemLookups.Create;
{$ENDIF TESTPOSTGRES}
  Assert.IsNotNull(FEngine, 'lEngine not set');
end;

procedure TLookupEngine.Setup;
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

procedure TLookupEngine.TearDown;
begin
end;

procedure TLookupEngine.VesselsDataset;
var
  lVesselsDataset: IJanuaDBDataset;
begin
  GetEngine;
  Assert.IsTrue(FEngine.TryGetJanuaDataset(IjlsVessels, 0, lVesselsDataset), 'IjlsVessels not set');
  Assert.IsNotNull(lVesselsDataset, 'lVesselsDataset');
  Assert.AreNotEqual(0, lVesselsDataset.RecordCount);
  lVesselsDataset := nil;
  Assert.IsTrue(FEngine.TryGetJanuaDataset(IjlsVessels, 0, lVesselsDataset), 'IjlsVessels not set');
  Assert.IsNotNull(lVesselsDataset, 'lVesselsDataset');
  Assert.AreNotEqual(0, lVesselsDataset.RecordCount);
end;

initialization

TDUnitX.RegisterTestFixture(TLookupEngine);

end.
