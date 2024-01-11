unit Janua.UniDAC.Test.MVVM.Carservice.Drivers;

interface

uses
  DUnitX.TestFramework,
  // WebMock
  WebMock.Response, WebMock.Http.Messages, WebMock,
  // CarService
  Janua.Carservice.Driver.ViewModel.Intf, Janua.Carservice.Driver.Model.Impl, Janua.Carservice.Commons,
  Janua.Carservice.PgRemoteDrivers;

type

  [TestFixture]
  TTestMVVMCarServiceDrivers = class
  private
    WebMock: TWebMock;
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Sample Methods
    // Simple single Test
    [Test]
    procedure TestDriversDataModule;
    [Test]
    procedure TestDBModel;
    [Test]
    procedure TestRestDataset;
    [Test]
    procedure TestRestRecord;
  end;

implementation

uses
  // System
  System.SysUtils, System.StrUtils, System.Math,
  // Janua
  Janua.Core.Functions, Janua.Application.Framework, Janua.Orm.Intf, Janua.Orm.Impl, Janua.Core.Types,
  Janua.Core.DB.Types, Janua.REST.Types,
  // Janua Orm - Booking DMVC
  JOrm.Carservice.Booking.Impl, JOrm.Carservice.Booking.Intf,
  // Special Test Classes
  Janua.REST.TestClasses;

procedure TTestMVVMCarServiceDrivers.Setup;
begin
  WebMock := TWebMock.Create(8081);
end;

procedure TTestMVVMCarServiceDrivers.TearDown;
begin
  WebMock.Free;
end;

procedure TTestMVVMCarServiceDrivers.TestDBModel;
var
  TestDBModel: IJanuaCSDriversDBModel;
  lXml, lJson: string;
  lParams: IJanuaParams;
  lDataset: IJanuaDBDataset;
  lFactory: IJanuaDBDatasetFactory;
  aGuid: TGUID;
  // TBookingTimetableView = (IBookingTimetableView)
  lBookingTimetableView: IBookingTimetableView;
begin
  TestDBModel := TJanuaCSDriversDBModel.Create;
  Assert.IsNotNull(TestDBModel, 'TestDBModel');
  Assert.IsNotNull(TestDBModel.jdsTimeTable, 'jdsTimeTable');
  Assert.IsNotNull(TestDBModel.jdsMessages, 'jdsMessages');
  Assert.IsNotNull(TestDBModel.jdsCalendar, 'jdsCalendar');
  Assert.IsNotNull(TestDBModel.jdsTimeTableMessages, 'jdsTimeTableMessages');
  Assert.IsNotNull(TestDBModel.TimetableRecord, 'TimetableRecord');
  Assert.IsNotNull(TestDBModel.jdsDetail, 'jdsDetail');

  Assert.IsNotNull(TestDBModel.TimetableRecord, 'TimetableRecord');
  Assert.IsNotNull(TestDBModel.jdsDataset, 'jdsDataset');
  Assert.IsNotNull(TestDBModel.InternalRecord, 'InternalRecord');

  TestDBModel.jdsCalendar.ParamByName('driver_id').AsInteger := 253174;
  TestDBModel.jdsCalendar.Open;
  Assert.AreNotEqual(0, TestDBModel.jdsCalendar.RecordCount);
  aGuid := TestDBModel.jdsCalendar.GUID;

  // Testo che lBookingTimetableView carichi esattamente gli stessi dati della tabella jdsCalendar (in primis)
  lBookingTimetableView := TBookingTimetableView.Create;
  lBookingTimetableView.LoadFromDataset(TestDBModel.jdsCalendar);
  Assert.AreEqual(aGuid, lBookingTimetableView.GUID, 'lBookingTimetableView.GUID');
  lJson := lBookingTimetableView.asJson;

  // Test la Ricerca per GUID del DBModel per vedere se 'gira' ...........................................
  Assert.IsTrue(TestDBModel.SearchByGUID(aGuid), 'Search by GUID: ' + aGuid.ToString);
  lJson := TestDBModel.InternalRecord.asJson;
  Assert.AreNotEqual('', lJson, 'lJson is nil');
  Assert.AreEqual(aGuid, TestDBModel.InternalRecord.GUID, 'TestDBModel.InternalRecord Guid');

  // 253174 -- Test Messages with Driver ID.
  TestDBModel.jdsMessages.Close;
  TestDBModel.jdsMessages.ParamByName('driver_id').AsInteger := 253174;
  TestDBModel.jdsMessages.Open;
  Assert.AreNotEqual(0, TestDBModel.jdsMessages.RecordCount, 'jdsMessage no record found');






  // REST Procedures
  // TJanuaParams = IJanuaParams

  // At First I create some 'dummy' set of Parameters
  lParams := TJanuaParams.Create;
  lParams.AddParam('driver_id', TJanuaFieldType.jptInteger, 253174);
  lXml := TestDBModel.RestGetDataset('bin', lParams.AsBase64Url);
  Assert.AreNotEqual('', lXml, 'XML is empty');

  Assert.IsTrue(TJanuaApplicationFactory.TryGetInterface(IJanuaDBDatasetFactory, lFactory),
    'IJanuaDBDatasetFactory not found');
  lDataset := (lFactory.CreateDataset);
  lDataset.DeSerialize('bin', lXml);
  Assert.AreEqual(TestDBModel.jdsCalendar.RecordCount, lDataset.RecordCount);

end;

procedure TTestMVVMCarServiceDrivers.TestDriversDataModule;
// TJanuaPgDriversDataModule = class(TJanuaCustomDriversDataModule, IJanuaCSDriversDataModule)
var
  TestDM: IJanuaCSDriversDataModule;
  lString64, lXml, lParams: string;
  // cationFactory.RegisterClass(IJanuaDBDatasetFactory, TJanuaUniVirtualDatasetFactory);
  lFactory: IJanuaDBDatasetFactory;
  lDataset: IJanuaDBDataset;
  aGUID: TGUID;
  lBookingTimetableView: IBookingTimetableView ;
  lJson: string;
begin
  // Test DM Creation
  TestDM := TJanuaPgDriversDataModule.Create;
  Assert.IsNotNull(TestDM, 'TestDM');
  Assert.IsNotNull(TestDM.jdsCalendar, 'jdsCalendar');
  Assert.IsNotNull(TestDM.jdsTimeTable, 'jdsTimeTable');
  Assert.IsNotNull(TestDM.jdsMessages, 'jdsMessages');
  Assert.IsNotNull(TestDM.jdsTimeTableMessages, 'jdsTimeTableMessages');
  TestDM := nil;

  // Test DM by TryGetInterface
  TJanuaApplicationFactory.TryGetInterface(IJanuaCSDriversDataModule, TestDM);
  Assert.IsNotNull(TestDM, 'TestDM');
  Assert.IsNotNull(TestDM.jdsCalendar, 'jdsCalendar');
  Assert.IsNotNull(TestDM.jdsTimeTable, 'jdsTimeTable');
  Assert.IsNotNull(TestDM.jdsMessages, 'jdsMessages');
  Assert.IsNotNull(TestDM.jdsTimeTableMessages, 'jdsTimeTableMessages');

  // Test Calendar with Drive 253174
  TestDM.jdsCalendar.ParamByName('driver_id').AsInteger := 253174;
  TestDM.jdsCalendar.Open;
  Assert.AreNotEqual(0, TestDM.jdsCalendar.RecordCount);

  // Test Export asBase64 to Virtual Dataset with 2 Serializer options (explicit and by string)
  lString64 := TestDM.jdsCalendar.AsBase64;
  lXml := TestDM.jdsCalendar.Serialize('bin');
  Assert.AreNotEqual('', lXml, 'XML export empty');
  Assert.AreNotEqual('', lString64, 'lString64 export empty');
  Assert.IsTrue(TJanuaApplicationFactory.TryGetInterface(IJanuaDBDatasetFactory, lFactory),
    'IJanuaDBDatasetFactory not found');
  lDataset := (lFactory.CreateDataset);
  lDataset.AsBase64 := lString64;
  Assert.AreEqual(TestDM.jdsCalendar.RecordCount, lDataset.RecordCount);
  // Test Serialization by String
  lDataset := nil;
  lDataset := (lFactory.CreateDataset);
  lDataset.DeSerialize('bin', lXml);
  Assert.AreEqual(TestDM.jdsCalendar.RecordCount, lDataset.RecordCount);

  // Test Parameters Serialization and Search
  lDataset := nil;
  lDataset := (lFactory.CreateDataset);
  lDataset := (lFactory.CreateDataset);
  // const aName: string; aType: TJanuaFieldType; aValue: TValue const aVisible: Boolean = True)
  lDataset.Params.AddParam('driver_id', TJanuaFieldType.jptInteger, 253174);
  lParams := lDataset.Params.AsBase64Url;
  TestDM.jdsCalendar.Close;
  TestDM.jdsCalendar.Params.AsBase64Url := lParams;
  TestDM.jdsCalendar.Open;
  Assert.AreNotEqual(0, TestDM.jdsCalendar.RecordCount, 'jdsCalendar Params Open: 253174');

  // Test Search and Test Booking Record Against DataModule
  aGUID := TestDM.jdsCalendar.GUID;
  Assert.IsTrue(TestDM.jdsTimeTable.SearchRecord(aGUID), 'SearchRecord '+ aGuid.ToString);


  lBookingTimetableView := TBookingTimetableView.Create;
  lBookingTimetableView.LoadFromDataset(TestDM.jdsTimeTable);
  lBookingTimetableView.PickupAnagraph.LoadFromDataset(TestDM.jdsTimeTable);
  lBookingTimetableView.DeliveryAnagraph.LoadFromDataset(TestDM.jdsTimeTable);
  lBookingTimetableView.BookingHead.LoadFromDataset(TestDM.jdsTimeTable);
  Assert.AreEqual(aGuid, lBookingTimetableView.GUID, 'lBookingTimetableView.GUID');
  lJson := lBookingTimetableView.asJson;


  // 253174 -- Test Messages with Driver ID.
  TestDM.jdsMessages.Close;
  TestDM.jdsMessages.ParamByName('driver_id').AsInteger := 253174;
  TestDM.jdsMessages.Open;
  Assert.AreNotEqual(0, TestDM.jdsMessages.RecordCount, 'jdsMessage no record found');

  // Test Search Record with Calendar GUID from Calendar first Record.
  Assert.IsTrue(TestDM.jdsTimeTable.SearchRecord(TestDM.jdsCalendar.GUID),
    'jguid not found: ' + TestDM.jdsCalendar.GUIDString);
  Assert.AreEqual(TestDM.jdsCalendar.GUID, TestDM.jdsTimeTable.GUID);

  // Check Stored Procedures are not nil
  Assert.IsNotNull(TestDM.jspUpdateCalendar, 'jspUpdateCalendar');
  Assert.IsNotNull(TestDM.jspChangeBookDriver, 'jspChangeBookDriver');
  Assert.IsNotNull(TestDM.jdsMessages, 'jdsMessages');

  // Test spConfirmBooking = ergomercator.carservice.book_confirmation(:p_guid)
  Assert.IsNotNull(TestDM.jspConfirmBooking.ParamByName('p_guid'), 'param p_jguid');
  TestDM.jspConfirmBooking.ParamByName('p_guid').AsString := TestDM.jdsTimeTable.GUIDString;
  TestDM.jspConfirmBooking.ExecSQL;



end;

procedure TTestMVVMCarServiceDrivers.TestRestDataset;
var
  // TJanuaCSDriversRESTModel = IJanuaCSDriversRestModel, IJanuaRESTModel
  lRestModel: IJanuaCSDriversRestModel;
  lFactory: IJanuaDBDatasetFactory;
  TestDBModel: IJanuaCSDriversDBModel;
  lBaseUrl, lResponse, lParameters, lFullUrl, aMockUrl, lParamUrl: string;
  FParam: IJanuaField;
  aGuid: TGUID;
  lRecord: IJanuaRecord;
begin
  Assert.IsTrue(TJanuaApplicationFactory.TryGetInterface(IJanuaDBDatasetFactory, lFactory),
    'IJanuaDBDatasetFactory not found');
  lRestModel := TJanuaCSDriversRESTModel.Create;
  Assert.IsNotNull(lRestModel, 'lRestModel');
  Assert.IsNotNull(lRestModel.jdsMessages, 'jdsMessages');
  Assert.IsNotNull(lRestModel.jdsCalendar, 'jdsCalendar');
  Assert.IsNotNull(lRestModel.TimetableRecord, 'TimetableRecord');
  Assert.IsNotNull(lRestModel.jdsDataset, 'jdsDataset');
  Assert.IsNotNull(lRestModel.InternalRecord, 'InternalRecord');

  // Start with DMVC Testing .............................................................
  TestDBModel := TJanuaCSDriversDBModel.Create;
  Assert.IsNotNull(TestDBModel, 'TestDBModel');

  // First Test Get TimeTable Record -----------------------------------------------------

  // Step 1 - Set Server Address
  lRestModel.ServerUrl := 'http://127.0.0.1';
  lRestModel.ServerPort := 8081;
  lRestModel.RestFormat := TRestFormat.rfBinary;
  Assert.IsTrue(lRestModel.RestFormat = TRestFormat.rfBinary);
  lBaseUrl := lRestModel.GetBaseUrl;
  aMockUrl := WebMock.URLFor(lRestModel.RestAPIEndpoint);
  Assert.AreEqual(aMockUrl, lRestModel.GetBaseUrl);

  // Step 2 - Set the Parameters for the Client
  Assert.IsTrue(lRestModel.jdsCalendar.Params.FindParam('driver_id', FParam), 'FParam driver_id');
  FParam.AsInteger := 253174;

  // Step 3 - Set the Mock Listener
  lParameters := lRestModel.jdsCalendar.Params.AsBase64Url;
  lResponse := TestDBModel.RestGetDataset('bin', lParameters);
  Assert.AreNotEqual('', lResponse);
  // Set the Params Resource URL
  lParamUrl := ConcatUrl('driver/dataset/bin', lParameters);
  // Get the Final Listener's URL
  aMockUrl := WebMock.URLFor(lParamUrl);

  WebMock.StubRequest('*', '*').ToRespondWith(
    procedure(const ARequest: IWebMockHTTPRequest; const AResponse: IWebMockResponseBuilder)
    begin
      var
      vTest := StringReplace(ARequest.RequestURI, '/driver/dataset/bin', '', [rfIgnoreCase]);
      AResponse.WithStatus(200).WithBody(TestDBModel.RestGetDataset('bin', vTest));
    end);

  // Step 4 - Launch the procedure
  // First I check the Full Url
  lFullUrl := lRestModel.GetDBClientFullUrl;
  Assert.AreEqual(aMockUrl, lFullUrl, 'Full Url does not match');
  // Then launch the Request
  Assert.IsTrue(lRestModel.jdsCalendar.RemoteLoad, 'RemoteLoad Failed');

  // Step 5 - Verify that the Data Arrived and the 2 Datasets are equal
  TestDBModel.jdsCalendar.Close;
  TestDBModel.jdsCalendar.ParamByName('driver_id').AsInteger := 253174;
  TestDBModel.jdsCalendar.Open;
  Assert.AreEqual(TestDBModel.jdsCalendar.RecordCount, lRestModel.jdsCalendar.RecordCount, 'RecordCount');

  // Step 6 - Test Search Record using GUID - And Compare The Record with Data in the Dataset ...........
  aGuid := TestDBModel.jdsCalendar.GUID;
  Assert.IsTrue(TestDBModel.SearchByGUID(aGuid), 'TestDBModel.SearchByGUID: ' + aGuid.ToString );

end;

procedure TTestMVVMCarServiceDrivers.TestRestRecord;
var
  // TJanuaCSDriversRESTModel = IJanuaCSDriversRestModel, IJanuaRESTModel
  lRestModel: IJanuaCSDriversRestModel;
  lFactory: IJanuaDBDatasetFactory;
  TestDBModel: IJanuaCSDriversDBModel;
  lBaseUrl, lResponse, lParameter, lFullUrl, aMockUrl, lParamUrl, lJson: string;
  FParam: IJanuaField;
  aGuid: TGUID;
  lRecord: IJanuaRecord;
begin
  Assert.IsTrue(TJanuaApplicationFactory.TryGetInterface(IJanuaDBDatasetFactory, lFactory),
    'IJanuaDBDatasetFactory not found');
  lRestModel := TJanuaCSDriversRESTModel.Create;

  // Start with DMVC Testing .............................................................
  TestDBModel := TJanuaCSDriversDBModel.Create;
  Assert.IsNotNull(TestDBModel, 'TestDBModel');

  // First Test Get jdsMessages ---------------------------------------------------------

  // Step 1 - Set Server Address
  lRestModel.ServerUrl := 'http://127.0.0.1';
  lRestModel.ServerPort := 8081;
  lRestModel.RestFormat := TRestFormat.rfBinary;

  // Step 2 - Set the Parameters for the Client
  Assert.IsTrue(TestDBModel.jdsCalendar.Params.FindParam('driver_id', FParam), 'FParam driver_id');
  FParam.AsInteger := 253174;
  TestDBModel.jdsCalendar.Open;
  Assert.AreNotEqual(0, TestDBModel.jdsCalendar.RecordCount);
  aGuid := TestDBModel.jdsCalendar.GUID;

  // Step 3 - Set the Mock Listener
  lParameter := URLEncode64(aGuid.ToString);
  if TestDBModel.SearchByGUID(aGuid) then
    lResponse := TestDBModel.InternalRecord.asJson;
  Assert.AreNotEqual('', lResponse);

  // Set the Params Resource URL
  lParamUrl := ConcatUrl('driver/record', lParameter);
  // Get the Final Listener's URL
  aMockUrl := WebMock.URLFor(lParamUrl);

  WebMock.StubRequest('*', '*').ToRespondWith(
    procedure(const ARequest: IWebMockHTTPRequest; const AResponse: IWebMockResponseBuilder)
    begin
      var
      vTest := StringReplace(ARequest.RequestURI, '/driver/record/', '', [rfIgnoreCase]);
      lParameter := URLDecode64(vTest);
      aGuid := TGUID.Create(lParameter);
      if TestDBModel.SearchByGUID(aGuid) then
      begin
        lResponse := TestDBModel.InternalRecord.asJson;
        AResponse.WithStatus(200).WithBody(lResponse);
      end
      else
      begin
        AResponse.WithStatus(404).WithBody('Record not Found');
      end;
    end);

  // Step 4 - Launch the procedure
  // First I check the Full Url
  lFullUrl := lRestModel.GetRecordClientFullUrl(aGuid);
  Assert.AreEqual(aMockUrl, lFullUrl, 'Full Url does not match');
  // Then launch the Request
  Assert.IsTrue(lRestModel.SearchByGUID(aGuid), 'RemoteLoad Failed');

  // Step 5 - Verify that the Data Arrived and the 2 Datasets are equal
  Assert.IsTrue(TestDBModel.SearchByGUID(aGuid));
  Assert.AreEqual(TestDBModel.InternalRecord.GUIDString, lRestModel.InternalRecord.GUIDString, 'GUIDString');

  lJson := lRestModel.InternalRecord.AsJson;

  Assert.AreEqual(lJson, TestDBModel.InternalRecord.asJson);

end;

initialization

TDUnitX.RegisterTestFixture(TTestMVVMCarServiceDrivers);

end.
