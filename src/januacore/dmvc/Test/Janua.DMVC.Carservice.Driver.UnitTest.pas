unit Janua.DMVC.Carservice.Driver.UnitTest;

interface

uses
  DUnitX.TestFramework, System.SysUtils, System.StrUtils;

type

  [TestFixture]
  TDriverDMVC = class
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    [Test]
    procedure Liveness;
    [Test]
    procedure Calendar;
    [Test]
    procedure TimetableRecord;
  end;

implementation

uses
  // CarService
  Janua.Carservice.Driver.ViewModel.Intf, Janua.Carservice.Driver.Model.Impl, Janua.Carservice.Commons,
  Janua.Carservice.PgRemoteDrivers,
  // Janua
  Janua.Core.Functions, Janua.Application.Framework, Janua.Orm.Intf, Janua.Orm.Impl, Janua.ViewModels.Intf,
  Janua.REST.Client, Janua.REST.Intf, Janua.Http.Types, Janua.Core.Types, Janua.Core.DB.Types,
  // Janua Orm - Booking DMVC
  JOrm.Carservice.Booking.Impl, JOrm.Carservice.Booking.Intf,
  // Special Test Classes
  Janua.REST.TestClasses;

procedure TDriverDMVC.Calendar;
var
  // TJanuaCSDriversRESTModel = IJanuaCSDriversRestModel, IJanuaRESTModel
  lRestModel: IJanuaCSDriversRestModel;
  lFactory: IJanuaDBDatasetFactory;
  TestDBModel: IJanuaCSDriversDBModel;
  lBaseUrl, lResponse, lParameters, lFullUrl, aMockUrl, lParamUrl: string;
  FParam: IJanuaField;
  aGuid: TGUID;
  lRecord: IJanuaRecord;
var
  // TJanuaRESTClient = class(IJanuaRESTClient, IJanuaBindable)
  lRestClient: IJanuaRESTClient;
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

  // Set the Parameters for the Client
  Assert.IsTrue(lRestModel.jdsCalendar.Params.FindParam('driver_id', FParam), 'FParam driver_id');
  FParam.AsInteger := 253174;
  lParameters := lRestModel.jdsCalendar.Params.AsBase64Url;

  // ******* first test with simple Rest Client ******************************************
  lRestClient := TJanuaRESTClient.New;
  lRestClient.ApiUrl := ConCatUrl('driver/dataset/bin/', lParameters);
  Assert.AreEqual('http://127.0.0.1', lRestClient.ServerUrl, 'lRestClient.ServerURL');
  Assert.IsTrue(lRestClient.Execute(TJanuaHttpMethod.jhmGet), lRestClient.Content);

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
  aMockUrl := 'http://127.0.0.1:8081/driver';
  Assert.AreEqual(aMockUrl, lRestModel.GetBaseUrl);

  // Test DB Model
  lResponse := TestDBModel.RestGetDataset('bin', lParameters);
  Assert.AreNotEqual('', lResponse);
  // Set the Params Resource URL
  lParamUrl := ConCatUrl('dataset/bin', lParameters);
  // Get the Final Listener's URL
  aMockUrl := ConCatUrl(lBaseUrl, lParamUrl);

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

end;

procedure TDriverDMVC.Liveness;
var
  // TJanuaRESTClient = class(IJanuaRESTClient, IJanuaBindable)
  lRestClient: IJanuaRESTClient;
begin
  lRestClient := TJanuaRESTClient.New;
  lRestClient.ApiUrl := 'driver/liveness';
  Assert.AreEqual('http://127.0.0.1', lRestClient.ServerUrl, 'lRestClient.ServerURL');
  Assert.AreEqual('http://127.0.0.1:8081/driver/liveness', lRestClient.GetFullUrl);
  Assert.IsTrue(lRestClient.Execute(TJanuaHttpMethod.jhmGet), lRestClient.Content);
end;

procedure TDriverDMVC.Setup;
begin
end;

procedure TDriverDMVC.TearDown;
begin
end;

procedure TDriverDMVC.TimetableRecord;
var
  // TJanuaCSDriversRESTModel = IJanuaCSDriversRestModel, IJanuaRESTModel
  lRestModel: IJanuaCSDriversRestModel;
  TestDBModel: IJanuaCSDriversDBModel;
  TestDBServerModel: IJanuaServerDBModel;
  lBaseUrl, lResponse, lParameter, lFullUrl, aMockUrl, lParamUrl, lJson: string;
  FParam: IJanuaField;
  aGuid: TGUID;
  lRecord: IJanuaRecord;
begin
  lRestModel := TJanuaCSDriversRESTModel.Create;

  // Start with DMVC Testing .............................................................
  TestDBModel := TJanuaCSDriversDBModel.Create;
  Assert.IsNotNull(TestDBModel, 'TestDBModel');
  TestDBServerModel := TestDBModel as IJanuaServerDBModel;

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
  lResponse := TestDBServerModel.RestGetRecord(lParameter);

  Assert.AreNotEqual('', lResponse);

  // Set the Params Resource URL
  lParamUrl := ConCatUrl('driver/record', lParameter);
  // Get the Final Listener's URL
  aMockUrl := 'http://127.0.0.1:8081/' + lParamUrl;

  // Step 4 - Launch the procedure
  // First I check the Full Url
  lFullUrl := lRestModel.GetRecordClientFullUrl(aGuid);
  Assert.AreEqual(aMockUrl, lFullUrl, 'Full Url does not match');
  // Then launch the Request
  Assert.IsTrue(lRestModel.SearchByGUID(aGuid), 'RemoteLoad Failed: ');

  // Step 5 - Verify that the Data Arrived and the 2 Datasets are equal
  Assert.IsTrue(TestDBModel.SearchByGUID(aGuid));
  Assert.AreEqual(TestDBModel.InternalRecord.GUIDString, lRestModel.InternalRecord.GUIDString, 'GUIDString');

  lJson := lRestModel.InternalRecord.asJson;
  Assert.AreEqual(lJson, TestDBModel.InternalRecord.asJson);

end;

initialization

TDUnitX.RegisterTestFixture(TDriverDMVC);

end.
