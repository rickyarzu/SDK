unit Janua.UniDAC.Test.PgBooking;

interface

uses
  // System
  System.Classes, System.Json, System.SysUtils, System.Rtti, System.Types,
  // Bindings
  System.Bindings.Expression, System.Bindings.Helper,
  // DB, RTL, .....
  Data.DB,
  // DUnitX - Janua
  DUnitX.TestFramework, Janua.Core.Types, Janua.Core.Http.Intf, Janua.Core.Entities;

type

  [TestFixture]
  TCarServiceBookingTest = class
  private
    TestGoogleAddress: TJanuaRecordAddress;

    ServiceMainAddress: TJanuaRecordAddress;
    BranchGoogleAddress: TJanuaRecordAddress;

    ClientMainAddress: TJanuaRecordAddress;
    ClientReturnAddress: TJanuaRecordAddress;

    procedure LogMessage(aMessage: string);
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Sample Methods
    // Simple single Test
    [Test]
    procedure AnagraphModel;
    [Test]
    procedure AnagraphViewModel;
    [Test]
    procedure NewBookingAnagraph;
    [Test]
    procedure Booking;
  end;

implementation

uses
  Janua.Carservice.PgBooking, Janua.Anagraph.ViewModel.Intf, Janua.System.ViewModel.Intf,
  Janua.Application.Framework, Janua.Orm.Intf, Janua.Server.Intf, {udmVirtualSystemServer,}
  // Orm
  Janua.System.Server.Intf, JOrm.Carservice.Booking.Intf, JOrm.Carservice.Booking.Impl,
  Janua.Carservice.Anagraph.ViewModel.Intf,
  // Mock Libraries
  Janua.Mock.MailSender, Janua.Cloud.Mail.Intf,
  // Libraries
  JOrm.System.Impl, Janua.Server.Impl, Janua.Carservice.Anagraph.ViewModel.Impl, Janua.System.Server.Impl,
  Janua.UniDAC.Connection, Janua.Postgres.System.Impl, Janua.Carservice.Anagraph.Model.Impl;

{ TCarServiceBookingTest }

procedure TCarServiceBookingTest.AnagraphModel;
var
  lBookingAnagraph: IBookingAnagraphView;
  aModel: IJanuaCarServiceAnagraphModel;
  lEmail, lPassword, lFirstName, lLastName, lPhone: string;
begin
  LogMessage('');
  LogMessage('Start Test TJanuaCarServiceAnagraphModel');
  aModel := TJanuaCarServiceAnagraphModel.Create;
  Assert.IsNotNull(aModel);

  lBookingAnagraph := TBookingAnagraphView.Create('bookinganagraph');
  LogMessage('');
  LogMessage('Start Test AnagraphModel');
  Assert.IsNotNull(lBookingAnagraph, 'lBookingAnagraph');
  Assert.IsNotNull(lBookingAnagraph.MainAddress, 'MainAddress');
  // TestGoogleAddress
  lBookingAnagraph.SetfromRecordAddress(TestGoogleAddress);
  lBookingAnagraph.Post;
  lBookingAnagraph.SyncMainAddress;
  LogMessage('SyncMainAddress ' + lBookingAnagraph.MainAddress.FullAddress.AsString);
  Assert.AreEqual(lBookingAnagraph.MainAddress.FullAddress.AsString, TestGoogleAddress.AddressFull);
  Assert.AreNotEqual(TGUID.Empty, lBookingAnagraph.MainAddress.GUID, 'MainAddress.GUID');

  Assert.IsNotNull(lBookingAnagraph.ReturnAddress, 'ReturnAddress');
  // BranchGoogleAddress
  lBookingAnagraph.ReturnAddress.SetfromRecordAddress(BranchGoogleAddress);
  lBookingAnagraph.ReturnAddress.Post;
  LogMessage('SyncMainAddress ' + lBookingAnagraph.ReturnAddress.FullAddress.AsString);
  Assert.AreEqual(lBookingAnagraph.ReturnAddress.FullAddress.AsString, BranchGoogleAddress.AddressFull);
  Assert.AreNotEqual(TGUID.Empty, lBookingAnagraph.ReturnAddress.GUID, 'ReturnAddress.GUID');

  // Generates 'random' session User Name and Last Name with Password and email
  lEmail := 'modelmail' + FormatDateTime('YYMMDDHHNNSSZZZ', Now()) + '@gmail.com';
  lPassword := FormatDateTime('YYMMDDHHNNSSZZZ', Now());
  lFirstName := 'Nome Model ' + FormatDateTime('YYMMDDHHNNSSZZZ', Now());
  lLastName := 'Cognome Model ' + FormatDateTime('YYMMDDHHNNSSZZZ', Now());
  lPhone := '+39' + FormatDateTime('YYYYMMDDHH', Now());

  LogMessage(lEmail + ' / ' + lPassword);

  lBookingAnagraph.AnagraphID.AsInteger := 0;
  lBookingAnagraph.DbSchemaId.AsInteger := TJanuaApplication.DbSchemaId;
  lBookingAnagraph.SetfromRecordAddress(TestGoogleAddress);
  lBookingAnagraph.AnName.AsString := lFirstName;
  lBookingAnagraph.AnLastName.AsString := lLastName;
  lBookingAnagraph.AnEmail.AsString := lEmail;
  var
  lTest := aModel.AddNewBookingAnagraph(lBookingAnagraph);
  lBookingAnagraph.Assign(aModel.BookingAnagraph);
  lBookingAnagraph.ReturnAddress.Assign(aModel.BookingAnagraph.ReturnAddress);

  Assert.AreNotEqual(0, lTest, 'AddNewBookingAnagraph');
  Assert.AreNotEqual(0, lBookingAnagraph.AnagraphID.AsInteger, 'AnagraphId');
  Assert.AreNotEqual(0, lBookingAnagraph.MainAddress.Id.AsInteger, 'MainAddress.Id');
  Assert.AreNotEqual(0, lBookingAnagraph.ReturnAddress.Id.AsInteger, 'ReturnAddress.Id');
end;

procedure TCarServiceBookingTest.AnagraphViewModel;
// TJanuaCarServiceAnagraphModel =  IJanuaCarServiceAnagraphModel,
var
  lViewModel: IJanuaCarServiceAnagraphViewModel;
begin
  // TJanuaCarServiceAnagraphViewModel = )
  lViewModel := TJanuaCarServiceAnagraphViewModel.Create;
  Assert.IsNotNull(lViewModel);
end;

procedure TCarServiceBookingTest.Booking;
var
  lDM: TdmPgCarServiceBookingStorage;
  FUserSessionVM: IJanuaSystemUserSessionViewModel;
  FMainAnagraphModel: IJanuaDBAnagraphModel;
  lTest: Boolean;
  lEmail, lPassword, lFirstName, lLastName, lPhone: string;
  lPickupDate, lReturnDate: TDate;

  function RandomDate(aDate: TDate; aRandom: integer): TDate;
  begin
    Result := aDate + Random(aRandom);
    if DayOfWeek(Result) in [1, 7] then
      Result := RandomDate(aDate, aRandom);
  end;

begin
  lDM := TdmPgCarServiceBookingStorage.Create(nil);
  try
    Assert.IsNotNull(lDM);
    LogMessage('');

    lTest := TJanuaApplicationFactory.TryGetInterface(IJanuaSystemUserSessionViewModel, FUserSessionVM);

    Assert.IsTrue(lTest);
    LogMessage('Start Test');

    // Generates 'random' session User Name and Last Name with Password and email
    lEmail := 'service' + FormatDateTime('YYMMDDHHNNSSZZZ', Now()) + '@gmail.com';
    lPassword := FormatDateTime('YYMMDDHHNNSSZZZ', Now());
    lFirstName := 'NomeService ' + FormatDateTime('YYMMDDHHNNSSZZZ', Now());
    lLastName := 'CognomeService ' + FormatDateTime('YYMMDDHHNNSSZZZ', Now());
    lPhone := '+39' + FormatDateTime('YYYYMMDDHH', Now());

    LogMessage(lEmail + ' / ' + lPassword);

    (*
      // TestMainAddress: TJanuaRecordAddress; Viale Certosa, 98, 20156 Milano MI)*
      ServiceMainAddress: TJanuaRecordAddress;
      BranchGoogleAddress: TJanuaRecordAddress;

      ClientMainAddress: TJanuaRecordAddress;
      ClientReturnAddress: TJanuaRecordAddress;
    *)

    FUserSessionVM.LocalAnagraph.AnagraphID.AsInteger := 0;
    FUserSessionVM.LocalAnagraph.DbSchemaId.AsInteger := TJanuaApplication.DbSchemaId;
    FUserSessionVM.LocalAnagraph.SetfromRecordAddress(ServiceMainAddress);
    FUserSessionVM.LocalAnagraph.AnName.AsString := lFirstName;
    FUserSessionVM.LocalAnagraph.AnLastName.AsString := lLastName;
    FUserSessionVM.LocalAnagraph.AnEmail.AsString := lEmail;
    FUserSessionVM.LocalUserProfile.Address_street.AsString :=
      FUserSessionVM.LocalAnagraph.AnAddress.AsString;
    FUserSessionVM.LocalUserProfile.Address_number.AsString :=
      FUserSessionVM.LocalAnagraph.AnAddressNumber.AsString;
    FUserSessionVM.LocalUserProfile.Address_postal_code.AsString :=
      FUserSessionVM.LocalAnagraph.AnPostalCode.AsString;
    FUserSessionVM.LocalUserProfile.Cellular_phone.AsString := lPhone;
    FUserSessionVM.LocalAnagraph.AnCellular.AsString := lPhone;
    FUserSessionVM.LocalUserProfile.User.Email.AsString := lEmail;
    FUserSessionVM.LocalUserProfile.User.Password.AsString := lPassword;
    FUserSessionVM.LocalUserProfile.First_name.AsString := lFirstName;
    FUserSessionVM.LocalUserProfile.Last_name.AsString := lLastName;
    FUserSessionVM.LocalUserProfile.SetfromRecordAddress(ServiceMainAddress);
    FUserSessionVM.LocalUserProfile.Post;
    FUserSessionVM.LocalUserProfile.User.Post;
    LogMessage('Service Main Address: ' + FUserSessionVM.LocalAnagraph.AnFullAddress.AsString);
    // **** NOTA NOTA NOTA **** DOVE E' IL PROBLEMA QUI? che lo User Profile gestito dall'utente
    // NON è sincronizzato con la sua scheda anagrafica. Occorrerebbe un Anagraph.SetfromUserProfile?
    // O Almeno uno UserProfile SyncAnagraph visto che UserProfile dipende da Anagraph nello uses clause

    // *************************** The first Test is to Register an User using UserSession Model.
    FUserSessionVM.LoginRegister := TLoginRegister.lrRegister;

    lTest := FUserSessionVM.TryLoginOrRegister(
      procedure(aMessage: string)
      begin
        // Nothing
      end);
    Assert.IsTrue(lTest);
    Assert.AreNotEqual(Int64(0), FUserSessionVM.SessionID, 'UserSession Register Error');

    // ************************************ Performs a complete LogOut from the System ********************
    FUserSessionVM.LogOut;
    Assert.AreEqual(Int64(0), FUserSessionVM.SessionID, 'UserSession LogOut Error');
    FUserSessionVM := nil;

    // ************************************ The Second Test is to Login to an User Session using User/Pwd set
    lTest := TJanuaApplicationFactory.TryGetInterface(IJanuaSystemUserSessionViewModel, FUserSessionVM);
    Assert.IsTrue(lTest);
    FUserSessionVM.LoginRegister := TLoginRegister.lrLogin;

    FUserSessionVM.LocalUserProfile.User.Email.AsString := lEmail;
    FUserSessionVM.LocalUserProfile.User.Password.AsString := lPassword;

    lTest := FUserSessionVM.TryLoginOrRegister(
      procedure(aMessage: string)
      begin
        // Nothing
      end);
    Assert.IsTrue(lTest, 'Login Failed');

    Assert.AreNotEqual(Int64(0), FUserSessionVM.SessionID, 'UserSession LogIn Error');
    Assert.AreNotEqual(0, FUserSessionVM.CurrentRecord.Db_user_id.AsInteger, 'Db_user_id LogIn Error');
    Assert.AreNotEqual(0, FUserSessionVM.LocalUserProfile.User.DbUserId.AsInteger, 'DbUserId LogIn Error');
    Assert.AreNotEqual(0, FUserSessionVM.LocalUserProfile.AnagraphID.AsInteger, 'AnagraphID LogIn Error');
    Assert.AreNotEqual(0, FUserSessionVM.LocalUserProfile.AnagraphProfile.AnagraphID.AsInteger,
      'AnagraphProfile LogIn Error');
    { Assert.AreNotEqual(0, FUserSessionVM.LocalUserProfile.User.DbUserId.AsInteger, 'User.DbUserId Login'); }
    { TODO : FUserSessionVM.LocalUserProfile.User Verificare che con la login venga caricato o valorizzato }
    Assert.AreNotEqual(GUID_NULL, FUserSessionVM.LocalAnagraph.GUID, 'SessionVM.AnagraphProfile');
    Assert.AreNotEqual(0, FUserSessionVM.LocalAnagraph.MainAddress.Id.AsInteger, 'MainAddress.Id');
    Assert.AreNotEqual(0, FUserSessionVM.LocalAnagraph.Addresses.RecordCount, 'Addresses Login Count');

    // Test Aggiungo un Branch al profilo
    FUserSessionVM.LocalAnagraph.Addresses.Append;
    Assert.AreEqual(FUserSessionVM.LocalAnagraph.Addresses.AnagraphID.AsInteger,
      FUserSessionVM.LocalAnagraph.AnagraphID.AsInteger, 'AnAddress.AnagraphID');
    FUserSessionVM.LocalAnagraph.Addresses.AnAddress.SetfromRecordAddress(BranchGoogleAddress);
    FUserSessionVM.LocalAnagraph.Addresses.Post;
    Assert.AreNotEqual(GUID_NULL, FUserSessionVM.LocalAnagraph.Addresses.AnAddress.GUID, 'Address GUID');
    FUserSessionVM.LocalAnagraph.Addresses.AddressName.AsString := 'Seconda Sede';
    FUserSessionVM.LocalAnagraph.Addresses.AnAddress.Pos.AsInteger :=
      FUserSessionVM.LocalAnagraph.Addresses.RecordCount;
    FUserSessionVM.LocalAnagraph.Addresses.Email.AsString := 'branch' + FormatDateTime('YYMMDDHHNNSSZZZ',
      Now()) + '@gmail.com';
    FUserSessionVM.LocalAnagraph.Addresses.Phone.AsString := '+39' + FormatDateTime('YYYYMMDDHH', Now());
    Assert.AreEqual(2, FUserSessionVM.LocalAnagraph.Addresses.RecordCount, 'Addresses.RecordCount');
    LogMessage('Service Branch Address: ' + FUserSessionVM.LocalAnagraph.Addresses.FullAddress.AsString);
    FUserSessionVM.UpdateAnagraphProfile;

    // ************************************ Performs a complete LogOut from the System ********************
    FUserSessionVM.LogOut;
    Assert.AreEqual(Int64(0), FUserSessionVM.SessionID, 'UserSession LogOut Error');
    FUserSessionVM := nil;

    // ************************************ The Second Test is to Login to an User Session using User/Pwd set
    lTest := TJanuaApplicationFactory.TryGetInterface(IJanuaSystemUserSessionViewModel, FUserSessionVM);
    Assert.IsTrue(lTest);
    FUserSessionVM.LoginRegister := TLoginRegister.lrLogin;

    FUserSessionVM.LocalUserProfile.User.Email.AsString := lEmail;
    FUserSessionVM.LocalUserProfile.User.Password.AsString := lPassword;

    lTest := TJanuaApplicationFactory.TryGetInterface(IJanuaSystemUserSessionViewModel, FUserSessionVM);
    Assert.IsTrue(lTest);
    FUserSessionVM.LoginRegister := TLoginRegister.lrLogin;

    FUserSessionVM.LocalUserProfile.User.Email.AsString := lEmail;
    FUserSessionVM.LocalUserProfile.User.Password.AsString := lPassword;

    lTest := FUserSessionVM.TryLoginOrRegister(
      procedure(aMessage: string)
      begin
        // Nothing
      end);

    Assert.IsTrue(lTest, 'Login Failed:  ' + lEmail + '/' + lPassword);

    FUserSessionVM.LocalAnagraph.Addresses.First;
    LogMessage('Login Service 1 Address: ' + FUserSessionVM.LocalAnagraph.Addresses.FullAddress.AsString);
    FUserSessionVM.LocalAnagraph.Addresses.Next;
    LogMessage('Login Service 2 Address: ' + FUserSessionVM.LocalAnagraph.Addresses.FullAddress.AsString);

    LogMessage('Login Service Main Address: ' + FUserSessionVM.LocalAnagraph.MainAddress.Id.AsString +
      FUserSessionVM.LocalAnagraph.MainAddress.FullAddress.AsString);
    LogMessage('');

    Assert.AreNotEqual(Int64(0), FUserSessionVM.SessionID, 'UserSession LogIn Error');
    Assert.AreNotEqual(0, FUserSessionVM.CurrentRecord.Db_user_id.AsInteger, 'Db_user_id LogIn Error');
    Assert.AreNotEqual(0, FUserSessionVM.LocalUserProfile.User.DbUserId.AsInteger, 'DbUserId LogIn Error');
    Assert.AreNotEqual(0, FUserSessionVM.LocalUserProfile.AnagraphID.AsInteger, 'AnagraphID LogIn Error');
    Assert.AreNotEqual(0, FUserSessionVM.LocalUserProfile.AnagraphProfile.AnagraphID.AsInteger,
      'AnagraphProfile LogIn Error');
    Assert.AreEqual(2, FUserSessionVM.LocalAnagraph.Addresses.RecordCount, 'Addresses.RecordCount');

    LogMessage('Addresses.RecordCount = 2');

    // ******* Creo l'ambiente finale di Booking Wizard ********************************************

    lDM.UserProfile := FUserSessionVM.CurrentRecord.UserProfile;
    lDM.OfficeID := FUserSessionVM.CurrentRecord.UserProfile.AnagraphID.AsInteger;
    lDM.UserSession := FUserSessionVM.CurrentRecord;

    Assert.AreNotEqual(0, lDM.OfficeID, 'lDM.OfficeID');
    Assert.IsNotNull(lDM.UserSession, 'lDM.UserSession');
    Assert.IsNotNull(lDM.UserProfile, 'lDM.UserProfile');

    lDM.HasReturn := True;

    Assert.IsTrue(lDM.HasReturn, 'lDM.HasReturn ');
    LogMessage('lDM.HasReturn True');

    lPickupDate := RandomDate(Date() + 3, 5);
    LogMessage('PickupDate: ' + FormatDateTime('yyyy/mm/dd', lPickupDate));

    lReturnDate := RandomDate(lPickupDate + 1, 5);
    LogMessage('ReturnDate: ' + FormatDateTime('yyyy/mm/dd', lReturnDate));

    lDM.PickupDate := lPickupDate;
    lDM.UpdatePickupSlots;
    Assert.IsNotNull(lDM.PickupList);
    Assert.AreEqual(6, lDM.PickupList.RecordCount, 'PickupList');
    LogMessage('PickupList: ' + lDM.PickupList.RecordCount.ToString);

    lDM.DeliveryDate := lReturnDate;
    lDM.UpdateDeliverySlots;
    Assert.IsNotNull(lDM.DeliveryList);
    Assert.AreEqual(6, lDM.DeliveryList.RecordCount, 'DeliveryList');
    LogMessage('PickupList: ' + lDM.DeliveryList.RecordCount.ToString);

    Assert.IsTrue(lPickupDate < lReturnDate);

    var
    lPickupSlot := Random(3);
    Sleep(1000);
    var
    lDeliverySlot := 3 + Random(3);

    // FTimeTableSlots[I].Booked.AsBoolean;
    lDM.PickupSlots[lPickupSlot].Booked.AsBoolean := True;
    lDM.DeliverySlots[lDeliverySlot].Booked.AsBoolean := True;

    Assert.IsTrue(lDM.CheckPickuSlots, 'FdmPgCarServiceBooking.CheckPickuSlots');
    Assert.IsTrue(lDM.CheckDeliverySlots, 'FdmPgCarServiceBooking.CheckDeliverySlots');

    LogMessage('lPickupSlot[' + lPickupSlot.ToString + ']' + lDM.PickupSlots[lPickupSlot].SlotDes.AsString);
    LogMessage('lDeliverySlot:[' + lDeliverySlot.ToString + '] ' + lDM.DeliverySlots[lDeliverySlot]
      .SlotDes.AsString);

    Assert.AreEqual(1, lDM.UsersList.RecordCount, 'lDM.UsersList.RecordCount');

    // **************************** Creazione del Cliente che deve acquistare ********************************

    LogMessage('');
    LogMessage('Start Test AnagraphModel');
    Assert.IsNotNull(lDM.BookingRecord.AnagraphClient, 'lBookingAnagraph');
    Assert.IsNotNull(lDM.BookingRecord.AnagraphClient.MainAddress, 'MainAddress');

    // Generates 'random' session User Name and Last Name with Password and email
    lEmail := 'customer' + FormatDateTime('YYMMDDHHNNSSZZZ', Now()) + '@gmail.com';
    lFirstName := 'Nome Cliente ' + FormatDateTime('YYMMDDHHNNSSZZZ', Now());
    lLastName := 'Cognome Cliente ' + FormatDateTime('YYMMDDHHNNSSZZZ', Now());
    lPhone := '+39' + FormatDateTime('YYYYMMDDHH', Now());

    lDM.BookingRecord.AnagraphClient.AnagraphID.AsInteger := 0;
    lDM.BookingRecord.AnagraphClient.DbSchemaId.AsInteger := TJanuaApplication.DbSchemaId;
    lDM.BookingRecord.AnagraphClient.AnName.AsString := lFirstName;
    lDM.BookingRecord.AnagraphClient.AnLastName.AsString := lLastName;
    lDM.BookingRecord.AnagraphClient.AnEmail.AsString := lEmail;
    lDM.BookingRecord.AnagraphClient.AnCellular.AsString := lPhone;
    lDM.BookingRecord.AnagraphClient.SetfromRecordAddress(ClientMainAddress);
    lDM.BookingRecord.AnagraphClient.Post;
    lDM.BookingRecord.AnagraphClient.SyncMainAddress;

    Assert.AreEqual(lDM.BookingRecord.AnagraphClient.MainAddress.FullAddress.AsString,
      lDM.BookingRecord.AnagraphClient.AnFullAddress.AsString, 'SyncMainAddress ');

    LogMessage('SyncMainAddress ' + lDM.BookingRecord.AnagraphClient.MainAddress.FullAddress.AsString);

    Assert.AreEqual(lDM.BookingRecord.AnagraphClient.MainAddress.FullAddress.AsString,
      ClientMainAddress.AddressFull, 'ClientMainAddress');

    Assert.AreNotEqual(TGUID.Empty, lDM.BookingRecord.AnagraphClient.MainAddress.GUID, 'MainAddress.GUID');

    Assert.IsNotNull(lDM.BookingRecord.AnagraphClient.ReturnAddress, 'ReturnAddress');
    // ClientMainAddress
    lDM.BookingRecord.AnagraphClient.ReturnAddress.SetfromRecordAddress(ClientReturnAddress);
    lDM.BookingRecord.AnagraphClient.ReturnAddress.Post;
    LogMessage('SynReturnAddress ' + lDM.BookingRecord.AnagraphClient.ReturnAddress.FullAddress.AsString);

    Assert.AreEqual(lDM.BookingRecord.AnagraphClient.ReturnAddress.FullAddress.AsString,
      ClientReturnAddress.AddressFull, 'ClientReturnAddress');

    Assert.AreNotEqual(TGUID.Empty, lDM.BookingRecord.AnagraphClient.ReturnAddress.GUID,
      'ReturnAddress.GUID');

    lDM.BookingRecord.VehicleModel.AsString := 'Opel Astra';
    lDM.BookingRecord.VehicleNumberplate.AsString := 'AA123RR';
    lDM.BookingRecord.VehicleColor.AsString := 'Grigio Metalizzato';

    Assert.AreNotEqual(0, lDM.BookingRecord.ServiceAnagraph.AnagraphID.AsInteger, 'AnagraphId');

    LogMessage('checkBooking');
    var
    lBool := lDM.BookingRecord.checkBooking;
    Assert.IsTrue(lBool, 'checkBooking');

    // LogMessage('lDM.RegisterPickupDeliverySlots');
    // lDM.RegisterPickupDeliverySlots;

    LogMessage('lDM.PostRecord');
    lDM.PostRecord(True);

    LogMessage('Service Address ' + lDM.BookingRecord.ServiceAnagraph.MainAddress.Id.AsString + ' ' +
      lDM.BookingRecord.ServiceAnagraph.MainAddress.FullAddress.AsString);
    LogMessage('Client Pickup ' + lDM.BookingRecord.AnagraphClient.MainAddress.Id.AsString + ' ' +
      lDM.BookingRecord.AnagraphClient.MainAddress.FullAddress.AsString);
    LogMessage('Client Return ' + lDM.BookingRecord.AnagraphClient.ReturnAddress.Id.AsString + ' ' +
      lDM.BookingRecord.AnagraphClient.ReturnAddress.FullAddress.AsString);

    LogMessage('Pickup fromID: ' + lDM.BookingRecord.PickupDateTime.FromId.AsString);
    LogMessage('Pickup ToId: ' + lDM.BookingRecord.PickupDateTime.ToId.AsString);

    LogMessage('Pickup fromID: ' + lDM.BookingRecord.DeliveryDateTime.FromId.AsString);
    LogMessage('Pickup ToId: ' + lDM.BookingRecord.DeliveryDateTime.ToId.AsString);

    LogMessage('lDM.ConfirmBooking');
    lDM.ConfirmBooking;

    LogMessage(lDM.BookingRecord.PickupDateTime.asJson);
    LogMessage(lDM.BookingRecord.DeliveryDateTime.asJson);

  finally
    lDM.Free;
    lDM := nil;
  end;
end;

procedure TCarServiceBookingTest.LogMessage(aMessage: string);
begin
  WriteLn(aMessage);
end;

procedure TCarServiceBookingTest.NewBookingAnagraph;
var
  lBookingAnagraph: IBookingAnagraphView;
begin
  lBookingAnagraph := TBookingAnagraphView.Create('bookinganagraph');
  LogMessage('');
  LogMessage('Start Test AnagraphModel');
  Assert.IsNotNull(lBookingAnagraph, 'lBookingAnagraph');
  Assert.IsNotNull(lBookingAnagraph.MainAddress, 'MainAddress');
  // TestGoogleAddress
  lBookingAnagraph.SetfromRecordAddress(TestGoogleAddress);
  lBookingAnagraph.Post;
  lBookingAnagraph.SyncMainAddress;
  LogMessage('SyncMainAddress ' + lBookingAnagraph.MainAddress.FullAddress.AsString);
  Assert.AreEqual(lBookingAnagraph.MainAddress.FullAddress.AsString, TestGoogleAddress.AddressFull);
  Assert.AreNotEqual(TGUID.Empty, lBookingAnagraph.MainAddress.GUID, 'MainAddress.GUID');

  Assert.IsNotNull(lBookingAnagraph.ReturnAddress, 'ReturnAddress');
  // BranchGoogleAddress
  lBookingAnagraph.ReturnAddress.SetfromRecordAddress(BranchGoogleAddress);
  lBookingAnagraph.ReturnAddress.Post;
  LogMessage('SyncMainAddress ' + lBookingAnagraph.ReturnAddress.FullAddress.AsString);
  Assert.AreEqual(lBookingAnagraph.ReturnAddress.FullAddress.AsString, BranchGoogleAddress.AddressFull);
  Assert.AreNotEqual(TGUID.Empty, lBookingAnagraph.ReturnAddress.GUID, 'ReturnAddress.GUID');

end;

procedure TCarServiceBookingTest.Setup;
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
  TestGoogleAddress.CountryCode := 'IT';
  TestGoogleAddress.ISOCountryCode := 'ITA';
  TestGoogleAddress.PostalCode := '16132';

  TJanuaApplicationFactory.RegisterClass(IJanuaMailSMTPSender, TJanuaMockMailSender);
  TJanuaApplicationFactory.RegisterClass(IJanuaMailINdySMTPSender, TJanuaMockMailSender);
  TJanuaApplicationFactory.RegisterClass(IJanuaMailSendGridSender, TJanuaMockMailSender);

  // 45.46884926034372, 9.205410669026616

  ServiceMainAddress.AddressFull := 'Viale Luigi Majno, 7, 20122 Milano MI';
  ServiceMainAddress.Address := 'Viale Luigi Majno';
  ServiceMainAddress.Number := '7';
  ServiceMainAddress.Town := 'Milano';
  ServiceMainAddress.StateProvince := 'MI';
  ServiceMainAddress.StateProvinceName := 'Milano';
  ServiceMainAddress.Latitude := 45.46884926034372;
  ServiceMainAddress.Longitude := 9.205410669026616;
  ServiceMainAddress.CountryCode := 'IT';
  ServiceMainAddress.ISOCountryCode := 'ITA';
  ServiceMainAddress.PostalCode := '20122';

  // BranchGoogleAddress 45.439296579614854, 9.20091216902548
  BranchGoogleAddress.AddressFull := 'Viale Ortles, 5, 20139 Milano MI';
  BranchGoogleAddress.Address := 'Viale Ortles';
  BranchGoogleAddress.Number := '5';
  BranchGoogleAddress.Town := 'Milano';
  BranchGoogleAddress.StateProvince := 'MI';
  BranchGoogleAddress.StateProvinceName := 'Milano';
  BranchGoogleAddress.Latitude := 44.439296579614854;
  BranchGoogleAddress.Longitude := 9.20091216902548;
  BranchGoogleAddress.CountryCode := 'IT';
  BranchGoogleAddress.ISOCountryCode := 'ITA';
  BranchGoogleAddress.PostalCode := '20139';

  ClientMainAddress.AddressFull := 'Viale Certosa, 98, 20156, Milano (MI)';
  ClientMainAddress.Address := 'Viale Certosa';
  ClientMainAddress.Number := '98';
  ClientMainAddress.Town := 'Milano';
  ClientMainAddress.StateProvince := 'MI';
  ClientMainAddress.StateProvinceName := 'Milano';
  ClientMainAddress.Latitude := 45.49440485730412;
  ClientMainAddress.Longitude := 9.142736569027361;
  ClientMainAddress.CountryCode := 'IT';
  ClientMainAddress.ISOCountryCode := 'ITA';
  ClientMainAddress.PostalCode := '20156';

  // TestReturnAddress: TJanuaRecordAddress;  Viale Fulvio Testi, 98, 20126 Milano MI

  ClientReturnAddress.AddressFull := 'Viale Fulvio Testi, 98, 20126, Milano (MI)';
  ClientReturnAddress.Address := 'Viale Fulvio Testi';
  ClientReturnAddress.Number := '98';
  ClientReturnAddress.Town := 'Milano';
  ClientReturnAddress.StateProvince := 'MI';
  ClientReturnAddress.StateProvinceName := 'Milano';
  ClientReturnAddress.Latitude := 45.51295682727675;
  ClientReturnAddress.Longitude := 9.204534897864407;
  ClientReturnAddress.CountryCode := 'IT';
  ClientReturnAddress.ISOCountryCode := 'ITA';
  ClientReturnAddress.PostalCode := '20126';

  TJanuaApplication.DbSchemaId := 36;

end;

procedure TCarServiceBookingTest.TearDown;
begin

end;

end.
