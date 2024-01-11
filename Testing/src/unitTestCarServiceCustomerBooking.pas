unit unitTestCarServiceCustomerBooking;

interface

uses
  DUnitX.TestFramework;

type

  [TestFixture]
  TCustomerTest = class
  public
    [Test]
    procedure CreateDMPgCustomers;
    [Test]
    [TestCase('True', 'True,136185fb-936d-497b-9dad-c7889cd2375c')]
    [TestCase('False', 'False,136185fb-936d-497b-9dad-c7889cd2375d')]
    procedure GUIDSearch(const aExpcted: Boolean; const aParam: string);
  end;

implementation

uses Janua.Carservice.PgCustomers, System.SysUtils;

{ TCustomerTest }

procedure TCustomerTest.CreateDMPgCustomers;
var
  lDM: TdmPgCarServiceCustomers;
begin
  // Creo il Datamdule 'direttamente'
  lDM := TdmPgCarServiceCustomers.Create(nil);
  try
    // Verifico che sia tutto OK
    Assert.IsNotNull(lDM);
    // Verifico che abbia creato il Record
    Assert.IsNotNull(lDM.BookingRecord);
  finally
    lDM.Free;
  end;
end;

procedure TCustomerTest.GUIDSearch(const aExpcted: Boolean; const aParam: string);
var
  lDM: TdmPgCarServiceCustomers;
  lTest: Boolean;
begin
  // Creo il Datamdule 'direttamente'
  lDM := TdmPgCarServiceCustomers.Create(nil);
  try
    // Verifico che sia tutto OK
    Assert.IsNotNull(lDM);
    // Verifico che abbia creato il Record
    Assert.IsNotNull(lDM.BookingRecord);
    lTest := lDM.OpenBooking(StringToGUID('{' + aParam + '}'));
    Assert.AreEqual(aExpcted, lTest);
    if aExpcted then
    begin
      Assert.AreEqual(1, lDM.qryBooking.RecordCount, 'RecordCount');
      Assert.AreNotEqual(0, lDM.BookingRecord.Id.AsInteger, 'lDM.BookingRecord.Id.AsInteger');
      Assert.AreEqual(lDM.BookingRecord.Id.AsInteger, lDM.BookingRecord.PickupDateTime.BookingId.AsInteger, 'Pickup');
      Assert.AreEqual(lDM.BookingRecord.Id.AsInteger, lDM.BookingRecord.DeliveryDateTime.BookingId.AsInteger, 'Pickup');
      Assert.AreEqual(lDM.BookingRecord.TimeTable.RecordCount, lDM.qryTimetable.RecordCount, 'qryTimetable');

    end;
  finally
    lDM.Free;
  end;

end;

initialization

TDUnitX.RegisterTestFixture(TCustomerTest);

end.
