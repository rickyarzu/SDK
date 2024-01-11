unit Janua.Test.ViewModel.AnagraphSearch;

interface

uses
  DUnitX.TestFramework, Janua.Core.Classes, Janua.Core.Classes.Intf,
  Janua.Search.ViewModels.Engines.Intf, Janua.Search.ViewModels.Intf;

type

  [TestFixture]
  TTAnagraphSearchViewModel = class
  private
    FTestCaption: string;
    FTestEnabled: boolean;
    FViewModel: ISearchViewModelAnagraph;
    FSearchAnagraphModel: ISearchModelAnagraph;
    FSearchModel: ISearchModel;
    procedure GenerateModel(const aGroupID: integer);
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
    [TestCase('MemDS10', 'False,10')]
    [TestCase('PgDAC10', 'True,10')]
    procedure CreateSearchModel(const aPostgres: boolean; aGroupID: integer);
    [Test]
    [TestCase('MemDS10', 'False,10,ZUNINOMARMISA')]
    [TestCase('PgDAC10', 'True,10,ZUNINOMARMISA')]
    procedure SearchModelKey(const aPostgres: boolean; aGroupID: integer; aKey: string);
  end;

implementation

uses Janua.ViewModels.Application, Janua.Uni.Framework, System.SysUtils, Janua.Mock.Firedac.Framework,
  Janua.Application.Framework, System.Types;

{ TTAnagraphSearchViewModel }

procedure TTAnagraphSearchViewModel.GenerateModel(const aGroupID: integer);
var
  bTest: boolean;
begin
  // FAnagraphModel: ISearchModelAnagraph;
  bTest := TJanuaViewModelApplication.TryGetSearchModel(ISearchModelAnagraph, aGroupID, FSearchAnagraphModel);
  Assert.IsTrue(bTest, 'ISearchModelAnagraph not set');
  bTest := Supports(FSearchAnagraphModel, ISearchModel, FSearchModel);
  Assert.IsTrue(bTest, 'FSearchAnagraphModel does not support ISearchModel');
end;

procedure TTAnagraphSearchViewModel.GenerateViewModel;
begin

end;

procedure TTAnagraphSearchViewModel.RegisterPOstgres;
begin
  TJanuaUniPgApplication.RegisterFramework;
end;

procedure TTAnagraphSearchViewModel.SearchModelKey(const aPostgres: boolean; aGroupID: integer; aKey: string);
begin
  // Tests at the moment can target both Virtual (Mock Framework) and Postgres(DB Testing Framework).
  if aPostgres then
    RegisterPOstgres;
  // Then We Generate the Model Using GroupID
  GenerateModel(aGroupID);
  // Check if Objects are not Null
  Assert.IsNotNull(FSearchModel, 'FSearchModel');
  // I Try to Access the 'Standard' Search Model SearchText
  FSearchModel.SearchText := aKey;
  // then check if property is correctly Set
  Assert.AreEqual(aKey, FSearchModel.SearchText);
end;

procedure TTAnagraphSearchViewModel.Setup;
begin
  // TJanuaOrmFramework.Initialize;
  TJanuaMockFiredacApplication.RegisterFireDacDataModules;
end;

procedure TTAnagraphSearchViewModel.TearDown;
begin

end;

procedure TTAnagraphSearchViewModel.CreateSearchModel(const aPostgres: boolean; aGroupID: integer);
begin
  // Tests at the moment can target both Virtual (Mock Framework) and Postgres(DB Testing Framework).
  if aPostgres then
    RegisterPOstgres;
  // Then We Generate the Model Using GroupID
  GenerateModel(aGroupID);
  // Check if Objects are not Null
  Assert.IsNotNull(FSearchModel, 'FSearchModel');
  // Sets the Activate Standard Method (should set the Enabled Property to True)
  FSearchModel.Activate;
  // Tests if the Active Property is True
  Assert.IsTrue(FSearchModel.Active, 'not Active');
  // Tests if the Enabled Property is True
  Assert.IsTrue(FSearchModel.Enabled, 'not Enabled');
end;

end.
