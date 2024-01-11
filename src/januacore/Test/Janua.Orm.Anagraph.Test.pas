unit Janua.Orm.Anagraph.Test;

interface

uses
  DUnitX.TestFramework, System.SysUtils, System.Classes, System.Types,
  // Janua
  Janua.Orm.Intf, JOrm.Anagraph.Intf, JOrm.Anagraph.AnagraphView.Custom.Intf, JOrm.Anagraph.Impl,
  Janua.Orm.Impl, JOrm.Anagraph.Anagraphs.Custom.Impl, JOrm.Anagraph.AnagraphView.Custom.Impl,
  JOrm.Anagraph.Address.Impl, JOrm.Anagraph.Branch.Custom.Impl, Janua.Core.Entities;

type

  [TestFixture]
  TJanuaOrmAnagraph = class
  private
    TestGoogleAddress: TJanuaRecordAddress;
  protected
    procedure TestFields(aRecord: IJanuaRecord);
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Sample Methods
    // Simple single Test
    [Test]
    procedure Anagraph;
    [Test]
    procedure Anagraphs;
    [Test]
    procedure AnagraphView;
    [Test]
    procedure AnagraphViews;
    [Test]
    procedure Address;
    [Test]
    procedure Addresses;
    [Test]
    procedure Branches;
    [Test]
    procedure Branch;
  end;

implementation

{ TJanuaOrmAnagraph }

procedure TJanuaOrmAnagraph.Address;
var
  lAddress: IAnAddress;
begin
  // TAddress = class(TCustomAddress, IAddress)
  lAddress := TAnAddress.Create('anagrafica');
  Assert.IsNotNull(lAddress, 'TAddress');
  TestFields(lAddress);
end;

procedure TJanuaOrmAnagraph.Addresses;
var
  lAddress: IAnAddresses;
begin
  // TAddresses = class(TCustomAddress, IAddress)
  lAddress := TAnAddresses.Create();
  Assert.IsNotNull(lAddress, 'TAddresses');
  TestFields(lAddress.CurrentRecord);
end;

procedure TJanuaOrmAnagraph.Anagraph;
var
  lAnagraph: IAnagraph;
begin
  // TAnagraph = class(TCustomAnagraph, IAnagraph)
  lAnagraph := TAnagraph.Create('anagrafica');
  Assert.IsNotNull(lAnagraph, 'TAnagraph');
  TestFields(lAnagraph);

end;

procedure TJanuaOrmAnagraph.Anagraphs;
var
  lAnagraphs: IAnagraphs;
begin
  // TAnagraph = class(TCustomAnagraph, IAnagraph)
  lAnagraphs := TAnagraphs.Create();
  Assert.IsNotNull(lAnagraphs, 'TAnagraphs');
  TestFields(lAnagraphs.CurrentRecord);

end;

procedure TJanuaOrmAnagraph.AnagraphView;
var
  lAnagraph: IAnagraphView;
begin
  // TAnagraphView = class(TCustomAnagraph, IAnagraphView)
  lAnagraph := TAnagraphView.Create('anagrafica');
  Assert.IsNotNull(lAnagraph, 'TAnagraph');
  TestFields(lAnagraph);
  Assert.IsNotNull(lAnagraph.MainAddress, 'MainAddress');
  Assert.IsNotNull(lAnagraph.Addresses, 'Addresses');
  lAnagraph.SetfromRecordAddress(TestGoogleAddress);
  lAnagraph.SyncMainAddress;
  Assert.AreNotEqual(lAnagraph.GUID, GUID_NULL, 'lAnagraph GUID not created');
  Assert.AreNotEqual(lAnagraph.MainAddress.GUID, GUID_NULL, 'MainAddress GUID not created');
end;

procedure TJanuaOrmAnagraph.AnagraphViews;
var
  lAnagraphs: IAnagraphViews;
begin
  // TAnagraphViews = class(TCustomAnagraph, IAnagraphViews)
  lAnagraphs := TAnagraphViews.Create();
  Assert.IsNotNull(lAnagraphs, 'TAnagraph');
  TestFields(lAnagraphs.CurrentRecord);

end;

procedure TJanuaOrmAnagraph.Branch;
var
  lBranch: IBranch;
begin
  lBranch := TBranch.Create();
  Assert.IsNotNull(lBranch, 'lBranch');
  TestFields(lBranch);
end;

procedure TJanuaOrmAnagraph.Branches;
var
  lBranches: IBranches;
begin
  lBranches := TBranches.Create();
  Assert.IsNotNull(lBranches, 'lBranch');
  TestFields(lBranches.CurrentRecord);

end;

procedure TJanuaOrmAnagraph.Setup;
begin
  { 44.406927570955844, 8.973433497813739 }
  TestGoogleAddress.AddressFull := 'Corso Europa, 157, 16132, Genova (GE)';
  TestGoogleAddress.Address := 'Corso Europa';
  TestGoogleAddress.Number := '157';
  TestGoogleAddress.Town := 'Genova';
  TestGoogleAddress.StateProvince := 'GE';
  TestGoogleAddress.StateProvinceName := 'Genova';
  TestGoogleAddress.Latitude := 44.406927570955844;
  TestGoogleAddress.Longitude := 8.973433497813739;
end;

procedure TJanuaOrmAnagraph.TearDown;
begin

end;

procedure TJanuaOrmAnagraph.TestFields(aRecord: IJanuaRecord);
var
  aField: IJanuaField;
begin
  for aField in aRecord.Fields do
    Assert.IsNotNull(aField, 'TAnagraph')
end;

initialization

TDUnitX.RegisterTestFixture(TJanuaOrmAnagraph);

end.
