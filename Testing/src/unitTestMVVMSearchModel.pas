unit unitTestMVVMSearchModel;

interface

uses
  Janua.Search.ViewModels.Engines.Intf, Janua.Search.ViewModels.Intf, DUnitX.TestFramework;

type

  [TestFixture]
  TMVVMSearchLookups = class(TObject)
  private
    FTestCaption: string;
    FTestEnabled: boolean;
    FAnagraphModel: ISearchModelAnagraph;
    FSearchModel: ISearchModel;
    FAnagraphViewModel: ISearchViewModelAnagraph;
    // Anagraph DB Test coordinates
    FMainSearchText: string;
    FGroupID: Integer;
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    [Test]
    procedure AnagraphModel;
    [Test]
    procedure AnagraphViewModel;
    [Test]
    procedure VesselsModel;
    [Test]
    procedure VesselsViewModel;
    // ISearchModelShipments
    [Test]
    procedure ShipmentsModel;
    [Test]
    procedure ShipmentsViewModel;
    // ISearchModelShipments
  end;

implementation

uses Janua.ViewModels.Intf, Janua.Core.Classes, System.SysUtils,
{$IFDEF TESTPOSTGRES}Janua.Uni.Framework, {$ENDIF}
  Janua.Mock.Firedac.Framework, Janua.ViewModels.Application, Janua.Application.Framework;

procedure TMVVMSearchLookups.AnagraphModel;
var
  vCount, vCountAfter: Integer;
  lClone: ISearchModelAnagraph;
begin
  Assert.IsTrue(TJanuaViewModelApplication.TryGetSearchModel(ISearchModelAnagraph, FGroupID, FAnagraphModel),
    'ISearchModelAnagraph not set');
  Assert.IsTrue(Supports(FAnagraphModel, ISearchModel, FSearchModel),
    'FAnagraphModel does not support ISearchModel');
  FAnagraphModel.Activate;
  Assert.IsTrue(FAnagraphModel.Active, 'Model Failed Activate');
  Assert.IsTrue(FAnagraphModel.jdsSearch.Active, 'jdsSearch not Activate');
  vCount := FAnagraphModel.jdsSearch.RecordCount;
  Assert.IsTrue(vCount > 1, 'vCount jdsSearch');
  FAnagraphModel.Enabled := True;
  // ZUNINOMARMISA is a name that Exists in the anagraph list and in search_index
  FAnagraphModel.SearchText := 'ZUNINOMARMISA';
  Sleep(1000);
  Assert.AreEqual('ZUNINOMARMISA', FAnagraphModel.SearchText);
  // vCountAfter checks the number of records after searching ZUNINOMARMISA (should be 1 record)
  vCountAfter := FAnagraphModel.jdsSearch.RecordCount;
  Assert.AreNotEqual(vCount, vCountAfter);
  Assert.AreEqual(1, vCountAfter);
  FAnagraphModel.SearchText := '';
  vCountAfter := FAnagraphModel.jdsSearch.RecordCount;
  Assert.AreEqual(vCount, vCountAfter, 'vCountAfter searchtext empty should match vCount');
  FAnagraphModel.Enabled := False;

  // Tests Cloning Anagraph Model - Group ID is not used so we can left it as '0' or whatever
  Assert.IsTrue(TJanuaViewModelApplication.TryGetSearchModel(ISearchModelAnagraph, 0, lClone,
    FAnagraphModel.jdsSearch), 'Cloning Anagraph failed');

  lClone.Activate;
  Assert.IsTrue(lClone.Active, 'Model Failed Activate');
  Assert.IsTrue(lClone.jdsSearch.Active, 'jdsSearch not Activate');
  vCount := lClone.jdsSearch.RecordCount;
  Assert.IsTrue(vCount > 1, 'vCount jdsSearch');
  lClone.Enabled := True;
  // ZUNINOMARMISA is a name that Exists in the anagraph list and in search_index
  lClone.SearchText := 'ZUNINOMARMISA';
  Sleep(1000);
  Assert.AreEqual('ZUNINOMARMISA', lClone.SearchText);
  // vCountAfter checks the number of records after searching ZUNINOMARMISA (should be 1 record)
  vCountAfter := lClone.jdsSearch.RecordCount;
  Assert.AreNotEqual(vCount, vCountAfter);
  Assert.AreEqual(1, vCountAfter);
  lClone.SearchText := '';
  vCountAfter := lClone.jdsSearch.RecordCount;
  Assert.AreEqual(vCount, vCountAfter, 'vCountAfter searchtext empty should match vCount');
  lClone.Enabled := False;

  lClone := nil;

  FAnagraphModel := nil;
  FSearchModel := nil;
  FAnagraphViewModel := nil;
end;

procedure TMVVMSearchLookups.AnagraphViewModel;
var
  FSearchModel: ISearchModel;
  vCount, vCountAfter: Integer;
  lClone: ISearchViewModelAnagraph;
begin
  Assert.IsTrue(TJanuaViewModelApplication.TryGetSearchViewModel(ISearchViewModelAnagraph, FGroupID,
    FAnagraphViewModel), 'ISearchViewModelAnagraph not set');
  FAnagraphViewModel.Activate;
  Assert.IsTrue(FAnagraphViewModel.Active, 'FAnagraphModel Failed Activate');
  vCount := FAnagraphViewModel.jdsSearch.RecordCount;
  Assert.IsTrue(FAnagraphViewModel.jdsSearch.RecordCount > 1, 'jdsSearch Count');
  FAnagraphViewModel.Enabled := True;
  FAnagraphViewModel.EnterSearch;
  FAnagraphViewModel.SearchText := 'ZUNINOMARMISA';
  Sleep(1500);
  Assert.AreEqual('ZUNINOMARMISA', FAnagraphViewModel.SearchText);
  vCountAfter := FAnagraphViewModel.jdsSearch.RecordCount;
  Assert.AreNotEqual(vCount, vCountAfter);
  Assert.AreEqual(1, vCountAfter);

  FAnagraphViewModel.SearchText := '';
  vCountAfter := FAnagraphViewModel.jdsSearch.RecordCount;
  Assert.AreEqual(vCount, vCountAfter, 'vCountAfter searchtext empty should match vCount');

  FAnagraphViewModel.Enabled := False;

  Assert.IsTrue(TJanuaViewModelApplication.TryGetSearchViewModel(ISearchViewModelAnagraph, FGroupID, lClone,
    FAnagraphViewModel.jdsSearch), 'ISearchViewModelAnagraph not set');
  lClone.Activate;
  Assert.IsTrue(lClone.Active, 'FAnagraphModel Failed Activate');
  vCount := lClone.jdsSearch.RecordCount;
  Assert.IsTrue(lClone.jdsSearch.RecordCount > 1, 'jdsSearch Count');
  lClone.Enabled := True;
  lClone.EnterSearch;
  lClone.SearchText := 'ZUNINOMARMISA';
  Sleep(1500);
  Assert.AreEqual('ZUNINOMARMISA', lClone.SearchText);
  vCountAfter := lClone.jdsSearch.RecordCount;
  Assert.AreNotEqual(vCount, vCountAfter);
  Assert.AreEqual(1, vCountAfter);
  lClone.Enabled := False;



  FAnagraphModel := nil;
  FSearchModel := nil;
  FAnagraphViewModel := nil;
end;

procedure TMVVMSearchLookups.Setup;
begin
{$IFDEF TESTPOSTGRES}
  TJanuaUniPgApplication.RegisterFramework;
{$ELSE}
  TJanuaMockFiredacApplication.RegisterFireDacDataModules;
{$ENDIF TESTPOSTGRES}
  TJanuaApplication.UnitTesting := True;
  FMainSearchText := '';
  FGroupID := 10;
  TJanuaApplication.DBSchemaID := 33;
end;

procedure TMVVMSearchLookups.ShipmentsModel;
{ ISearchModelShipments = interface(ISearchModel) property Shipment: IShipmentView }
var
  vCount, vCountAfter: Integer;
  lModelShipments: ISearchModelShipments;
begin
  Assert.IsTrue(TJanuaViewModelApplication.TryGetSearchModel(ISearchModelShipments, FGroupID,
    lModelShipments), 'ISearchModelShipments not set');
  Assert.IsTrue(Supports(lModelShipments, ISearchModel, FSearchModel),
    'lModelShipments does not support ISearchModel');
  lModelShipments.Activate;
  Assert.IsNotNull(lModelShipments.Shipment, 'lModelShipments.Shipment');
  Assert.IsTrue(lModelShipments.Active, 'Model Failed Activate');
  Assert.IsTrue(lModelShipments.jdsSearch.Active, 'jdsSearch not Activate');
  vCount := lModelShipments.jdsSearch.RecordCount;
  Assert.IsTrue(vCount > 1, 'vCount jdsSearch');
  lModelShipments.EnterSearch;
  lModelShipments.Enabled := True;
  lModelShipments.SearchText := 'SC115000022';
  Sleep(2000);
  Assert.AreNotEqual(0, Pos('SC115000022', lModelShipments.SearchText), 'SC115000022 not found');
  vCountAfter := lModelShipments.jdsSearch.RecordCount;
  Assert.AreNotEqual(vCount, vCountAfter, 'SC115000022 1 vCount');
  Assert.AreEqual(1, vCountAfter, 'SC11500018 1 count');

  lModelShipments.SearchText := '';
  Sleep(1000);
  Assert.AreEqual('', lModelShipments.SearchText);
  vCountAfter := lModelShipments.jdsSearch.RecordCount;
  Assert.AreNotEqual(1, vCountAfter);

  lModelShipments.SearchText := 'SC115000022';
  Sleep(1000);
  Assert.AreNotEqual(0, Pos('SC115000022', lModelShipments.SearchText), 'SC115000022 not found');
  vCountAfter := lModelShipments.jdsSearch.RecordCount;
  Assert.AreNotEqual(vCount, vCountAfter, 'SC115000022');
  Assert.AreEqual(1, vCountAfter, 'SC115000022');

  lModelShipments := nil;
  FSearchModel := nil;
  FAnagraphViewModel := nil;
end;

procedure TMVVMSearchLookups.ShipmentsViewModel; // ISearchModelShipments
var
  vCount, vCountAfter: Integer;
  lViewModelShipments: ISearchModelShipments;
begin
  Assert.IsTrue(TJanuaViewModelApplication.TryGetSearchModel(ISearchModelShipments, FGroupID,
    lViewModelShipments), 'ISearchModelShipments not set');
  Assert.IsTrue(Supports(lViewModelShipments, ISearchModel, FSearchModel),
    'lModelShipments does not support ISearchModel');
  lViewModelShipments.Activate;
  Assert.IsTrue(lViewModelShipments.Active, 'Model Failed Activate');
  Assert.IsTrue(lViewModelShipments.jdsSearch.Active, 'jdsSearch not Activate');
  vCount := lViewModelShipments.jdsSearch.RecordCount;
  Assert.IsTrue(vCount > 1, 'vCount jdsSearch');
  // At first the control needs to be Enabled
  lViewModelShipments.Enabled := True;
  // then we can simulate an EnterSearch as if the viewmodel is binded with a Control
  lViewModelShipments.EnterSearch;
  lViewModelShipments.SearchText := 'SC115000022';
  Sleep(1000);
  Assert.AreEqual('SC115000022', lViewModelShipments.SearchText);
  vCountAfter := lViewModelShipments.jdsSearch.RecordCount;
  Assert.AreNotEqual(vCount, vCountAfter);
  Assert.AreEqual(1, vCountAfter);
  lViewModelShipments := nil;
  FSearchModel := nil;
  FAnagraphViewModel := nil;

end;

procedure TMVVMSearchLookups.TearDown;
begin
end;

procedure TMVVMSearchLookups.VesselsModel; // ISearchModelVessels
{ ISearchModelVessels = interface(ISearchModel) property Vessel: IVessel }
var
  vCount, vCountAfter: Integer;
  lModelVessels: ISearchModelVessels;
begin
  Assert.IsTrue(TJanuaViewModelApplication.TryGetSearchModel(ISearchModelVessels, FGroupID, lModelVessels),
    'ISearchModelVessels not set');
  Assert.IsTrue(Supports(lModelVessels, ISearchModel, FSearchModel),
    'lModelVessels does not support ISearchModel');
  lModelVessels.Activate;
  Assert.IsTrue(lModelVessels.Active, 'Model Failed Activate');
  Assert.IsTrue(lModelVessels.jdsSearch.Active, 'jdsSearch not Activate');
  vCount := lModelVessels.jdsSearch.RecordCount;
  Assert.IsTrue(vCount > 1, 'vCount jdsSearch');
  lModelVessels.EnterSearch;
  lModelVessels.Enabled := True;
  lModelVessels.SearchText := 'KEREL';
  Sleep(1000);
  Assert.AreEqual('KEREL', lModelVessels.SearchText);
  vCountAfter := lModelVessels.jdsSearch.RecordCount;
  Assert.AreNotEqual(vCount, vCountAfter);
  Assert.AreEqual(1, vCountAfter);

  lModelVessels.SearchText := '';
  Sleep(1000);
  Assert.AreEqual('', lModelVessels.SearchText);
  vCountAfter := lModelVessels.jdsSearch.RecordCount;
  Assert.AreNotEqual(1, vCountAfter);

  lModelVessels.SearchText := 'MSC ARMONIA';
  Sleep(1000);
  Assert.AreEqual('MSC ARMONIA', lModelVessels.SearchText);
  vCountAfter := lModelVessels.jdsSearch.RecordCount;
  Assert.AreNotEqual(vCount, vCountAfter, 'MSC ARMONIA');
  Assert.AreEqual(1, vCountAfter, 'MSC ARMONIA');

  lModelVessels := nil;
  FSearchModel := nil;
  FAnagraphViewModel := nil;
end;

procedure TMVVMSearchLookups.VesselsViewModel; // ISearchViewModelVessel
var
  vCount, vCountAfter: Integer;
  lViewModelVessels: ISearchModelVessels;
begin
  Assert.IsTrue(TJanuaViewModelApplication.TryGetSearchModel(ISearchModelVessels, FGroupID,
    lViewModelVessels), 'ISearchModelVessels not set');
  Assert.IsTrue(Supports(lViewModelVessels, ISearchModel, FSearchModel),
    'lModelVessels does not support ISearchModel');
  lViewModelVessels.Activate;
  Assert.IsTrue(lViewModelVessels.Active, 'Model Failed Activate');
  Assert.IsTrue(lViewModelVessels.jdsSearch.Active, 'jdsSearch not Activate');
  vCount := lViewModelVessels.jdsSearch.RecordCount;
  Assert.IsTrue(vCount > 1, 'vCount jdsSearch');
  // At first the control needs to be Enabled
  lViewModelVessels.Enabled := True;
  // then we can simulate an EnterSearch as if the viewmodel is binded with a Control
  lViewModelVessels.EnterSearch;
  lViewModelVessels.SearchText := 'MSC ARMONIA';
  Sleep(1000);
  Assert.AreEqual('MSC ARMONIA', lViewModelVessels.SearchText);
  vCountAfter := lViewModelVessels.jdsSearch.RecordCount;
  Assert.AreNotEqual(vCount, vCountAfter);
  Assert.AreEqual(1, vCountAfter);
  lViewModelVessels := nil;
  FSearchModel := nil;
  FAnagraphViewModel := nil;
end;

initialization

TDUnitX.RegisterTestFixture(TMVVMSearchLookups);

end.
