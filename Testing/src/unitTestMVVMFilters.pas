unit unitTestMVVMFilters;

interface

uses
  DUnitX.TestFramework;

type

  [TestFixture]
  TMVVMFilters = class
  private
    procedure Test2(const AValue1, AValue2: Integer);
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Sample Methods
    // Simple single Test
    [Test]
    procedure FireDacDataset;
    // Test with TestCase Attribute to supply parameters.
    [Test]
    { [TestCase('TestA', '1,2')]
      [TestCase('TestB', '3,4')] }
    procedure AnagraphContainer;
    [Test]
    procedure ItemsContainer;
  end;

implementation

uses System.SysUtils, System.Classes,
  // UniDAC
  Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  // Januaproject
  Janua.Search.ViewModels.Engines.Intf, Janua.Application.Framework,
  Janua.Core.DataModule, Janua.Core.Classes, Janua.Controls.Forms.Intf, Janua.Core.Classes.Intf,
  Janua.Bindings.Intf, Janua.Controls.Intf, Janua.Orm.Intf, Janua.Orm.Types, Janua.Core.Types,
  Janua.Documents.Model.Impl, Janua.Documents.ViewModel.Intf, Janua.Documents.FdacDM.Virtual;

procedure TMVVMFilters.AnagraphContainer;
var
  aDataModule: IJanuaDocumentsDataModule;
  aDataset: IJanuaDBDataset;
  lField: IJanuaField;
  lContainer: IJanuaSearchContainer;
  lAnagraphSearchContainer: IJanuaSearchAnagraphContainer;
begin
  (*
    Per il Test mi serve un solo DataModule di esempio. Il DMDocumenti è uno dei più completi e quindi adatti
    per le ricerche sui dataset.

  *)
  aDataModule := TJanuaVirtualDocumentsDataModule.Create;
  aDataset := nil;
  aDataset := aDataModule.jdsDocHeads;
  Assert.IsNotNull(aDataset);

  aDataset := aDataModule.jdsDocHeads;

  // ID Search Equal Sample In this Case 'Key' and 'Field' are the same but Param Key can be different from Field Name
  lField := aDataset.FilterParams.AddParam('id', TJanuaFieldType.jptInteger, 0);
  // A ParamLookup Field should require a Search/Lookup Container that should be a 'standard' or 'custom' container
  lField.FieldKind := TJanuaFieldKind.jfkParamLookup;
  // In this case the Key Value is an unique Anagraph ID taken from the Anagraph container.
  lField.ParamOperator := TJanuaOperator.Equals;
  lField.DefaultValue := 0;
  lField.Title := 'Anagraph ID';
  lField.DBField := 'id';
  lField.Active := False;
  { class function TJanuaApplicationFactory.TryGetContainer(const IID: TGUID; const aGroupID: Variant; aField: IJanuaField;
    out Intf): boolean; }
  Assert.IsTrue(TJanuaOrmFactory.TryGetContainer(IJanuaSearchAnagraphContainer, 13, lField,
    lAnagraphSearchContainer, False), 'IJanuaSearchAnagraphContainer not set');
  // function Supports(const Instance: IInterface; const IID: TGUID; out Intf): Boolean;
  Assert.IsTrue(Supports(lAnagraphSearchContainer, IJanuaSearchContainer, lContainer),
    'IJanuaSearchContainer not supported');
  Assert.IsTrue(Assigned(lField.SearchContainer), 'lField.SearchContainer');
  lAnagraphSearchContainer.Activate;
  Assert.IsTrue(lAnagraphSearchContainer.Active, 'lAnagraphSearchContainer is not Active');
  Assert.IsTrue(Assigned(lAnagraphSearchContainer.SerchViewModelAnagraph), 'SerchViewModelAnagraph');

end;

procedure TMVVMFilters.FireDacDataset;
var
  aDataModule: IJanuaDocumentsDataModule;
  aDataset: IJanuaDBDataset;
  lField: IJanuaField;
begin
  (*
    Per il Test mi serve un solo DataModule di esempio. Il DMDocumenti è uno dei più completi e quindi adatti
    per le ricerche sui dataset.

  *)
  aDataModule := TJanuaVirtualDocumentsDataModule.Create;
  aDataset := nil;
  aDataset := aDataModule.jdsDocHeads;
  Assert.IsNotNull(aDataset);

  aDataset := aDataModule.jdsDocHeads;
  // ID Search Equal Sample In this Case 'Key' and 'Field' are the same but Param Key can be different from Field Name
  lField := aDataset.FilterParams.AddParam('id', TJanuaFieldType.jptInteger, 0);
  lField.ParamOperator := TJanuaOperator.Equals;
  lField.DefaultValue := 0;
  lField.Value := 0;
  lField.Title := 'ID Search';
  lField.DBField := 'id';
  lField.Active := False;
  lField.Activate;
  Assert.IsFalse(lField.Active);
  lField.AsInteger := 100;
  lField.Activate;
  Assert.IsTrue(lField.Active);

  lField := aDataset.FilterParams.AddParam('doc_date_from', TJanuaFieldType.jptDate, 0);
  lField.ParamOperator := TJanuaOperator.MoreThanEquals;
  lField.DefaultValue := Date;
  lField.Title := 'Since';
  lField.DBField := 'doc_date';
  lField.Active := False;

  lField := aDataset.FilterParams.AddParam('doc_date_to', TJanuaFieldType.jptDate, 0);
  lField.ParamOperator := TJanuaOperator.MoreThanEquals;
  lField.DefaultValue := Date;
  lField.Title := 'Until';
  lField.DBField := 'doc_date';
  lField.Active := False;

  lField := aDataset.FilterParams.AddParam('dest_town', TJanuaFieldType.jptString, 0);
  lField.ParamOperator := TJanuaOperator.MoreThanEquals;
  lField.DefaultValue := Date;
  lField.Title := 'Dest. Town';
  lField.DBField := 'dest_town';
  lField.Active := False;

end;

procedure TMVVMFilters.ItemsContainer;
begin

end;

procedure TMVVMFilters.Setup;
begin
end;

procedure TMVVMFilters.TearDown;
begin
end;

procedure TMVVMFilters.Test2(const AValue1: Integer; const AValue2: Integer);
begin
end;

initialization

TDUnitX.RegisterTestFixture(TMVVMFilters);

end.
