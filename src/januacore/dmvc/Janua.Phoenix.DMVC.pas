unit Janua.Phoenix.DMVC;

interface

uses
  MVCFramework, MVCFramework.Commons, MVCFramework.Serializer.Commons, Janua.Http.Types;

type

  [MVCPath('/api')]
  TPhoenixController = class(TMVCController)
  public
    [MVCPath]
    [MVCHTTPMethod([httpGET])]
    procedure Index;

    [MVCPath('/reversedstrings/($Value)')]
    [MVCHTTPMethod([httpGET])]
    procedure GetReversedString(const Value: String);
  protected
    procedure OnBeforeAction(Context: TWebContext; const AActionName: string; var Handled: Boolean); override;
    procedure OnAfterAction(Context: TWebContext; const AActionName: string); override;

  public
    // Sample CRUD Actions for a "Customer" entity
    [MVCPath('/customers')]
    [MVCHTTPMethod([httpGET])]
    procedure GetCustomers;

    [MVCPath('/customers/($id)')]
    [MVCHTTPMethod([httpGET])]
    procedure GetCustomer(id: Integer);

    [MVCPath('/customers')]
    [MVCHTTPMethod([httpPOST])]
    procedure CreateCustomer;

    [MVCPath('/customers/($id)')]
    [MVCHTTPMethod([httpPUT])]
    procedure UpdateCustomer(id: Integer);

    [MVCPath('/customers/($id)')]
    [MVCHTTPMethod([httpDELETE])]
    procedure DeleteCustomer(id: Integer);

    // Sample CRUD Actions for a "Customer" entity
    [MVCPath('/conf')]
    [MVCHTTPMethod([httpGET])]
    procedure GetConf;

    // Sample CRUD Actions for a "Customer" entity
    [MVCPath('/catestintori')]
    [MVCHTTPMethod([httpGET])]
    procedure GetCatEstintori;

    // Sample CRUD Actions for a "Customer" entity
    [MVCPath('/users')]
    [MVCHTTPMethod([httpGET])]
    procedure GetUsers;

    // Sample CRUD Actions for a "Customer" entity
    [MVCPath('/reports/($user_id)')]
    [MVCHTTPMethod([httpGET])]
    procedure GetReportList(user_id: Integer);

    // Sample CRUD Actions for a "Customer" entity
    [MVCPath('/reportsdataset/($format)/($user_id)')]
    [MVCHTTPMethod([httpGET])]
    procedure GetReportDataset(format: string; user_id: Integer);

    // Sample CRUD Actions for a "Customer" entity
    [MVCPath('/report/($id)')]
    [MVCHTTPMethod([httpGET])]
    procedure GetReport(id: Integer);

    // Sample CRUD Actions for a "Customer" entity
    [MVCPath('/report/($id)')]
    [MVCHTTPMethod([httpPUT])]
    procedure UpdateReport(id: Integer);

    // Sample CRUD Actions for a "Customer" entity
    [MVCPath('/sendreport/($id)')]
    [MVCHTTPMethod([httpGET])]
    procedure SendReport(id: Integer);

    // Sample CRUD Actions for a "Customer" entity
    [MVCPath('/items')]
    [MVCHTTPMethod([httpGET])]
    procedure GetItems;
  end;

implementation

uses
  System.SysUtils, MVCFramework.Logger, System.StrUtils {, udmPhoenixFirebirdAppBackend} ,
  udmPhoenixReportsCaches;

procedure TPhoenixController.Index;
begin
  // use Context property to access to the HTTP request and response
  Render('Asso Server Hello ;)');
end;

procedure TPhoenixController.GetReport(id: Integer);
// function TdmPhoenixAppBackend.GetStatino(const aStatino: Integer): string;
var
  dm: TdmPhoenixReportsCaches;
begin
  dm := TdmPhoenixReportsCaches.Create(nil);
  try
    Context.Response.ContentType := TJanuaMimeString.APPLICATION_JSON;
    Context.Response.StatusCode := HTTP_STATUS.OK;
    Render(dm.GetStatinoCache(id));
  finally
    dm.Free;
  end;

end;

procedure TPhoenixController.GetReportDataset(format: string; user_id: Integer);
var
  dm: TdmPhoenixReportsCaches;
begin
  dm := TdmPhoenixReportsCaches.Create(nil);
  try
    Context.Response.ContentType := TJanuaMimeString.APPLICATION_JSON;
    Context.Response.StatusCode := HTTP_STATUS.OK;
    Render(dm.GetDatasetStatiniTecnico(user_id, format));
  finally
    dm.Free;
  end;

end;

procedure TPhoenixController.GetReportList(user_id: Integer);
var
  dm: TdmPhoenixReportsCaches;
begin
  dm := TdmPhoenixReportsCaches.Create(nil);
  try
    Context.Response.ContentType := TJanuaMimeString.APPLICATION_JSON;
    Context.Response.StatusCode := HTTP_STATUS.OK;
    var
    lJson := dm.GetStatiniGiorno(user_id);
    Render(lJson);
  finally
    dm.Free;
  end;
end;

procedure TPhoenixController.GetReversedString(const Value: String);
begin
  Render(System.StrUtils.ReverseString(Value.Trim));
end;

procedure TPhoenixController.GetUsers;
var
  dm: TdmPhoenixReportsCaches;
begin
  dm := TdmPhoenixReportsCaches.Create(nil);
  try
    Context.Response.ContentType := TJanuaMimeString.APPLICATION_JSON;
    Context.Response.StatusCode := HTTP_STATUS.OK;
    Render(dm.GetUtentiCache);
  finally
    dm.Free;
  end;

end;

procedure TPhoenixController.OnAfterAction(Context: TWebContext; const AActionName: string);
begin
  { Executed after each action }
  inherited;
end;

procedure TPhoenixController.OnBeforeAction(Context: TWebContext; const AActionName: string;
  var Handled: Boolean);
begin
  { Executed before each action
    if handled is true (or an exception is raised) the actual
    action will not be called }
  inherited;
end;

procedure TPhoenixController.SendReport(id: Integer);
begin

end;

// Sample CRUD Actions for a "Customer" entity
procedure TPhoenixController.GetCustomers;
begin
  // todo: render a list of customers
end;

procedure TPhoenixController.GetItems;
var
  dm: TdmPhoenixReportsCaches;
begin
  dm := TdmPhoenixReportsCaches.Create(nil);
  try
    Context.Response.ContentType := TJanuaMimeString.APPLICATION_JSON;
    Context.Response.StatusCode := HTTP_STATUS.OK;
    Render(dm.GetProdottiCache);
  finally
    dm.Free;
  end;
end;

procedure TPhoenixController.GetCatEstintori;
var
  dm: TdmPhoenixReportsCaches;
begin
  dm := TdmPhoenixReportsCaches.Create(nil);
  try
    Context.Response.ContentType := TJanuaMimeString.APPLICATION_JSON;
    Context.Response.StatusCode := HTTP_STATUS.OK;
    var
    vRender := dm.GetTipoEstintori;
    Render(vRender);
  finally
    dm.Free;
  end;
end;

procedure TPhoenixController.GetConf;
var
  dm: TdmPhoenixReportsCaches;
begin
  dm := TdmPhoenixReportsCaches.Create(nil);
  try
    Context.Response.ContentType := TJanuaMimeString.APPLICATION_JSON;
    Context.Response.StatusCode := HTTP_STATUS.OK;
    Render(dm.GetConfCache);
  finally
    dm.Free;
  end;
end;

procedure TPhoenixController.GetCustomer(id: Integer);
begin
  // todo: render the customer by id
end;

procedure TPhoenixController.CreateCustomer;
begin
  // todo: create a new customer
end;

procedure TPhoenixController.UpdateCustomer(id: Integer);
begin
  // todo: update customer by id
end;

procedure TPhoenixController.UpdateReport(id: Integer);
begin

end;

procedure TPhoenixController.DeleteCustomer(id: Integer);
begin
  // todo: delete customer by id
end;

end.
