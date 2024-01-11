unit Janua.Test.Firedac.DMVC;
// unit Janua.Phoenix.DMVC;

interface

uses
  MVCFramework, MVCFramework.Commons, MVCFramework.Serializer.Commons, Janua.Core.DB.Types;

type

  [MVCPath('/phoenix')]
  TFDacTestController = class(TMVCController)
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
    [MVCPath('/customers/($aFormat)')]
    [MVCHTTPMethod([httpGET])]
    procedure GetCustomers(const aFormat: string);

    [MVCPath('/customers/($aFormat)/($id)')]
    [MVCHTTPMethod([httpGET])]
    procedure GetCustomer(const aFormat: string; id: Integer);

    [MVCPath('/customers/($aFormat)')]
    [MVCHTTPMethod([httpPOST])]
    procedure CreateCustomer(const aFormat: string);

    [MVCPath('/customers/($aFormat)/($id)')]
    [MVCHTTPMethod([httpPUT])]
    procedure UpdateCustomer(const aFormat: string; id: Integer);

    [MVCPath('/customers/($aFormat)/($id)')]
    [MVCHTTPMethod([httpDELETE])]
    procedure DeleteCustomer(const aFormat: string; id: Integer);

  end;

implementation

uses
  System.SysUtils, MVCFramework.Logger, System.StrUtils, Janua.Test.dmFiredacExportImport;

procedure TFDacTestController.Index;
begin
  // use Context property to access to the HTTP request and response
  Render('Hello DelphiMVCFramework World');
end;

procedure TFDacTestController.GetReversedString(const Value: String);
begin
  Render(System.StrUtils.ReverseString(Value.Trim));
end;

procedure TFDacTestController.OnAfterAction(Context: TWebContext; const AActionName: string);
begin
  { Executed after each action }
  inherited;
end;

procedure TFDacTestController.OnBeforeAction(Context: TWebContext; const AActionName: string;
  var Handled: Boolean);
begin
  { Executed before each action
    if handled is true (or an exception is raised) the actual
    action will not be called }
  inherited;
end;

// Sample CRUD Actions for a "Customer" entity
procedure TFDacTestController.GetCustomers(const aFormat: string);
var
  dmTestFireDACImportExport: TdmTestFireDACImportExport;
begin
  // todo: render a list of customers
  dmTestFireDACImportExport := TdmTestFireDACImportExport.Create(nil);
  try
    Context.Response.ContentType := TJanuaRestDBContext.StrMimeFormat[aFormat];
    Context.Response.StatusCode := HTTP_STATUS.OK;
    Render(dmTestFireDACImportExport.ExportArticoli(aFormat));
  finally
    dmTestFireDACImportExport.Free;
  end;
end;

procedure TFDacTestController.GetCustomer(const aFormat: string; id: Integer);
begin
  // todo: render the customer by id
end;

procedure TFDacTestController.CreateCustomer(const aFormat: string);
begin
  // todo: create a new customer
end;

procedure TFDacTestController.UpdateCustomer(const aFormat: string; id: Integer);
begin
  // todo: update customer by id
end;

procedure TFDacTestController.DeleteCustomer(const aFormat: string; id: Integer);
begin
  // todo: delete customer by id
end;

end.d.
