unit Janua.Carservice.Orm.Test;

interface

uses
  DUnitX.TestFramework, Janua.Core.Types, Janua.Carservice.Intf;

type

  [TestFixture]
  TJanuaCloudTest = class
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Sample Methods
    // Simple single Test
    [Test]
    procedure Test01ItimetableView;
    [Test]
    procedure Test02ItimetableViews;
    [Test]
    procedure Test03ItimetableSlot;
    [Test]
    procedure Test04ItimetableSlots;
  end;

implementation

uses JOrm.Carservice.Booking.Impl, JOrm.Carservice.Booking.Intf, System.SysUtils;

{ TJanuaCloudTest }

procedure TJanuaCloudTest.Setup;
begin
end;

procedure TJanuaCloudTest.TearDown;
begin

end;

procedure TJanuaCloudTest.Test01ItimetableView;
var
  A, B: ItimetableView;
begin
  A := TtimetableView.Create;
  Assert.IsNotNull(A);

end;

procedure TJanuaCloudTest.Test02ItimetableViews;
var
  A, B: ItimetableViews;
begin
  A := TtimetableViews.Create;
  Assert.IsNotNull(A);
end;

procedure TJanuaCloudTest.Test03ItimetableSlot;
var
  A, B: ItimetableSlot;
begin
  A := TtimetableSlot.Create;
  Assert.IsNotNull(A);

  A.Workingday.AsDateTime := Date();
  Assert.AreEqual(Date(), A.Workingday.AsDateTime);
  A.SlotId.AsSmallint := 21;
  Assert.AreEqual(21, A.SlotId.AsInteger);
  A.SlotDes.AsString := '21';
  Assert.AreEqual('21', A.SlotDes.AsString);
  A.Booked.AsBoolean := True;
  Assert.AreEqual(True, A.Booked.AsBoolean);
  A.FreePlaces.AsSmallint := 21;
  Assert.AreEqual(21, A.FreePlaces.AsInteger);
  A.IsFree.AsBoolean := True;
  Assert.AreEqual(True, A.IsFree.AsBoolean);
  A.BookedPlaces.AsSmallint := 21;
  Assert.AreEqual(21, A.BookedPlaces.AsInteger);
end;

procedure TJanuaCloudTest.Test04ItimetableSlots;
var
  A, B: ItimetableSlots;
begin
  A := TtimetableSlots.Create;
  Assert.IsNotNull(A);

  A.Workingday.AsDateTime := Date();
  Assert.AreEqual(Date(), A.Workingday.AsDateTime);
  A.SlotId.AsSmallint := 21;
  Assert.AreEqual(21, A.SlotId.AsInteger);
  A.SlotDes.AsString := '21';
  Assert.AreEqual('21', A.SlotDes.AsString);
  A.Booked.AsBoolean := True;
  Assert.AreEqual(True, A.Booked.AsBoolean);
  A.FreePlaces.AsSmallint := 21;
  Assert.AreEqual(21, A.FreePlaces.AsInteger);
  A.IsFree.AsBoolean := True;
  Assert.AreEqual(True, A.IsFree.AsBoolean);
  A.BookedPlaces.AsSmallint := 21;
  Assert.AreEqual(21, A.BookedPlaces.AsInteger);
end;

initialization

TDUnitX.RegisterTestFixture(TJanuaCloudTest);

end.
